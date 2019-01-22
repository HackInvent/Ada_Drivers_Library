--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.COMP1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype COMP1_SR_C1VAL_Field is STM32_SVD.Bit;
   subtype COMP1_SR_C2VAL_Field is STM32_SVD.Bit;
   subtype COMP1_SR_C1IF_Field is STM32_SVD.Bit;
   subtype COMP1_SR_C2IF_Field is STM32_SVD.Bit;

   --  Comparator status register
   type COMP1_SR_Register is record
      --  Read-only. COMP channel 1 output status bit
      C1VAL          : COMP1_SR_C1VAL_Field;
      --  Read-only. COMP channel 2 output status bit
      C2VAL          : COMP1_SR_C2VAL_Field;
      --  unspecified
      Reserved_2_15  : STM32_SVD.UInt14;
      --  Read-only. COMP channel 1 Interrupt Flag
      C1IF           : COMP1_SR_C1IF_Field;
      --  Read-only. COMP channel 2 Interrupt Flag
      C2IF           : COMP1_SR_C2IF_Field;
      --  unspecified
      Reserved_18_31 : STM32_SVD.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_SR_Register use record
      C1VAL          at 0 range 0 .. 0;
      C2VAL          at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      C1IF           at 0 range 16 .. 16;
      C2IF           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype COMP1_ICFR_CC1IF_Field is STM32_SVD.Bit;
   subtype COMP1_ICFR_CC2IF_Field is STM32_SVD.Bit;

   --  Comparator interrupt clear flag register
   type COMP1_ICFR_Register is record
      --  unspecified
      Reserved_0_15  : STM32_SVD.UInt16 := 16#0#;
      --  Write-only. Clear COMP channel 1 Interrupt Flag
      CC1IF          : COMP1_ICFR_CC1IF_Field := 16#0#;
      --  Write-only. Clear COMP channel 2 Interrupt Flag
      CC2IF          : COMP1_ICFR_CC2IF_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : STM32_SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_ICFR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      CC1IF          at 0 range 16 .. 16;
      CC2IF          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype COMP1_OR_AFOP_Field is STM32_SVD.UInt11;
   subtype COMP1_OR_OR_Field is STM32_SVD.UInt21;

   --  Comparator option register
   type COMP1_OR_Register is record
      --  Selection of source for alternate function of output ports
      AFOP : COMP1_OR_AFOP_Field := 16#0#;
      --  Option Register
      OR_k : COMP1_OR_OR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_OR_Register use record
      AFOP at 0 range 0 .. 10;
      OR_k at 0 range 11 .. 31;
   end record;

   subtype COMP1_CFGR1_EN_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR1_BRGEN_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR1_SCALEN_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR1_POLARITY_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR1_ITEN_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR1_HYST_Field is STM32_SVD.UInt2;
   subtype COMP1_CFGR1_PWRMODE_Field is STM32_SVD.UInt2;
   subtype COMP1_CFGR1_INMSEL_Field is STM32_SVD.UInt3;
   subtype COMP1_CFGR1_INPSEL_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR1_BLANKING_Field is STM32_SVD.UInt4;
   subtype COMP1_CFGR1_LOCK_Field is STM32_SVD.Bit;

   --  Comparator configuration register 1
   type COMP1_CFGR1_Register is record
      --  COMP channel 1 enable bit
      EN             : COMP1_CFGR1_EN_Field := 16#0#;
      --  Scaler bridge enable
      BRGEN          : COMP1_CFGR1_BRGEN_Field := 16#0#;
      --  Voltage scaler enable bit
      SCALEN         : COMP1_CFGR1_SCALEN_Field := 16#0#;
      --  COMP channel 1 polarity selection bit
      POLARITY       : COMP1_CFGR1_POLARITY_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : STM32_SVD.UInt2 := 16#0#;
      --  COMP channel 1 interrupt enable
      ITEN           : COMP1_CFGR1_ITEN_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  COMP channel 1 hysteresis selection bits
      HYST           : COMP1_CFGR1_HYST_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : STM32_SVD.UInt2 := 16#0#;
      --  Power Mode of the COMP channel 1
      PWRMODE        : COMP1_CFGR1_PWRMODE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : STM32_SVD.UInt2 := 16#0#;
      --  COMP channel 1 inverting input selection field
      INMSEL         : COMP1_CFGR1_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : STM32_SVD.Bit := 16#0#;
      --  COMP channel 1 non-inverting input selection bit
      INPSEL         : COMP1_CFGR1_INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : STM32_SVD.UInt3 := 16#0#;
      --  COMP channel 1 blanking source selection bits
      BLANKING       : COMP1_CFGR1_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : STM32_SVD.UInt3 := 16#0#;
      --  Lock bit
      LOCK           : COMP1_CFGR1_LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_CFGR1_Register use record
      EN             at 0 range 0 .. 0;
      BRGEN          at 0 range 1 .. 1;
      SCALEN         at 0 range 2 .. 2;
      POLARITY       at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      ITEN           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      HYST           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PWRMODE        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      INMSEL         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      INPSEL         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      BLANKING       at 0 range 24 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype COMP1_CFGR2_EN_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR2_BRGEN_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR2_SCALEN_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR2_POLARITY_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR2_WINMODE_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR2_ITEN_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR2_HYST_Field is STM32_SVD.UInt2;
   subtype COMP1_CFGR2_PWRMODE_Field is STM32_SVD.UInt2;
   subtype COMP1_CFGR2_INMSEL_Field is STM32_SVD.UInt3;
   subtype COMP1_CFGR2_INPSEL_Field is STM32_SVD.Bit;
   subtype COMP1_CFGR2_BLANKING_Field is STM32_SVD.UInt4;
   subtype COMP1_CFGR2_LOCK_Field is STM32_SVD.Bit;

   --  Comparator configuration register 2
   type COMP1_CFGR2_Register is record
      --  COMP channel 1 enable bit
      EN             : COMP1_CFGR2_EN_Field := 16#0#;
      --  Scaler bridge enable
      BRGEN          : COMP1_CFGR2_BRGEN_Field := 16#0#;
      --  Voltage scaler enable bit
      SCALEN         : COMP1_CFGR2_SCALEN_Field := 16#0#;
      --  COMP channel 1 polarity selection bit
      POLARITY       : COMP1_CFGR2_POLARITY_Field := 16#0#;
      --  Window comparator mode selection bit
      WINMODE        : COMP1_CFGR2_WINMODE_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  COMP channel 1 interrupt enable
      ITEN           : COMP1_CFGR2_ITEN_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  COMP channel 1 hysteresis selection bits
      HYST           : COMP1_CFGR2_HYST_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : STM32_SVD.UInt2 := 16#0#;
      --  Power Mode of the COMP channel 1
      PWRMODE        : COMP1_CFGR2_PWRMODE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : STM32_SVD.UInt2 := 16#0#;
      --  COMP channel 1 inverting input selection field
      INMSEL         : COMP1_CFGR2_INMSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : STM32_SVD.Bit := 16#0#;
      --  COMP channel 1 non-inverting input selection bit
      INPSEL         : COMP1_CFGR2_INPSEL_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : STM32_SVD.UInt3 := 16#0#;
      --  COMP channel 1 blanking source selection bits
      BLANKING       : COMP1_CFGR2_BLANKING_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : STM32_SVD.UInt3 := 16#0#;
      --  Lock bit
      LOCK           : COMP1_CFGR2_LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_CFGR2_Register use record
      EN             at 0 range 0 .. 0;
      BRGEN          at 0 range 1 .. 1;
      SCALEN         at 0 range 2 .. 2;
      POLARITY       at 0 range 3 .. 3;
      WINMODE        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      ITEN           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      HYST           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PWRMODE        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      INMSEL         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      INPSEL         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      BLANKING       at 0 range 24 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  COMP1
   type COMP1_Peripheral is record
      --  Comparator status register
      COMP1_SR    : aliased COMP1_SR_Register;
      --  Comparator interrupt clear flag register
      COMP1_ICFR  : aliased COMP1_ICFR_Register;
      --  Comparator option register
      COMP1_OR    : aliased COMP1_OR_Register;
      --  Comparator configuration register 1
      COMP1_CFGR1 : aliased COMP1_CFGR1_Register;
      --  Comparator configuration register 2
      COMP1_CFGR2 : aliased COMP1_CFGR2_Register;
   end record
     with Volatile;

   for COMP1_Peripheral use record
      COMP1_SR    at 16#0# range 0 .. 31;
      COMP1_ICFR  at 16#4# range 0 .. 31;
      COMP1_OR    at 16#8# range 0 .. 31;
      COMP1_CFGR1 at 16#C# range 0 .. 31;
      COMP1_CFGR2 at 16#10# range 0 .. 31;
   end record;

   --  COMP1
   COMP1_Periph : aliased COMP1_Peripheral
     with Import, Address => System'To_Address (16#58003800#);

end STM32_SVD.COMP1;
