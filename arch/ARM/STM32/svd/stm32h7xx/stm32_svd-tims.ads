--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.TIMs is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_CEN_Field is STM32_SVD.Bit;
   subtype CR1_UDIS_Field is STM32_SVD.Bit;
   subtype CR1_URS_Field is STM32_SVD.Bit;
   subtype CR1_OPM_Field is STM32_SVD.Bit;
   subtype CR1_ARPE_Field is STM32_SVD.Bit;
   subtype CR1_CKD_Field is STM32_SVD.UInt2;
   subtype CR1_UIFREMAP_Field is STM32_SVD.Bit;

   --  control register 1
   type CR1_Register is record
      --  Counter enable
      CEN            : CR1_CEN_Field := 16#0#;
      --  Update disable
      UDIS           : CR1_UDIS_Field := 16#0#;
      --  Update request source
      URS            : CR1_URS_Field := 16#0#;
      --  One-pulse mode
      OPM            : CR1_OPM_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : STM32_SVD.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : CR1_ARPE_Field := 16#0#;
      --  Clock division
      CKD            : CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : STM32_SVD.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : CR1_UIFREMAP_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : STM32_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CR2_CCPC_Field is STM32_SVD.Bit;
   subtype CR2_CCUS_Field is STM32_SVD.Bit;
   subtype CR2_CCDS_Field is STM32_SVD.Bit;
   subtype CR2_MMS_Field is STM32_SVD.UInt3;
   subtype CR2_TI1S_Field is STM32_SVD.Bit;
   subtype CR2_OIS1_Field is STM32_SVD.Bit;
   subtype CR2_OIS1N_Field is STM32_SVD.Bit;
   subtype CR2_OIS2_Field is STM32_SVD.Bit;

   --  control register 2
   type CR2_Register is record
      --  Capture/compare preloaded control
      CCPC           : CR2_CCPC_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : STM32_SVD.Bit := 16#0#;
      --  Capture/compare control update selection
      CCUS           : CR2_CCUS_Field := 16#0#;
      --  Capture/compare DMA selection
      CCDS           : CR2_CCDS_Field := 16#0#;
      --  Master mode selection
      MMS            : CR2_MMS_Field := 16#0#;
      --  TI1 selection
      TI1S           : CR2_TI1S_Field := 16#0#;
      --  Output Idle state 1
      OIS1           : CR2_OIS1_Field := 16#0#;
      --  Output Idle state 1
      OIS1N          : CR2_OIS1N_Field := 16#0#;
      --  Output Idle state 2
      OIS2           : CR2_OIS2_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : STM32_SVD.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      MMS            at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      OIS2           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SMCR_SMS_Field is STM32_SVD.UInt3;
   subtype SMCR_TS_2_0_Field is STM32_SVD.UInt3;
   subtype SMCR_MSM_Field is STM32_SVD.Bit;
   subtype SMCR_SMS_3_Field is STM32_SVD.Bit;
   subtype SMCR_TS_4_3_Field is STM32_SVD.UInt2;

   --  slave mode control register
   type SMCR_Register is record
      --  Slave mode selection
      SMS            : SMCR_SMS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : STM32_SVD.Bit := 16#0#;
      --  Trigger selection
      TS_2_0         : SMCR_TS_2_0_Field := 16#0#;
      --  Master/Slave mode
      MSM            : SMCR_MSM_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : STM32_SVD.Byte := 16#0#;
      --  Slave mode selection bit 3
      SMS_3          : SMCR_SMS_3_Field := 16#0#;
      --  unspecified
      Reserved_17_19 : STM32_SVD.UInt3 := 16#0#;
      --  Trigger selection - bit 4:3
      TS_4_3         : SMCR_TS_4_3_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : STM32_SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMCR_Register use record
      SMS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TS_2_0         at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      SMS_3          at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      TS_4_3         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype DIER_UIE_Field is STM32_SVD.Bit;
   subtype DIER_CC1IE_Field is STM32_SVD.Bit;
   subtype DIER_CC2IE_Field is STM32_SVD.Bit;
   subtype DIER_COMIE_Field is STM32_SVD.Bit;
   subtype DIER_TIE_Field is STM32_SVD.Bit;
   subtype DIER_BIE_Field is STM32_SVD.Bit;
   subtype DIER_UDE_Field is STM32_SVD.Bit;
   subtype DIER_CC1DE_Field is STM32_SVD.Bit;
   subtype DIER_CC2DE_Field is STM32_SVD.Bit;
   subtype DIER_COMDE_Field is STM32_SVD.Bit;
   subtype DIER_TDE_Field is STM32_SVD.Bit;

   --  DMA/Interrupt enable register
   type DIER_Register is record
      --  Update interrupt enable
      UIE            : DIER_UIE_Field := 16#0#;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : DIER_CC1IE_Field := 16#0#;
      --  Capture/Compare 2 interrupt enable
      CC2IE          : DIER_CC2IE_Field := 16#0#;
      --  unspecified
      Reserved_3_4   : STM32_SVD.UInt2 := 16#0#;
      --  COM interrupt enable
      COMIE          : DIER_COMIE_Field := 16#0#;
      --  Trigger interrupt enable
      TIE            : DIER_TIE_Field := 16#0#;
      --  Break interrupt enable
      BIE            : DIER_BIE_Field := 16#0#;
      --  Update DMA request enable
      UDE            : DIER_UDE_Field := 16#0#;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : DIER_CC1DE_Field := 16#0#;
      --  Capture/Compare 2 DMA request enable
      CC2DE          : DIER_CC2DE_Field := 16#0#;
      --  unspecified
      Reserved_11_12 : STM32_SVD.UInt2 := 16#0#;
      --  COM DMA request enable
      COMDE          : DIER_COMDE_Field := 16#0#;
      --  Trigger DMA request enable
      TDE            : DIER_TDE_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      CC2IE          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      COMIE          at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      CC2DE          at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      COMDE          at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SR_UIF_Field is STM32_SVD.Bit;
   subtype SR_CC1IF_Field is STM32_SVD.Bit;
   subtype SR_CC2IF_Field is STM32_SVD.Bit;
   subtype SR_COMIF_Field is STM32_SVD.Bit;
   subtype SR_TIF_Field is STM32_SVD.Bit;
   subtype SR_BIF_Field is STM32_SVD.Bit;
   subtype SR_CC1OF_Field is STM32_SVD.Bit;
   subtype SR_CC2OF_Field is STM32_SVD.Bit;

   --  status register
   type SR_Register is record
      --  Update interrupt flag
      UIF            : SR_UIF_Field := 16#0#;
      --  Capture/compare 1 interrupt flag
      CC1IF          : SR_CC1IF_Field := 16#0#;
      --  Capture/Compare 2 interrupt flag
      CC2IF          : SR_CC2IF_Field := 16#0#;
      --  unspecified
      Reserved_3_4   : STM32_SVD.UInt2 := 16#0#;
      --  COM interrupt flag
      COMIF          : SR_COMIF_Field := 16#0#;
      --  Trigger interrupt flag
      TIF            : SR_TIF_Field := 16#0#;
      --  Break interrupt flag
      BIF            : SR_BIF_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : STM32_SVD.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : SR_CC1OF_Field := 16#0#;
      --  Capture/compare 2 overcapture flag
      CC2OF          : SR_CC2OF_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : STM32_SVD.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype EGR_UG_Field is STM32_SVD.Bit;
   subtype EGR_CC1G_Field is STM32_SVD.Bit;
   subtype EGR_CC2G_Field is STM32_SVD.Bit;
   subtype EGR_COMG_Field is STM32_SVD.Bit;
   subtype EGR_TG_Field is STM32_SVD.Bit;
   subtype EGR_BG_Field is STM32_SVD.Bit;

   --  event generation register
   type EGR_Register is record
      --  Write-only. Update generation
      UG            : EGR_UG_Field := 16#0#;
      --  Write-only. Capture/compare 1 generation
      CC1G          : EGR_CC1G_Field := 16#0#;
      --  Write-only. Capture/compare 2 generation
      CC2G          : EGR_CC2G_Field := 16#0#;
      --  unspecified
      Reserved_3_4  : STM32_SVD.UInt2 := 16#0#;
      --  Write-only. Capture/Compare control update generation
      COMG          : EGR_COMG_Field := 16#0#;
      --  Write-only. Trigger generation
      TG            : EGR_TG_Field := 16#0#;
      --  Write-only. Break generation
      BG            : EGR_BG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      COMG          at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CCMR1_Output_CC1S_Field is STM32_SVD.UInt2;
   subtype CCMR1_Output_OC1FE_Field is STM32_SVD.Bit;
   subtype CCMR1_Output_OC1PE_Field is STM32_SVD.Bit;
   subtype CCMR1_Output_OC1M_Field is STM32_SVD.UInt3;
   subtype CCMR1_Output_CC2S_Field is STM32_SVD.UInt2;
   subtype CCMR1_Output_OC2FE_Field is STM32_SVD.Bit;
   subtype CCMR1_Output_OC2PE_Field is STM32_SVD.Bit;
   subtype CCMR1_Output_OC2M_Field is STM32_SVD.UInt3;
   subtype CCMR1_Output_OC1M_3_Field is STM32_SVD.Bit;
   subtype CCMR1_Output_OC2M_3_Field is STM32_SVD.Bit;

   --  capture/compare mode register (output mode)
   type CCMR1_Output_Register is record
      --  Capture/Compare 1 selection
      CC1S           : CCMR1_Output_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable
      OC1FE          : CCMR1_Output_OC1FE_Field := 16#0#;
      --  Output Compare 1 preload enable
      OC1PE          : CCMR1_Output_OC1PE_Field := 16#0#;
      --  Output Compare 1 mode
      OC1M           : CCMR1_Output_OC1M_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  Capture/Compare 2 selection
      CC2S           : CCMR1_Output_CC2S_Field := 16#0#;
      --  Output Compare 2 fast enable
      OC2FE          : CCMR1_Output_OC2FE_Field := 16#0#;
      --  Output Compare 2 preload enable
      OC2PE          : CCMR1_Output_OC2PE_Field := 16#0#;
      --  Output Compare 2 mode
      OC2M           : CCMR1_Output_OC2M_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  Output Compare 1 mode bit 3
      OC1M_3         : CCMR1_Output_OC1M_3_Field := 16#0#;
      --  unspecified
      Reserved_17_23 : STM32_SVD.UInt7 := 16#0#;
      --  Output Compare 2 mode bit 3
      OC2M_3         : CCMR1_Output_OC2M_3_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : STM32_SVD.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CC2S           at 0 range 8 .. 9;
      OC2FE          at 0 range 10 .. 10;
      OC2PE          at 0 range 11 .. 11;
      OC2M           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      OC1M_3         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC2M_3         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CCMR1_Input_CC1S_Field is STM32_SVD.UInt2;
   subtype CCMR1_Input_IC1PSC_Field is STM32_SVD.UInt2;
   subtype CCMR1_Input_IC1F_Field is STM32_SVD.UInt4;
   subtype CCMR1_Input_CC2S_Field is STM32_SVD.UInt2;
   subtype CCMR1_Input_IC2PSC_Field is STM32_SVD.UInt2;
   subtype CCMR1_Input_IC2F_Field is STM32_SVD.UInt4;

   --  capture/compare mode register 1 (input mode)
   type CCMR1_Input_Register is record
      --  Capture/Compare 1 selection
      CC1S           : CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : CCMR1_Input_IC1F_Field := 16#0#;
      --  Capture/Compare 2 selection
      CC2S           : CCMR1_Input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : CCMR1_Input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : CCMR1_Input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCER_CC1E_Field is STM32_SVD.Bit;
   subtype CCER_CC1P_Field is STM32_SVD.Bit;
   subtype CCER_CC1NE_Field is STM32_SVD.Bit;
   subtype CCER_CC1NP_Field is STM32_SVD.Bit;
   subtype CCER_CC2E_Field is STM32_SVD.Bit;
   subtype CCER_CC2P_Field is STM32_SVD.Bit;
   subtype CCER_CC2NP_Field is STM32_SVD.Bit;

   --  capture/compare enable register
   type CCER_Register is record
      --  Capture/Compare 1 output enable
      CC1E          : CCER_CC1E_Field := 16#0#;
      --  Capture/Compare 1 output Polarity
      CC1P          : CCER_CC1P_Field := 16#0#;
      --  Capture/Compare 1 complementary output enable
      CC1NE         : CCER_CC1NE_Field := 16#0#;
      --  Capture/Compare 1 output Polarity
      CC1NP         : CCER_CC1NP_Field := 16#0#;
      --  Capture/Compare 2 output enable
      CC2E          : CCER_CC2E_Field := 16#0#;
      --  Capture/Compare 2 output Polarity
      CC2P          : CCER_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_6_6  : STM32_SVD.Bit := 16#0#;
      --  Capture/Compare 2 output Polarity
      CC2NP         : CCER_CC2NP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      CC1NE         at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      CC2E          at 0 range 4 .. 4;
      CC2P          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      CC2NP         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CNT_CNT_Field is STM32_SVD.UInt16;
   subtype CNT_UIFCPY_Field is STM32_SVD.Bit;

   --  counter
   type CNT_Register is record
      --  counter value
      CNT            : CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : STM32_SVD.UInt15 := 16#0#;
      --  Read-only. UIF copy
      UIFCPY         : CNT_UIFCPY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype PSC_PSC_Field is STM32_SVD.UInt16;

   --  prescaler
   type PSC_Register is record
      --  Prescaler value
      PSC            : PSC_PSC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSC_Register use record
      PSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ARR_ARR_Field is STM32_SVD.UInt16;

   --  auto-reload register
   type ARR_Register is record
      --  Auto-reload value
      ARR            : ARR_ARR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RCR_REP_Field is STM32_SVD.Byte;

   --  repetition counter register
   type RCR_Register is record
      --  Repetition counter value
      REP           : RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CCR1_CCR1_Field is STM32_SVD.UInt16;

   --  capture/compare register 1
   type CCR1_Register is record
      --  Capture/Compare 1 value
      CCR1           : CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCR2_CCR2_Field is STM32_SVD.UInt16;

   --  capture/compare register 2
   type CCR2_Register is record
      --  Capture/Compare 2 value
      CCR2           : CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BDTR_DTG_Field is STM32_SVD.Byte;
   subtype BDTR_LOCK_Field is STM32_SVD.UInt2;
   subtype BDTR_OSSI_Field is STM32_SVD.Bit;
   subtype BDTR_OSSR_Field is STM32_SVD.Bit;
   subtype BDTR_BKE_Field is STM32_SVD.Bit;
   subtype BDTR_BKP_Field is STM32_SVD.Bit;
   subtype BDTR_AOE_Field is STM32_SVD.Bit;
   subtype BDTR_MOE_Field is STM32_SVD.Bit;
   subtype BDTR_BKF_Field is STM32_SVD.UInt4;

   --  break and dead-time register
   type BDTR_Register is record
      --  Dead-time generator setup
      DTG            : BDTR_DTG_Field := 16#0#;
      --  Lock configuration
      LOCK           : BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for Idle mode
      OSSI           : BDTR_OSSI_Field := 16#0#;
      --  Off-state selection for Run mode
      OSSR           : BDTR_OSSR_Field := 16#0#;
      --  Break enable
      BKE            : BDTR_BKE_Field := 16#0#;
      --  Break polarity
      BKP            : BDTR_BKP_Field := 16#0#;
      --  Automatic output enable
      AOE            : BDTR_AOE_Field := 16#0#;
      --  Main output enable
      MOE            : BDTR_MOE_Field := 16#0#;
      --  Break filter
      BKF            : BDTR_BKF_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : STM32_SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDTR_Register use record
      DTG            at 0 range 0 .. 7;
      LOCK           at 0 range 8 .. 9;
      OSSI           at 0 range 10 .. 10;
      OSSR           at 0 range 11 .. 11;
      BKE            at 0 range 12 .. 12;
      BKP            at 0 range 13 .. 13;
      AOE            at 0 range 14 .. 14;
      MOE            at 0 range 15 .. 15;
      BKF            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype DCR_DBA_Field is STM32_SVD.UInt5;
   subtype DCR_DBL_Field is STM32_SVD.UInt5;

   --  DMA control register
   type DCR_Register is record
      --  DMA base address
      DBA            : DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : STM32_SVD.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : STM32_SVD.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DMAR_DMAB_Field is STM32_SVD.UInt16;

   --  DMA address for full transfer
   type DMAR_Register is record
      --  DMA register for burst accesses
      DMAB           : DMAR_DMAB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAR_Register use record
      DMAB           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AF1_BKINE_Field is STM32_SVD.Bit;
   subtype AF1_BKCMP1E_Field is STM32_SVD.Bit;
   subtype AF1_BKCMP2E_Field is STM32_SVD.Bit;
   subtype AF1_BKDF1BK0E_Field is STM32_SVD.Bit;
   subtype AF1_BKINP_Field is STM32_SVD.Bit;
   subtype AF1_BKCMP1P_Field is STM32_SVD.Bit;
   subtype AF1_BKCMP2P_Field is STM32_SVD.Bit;

   --  TIM15 alternate fdfsdm1_breakon register 1
   type AF1_Register is record
      --  BRK BKIN input enable
      BKINE          : AF1_BKINE_Field := 16#0#;
      --  BRK COMP1 enable
      BKCMP1E        : AF1_BKCMP1E_Field := 16#0#;
      --  BRK COMP2 enable
      BKCMP2E        : AF1_BKCMP2E_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : STM32_SVD.UInt5 := 16#0#;
      --  BRK dfsdm1_break[0] enable
      BKDF1BK0E      : AF1_BKDF1BK0E_Field := 16#0#;
      --  BRK BKIN input polarity
      BKINP          : AF1_BKINP_Field := 16#0#;
      --  BRK COMP1 input polarity
      BKCMP1P        : AF1_BKCMP1P_Field := 16#0#;
      --  BRK COMP2 input polarity
      BKCMP2P        : AF1_BKCMP2P_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : STM32_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BKDF1BK0E      at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype TISEL_TI1SEL_Field is STM32_SVD.UInt4;
   subtype TISEL_TI2SEL_Field is STM32_SVD.UInt4;

   --  TIM15 input selection register
   type TISEL_Register is record
      --  selects TI1[0] to TI1[15] input
      TI1SEL         : TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : STM32_SVD.UInt4 := 16#0#;
      --  selects TI2[0] to TI2[15] input
      TI2SEL         : TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : STM32_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  control register 2
   type CR2_Register_1 is record
      --  Capture/compare preloaded control
      CCPC           : CR2_CCPC_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : STM32_SVD.Bit := 16#0#;
      --  Capture/compare control update selection
      CCUS           : CR2_CCUS_Field := 16#0#;
      --  Capture/compare DMA selection
      CCDS           : CR2_CCDS_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : STM32_SVD.UInt4 := 16#0#;
      --  Output Idle state 1
      OIS1           : CR2_OIS1_Field := 16#0#;
      --  Output Idle state 1
      OIS1N          : CR2_OIS1N_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : STM32_SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register_1 use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  DMA/Interrupt enable register
   type DIER_Register_1 is record
      --  Update interrupt enable
      UIE            : DIER_UIE_Field := 16#0#;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : DIER_CC1IE_Field := 16#0#;
      --  unspecified
      Reserved_2_4   : STM32_SVD.UInt3 := 16#0#;
      --  COM interrupt enable
      COMIE          : DIER_COMIE_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : STM32_SVD.Bit := 16#0#;
      --  Break interrupt enable
      BIE            : DIER_BIE_Field := 16#0#;
      --  Update DMA request enable
      UDE            : DIER_UDE_Field := 16#0#;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : DIER_CC1DE_Field := 16#0#;
      --  unspecified
      Reserved_10_12 : STM32_SVD.UInt3 := 16#0#;
      --  COM DMA request enable
      COMDE          : DIER_COMDE_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : STM32_SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIER_Register_1 use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIE          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      COMDE          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  status register
   type SR_Register_1 is record
      --  Update interrupt flag
      UIF            : SR_UIF_Field := 16#0#;
      --  Capture/compare 1 interrupt flag
      CC1IF          : SR_CC1IF_Field := 16#0#;
      --  unspecified
      Reserved_2_4   : STM32_SVD.UInt3 := 16#0#;
      --  COM interrupt flag
      COMIF          : SR_COMIF_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : STM32_SVD.Bit := 16#0#;
      --  Break interrupt flag
      BIF            : SR_BIF_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : STM32_SVD.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : SR_CC1OF_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : STM32_SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register_1 use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIF          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  event generation register
   type EGR_Register_1 is record
      --  Write-only. Update generation
      UG            : EGR_UG_Field := 16#0#;
      --  Write-only. Capture/compare 1 generation
      CC1G          : EGR_CC1G_Field := 16#0#;
      --  unspecified
      Reserved_2_4  : STM32_SVD.UInt3 := 16#0#;
      --  Write-only. Capture/Compare control update generation
      COMG          : EGR_COMG_Field := 16#0#;
      --  unspecified
      Reserved_6_6  : STM32_SVD.Bit := 16#0#;
      --  Write-only. Break generation
      BG            : EGR_BG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EGR_Register_1 use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      COMG          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  capture/compare mode register (output mode)
   type CCMR1_Output_Register_1 is record
      --  Capture/Compare 1 selection
      CC1S           : CCMR1_Output_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable
      OC1FE          : CCMR1_Output_OC1FE_Field := 16#0#;
      --  Output Compare 1 preload enable
      OC1PE          : CCMR1_Output_OC1PE_Field := 16#0#;
      --  Output Compare 1 mode
      OC1M           : CCMR1_Output_OC1M_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : STM32_SVD.UInt9 := 16#0#;
      --  Output Compare 1 mode
      OC1M_3         : CCMR1_Output_OC1M_3_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : STM32_SVD.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Output_Register_1 use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OC1M_3         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  capture/compare mode register 1 (input mode)
   type CCMR1_Input_Register_1 is record
      --  Capture/Compare 1 selection
      CC1S          : CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC        : CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F          : CCMR1_Input_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Input_Register_1 use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  capture/compare enable register
   type CCER_Register_1 is record
      --  Capture/Compare 1 output enable
      CC1E          : CCER_CC1E_Field := 16#0#;
      --  Capture/Compare 1 output Polarity
      CC1P          : CCER_CC1P_Field := 16#0#;
      --  Capture/Compare 1 complementary output enable
      CC1NE         : CCER_CC1NE_Field := 16#0#;
      --  Capture/Compare 1 output Polarity
      CC1NP         : CCER_CC1NP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : STM32_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCER_Register_1 use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      CC1NE         at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TIM16_AF1_BKINE_Field is STM32_SVD.Bit;
   subtype TIM16_AF1_BKCMP1E_Field is STM32_SVD.Bit;
   subtype TIM16_AF1_BKCMP2E_Field is STM32_SVD.Bit;
   subtype TIM16_AF1_BKDFBK1E_Field is STM32_SVD.Bit;
   subtype TIM16_AF1_BKINP_Field is STM32_SVD.Bit;
   subtype TIM16_AF1_BKCMP1P_Field is STM32_SVD.Bit;
   subtype TIM16_AF1_BKCMP2P_Field is STM32_SVD.Bit;

   --  TIM16 alternate function register 1
   type TIM16_AF1_Register is record
      --  BRK BKIN input enable
      BKINE          : TIM16_AF1_BKINE_Field := 16#0#;
      --  BRK COMP1 enable
      BKCMP1E        : TIM16_AF1_BKCMP1E_Field := 16#0#;
      --  BRK COMP2 enable
      BKCMP2E        : TIM16_AF1_BKCMP2E_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : STM32_SVD.UInt5 := 16#0#;
      --  BRK dfsdm1_break[1] enable
      BKDFBK1E       : TIM16_AF1_BKDFBK1E_Field := 16#0#;
      --  BRK BKIN input polarity
      BKINP          : TIM16_AF1_BKINP_Field := 16#0#;
      --  BRK COMP1 input polarity
      BKCMP1P        : TIM16_AF1_BKCMP1P_Field := 16#0#;
      --  BRK COMP2 input polarity
      BKCMP2P        : TIM16_AF1_BKCMP2P_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : STM32_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BKDFBK1E       at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype TIM16_TISEL_TI1SEL_Field is STM32_SVD.UInt4;

   --  TIM16 input selection register
   type TIM16_TISEL_Register is record
      --  selects TI1[0] to TI1[15] input
      TI1SEL        : TIM16_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : STM32_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_TISEL_Register use record
      TI1SEL        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TIM17_AF1_BKINE_Field is STM32_SVD.Bit;
   subtype TIM17_AF1_BKCMP1E_Field is STM32_SVD.Bit;
   subtype TIM17_AF1_BKCMP2E_Field is STM32_SVD.Bit;
   subtype TIM17_AF1_BKDFBK1E_Field is STM32_SVD.Bit;
   subtype TIM17_AF1_BKINP_Field is STM32_SVD.Bit;
   subtype TIM17_AF1_BKCMP1P_Field is STM32_SVD.Bit;
   subtype TIM17_AF1_BKCMP2P_Field is STM32_SVD.Bit;

   --  TIM17 alternate function register 1
   type TIM17_AF1_Register is record
      --  BRK BKIN input enable
      BKINE          : TIM17_AF1_BKINE_Field := 16#0#;
      --  BRK COMP1 enable
      BKCMP1E        : TIM17_AF1_BKCMP1E_Field := 16#0#;
      --  BRK COMP2 enable
      BKCMP2E        : TIM17_AF1_BKCMP2E_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : STM32_SVD.UInt5 := 16#0#;
      --  BRK dfsdm1_break[1] enable
      BKDFBK1E       : TIM17_AF1_BKDFBK1E_Field := 16#0#;
      --  BRK BKIN input polarity
      BKINP          : TIM17_AF1_BKINP_Field := 16#0#;
      --  BRK COMP1 input polarity
      BKCMP1P        : TIM17_AF1_BKCMP1P_Field := 16#0#;
      --  BRK COMP2 input polarity
      BKCMP2P        : TIM17_AF1_BKCMP2P_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : STM32_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BKDFBK1E       at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype TIM17_TISEL_TI1SEL_Field is STM32_SVD.UInt4;

   --  TIM17 input selection register
   type TIM17_TISEL_Register is record
      --  selects TI1[0] to TI1[15] input
      TI1SEL        : TIM17_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : STM32_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_TISEL_Register use record
      TI1SEL        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM15_Disc is
     (
      Output,
      Input);

   --  General purpose timers
   type TIM15_Peripheral
     (Discriminent : TIM15_Disc := Output)
   is record
      --  control register 1
      CR1          : aliased CR1_Register;
      --  control register 2
      CR2          : aliased CR2_Register;
      --  slave mode control register
      SMCR         : aliased SMCR_Register;
      --  DMA/Interrupt enable register
      DIER         : aliased DIER_Register;
      --  status register
      SR           : aliased SR_Register;
      --  event generation register
      EGR          : aliased EGR_Register;
      --  capture/compare enable register
      CCER         : aliased CCER_Register;
      --  counter
      CNT          : aliased CNT_Register;
      --  prescaler
      PSC          : aliased PSC_Register;
      --  auto-reload register
      ARR          : aliased ARR_Register;
      --  repetition counter register
      RCR          : aliased RCR_Register;
      --  capture/compare register 1
      CCR1         : aliased CCR1_Register;
      --  capture/compare register 2
      CCR2         : aliased CCR2_Register;
      --  break and dead-time register
      BDTR         : aliased BDTR_Register;
      --  DMA control register
      DCR          : aliased DCR_Register;
      --  DMA address for full transfer
      DMAR         : aliased DMAR_Register;
      --  TIM15 alternate fdfsdm1_breakon register 1
      AF1          : aliased AF1_Register;
      --  TIM15 input selection register
      TISEL        : aliased TISEL_Register;
      case Discriminent is
         when Output =>
            --  capture/compare mode register (output mode)
            CCMR1_Output : aliased CCMR1_Output_Register;
         when Input =>
            --  capture/compare mode register 1 (input mode)
            CCMR1_Input : aliased CCMR1_Input_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM15_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      SMCR         at 16#8# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      RCR          at 16#30# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      CCR2         at 16#38# range 0 .. 31;
      BDTR         at 16#44# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      AF1          at 16#60# range 0 .. 31;
      TISEL        at 16#68# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM15_Periph : aliased TIM15_Peripheral
     with Import, Address => System'To_Address (16#40014000#);

   type TIM16_Disc is
     (
      Output,
      Input);

   --  General-purpose-timers
   type TIM16_Peripheral
     (Discriminent : TIM16_Disc := Output)
   is record
      --  control register 1
      CR1          : aliased CR1_Register;
      --  control register 2
      CR2          : aliased CR2_Register_1;
      --  DMA/Interrupt enable register
      DIER         : aliased DIER_Register_1;
      --  status register
      SR           : aliased SR_Register_1;
      --  event generation register
      EGR          : aliased EGR_Register_1;
      --  capture/compare enable register
      CCER         : aliased CCER_Register_1;
      --  counter
      CNT          : aliased CNT_Register;
      --  prescaler
      PSC          : aliased PSC_Register;
      --  auto-reload register
      ARR          : aliased ARR_Register;
      --  repetition counter register
      RCR          : aliased RCR_Register;
      --  capture/compare register 1
      CCR1         : aliased CCR1_Register;
      --  break and dead-time register
      BDTR         : aliased BDTR_Register;
      --  DMA control register
      DCR          : aliased DCR_Register;
      --  DMA address for full transfer
      DMAR         : aliased DMAR_Register;
      --  TIM16 alternate function register 1
      TIM16_AF1    : aliased TIM16_AF1_Register;
      --  TIM16 input selection register
      TIM16_TISEL  : aliased TIM16_TISEL_Register;
      case Discriminent is
         when Output =>
            --  capture/compare mode register (output mode)
            CCMR1_Output : aliased CCMR1_Output_Register_1;
         when Input =>
            --  capture/compare mode register 1 (input mode)
            CCMR1_Input : aliased CCMR1_Input_Register_1;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM16_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      RCR          at 16#30# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      BDTR         at 16#44# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      TIM16_AF1    at 16#60# range 0 .. 31;
      TIM16_TISEL  at 16#68# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
   end record;

   --  General-purpose-timers
   TIM16_Periph : aliased TIM16_Peripheral
     with Import, Address => System'To_Address (16#40014400#);

   type TIM17_Disc is
     (
      Output,
      Input);

   --  General-purpose-timers
   type TIM17_Peripheral
     (Discriminent : TIM17_Disc := Output)
   is record
      --  control register 1
      CR1          : aliased CR1_Register;
      --  control register 2
      CR2          : aliased CR2_Register_1;
      --  DMA/Interrupt enable register
      DIER         : aliased DIER_Register_1;
      --  status register
      SR           : aliased SR_Register_1;
      --  event generation register
      EGR          : aliased EGR_Register_1;
      --  capture/compare enable register
      CCER         : aliased CCER_Register_1;
      --  counter
      CNT          : aliased CNT_Register;
      --  prescaler
      PSC          : aliased PSC_Register;
      --  auto-reload register
      ARR          : aliased ARR_Register;
      --  repetition counter register
      RCR          : aliased RCR_Register;
      --  capture/compare register 1
      CCR1         : aliased CCR1_Register;
      --  break and dead-time register
      BDTR         : aliased BDTR_Register;
      --  DMA control register
      DCR          : aliased DCR_Register;
      --  DMA address for full transfer
      DMAR         : aliased DMAR_Register;
      --  TIM17 alternate function register 1
      TIM17_AF1    : aliased TIM17_AF1_Register;
      --  TIM17 input selection register
      TIM17_TISEL  : aliased TIM17_TISEL_Register;
      case Discriminent is
         when Output =>
            --  capture/compare mode register (output mode)
            CCMR1_Output : aliased CCMR1_Output_Register_1;
         when Input =>
            --  capture/compare mode register 1 (input mode)
            CCMR1_Input : aliased CCMR1_Input_Register_1;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM17_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      RCR          at 16#30# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      BDTR         at 16#44# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      TIM17_AF1    at 16#60# range 0 .. 31;
      TIM17_TISEL  at 16#68# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
   end record;

   --  General-purpose-timers
   TIM17_Periph : aliased TIM17_Peripheral
     with Import, Address => System'To_Address (16#40014800#);

end STM32_SVD.TIMs;
