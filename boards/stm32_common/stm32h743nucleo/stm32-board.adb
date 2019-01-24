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
use type HAL.SPI.SPI_Status;

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

      Configure_IO
        (All_LEDs,
         (Mode        => Mode_Out,
          Output_Type => Push_Pull,
          Speed       => Speed_100MHz,
          Resistors   => Floating));
   end Initialize_LEDs;

   procedure WriteRegister_SPI4(add : in HAL.UInt8; val : in HAL.UInt8)
   is
      Status : HAL.SPI.SPI_Status;
   begin
      STM32.SPI.Enable(EXT_SPI);

      STM32.SPI.Transmit(This => EXT_SPI,Status => Status,Data => HAL.SPI.SPI_Data_8b'(1 =>  (add)));
      if Status /= HAL.SPI.Ok then
         raise Program_Error;
      end if;

      STM32.SPI.Transmit(This => EXT_SPI,Status => Status,Data => HAL.SPI.SPI_Data_8b'(1 =>  (val)));
      if Status /= HAL.SPI.Ok then
         raise Program_Error;
      end if;

   end WriteRegister_SPI4;


   procedure Initialize_SPI4 is
      SPI_Conf  : STM32.SPI.SPI_Configuration;
      GPIO_Conf : STM32.GPIO.GPIO_Port_Configuration;
      Status : HAL.SPI.SPI_Status;
   begin
      Enable_Clock(SPI4_Points);

      GPIO_Conf := (Mode           => STM32.GPIO.Mode_AF,
                    AF             => GPIO_AF_SPI4_5,
                    Resistors      => STM32.GPIO.Pull_Down, --  SPI low polarity
                    AF_Speed       => STM32.GPIO.Speed_100MHz,
                    AF_Output_Type => STM32.GPIO.Push_Pull);

      STM32.GPIO.Configure_IO (SPI4_Points, GPIO_Conf);

      STM32.Device.Enable_Clock (EXT_SPI);



      -- disable the SPI before configuration
      EXT_SPI.Disable;

      -- configure the SPI
      SPI_Conf.Direction           := STM32.SPI.D2Lines_FullDuplex;
      SPI_Conf.Mode                := STM32.SPI.Master;
      SPI_Conf.Data_Size           := HAL.SPI.Data_Size_8b;
      SPI_Conf.Clock_Polarity      := STM32.SPI.Low;
      SPI_Conf.Clock_Phase         := STM32.SPI.P1Edge;
      SPI_Conf.Slave_Management    := STM32.SPI.Software_Managed;
      SPI_Conf.Baud_Rate_Prescaler := STM32.SPI.BRP_2;
      SPI_Conf.First_Bit           := STM32.SPI.LSB;
      SPI_Conf.CRC_Poly            := 7;

      EXT_SPI.testConfigure(SPI_Conf);

      -- enable the SPI
      EXT_SPI.Enable;

      -- Test transmission
      EXT_SPI.testTrasmit(Data => 5);

      -- set the configuration

--
--        EXT_SPI.Configure (SPI_Conf);
--
--        -- enable the SPI
--        EXT_SPI.Enable;

   end Initialize_SPI4;



   -------------------------
   -- Initialize_I2C_GPIO --
   -------------------------
--
--     procedure Initialize_I2C_GPIO (Port : in out I2C_Port)
--     is
--        Id     : constant I2C_Port_Id := As_Port_Id (Port);
--        Points : GPIO_Points (1 .. 2);
--
--     begin
--        if Port_Enabled (Port) then
--           return;
--        end if;
--
--        case Id is
--           when I2C_Id_1 =>
--              Points := (I2C1_SDA, I2C1_SCL);
--           when I2C_Id_4 =>
--              Points := (I2C4_SDA, I2C4_SCL);
--           when others =>
--              raise Unknown_Device with
--                "This I2C_Port cannot be used on this board";
--        end case;
--
--        Enable_Clock (Points);
--
--        Configure_IO (Points,
--                      (Mode           => Mode_AF,
--                       AF             => GPIO_AF_I2C1_4,
--                       AF_Speed       => Speed_50MHz,
--                       AF_Output_Type => Open_Drain,
--                       Resistors      => Floating));
--
--        if Id /= I2C_Id_1 then
--           Configure_Alternate_Function (I2C4_SCL, GPIO_AF_I2C4_4);
--           Configure_Alternate_Function (I2C4_SDA, GPIO_AF_I2C4_11);
--        end if;
--
--        Lock (Points);
--     end Initialize_I2C_GPIO;

   --------------------------------
   -- Configure_User_Button_GPIO --
   --------------------------------

--     procedure Configure_User_Button_GPIO is
--     begin
--        Enable_Clock (User_Button_Point);
--        Configure_IO (User_Button_Point, (Mode_In, Resistors => Floating));
--     end Configure_User_Button_GPIO;

end STM32.Board;
