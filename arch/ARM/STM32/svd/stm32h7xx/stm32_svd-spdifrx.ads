--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.SPDIFRX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_SPDIFRXEN_Field is STM32_SVD.UInt2;
   subtype CR_RXDMAEN_Field is STM32_SVD.Bit;
   subtype CR_RXSTEO_Field is STM32_SVD.Bit;
   subtype CR_DRFMT_Field is STM32_SVD.UInt2;
   subtype CR_PMSK_Field is STM32_SVD.Bit;
   subtype CR_VMSK_Field is STM32_SVD.Bit;
   subtype CR_CUMSK_Field is STM32_SVD.Bit;
   subtype CR_PTMSK_Field is STM32_SVD.Bit;
   subtype CR_CBDMAEN_Field is STM32_SVD.Bit;
   subtype CR_CHSEL_Field is STM32_SVD.Bit;
   subtype CR_NBTR_Field is STM32_SVD.UInt2;
   subtype CR_WFA_Field is STM32_SVD.Bit;
   subtype CR_INSEL_Field is STM32_SVD.UInt3;
   subtype CR_CKSEN_Field is STM32_SVD.Bit;
   subtype CR_CKSBKPEN_Field is STM32_SVD.Bit;

   --  Control register
   type CR_Register is record
      --  Peripheral Block Enable
      SPDIFRXEN      : CR_SPDIFRXEN_Field := 16#0#;
      --  Receiver DMA ENable for data flow
      RXDMAEN        : CR_RXDMAEN_Field := 16#0#;
      --  STerEO Mode
      RXSTEO         : CR_RXSTEO_Field := 16#0#;
      --  RX Data format
      DRFMT          : CR_DRFMT_Field := 16#0#;
      --  Mask Parity error bit
      PMSK           : CR_PMSK_Field := 16#0#;
      --  Mask of Validity bit
      VMSK           : CR_VMSK_Field := 16#0#;
      --  Mask of channel status and user bits
      CUMSK          : CR_CUMSK_Field := 16#0#;
      --  Mask of Preamble Type bits
      PTMSK          : CR_PTMSK_Field := 16#0#;
      --  Control Buffer DMA ENable for control flow
      CBDMAEN        : CR_CBDMAEN_Field := 16#0#;
      --  Channel Selection
      CHSEL          : CR_CHSEL_Field := 16#0#;
      --  Maximum allowed re-tries during synchronization phase
      NBTR           : CR_NBTR_Field := 16#0#;
      --  Wait For Activity
      WFA            : CR_WFA_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  input selection
      INSEL          : CR_INSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : STM32_SVD.Bit := 16#0#;
      --  Symbol Clock Enable
      CKSEN          : CR_CKSEN_Field := 16#0#;
      --  Backup Symbol Clock Enable
      CKSBKPEN       : CR_CKSBKPEN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : STM32_SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      SPDIFRXEN      at 0 range 0 .. 1;
      RXDMAEN        at 0 range 2 .. 2;
      RXSTEO         at 0 range 3 .. 3;
      DRFMT          at 0 range 4 .. 5;
      PMSK           at 0 range 6 .. 6;
      VMSK           at 0 range 7 .. 7;
      CUMSK          at 0 range 8 .. 8;
      PTMSK          at 0 range 9 .. 9;
      CBDMAEN        at 0 range 10 .. 10;
      CHSEL          at 0 range 11 .. 11;
      NBTR           at 0 range 12 .. 13;
      WFA            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      INSEL          at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CKSEN          at 0 range 20 .. 20;
      CKSBKPEN       at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype IMR_RXNEIE_Field is STM32_SVD.Bit;
   subtype IMR_CSRNEIE_Field is STM32_SVD.Bit;
   subtype IMR_PERRIE_Field is STM32_SVD.Bit;
   subtype IMR_OVRIE_Field is STM32_SVD.Bit;
   subtype IMR_SBLKIE_Field is STM32_SVD.Bit;
   subtype IMR_SYNCDIE_Field is STM32_SVD.Bit;
   subtype IMR_IFEIE_Field is STM32_SVD.Bit;

   --  Interrupt mask register
   type IMR_Register is record
      --  RXNE interrupt enable
      RXNEIE        : IMR_RXNEIE_Field := 16#0#;
      --  Control Buffer Ready Interrupt Enable
      CSRNEIE       : IMR_CSRNEIE_Field := 16#0#;
      --  Parity error interrupt enable
      PERRIE        : IMR_PERRIE_Field := 16#0#;
      --  Overrun error Interrupt Enable
      OVRIE         : IMR_OVRIE_Field := 16#0#;
      --  Synchronization Block Detected Interrupt Enable
      SBLKIE        : IMR_SBLKIE_Field := 16#0#;
      --  Synchronization Done
      SYNCDIE       : IMR_SYNCDIE_Field := 16#0#;
      --  Serial Interface Error Interrupt Enable
      IFEIE         : IMR_IFEIE_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : STM32_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      RXNEIE        at 0 range 0 .. 0;
      CSRNEIE       at 0 range 1 .. 1;
      PERRIE        at 0 range 2 .. 2;
      OVRIE         at 0 range 3 .. 3;
      SBLKIE        at 0 range 4 .. 4;
      SYNCDIE       at 0 range 5 .. 5;
      IFEIE         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SR_RXNE_Field is STM32_SVD.Bit;
   subtype SR_CSRNE_Field is STM32_SVD.Bit;
   subtype SR_PERR_Field is STM32_SVD.Bit;
   subtype SR_OVR_Field is STM32_SVD.Bit;
   subtype SR_SBD_Field is STM32_SVD.Bit;
   subtype SR_SYNCD_Field is STM32_SVD.Bit;
   subtype SR_FERR_Field is STM32_SVD.Bit;
   subtype SR_SERR_Field is STM32_SVD.Bit;
   subtype SR_TERR_Field is STM32_SVD.Bit;
   subtype SR_WIDTH5_Field is STM32_SVD.UInt15;

   --  Status register
   type SR_Register is record
      --  Read-only. Read data register not empty
      RXNE           : SR_RXNE_Field;
      --  Read-only. Control Buffer register is not empty
      CSRNE          : SR_CSRNE_Field;
      --  Read-only. Parity error
      PERR           : SR_PERR_Field;
      --  Read-only. Overrun error
      OVR            : SR_OVR_Field;
      --  Read-only. Synchronization Block Detected
      SBD            : SR_SBD_Field;
      --  Read-only. Synchronization Done
      SYNCD          : SR_SYNCD_Field;
      --  Read-only. Framing error
      FERR           : SR_FERR_Field;
      --  Read-only. Synchronization error
      SERR           : SR_SERR_Field;
      --  Read-only. Time-out error
      TERR           : SR_TERR_Field;
      --  unspecified
      Reserved_9_15  : STM32_SVD.UInt7;
      --  Read-only. Duration of 5 symbols counted with SPDIF_CLK
      WIDTH5         : SR_WIDTH5_Field;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      RXNE           at 0 range 0 .. 0;
      CSRNE          at 0 range 1 .. 1;
      PERR           at 0 range 2 .. 2;
      OVR            at 0 range 3 .. 3;
      SBD            at 0 range 4 .. 4;
      SYNCD          at 0 range 5 .. 5;
      FERR           at 0 range 6 .. 6;
      SERR           at 0 range 7 .. 7;
      TERR           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      WIDTH5         at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype IFCR_PERRCF_Field is STM32_SVD.Bit;
   subtype IFCR_OVRCF_Field is STM32_SVD.Bit;
   subtype IFCR_SBDCF_Field is STM32_SVD.Bit;
   subtype IFCR_SYNCDCF_Field is STM32_SVD.Bit;

   --  Interrupt Flag Clear register
   type IFCR_Register is record
      --  unspecified
      Reserved_0_1  : STM32_SVD.UInt2 := 16#0#;
      --  Write-only. Clears the Parity error flag
      PERRCF        : IFCR_PERRCF_Field := 16#0#;
      --  Write-only. Clears the Overrun error flag
      OVRCF         : IFCR_OVRCF_Field := 16#0#;
      --  Write-only. Clears the Synchronization Block Detected flag
      SBDCF         : IFCR_SBDCF_Field := 16#0#;
      --  Write-only. Clears the Synchronization Done flag
      SYNCDCF       : IFCR_SYNCDCF_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : STM32_SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFCR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PERRCF        at 0 range 2 .. 2;
      OVRCF         at 0 range 3 .. 3;
      SBDCF         at 0 range 4 .. 4;
      SYNCDCF       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DR_00_DR_Field is STM32_SVD.UInt24;
   subtype DR_00_PE_Field is STM32_SVD.Bit;
   subtype DR_00_V_Field is STM32_SVD.Bit;
   subtype DR_00_U_Field is STM32_SVD.Bit;
   subtype DR_00_C_Field is STM32_SVD.Bit;
   subtype DR_00_PT_Field is STM32_SVD.UInt2;

   --  Data input register
   type DR_00_Register is record
      --  Read-only. Parity Error bit
      DR             : DR_00_DR_Field;
      --  Read-only. Parity Error bit
      PE             : DR_00_PE_Field;
      --  Read-only. Validity bit
      V              : DR_00_V_Field;
      --  Read-only. User bit
      U              : DR_00_U_Field;
      --  Read-only. Channel Status bit
      C              : DR_00_C_Field;
      --  Read-only. Preamble Type
      PT             : DR_00_PT_Field;
      --  unspecified
      Reserved_30_31 : STM32_SVD.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_00_Register use record
      DR             at 0 range 0 .. 23;
      PE             at 0 range 24 .. 24;
      V              at 0 range 25 .. 25;
      U              at 0 range 26 .. 26;
      C              at 0 range 27 .. 27;
      PT             at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DR_01_PE_Field is STM32_SVD.Bit;
   subtype DR_01_V_Field is STM32_SVD.Bit;
   subtype DR_01_U_Field is STM32_SVD.Bit;
   subtype DR_01_C_Field is STM32_SVD.Bit;
   subtype DR_01_PT_Field is STM32_SVD.UInt2;
   subtype DR_01_DR_Field is STM32_SVD.UInt24;

   --  Data input register
   type DR_01_Register is record
      --  Read-only. Parity Error bit
      PE           : DR_01_PE_Field;
      --  Read-only. Validity bit
      V            : DR_01_V_Field;
      --  Read-only. User bit
      U            : DR_01_U_Field;
      --  Read-only. Channel Status bit
      C            : DR_01_C_Field;
      --  Read-only. Preamble Type
      PT           : DR_01_PT_Field;
      --  unspecified
      Reserved_6_7 : STM32_SVD.UInt2;
      --  Read-only. Data value
      DR           : DR_01_DR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_01_Register use record
      PE           at 0 range 0 .. 0;
      V            at 0 range 1 .. 1;
      U            at 0 range 2 .. 2;
      C            at 0 range 3 .. 3;
      PT           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      DR           at 0 range 8 .. 31;
   end record;

   --  DR_10_DRNL array element
   subtype DR_10_DRNL_Element is STM32_SVD.UInt16;

   --  DR_10_DRNL array
   type DR_10_DRNL_Field_Array is array (1 .. 2) of DR_10_DRNL_Element
     with Component_Size => 16, Size => 32;

   --  Data input register
   type DR_10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DRNL as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  DRNL as an array
            Arr : DR_10_DRNL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DR_10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype CSR_USR_Field is STM32_SVD.UInt16;
   subtype CSR_CS_Field is STM32_SVD.Byte;
   subtype CSR_SOB_Field is STM32_SVD.Bit;

   --  Channel Status register
   type CSR_Register is record
      --  Read-only. User data information
      USR            : CSR_USR_Field;
      --  Read-only. Channel A status information
      CS             : CSR_CS_Field;
      --  Read-only. Start Of Block
      SOB            : CSR_SOB_Field;
      --  unspecified
      Reserved_25_31 : STM32_SVD.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      USR            at 0 range 0 .. 15;
      CS             at 0 range 16 .. 23;
      SOB            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype DIR_THI_Field is STM32_SVD.UInt13;
   subtype DIR_TLO_Field is STM32_SVD.UInt13;

   --  Debug Information register
   type DIR_Register is record
      --  Read-only. Threshold HIGH
      THI            : DIR_THI_Field;
      --  unspecified
      Reserved_13_15 : STM32_SVD.UInt3;
      --  Read-only. Threshold LOW
      TLO            : DIR_TLO_Field;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIR_Register use record
      THI            at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TLO            at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype VERR_MINREV_Field is STM32_SVD.UInt4;
   subtype VERR_MAJREV_Field is STM32_SVD.UInt4;

   --  SPDIFRX version register
   type VERR_Register is record
      --  Read-only. Minor revision
      MINREV        : VERR_MINREV_Field;
      --  Read-only. Major revision
      MAJREV        : VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SPDIFRX_Disc is
     (
      SPDIFRX_Disc_00,
      SPDIFRX_Disc_01,
      SPDIFRX_Disc_10);

   --  Receiver Interface
   type SPDIFRX_Peripheral
     (Discriminent : SPDIFRX_Disc := SPDIFRX_Disc_00)
   is record
      --  Control register
      CR    : aliased CR_Register;
      --  Interrupt mask register
      IMR   : aliased IMR_Register;
      --  Status register
      SR    : aliased SR_Register;
      --  Interrupt Flag Clear register
      IFCR  : aliased IFCR_Register;
      --  Channel Status register
      CSR   : aliased CSR_Register;
      --  Debug Information register
      DIR   : aliased DIR_Register;
      --  SPDIFRX version register
      VERR  : aliased VERR_Register;
      --  SPDIFRX identification register
      IDR   : aliased STM32_SVD.UInt32;
      --  SPDIFRX size identification register
      SIDR  : aliased STM32_SVD.UInt32;
      case Discriminent is
         when SPDIFRX_Disc_00 =>
            --  Data input register
            DR_00 : aliased DR_00_Register;
         when SPDIFRX_Disc_01 =>
            --  Data input register
            DR_01 : aliased DR_01_Register;
         when SPDIFRX_Disc_10 =>
            --  Data input register
            DR_10 : aliased DR_10_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for SPDIFRX_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      IMR   at 16#4# range 0 .. 31;
      SR    at 16#8# range 0 .. 31;
      IFCR  at 16#C# range 0 .. 31;
      CSR   at 16#14# range 0 .. 31;
      DIR   at 16#18# range 0 .. 31;
      VERR  at 16#3F4# range 0 .. 31;
      IDR   at 16#3F8# range 0 .. 31;
      SIDR  at 16#3FC# range 0 .. 31;
      DR_00 at 16#10# range 0 .. 31;
      DR_01 at 16#10# range 0 .. 31;
      DR_10 at 16#10# range 0 .. 31;
   end record;

   --  Receiver Interface
   SPDIFRX_Periph : aliased SPDIFRX_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

end STM32_SVD.SPDIFRX;
