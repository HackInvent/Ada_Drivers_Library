--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_SPE_Field is STM32_SVD.Bit;
   subtype CR1_MASRX_Field is STM32_SVD.Bit;
   subtype CR1_CSTART_Field is STM32_SVD.Bit;
   subtype CR1_CSUSP_Field is STM32_SVD.Bit;
   subtype CR1_HDDIR_Field is STM32_SVD.Bit;
   subtype CR1_SSI_Field is STM32_SVD.Bit;
   subtype CR1_CRC33_17_Field is STM32_SVD.Bit;
   subtype CR1_RCRCI_Field is STM32_SVD.Bit;
   subtype CR1_TCRCI_Field is STM32_SVD.Bit;
   subtype CR1_IOLOCK_Field is STM32_SVD.Bit;

   --  control register 1
   type CR1_Register is record
      --  Serial Peripheral Enable
      SPE            : CR1_SPE_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : STM32_SVD.UInt7 := 16#0#;
      --  Master automatic SUSP in Receive mode
      MASRX          : CR1_MASRX_Field := 16#0#;
      --  Read-only. Master transfer start
      CSTART         : CR1_CSTART_Field := 16#0#;
      --  Write-only. Master SUSPend request
      CSUSP          : CR1_CSUSP_Field := 16#0#;
      --  Rx/Tx direction at Half-duplex mode
      HDDIR          : CR1_HDDIR_Field := 16#0#;
      --  Internal SS signal input level
      SSI            : CR1_SSI_Field := 16#0#;
      --  32-bit CRC polynomial configuration
      CRC33_17       : CR1_CRC33_17_Field := 16#0#;
      --  CRC calculation initialization pattern control for receiver
      RCRCI          : CR1_RCRCI_Field := 16#0#;
      --  CRC calculation initialization pattern control for transmitter
      TCRCI          : CR1_TCRCI_Field := 16#0#;
      --  Read-only. Locking the AF configuration of associated IOs
      IOLOCK         : CR1_IOLOCK_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : STM32_SVD.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      SPE            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      MASRX          at 0 range 8 .. 8;
      CSTART         at 0 range 9 .. 9;
      CSUSP          at 0 range 10 .. 10;
      HDDIR          at 0 range 11 .. 11;
      SSI            at 0 range 12 .. 12;
      CRC33_17       at 0 range 13 .. 13;
      RCRCI          at 0 range 14 .. 14;
      TCRCI          at 0 range 15 .. 15;
      IOLOCK         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CR2_TSIZE_Field is STM32_SVD.UInt16;
   subtype CR2_TSER_Field is STM32_SVD.UInt16;

   --  control register 2
   type CR2_Register is record
      --  Number of data at current transfer
      TSIZE : CR2_TSIZE_Field := 16#0#;
      --  Read-only. Number of data transfer extension to be reload into TSIZE
      --  just when a previous
      TSER  : CR2_TSER_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      TSIZE at 0 range 0 .. 15;
      TSER  at 0 range 16 .. 31;
   end record;

   subtype CFG1_DSIZE_Field is STM32_SVD.UInt5;
   subtype CFG1_FTHVL_Field is STM32_SVD.UInt4;
   subtype CFG1_UDRCFG_Field is STM32_SVD.UInt2;
   subtype CFG1_UDRDET_Field is STM32_SVD.UInt2;
   subtype CFG1_RXDMAEN_Field is STM32_SVD.Bit;
   subtype CFG1_TXDMAEN_Field is STM32_SVD.Bit;
   subtype CFG1_CRCSIZE_Field is STM32_SVD.UInt5;
   subtype CFG1_CRCEN_Field is STM32_SVD.Bit;
   subtype CFG1_MBR_Field is STM32_SVD.UInt3;

   --  configuration register 1
   type CFG1_Register is record
      --  Number of bits in at single SPI data frame
      DSIZE          : CFG1_DSIZE_Field := 16#7#;
      --  threshold level
      FTHVL          : CFG1_FTHVL_Field := 16#0#;
      --  Behavior of slave transmitter at underrun condition
      UDRCFG         : CFG1_UDRCFG_Field := 16#0#;
      --  Detection of underrun condition at slave transmitter
      UDRDET         : CFG1_UDRDET_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32_SVD.Bit := 16#0#;
      --  Rx DMA stream enable
      RXDMAEN        : CFG1_RXDMAEN_Field := 16#0#;
      --  Tx DMA stream enable
      TXDMAEN        : CFG1_TXDMAEN_Field := 16#0#;
      --  Length of CRC frame to be transacted and compared
      CRCSIZE        : CFG1_CRCSIZE_Field := 16#7#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  Hardware CRC computation enable
      CRCEN          : CFG1_CRCEN_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : STM32_SVD.UInt5 := 16#0#;
      --  Master baud rate
      MBR            : CFG1_MBR_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG1_Register use record
      DSIZE          at 0 range 0 .. 4;
      FTHVL          at 0 range 5 .. 8;
      UDRCFG         at 0 range 9 .. 10;
      UDRDET         at 0 range 11 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      RXDMAEN        at 0 range 14 .. 14;
      TXDMAEN        at 0 range 15 .. 15;
      CRCSIZE        at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CRCEN          at 0 range 22 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      MBR            at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CFG2_MSSI_Field is STM32_SVD.UInt4;
   subtype CFG2_MIDI_Field is STM32_SVD.UInt4;
   subtype CFG2_IOSWP_Field is STM32_SVD.Bit;
   subtype CFG2_COMM_Field is STM32_SVD.UInt2;
   subtype CFG2_SP_Field is STM32_SVD.UInt3;
   subtype CFG2_MASTER_Field is STM32_SVD.Bit;
   subtype CFG2_LSBFRST_Field is STM32_SVD.Bit;
   subtype CFG2_CPHA_Field is STM32_SVD.Bit;
   subtype CFG2_CPOL_Field is STM32_SVD.Bit;
   subtype CFG2_SSM_Field is STM32_SVD.Bit;
   subtype CFG2_SSIOP_Field is STM32_SVD.Bit;
   subtype CFG2_SSOE_Field is STM32_SVD.Bit;
   subtype CFG2_SSOM_Field is STM32_SVD.Bit;
   subtype CFG2_AFCNTR_Field is STM32_SVD.Bit;

   --  configuration register 2
   type CFG2_Register is record
      --  Master SS Idleness
      MSSI           : CFG2_MSSI_Field := 16#0#;
      --  Master Inter-Data Idleness
      MIDI           : CFG2_MIDI_Field := 16#0#;
      --  unspecified
      Reserved_8_14  : STM32_SVD.UInt7 := 16#0#;
      --  Swap functionality of MISO and MOSI pins
      IOSWP          : CFG2_IOSWP_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : STM32_SVD.Bit := 16#0#;
      --  SPI Communication Mode
      COMM           : CFG2_COMM_Field := 16#0#;
      --  Serial Protocol
      SP             : CFG2_SP_Field := 16#0#;
      --  SPI Master
      MASTER         : CFG2_MASTER_Field := 16#0#;
      --  Data frame format
      LSBFRST        : CFG2_LSBFRST_Field := 16#0#;
      --  Clock phase
      CPHA           : CFG2_CPHA_Field := 16#0#;
      --  Clock polarity
      CPOL           : CFG2_CPOL_Field := 16#0#;
      --  Software management of SS signal input
      SSM            : CFG2_SSM_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : STM32_SVD.Bit := 16#0#;
      --  SS input/output polarity
      SSIOP          : CFG2_SSIOP_Field := 16#0#;
      --  SS output enable
      SSOE           : CFG2_SSOE_Field := 16#0#;
      --  SS output management in master mode
      SSOM           : CFG2_SSOM_Field := 16#0#;
      --  Alternate function GPIOs control
      AFCNTR         : CFG2_AFCNTR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG2_Register use record
      MSSI           at 0 range 0 .. 3;
      MIDI           at 0 range 4 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      IOSWP          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      COMM           at 0 range 17 .. 18;
      SP             at 0 range 19 .. 21;
      MASTER         at 0 range 22 .. 22;
      LSBFRST        at 0 range 23 .. 23;
      CPHA           at 0 range 24 .. 24;
      CPOL           at 0 range 25 .. 25;
      SSM            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SSIOP          at 0 range 28 .. 28;
      SSOE           at 0 range 29 .. 29;
      SSOM           at 0 range 30 .. 30;
      AFCNTR         at 0 range 31 .. 31;
   end record;

   subtype IER_RXPIE_Field is STM32_SVD.Bit;
   subtype IER_TXPIE_Field is STM32_SVD.Bit;
   subtype IER_DPXPIE_Field is STM32_SVD.Bit;
   subtype IER_EOTIE_Field is STM32_SVD.Bit;
   subtype IER_TXTFIE_Field is STM32_SVD.Bit;
   subtype IER_UDRIE_Field is STM32_SVD.Bit;
   subtype IER_OVRIE_Field is STM32_SVD.Bit;
   subtype IER_CRCEIE_Field is STM32_SVD.Bit;
   subtype IER_TIFREIE_Field is STM32_SVD.Bit;
   subtype IER_MODFIE_Field is STM32_SVD.Bit;
   subtype IER_TSERFIE_Field is STM32_SVD.Bit;

   --  Interrupt Enable Register
   type IER_Register is record
      --  RXP Interrupt Enable
      RXPIE          : IER_RXPIE_Field := 16#0#;
      --  Read-only. TXP interrupt enable
      TXPIE          : IER_TXPIE_Field := 16#0#;
      --  Read-only. DXP interrupt enabled
      DPXPIE         : IER_DPXPIE_Field := 16#0#;
      --  EOT, SUSP and TXC interrupt enable
      EOTIE          : IER_EOTIE_Field := 16#0#;
      --  TXTFIE interrupt enable
      TXTFIE         : IER_TXTFIE_Field := 16#0#;
      --  UDR interrupt enable
      UDRIE          : IER_UDRIE_Field := 16#0#;
      --  OVR interrupt enable
      OVRIE          : IER_OVRIE_Field := 16#0#;
      --  CRC Interrupt enable
      CRCEIE         : IER_CRCEIE_Field := 16#0#;
      --  TIFRE interrupt enable
      TIFREIE        : IER_TIFREIE_Field := 16#0#;
      --  Mode Fault interrupt enable
      MODFIE         : IER_MODFIE_Field := 16#0#;
      --  Additional number of transactions reload interrupt enable
      TSERFIE        : IER_TSERFIE_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : STM32_SVD.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      RXPIE          at 0 range 0 .. 0;
      TXPIE          at 0 range 1 .. 1;
      DPXPIE         at 0 range 2 .. 2;
      EOTIE          at 0 range 3 .. 3;
      TXTFIE         at 0 range 4 .. 4;
      UDRIE          at 0 range 5 .. 5;
      OVRIE          at 0 range 6 .. 6;
      CRCEIE         at 0 range 7 .. 7;
      TIFREIE        at 0 range 8 .. 8;
      MODFIE         at 0 range 9 .. 9;
      TSERFIE        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SR_RXP_Field is STM32_SVD.Bit;
   subtype SR_TXP_Field is STM32_SVD.Bit;
   subtype SR_DXP_Field is STM32_SVD.Bit;
   subtype SR_EOT_Field is STM32_SVD.Bit;
   subtype SR_TXTF_Field is STM32_SVD.Bit;
   subtype SR_UDR_Field is STM32_SVD.Bit;
   subtype SR_OVR_Field is STM32_SVD.Bit;
   subtype SR_CRCE_Field is STM32_SVD.Bit;
   subtype SR_TIFRE_Field is STM32_SVD.Bit;
   subtype SR_MODF_Field is STM32_SVD.Bit;
   subtype SR_TSERF_Field is STM32_SVD.Bit;
   subtype SR_SUSP_Field is STM32_SVD.Bit;
   subtype SR_TXC_Field is STM32_SVD.Bit;
   subtype SR_RXPLVL_Field is STM32_SVD.UInt2;
   subtype SR_RXWNE_Field is STM32_SVD.Bit;
   subtype SR_CTSIZE_Field is STM32_SVD.UInt16;

   --  Status Register
   type SR_Register is record
      --  Read-only. Rx-Packet available
      RXP    : SR_RXP_Field;
      --  Read-only. Tx-Packet space available
      TXP    : SR_TXP_Field;
      --  Read-only. Duplex Packet
      DXP    : SR_DXP_Field;
      --  Read-only. End Of Transfer
      EOT    : SR_EOT_Field;
      --  Read-only. Transmission Transfer Filled
      TXTF   : SR_TXTF_Field;
      --  Read-only. Underrun at slave transmission mode
      UDR    : SR_UDR_Field;
      --  Read-only. Overrun
      OVR    : SR_OVR_Field;
      --  Read-only. CRC Error
      CRCE   : SR_CRCE_Field;
      --  Read-only. TI frame format error
      TIFRE  : SR_TIFRE_Field;
      --  Read-only. Mode Fault
      MODF   : SR_MODF_Field;
      --  Read-only. Additional number of SPI data to be transacted was reload
      TSERF  : SR_TSERF_Field;
      --  Read-only. SUSPend
      SUSP   : SR_SUSP_Field;
      --  Read-only. TxFIFO transmission complete
      TXC    : SR_TXC_Field;
      --  Read-only. RxFIFO Packing LeVeL
      RXPLVL : SR_RXPLVL_Field;
      --  Read-only. RxFIFO Word Not Empty
      RXWNE  : SR_RXWNE_Field;
      --  Read-only. Number of data frames remaining in current TSIZE session
      CTSIZE : SR_CTSIZE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      RXP    at 0 range 0 .. 0;
      TXP    at 0 range 1 .. 1;
      DXP    at 0 range 2 .. 2;
      EOT    at 0 range 3 .. 3;
      TXTF   at 0 range 4 .. 4;
      UDR    at 0 range 5 .. 5;
      OVR    at 0 range 6 .. 6;
      CRCE   at 0 range 7 .. 7;
      TIFRE  at 0 range 8 .. 8;
      MODF   at 0 range 9 .. 9;
      TSERF  at 0 range 10 .. 10;
      SUSP   at 0 range 11 .. 11;
      TXC    at 0 range 12 .. 12;
      RXPLVL at 0 range 13 .. 14;
      RXWNE  at 0 range 15 .. 15;
      CTSIZE at 0 range 16 .. 31;
   end record;

   subtype IFCR_EOTC_Field is STM32_SVD.Bit;
   subtype IFCR_TXTFC_Field is STM32_SVD.Bit;
   subtype IFCR_UDRC_Field is STM32_SVD.Bit;
   subtype IFCR_OVRC_Field is STM32_SVD.Bit;
   subtype IFCR_CRCEC_Field is STM32_SVD.Bit;
   subtype IFCR_TIFREC_Field is STM32_SVD.Bit;
   subtype IFCR_MODFC_Field is STM32_SVD.Bit;
   subtype IFCR_TSERFC_Field is STM32_SVD.Bit;
   subtype IFCR_SUSPC_Field is STM32_SVD.Bit;

   --  Interrupt/Status Flags Clear Register
   type IFCR_Register is record
      --  unspecified
      Reserved_0_2   : STM32_SVD.UInt3 := 16#0#;
      --  Write-only. End Of Transfer flag clear
      EOTC           : IFCR_EOTC_Field := 16#0#;
      --  Write-only. Transmission Transfer Filled flag clear
      TXTFC          : IFCR_TXTFC_Field := 16#0#;
      --  Write-only. Underrun flag clear
      UDRC           : IFCR_UDRC_Field := 16#0#;
      --  Write-only. Overrun flag clear
      OVRC           : IFCR_OVRC_Field := 16#0#;
      --  Write-only. CRC Error flag clear
      CRCEC          : IFCR_CRCEC_Field := 16#0#;
      --  Write-only. TI frame format error flag clear
      TIFREC         : IFCR_TIFREC_Field := 16#0#;
      --  Write-only. Mode Fault flag clear
      MODFC          : IFCR_MODFC_Field := 16#0#;
      --  Write-only. TSERFC flag clear
      TSERFC         : IFCR_TSERFC_Field := 16#0#;
      --  Write-only. SUSPend flag clear
      SUSPC          : IFCR_SUSPC_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : STM32_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      EOTC           at 0 range 3 .. 3;
      TXTFC          at 0 range 4 .. 4;
      UDRC           at 0 range 5 .. 5;
      OVRC           at 0 range 6 .. 6;
      CRCEC          at 0 range 7 .. 7;
      TIFREC         at 0 range 8 .. 8;
      MODFC          at 0 range 9 .. 9;
      TSERFC         at 0 range 10 .. 10;
      SUSPC          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CGFR_I2SMOD_Field is STM32_SVD.Bit;
   subtype CGFR_I2SCFG_Field is STM32_SVD.UInt3;
   subtype CGFR_I2SSTD_Field is STM32_SVD.UInt2;
   subtype CGFR_PCMSYNC_Field is STM32_SVD.Bit;
   subtype CGFR_DATLEN_Field is STM32_SVD.UInt2;
   subtype CGFR_CHLEN_Field is STM32_SVD.Bit;
   subtype CGFR_CKPOL_Field is STM32_SVD.Bit;
   subtype CGFR_FIXCH_Field is STM32_SVD.Bit;
   subtype CGFR_WSINV_Field is STM32_SVD.Bit;
   subtype CGFR_DATFMT_Field is STM32_SVD.Bit;
   subtype CGFR_I2SDIV_Field is STM32_SVD.Byte;
   subtype CGFR_ODD_Field is STM32_SVD.Bit;
   subtype CGFR_MCKOE_Field is STM32_SVD.Bit;

   --  configuration register
   type CGFR_Register is record
      --  I2S mode selection
      I2SMOD         : CGFR_I2SMOD_Field := 16#0#;
      --  I2S configuration mode
      I2SCFG         : CGFR_I2SCFG_Field := 16#0#;
      --  I2S standard selection
      I2SSTD         : CGFR_I2SSTD_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : STM32_SVD.Bit := 16#0#;
      --  PCM frame synchronization
      PCMSYNC        : CGFR_PCMSYNC_Field := 16#0#;
      --  Data length to be transferred
      DATLEN         : CGFR_DATLEN_Field := 16#0#;
      --  Channel length (number of bits per audio channel)
      CHLEN          : CGFR_CHLEN_Field := 16#0#;
      --  Serial audio clock polarity
      CKPOL          : CGFR_CKPOL_Field := 16#0#;
      --  Word select inversion
      FIXCH          : CGFR_FIXCH_Field := 16#0#;
      --  Fixed channel length in SLAVE
      WSINV          : CGFR_WSINV_Field := 16#0#;
      --  Data format
      DATFMT         : CGFR_DATFMT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  I2S linear prescaler
      I2SDIV         : CGFR_I2SDIV_Field := 16#0#;
      --  Odd factor for the prescaler
      ODD            : CGFR_ODD_Field := 16#0#;
      --  Master clock output enable
      MCKOE          : CGFR_MCKOE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : STM32_SVD.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CGFR_Register use record
      I2SMOD         at 0 range 0 .. 0;
      I2SCFG         at 0 range 1 .. 3;
      I2SSTD         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PCMSYNC        at 0 range 7 .. 7;
      DATLEN         at 0 range 8 .. 9;
      CHLEN          at 0 range 10 .. 10;
      CKPOL          at 0 range 11 .. 11;
      FIXCH          at 0 range 12 .. 12;
      WSINV          at 0 range 13 .. 13;
      DATFMT         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      I2SDIV         at 0 range 16 .. 23;
      ODD            at 0 range 24 .. 24;
      MCKOE          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial peripheral interface
   type SPI_Peripheral is record
      --  control register 1
      CR1     : aliased CR1_Register;
      --  control register 2
      CR2     : aliased CR2_Register;
      --  configuration register 1
      CFG1    : aliased CFG1_Register;
      --  configuration register 2
      CFG2    : aliased CFG2_Register;
      --  Interrupt Enable Register
      IER     : aliased IER_Register;
      --  Status Register
      SR      : aliased SR_Register;
      --  Interrupt/Status Flags Clear Register
      IFCR    : aliased IFCR_Register;
      --  Transmit Data Register
      TXDR    : aliased STM32_SVD.UInt32;
      --  Receive Data Register
      RXDR    : aliased STM32_SVD.UInt32;
      --  Polynomial Register
      CRCPOLY : aliased STM32_SVD.UInt32;
      --  Transmitter CRC Register
      TXCRC   : aliased STM32_SVD.UInt32;
      --  Receiver CRC Register
      RXCRC   : aliased STM32_SVD.UInt32;
      --  Underrun Data Register
      UDRDR   : aliased STM32_SVD.UInt32;
      --  configuration register
      CGFR    : aliased CGFR_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      CR1     at 16#0# range 0 .. 31;
      CR2     at 16#4# range 0 .. 31;
      CFG1    at 16#8# range 0 .. 31;
      CFG2    at 16#C# range 0 .. 31;
      IER     at 16#10# range 0 .. 31;
      SR      at 16#14# range 0 .. 31;
      IFCR    at 16#18# range 0 .. 31;
      TXDR    at 16#20# range 0 .. 31;
      RXDR    at 16#30# range 0 .. 31;
      CRCPOLY at 16#40# range 0 .. 31;
      TXCRC   at 16#44# range 0 .. 31;
      RXCRC   at 16#48# range 0 .. 31;
      UDRDR   at 16#4C# range 0 .. 31;
      CGFR    at 16#50# range 0 .. 31;
   end record;

   --  Serial peripheral interface
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40013000#);

   --  Serial peripheral interface
   SPI2_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40003800#);

   --  Serial peripheral interface
   SPI3_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40003C00#);

   --  Serial peripheral interface
   SPI4_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40013400#);

   --  Serial peripheral interface
   SPI5_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40015000#);

   --  Serial peripheral interface
   SPI6_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#58001400#);

end STM32_SVD.SPI;
