------------------------------------------------------------------------------
--                                                                          --
--                    Copyright (C) 2015, AdaCore                           --
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
--     3. Neither the name of STMicroelectronics nor the names of its       --
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
--                                                                          --
--  This file is based on:                                                  --
--                                                                          --
--   @file    l3gd20.c                                                      --
--   @author  MCD Application Team                                          --
--   @version V1.1.0                                                        --
--   @date    19-June-2014                                                  --
--   @brief   This file provides a set of functions needed to manage the    --
--            L3GD20, ST MEMS motion sensor,  3-axis digital output         --
--            gyroscope.                                                    --
--                                                                          --
--   COPYRIGHT(c) 2014 STMicroelectronics                                   --
------------------------------------------------------------------------------

with Ada.Real_Time; use Ada.Real_Time;


package body BMI088 is

   ReadWrite_CMD : constant := 16#80#;

   procedure Accel_SPI_Mode (This : Six_Axis_Imu; Enabled : Boolean);
   --  Enable or disable SPI mode communication of the accelerator CSB1

   procedure Gyro_SPI_Mode (This : Six_Axis_Imu; Enabled : Boolean);
   --  Enable or disable SPI mode communication of the gyro CSB2



   ----------------
   -- Initialize --
   ----------------

   procedure Initialize_Spi
     (This        : in out Six_Axis_Imu;
      Port        : Any_SPI_Port;
      Accel_Chip_Select : Any_GPIO_Point;
      Gyro_Chip_Select : Any_GPIO_Point)
   is
   begin
      -- set the private IOs and SPI port
      This.Port := Port;
      This.CS := Accel_Chip_Select;
      This.GS := Gyro_Chip_Select;


      Accel_SPI_Mode (This, Enabled => False);
      Gyro_SPI_Mode (This, Enabled => False);
   end Initialize_Spi;

   ----------------
   -- IsAccelDeviceIdOk --
   ----------------

   function IsAccelDeviceIdOk (This : in out Six_Axis_Imu) return Boolean
   is
      res: UInt8;
   begin
      This.AccelRead(ACC_CHIP_ID_ADDR, res);
      return res = ACC_CHIP_ID;
   end IsAccelDeviceIdOk;

   --------------------------
   -- EnterActiveModeAccel --
   --------------------------

   function EnterActiveModeAccel (This : in out Six_Axis_Imu) return Boolean
   is
      Result: UInt8;
   begin
      This.AccelWrite(ACC_PWR_CONF_ADDR,ACC_ACTIVE_MODE_CMD);
      delay until Clock + Milliseconds (5);
      This.AccelRead(ACC_PWR_CONF_ADDR, Result);
--        while Result /= ACC_ACTIVE_MODE_CMD loop
--           This.AccelWrite(ACC_PWR_CONF_ADDR,ACC_ACTIVE_MODE_CMD);
--           delay until Clock + Milliseconds (5);
--           This.AccelRead(ACC_PWR_CONF_ADDR, Result);
--        end loop;
      return result = ACC_ACTIVE_MODE_CMD;
   end EnterActiveModeAccel;

   ----------------
   -- ResetAccel --
   ----------------

   procedure ResetAccel (This : in out Six_Axis_Imu)
   is
   begin
      This.AccelWrite(ACC_SOFT_RESET_ADDR,ACC_RESET_CMD);
      delay until Clock + Milliseconds (50);
      This.CS.Set;
      delay until Clock + Milliseconds (5);
      This.CS.Clear;
      delay until Clock + Milliseconds (5);
   end ResetAccel;

   -----------------
   -- EnableAccel --
   -----------------

   function EnableAccel (This : in out Six_Axis_Imu) return Boolean
   is
      Result : UInt8;
   begin
      --This.AccelWrite(ACC_SOFT_RESET_ADDR,ACC_RESET_CMD);
      --delay until Clock + Milliseconds (1);
      This.AccelWrite(ACC_PWR_CNTRL_ADDR,ACC_ENABLE_CMD);
      This.AccelWrite(ACC_PWR_CNTRL_ADDR,ACC_ENABLE_CMD);-- it is enabled when read twice
      --delay until Clock + Milliseconds (50);
      This.AccelRead(ACC_PWR_CNTRL_ADDR, Result);
      --delay until Clock + Microseconds (4);
      return Result = ACC_ENABLE_CMD;

      --  --
--  --        This.AccelWrite(ACC_PWR_CNTRL_ADDR,ACC_ENABLE_CMD);
--  --        delay until Clock + Milliseconds (50);
--  --        This.AccelRead( ACC_ERR_REG_ADD,Result);
--  --        delay until Clock + Milliseconds (5);
--        This.AccelRead(ACC_PWR_CNTRL_ADDR, Result);
--        while Result /= ACC_ENABLE_CMD loop
--           This.AccelWrite(ACC_SOFT_RESET_ADDR,ACC_RESET_CMD);
--           --delay until Clock + Milliseconds (1);
--           This.AccelWrite(ACC_PWR_CNTRL_ADDR,ACC_ENABLE_CMD);
--           --delay until Clock + Milliseconds (50);
--           This.AccelRead(ACC_PWR_CNTRL_ADDR, Result);
--           delay until Clock + Microseconds (4);
--        end loop;
      ---- enter active mode
   end EnableAccel;

   --------------------------
   -- SetAccelRange --
   --------------------------

   function SetAccelRange (This : in out Six_Axis_Imu) return Boolean
   is
      Result: UInt8;
   begin
      This.AccelWrite(ACC_RANGE_ADDR,RANGE_24G);
      --delay until Clock + Milliseconds (1);
      This.AccelRead(ACC_RANGE_ADDR, Result);
--        This.AccelRead(ACC_RANGE_ADDR, Result);
--        while Result /= RANGE_24G loop
--           This.AccelRead(ACC_RANGE_ADDR, Result);
--        end loop;
      -- update the range

      if Result = RANGE_3G then
         Accel_Range_MSS := 3.0 * G;
      elsif Result = RANGE_6G then
         Accel_Range_MSS := 6.0 * G;
      elsif Result = RANGE_12G then
         Accel_Range_MSS := 12.0 * G;
      elsif Result = RANGE_24G then
         Accel_Range_MSS := 24.0 * G;
      end if;

      return Result = RANGE_24G;
   end SetAccelRange;

   procedure test (This        : in out Six_Axis_Imu)
   is
        Result: UInt8;
--        Received        : SPI_Data_8b (1 .. 6); -- 2 bytes per axis
   begin
      This.AccelWrite(ACC_SOFT_RESET_ADDR,ACC_RESET_CMD);
      delay until Clock + Milliseconds (1);
      This.AccelWrite(ACC_PWR_CNTRL_ADDR,ACC_ENABLE_CMD);
      This.AccelWrite(ACC_PWR_CNTRL_ADDR,ACC_ENABLE_CMD);
      delay until Clock + Milliseconds (50);
--        This.AccelRead(ACC_PWR_CNTRL_ADDR, Result);
--        null;
--      while 1>0 loop
--           delay until Clock + Microseconds (1);
--  --           This.AccelWrite(ACC_SOFT_RESET_ADDR,ACC_RESET_CMD);
--  --           delay until Clock + Milliseconds (1);
--           --This.AccelWrite(ACC_PWR_CNTRL_ADDR,ACC_ENABLE_CMD);
--  --         This.AccelRead(ACC_PWR_CNTRL_ADDR, Result);
--         This.AccelRead(ACC_PWR_CNTRL_ADDR, Result);
--  --           This.AccelRead(ACC_PWR_CNTRL_ADDR, Result);
--  --           This.AccelRead(ACC_PWR_CNTRL_ADDR, Result);
--  --           This.AccelRead(ACC_RANGE_ADDR, Result);
--           This.AccelRead_UInt8s(ACC_ACCEL_DATA_ADDR,Received,6);
--           This.AccelRead(ACC_CONF_ADD, Result);
--      end loop;
   end test;

   -----------------
   -- Initialize_Accel -
   -----------------

   procedure Initialize_Accel
     (This        : in out Six_Axis_Imu)
   is
      Result : HAL.UInt8;
   begin
      -- check the device ID
      while not This.IsAccelDeviceIdOk loop
         delay until Clock + Milliseconds (1);
      end loop;

      -- reset accel
      This.ResetAccel;

      -- enable accel
      while not This.EnableAccel loop
         delay until Clock + Microseconds (1);
      end loop;

      ----
      delay until Clock + Milliseconds (50);

      -- enter active mode
      while not This.EnterActiveModeAccel loop
         delay until Clock + Milliseconds (1);
      end loop;


      ---- set range 24G
      while not This.SetAccelRange loop
         delay until Clock + Milliseconds (1);
      end loop;

      ---- set default ODR
      This.AccelWrite(ACC_ODR_ADDR,ODR_1600HZ_BW_280HZ);
      delay until Clock + Milliseconds (1);
      This.AccelRead(ACC_ODR_ADDR, Result);
      while Result /= ODR_1600HZ_BW_280HZ loop
         This.AccelRead(ACC_ODR_ADDR, Result);
      end loop;
      ---- check if there is an error
      This.AccelRead(ACC_ERR_CODE_ADDR, Result);
      while Result /= 16#0# loop
         This.AccelRead(ACC_ERR_CODE_ADDR, Result);
      end loop;
   end Initialize_Accel;

   ----------------------
   -- IsGyroDeviceIdOk --
   ----------------------

   function IsGyroDeviceIdOk (This : in out Six_Axis_Imu) return Boolean
   is
      res: UInt8;
   begin
      This.GyroRead(GYRO_CHIP_ID_ADD, res);
      return res = GYRO_CHIP_ID;
   end IsGyroDeviceIdOk;

   ---------------
   -- ResetGyro --
   ---------------

   procedure ResetGyro (This : in out Six_Axis_Imu)
   is
   begin
      This.GyroWrite(GYRO_SOFT_RESET_ADDR,GYRO_RESET_CMD);
      delay until Clock + Milliseconds (50);
      This.GS.Set;
      delay until Clock + Milliseconds (5);
      This.GS.Clear;
      delay until Clock + Milliseconds (5);
   end ResetGyro;

   --------------------------
   -- SetAccelRange --
   --------------------------

   function SetGyroRange (This : in out Six_Axis_Imu) return Boolean
   is
      Result: UInt8;
   begin
      This.GyroWrite(GYRO_RANGE_ADDR,RANGE_2000DPS);
      --delay until Clock + Milliseconds (1);
      This.GyroRead(GYRO_RANGE_ADDR, Result);

      if Result = RANGE_125DPS then
         Gyro_Range_Rads := 125.0 * DegToRad;
      elsif Result = RANGE_250DPS then
         Gyro_Range_Rads := 250.0 * DegToRad;
      elsif Result = RANGE_500DPS then
         Gyro_Range_Rads := 500.0 * DegToRad;
      elsif Result = RANGE_1000DPS then
         Gyro_Range_Rads := 1000.0 * DegToRad;
      elsif Result = RANGE_2000DPS then
         Gyro_Range_Rads := 2000.0 * DegToRad;
      end if;

      return Result = RANGE_2000DPS;
   end SetGyroRange;

   --------------------
   -- ReadAccelRates --
   --------------------

   procedure ReadAccelRates (This : in out Six_Axis_Imu;
                             Result   : out Sensor_Data)
   is
      Received        : SPI_Data_8b (1 .. 6); -- 2 bytes per axis
      AccelRates : BMI088.IMU_Rates;-- todo create AccelRate type
   begin

      This.AccelRead_UInt8s(ACC_ACCEL_DATA_ADDR,Received,6);

      AccelRates.X := As_IMU_Rates_Pointer (Received (1)'Address).all;
      AccelRates.Y := As_IMU_Rates_Pointer (Received (3)'Address).all;
      AccelRates.Z := As_IMU_Rates_Pointer (Received (5)'Address).all;

      Result(X) := Float (AccelRates.X) / 32768.0 * Accel_Range_MSS;
      Result(Y) := Float (AccelRates.Y) / 32768.0 * Accel_Range_MSS;
      Result(Z) := Float (AccelRates.Z) / 32768.0 * Accel_Range_MSS;

   end ReadAccelRates;

   -------------------
   -- ReadGyroRates --
   -------------------

   procedure ReadGyroRates (This : in out Six_Axis_Imu;
                             Result   : out Sensor_Data)
   is
      Received        : SPI_Data_8b (1 .. 6); -- 2 bytes per axis
      GyroRates : BMI088.IMU_Rates;-- todo create AccelRate type
   begin

      This.AccelRead_UInt8s(ACC_ACCEL_DATA_ADDR,Received,6);

      GyroRates.X := As_IMU_Rates_Pointer (Received (1)'Address).all;
      GyroRates.Y := As_IMU_Rates_Pointer (Received (3)'Address).all;
      GyroRates.Z := As_IMU_Rates_Pointer (Received (5)'Address).all;

      Result(X) := Float (GyroRates.X) / 32768.0 * Gyro_Range_Rads;
      Result(Y) := Float (GyroRates.Y) / 32768.0 * Gyro_Range_Rads;
      Result(Z) := Float (GyroRates.Z) / 32768.0 * Gyro_Range_Rads;

   end ReadGyroRates;


   --------------------------
   -- SetGyroODR --
   --------------------------

   function SetGyroODR (This : in out Six_Axis_Imu) return Boolean
   is
      Result: UInt8;
   begin
      This.GyroWrite(GYRO_ODR_ADDR,ODR_2000HZ_BW_532HZ);
      --delay until Clock + Milliseconds (1);
      This.GyroRead(GYRO_ODR_ADDR, Result);
      return Result = ODR_2000HZ_BW_532HZ;
   end SetGyroODR;

   --------------------
   -- Initialize_Gyro -
   --------------------

   procedure Initialize_Gyro
     (This        : in out Six_Axis_Imu)
   is
--        Result : HAL.UInt8;
   begin
      -- check the device ID
      while not This.IsGyroDeviceIdOk loop
         delay until Clock + Milliseconds (1);
      end loop;

      -- reset the gyro
      This.ResetGyro;

      -- set gyro rate to 2000
      while not This.SetGyroRange loop
         delay until Clock + Milliseconds (1);
      end loop;

      -- set ODR
      while not This.SetGyroODR loop
         delay until Clock + Milliseconds (1);
      end loop;


   end Initialize_Gyro;


   -----------------
   -- Accel_SPI_Mode --
   -----------------

   procedure Accel_SPI_Mode (This : Six_Axis_Imu; Enabled : Boolean) is
      --  When the pin is low (cleared), the device is in SPI mode.
      --  When the pin is high (set), the device is in I2C mode.
      --  We want SPI mode communication, so Enabled, when True,
      --  means we must drive the pin low.
   begin
      if Enabled then
         This.CS.Clear;
      else
         This.CS.Set;
      end if;
   end Accel_SPI_Mode;

   -----------------
   -- Gyro_SPI_Mode --
   -----------------

   procedure Gyro_SPI_Mode (This : Six_Axis_Imu; Enabled : Boolean) is
      --  When the pin is low (cleared), the device is in SPI mode.
      --  When the pin is high (set), the device is in I2C mode.
      --  We want SPI mode communication, so Enabled, when True,
      --  means we must drive the pin low.
   begin
      if Enabled then
         This.GS.Clear;
      else
         This.GS.Set;
      end if;
   end Gyro_SPI_Mode;

   -----------
   -- AccelWrite --
   -----------

   procedure AccelWrite (This : Six_Axis_Imu; Addr : Register;  Data : UInt8)
   is
      Status : SPI_Status;
   begin
      Accel_SPI_Mode (This, Enabled => True);

      This.Port.Transmit (SPI_Data_8b'(1 => UInt8 (Addr)), Status);
      if Status /= Ok then
         raise Program_Error;
      end if;

      This.Port.Transmit (SPI_Data_8b'(1 => Data), Status);
      if Status /= Ok then
         raise Program_Error;
      end if;

      Accel_SPI_Mode (This, Enabled => False);
   end AccelWrite;

   ----------
   -- AccelRead --
   ----------

   procedure AccelRead
     (This : Six_Axis_Imu;
      Addr : Register;
      Data : out UInt8)
   is
      Status : SPI_Status;
      Tmp_Data : SPI_Data_8b (1 .. 1);
   begin
      Accel_SPI_Mode (This, Enabled => True);  -- select the chip

      This.Port.Transmit (SPI_Data_8b'(1 => UInt8 (Addr) or ReadWrite_CMD),
                         Status);
      if Status /= Ok then
         raise Program_Error;
      end if;

      This.Port.Receive (Tmp_Data, Status); -- dummy constraint BMI088 Accel
      This.Port.Receive (Tmp_Data, Status);
      if Status /= Ok then
         raise Program_Error;
      end if;
      Data := Tmp_Data (Tmp_Data'First);

      Accel_SPI_Mode (This, Enabled => False); -- unselect the chip
   end AccelRead;

   ----------------
   -- AccelRead_UInt8s --
   ----------------

   procedure AccelRead_UInt8s
     (This   : Six_Axis_Imu;
      Addr   : Register;
      Buffer : out SPI_Data_8b;
      Count  : Natural)
   is
      Index : Natural := Buffer'First;
      Status : SPI_Status;
      Tmp_Data : SPI_Data_8b (1 .. 1);
   begin

      Accel_SPI_Mode (This, Enabled => True);

      This.Port.Transmit
        (SPI_Data_8b'(1 => UInt8 (Addr) or ReadWrite_CMD),
         Status);

      if Status /= Ok then
         raise Program_Error;
      end if;

      This.Port.Receive (Tmp_Data, Status); -- dummy constraint BMI088 Accel

      for K in 1 .. Count loop
         This.Port.Receive (Tmp_Data, Status);
         if Status /= Ok then
            raise Program_Error;
         end if;
         Buffer (Index) := Tmp_Data (Tmp_Data'First);
         Index := Index + 1;
      end loop;


      Accel_SPI_Mode (This, Enabled => False);

   end AccelRead_UInt8s;

   -----------
   -- GyroWrite --
   -----------

   procedure GyroWrite (This : Six_Axis_Imu; Addr : Register;  Data : UInt8)
   is
      Status : SPI_Status;
   begin
      Gyro_SPI_Mode (This, Enabled => True);

      This.Port.Transmit (SPI_Data_8b'(1 => UInt8 (Addr)), Status);
      if Status /= Ok then
         raise Program_Error;
      end if;

      This.Port.Transmit (SPI_Data_8b'(1 => Data), Status);
      if Status /= Ok then
         raise Program_Error;
      end if;

      Gyro_SPI_Mode (This, Enabled => False);
   end GyroWrite;

   ----------
   -- GyroRead --
   ----------

   procedure GyroRead
     (This : Six_Axis_Imu;
      Addr : Register;
      Data : out UInt8)
   is
      Status : SPI_Status;
      Tmp_Data : SPI_Data_8b (1 .. 1);
   begin
      Gyro_SPI_Mode (This, Enabled => True);  -- select the chip

      This.Port.Transmit (SPI_Data_8b'(1 => UInt8 (Addr) or ReadWrite_CMD),
                         Status);
      if Status /= Ok then
         raise Program_Error;
      end if;

      This.Port.Receive (Tmp_Data, Status);
      if Status /= Ok then
         raise Program_Error;
      end if;
      Data := Tmp_Data (Tmp_Data'First);

      Gyro_SPI_Mode (This, Enabled => False); -- unselect the chip
   end GyroRead;

   ----------------
   -- GyroRead_UInt8s --
   ----------------

   procedure GyroRead_UInt8s
     (This   : Six_Axis_Imu;
      Addr   : Register;
      Buffer : out SPI_Data_8b;
      Count  : Natural)
   is
      Index : Natural := Buffer'First;
      Status : SPI_Status;
      Tmp_Data : SPI_Data_8b (1 .. 1);
   begin
      Gyro_SPI_Mode (This, Enabled => True);

      This.Port.Transmit
        (SPI_Data_8b'(1 => UInt8 (Addr) or ReadWrite_CMD),
         Status);

      if Status /= Ok then
         raise Program_Error;
      end if;


      for K in 1 .. Count loop
         This.Port.Receive (Tmp_Data, Status);
         if Status /= Ok then
            raise Program_Error;
         end if;
         Buffer (Index) := Tmp_Data (Tmp_Data'First);
         Index := Index + 1;
      end loop;

      Gyro_SPI_Mode (This, Enabled => False);
   end GyroRead_UInt8s;

end BMI088;

