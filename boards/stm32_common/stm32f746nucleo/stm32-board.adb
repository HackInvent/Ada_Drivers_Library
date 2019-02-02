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

with HAL.SPI;
with STM32_SVD.RCC; use STM32_SVD.RCC;

package body STM32.Board is

   ------------------
   -- All_LEDs_Off --
   ------------------

   procedure All_LEDs_Off is
   begin
      Clear (All_LEDs);
   end All_LEDs_Off;

   -----------------
   -- All_LEDs_On --
   -----------------

   procedure All_LEDs_On is
   begin
      Set (All_LEDs);
   end All_LEDs_On;

   ---------------------
   -- Initialize_LEDs --
   ---------------------

   procedure Initialize_LEDs is
   begin
      Enable_Clock (All_LEDs);

      Configure_IO (All_LEDs,
                    (Mode        => Mode_Out,
                     Output_Type => Push_Pull,
                     Speed       => Speed_100MHz,
                     Resistors   => Floating));
   end Initialize_LEDs;

   -------------------------
   -- Initialize_I2C_GPIO --
   -------------------------

   procedure Initialize_I2C_GPIO (Port : in out I2C_Port)
   is
      Id : constant I2C_Port_Id := As_Port_Id (Port);
      Points     : constant GPIO_Points (1 .. 2) :=
                     (if Id = I2C_Id_1 then (PB8, PB9)
                      elsif Id = I2C_Id_3 then (PH7, PH8)
                      else  (PA0, PA0));

   begin
      if Id = I2C_Id_2 or else Id = I2C_Id_4 then
         raise Unknown_Device with
           "This I2C_Port cannot be used on this board";
      end if;

      Enable_Clock (Points);

      Configure_IO (Points,
                    (Mode           => Mode_AF,
                     AF             => GPIO_AF_I2C2_4,
                     AF_Speed       => Speed_25MHz,
                     AF_Output_Type => Open_Drain,
                     Resistors      => Floating));
      Lock (Points);
   end Initialize_I2C_GPIO;

   --------------------------------
   -- Configure_User_Button_GPIO --
   --------------------------------

   procedure Configure_User_Button_GPIO is
   begin
      Enable_Clock (User_Button_Point);
      Configure_IO (User_Button_Point, (Mode_In, Resistors => Floating));
   end Configure_User_Button_GPIO;

   ------------------------------------------
   -- Configure the USART6 for BMI088 Data --
   ------------------------------------------
   procedure Initialize_UART_OUT is
   begin
      -- Pins
      Enable_Clock (UART_TX & UART_RX);

      Configure_IO
        (UART_TX & UART_RX,
         (Mode           => Mode_AF,
          AF             => GPIO_AF_USART6_8,
          AF_Speed       => Speed_50MHz,
          AF_Output_Type => Push_Pull,
          Resistors      => Pull_Up));

      -- UART
      Enable_Clock (UART_OUT);

      Enable (UART_OUT);

      Set_Baud_Rate    (UART_OUT, 2_000_000);
      Set_Mode         (UART_OUT, Tx_Rx_Mode);
      Set_Stop_Bits    (UART_OUT, Stopbits_1);
      Set_Word_Length  (UART_OUT, Word_Length_8);
      Set_Parity       (UART_OUT, No_Parity);
      Set_Flow_Control (UART_OUT, No_Flow_Control);
   end Initialize_UART_OUT;

   -----------------------------------
   -- Configure the SPI1 for BMI088 --
   -----------------------------------

   procedure Initialize_SPI1_For_BMI088 is
      Config : GPIO_Port_Configuration;
      Config_SPI : SPI_Configuration;
      SysClock : RCC_System_Clocks;
   begin
      -- Test for clocks
      SysClock :=  STM32.Device.System_Clock_Frequencies;
      -- Enable the clocks
      Enable_Clock (IMU_SPI1);
      Enable_Clock (SPI1_Points);
      Enable_Clock (IMU_SPI1_SEL_Points);

      -- Configure the SPI IOs
      Config := (Mode           => Mode_AF,
                    AF             => GPIO_AF_SPI1_5,
                    AF_Speed       => Speed_100MHz,
                    AF_Output_Type => Push_Pull,
                 Resistors      => Pull_Down);
      Configure_IO(SPI1_Points, Config);

      -- Configure the SPI select chip IOs
      Config := (Mode        => Mode_Out,
                    Speed       => Speed_100MHz,
                    Output_Type => Push_Pull,
                    Resistors   => Floating);
      Configure_IO(IMU_SPI1_SEL_Points, Config);

      -- Configure the SPI1 port
      Config_SPI :=
           (Direction           => D2Lines_FullDuplex,
            Mode                => Master,
            Data_Size           => HAL.SPI.Data_Size_8b,
            Clock_Polarity      => Low,
            Clock_Phase         => P1Edge,
            Slave_Management    => Software_Managed,
            Baud_Rate_Prescaler => BRP_8,--BRP_32
            First_Bit           => MSB,
            CRC_Poly            => 7);

      Configure (IMU_SPI1, Config_SPI);

      STM32.SPI.Enable (IMU_SPI1);

      -- Configure UART6 (RX:D0,PG0 / TX:D1,PG14)


      -- test
      Config := (Mode           => Mode_AF,
                 AF             => GPIO_AF_MCO_0,
                    AF_Speed       => Speed_100MHz,
                    AF_Output_Type => Push_Pull,
                 Resistors      => Pull_Down);
      RCC_Periph.CFGR.MCO1 := 16#03#; -- PLL Clock Selected = 3
      RCC_Periph.CFGR.MCO1PRE := 16#04#; -- prescaling
      Configure_IO(PA8, Config);

   end Initialize_SPI1_For_BMI088;

end STM32.Board;
