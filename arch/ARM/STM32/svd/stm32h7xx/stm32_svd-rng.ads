--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.RNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RNG_CR_RNGEN_Field is STM32_SVD.Bit;
   subtype RNG_CR_IE_Field is STM32_SVD.Bit;
   subtype RNG_CR_CED_Field is STM32_SVD.Bit;

   --  RNG control register
   type RNG_CR_Register is record
      --  unspecified
      Reserved_0_1  : STM32_SVD.UInt2 := 16#0#;
      --  Random number generator enable
      RNGEN         : RNG_CR_RNGEN_Field := 16#0#;
      --  Interrupt enable
      IE            : RNG_CR_IE_Field := 16#0#;
      --  unspecified
      Reserved_4_4  : STM32_SVD.Bit := 16#0#;
      --  Clock error detection Note: The clock error detection can be used
      --  only when ck_rc48 or ck_pll1_q (ck_pll1_q = 48MHz) source is selected
      --  otherwise, CED bit must be equal to 1. The clock error detection
      --  cannot be enabled nor disabled on the fly when RNG peripheral is
      --  enabled, to enable or disable CED the RNG must be disabled.
      CED           : RNG_CR_CED_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : STM32_SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      RNGEN         at 0 range 2 .. 2;
      IE            at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      CED           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RNG_SR_DRDY_Field is STM32_SVD.Bit;
   subtype RNG_SR_CECS_Field is STM32_SVD.Bit;
   subtype RNG_SR_SECS_Field is STM32_SVD.Bit;
   subtype RNG_SR_CEIS_Field is STM32_SVD.Bit;
   subtype RNG_SR_SEIS_Field is STM32_SVD.Bit;

   --  RNG status register
   type RNG_SR_Register is record
      --  Read-only. Data ready Note: If IE=1 in RNG_CR, an interrupt is
      --  generated when DRDY=1. It can rise when the peripheral is disabled.
      --  When the output buffer becomes empty (after reading RNG_DR), this bit
      --  returns to 0 until a new random value is generated.
      DRDY          : RNG_SR_DRDY_Field := 16#0#;
      --  Read-only. Clock error current status Note: This bit is meaningless
      --  if CED (Clock error detection) bit in RNG_CR is equal to 1.
      CECS          : RNG_SR_CECS_Field := 16#0#;
      --  Read-only. Seed error current status ** More than 64 consecutive bits
      --  at the same value (0 or 1) ** More than 32 consecutive alternances of
      --  0 and 1 (0101010101...01)
      SECS          : RNG_SR_SECS_Field := 16#0#;
      --  unspecified
      Reserved_3_4  : STM32_SVD.UInt2 := 16#0#;
      --  Clock error interrupt status This bit is set at the same time as
      --  CECS. It is cleared by writing it to 0. An interrupt is pending if IE
      --  = 1 in the RNG_CR register. Note: This bit is meaningless if CED
      --  (Clock error detection) bit in RNG_CR is equal to 1.
      CEIS          : RNG_SR_CEIS_Field := 16#0#;
      --  Seed error interrupt status This bit is set at the same time as SECS.
      --  It is cleared by writing it to 0. ** More than 64 consecutive bits at
      --  the same value (0 or 1) ** More than 32 consecutive alternances of 0
      --  and 1 (0101010101...01) An interrupt is pending if IE = 1 in the
      --  RNG_CR register.
      SEIS          : RNG_SR_SEIS_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : STM32_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_SR_Register use record
      DRDY          at 0 range 0 .. 0;
      CECS          at 0 range 1 .. 1;
      SECS          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      CEIS          at 0 range 5 .. 5;
      SEIS          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RNG
   type RNG_Peripheral is record
      --  RNG control register
      RNG_CR : aliased RNG_CR_Register;
      --  RNG status register
      RNG_SR : aliased RNG_SR_Register;
      --  The RNG_DR register is a read-only register that delivers a 32-bit
      --  random value when read. The content of this register is valid when
      --  DRDY= 1, even if RNGEN=0.
      RNG_DR : aliased STM32_SVD.UInt32;
   end record
     with Volatile;

   for RNG_Peripheral use record
      RNG_CR at 16#0# range 0 .. 31;
      RNG_SR at 16#4# range 0 .. 31;
      RNG_DR at 16#8# range 0 .. 31;
   end record;

   --  RNG
   RNG_Periph : aliased RNG_Peripheral
     with Import, Address => System'To_Address (16#48021800#);

end STM32_SVD.RNG;
