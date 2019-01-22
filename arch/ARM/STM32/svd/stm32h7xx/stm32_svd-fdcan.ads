--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.FDCAN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FDCAN_CREL_DAY_Field is STM32_SVD.Byte;
   subtype FDCAN_CREL_MON_Field is STM32_SVD.Byte;
   subtype FDCAN_CREL_YEAR_Field is STM32_SVD.UInt4;
   subtype FDCAN_CREL_SUBSTEP_Field is STM32_SVD.UInt4;
   subtype FDCAN_CREL_STEP_Field is STM32_SVD.UInt4;
   subtype FDCAN_CREL_REL_Field is STM32_SVD.UInt4;

   --  FDCAN Core Release Register
   type FDCAN_CREL_Register is record
      --  Read-only. Timestamp Day
      DAY     : FDCAN_CREL_DAY_Field;
      --  Read-only. Timestamp Month
      MON     : FDCAN_CREL_MON_Field;
      --  Read-only. Timestamp Year
      YEAR    : FDCAN_CREL_YEAR_Field;
      --  Read-only. Sub-step of Core release
      SUBSTEP : FDCAN_CREL_SUBSTEP_Field;
      --  Read-only. Step of Core release
      STEP    : FDCAN_CREL_STEP_Field;
      --  Read-only. Core release
      REL     : FDCAN_CREL_REL_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CREL_Register use record
      DAY     at 0 range 0 .. 7;
      MON     at 0 range 8 .. 15;
      YEAR    at 0 range 16 .. 19;
      SUBSTEP at 0 range 20 .. 23;
      STEP    at 0 range 24 .. 27;
      REL     at 0 range 28 .. 31;
   end record;

   subtype FDCAN_DBTP_DSJW_Field is STM32_SVD.UInt4;
   subtype FDCAN_DBTP_DTSEG2_Field is STM32_SVD.UInt4;
   subtype FDCAN_DBTP_DTSEG1_Field is STM32_SVD.UInt5;
   subtype FDCAN_DBTP_DBRP_Field is STM32_SVD.UInt5;
   subtype FDCAN_DBTP_TDC_Field is STM32_SVD.Bit;

   --  FDCAN Data Bit Timing and Prescaler Register
   type FDCAN_DBTP_Register is record
      --  Read-only. Synchronization Jump Width
      DSJW           : FDCAN_DBTP_DSJW_Field;
      --  Read-only. Data time segment after sample point
      DTSEG2         : FDCAN_DBTP_DTSEG2_Field;
      --  Read-only. Data time segment after sample point
      DTSEG1         : FDCAN_DBTP_DTSEG1_Field;
      --  unspecified
      Reserved_13_15 : STM32_SVD.UInt3;
      --  Read-only. Data BIt Rate Prescaler
      DBRP           : FDCAN_DBTP_DBRP_Field;
      --  unspecified
      Reserved_21_22 : STM32_SVD.UInt2;
      --  Read-only. Transceiver Delay Compensation
      TDC            : FDCAN_DBTP_TDC_Field;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_DBTP_Register use record
      DSJW           at 0 range 0 .. 3;
      DTSEG2         at 0 range 4 .. 7;
      DTSEG1         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBRP           at 0 range 16 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      TDC            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FDCAN_TEST_LBCK_Field is STM32_SVD.Bit;
   subtype FDCAN_TEST_TX_Field is STM32_SVD.UInt2;
   subtype FDCAN_TEST_RX_Field is STM32_SVD.Bit;

   --  FDCAN Test Register
   type FDCAN_TEST_Register is record
      --  unspecified
      Reserved_0_3  : STM32_SVD.UInt4;
      --  Read-only. Loop Back mode
      LBCK          : FDCAN_TEST_LBCK_Field;
      --  Read-only. Loop Back mode
      TX            : FDCAN_TEST_TX_Field;
      --  Read-only. Control of Transmit Pin
      RX            : FDCAN_TEST_RX_Field;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TEST_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      LBCK          at 0 range 4 .. 4;
      TX            at 0 range 5 .. 6;
      RX            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FDCAN_RWD_WDC_Field is STM32_SVD.Byte;
   subtype FDCAN_RWD_WDV_Field is STM32_SVD.Byte;

   --  FDCAN RAM Watchdog Register
   type FDCAN_RWD_Register is record
      --  Read-only. Watchdog configuration
      WDC            : FDCAN_RWD_WDC_Field;
      --  Read-only. Watchdog value
      WDV            : FDCAN_RWD_WDV_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RWD_Register use record
      WDC            at 0 range 0 .. 7;
      WDV            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_CCCR_INIT_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_CCE_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_ASM_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_CSA_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_CSR_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_MON_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_DAR_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_TEST_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_FDOE_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_BSE_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_PXHD_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_EFBI_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_TXP_Field is STM32_SVD.Bit;
   subtype FDCAN_CCCR_NISO_Field is STM32_SVD.Bit;

   --  FDCAN CC Control Register
   type FDCAN_CCCR_Register is record
      --  Initialization
      INIT           : FDCAN_CCCR_INIT_Field := 16#0#;
      --  Configuration Change Enable
      CCE            : FDCAN_CCCR_CCE_Field := 16#0#;
      --  ASM Restricted Operation Mode
      ASM            : FDCAN_CCCR_ASM_Field := 16#0#;
      --  Clock Stop Acknowledge
      CSA            : FDCAN_CCCR_CSA_Field := 16#0#;
      --  Clock Stop Request
      CSR            : FDCAN_CCCR_CSR_Field := 16#0#;
      --  Bus Monitoring Mode
      MON            : FDCAN_CCCR_MON_Field := 16#0#;
      --  Disable Automatic Retransmission
      DAR            : FDCAN_CCCR_DAR_Field := 16#0#;
      --  Test Mode Enable
      TEST           : FDCAN_CCCR_TEST_Field := 16#0#;
      --  FD Operation Enable
      FDOE           : FDCAN_CCCR_FDOE_Field := 16#0#;
      --  FDCAN Bit Rate Switching
      BSE            : FDCAN_CCCR_BSE_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : STM32_SVD.UInt2 := 16#0#;
      --  Protocol Exception Handling Disable
      PXHD           : FDCAN_CCCR_PXHD_Field := 16#0#;
      --  Edge Filtering during Bus Integration
      EFBI           : FDCAN_CCCR_EFBI_Field := 16#0#;
      --  TXP
      TXP            : FDCAN_CCCR_TXP_Field := 16#0#;
      --  Non ISO Operation
      NISO           : FDCAN_CCCR_NISO_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CCCR_Register use record
      INIT           at 0 range 0 .. 0;
      CCE            at 0 range 1 .. 1;
      ASM            at 0 range 2 .. 2;
      CSA            at 0 range 3 .. 3;
      CSR            at 0 range 4 .. 4;
      MON            at 0 range 5 .. 5;
      DAR            at 0 range 6 .. 6;
      TEST           at 0 range 7 .. 7;
      FDOE           at 0 range 8 .. 8;
      BSE            at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PXHD           at 0 range 12 .. 12;
      EFBI           at 0 range 13 .. 13;
      TXP            at 0 range 14 .. 14;
      NISO           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_NBTP_TSEG2_Field is STM32_SVD.UInt7;
   subtype FDCAN_NBTP_NTSEG1_Field is STM32_SVD.Byte;
   subtype FDCAN_NBTP_NBRP_Field is STM32_SVD.UInt9;
   subtype FDCAN_NBTP_NSJW_Field is STM32_SVD.UInt7;

   --  FDCAN Nominal Bit Timing and Prescaler Register
   type FDCAN_NBTP_Register is record
      --  Nominal Time segment after sample point
      TSEG2        : FDCAN_NBTP_TSEG2_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : STM32_SVD.Bit := 16#0#;
      --  Nominal Time segment before sample point
      NTSEG1       : FDCAN_NBTP_NTSEG1_Field := 16#0#;
      --  Bit Rate Prescaler
      NBRP         : FDCAN_NBTP_NBRP_Field := 16#0#;
      --  NSJW: Nominal (Re)Synchronization Jump Width
      NSJW         : FDCAN_NBTP_NSJW_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_NBTP_Register use record
      TSEG2        at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      NTSEG1       at 0 range 8 .. 15;
      NBRP         at 0 range 16 .. 24;
      NSJW         at 0 range 25 .. 31;
   end record;

   subtype FDCAN_TSCC_TSS_Field is STM32_SVD.UInt2;
   subtype FDCAN_TSCC_TCP_Field is STM32_SVD.UInt4;

   --  FDCAN Timestamp Counter Configuration Register
   type FDCAN_TSCC_Register is record
      --  Timestamp Select
      TSS            : FDCAN_TSCC_TSS_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : STM32_SVD.UInt14 := 16#0#;
      --  Timestamp Counter Prescaler
      TCP            : FDCAN_TSCC_TCP_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : STM32_SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TSCC_Register use record
      TSS            at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TCP            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype FDCAN_TSCV_TSC_Field is STM32_SVD.UInt16;

   --  FDCAN Timestamp Counter Value Register
   type FDCAN_TSCV_Register is record
      --  Timestamp Counter
      TSC            : FDCAN_TSCV_TSC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TSCV_Register use record
      TSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TOCC_ETOC_Field is STM32_SVD.Bit;
   subtype FDCAN_TOCC_TOS_Field is STM32_SVD.UInt2;
   subtype FDCAN_TOCC_TOP_Field is STM32_SVD.UInt16;

   --  FDCAN Timeout Counter Configuration Register
   type FDCAN_TOCC_Register is record
      --  Enable Timeout Counter
      ETOC          : FDCAN_TOCC_ETOC_Field := 16#0#;
      --  Timeout Select
      TOS           : FDCAN_TOCC_TOS_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : STM32_SVD.UInt13 := 16#0#;
      --  Timeout Period
      TOP           : FDCAN_TOCC_TOP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TOCC_Register use record
      ETOC          at 0 range 0 .. 0;
      TOS           at 0 range 1 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
      TOP           at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TOCV_TOC_Field is STM32_SVD.UInt16;

   --  FDCAN Timeout Counter Value Register
   type FDCAN_TOCV_Register is record
      --  Timeout Counter
      TOC            : FDCAN_TOCV_TOC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TOCV_Register use record
      TOC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_ECR_TEC_Field is STM32_SVD.Byte;
   subtype FDCAN_ECR_TREC_Field is STM32_SVD.UInt7;
   subtype FDCAN_ECR_RP_Field is STM32_SVD.Bit;
   subtype FDCAN_ECR_CEL_Field is STM32_SVD.Byte;

   --  FDCAN Error Counter Register
   type FDCAN_ECR_Register is record
      --  Transmit Error Counter
      TEC            : FDCAN_ECR_TEC_Field := 16#0#;
      --  Receive Error Counter
      TREC           : FDCAN_ECR_TREC_Field := 16#0#;
      --  Receive Error Passive
      RP             : FDCAN_ECR_RP_Field := 16#0#;
      --  AN Error Logging
      CEL            : FDCAN_ECR_CEL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_ECR_Register use record
      TEC            at 0 range 0 .. 7;
      TREC           at 0 range 8 .. 14;
      RP             at 0 range 15 .. 15;
      CEL            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FDCAN_PSR_LEC_Field is STM32_SVD.UInt3;
   subtype FDCAN_PSR_ACT_Field is STM32_SVD.UInt2;
   subtype FDCAN_PSR_EP_Field is STM32_SVD.Bit;
   subtype FDCAN_PSR_EW_Field is STM32_SVD.Bit;
   subtype FDCAN_PSR_BO_Field is STM32_SVD.Bit;
   subtype FDCAN_PSR_DLEC_Field is STM32_SVD.UInt3;
   subtype FDCAN_PSR_RESI_Field is STM32_SVD.Bit;
   subtype FDCAN_PSR_RBRS_Field is STM32_SVD.Bit;
   subtype FDCAN_PSR_REDL_Field is STM32_SVD.Bit;
   subtype FDCAN_PSR_PXE_Field is STM32_SVD.Bit;
   subtype FDCAN_PSR_TDCV_Field is STM32_SVD.UInt7;

   --  FDCAN Protocol Status Register
   type FDCAN_PSR_Register is record
      --  Last Error Code
      LEC            : FDCAN_PSR_LEC_Field := 16#0#;
      --  Activity
      ACT            : FDCAN_PSR_ACT_Field := 16#0#;
      --  Error Passive
      EP             : FDCAN_PSR_EP_Field := 16#0#;
      --  Warning Status
      EW             : FDCAN_PSR_EW_Field := 16#0#;
      --  Bus_Off Status
      BO             : FDCAN_PSR_BO_Field := 16#0#;
      --  Data Last Error Code
      DLEC           : FDCAN_PSR_DLEC_Field := 16#0#;
      --  ESI flag of last received FDCAN Message
      RESI           : FDCAN_PSR_RESI_Field := 16#0#;
      --  BRS flag of last received FDCAN Message
      RBRS           : FDCAN_PSR_RBRS_Field := 16#0#;
      --  Received FDCAN Message
      REDL           : FDCAN_PSR_REDL_Field := 16#0#;
      --  Protocol Exception Event
      PXE            : FDCAN_PSR_PXE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  Transmitter Delay Compensation Value
      TDCV           : FDCAN_PSR_TDCV_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : STM32_SVD.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_PSR_Register use record
      LEC            at 0 range 0 .. 2;
      ACT            at 0 range 3 .. 4;
      EP             at 0 range 5 .. 5;
      EW             at 0 range 6 .. 6;
      BO             at 0 range 7 .. 7;
      DLEC           at 0 range 8 .. 10;
      RESI           at 0 range 11 .. 11;
      RBRS           at 0 range 12 .. 12;
      REDL           at 0 range 13 .. 13;
      PXE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TDCV           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FDCAN_TDCR_TDCF_Field is STM32_SVD.UInt7;
   subtype FDCAN_TDCR_TDCO_Field is STM32_SVD.UInt7;

   --  FDCAN Transmitter Delay Compensation Register
   type FDCAN_TDCR_Register is record
      --  Read-only. Transmitter Delay Compensation Filter Window Length
      TDCF           : FDCAN_TDCR_TDCF_Field;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit;
      --  Read-only. Transmitter Delay Compensation Offset
      TDCO           : FDCAN_TDCR_TDCO_Field;
      --  unspecified
      Reserved_15_31 : STM32_SVD.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TDCR_Register use record
      TDCF           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TDCO           at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype FDCAN_IR_RF0N_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_RF0W_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_RF0F_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_RF0L_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_RF1N_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_RF1W_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_RF1F_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_RF1L_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_HPM_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_TC_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_TCF_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_TEF_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_TEFN_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_TEFW_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_TEFF_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_TEFL_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_TSW_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_MRAF_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_TOO_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_DRX_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_ELO_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_EP_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_EW_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_BO_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_WDI_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_PEA_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_PED_Field is STM32_SVD.Bit;
   subtype FDCAN_IR_ARA_Field is STM32_SVD.Bit;

   --  FDCAN Interrupt Register
   type FDCAN_IR_Register is record
      --  Read-only. Rx FIFO 0 New Message
      RF0N           : FDCAN_IR_RF0N_Field;
      --  Read-only. Rx FIFO 0 Full
      RF0W           : FDCAN_IR_RF0W_Field;
      --  Read-only. Rx FIFO 0 Full
      RF0F           : FDCAN_IR_RF0F_Field;
      --  Read-only. Rx FIFO 0 Message Lost
      RF0L           : FDCAN_IR_RF0L_Field;
      --  Read-only. Rx FIFO 1 New Message
      RF1N           : FDCAN_IR_RF1N_Field;
      --  Read-only. Rx FIFO 1 Watermark Reached
      RF1W           : FDCAN_IR_RF1W_Field;
      --  Read-only. Rx FIFO 1 Watermark Reached
      RF1F           : FDCAN_IR_RF1F_Field;
      --  Read-only. Rx FIFO 1 Message Lost
      RF1L           : FDCAN_IR_RF1L_Field;
      --  Read-only. High Priority Message
      HPM            : FDCAN_IR_HPM_Field;
      --  Read-only. Transmission Completed
      TC             : FDCAN_IR_TC_Field;
      --  Read-only. Transmission Cancellation Finished
      TCF            : FDCAN_IR_TCF_Field;
      --  Read-only. Tx FIFO Empty
      TEF            : FDCAN_IR_TEF_Field;
      --  Read-only. Tx Event FIFO New Entry
      TEFN           : FDCAN_IR_TEFN_Field;
      --  Read-only. Tx Event FIFO Watermark Reached
      TEFW           : FDCAN_IR_TEFW_Field;
      --  Read-only. Tx Event FIFO Full
      TEFF           : FDCAN_IR_TEFF_Field;
      --  Read-only. Tx Event FIFO Element Lost
      TEFL           : FDCAN_IR_TEFL_Field;
      --  Read-only. Timestamp Wraparound
      TSW            : FDCAN_IR_TSW_Field;
      --  Read-only. Message RAM Access Failure
      MRAF           : FDCAN_IR_MRAF_Field;
      --  Read-only. Timeout Occurred
      TOO            : FDCAN_IR_TOO_Field;
      --  Read-only. Message stored to Dedicated Rx Buffer
      DRX            : FDCAN_IR_DRX_Field;
      --  unspecified
      Reserved_20_21 : STM32_SVD.UInt2;
      --  Read-only. Error Logging Overflow
      ELO            : FDCAN_IR_ELO_Field;
      --  Read-only. Error Passive
      EP             : FDCAN_IR_EP_Field;
      --  Read-only. Warning Status
      EW             : FDCAN_IR_EW_Field;
      --  Read-only. Bus_Off Status
      BO             : FDCAN_IR_BO_Field;
      --  Read-only. Watchdog Interrupt
      WDI            : FDCAN_IR_WDI_Field;
      --  Read-only. Protocol Error in Arbitration Phase (Nominal Bit Time is
      --  used)
      PEA            : FDCAN_IR_PEA_Field;
      --  Read-only. Protocol Error in Data Phase (Data Bit Time is used)
      PED            : FDCAN_IR_PED_Field;
      --  Read-only. Access to Reserved Address
      ARA            : FDCAN_IR_ARA_Field;
      --  unspecified
      Reserved_30_31 : STM32_SVD.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_IR_Register use record
      RF0N           at 0 range 0 .. 0;
      RF0W           at 0 range 1 .. 1;
      RF0F           at 0 range 2 .. 2;
      RF0L           at 0 range 3 .. 3;
      RF1N           at 0 range 4 .. 4;
      RF1W           at 0 range 5 .. 5;
      RF1F           at 0 range 6 .. 6;
      RF1L           at 0 range 7 .. 7;
      HPM            at 0 range 8 .. 8;
      TC             at 0 range 9 .. 9;
      TCF            at 0 range 10 .. 10;
      TEF            at 0 range 11 .. 11;
      TEFN           at 0 range 12 .. 12;
      TEFW           at 0 range 13 .. 13;
      TEFF           at 0 range 14 .. 14;
      TEFL           at 0 range 15 .. 15;
      TSW            at 0 range 16 .. 16;
      MRAF           at 0 range 17 .. 17;
      TOO            at 0 range 18 .. 18;
      DRX            at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      ELO            at 0 range 22 .. 22;
      EP             at 0 range 23 .. 23;
      EW             at 0 range 24 .. 24;
      BO             at 0 range 25 .. 25;
      WDI            at 0 range 26 .. 26;
      PEA            at 0 range 27 .. 27;
      PED            at 0 range 28 .. 28;
      ARA            at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype FDCAN_IE_RF0NE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_RF0WE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_RF0FE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_RF0LE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_RF1NE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_RF1WE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_RF1FE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_RF1LE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_HPME_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_TCE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_TCFE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_TEFE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_TEFNE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_TEFWE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_TEFFE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_TEFLE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_TSWE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_MRAFE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_TOOE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_DRXE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_BECE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_BEUE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_ELOE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_EPE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_EWE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_BOE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_WDIE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_PEAE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_PEDE_Field is STM32_SVD.Bit;
   subtype FDCAN_IE_ARAE_Field is STM32_SVD.Bit;

   --  FDCAN Interrupt Enable Register
   type FDCAN_IE_Register is record
      --  Read-only. Rx FIFO 0 New Message Enable
      RF0NE          : FDCAN_IE_RF0NE_Field;
      --  Read-only. Rx FIFO 0 Full Enable
      RF0WE          : FDCAN_IE_RF0WE_Field;
      --  Read-only. Rx FIFO 0 Full Enable
      RF0FE          : FDCAN_IE_RF0FE_Field;
      --  Read-only. Rx FIFO 0 Message Lost Enable
      RF0LE          : FDCAN_IE_RF0LE_Field;
      --  Read-only. Rx FIFO 1 New Message Enable
      RF1NE          : FDCAN_IE_RF1NE_Field;
      --  Read-only. Rx FIFO 1 Watermark Reached Enable
      RF1WE          : FDCAN_IE_RF1WE_Field;
      --  Read-only. Rx FIFO 1 Watermark Reached Enable
      RF1FE          : FDCAN_IE_RF1FE_Field;
      --  Read-only. Rx FIFO 1 Message Lost Enable
      RF1LE          : FDCAN_IE_RF1LE_Field;
      --  Read-only. High Priority Message Enable
      HPME           : FDCAN_IE_HPME_Field;
      --  Read-only. Transmission Completed Enable
      TCE            : FDCAN_IE_TCE_Field;
      --  Read-only. Transmission Cancellation Finished Enable
      TCFE           : FDCAN_IE_TCFE_Field;
      --  Read-only. Tx FIFO Empty Enable
      TEFE           : FDCAN_IE_TEFE_Field;
      --  Read-only. Tx Event FIFO New Entry Enable
      TEFNE          : FDCAN_IE_TEFNE_Field;
      --  Read-only. Tx Event FIFO Watermark Reached Enable
      TEFWE          : FDCAN_IE_TEFWE_Field;
      --  Read-only. Tx Event FIFO Full Enable
      TEFFE          : FDCAN_IE_TEFFE_Field;
      --  Read-only. Tx Event FIFO Element Lost Enable
      TEFLE          : FDCAN_IE_TEFLE_Field;
      --  Read-only. Timestamp Wraparound Enable
      TSWE           : FDCAN_IE_TSWE_Field;
      --  Read-only. Message RAM Access Failure Enable
      MRAFE          : FDCAN_IE_MRAFE_Field;
      --  Read-only. Timeout Occurred Enable
      TOOE           : FDCAN_IE_TOOE_Field;
      --  Read-only. Message stored to Dedicated Rx Buffer Enable
      DRXE           : FDCAN_IE_DRXE_Field;
      --  Read-only. Bit Error Corrected Interrupt Enable
      BECE           : FDCAN_IE_BECE_Field;
      --  Read-only. Bit Error Uncorrected Interrupt Enable
      BEUE           : FDCAN_IE_BEUE_Field;
      --  Read-only. Error Logging Overflow Enable
      ELOE           : FDCAN_IE_ELOE_Field;
      --  Read-only. Error Passive Enable
      EPE            : FDCAN_IE_EPE_Field;
      --  Read-only. Warning Status Enable
      EWE            : FDCAN_IE_EWE_Field;
      --  Read-only. Bus_Off Status Enable
      BOE            : FDCAN_IE_BOE_Field;
      --  Read-only. Watchdog Interrupt Enable
      WDIE           : FDCAN_IE_WDIE_Field;
      --  Read-only. Protocol Error in Arbitration Phase Enable
      PEAE           : FDCAN_IE_PEAE_Field;
      --  Read-only. Protocol Error in Data Phase Enable
      PEDE           : FDCAN_IE_PEDE_Field;
      --  Read-only. Access to Reserved Address Enable
      ARAE           : FDCAN_IE_ARAE_Field;
      --  unspecified
      Reserved_30_31 : STM32_SVD.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_IE_Register use record
      RF0NE          at 0 range 0 .. 0;
      RF0WE          at 0 range 1 .. 1;
      RF0FE          at 0 range 2 .. 2;
      RF0LE          at 0 range 3 .. 3;
      RF1NE          at 0 range 4 .. 4;
      RF1WE          at 0 range 5 .. 5;
      RF1FE          at 0 range 6 .. 6;
      RF1LE          at 0 range 7 .. 7;
      HPME           at 0 range 8 .. 8;
      TCE            at 0 range 9 .. 9;
      TCFE           at 0 range 10 .. 10;
      TEFE           at 0 range 11 .. 11;
      TEFNE          at 0 range 12 .. 12;
      TEFWE          at 0 range 13 .. 13;
      TEFFE          at 0 range 14 .. 14;
      TEFLE          at 0 range 15 .. 15;
      TSWE           at 0 range 16 .. 16;
      MRAFE          at 0 range 17 .. 17;
      TOOE           at 0 range 18 .. 18;
      DRXE           at 0 range 19 .. 19;
      BECE           at 0 range 20 .. 20;
      BEUE           at 0 range 21 .. 21;
      ELOE           at 0 range 22 .. 22;
      EPE            at 0 range 23 .. 23;
      EWE            at 0 range 24 .. 24;
      BOE            at 0 range 25 .. 25;
      WDIE           at 0 range 26 .. 26;
      PEAE           at 0 range 27 .. 27;
      PEDE           at 0 range 28 .. 28;
      ARAE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype FDCAN_ILS_RF0NL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_RF0WL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_RF0FL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_RF0LL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_RF1NL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_RF1WL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_RF1FL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_RF1LL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_HPML_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_TCL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_TCFL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_TEFL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_TEFNL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_TEFWL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_TEFFL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_TEFLL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_TSWL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_MRAFL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_TOOL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_DRXL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_BECL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_BEUL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_ELOL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_EPL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_EWL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_BOL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_WDIL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_PEAL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_PEDL_Field is STM32_SVD.Bit;
   subtype FDCAN_ILS_ARAL_Field is STM32_SVD.Bit;

   --  FDCAN Interrupt Line Select Register
   type FDCAN_ILS_Register is record
      --  Read-only. Rx FIFO 0 New Message Interrupt Line
      RF0NL          : FDCAN_ILS_RF0NL_Field;
      --  Read-only. Rx FIFO 0 Watermark Reached Interrupt Line
      RF0WL          : FDCAN_ILS_RF0WL_Field;
      --  Read-only. Rx FIFO 0 Full Interrupt Line
      RF0FL          : FDCAN_ILS_RF0FL_Field;
      --  Read-only. Rx FIFO 0 Message Lost Interrupt Line
      RF0LL          : FDCAN_ILS_RF0LL_Field;
      --  Read-only. Rx FIFO 1 New Message Interrupt Line
      RF1NL          : FDCAN_ILS_RF1NL_Field;
      --  Read-only. Rx FIFO 1 Watermark Reached Interrupt Line
      RF1WL          : FDCAN_ILS_RF1WL_Field;
      --  Read-only. Rx FIFO 1 Full Interrupt Line
      RF1FL          : FDCAN_ILS_RF1FL_Field;
      --  Read-only. Rx FIFO 1 Message Lost Interrupt Line
      RF1LL          : FDCAN_ILS_RF1LL_Field;
      --  Read-only. High Priority Message Interrupt Line
      HPML           : FDCAN_ILS_HPML_Field;
      --  Read-only. Transmission Completed Interrupt Line
      TCL            : FDCAN_ILS_TCL_Field;
      --  Read-only. Transmission Cancellation Finished Interrupt Line
      TCFL           : FDCAN_ILS_TCFL_Field;
      --  Read-only. Tx FIFO Empty Interrupt Line
      TEFL           : FDCAN_ILS_TEFL_Field;
      --  Read-only. Tx Event FIFO New Entry Interrupt Line
      TEFNL          : FDCAN_ILS_TEFNL_Field;
      --  Read-only. Tx Event FIFO Watermark Reached Interrupt Line
      TEFWL          : FDCAN_ILS_TEFWL_Field;
      --  Read-only. Tx Event FIFO Full Interrupt Line
      TEFFL          : FDCAN_ILS_TEFFL_Field;
      --  Read-only. Tx Event FIFO Element Lost Interrupt Line
      TEFLL          : FDCAN_ILS_TEFLL_Field;
      --  Read-only. Timestamp Wraparound Interrupt Line
      TSWL           : FDCAN_ILS_TSWL_Field;
      --  Read-only. Message RAM Access Failure Interrupt Line
      MRAFL          : FDCAN_ILS_MRAFL_Field;
      --  Read-only. Timeout Occurred Interrupt Line
      TOOL           : FDCAN_ILS_TOOL_Field;
      --  Read-only. Message stored to Dedicated Rx Buffer Interrupt Line
      DRXL           : FDCAN_ILS_DRXL_Field;
      --  Read-only. Bit Error Corrected Interrupt Line
      BECL           : FDCAN_ILS_BECL_Field;
      --  Read-only. Bit Error Uncorrected Interrupt Line
      BEUL           : FDCAN_ILS_BEUL_Field;
      --  Read-only. Error Logging Overflow Interrupt Line
      ELOL           : FDCAN_ILS_ELOL_Field;
      --  Read-only. Error Passive Interrupt Line
      EPL            : FDCAN_ILS_EPL_Field;
      --  Read-only. Warning Status Interrupt Line
      EWL            : FDCAN_ILS_EWL_Field;
      --  Read-only. Bus_Off Status
      BOL            : FDCAN_ILS_BOL_Field;
      --  Read-only. Watchdog Interrupt Line
      WDIL           : FDCAN_ILS_WDIL_Field;
      --  Read-only. Protocol Error in Arbitration Phase Line
      PEAL           : FDCAN_ILS_PEAL_Field;
      --  Read-only. Protocol Error in Data Phase Line
      PEDL           : FDCAN_ILS_PEDL_Field;
      --  Read-only. Access to Reserved Address Line
      ARAL           : FDCAN_ILS_ARAL_Field;
      --  unspecified
      Reserved_30_31 : STM32_SVD.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_ILS_Register use record
      RF0NL          at 0 range 0 .. 0;
      RF0WL          at 0 range 1 .. 1;
      RF0FL          at 0 range 2 .. 2;
      RF0LL          at 0 range 3 .. 3;
      RF1NL          at 0 range 4 .. 4;
      RF1WL          at 0 range 5 .. 5;
      RF1FL          at 0 range 6 .. 6;
      RF1LL          at 0 range 7 .. 7;
      HPML           at 0 range 8 .. 8;
      TCL            at 0 range 9 .. 9;
      TCFL           at 0 range 10 .. 10;
      TEFL           at 0 range 11 .. 11;
      TEFNL          at 0 range 12 .. 12;
      TEFWL          at 0 range 13 .. 13;
      TEFFL          at 0 range 14 .. 14;
      TEFLL          at 0 range 15 .. 15;
      TSWL           at 0 range 16 .. 16;
      MRAFL          at 0 range 17 .. 17;
      TOOL           at 0 range 18 .. 18;
      DRXL           at 0 range 19 .. 19;
      BECL           at 0 range 20 .. 20;
      BEUL           at 0 range 21 .. 21;
      ELOL           at 0 range 22 .. 22;
      EPL            at 0 range 23 .. 23;
      EWL            at 0 range 24 .. 24;
      BOL            at 0 range 25 .. 25;
      WDIL           at 0 range 26 .. 26;
      PEAL           at 0 range 27 .. 27;
      PEDL           at 0 range 28 .. 28;
      ARAL           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  FDCAN_ILE_EINT array element
   subtype FDCAN_ILE_EINT_Element is STM32_SVD.Bit;

   --  FDCAN_ILE_EINT array
   type FDCAN_ILE_EINT_Field_Array is array (0 .. 1)
     of FDCAN_ILE_EINT_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for FDCAN_ILE_EINT
   type FDCAN_ILE_EINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EINT as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  EINT as an array
            Arr : FDCAN_ILE_EINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FDCAN_ILE_EINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FDCAN Interrupt Line Enable Register
   type FDCAN_ILE_Register is record
      --  Enable Interrupt Line 0
      EINT          : FDCAN_ILE_EINT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : STM32_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_ILE_Register use record
      EINT          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FDCAN_GFC_RRFE_Field is STM32_SVD.Bit;
   subtype FDCAN_GFC_RRFS_Field is STM32_SVD.Bit;
   subtype FDCAN_GFC_ANFE_Field is STM32_SVD.UInt2;
   subtype FDCAN_GFC_ANFS_Field is STM32_SVD.UInt2;

   --  FDCAN Global Filter Configuration Register
   type FDCAN_GFC_Register is record
      --  Reject Remote Frames Extended
      RRFE          : FDCAN_GFC_RRFE_Field := 16#0#;
      --  Reject Remote Frames Standard
      RRFS          : FDCAN_GFC_RRFS_Field := 16#0#;
      --  Accept Non-matching Frames Extended
      ANFE          : FDCAN_GFC_ANFE_Field := 16#0#;
      --  Accept Non-matching Frames Standard
      ANFS          : FDCAN_GFC_ANFS_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : STM32_SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_GFC_Register use record
      RRFE          at 0 range 0 .. 0;
      RRFS          at 0 range 1 .. 1;
      ANFE          at 0 range 2 .. 3;
      ANFS          at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FDCAN_SIDFC_FLSSA_Field is STM32_SVD.UInt14;
   subtype FDCAN_SIDFC_LSS_Field is STM32_SVD.Byte;

   --  FDCAN Standard ID Filter Configuration Register
   type FDCAN_SIDFC_Register is record
      --  unspecified
      Reserved_0_1   : STM32_SVD.UInt2 := 16#0#;
      --  Filter List Standard Start Address
      FLSSA          : FDCAN_SIDFC_FLSSA_Field := 16#0#;
      --  List Size Standard
      LSS            : FDCAN_SIDFC_LSS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_SIDFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FLSSA          at 0 range 2 .. 15;
      LSS            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FDCAN_XIDFC_FLESA_Field is STM32_SVD.UInt14;
   subtype FDCAN_XIDFC_LSE_Field is STM32_SVD.Byte;

   --  FDCAN Extended ID Filter Configuration Register
   type FDCAN_XIDFC_Register is record
      --  unspecified
      Reserved_0_1   : STM32_SVD.UInt2 := 16#0#;
      --  Filter List Standard Start Address
      FLESA          : FDCAN_XIDFC_FLESA_Field := 16#0#;
      --  List Size Extended
      LSE            : FDCAN_XIDFC_LSE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_XIDFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FLESA          at 0 range 2 .. 15;
      LSE            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FDCAN_XIDAM_EIDM_Field is STM32_SVD.UInt29;

   --  FDCAN Extended ID and Mask Register
   type FDCAN_XIDAM_Register is record
      --  Extended ID Mask
      EIDM           : FDCAN_XIDAM_EIDM_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_XIDAM_Register use record
      EIDM           at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype FDCAN_HPMS_BIDX_Field is STM32_SVD.UInt6;
   subtype FDCAN_HPMS_MSI_Field is STM32_SVD.UInt2;
   subtype FDCAN_HPMS_FIDX_Field is STM32_SVD.UInt7;
   subtype FDCAN_HPMS_FLST_Field is STM32_SVD.Bit;

   --  FDCAN High Priority Message Status Register
   type FDCAN_HPMS_Register is record
      --  Read-only. Buffer Index
      BIDX           : FDCAN_HPMS_BIDX_Field;
      --  Read-only. Message Storage Indicator
      MSI            : FDCAN_HPMS_MSI_Field;
      --  Read-only. Filter Index
      FIDX           : FDCAN_HPMS_FIDX_Field;
      --  Read-only. Filter List
      FLST           : FDCAN_HPMS_FLST_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_HPMS_Register use record
      BIDX           at 0 range 0 .. 5;
      MSI            at 0 range 6 .. 7;
      FIDX           at 0 range 8 .. 14;
      FLST           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FDCAN_NDAT1_ND array element
   subtype FDCAN_NDAT1_ND_Element is STM32_SVD.Bit;

   --  FDCAN_NDAT1_ND array
   type FDCAN_NDAT1_ND_Field_Array is array (0 .. 31)
     of FDCAN_NDAT1_ND_Element
     with Component_Size => 1, Size => 32;

   --  FDCAN New Data 1 Register
   type FDCAN_NDAT1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ND as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  ND as an array
            Arr : FDCAN_NDAT1_ND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for FDCAN_NDAT1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  FDCAN_NDAT2_ND array element
   subtype FDCAN_NDAT2_ND_Element is STM32_SVD.Bit;

   --  FDCAN_NDAT2_ND array
   type FDCAN_NDAT2_ND_Field_Array is array (32 .. 63)
     of FDCAN_NDAT2_ND_Element
     with Component_Size => 1, Size => 32;

   --  FDCAN New Data 2 Register
   type FDCAN_NDAT2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ND as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  ND as an array
            Arr : FDCAN_NDAT2_ND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for FDCAN_NDAT2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype FDCAN_RXF0C_F0SA_Field is STM32_SVD.UInt14;
   subtype FDCAN_RXF0C_F0S_Field is STM32_SVD.Byte;
   subtype FDCAN_RXF0C_F0WM_Field is STM32_SVD.Byte;

   --  FDCAN Rx FIFO 0 Configuration Register
   type FDCAN_RXF0C_Register is record
      --  unspecified
      Reserved_0_1 : STM32_SVD.UInt2 := 16#0#;
      --  Rx FIFO 0 Start Address
      F0SA         : FDCAN_RXF0C_F0SA_Field := 16#0#;
      --  Rx FIFO 0 Size
      F0S          : FDCAN_RXF0C_F0S_Field := 16#0#;
      --  FIFO 0 Watermark
      F0WM         : FDCAN_RXF0C_F0WM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF0C_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      F0SA         at 0 range 2 .. 15;
      F0S          at 0 range 16 .. 23;
      F0WM         at 0 range 24 .. 31;
   end record;

   subtype FDCAN_RXF0S_F0FL_Field is STM32_SVD.UInt7;
   subtype FDCAN_RXF0S_F0G_Field is STM32_SVD.UInt6;
   subtype FDCAN_RXF0S_F0P_Field is STM32_SVD.UInt6;
   subtype FDCAN_RXF0S_F0F_Field is STM32_SVD.Bit;
   subtype FDCAN_RXF0S_RF0L_Field is STM32_SVD.Bit;

   --  FDCAN Rx FIFO 0 Status Register
   type FDCAN_RXF0S_Register is record
      --  Rx FIFO 0 Fill Level
      F0FL           : FDCAN_RXF0S_F0FL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  Rx FIFO 0 Get Index
      F0G            : FDCAN_RXF0S_F0G_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : STM32_SVD.UInt2 := 16#0#;
      --  Rx FIFO 0 Put Index
      F0P            : FDCAN_RXF0S_F0P_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : STM32_SVD.UInt2 := 16#0#;
      --  Rx FIFO 0 Full
      F0F            : FDCAN_RXF0S_F0F_Field := 16#0#;
      --  Rx FIFO 0 Message Lost
      RF0L           : FDCAN_RXF0S_RF0L_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : STM32_SVD.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF0S_Register use record
      F0FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F0G            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F0P            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F0F            at 0 range 24 .. 24;
      RF0L           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FDCAN_RXF0A_FA01_Field is STM32_SVD.UInt6;

   --  CAN Rx FIFO 0 Acknowledge Register
   type FDCAN_RXF0A_Register is record
      --  Rx FIFO 0 Acknowledge Index
      FA01          : FDCAN_RXF0A_FA01_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : STM32_SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF0A_Register use record
      FA01          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FDCAN_RXBC_RBSA_Field is STM32_SVD.UInt14;

   --  FDCAN Rx Buffer Configuration Register
   type FDCAN_RXBC_Register is record
      --  unspecified
      Reserved_0_1   : STM32_SVD.UInt2 := 16#0#;
      --  Rx Buffer Start Address
      RBSA           : FDCAN_RXBC_RBSA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXBC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RBSA           at 0 range 2 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_RXF1C_F1SA_Field is STM32_SVD.UInt14;
   subtype FDCAN_RXF1C_F1S_Field is STM32_SVD.UInt7;
   subtype FDCAN_RXF1C_F1WM_Field is STM32_SVD.UInt7;

   --  FDCAN Rx FIFO 1 Configuration Register
   type FDCAN_RXF1C_Register is record
      --  unspecified
      Reserved_0_1   : STM32_SVD.UInt2 := 16#0#;
      --  Rx FIFO 1 Start Address
      F1SA           : FDCAN_RXF1C_F1SA_Field := 16#0#;
      --  Rx FIFO 1 Size
      F1S            : FDCAN_RXF1C_F1S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  Rx FIFO 1 Watermark
      F1WM           : FDCAN_RXF1C_F1WM_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF1C_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      F1SA           at 0 range 2 .. 15;
      F1S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F1WM           at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype FDCAN_RXF1S_F1FL_Field is STM32_SVD.UInt7;
   subtype FDCAN_RXF1S_F1GI_Field is STM32_SVD.UInt7;
   subtype FDCAN_RXF1S_F1PI_Field is STM32_SVD.UInt7;
   subtype FDCAN_RXF1S_F1F_Field is STM32_SVD.Bit;
   subtype FDCAN_RXF1S_RF1L_Field is STM32_SVD.Bit;
   subtype FDCAN_RXF1S_DMS_Field is STM32_SVD.UInt2;

   --  FDCAN Rx FIFO 1 Status Register
   type FDCAN_RXF1S_Register is record
      --  Rx FIFO 1 Fill Level
      F1FL           : FDCAN_RXF1S_F1FL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  Rx FIFO 1 Get Index
      F1GI           : FDCAN_RXF1S_F1GI_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  Rx FIFO 1 Put Index
      F1PI           : FDCAN_RXF1S_F1PI_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  Rx FIFO 1 Full
      F1F            : FDCAN_RXF1S_F1F_Field := 16#0#;
      --  Rx FIFO 1 Message Lost
      RF1L           : FDCAN_RXF1S_RF1L_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : STM32_SVD.UInt4 := 16#0#;
      --  Debug Message Status
      DMS            : FDCAN_RXF1S_DMS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF1S_Register use record
      F1FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F1GI           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      F1PI           at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F1F            at 0 range 24 .. 24;
      RF1L           at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      DMS            at 0 range 30 .. 31;
   end record;

   subtype FDCAN_RXF1A_F1AI_Field is STM32_SVD.UInt6;

   --  FDCAN Rx FIFO 1 Acknowledge Register
   type FDCAN_RXF1A_Register is record
      --  Rx FIFO 1 Acknowledge Index
      F1AI          : FDCAN_RXF1A_F1AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : STM32_SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF1A_Register use record
      F1AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FDCAN_RXESC_F0DS_Field is STM32_SVD.UInt3;
   subtype FDCAN_RXESC_F1DS_Field is STM32_SVD.UInt3;
   subtype FDCAN_RXESC_RBDS_Field is STM32_SVD.UInt3;

   --  FDCAN Rx Buffer Element Size Configuration Register
   type FDCAN_RXESC_Register is record
      --  Rx FIFO 1 Data Field Size:
      F0DS           : FDCAN_RXESC_F0DS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : STM32_SVD.Bit := 16#0#;
      --  Rx FIFO 0 Data Field Size:
      F1DS           : FDCAN_RXESC_F1DS_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  Rx Buffer Data Field Size:
      RBDS           : FDCAN_RXESC_RBDS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : STM32_SVD.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXESC_Register use record
      F0DS           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      F1DS           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RBDS           at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype FDCAN_TXBC_TBSA_Field is STM32_SVD.UInt14;
   subtype FDCAN_TXBC_NDTB_Field is STM32_SVD.UInt6;
   subtype FDCAN_TXBC_TFQS_Field is STM32_SVD.UInt6;
   subtype FDCAN_TXBC_TFQM_Field is STM32_SVD.Bit;

   --  FDCAN Tx Buffer Configuration Register
   type FDCAN_TXBC_Register is record
      --  unspecified
      Reserved_0_1   : STM32_SVD.UInt2 := 16#0#;
      --  Tx Buffers Start Address
      TBSA           : FDCAN_TXBC_TBSA_Field := 16#0#;
      --  Number of Dedicated Transmit Buffers
      NDTB           : FDCAN_TXBC_NDTB_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : STM32_SVD.UInt2 := 16#0#;
      --  Transmit FIFO/Queue Size
      TFQS           : FDCAN_TXBC_TFQS_Field := 16#0#;
      --  Tx FIFO/Queue Mode
      TFQM           : FDCAN_TXBC_TFQM_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXBC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      TBSA           at 0 range 2 .. 15;
      NDTB           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TFQS           at 0 range 24 .. 29;
      TFQM           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype FDCAN_TXFQS_TFFL_Field is STM32_SVD.UInt6;
   subtype FDCAN_TXFQS_TFGI_Field is STM32_SVD.UInt5;
   subtype FDCAN_TXFQS_TFQPI_Field is STM32_SVD.UInt5;
   subtype FDCAN_TXFQS_TFQF_Field is STM32_SVD.Bit;

   --  FDCAN Tx FIFO/Queue Status Register
   type FDCAN_TXFQS_Register is record
      --  Read-only. Tx FIFO Free Level
      TFFL           : FDCAN_TXFQS_TFFL_Field;
      --  unspecified
      Reserved_6_7   : STM32_SVD.UInt2;
      --  Read-only. TFGI
      TFGI           : FDCAN_TXFQS_TFGI_Field;
      --  unspecified
      Reserved_13_15 : STM32_SVD.UInt3;
      --  Read-only. Tx FIFO/Queue Put Index
      TFQPI          : FDCAN_TXFQS_TFQPI_Field;
      --  Read-only. Tx FIFO/Queue Full
      TFQF           : FDCAN_TXFQS_TFQF_Field;
      --  unspecified
      Reserved_22_31 : STM32_SVD.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXFQS_Register use record
      TFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TFQPI          at 0 range 16 .. 20;
      TFQF           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype FDCAN_TXESC_TBDS_Field is STM32_SVD.UInt3;

   --  FDCAN Tx Buffer Element Size Configuration Register
   type FDCAN_TXESC_Register is record
      --  Tx Buffer Data Field Size:
      TBDS          : FDCAN_TXESC_TBDS_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : STM32_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXESC_Register use record
      TBDS          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FDCAN_TXEFC_EFSA_Field is STM32_SVD.UInt14;
   subtype FDCAN_TXEFC_EFS_Field is STM32_SVD.UInt6;
   subtype FDCAN_TXEFC_EFWM_Field is STM32_SVD.UInt6;

   --  FDCAN Tx Event FIFO Configuration Register
   type FDCAN_TXEFC_Register is record
      --  unspecified
      Reserved_0_1   : STM32_SVD.UInt2 := 16#0#;
      --  Event FIFO Start Address
      EFSA           : FDCAN_TXEFC_EFSA_Field := 16#0#;
      --  Event FIFO Size
      EFS            : FDCAN_TXEFC_EFS_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : STM32_SVD.UInt2 := 16#0#;
      --  Event FIFO Watermark
      EFWM           : FDCAN_TXEFC_EFWM_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : STM32_SVD.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXEFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      EFSA           at 0 range 2 .. 15;
      EFS            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EFWM           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype FDCAN_TXEFS_EFFL_Field is STM32_SVD.UInt6;
   subtype FDCAN_TXEFS_EFGI_Field is STM32_SVD.UInt5;
   subtype FDCAN_TXEFS_EFF_Field is STM32_SVD.Bit;
   subtype FDCAN_TXEFS_TEFL_Field is STM32_SVD.Bit;

   --  FDCAN Tx Event FIFO Status Register
   type FDCAN_TXEFS_Register is record
      --  Event FIFO Fill Level
      EFFL           : FDCAN_TXEFS_EFFL_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32_SVD.UInt2 := 16#0#;
      --  Event FIFO Get Index.
      EFGI           : FDCAN_TXEFS_EFGI_Field := 16#0#;
      --  unspecified
      Reserved_13_23 : STM32_SVD.UInt11 := 16#0#;
      --  Event FIFO Full.
      EFF            : FDCAN_TXEFS_EFF_Field := 16#0#;
      --  Tx Event FIFO Element Lost.
      TEFL           : FDCAN_TXEFS_TEFL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : STM32_SVD.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXEFS_Register use record
      EFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EFGI           at 0 range 8 .. 12;
      Reserved_13_23 at 0 range 13 .. 23;
      EFF            at 0 range 24 .. 24;
      TEFL           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FDCAN_TXEFA_EFAI_Field is STM32_SVD.UInt5;

   --  FDCAN Tx Event FIFO Acknowledge Register
   type FDCAN_TXEFA_Register is record
      --  Event FIFO Acknowledge Index
      EFAI          : FDCAN_TXEFA_EFAI_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : STM32_SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXEFA_Register use record
      EFAI          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype FDCAN_TTTMC_TMSA_Field is STM32_SVD.UInt14;
   subtype FDCAN_TTTMC_TME_Field is STM32_SVD.UInt7;

   --  FDCAN TT Trigger Memory Configuration Register
   type FDCAN_TTTMC_Register is record
      --  unspecified
      Reserved_0_1   : STM32_SVD.UInt2 := 16#0#;
      --  Trigger Memory Start Address
      TMSA           : FDCAN_TTTMC_TMSA_Field := 16#0#;
      --  Trigger Memory Elements
      TME            : FDCAN_TTTMC_TME_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : STM32_SVD.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTTMC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      TMSA           at 0 range 2 .. 15;
      TME            at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FDCAN_TTRMC_RID_Field is STM32_SVD.UInt29;
   subtype FDCAN_TTRMC_XTD_Field is STM32_SVD.Bit;
   subtype FDCAN_TTRMC_RMPS_Field is STM32_SVD.Bit;

   --  FDCAN TT Reference Message Configuration Register
   type FDCAN_TTRMC_Register is record
      --  Reference Identifier.
      RID            : FDCAN_TTRMC_RID_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : STM32_SVD.Bit := 16#0#;
      --  Extended Identifier
      XTD            : FDCAN_TTRMC_XTD_Field := 16#0#;
      --  Reference Message Payload Select
      RMPS           : FDCAN_TTRMC_RMPS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTRMC_Register use record
      RID            at 0 range 0 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      XTD            at 0 range 30 .. 30;
      RMPS           at 0 range 31 .. 31;
   end record;

   subtype FDCAN_TTOCF_OM_Field is STM32_SVD.UInt2;
   subtype FDCAN_TTOCF_GEN_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCF_TM_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCF_LDSDL_Field is STM32_SVD.UInt3;
   subtype FDCAN_TTOCF_IRTO_Field is STM32_SVD.UInt7;
   subtype FDCAN_TTOCF_EECS_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCF_AWL_Field is STM32_SVD.Byte;
   subtype FDCAN_TTOCF_EGTF_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCF_ECC_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCF_EVTP_Field is STM32_SVD.Bit;

   --  FDCAN TT Operation Configuration Register
   type FDCAN_TTOCF_Register is record
      --  Operation Mode
      OM             : FDCAN_TTOCF_OM_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : STM32_SVD.Bit := 16#0#;
      --  Gap Enable
      GEN            : FDCAN_TTOCF_GEN_Field := 16#0#;
      --  Time Master
      TM             : FDCAN_TTOCF_TM_Field := 16#0#;
      --  LD of Synchronization Deviation Limit
      LDSDL          : FDCAN_TTOCF_LDSDL_Field := 16#0#;
      --  Initial Reference Trigger Offset
      IRTO           : FDCAN_TTOCF_IRTO_Field := 16#0#;
      --  Enable External Clock Synchronization
      EECS           : FDCAN_TTOCF_EECS_Field := 16#0#;
      --  Application Watchdog Limit
      AWL            : FDCAN_TTOCF_AWL_Field := 16#0#;
      --  Enable Global Time Filtering
      EGTF           : FDCAN_TTOCF_EGTF_Field := 16#0#;
      --  Enable Clock Calibration
      ECC            : FDCAN_TTOCF_ECC_Field := 16#0#;
      --  Event Trigger Polarity
      EVTP           : FDCAN_TTOCF_EVTP_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : STM32_SVD.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTOCF_Register use record
      OM             at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      GEN            at 0 range 3 .. 3;
      TM             at 0 range 4 .. 4;
      LDSDL          at 0 range 5 .. 7;
      IRTO           at 0 range 8 .. 14;
      EECS           at 0 range 15 .. 15;
      AWL            at 0 range 16 .. 23;
      EGTF           at 0 range 24 .. 24;
      ECC            at 0 range 25 .. 25;
      EVTP           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype FDCAN_TTMLM_CCM_Field is STM32_SVD.UInt6;
   subtype FDCAN_TTMLM_CSS_Field is STM32_SVD.UInt2;
   subtype FDCAN_TTMLM_TXEW_Field is STM32_SVD.UInt4;
   subtype FDCAN_TTMLM_ENTT_Field is STM32_SVD.UInt12;

   --  FDCAN TT Matrix Limits Register
   type FDCAN_TTMLM_Register is record
      --  Cycle Count Max
      CCM            : FDCAN_TTMLM_CCM_Field := 16#0#;
      --  Cycle Start Synchronization
      CSS            : FDCAN_TTMLM_CSS_Field := 16#0#;
      --  Tx Enable Window
      TXEW           : FDCAN_TTMLM_TXEW_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : STM32_SVD.UInt4 := 16#0#;
      --  Expected Number of Tx Triggers
      ENTT           : FDCAN_TTMLM_ENTT_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : STM32_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTMLM_Register use record
      CCM            at 0 range 0 .. 5;
      CSS            at 0 range 6 .. 7;
      TXEW           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      ENTT           at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype FDCAN_TURCF_NCL_Field is STM32_SVD.UInt16;
   subtype FDCAN_TURCF_DC_Field is STM32_SVD.UInt14;
   subtype FDCAN_TURCF_ELT_Field is STM32_SVD.Bit;

   --  FDCAN TUR Configuration Register
   type FDCAN_TURCF_Register is record
      --  Numerator Configuration Low.
      NCL            : FDCAN_TURCF_NCL_Field := 16#0#;
      --  Denominator Configuration.
      DC             : FDCAN_TURCF_DC_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : STM32_SVD.Bit := 16#0#;
      --  Enable Local Time
      ELT            : FDCAN_TURCF_ELT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TURCF_Register use record
      NCL            at 0 range 0 .. 15;
      DC             at 0 range 16 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      ELT            at 0 range 31 .. 31;
   end record;

   subtype FDCAN_TTOCN_SGT_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCN_ECS_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCN_SWP_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCN_SWS_Field is STM32_SVD.UInt2;
   subtype FDCAN_TTOCN_RTIE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCN_TMC_Field is STM32_SVD.UInt2;
   subtype FDCAN_TTOCN_TTIE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCN_GCS_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCN_FGP_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCN_TMG_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCN_NIG_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCN_ESCN_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOCN_LCKC_Field is STM32_SVD.Bit;

   --  FDCAN TT Operation Control Register
   type FDCAN_TTOCN_Register is record
      --  Set Global time
      SGT            : FDCAN_TTOCN_SGT_Field := 16#0#;
      --  External Clock Synchronization
      ECS            : FDCAN_TTOCN_ECS_Field := 16#0#;
      --  Stop Watch Polarity
      SWP            : FDCAN_TTOCN_SWP_Field := 16#0#;
      --  Stop Watch Source.
      SWS            : FDCAN_TTOCN_SWS_Field := 16#0#;
      --  Register Time Mark Interrupt Pulse Enable
      RTIE           : FDCAN_TTOCN_RTIE_Field := 16#0#;
      --  Register Time Mark Compare
      TMC            : FDCAN_TTOCN_TMC_Field := 16#0#;
      --  Trigger Time Mark Interrupt Pulse Enable
      TTIE           : FDCAN_TTOCN_TTIE_Field := 16#0#;
      --  Gap Control Select
      GCS            : FDCAN_TTOCN_GCS_Field := 16#0#;
      --  Finish Gap.
      FGP            : FDCAN_TTOCN_FGP_Field := 16#0#;
      --  Time Mark Gap
      TMG            : FDCAN_TTOCN_TMG_Field := 16#0#;
      --  Next is Gap
      NIG            : FDCAN_TTOCN_NIG_Field := 16#0#;
      --  External Synchronization Control
      ESCN           : FDCAN_TTOCN_ESCN_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : STM32_SVD.Bit := 16#0#;
      --  TT Operation Control Register Locked
      LCKC           : FDCAN_TTOCN_LCKC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTOCN_Register use record
      SGT            at 0 range 0 .. 0;
      ECS            at 0 range 1 .. 1;
      SWP            at 0 range 2 .. 2;
      SWS            at 0 range 3 .. 4;
      RTIE           at 0 range 5 .. 5;
      TMC            at 0 range 6 .. 7;
      TTIE           at 0 range 8 .. 8;
      GCS            at 0 range 9 .. 9;
      FGP            at 0 range 10 .. 10;
      TMG            at 0 range 11 .. 11;
      NIG            at 0 range 12 .. 12;
      ESCN           at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      LCKC           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CAN_TTGTP_NCL_Field is STM32_SVD.UInt16;
   subtype CAN_TTGTP_CTP_Field is STM32_SVD.UInt16;

   --  FDCAN TT Global Time Preset Register
   type CAN_TTGTP_Register is record
      --  Time Preset
      NCL : CAN_TTGTP_NCL_Field := 16#0#;
      --  Cycle Time Target Phase
      CTP : CAN_TTGTP_CTP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_TTGTP_Register use record
      NCL at 0 range 0 .. 15;
      CTP at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TTTMK_TM_Field is STM32_SVD.UInt16;
   subtype FDCAN_TTTMK_TICC_Field is STM32_SVD.UInt7;
   subtype FDCAN_TTTMK_LCKM_Field is STM32_SVD.Bit;

   --  FDCAN TT Time Mark Register
   type FDCAN_TTTMK_Register is record
      --  Time Mark
      TM             : FDCAN_TTTMK_TM_Field := 16#0#;
      --  Time Mark Cycle Code
      TICC           : FDCAN_TTTMK_TICC_Field := 16#0#;
      --  unspecified
      Reserved_23_30 : STM32_SVD.Byte := 16#0#;
      --  TT Time Mark Register Locked
      LCKM           : FDCAN_TTTMK_LCKM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTTMK_Register use record
      TM             at 0 range 0 .. 15;
      TICC           at 0 range 16 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      LCKM           at 0 range 31 .. 31;
   end record;

   subtype FDCAN_TTIR_SBC_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_SMC_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_CSM_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_SOG_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_RTMI_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_TTMI_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_SWE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_GTW_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_GTD_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_GTE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_TXU_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_TXO_Field is STM32_SVD.Bit;
   --  FDCAN_TTIR_SE array element
   subtype FDCAN_TTIR_SE_Element is STM32_SVD.Bit;

   --  FDCAN_TTIR_SE array
   type FDCAN_TTIR_SE_Field_Array is array (1 .. 2) of FDCAN_TTIR_SE_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for FDCAN_TTIR_SE
   type FDCAN_TTIR_SE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SE as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  SE as an array
            Arr : FDCAN_TTIR_SE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FDCAN_TTIR_SE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype FDCAN_TTIR_ELC_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_IWTG_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_WT_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_AW_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIR_CER_Field is STM32_SVD.Bit;

   --  FDCAN TT Interrupt Register
   type FDCAN_TTIR_Register is record
      --  Start of Basic Cycle
      SBC            : FDCAN_TTIR_SBC_Field := 16#0#;
      --  Start of Matrix Cycle
      SMC            : FDCAN_TTIR_SMC_Field := 16#0#;
      --  Change of Synchronization Mode
      CSM            : FDCAN_TTIR_CSM_Field := 16#0#;
      --  Start of Gap
      SOG            : FDCAN_TTIR_SOG_Field := 16#0#;
      --  Register Time Mark Interrupt.
      RTMI           : FDCAN_TTIR_RTMI_Field := 16#0#;
      --  Trigger Time Mark Event Internal
      TTMI           : FDCAN_TTIR_TTMI_Field := 16#0#;
      --  Stop Watch Event
      SWE            : FDCAN_TTIR_SWE_Field := 16#0#;
      --  Global Time Wrap
      GTW            : FDCAN_TTIR_GTW_Field := 16#0#;
      --  Global Time Discontinuity
      GTD            : FDCAN_TTIR_GTD_Field := 16#0#;
      --  Global Time Error
      GTE            : FDCAN_TTIR_GTE_Field := 16#0#;
      --  Tx Count Underflow
      TXU            : FDCAN_TTIR_TXU_Field := 16#0#;
      --  Tx Count Overflow
      TXO            : FDCAN_TTIR_TXO_Field := 16#0#;
      --  Scheduling Error 1
      SE             : FDCAN_TTIR_SE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Error Level Changed.
      ELC            : FDCAN_TTIR_ELC_Field := 16#0#;
      --  Initialization Watch Trigger
      IWTG           : FDCAN_TTIR_IWTG_Field := 16#0#;
      --  Watch Trigger
      WT             : FDCAN_TTIR_WT_Field := 16#0#;
      --  Application Watchdog
      AW             : FDCAN_TTIR_AW_Field := 16#0#;
      --  Configuration Error
      CER            : FDCAN_TTIR_CER_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : STM32_SVD.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTIR_Register use record
      SBC            at 0 range 0 .. 0;
      SMC            at 0 range 1 .. 1;
      CSM            at 0 range 2 .. 2;
      SOG            at 0 range 3 .. 3;
      RTMI           at 0 range 4 .. 4;
      TTMI           at 0 range 5 .. 5;
      SWE            at 0 range 6 .. 6;
      GTW            at 0 range 7 .. 7;
      GTD            at 0 range 8 .. 8;
      GTE            at 0 range 9 .. 9;
      TXU            at 0 range 10 .. 10;
      TXO            at 0 range 11 .. 11;
      SE             at 0 range 12 .. 13;
      ELC            at 0 range 14 .. 14;
      IWTG           at 0 range 15 .. 15;
      WT             at 0 range 16 .. 16;
      AW             at 0 range 17 .. 17;
      CER            at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FDCAN_TTIE_SBCE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_SMCE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_CSME_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_SOGE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_RTMIE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_TTMIE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_SWEE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_GTWE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_GTDE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_GTEE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_TXUE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_TXOE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_SE1E_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_SE2E_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_ELCE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_IWTGE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_WTE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_AWE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTIE_CERE_Field is STM32_SVD.Bit;

   --  FDCAN TT Interrupt Enable Register
   type FDCAN_TTIE_Register is record
      --  Start of Basic Cycle Interrupt Enable
      SBCE           : FDCAN_TTIE_SBCE_Field := 16#0#;
      --  Start of Matrix Cycle Interrupt Enable
      SMCE           : FDCAN_TTIE_SMCE_Field := 16#0#;
      --  Change of Synchronization Mode Interrupt Enable
      CSME           : FDCAN_TTIE_CSME_Field := 16#0#;
      --  Start of Gap Interrupt Enable
      SOGE           : FDCAN_TTIE_SOGE_Field := 16#0#;
      --  Register Time Mark Interrupt Enable
      RTMIE          : FDCAN_TTIE_RTMIE_Field := 16#0#;
      --  Trigger Time Mark Event Internal Interrupt Enable
      TTMIE          : FDCAN_TTIE_TTMIE_Field := 16#0#;
      --  Stop Watch Event Interrupt Enable
      SWEE           : FDCAN_TTIE_SWEE_Field := 16#0#;
      --  Global Time Wrap Interrupt Enable
      GTWE           : FDCAN_TTIE_GTWE_Field := 16#0#;
      --  Global Time Discontinuity Interrupt Enable
      GTDE           : FDCAN_TTIE_GTDE_Field := 16#0#;
      --  Global Time Error Interrupt Enable
      GTEE           : FDCAN_TTIE_GTEE_Field := 16#0#;
      --  Tx Count Underflow Interrupt Enable
      TXUE           : FDCAN_TTIE_TXUE_Field := 16#0#;
      --  Tx Count Overflow Interrupt Enable
      TXOE           : FDCAN_TTIE_TXOE_Field := 16#0#;
      --  Scheduling Error 1 Interrupt Enable
      SE1E           : FDCAN_TTIE_SE1E_Field := 16#0#;
      --  Scheduling Error 2 Interrupt Enable
      SE2E           : FDCAN_TTIE_SE2E_Field := 16#0#;
      --  Change Error Level Interrupt Enable
      ELCE           : FDCAN_TTIE_ELCE_Field := 16#0#;
      --  Initialization Watch Trigger Interrupt Enable
      IWTGE          : FDCAN_TTIE_IWTGE_Field := 16#0#;
      --  Watch Trigger Interrupt Enable
      WTE            : FDCAN_TTIE_WTE_Field := 16#0#;
      --  Application Watchdog Interrupt Enable
      AWE            : FDCAN_TTIE_AWE_Field := 16#0#;
      --  Configuration Error Interrupt Enable
      CERE           : FDCAN_TTIE_CERE_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : STM32_SVD.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTIE_Register use record
      SBCE           at 0 range 0 .. 0;
      SMCE           at 0 range 1 .. 1;
      CSME           at 0 range 2 .. 2;
      SOGE           at 0 range 3 .. 3;
      RTMIE          at 0 range 4 .. 4;
      TTMIE          at 0 range 5 .. 5;
      SWEE           at 0 range 6 .. 6;
      GTWE           at 0 range 7 .. 7;
      GTDE           at 0 range 8 .. 8;
      GTEE           at 0 range 9 .. 9;
      TXUE           at 0 range 10 .. 10;
      TXOE           at 0 range 11 .. 11;
      SE1E           at 0 range 12 .. 12;
      SE2E           at 0 range 13 .. 13;
      ELCE           at 0 range 14 .. 14;
      IWTGE          at 0 range 15 .. 15;
      WTE            at 0 range 16 .. 16;
      AWE            at 0 range 17 .. 17;
      CERE           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FDCAN_TTILS_SBCL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_SMCL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_CSML_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_SOGL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_RTMIL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_TTMIL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_SWEL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_GTWL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_GTDL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_GTEL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_TXUL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_TXOL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_SE1L_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_SE2L_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_ELCL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_IWTGL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_WTL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_AWL_Field is STM32_SVD.Bit;
   subtype FDCAN_TTILS_CERL_Field is STM32_SVD.Bit;

   --  FDCAN TT Interrupt Line Select Register
   type FDCAN_TTILS_Register is record
      --  Start of Basic Cycle Interrupt Line
      SBCL           : FDCAN_TTILS_SBCL_Field := 16#0#;
      --  Start of Matrix Cycle Interrupt Line
      SMCL           : FDCAN_TTILS_SMCL_Field := 16#0#;
      --  Change of Synchronization Mode Interrupt Line
      CSML           : FDCAN_TTILS_CSML_Field := 16#0#;
      --  Start of Gap Interrupt Line
      SOGL           : FDCAN_TTILS_SOGL_Field := 16#0#;
      --  Register Time Mark Interrupt Line
      RTMIL          : FDCAN_TTILS_RTMIL_Field := 16#0#;
      --  Trigger Time Mark Event Internal Interrupt Line
      TTMIL          : FDCAN_TTILS_TTMIL_Field := 16#0#;
      --  Stop Watch Event Interrupt Line
      SWEL           : FDCAN_TTILS_SWEL_Field := 16#0#;
      --  Global Time Wrap Interrupt Line
      GTWL           : FDCAN_TTILS_GTWL_Field := 16#0#;
      --  Global Time Discontinuity Interrupt Line
      GTDL           : FDCAN_TTILS_GTDL_Field := 16#0#;
      --  Global Time Error Interrupt Line
      GTEL           : FDCAN_TTILS_GTEL_Field := 16#0#;
      --  Tx Count Underflow Interrupt Line
      TXUL           : FDCAN_TTILS_TXUL_Field := 16#0#;
      --  Tx Count Overflow Interrupt Line
      TXOL           : FDCAN_TTILS_TXOL_Field := 16#0#;
      --  Scheduling Error 1 Interrupt Line
      SE1L           : FDCAN_TTILS_SE1L_Field := 16#0#;
      --  Scheduling Error 2 Interrupt Line
      SE2L           : FDCAN_TTILS_SE2L_Field := 16#0#;
      --  Change Error Level Interrupt Line
      ELCL           : FDCAN_TTILS_ELCL_Field := 16#0#;
      --  Initialization Watch Trigger Interrupt Line
      IWTGL          : FDCAN_TTILS_IWTGL_Field := 16#0#;
      --  Watch Trigger Interrupt Line
      WTL            : FDCAN_TTILS_WTL_Field := 16#0#;
      --  Application Watchdog Interrupt Line
      AWL            : FDCAN_TTILS_AWL_Field := 16#0#;
      --  Configuration Error Interrupt Line
      CERL           : FDCAN_TTILS_CERL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : STM32_SVD.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTILS_Register use record
      SBCL           at 0 range 0 .. 0;
      SMCL           at 0 range 1 .. 1;
      CSML           at 0 range 2 .. 2;
      SOGL           at 0 range 3 .. 3;
      RTMIL          at 0 range 4 .. 4;
      TTMIL          at 0 range 5 .. 5;
      SWEL           at 0 range 6 .. 6;
      GTWL           at 0 range 7 .. 7;
      GTDL           at 0 range 8 .. 8;
      GTEL           at 0 range 9 .. 9;
      TXUL           at 0 range 10 .. 10;
      TXOL           at 0 range 11 .. 11;
      SE1L           at 0 range 12 .. 12;
      SE2L           at 0 range 13 .. 13;
      ELCL           at 0 range 14 .. 14;
      IWTGL          at 0 range 15 .. 15;
      WTL            at 0 range 16 .. 16;
      AWL            at 0 range 17 .. 17;
      CERL           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FDCAN_TTOST_EL_Field is STM32_SVD.UInt2;
   subtype FDCAN_TTOST_MS_Field is STM32_SVD.UInt2;
   subtype FDCAN_TTOST_SYS_Field is STM32_SVD.UInt2;
   subtype FDCAN_TTOST_GTP_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOST_QCS_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOST_RTO_Field is STM32_SVD.Byte;
   subtype FDCAN_TTOST_WGTD_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOST_GFI_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOST_TMP_Field is STM32_SVD.UInt3;
   subtype FDCAN_TTOST_GSI_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOST_WFE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOST_AWE_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOST_WECS_Field is STM32_SVD.Bit;
   subtype FDCAN_TTOST_SPL_Field is STM32_SVD.Bit;

   --  FDCAN TT Operation Status Register
   type FDCAN_TTOST_Register is record
      --  Error Level
      EL             : FDCAN_TTOST_EL_Field := 16#0#;
      --  Master State.
      MS             : FDCAN_TTOST_MS_Field := 16#0#;
      --  Synchronization State
      SYS            : FDCAN_TTOST_SYS_Field := 16#0#;
      --  Quality of Global Time Phase
      GTP            : FDCAN_TTOST_GTP_Field := 16#0#;
      --  Quality of Clock Speed
      QCS            : FDCAN_TTOST_QCS_Field := 16#0#;
      --  Reference Trigger Offset
      RTO            : FDCAN_TTOST_RTO_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : STM32_SVD.UInt6 := 16#0#;
      --  Wait for Global Time Discontinuity
      WGTD           : FDCAN_TTOST_WGTD_Field := 16#0#;
      --  Gap Finished Indicator.
      GFI            : FDCAN_TTOST_GFI_Field := 16#0#;
      --  Time Master Priority
      TMP            : FDCAN_TTOST_TMP_Field := 16#0#;
      --  Gap Started Indicator.
      GSI            : FDCAN_TTOST_GSI_Field := 16#0#;
      --  Wait for Event
      WFE            : FDCAN_TTOST_WFE_Field := 16#0#;
      --  Application Watchdog Event
      AWE            : FDCAN_TTOST_AWE_Field := 16#0#;
      --  Wait for External Clock Synchronization
      WECS           : FDCAN_TTOST_WECS_Field := 16#0#;
      --  Schedule Phase Lock
      SPL            : FDCAN_TTOST_SPL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTOST_Register use record
      EL             at 0 range 0 .. 1;
      MS             at 0 range 2 .. 3;
      SYS            at 0 range 4 .. 5;
      GTP            at 0 range 6 .. 6;
      QCS            at 0 range 7 .. 7;
      RTO            at 0 range 8 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      WGTD           at 0 range 22 .. 22;
      GFI            at 0 range 23 .. 23;
      TMP            at 0 range 24 .. 26;
      GSI            at 0 range 27 .. 27;
      WFE            at 0 range 28 .. 28;
      AWE            at 0 range 29 .. 29;
      WECS           at 0 range 30 .. 30;
      SPL            at 0 range 31 .. 31;
   end record;

   subtype FDCAN_TURNA_NAV_Field is STM32_SVD.UInt18;

   --  FDCAN TUR Numerator Actual Register
   type FDCAN_TURNA_Register is record
      --  Read-only. Numerator Actual Value
      NAV            : FDCAN_TURNA_NAV_Field;
      --  unspecified
      Reserved_18_31 : STM32_SVD.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TURNA_Register use record
      NAV            at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype FDCAN_TTLGT_LT_Field is STM32_SVD.UInt16;
   subtype FDCAN_TTLGT_GT_Field is STM32_SVD.UInt16;

   --  FDCAN TT Local and Global Time Register
   type FDCAN_TTLGT_Register is record
      --  Read-only. Local Time
      LT : FDCAN_TTLGT_LT_Field;
      --  Read-only. Global Time
      GT : FDCAN_TTLGT_GT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTLGT_Register use record
      LT at 0 range 0 .. 15;
      GT at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TTCTC_CT_Field is STM32_SVD.UInt16;
   subtype FDCAN_TTCTC_CC_Field is STM32_SVD.UInt6;

   --  FDCAN TT Cycle Time and Count Register
   type FDCAN_TTCTC_Register is record
      --  Read-only. Cycle Time
      CT             : FDCAN_TTCTC_CT_Field;
      --  Read-only. Cycle Count
      CC             : FDCAN_TTCTC_CC_Field;
      --  unspecified
      Reserved_22_31 : STM32_SVD.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTCTC_Register use record
      CT             at 0 range 0 .. 15;
      CC             at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype FDCAN_TTCPT_CT_Field is STM32_SVD.UInt6;
   subtype FDCAN_TTCPT_SWV_Field is STM32_SVD.UInt16;

   --  FDCAN TT Capture Time Register
   type FDCAN_TTCPT_Register is record
      --  Read-only. Cycle Count Value
      CT            : FDCAN_TTCPT_CT_Field;
      --  unspecified
      Reserved_6_15 : STM32_SVD.UInt10;
      --  Read-only. Stop Watch Value
      SWV           : FDCAN_TTCPT_SWV_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTCPT_Register use record
      CT            at 0 range 0 .. 5;
      Reserved_6_15 at 0 range 6 .. 15;
      SWV           at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TTCSM_CSM_Field is STM32_SVD.UInt16;

   --  FDCAN TT Cycle Sync Mark Register
   type FDCAN_TTCSM_Register is record
      --  Read-only. Cycle Sync Mark
      CSM            : FDCAN_TTCSM_CSM_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTCSM_Register use record
      CSM            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TTTS_SWTDEL_Field is STM32_SVD.UInt2;
   subtype FDCAN_TTTS_EVTSEL_Field is STM32_SVD.UInt2;

   --  FDCAN TT Trigger Select Register
   type FDCAN_TTTS_Register is record
      --  Stop watch trigger input selection
      SWTDEL        : FDCAN_TTTS_SWTDEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : STM32_SVD.UInt2 := 16#0#;
      --  Event trigger input selection
      EVTSEL        : FDCAN_TTTS_EVTSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : STM32_SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTTS_Register use record
      SWTDEL        at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      EVTSEL        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FDCAN1
   type FDCAN_Peripheral is record
      --  FDCAN Core Release Register
      FDCAN_CREL   : aliased FDCAN_CREL_Register;
      --  FDCAN Core Release Register
      FDCAN_ENDN   : aliased STM32_SVD.UInt32;
      --  FDCAN Data Bit Timing and Prescaler Register
      FDCAN_DBTP   : aliased FDCAN_DBTP_Register;
      --  FDCAN Test Register
      FDCAN_TEST   : aliased FDCAN_TEST_Register;
      --  FDCAN RAM Watchdog Register
      FDCAN_RWD    : aliased FDCAN_RWD_Register;
      --  FDCAN CC Control Register
      FDCAN_CCCR   : aliased FDCAN_CCCR_Register;
      --  FDCAN Nominal Bit Timing and Prescaler Register
      FDCAN_NBTP   : aliased FDCAN_NBTP_Register;
      --  FDCAN Timestamp Counter Configuration Register
      FDCAN_TSCC   : aliased FDCAN_TSCC_Register;
      --  FDCAN Timestamp Counter Value Register
      FDCAN_TSCV   : aliased FDCAN_TSCV_Register;
      --  FDCAN Timeout Counter Configuration Register
      FDCAN_TOCC   : aliased FDCAN_TOCC_Register;
      --  FDCAN Timeout Counter Value Register
      FDCAN_TOCV   : aliased FDCAN_TOCV_Register;
      --  FDCAN Error Counter Register
      FDCAN_ECR    : aliased FDCAN_ECR_Register;
      --  FDCAN Protocol Status Register
      FDCAN_PSR    : aliased FDCAN_PSR_Register;
      --  FDCAN Transmitter Delay Compensation Register
      FDCAN_TDCR   : aliased FDCAN_TDCR_Register;
      --  FDCAN Interrupt Register
      FDCAN_IR     : aliased FDCAN_IR_Register;
      --  FDCAN Interrupt Enable Register
      FDCAN_IE     : aliased FDCAN_IE_Register;
      --  FDCAN Interrupt Line Select Register
      FDCAN_ILS    : aliased FDCAN_ILS_Register;
      --  FDCAN Interrupt Line Enable Register
      FDCAN_ILE    : aliased FDCAN_ILE_Register;
      --  FDCAN Global Filter Configuration Register
      FDCAN_GFC    : aliased FDCAN_GFC_Register;
      --  FDCAN Standard ID Filter Configuration Register
      FDCAN_SIDFC  : aliased FDCAN_SIDFC_Register;
      --  FDCAN Extended ID Filter Configuration Register
      FDCAN_XIDFC  : aliased FDCAN_XIDFC_Register;
      --  FDCAN Extended ID and Mask Register
      FDCAN_XIDAM  : aliased FDCAN_XIDAM_Register;
      --  FDCAN High Priority Message Status Register
      FDCAN_HPMS   : aliased FDCAN_HPMS_Register;
      --  FDCAN New Data 1 Register
      FDCAN_NDAT1  : aliased FDCAN_NDAT1_Register;
      --  FDCAN New Data 2 Register
      FDCAN_NDAT2  : aliased FDCAN_NDAT2_Register;
      --  FDCAN Rx FIFO 0 Configuration Register
      FDCAN_RXF0C  : aliased FDCAN_RXF0C_Register;
      --  FDCAN Rx FIFO 0 Status Register
      FDCAN_RXF0S  : aliased FDCAN_RXF0S_Register;
      --  CAN Rx FIFO 0 Acknowledge Register
      FDCAN_RXF0A  : aliased FDCAN_RXF0A_Register;
      --  FDCAN Rx Buffer Configuration Register
      FDCAN_RXBC   : aliased FDCAN_RXBC_Register;
      --  FDCAN Rx FIFO 1 Configuration Register
      FDCAN_RXF1C  : aliased FDCAN_RXF1C_Register;
      --  FDCAN Rx FIFO 1 Status Register
      FDCAN_RXF1S  : aliased FDCAN_RXF1S_Register;
      --  FDCAN Rx FIFO 1 Acknowledge Register
      FDCAN_RXF1A  : aliased FDCAN_RXF1A_Register;
      --  FDCAN Rx Buffer Element Size Configuration Register
      FDCAN_RXESC  : aliased FDCAN_RXESC_Register;
      --  FDCAN Tx Buffer Configuration Register
      FDCAN_TXBC   : aliased FDCAN_TXBC_Register;
      --  FDCAN Tx FIFO/Queue Status Register
      FDCAN_TXFQS  : aliased FDCAN_TXFQS_Register;
      --  FDCAN Tx Buffer Element Size Configuration Register
      FDCAN_TXESC  : aliased FDCAN_TXESC_Register;
      --  FDCAN Tx Buffer Request Pending Register
      FDCAN_TXBRP  : aliased STM32_SVD.UInt32;
      --  FDCAN Tx Buffer Add Request Register
      FDCAN_TXBAR  : aliased STM32_SVD.UInt32;
      --  FDCAN Tx Buffer Cancellation Request Register
      FDCAN_TXBCR  : aliased STM32_SVD.UInt32;
      --  FDCAN Tx Buffer Transmission Occurred Register
      FDCAN_TXBTO  : aliased STM32_SVD.UInt32;
      --  FDCAN Tx Buffer Cancellation Finished Register
      FDCAN_TXBCF  : aliased STM32_SVD.UInt32;
      --  FDCAN Tx Buffer Transmission Interrupt Enable Register
      FDCAN_TXBTIE : aliased STM32_SVD.UInt32;
      --  FDCAN Tx Buffer Cancellation Finished Interrupt Enable Register
      FDCAN_TXBCIE : aliased STM32_SVD.UInt32;
      --  FDCAN Tx Event FIFO Configuration Register
      FDCAN_TXEFC  : aliased FDCAN_TXEFC_Register;
      --  FDCAN Tx Event FIFO Status Register
      FDCAN_TXEFS  : aliased FDCAN_TXEFS_Register;
      --  FDCAN Tx Event FIFO Acknowledge Register
      FDCAN_TXEFA  : aliased FDCAN_TXEFA_Register;
      --  FDCAN TT Trigger Memory Configuration Register
      FDCAN_TTTMC  : aliased FDCAN_TTTMC_Register;
      --  FDCAN TT Reference Message Configuration Register
      FDCAN_TTRMC  : aliased FDCAN_TTRMC_Register;
      --  FDCAN TT Operation Configuration Register
      FDCAN_TTOCF  : aliased FDCAN_TTOCF_Register;
      --  FDCAN TT Matrix Limits Register
      FDCAN_TTMLM  : aliased FDCAN_TTMLM_Register;
      --  FDCAN TUR Configuration Register
      FDCAN_TURCF  : aliased FDCAN_TURCF_Register;
      --  FDCAN TT Operation Control Register
      FDCAN_TTOCN  : aliased FDCAN_TTOCN_Register;
      --  FDCAN TT Global Time Preset Register
      CAN_TTGTP    : aliased CAN_TTGTP_Register;
      --  FDCAN TT Time Mark Register
      FDCAN_TTTMK  : aliased FDCAN_TTTMK_Register;
      --  FDCAN TT Interrupt Register
      FDCAN_TTIR   : aliased FDCAN_TTIR_Register;
      --  FDCAN TT Interrupt Enable Register
      FDCAN_TTIE   : aliased FDCAN_TTIE_Register;
      --  FDCAN TT Interrupt Line Select Register
      FDCAN_TTILS  : aliased FDCAN_TTILS_Register;
      --  FDCAN TT Operation Status Register
      FDCAN_TTOST  : aliased FDCAN_TTOST_Register;
      --  FDCAN TUR Numerator Actual Register
      FDCAN_TURNA  : aliased FDCAN_TURNA_Register;
      --  FDCAN TT Local and Global Time Register
      FDCAN_TTLGT  : aliased FDCAN_TTLGT_Register;
      --  FDCAN TT Cycle Time and Count Register
      FDCAN_TTCTC  : aliased FDCAN_TTCTC_Register;
      --  FDCAN TT Capture Time Register
      FDCAN_TTCPT  : aliased FDCAN_TTCPT_Register;
      --  FDCAN TT Cycle Sync Mark Register
      FDCAN_TTCSM  : aliased FDCAN_TTCSM_Register;
      --  FDCAN TT Trigger Select Register
      FDCAN_TTTS   : aliased FDCAN_TTTS_Register;
   end record
     with Volatile;

   for FDCAN_Peripheral use record
      FDCAN_CREL   at 16#0# range 0 .. 31;
      FDCAN_ENDN   at 16#4# range 0 .. 31;
      FDCAN_DBTP   at 16#C# range 0 .. 31;
      FDCAN_TEST   at 16#10# range 0 .. 31;
      FDCAN_RWD    at 16#14# range 0 .. 31;
      FDCAN_CCCR   at 16#18# range 0 .. 31;
      FDCAN_NBTP   at 16#1C# range 0 .. 31;
      FDCAN_TSCC   at 16#20# range 0 .. 31;
      FDCAN_TSCV   at 16#24# range 0 .. 31;
      FDCAN_TOCC   at 16#28# range 0 .. 31;
      FDCAN_TOCV   at 16#2C# range 0 .. 31;
      FDCAN_ECR    at 16#40# range 0 .. 31;
      FDCAN_PSR    at 16#44# range 0 .. 31;
      FDCAN_TDCR   at 16#48# range 0 .. 31;
      FDCAN_IR     at 16#50# range 0 .. 31;
      FDCAN_IE     at 16#54# range 0 .. 31;
      FDCAN_ILS    at 16#58# range 0 .. 31;
      FDCAN_ILE    at 16#5C# range 0 .. 31;
      FDCAN_GFC    at 16#80# range 0 .. 31;
      FDCAN_SIDFC  at 16#84# range 0 .. 31;
      FDCAN_XIDFC  at 16#88# range 0 .. 31;
      FDCAN_XIDAM  at 16#90# range 0 .. 31;
      FDCAN_HPMS   at 16#94# range 0 .. 31;
      FDCAN_NDAT1  at 16#98# range 0 .. 31;
      FDCAN_NDAT2  at 16#9C# range 0 .. 31;
      FDCAN_RXF0C  at 16#A0# range 0 .. 31;
      FDCAN_RXF0S  at 16#A4# range 0 .. 31;
      FDCAN_RXF0A  at 16#A8# range 0 .. 31;
      FDCAN_RXBC   at 16#AC# range 0 .. 31;
      FDCAN_RXF1C  at 16#B0# range 0 .. 31;
      FDCAN_RXF1S  at 16#B4# range 0 .. 31;
      FDCAN_RXF1A  at 16#B8# range 0 .. 31;
      FDCAN_RXESC  at 16#BC# range 0 .. 31;
      FDCAN_TXBC   at 16#C0# range 0 .. 31;
      FDCAN_TXFQS  at 16#C4# range 0 .. 31;
      FDCAN_TXESC  at 16#C8# range 0 .. 31;
      FDCAN_TXBRP  at 16#CC# range 0 .. 31;
      FDCAN_TXBAR  at 16#D0# range 0 .. 31;
      FDCAN_TXBCR  at 16#D4# range 0 .. 31;
      FDCAN_TXBTO  at 16#D8# range 0 .. 31;
      FDCAN_TXBCF  at 16#DC# range 0 .. 31;
      FDCAN_TXBTIE at 16#E0# range 0 .. 31;
      FDCAN_TXBCIE at 16#E4# range 0 .. 31;
      FDCAN_TXEFC  at 16#F0# range 0 .. 31;
      FDCAN_TXEFS  at 16#F4# range 0 .. 31;
      FDCAN_TXEFA  at 16#F8# range 0 .. 31;
      FDCAN_TTTMC  at 16#100# range 0 .. 31;
      FDCAN_TTRMC  at 16#104# range 0 .. 31;
      FDCAN_TTOCF  at 16#108# range 0 .. 31;
      FDCAN_TTMLM  at 16#10C# range 0 .. 31;
      FDCAN_TURCF  at 16#110# range 0 .. 31;
      FDCAN_TTOCN  at 16#114# range 0 .. 31;
      CAN_TTGTP    at 16#118# range 0 .. 31;
      FDCAN_TTTMK  at 16#11C# range 0 .. 31;
      FDCAN_TTIR   at 16#120# range 0 .. 31;
      FDCAN_TTIE   at 16#124# range 0 .. 31;
      FDCAN_TTILS  at 16#128# range 0 .. 31;
      FDCAN_TTOST  at 16#12C# range 0 .. 31;
      FDCAN_TURNA  at 16#130# range 0 .. 31;
      FDCAN_TTLGT  at 16#134# range 0 .. 31;
      FDCAN_TTCTC  at 16#138# range 0 .. 31;
      FDCAN_TTCPT  at 16#13C# range 0 .. 31;
      FDCAN_TTCSM  at 16#140# range 0 .. 31;
      FDCAN_TTTS   at 16#300# range 0 .. 31;
   end record;

   --  FDCAN1
   CAN_CCU_Periph : aliased FDCAN_Peripheral
     with Import, Address => System'To_Address (16#4000A800#);

   --  FDCAN1
   CAN_Msg_RAM_Periph : aliased FDCAN_Peripheral
     with Import, Address => System'To_Address (16#4000AC00#);

   --  FDCAN1
   FDCAN1_Periph : aliased FDCAN_Peripheral
     with Import, Address => System'To_Address (16#4000A000#);

   --  FDCAN1
   FDCAN2_Periph : aliased FDCAN_Peripheral
     with Import, Address => System'To_Address (16#4000A400#);

end STM32_SVD.FDCAN;
