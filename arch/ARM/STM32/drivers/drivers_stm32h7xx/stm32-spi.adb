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
--   @file    stm32f4xx_hal_spi.c                                           --
--   @author  MCD Application Team                                          --
--   @version V1.1.0                                                        --
--   @date    19-June-2014                                                  --
--   @brief   SPI HAL module driver.                                        --
--                                                                          --
--   COPYRIGHT(c) 2014 STMicroelectronics                                   --
------------------------------------------------------------------------------

with Ada.Unchecked_Conversion;

with STM32_SVD.SPI; use STM32_SVD.SPI;

package body STM32.SPI is

   use type HAL.SPI.SPI_Data_Size;

--     Baud_Rate_Value : constant array (SPI_Baud_Rate_Prescaler) of UInt3 :=
--       (BRP_2   => 2#000#,
--        BRP_4   => 2#001#,
--        BRP_8   => 2#010#,
--        BRP_16  => 2#011#,
--        BRP_32  => 2#100#,
--        BRP_64  => 2#101#,
--        BRP_128 => 2#110#,
--        BRP_256 => 2#111#);

   type Half_Word_Pointer is access all UInt16
     with Storage_Size => 0;

   function As_Half_Word_Pointer is new Ada.Unchecked_Conversion
     (Source => System.Address, Target => Half_Word_Pointer);
   --  So that we can treat the address of a UInt8 as a pointer to a two-UInt8
   --  sequence representing a Half_Word quantity

   ---------------
   -- Configure --
   ---------------

   procedure testConfigure (This : in out SPI_Port; Conf : SPI_Configuration) is
   begin
      --  we disable to configure
      if not This.Enabled then
         This.Disable ;
      end if;
      --
      This.Periph.CFG2.LSBFRST  := True; -- LSB first
      This.Periph.CFG1.MBR := 4#0#; -- baud rate div 2
      This.Periph.CFG1.DSIZE      := 16#7#; -- format 8bit
      This.Periph.CFG2.CPOL     := True; -- clock polarity high
      This.Periph.CFG2.CPHA     := True; -- clock P1Edge
      This.Periph.CFG2.SP := 3#0#; -- We use motorola protocol
      This.Periph.CFG2.COMM := 16#0#; -- by default the SPI is set to full duplex
      -- SS configuration, master mode with multi slave
      This.Periph.CR1.SSI := True;  -- ?
      This.Periph.CFG2.SSM      := True; -- ?
      This.Periph.CFG2.SSOE := False;

      -- AFCNTR:  alternate function GPIOs control
      -- This.Periph.CFG2.AFCNTR := True;   -- we keep ontrol on the MISO/MOSI

      while This.Periph.CFG2.MASTER /= True loop
         This.Periph.CFG2.MASTER := True;
      end loop;

   end testConfigure;

   procedure testTrasmit (This : in out SPI_Port; Data : UInt32) is
   begin

      if This.CRC_Enabled then
         This.Reset_CRC;
         This.Periph.CFG1.CRCEN := False;
      end if;
      This.Clear_Overrun;

      while This.Periph.SR.MODF = True loop
         This.Periph.IFCR.MODFC := True;
         This.Periph.CFG2.MASTER := True;
      end loop;

--        while This.Periph.TXDR /= Data loop
--           This.Periph.TXDR := Data;
--        end loop;
    This.Periph.TXDR := Data;
      This.Periph.CR2.TSIZE := 1;
      if This.Periph.CR2.TSIZE>0 then
         null;
      end if;



      -- enable the SPI
      while This.Periph.CR1.SPE /= True loop
         This.Periph.CR1.SPE := True;
      end loop;

      -- start the work
      This.Periph.CR1.CSTART := True;

      -- wait for TXP flag : spare ready
      while This.Periph.SR.TXP /= True loop
         null;
      end loop;

      This.Periph.TXDR := Data;

--        while This.Periph.SR.TXTF /= True loop
--           null;
--        end loop;

      --
      while This.Periph.SR.EOT = False loop
         null;
      end loop;

      -- close SPI
      This.Periph.IFCR.EOTC := True;
      This.Periph.IFCR.TXTFC := True;
      This.Periph.CR1.SPE := False;
      This.Periph.CR1.CSTART := False;
      This.Periph.CR2.TSIZE := 0;

   end testTrasmit;


   procedure Configure (This : in out SPI_Port; Conf : SPI_Configuration) is
   begin

      -- disable the SPI
      This.Periph.CR1.SPE := False;

      while This.Periph.SR.MODF = True loop
         This.Periph.IFCR.MODFC := True;
      end loop;


      case Conf.Mode is
         when Master =>
            while This.Periph.CFG2.MASTER /= True loop
               This.Periph.CFG2.MASTER := True;
            end loop;
            This.Periph.CFG2.SSOM := False; -- SS is kept at active level till data transfer is completed
            This.Periph.CFG2.SSOE := False; -- SS output is disabled
            This.Periph.CFG2.MIDI := 16#0#; -- no delay;
            This.Periph.CFG2.MSSI := 16#0#; -- no delay;
            This.Periph.CFG2.SSIOP := False; -- low level is active for SS signal
         when Slave =>
            This.Periph.CFG2.MASTER := False;
      end case;

      case Conf.Direction is
         when D2Lines_FullDuplex =>
            This.Periph.CFG2.COMM := 16#0#; -- by default the SPI is set to full duplex
--              This.Periph.CR1.BIDIMODE := False;
--              This.Periph.CR1.BIDIOE   := False;
--              This.Periph.CR1.RXONLY   := False;
         when D2Lines_RxOnly =>
            This.Periph.CFG2.COMM := 16#3#; -- salf duplex
--              This.Periph.CR1.BIDIMODE := False;
--              This.Periph.CR1.BIDIOE   := False;
--              This.Periph.CR1.RXONLY   := True;
         when D1Line_Rx =>
            This.Periph.CFG2.COMM := 16#2#; -- simplex receiver
--              This.Periph.CR1.BIDIMODE := True;
--              This.Periph.CR1.BIDIOE   := False;
--              This.Periph.CR1.RXONLY   := False;
         when D1Line_Tx =>
            This.Periph.CFG2.COMM := 16#1#; -- simplex transmitter
--              This.Periph.CR1.BIDIMODE := True;
--              This.Periph.CR1.BIDIOE   := True;
--              This.Periph.CR1.RXONLY   := False;
      end case;

--        This.Periph.CR1.DFF      := Conf.Data_Size = HAL.SPI.Data_Size_16b;
      This.Periph.CFG1.DSIZE      := 16#7#; -- format 8bit
      This.Periph.CFG2.CPOL     := Conf.Clock_Polarity = High;
      This.Periph.CFG2.CPHA     := Conf.Clock_Phase = P1Edge;
      This.Periph.CFG2.SSM      := Conf.Slave_Management = Software_Managed;
      This.Periph.CFG1.MBR := 4#0#; -- baud rate div 256
--        This.Periph.CR1.BR       := Baud_Rate_Value (Conf.Baud_Rate_Prescaler);
--        This.Periph.CR1.LSBFIRST := Conf.First_Bit = LSB;
      This.Periph.CFG2.LSBFRST := True;


      This.Periph.CFG2.SP := 3#0#; -- We use motorola protocol


      --  Activate the I2S mode (Reset I2SMOD bit in I2SCFGR register)
      This.Periph.CGFR.I2SMOD := False;

      while This.Periph.SR.MODF = True loop
         This.Periph.IFCR.MODFC := True;
         This.Periph.CFG2.MASTER := True;
      end loop;

--        This.Periph.CRCPOLY := Conf.CRC_Poly; TODO
   end Configure;

   ------------
   -- Enable --
   ------------

   procedure Enable (This : in out SPI_Port) is
   begin
      while This.Periph.CR1.SPE /= True loop
         This.Periph.CR1.SPE := True;
      end loop;
   end Enable;

   -------------
   -- Disable --
   -------------

   procedure Disable (This : in out SPI_Port) is
   begin
      This.Periph.CR1.SPE := False;
   end Disable;

   -------------
   -- Enabled --
   -------------

   function Enabled (This : SPI_Port) return Boolean is
   begin
      return This.Periph.CR1.SPE;
   end Enabled;

   ----------
   -- Send --
   ----------

   procedure Send (This : in out SPI_Port; Data : UInt32) is
   begin
      This.Periph.TXDR := Data;
   end Send;

   ----------
   -- Data --
   ----------

   function Data (This : SPI_Port) return UInt32 is
   begin
      return This.Periph.TXDR;
   end Data;

   ----------
   -- Send --
   ----------

   procedure Send (This : in out SPI_Port; Data : UInt16) is
   begin
      Send(This, UInt32(Data));
   end Send;

   ----------
   -- Data --
   ----------

   function Data (This : SPI_Port) return UInt16 is
   begin
      return UInt16 (This.Periph.TXDR);
   end Data;

   ----------
   -- Send --
   ----------

   procedure Send (This : in out SPI_Port; Data : HAL.UInt8) is
   begin
      Send (This, UInt16 (Data));
   end Send;

   ----------
   -- Data --
   ----------

   function Data (This : SPI_Port) return HAL.UInt8 is
   begin
      return HAL.UInt8 (UInt16'(Data (This)));
   end Data;

   -------------
   -- Is_Busy --
   -------------

   function Is_Busy (This : SPI_Port) return Boolean is
   begin
      return (Rx_Is_Empty (This)
              and then not Tx_Is_Empty (This))
        or else Busy (This);
   end Is_Busy;

   -----------------
   -- Tx_Is_Empty --
   -----------------

   function Tx_Is_Empty (This : SPI_Port) return Boolean is
   begin
      return This.Periph.SR.TXC;
   end Tx_Is_Empty;

   -----------------
   -- Rx_Is_Empty --
   -----------------

   function Rx_Is_Empty (This : SPI_Port) return Boolean is
   begin
      return not This.Periph.SR.RXWNE;
   end Rx_Is_Empty;

   ----------
   -- Busy --
   ----------

   function Busy (This : SPI_Port) return Boolean is
   begin
      return not This.Periph.SR.EOT;
   end Busy;

   ------------------
   -- Current_Mode --
   ------------------

   function Current_Mode (This : SPI_Port) return SPI_Mode is
   begin
      if This.Periph.CFG2.MASTER then
         return Master;
      else
         return Slave;
      end if;
   end Current_Mode;

   ----------------------------
   -- Current_Data_Direction --
   ----------------------------

   function Current_Data_Direction (This : SPI_Port) return SPI_Data_Direction
   is
   begin
      if This.Periph.CFG2.COMM = 16#0# then
         return D2Lines_FullDuplex;
      end if;
      if This.Periph.CFG2.COMM = 16#3# then
         return D2Lines_RxOnly;
      end if;
      if This.Periph.CFG2.COMM = 16#2# then
         return D1Line_Rx;
      end if;
      if This.Periph.CFG2.COMM = 16#1# then
         return D1Line_Tx;
      end if;

      return D2Lines_FullDuplex;

--        if not This.Periph.CR1.BIDIMODE then
--           if not This.Periph.CR1.RXONLY then
--              return D2Lines_FullDuplex;
--           else
--              return D2Lines_RxOnly;
--           end if;
--        else
--           if not This.Periph.CR1.BIDIOE then
--              return D1Line_Rx;
--           else
--              return D1Line_Tx;
--           end if;
--        end if;
   end Current_Data_Direction;

   -----------------
   -- CRC_Enabled --
   -----------------

   function CRC_Enabled (This : SPI_Port) return Boolean is
      (This.Periph.CFG1.CRCEN);

   ----------------------------
   -- Channel_Side_Indicated --
   ----------------------------

   function Channel_Side_Indicated (This : SPI_Port) return Boolean is
      (False);
      --(This.Periph.SR.CHSIDE); there is no channel side indication in SMT32H76

   ------------------------
   -- Underrun_Indicated --
   ------------------------

   function Underrun_Indicated (This : SPI_Port) return Boolean is
     (This.Periph.SR.UDR);

   -------------------------
   -- CRC_Error_Indicated --
   -------------------------

   function CRC_Error_Indicated (This : SPI_Port) return Boolean is
      (This.Periph.SR.CRCE);

   --------------------------
   -- Mode_Fault_Indicated --
   --------------------------

   function Mode_Fault_Indicated (This : SPI_Port) return Boolean is
     (This.Periph.SR.MODF);

   -----------------------
   -- Overrun_Indicated --
   -----------------------

   function Overrun_Indicated (This : SPI_Port) return Boolean is
      (This.Periph.SR.OVR);

   -------------------------------
   -- Frame_Fmt_Error_Indicated --
   -------------------------------

   function Frame_Fmt_Error_Indicated (This : SPI_Port) return Boolean is
   begin
      return This.Periph.SR.TIFRE;
   end Frame_Fmt_Error_Indicated;

   -------------------
   -- Clear_Overrun --
   -------------------

   procedure Clear_Overrun (This : SPI_Port) is
      Dummy1 : UInt32;
      Dummy2 : SR_Register;
   begin
      Dummy1 := This.Periph.TXDR;
      Dummy2 := This.Periph.SR;
   end Clear_Overrun;

   ---------------
   -- Reset_CRC --
   ---------------

   procedure Reset_CRC (This : in out SPI_Port) is
   begin
      This.Periph.CFG1.CRCEN := False;
      This.Periph.CFG1.CRCEN := True;
   end Reset_CRC;

   -------------------------
   -- Is_Data_Frame_16bit --
   -------------------------

   function Is_Data_Frame_16bit (This : SPI_Port) return Boolean is
   begin
      if This.Periph.CFG1.DSIZE = 16#15# then
         return True;
      else
         return false;
      end if;
   end Is_Data_Frame_16bit;
      -- (This.Periph.CR1.DFF);

   ---------------
   -- Data_Size --
   ---------------

   overriding
   function Data_Size (This : SPI_Port) return HAL.SPI.SPI_Data_Size is
   begin
      if This.Periph.CFG1.DSIZE = 16#15# then
         return HAL.SPI.Data_Size_16b;
      else
         return HAL.SPI.Data_Size_8b; -- TODO: add the possibility of 32b ...etc
      end if;
   end Data_Size;

   --------------
   -- Transmit --
   --------------

   overriding
   procedure Transmit
     (This    : in out SPI_Port;
      Data    : HAL.SPI.SPI_Data_8b;
      Status  : out HAL.SPI.SPI_Status;
      Timeout : Natural := 1000)
   is
      pragma Unreferenced (Timeout);
   begin
      if CRC_Enabled (This) then
         Reset_CRC (This);
      end if;

      -- We use only full duplex mode
      --  ??? right value to compare???
--        if Current_Data_Direction (This) = D1Line_Tx  then
--           This.Periph.CR1.BIDIOE := True;
--        end if;

      Clear_Overrun (This);

      if not Enabled (This) then
         Enable (This);
      end if;

      Send_8bit_Mode (This, Data);

      --  Wait until TXE flag is set to send data
      while not Tx_Is_Empty (This) loop
         null;
      end loop;

      --  Wait until Busy flag is reset before disabling SPI
      while Busy (This) loop
         null;
      end loop;

      --  Clear OVERUN flag in 2-Line communication mode because received UInt8
      --  is not read.
      if Current_Data_Direction (This) in D2Lines_RxOnly | D2Lines_FullDuplex
      then  -- right comparison ???
         Clear_Overrun (This);
      end if;
      Status := HAL.SPI.Ok;
   end Transmit;

   --------------
   -- Transmit --
   --------------

   overriding
   procedure Transmit
     (This    : in out SPI_Port;
      Data    : HAL.SPI.SPI_Data_16b;
      Status  : out HAL.SPI.SPI_Status;
      Timeout : Natural := 1000)
   is
      pragma Unreferenced (Timeout);
   begin
      if CRC_Enabled (This) then
         Reset_CRC (This);
      end if;

      -- We use only full duplex mode
      --  ??? right value to compare???
--        if Current_Data_Direction (This) = D1Line_Tx  then
--           This.Periph.CR1.BIDIOE := True;
--        end if;

      Clear_Overrun (This);

      if not Enabled (This) then
         Enable (This);
      end if;

      Send_16bit_Mode (This, Data);

      --  Wait until TXE flag is set to send data
      while not Tx_Is_Empty (This) loop
         null;
      end loop;

      --  Wait until Busy flag is reset before disabling SPI
      while Busy (This) loop
         null;
      end loop;

      --  Clear OVERUN flag in 2-Line communication mode because received UInt8
      --  is not read.
      if Current_Data_Direction (This) in D2Lines_RxOnly | D2Lines_FullDuplex
      then  -- right comparison ???
         Clear_Overrun (This);
         Status := HAL.SPI.Err_Error;
      end if;
      Status := HAL.SPI.Ok;
   end Transmit;

   --------------
   -- Transmit --
   --------------

   procedure Transmit
     (This     : in out SPI_Port;
      Outgoing : HAL.UInt8)
   is
   begin
      if CRC_Enabled (This) then
         Reset_CRC (This);
      end if;

      -- We use only full duplex mode
      --  ??? right value to compare???
--        if Current_Data_Direction (This) = D1Line_Tx  then
--           This.Periph.CR1.BIDIOE := True;
--        end if;

      if not Enabled (This) then
         Enable (This);
      end if;

      This.Periph.TXDR := UInt32 (Outgoing);

      while not Tx_Is_Empty (This) loop
         null;
      end loop;

      while Busy (This) loop
         null;
      end loop;

      --  Clear OVERUN flag in 2-Line communication mode because received UInt8
      --  is not read.
      if Current_Data_Direction (This) in D2Lines_RxOnly | D2Lines_FullDuplex
      then  -- right comparison ???
         Clear_Overrun (This);
      end if;
   end Transmit;

   -------------
   -- Receive --
   -------------

   overriding
   procedure Receive
     (This    : in out SPI_Port;
      Data    : out HAL.SPI.SPI_Data_8b;
      Status  : out HAL.SPI.SPI_Status;
      Timeout : Natural := 1000)
   is
      pragma Unreferenced (Timeout);
   begin
      if CRC_Enabled (This) then
         Reset_CRC (This);
      end if;

      if not Enabled (This) then
         Enable (This);
      end if;

      Receive_8bit_Mode (This, Data);

      while Busy (This) loop
         null;
      end loop;

      if CRC_Enabled (This) and CRC_Error_Indicated (This) then
         Reset_CRC (This);
         Status := HAL.SPI.Err_Error;
      end if;
      Status := HAL.SPI.Ok;
   end Receive;

   -------------
   -- Receive --
   -------------

   overriding
   procedure Receive
     (This    : in out SPI_Port;
      Data    : out HAL.SPI.SPI_Data_16b;
      Status  : out HAL.SPI.SPI_Status;
      Timeout : Natural := 1000)
   is
      pragma Unreferenced (Timeout);
   begin
      if CRC_Enabled (This) then
         Reset_CRC (This);
      end if;

      if not Enabled (This) then
         Enable (This);
      end if;

      Receive_16bit_Mode (This, Data);

      while Busy (This) loop
         null;
      end loop;

      if CRC_Enabled (This) and CRC_Error_Indicated (This) then
         Reset_CRC (This);
         Status := HAL.SPI.Err_Error;
      end if;
      Status := HAL.SPI.Ok;
   end Receive;

   -------------
   -- Receive --
   -------------

   procedure Receive
     (This     : in out SPI_Port;
      Incoming : out HAL.UInt8)
   is
   begin
      if CRC_Enabled (This) then
         Reset_CRC (This);
      end if;

      if not Enabled (This) then
         Enable (This);
      end if;

      This.Periph.TXDR := 0; -- generate clock

      while Rx_Is_Empty (This) loop
         null;
      end loop;

      Incoming := HAL.UInt8 (This.Periph.RXDR);

      if CRC_Enabled (This) then
         while Rx_Is_Empty (This) loop
            null;
         end loop;
         Read_CRC : declare
            Dummy : UInt32;
         begin
            Dummy := This.Periph.RXDR;
         end Read_CRC;
      end if;

      while Busy (This) loop
         null;
      end loop;

      if CRC_Enabled (This) and CRC_Error_Indicated (This) then
         Reset_CRC (This);
      end if;
   end Receive;

   ----------------------
   -- Transmit_Receive --
   ----------------------

   procedure Transmit_Receive
     (This     : in out SPI_Port;
      Outgoing : UInt8_Buffer;
      Incoming : out UInt8_Buffer;
      Size     : Positive)
   is
   begin
      if CRC_Enabled (This) then
         Reset_CRC (This);
      end if;

      if not Enabled (This) then
         Enable (This);
      end if;

      if Is_Data_Frame_16bit (This) then
         Send_Receive_16bit_Mode (This, Outgoing, Incoming, Size);
      else
         Send_Receive_8bit_Mode (This, Outgoing, Incoming, Size);
      end if;

      --  Read CRC to close CRC calculation process
      if CRC_Enabled (This) then
         --  wait until data is received
         while Rx_Is_Empty (This) loop
            null;
         end loop;
         Read_CRC : declare
            Dummy : UInt32;
         begin
            Dummy := This.Periph.RXDR;
         end Read_CRC;
      end if;

      while Busy (This) loop
         null;
      end loop;

      if CRC_Enabled (This) and CRC_Error_Indicated (This) then
         Reset_CRC (This);
      end if;
   end Transmit_Receive;

   ----------------------
   -- Transmit_Receive --
   ----------------------

   procedure Transmit_Receive
     (This     : in out SPI_Port;
      Outgoing : HAL.UInt8;
      Incoming : out HAL.UInt8)
   is
   begin
      if CRC_Enabled (This) then
         Reset_CRC (This);
      end if;

      if not Enabled (This) then
         Enable (This);
      end if;

      if Is_Data_Frame_16bit (This) then
         raise Program_Error;
      end if;

      This.Periph.TXDR := UInt32 (Outgoing);

      --  enable CRC transmission
--        if CRC_Enabled (This) then
--           This.Periph.CR1.CRCNEXT := True;
--        end if;

      --  wait until data is received
      while Rx_Is_Empty (This) loop
         null;
      end loop;

      Incoming := HAL.UInt8 (This.Periph.RXDR);

      --  Read CRC UInt8 to close CRC calculation
      if CRC_Enabled (This) then
         --  wait until data is received
         while Rx_Is_Empty (This) loop
            null;
         end loop;
         Read_CRC : declare
            Dummy : UInt32;
         begin
            Dummy := This.Periph.RXDR;
         end Read_CRC;
      end if;

      while Busy (This) loop
         null;
      end loop;

      if CRC_Enabled (This) and CRC_Error_Indicated (This) then
         Reset_CRC (This);
      end if;
   end Transmit_Receive;

   ---------------------------
   -- Data_Register_Address --
   ---------------------------

   function Data_RX_Register_Address
     (This : SPI_Port)
      return System.Address
   is
   begin
      return This.Periph.RXDR'Address;
   end Data_RX_Register_Address;

   function Data_TX_Register_Address
     (This : SPI_Port)
      return System.Address
   is
   begin
      return This.Periph.RXDR'Address;
   end Data_TX_Register_Address;

   -----------------------------
   -- Send_Receive_16bit_Mode --
   -----------------------------

   procedure Send_Receive_16bit_Mode
     (This     : in out SPI_Port;
      Outgoing : UInt8_Buffer;
      Incoming : out UInt8_Buffer;
      Size     : Positive)
   is
      Tx_Count : Natural := Size;
      Outgoing_Index : Natural := Outgoing'First;
      Incoming_Index : Natural := Incoming'First;
   begin
      if Current_Mode (This) = Slave or else Tx_Count = 1 then
         This.Periph.TXDR := UInt32
           (As_Half_Word_Pointer (Outgoing (Outgoing_Index)'Address).all);
         Outgoing_Index := Outgoing_Index + 2;
         Tx_Count := Tx_Count - 1;
      end if;

      if Tx_Count = 0 then

         --  enable CRC transmission
--           if CRC_Enabled (This) then
--              This.Periph.CR1.CRCNEXT := True;
--           end if;

         --  wait until data is received
         while Rx_Is_Empty (This) loop
            null;
         end loop;

--           As_Half_Word_Pointer (Incoming (Incoming_Index)'Address).all :=
--             This.Periph.DR.DR;
         Incoming (Incoming_Index) := HAL.UInt8(This.Periph.RXDR);

         return;
      end if;

      while Tx_Count > 0 loop
         --  wait until we can send data
         while not Tx_Is_Empty (This) loop
            null;
         end loop;

         This.Periph.TXDR := UInt32
           (As_Half_Word_Pointer (Outgoing (Outgoing_Index)'Address).all);
         Outgoing_Index := Outgoing_Index + 2;
         Tx_Count := Tx_Count - 1;

         --  enable CRC transmission
--           if Tx_Count = 0 and CRC_Enabled (This) then
--              This.Periph.CR1.CRCNEXT := True;
--           end if;

         --  wait until data is received
         while Rx_Is_Empty (This) loop
            null;
         end loop;
         Incoming (Incoming_Index) := HAL.UInt8(This.Periph.RXDR);

--           As_Half_Word_Pointer (Incoming (Incoming_Index)'Address).all :=
--             This.Periph.RXDR;

         Incoming_Index := Incoming_Index + 2;
      end loop;

      --  receive the last UInt8
      if Current_Mode (This) = Slave then
         --  wait until data is received
         while Rx_Is_Empty (This) loop
            null;
         end loop;

--           As_Half_Word_Pointer (Incoming (Incoming_Index)'Address).all :=
--             This.Periph.RXDR;
         Incoming (Incoming_Index) := HAL.UInt8(This.Periph.RXDR);
      end if;
   end Send_Receive_16bit_Mode;

   ----------------------------
   -- Send_Receive_8bit_Mode --
   ----------------------------

   procedure Send_Receive_8bit_Mode
     (This     : in out SPI_Port;
      Outgoing : UInt8_Buffer;
      Incoming : out UInt8_Buffer;
      Size     : Positive)
   is
      Tx_Count : Natural := Size;
      Outgoing_Index : Natural := Outgoing'First;
      Incoming_Index : Natural := Incoming'First;
   begin
      if Current_Mode (This) = Slave or else Tx_Count = 1 then
         This.Periph.TXDR := UInt32 (Outgoing (Outgoing_Index));
         Outgoing_Index := Outgoing_Index + 1;
         Tx_Count := Tx_Count - 1;
      end if;

      if Tx_Count = 0 then

--           --  enable CRC transmission
--           if CRC_Enabled (This) then
--              This.Periph.CR1.CRCNEXT := True;
--           end if;

         --  wait until data is received
         while Rx_Is_Empty (This) loop
            null;
         end loop;

         Incoming (Incoming_Index) := HAL.UInt8 (This.Periph.RXDR);

         return;

      end if;

      while Tx_Count > 0 loop
         --  wait until we can send data
         while not Tx_Is_Empty (This) loop
            null;
         end loop;

         This.Periph.TXDR := UInt32 (Outgoing (Outgoing_Index));
         Outgoing_Index := Outgoing_Index + 1;
         Tx_Count := Tx_Count - 1;

         --  enable CRC transmission
--           if Tx_Count = 0 and CRC_Enabled (This) then
--              This.Periph.CR1.CRCNEXT := True;
--           end if;

         --  wait until data is received
         while Rx_Is_Empty (This) loop
            null;
         end loop;

         Incoming (Incoming_Index) := HAL.UInt8 (This.Periph.RXDR);
         Incoming_Index := Incoming_Index + 1;
      end loop;

      if Current_Mode (This) = Slave then
         --  wait until data is received
         while Rx_Is_Empty (This) loop
            null;
         end loop;

         Incoming (Incoming_Index) := Data (This);
      end if;
   end Send_Receive_8bit_Mode;

   ---------------------
   -- Send_16bit_Mode --
   ---------------------

   procedure Send_16bit_Mode
     (This     : in out SPI_Port;
      Outgoing : HAL.SPI.SPI_Data_16b)
   is
      Tx_Count : Natural := Outgoing'Length;
      Index    : Natural := Outgoing'First;
   begin
      if Current_Mode (This) = Slave or else Tx_Count = 1 then
         This.Periph.TXDR := UInt32
           (As_Half_Word_Pointer (Outgoing (Index)'Address).all);
         Index := Index + 2;
         Tx_Count := Tx_Count - 1;
      end if;

      while Tx_Count > 0 loop
         --  wait until we can send data
         while not Tx_Is_Empty (This) loop
            null;
         end loop;

         This.Periph.TXDR := UInt32
           (As_Half_Word_Pointer (Outgoing (Index)'Address).all);
         Index := Index + 2;
         Tx_Count := Tx_Count - 1;
      end loop;

--        if CRC_Enabled (This) then
--           This.Periph.CR1.CRCNEXT := True;
--        end if;
   end Send_16bit_Mode;

   --------------------
   -- Send_8bit_Mode --
   --------------------

   procedure Send_8bit_Mode
     (This     : in out SPI_Port;
      Outgoing : HAL.SPI.SPI_Data_8b)
   is
      Tx_Count : Natural := Outgoing'Length;
      Index    : Natural := Outgoing'First;
   begin
      if Current_Mode (This) = Slave or else Tx_Count = 1 then
         This.Periph.TXDR := UInt32 (Outgoing (Index));
         Index := Index + 1;
         Tx_Count := Tx_Count - 1;
      end if;

      -- start in master mode (todo handle slave mode)
      This.Periph.CR1.CSTART := True;

      while Tx_Count > 0 loop
         --  wait until we can send data
         while not Tx_Is_Empty (This) loop
            null;
         end loop;

         This.Periph.TXDR := UInt32 (Outgoing (Index));
         Index := Index + 1;
         Tx_Count := Tx_Count - 1;
      end loop;

      while This.Periph.SR.EOT = False loop
         null;
      end loop;

--        if CRC_Enabled (This) then
--           This.Periph.CR1.CRCNEXT := True;
--        end if;
   end Send_8bit_Mode;

   ------------------------
   -- Receive_16bit_Mode --
   ------------------------

   procedure Receive_16bit_Mode
     (This     : in out SPI_Port;
      Incoming : out HAL.SPI.SPI_Data_16b)
   is
      Generate_Clock : constant Boolean := Current_Mode (This) = Master;
   begin
      for K of Incoming loop
         if Generate_Clock then
            This.Periph.TXDR := 0;
         end if;
         while Rx_Is_Empty (This) loop
            null;
         end loop;
         K := HAL.UInt16(This.Periph.RXDR);
      end loop;
   end Receive_16bit_Mode;

   -----------------------
   -- Receive_8bit_Mode --
   -----------------------

   procedure Receive_8bit_Mode
     (This     : in out SPI_Port;
      Incoming : out HAL.SPI.SPI_Data_8b)
   is
      Generate_Clock : constant Boolean := Current_Mode (This) = Master;
   begin
      for K of Incoming loop
         if Generate_Clock then
            This.Periph.TXDR := 0;
         end if;
         while Rx_Is_Empty (This) loop
            null;
         end loop;
         K := HAL.UInt8 (This.Periph.RXDR);
      end loop;
   end Receive_8bit_Mode;

end STM32.SPI;
