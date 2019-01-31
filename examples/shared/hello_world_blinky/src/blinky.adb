------------------------------------------------------------------------------
--                                                                          --
--                  Copyright (C) 2015-2017, AdaCore                        --
--                                                                          --
--  Redistribution and use in source and binary forms, with or without      --
--  modification, are permitted provided that the following conditions are  --
--  met:                                                                    --
--     1. Redistributions of source code must retain the above copyright    --
--        notice, this list of conditions and the following disclaimer.     --
--     2. Redistributions in binary form must reproduce the above copyright --
--        notice, this list of conditions and the following disclaimer in   --
--        the documentation and/or other materials provided with the        --
--        distribution.                                                     --
--     3. Neither the name of the copyright holder nor the names of its     --
--        contributors may be used to endorse or promote products derived   --
--        from this software without specific prior written permission.     --
--                                                                          --
--   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS    --
--   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT      --
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  --
--   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   --
--   HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, --
--   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT       --
--   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  --
--   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  --
--   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    --
--   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE  --
--   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.   --
--                                                                          --
------------------------------------------------------------------------------

--  A simple example that blinks all the LEDs simultaneously, w/o tasking.
--  It does not use the various convenience functions defined elsewhere, but
--  instead works directly with the GPIO driver to configure and control the
--  LEDs.

--  Note that this code is independent of the specific MCU device and board
--  in use because we use names and constants that are common across all of
--  them. For example, "All_LEDs" refers to different GPIO pins on different
--  boards, and indeed defines a different number of LEDs on different boards.
--  The gpr file determines which board is actually used.

with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
--  The "last chance handler" is the user-defined routine that is called when
--  an exception is propagated. We need it in the executable, therefore it
--  must be somewhere in the closure of the context clauses.

with STM32.Board;   use STM32.Board;
with STM32.Device;          use STM32.Device;
with STM32.GPIO;    use STM32.GPIO;
with Ada.Real_Time; use Ada.Real_Time;
with BMI088; use BMI088;
with HAL; use HAL;
with HAL.SPI; use HAL.SPI;
with HAL.UART; use HAL.UART;
with Ada.Unchecked_Conversion;

procedure Blinky is
   Bmi_1        : BMI088.Six_Axis_Imu;
   AccelRates   : Sensor_Data;
   GyroRates    : Sensor_Data;
--     Received        : SPI_Data_8b (1 .. 6); -- 2 bytes per axis
--     AccelRates : BMI088.IMU_Rates;-- todo create AccelRate type
--     GyroRates : BMI088.IMU_Rates;-- todo create AccelRate type
--     Result   : Sensor_Data;
   status : UART_Status;
   data_4B : UART_Data_8b (0 .. 3); -- contains a float
   data_1B : UART_Data_8b (0 .. 0); -- contains a byte

   type   UART_Data_8b_4 is new UART_Data_8b (0 .. 3);
   function To_UART_Data_8b_4 is
      new Ada.Unchecked_Conversion (Source => Float,
                                    Target => UART_Data_8b_4);
   type FixedFloat is delta 0.00001 digits 18;
   c : Character;

begin

   -- init the leds
   STM32.Board.Initialize_LEDs;
   -- init the SPIs
   STM32.Board.Initialize_SPI1_For_BMI088;
   -- init the UART OUT
   Initialize_UART_OUT;

   -- Unselect IMUIsGyroDeviceIdOk
   Turn_ON(IMU_SPI1_SELC); -- disable the accel
   Turn_ON(IMU_SPI1_SELG); -- disable the Gyro

   -- init the BMI1
   Bmi_1.Initialize_Spi
     (Port        => IMU_SPI1'Access,
         Accel_Chip_Select => IMU_SPI1_SELC'Access,
         Gyro_Chip_Select => IMU_SPI1_SELG'Access);

   --- inifinit loop test
   --Bmi_1.test;

   --- init the BMI088.accel
   Bmi_1.Initialize_Accel;
   --- init the BMI088.gyro
   Bmi_1.Initialize_Gyro;


   -- read the accel value
   ---- read the value
   loop

      PG1.Set;
      Bmi_1.ReadAccelRates(AccelRates);
      Bmi_1.ReadGyroRates(GyroRates);
      PG1.Clear;
      Toggle (All_LEDs);

--        data_1B(0) := UInt8(36); -- '$'
--        UART_OUT.Transmit(data_1B,status);
--        data_1B(0) := UInt8(102); -- 'f'
--        UART_OUT.Transmit(data_1B,status);
--
--        data_4B := UART_Data_8b(To_UART_Data_8b_4(AccelRates(X)));
--        UART_OUT.Transmit(Data => data_4B,Status => status);
--
--        data_1B(0) := UInt8(59); -- ';'
--        UART_OUT.Transmit(data_1B,status);

      data_1B(0) := UInt8(36); -- '$'
      UART_OUT.Transmit(data_1B,status);

      for ch of FixedFloat(AccelRates(X))'Img loop
         c := Character(ch);
         data_1B(0) := Character'Pos(c);
         if data_1B(0) /= 32 then -- we don't send " "
            UART_OUT.Transmit(data_1B,status);
         end if;
      end loop;

      data_1B(0) := UInt8(59); -- ';'
      UART_OUT.Transmit(data_1B,status);

      delay until Clock + Microseconds (1000);
   end loop;

end Blinky;
