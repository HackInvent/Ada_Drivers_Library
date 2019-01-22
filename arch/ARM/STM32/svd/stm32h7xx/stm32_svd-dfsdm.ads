--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.DFSDM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DFSDM_CHCFG0R1_SITP_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG0R1_SPICKSEL_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG0R1_SCDEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG0R1_CKABEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG0R1_CHEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG0R1_CHINSEL_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG0R1_DATMPX_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG0R1_DATPACK_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG0R1_CKOUTDIV_Field is STM32_SVD.Byte;
   subtype DFSDM_CHCFG0R1_CKOUTSRC_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG0R1_DFSDMEN_Field is STM32_SVD.Bit;

   --  DFSDM channel configuration 0 register 1
   type DFSDM_CHCFG0R1_Register is record
      --  Serial interface type for channel 0
      SITP           : DFSDM_CHCFG0R1_SITP_Field := 16#0#;
      --  SPI clock select for channel 0
      SPICKSEL       : DFSDM_CHCFG0R1_SPICKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : STM32_SVD.Bit := 16#0#;
      --  Short-circuit detector enable on channel 0
      SCDEN          : DFSDM_CHCFG0R1_SCDEN_Field := 16#0#;
      --  Clock absence detector enable on channel 0
      CKABEN         : DFSDM_CHCFG0R1_CKABEN_Field := 16#0#;
      --  Channel 0 enable
      CHEN           : DFSDM_CHCFG0R1_CHEN_Field := 16#0#;
      --  Channel inputs selection
      CHINSEL        : DFSDM_CHCFG0R1_CHINSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : STM32_SVD.UInt3 := 16#0#;
      --  Input data multiplexer for channel 0
      DATMPX         : DFSDM_CHCFG0R1_DATMPX_Field := 16#0#;
      --  Data packing mode in DFSDM_CHDATINyR register
      DATPACK        : DFSDM_CHCFG0R1_DATPACK_Field := 16#0#;
      --  Output serial clock divider
      CKOUTDIV       : DFSDM_CHCFG0R1_CKOUTDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : STM32_SVD.UInt6 := 16#0#;
      --  Output serial clock source selection
      CKOUTSRC       : DFSDM_CHCFG0R1_CKOUTSRC_Field := 16#0#;
      --  Global enable for DFSDM interface
      DFSDMEN        : DFSDM_CHCFG0R1_DFSDMEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG0R1_Register use record
      SITP           at 0 range 0 .. 1;
      SPICKSEL       at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SCDEN          at 0 range 5 .. 5;
      CKABEN         at 0 range 6 .. 6;
      CHEN           at 0 range 7 .. 7;
      CHINSEL        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      DATMPX         at 0 range 12 .. 13;
      DATPACK        at 0 range 14 .. 15;
      CKOUTDIV       at 0 range 16 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      CKOUTSRC       at 0 range 30 .. 30;
      DFSDMEN        at 0 range 31 .. 31;
   end record;

   subtype DFSDM_CHCFG1R1_SITP_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG1R1_SPICKSEL_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG1R1_SCDEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG1R1_CKABEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG1R1_CHEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG1R1_CHINSEL_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG1R1_DATMPX_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG1R1_DATPACK_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG1R1_CKOUTDIV_Field is STM32_SVD.Byte;
   subtype DFSDM_CHCFG1R1_CKOUTSRC_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG1R1_DFSDMEN_Field is STM32_SVD.Bit;

   --  DFSDM channel configuration 1 register 1
   type DFSDM_CHCFG1R1_Register is record
      --  Serial interface type for channel 1
      SITP           : DFSDM_CHCFG1R1_SITP_Field := 16#0#;
      --  SPI clock select for channel 1
      SPICKSEL       : DFSDM_CHCFG1R1_SPICKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : STM32_SVD.Bit := 16#0#;
      --  Short-circuit detector enable on channel 1
      SCDEN          : DFSDM_CHCFG1R1_SCDEN_Field := 16#0#;
      --  Clock absence detector enable on channel 1
      CKABEN         : DFSDM_CHCFG1R1_CKABEN_Field := 16#0#;
      --  Channel 1 enable
      CHEN           : DFSDM_CHCFG1R1_CHEN_Field := 16#0#;
      --  Channel inputs selection
      CHINSEL        : DFSDM_CHCFG1R1_CHINSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : STM32_SVD.UInt3 := 16#0#;
      --  Input data multiplexer for channel 1
      DATMPX         : DFSDM_CHCFG1R1_DATMPX_Field := 16#0#;
      --  Data packing mode in DFSDM_CHDATINyR register
      DATPACK        : DFSDM_CHCFG1R1_DATPACK_Field := 16#0#;
      --  Output serial clock divider
      CKOUTDIV       : DFSDM_CHCFG1R1_CKOUTDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : STM32_SVD.UInt6 := 16#0#;
      --  Output serial clock source selection
      CKOUTSRC       : DFSDM_CHCFG1R1_CKOUTSRC_Field := 16#0#;
      --  Global enable for DFSDM interface
      DFSDMEN        : DFSDM_CHCFG1R1_DFSDMEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG1R1_Register use record
      SITP           at 0 range 0 .. 1;
      SPICKSEL       at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SCDEN          at 0 range 5 .. 5;
      CKABEN         at 0 range 6 .. 6;
      CHEN           at 0 range 7 .. 7;
      CHINSEL        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      DATMPX         at 0 range 12 .. 13;
      DATPACK        at 0 range 14 .. 15;
      CKOUTDIV       at 0 range 16 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      CKOUTSRC       at 0 range 30 .. 30;
      DFSDMEN        at 0 range 31 .. 31;
   end record;

   subtype DFSDM_CHCFG2R1_SITP_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG2R1_SPICKSEL_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG2R1_SCDEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG2R1_CKABEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG2R1_CHEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG2R1_CHINSEL_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG2R1_DATMPX_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG2R1_DATPACK_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG2R1_CKOUTDIV_Field is STM32_SVD.Byte;
   subtype DFSDM_CHCFG2R1_CKOUTSRC_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG2R1_DFSDMEN_Field is STM32_SVD.Bit;

   --  DFSDM channel configuration 2 register 1
   type DFSDM_CHCFG2R1_Register is record
      --  Serial interface type for channel 2
      SITP           : DFSDM_CHCFG2R1_SITP_Field := 16#0#;
      --  SPI clock select for channel 2
      SPICKSEL       : DFSDM_CHCFG2R1_SPICKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : STM32_SVD.Bit := 16#0#;
      --  Short-circuit detector enable on channel 2
      SCDEN          : DFSDM_CHCFG2R1_SCDEN_Field := 16#0#;
      --  Clock absence detector enable on channel 2
      CKABEN         : DFSDM_CHCFG2R1_CKABEN_Field := 16#0#;
      --  Channel 2 enable
      CHEN           : DFSDM_CHCFG2R1_CHEN_Field := 16#0#;
      --  Channel inputs selection
      CHINSEL        : DFSDM_CHCFG2R1_CHINSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : STM32_SVD.UInt3 := 16#0#;
      --  Input data multiplexer for channel 2
      DATMPX         : DFSDM_CHCFG2R1_DATMPX_Field := 16#0#;
      --  Data packing mode in DFSDM_CHDATINyR register
      DATPACK        : DFSDM_CHCFG2R1_DATPACK_Field := 16#0#;
      --  Output serial clock divider
      CKOUTDIV       : DFSDM_CHCFG2R1_CKOUTDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : STM32_SVD.UInt6 := 16#0#;
      --  Output serial clock source selection
      CKOUTSRC       : DFSDM_CHCFG2R1_CKOUTSRC_Field := 16#0#;
      --  Global enable for DFSDM interface
      DFSDMEN        : DFSDM_CHCFG2R1_DFSDMEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG2R1_Register use record
      SITP           at 0 range 0 .. 1;
      SPICKSEL       at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SCDEN          at 0 range 5 .. 5;
      CKABEN         at 0 range 6 .. 6;
      CHEN           at 0 range 7 .. 7;
      CHINSEL        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      DATMPX         at 0 range 12 .. 13;
      DATPACK        at 0 range 14 .. 15;
      CKOUTDIV       at 0 range 16 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      CKOUTSRC       at 0 range 30 .. 30;
      DFSDMEN        at 0 range 31 .. 31;
   end record;

   subtype DFSDM_CHCFG3R1_SITP_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG3R1_SPICKSEL_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG3R1_SCDEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG3R1_CKABEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG3R1_CHEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG3R1_CHINSEL_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG3R1_DATMPX_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG3R1_DATPACK_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG3R1_CKOUTDIV_Field is STM32_SVD.Byte;
   subtype DFSDM_CHCFG3R1_CKOUTSRC_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG3R1_DFSDMEN_Field is STM32_SVD.Bit;

   --  DFSDM channel configuration 3 register 1
   type DFSDM_CHCFG3R1_Register is record
      --  Serial interface type for channel 3
      SITP           : DFSDM_CHCFG3R1_SITP_Field := 16#0#;
      --  SPI clock select for channel 3
      SPICKSEL       : DFSDM_CHCFG3R1_SPICKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : STM32_SVD.Bit := 16#0#;
      --  Short-circuit detector enable on channel 3
      SCDEN          : DFSDM_CHCFG3R1_SCDEN_Field := 16#0#;
      --  Clock absence detector enable on channel 3
      CKABEN         : DFSDM_CHCFG3R1_CKABEN_Field := 16#0#;
      --  Channel 3 enable
      CHEN           : DFSDM_CHCFG3R1_CHEN_Field := 16#0#;
      --  Channel inputs selection
      CHINSEL        : DFSDM_CHCFG3R1_CHINSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : STM32_SVD.UInt3 := 16#0#;
      --  Input data multiplexer for channel 3
      DATMPX         : DFSDM_CHCFG3R1_DATMPX_Field := 16#0#;
      --  Data packing mode in DFSDM_CHDATINyR register
      DATPACK        : DFSDM_CHCFG3R1_DATPACK_Field := 16#0#;
      --  Output serial clock divider
      CKOUTDIV       : DFSDM_CHCFG3R1_CKOUTDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : STM32_SVD.UInt6 := 16#0#;
      --  Output serial clock source selection
      CKOUTSRC       : DFSDM_CHCFG3R1_CKOUTSRC_Field := 16#0#;
      --  Global enable for DFSDM interface
      DFSDMEN        : DFSDM_CHCFG3R1_DFSDMEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG3R1_Register use record
      SITP           at 0 range 0 .. 1;
      SPICKSEL       at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SCDEN          at 0 range 5 .. 5;
      CKABEN         at 0 range 6 .. 6;
      CHEN           at 0 range 7 .. 7;
      CHINSEL        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      DATMPX         at 0 range 12 .. 13;
      DATPACK        at 0 range 14 .. 15;
      CKOUTDIV       at 0 range 16 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      CKOUTSRC       at 0 range 30 .. 30;
      DFSDMEN        at 0 range 31 .. 31;
   end record;

   subtype DFSDM_CHCFG4R1_SITP_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG4R1_SPICKSEL_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG4R1_SCDEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG4R1_CKABEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG4R1_CHEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG4R1_CHINSEL_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG4R1_DATMPX_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG4R1_DATPACK_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG4R1_CKOUTDIV_Field is STM32_SVD.Byte;
   subtype DFSDM_CHCFG4R1_CKOUTSRC_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG4R1_DFSDMEN_Field is STM32_SVD.Bit;

   --  DFSDM channel configuration 4 register 1
   type DFSDM_CHCFG4R1_Register is record
      --  Serial interface type for channel 4
      SITP           : DFSDM_CHCFG4R1_SITP_Field := 16#0#;
      --  SPI clock select for channel 4
      SPICKSEL       : DFSDM_CHCFG4R1_SPICKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : STM32_SVD.Bit := 16#0#;
      --  Short-circuit detector enable on channel 4
      SCDEN          : DFSDM_CHCFG4R1_SCDEN_Field := 16#0#;
      --  Clock absence detector enable on channel 4
      CKABEN         : DFSDM_CHCFG4R1_CKABEN_Field := 16#0#;
      --  Channel 4 enable
      CHEN           : DFSDM_CHCFG4R1_CHEN_Field := 16#0#;
      --  Channel inputs selection
      CHINSEL        : DFSDM_CHCFG4R1_CHINSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : STM32_SVD.UInt3 := 16#0#;
      --  Input data multiplexer for channel 4
      DATMPX         : DFSDM_CHCFG4R1_DATMPX_Field := 16#0#;
      --  Data packing mode in DFSDM_CHDATINyR register
      DATPACK        : DFSDM_CHCFG4R1_DATPACK_Field := 16#0#;
      --  Output serial clock divider
      CKOUTDIV       : DFSDM_CHCFG4R1_CKOUTDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : STM32_SVD.UInt6 := 16#0#;
      --  Output serial clock source selection
      CKOUTSRC       : DFSDM_CHCFG4R1_CKOUTSRC_Field := 16#0#;
      --  Global enable for DFSDM interface
      DFSDMEN        : DFSDM_CHCFG4R1_DFSDMEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG4R1_Register use record
      SITP           at 0 range 0 .. 1;
      SPICKSEL       at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SCDEN          at 0 range 5 .. 5;
      CKABEN         at 0 range 6 .. 6;
      CHEN           at 0 range 7 .. 7;
      CHINSEL        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      DATMPX         at 0 range 12 .. 13;
      DATPACK        at 0 range 14 .. 15;
      CKOUTDIV       at 0 range 16 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      CKOUTSRC       at 0 range 30 .. 30;
      DFSDMEN        at 0 range 31 .. 31;
   end record;

   subtype DFSDM_CHCFG5R1_SITP_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG5R1_SPICKSEL_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG5R1_SCDEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG5R1_CKABEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG5R1_CHEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG5R1_CHINSEL_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG5R1_DATMPX_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG5R1_DATPACK_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG5R1_CKOUTDIV_Field is STM32_SVD.Byte;
   subtype DFSDM_CHCFG5R1_CKOUTSRC_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG5R1_DFSDMEN_Field is STM32_SVD.Bit;

   --  DFSDM channel configuration 5 register 1
   type DFSDM_CHCFG5R1_Register is record
      --  Serial interface type for channel 5
      SITP           : DFSDM_CHCFG5R1_SITP_Field := 16#0#;
      --  SPI clock select for channel 5
      SPICKSEL       : DFSDM_CHCFG5R1_SPICKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : STM32_SVD.Bit := 16#0#;
      --  Short-circuit detector enable on channel 5
      SCDEN          : DFSDM_CHCFG5R1_SCDEN_Field := 16#0#;
      --  Clock absence detector enable on channel 5
      CKABEN         : DFSDM_CHCFG5R1_CKABEN_Field := 16#0#;
      --  Channel 5 enable
      CHEN           : DFSDM_CHCFG5R1_CHEN_Field := 16#0#;
      --  Channel inputs selection
      CHINSEL        : DFSDM_CHCFG5R1_CHINSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : STM32_SVD.UInt3 := 16#0#;
      --  Input data multiplexer for channel 5
      DATMPX         : DFSDM_CHCFG5R1_DATMPX_Field := 16#0#;
      --  Data packing mode in DFSDM_CHDATINyR register
      DATPACK        : DFSDM_CHCFG5R1_DATPACK_Field := 16#0#;
      --  Output serial clock divider
      CKOUTDIV       : DFSDM_CHCFG5R1_CKOUTDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : STM32_SVD.UInt6 := 16#0#;
      --  Output serial clock source selection
      CKOUTSRC       : DFSDM_CHCFG5R1_CKOUTSRC_Field := 16#0#;
      --  Global enable for DFSDM interface
      DFSDMEN        : DFSDM_CHCFG5R1_DFSDMEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG5R1_Register use record
      SITP           at 0 range 0 .. 1;
      SPICKSEL       at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SCDEN          at 0 range 5 .. 5;
      CKABEN         at 0 range 6 .. 6;
      CHEN           at 0 range 7 .. 7;
      CHINSEL        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      DATMPX         at 0 range 12 .. 13;
      DATPACK        at 0 range 14 .. 15;
      CKOUTDIV       at 0 range 16 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      CKOUTSRC       at 0 range 30 .. 30;
      DFSDMEN        at 0 range 31 .. 31;
   end record;

   subtype DFSDM_CHCFG6R1_SITP_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG6R1_SPICKSEL_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG6R1_SCDEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG6R1_CKABEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG6R1_CHEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG6R1_CHINSEL_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG6R1_DATMPX_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG6R1_DATPACK_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG6R1_CKOUTDIV_Field is STM32_SVD.Byte;
   subtype DFSDM_CHCFG6R1_CKOUTSRC_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG6R1_DFSDMEN_Field is STM32_SVD.Bit;

   --  DFSDM channel configuration 6 register 1
   type DFSDM_CHCFG6R1_Register is record
      --  Serial interface type for channel 6
      SITP           : DFSDM_CHCFG6R1_SITP_Field := 16#0#;
      --  SPI clock select for channel 6
      SPICKSEL       : DFSDM_CHCFG6R1_SPICKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : STM32_SVD.Bit := 16#0#;
      --  Short-circuit detector enable on channel 6
      SCDEN          : DFSDM_CHCFG6R1_SCDEN_Field := 16#0#;
      --  Clock absence detector enable on channel 6
      CKABEN         : DFSDM_CHCFG6R1_CKABEN_Field := 16#0#;
      --  Channel 6 enable
      CHEN           : DFSDM_CHCFG6R1_CHEN_Field := 16#0#;
      --  Channel inputs selection
      CHINSEL        : DFSDM_CHCFG6R1_CHINSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : STM32_SVD.UInt3 := 16#0#;
      --  Input data multiplexer for channel 6
      DATMPX         : DFSDM_CHCFG6R1_DATMPX_Field := 16#0#;
      --  Data packing mode in DFSDM_CHDATINyR register
      DATPACK        : DFSDM_CHCFG6R1_DATPACK_Field := 16#0#;
      --  Output serial clock divider
      CKOUTDIV       : DFSDM_CHCFG6R1_CKOUTDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : STM32_SVD.UInt6 := 16#0#;
      --  Output serial clock source selection
      CKOUTSRC       : DFSDM_CHCFG6R1_CKOUTSRC_Field := 16#0#;
      --  Global enable for DFSDM interface
      DFSDMEN        : DFSDM_CHCFG6R1_DFSDMEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG6R1_Register use record
      SITP           at 0 range 0 .. 1;
      SPICKSEL       at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SCDEN          at 0 range 5 .. 5;
      CKABEN         at 0 range 6 .. 6;
      CHEN           at 0 range 7 .. 7;
      CHINSEL        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      DATMPX         at 0 range 12 .. 13;
      DATPACK        at 0 range 14 .. 15;
      CKOUTDIV       at 0 range 16 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      CKOUTSRC       at 0 range 30 .. 30;
      DFSDMEN        at 0 range 31 .. 31;
   end record;

   subtype DFSDM_CHCFG7R1_SITP_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG7R1_SPICKSEL_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG7R1_SCDEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG7R1_CKABEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG7R1_CHEN_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG7R1_CHINSEL_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG7R1_DATMPX_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG7R1_DATPACK_Field is STM32_SVD.UInt2;
   subtype DFSDM_CHCFG7R1_CKOUTDIV_Field is STM32_SVD.Byte;
   subtype DFSDM_CHCFG7R1_CKOUTSRC_Field is STM32_SVD.Bit;
   subtype DFSDM_CHCFG7R1_DFSDMEN_Field is STM32_SVD.Bit;

   --  DFSDM channel configuration 7 register 1
   type DFSDM_CHCFG7R1_Register is record
      --  Serial interface type for channel 7
      SITP           : DFSDM_CHCFG7R1_SITP_Field := 16#0#;
      --  SPI clock select for channel 7
      SPICKSEL       : DFSDM_CHCFG7R1_SPICKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : STM32_SVD.Bit := 16#0#;
      --  Short-circuit detector enable on channel 7
      SCDEN          : DFSDM_CHCFG7R1_SCDEN_Field := 16#0#;
      --  Clock absence detector enable on channel 7
      CKABEN         : DFSDM_CHCFG7R1_CKABEN_Field := 16#0#;
      --  Channel 7 enable
      CHEN           : DFSDM_CHCFG7R1_CHEN_Field := 16#0#;
      --  Channel inputs selection
      CHINSEL        : DFSDM_CHCFG7R1_CHINSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : STM32_SVD.UInt3 := 16#0#;
      --  Input data multiplexer for channel 7
      DATMPX         : DFSDM_CHCFG7R1_DATMPX_Field := 16#0#;
      --  Data packing mode in DFSDM_CHDATINyR register
      DATPACK        : DFSDM_CHCFG7R1_DATPACK_Field := 16#0#;
      --  Output serial clock divider
      CKOUTDIV       : DFSDM_CHCFG7R1_CKOUTDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : STM32_SVD.UInt6 := 16#0#;
      --  Output serial clock source selection
      CKOUTSRC       : DFSDM_CHCFG7R1_CKOUTSRC_Field := 16#0#;
      --  Global enable for DFSDM interface
      DFSDMEN        : DFSDM_CHCFG7R1_DFSDMEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG7R1_Register use record
      SITP           at 0 range 0 .. 1;
      SPICKSEL       at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SCDEN          at 0 range 5 .. 5;
      CKABEN         at 0 range 6 .. 6;
      CHEN           at 0 range 7 .. 7;
      CHINSEL        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      DATMPX         at 0 range 12 .. 13;
      DATPACK        at 0 range 14 .. 15;
      CKOUTDIV       at 0 range 16 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      CKOUTSRC       at 0 range 30 .. 30;
      DFSDMEN        at 0 range 31 .. 31;
   end record;

   subtype DFSDM_CHCFG0R2_DTRBS_Field is STM32_SVD.UInt5;
   subtype DFSDM_CHCFG0R2_OFFSET_Field is STM32_SVD.UInt24;

   --  DFSDM channel configuration 0 register 2
   type DFSDM_CHCFG0R2_Register is record
      --  unspecified
      Reserved_0_2 : STM32_SVD.UInt3 := 16#0#;
      --  Data right bit-shift for channel 0
      DTRBS        : DFSDM_CHCFG0R2_DTRBS_Field := 16#0#;
      --  24-bit calibration offset for channel 0
      OFFSET       : DFSDM_CHCFG0R2_OFFSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG0R2_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      DTRBS        at 0 range 3 .. 7;
      OFFSET       at 0 range 8 .. 31;
   end record;

   subtype DFSDM_CHCFG1R2_DTRBS_Field is STM32_SVD.UInt5;
   subtype DFSDM_CHCFG1R2_OFFSET_Field is STM32_SVD.UInt24;

   --  DFSDM channel configuration 1 register 2
   type DFSDM_CHCFG1R2_Register is record
      --  unspecified
      Reserved_0_2 : STM32_SVD.UInt3 := 16#0#;
      --  Data right bit-shift for channel 1
      DTRBS        : DFSDM_CHCFG1R2_DTRBS_Field := 16#0#;
      --  24-bit calibration offset for channel 1
      OFFSET       : DFSDM_CHCFG1R2_OFFSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG1R2_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      DTRBS        at 0 range 3 .. 7;
      OFFSET       at 0 range 8 .. 31;
   end record;

   subtype DFSDM_CHCFG2R2_DTRBS_Field is STM32_SVD.UInt5;
   subtype DFSDM_CHCFG2R2_OFFSET_Field is STM32_SVD.UInt24;

   --  DFSDM channel configuration 2 register 2
   type DFSDM_CHCFG2R2_Register is record
      --  unspecified
      Reserved_0_2 : STM32_SVD.UInt3 := 16#0#;
      --  Data right bit-shift for channel 2
      DTRBS        : DFSDM_CHCFG2R2_DTRBS_Field := 16#0#;
      --  24-bit calibration offset for channel 2
      OFFSET       : DFSDM_CHCFG2R2_OFFSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG2R2_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      DTRBS        at 0 range 3 .. 7;
      OFFSET       at 0 range 8 .. 31;
   end record;

   subtype DFSDM_CHCFG3R2_DTRBS_Field is STM32_SVD.UInt5;
   subtype DFSDM_CHCFG3R2_OFFSET_Field is STM32_SVD.UInt24;

   --  DFSDM channel configuration 3 register 2
   type DFSDM_CHCFG3R2_Register is record
      --  unspecified
      Reserved_0_2 : STM32_SVD.UInt3 := 16#0#;
      --  Data right bit-shift for channel 3
      DTRBS        : DFSDM_CHCFG3R2_DTRBS_Field := 16#0#;
      --  24-bit calibration offset for channel 3
      OFFSET       : DFSDM_CHCFG3R2_OFFSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG3R2_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      DTRBS        at 0 range 3 .. 7;
      OFFSET       at 0 range 8 .. 31;
   end record;

   subtype DFSDM_CHCFG4R2_DTRBS_Field is STM32_SVD.UInt5;
   subtype DFSDM_CHCFG4R2_OFFSET_Field is STM32_SVD.UInt24;

   --  DFSDM channel configuration 4 register 2
   type DFSDM_CHCFG4R2_Register is record
      --  unspecified
      Reserved_0_2 : STM32_SVD.UInt3 := 16#0#;
      --  Data right bit-shift for channel 4
      DTRBS        : DFSDM_CHCFG4R2_DTRBS_Field := 16#0#;
      --  24-bit calibration offset for channel 4
      OFFSET       : DFSDM_CHCFG4R2_OFFSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG4R2_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      DTRBS        at 0 range 3 .. 7;
      OFFSET       at 0 range 8 .. 31;
   end record;

   subtype DFSDM_CHCFG5R2_DTRBS_Field is STM32_SVD.UInt5;
   subtype DFSDM_CHCFG5R2_OFFSET_Field is STM32_SVD.UInt24;

   --  DFSDM channel configuration 5 register 2
   type DFSDM_CHCFG5R2_Register is record
      --  unspecified
      Reserved_0_2 : STM32_SVD.UInt3 := 16#0#;
      --  Data right bit-shift for channel 5
      DTRBS        : DFSDM_CHCFG5R2_DTRBS_Field := 16#0#;
      --  24-bit calibration offset for channel 5
      OFFSET       : DFSDM_CHCFG5R2_OFFSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG5R2_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      DTRBS        at 0 range 3 .. 7;
      OFFSET       at 0 range 8 .. 31;
   end record;

   subtype DFSDM_CHCFG6R2_DTRBS_Field is STM32_SVD.UInt5;
   subtype DFSDM_CHCFG6R2_OFFSET_Field is STM32_SVD.UInt24;

   --  DFSDM channel configuration 6 register 2
   type DFSDM_CHCFG6R2_Register is record
      --  unspecified
      Reserved_0_2 : STM32_SVD.UInt3 := 16#0#;
      --  Data right bit-shift for channel 6
      DTRBS        : DFSDM_CHCFG6R2_DTRBS_Field := 16#0#;
      --  24-bit calibration offset for channel 6
      OFFSET       : DFSDM_CHCFG6R2_OFFSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG6R2_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      DTRBS        at 0 range 3 .. 7;
      OFFSET       at 0 range 8 .. 31;
   end record;

   subtype DFSDM_CHCFG7R2_DTRBS_Field is STM32_SVD.UInt5;
   subtype DFSDM_CHCFG7R2_OFFSET_Field is STM32_SVD.UInt24;

   --  DFSDM channel configuration 7 register 2
   type DFSDM_CHCFG7R2_Register is record
      --  unspecified
      Reserved_0_2 : STM32_SVD.UInt3 := 16#0#;
      --  Data right bit-shift for channel 7
      DTRBS        : DFSDM_CHCFG7R2_DTRBS_Field := 16#0#;
      --  24-bit calibration offset for channel 7
      OFFSET       : DFSDM_CHCFG7R2_OFFSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHCFG7R2_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      DTRBS        at 0 range 3 .. 7;
      OFFSET       at 0 range 8 .. 31;
   end record;

   subtype DFSDM_AWSCD0R_SCDT_Field is STM32_SVD.Byte;
   subtype DFSDM_AWSCD0R_BKSCD_Field is STM32_SVD.UInt4;
   subtype DFSDM_AWSCD0R_AWFOSR_Field is STM32_SVD.UInt5;
   subtype DFSDM_AWSCD0R_AWFORD_Field is STM32_SVD.UInt2;

   --  DFSDM analog watchdog and short-circuit detector register
   type DFSDM_AWSCD0R_Register is record
      --  short-circuit detector threshold for channel 0
      SCDT           : DFSDM_AWSCD0R_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32_SVD.UInt4 := 16#0#;
      --  Break signal assignment for short-circuit detector on channel 0
      BKSCD          : DFSDM_AWSCD0R_BKSCD_Field := 16#0#;
      --  Analog watchdog filter oversampling ratio (decimation rate) on
      --  channel 0
      AWFOSR         : DFSDM_AWSCD0R_AWFOSR_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  Analog watchdog Sinc filter order on channel 0
      AWFORD         : DFSDM_AWSCD0R_AWFORD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_AWSCD0R_Register use record
      SCDT           at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      BKSCD          at 0 range 12 .. 15;
      AWFOSR         at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      AWFORD         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM_AWSCD1R_SCDT_Field is STM32_SVD.Byte;
   subtype DFSDM_AWSCD1R_BKSCD_Field is STM32_SVD.UInt4;
   subtype DFSDM_AWSCD1R_AWFOSR_Field is STM32_SVD.UInt5;
   subtype DFSDM_AWSCD1R_AWFORD_Field is STM32_SVD.UInt2;

   --  DFSDM analog watchdog and short-circuit detector register
   type DFSDM_AWSCD1R_Register is record
      --  short-circuit detector threshold for channel 1
      SCDT           : DFSDM_AWSCD1R_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32_SVD.UInt4 := 16#0#;
      --  Break signal assignment for short-circuit detector on channel 1
      BKSCD          : DFSDM_AWSCD1R_BKSCD_Field := 16#0#;
      --  Analog watchdog filter oversampling ratio (decimation rate) on
      --  channel 1
      AWFOSR         : DFSDM_AWSCD1R_AWFOSR_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  Analog watchdog Sinc filter order on channel 1
      AWFORD         : DFSDM_AWSCD1R_AWFORD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_AWSCD1R_Register use record
      SCDT           at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      BKSCD          at 0 range 12 .. 15;
      AWFOSR         at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      AWFORD         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM_AWSCD2R_SCDT_Field is STM32_SVD.Byte;
   subtype DFSDM_AWSCD2R_BKSCD_Field is STM32_SVD.UInt4;
   subtype DFSDM_AWSCD2R_AWFOSR_Field is STM32_SVD.UInt5;
   subtype DFSDM_AWSCD2R_AWFORD_Field is STM32_SVD.UInt2;

   --  DFSDM analog watchdog and short-circuit detector register
   type DFSDM_AWSCD2R_Register is record
      --  short-circuit detector threshold for channel 2
      SCDT           : DFSDM_AWSCD2R_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32_SVD.UInt4 := 16#0#;
      --  Break signal assignment for short-circuit detector on channel 2
      BKSCD          : DFSDM_AWSCD2R_BKSCD_Field := 16#0#;
      --  Analog watchdog filter oversampling ratio (decimation rate) on
      --  channel 2
      AWFOSR         : DFSDM_AWSCD2R_AWFOSR_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  Analog watchdog Sinc filter order on channel 2
      AWFORD         : DFSDM_AWSCD2R_AWFORD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_AWSCD2R_Register use record
      SCDT           at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      BKSCD          at 0 range 12 .. 15;
      AWFOSR         at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      AWFORD         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM_AWSCD3R_SCDT_Field is STM32_SVD.Byte;
   subtype DFSDM_AWSCD3R_BKSCD_Field is STM32_SVD.UInt4;
   subtype DFSDM_AWSCD3R_AWFOSR_Field is STM32_SVD.UInt5;
   subtype DFSDM_AWSCD3R_AWFORD_Field is STM32_SVD.UInt2;

   --  DFSDM analog watchdog and short-circuit detector register
   type DFSDM_AWSCD3R_Register is record
      --  short-circuit detector threshold for channel 3
      SCDT           : DFSDM_AWSCD3R_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32_SVD.UInt4 := 16#0#;
      --  Break signal assignment for short-circuit detector on channel 3
      BKSCD          : DFSDM_AWSCD3R_BKSCD_Field := 16#0#;
      --  Analog watchdog filter oversampling ratio (decimation rate) on
      --  channel 3
      AWFOSR         : DFSDM_AWSCD3R_AWFOSR_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  Analog watchdog Sinc filter order on channel 3
      AWFORD         : DFSDM_AWSCD3R_AWFORD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_AWSCD3R_Register use record
      SCDT           at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      BKSCD          at 0 range 12 .. 15;
      AWFOSR         at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      AWFORD         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM_AWSCD4R_SCDT_Field is STM32_SVD.Byte;
   subtype DFSDM_AWSCD4R_BKSCD_Field is STM32_SVD.UInt4;
   subtype DFSDM_AWSCD4R_AWFOSR_Field is STM32_SVD.UInt5;
   subtype DFSDM_AWSCD4R_AWFORD_Field is STM32_SVD.UInt2;

   --  DFSDM analog watchdog and short-circuit detector register
   type DFSDM_AWSCD4R_Register is record
      --  short-circuit detector threshold for channel 4
      SCDT           : DFSDM_AWSCD4R_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32_SVD.UInt4 := 16#0#;
      --  Break signal assignment for short-circuit detector on channel 4
      BKSCD          : DFSDM_AWSCD4R_BKSCD_Field := 16#0#;
      --  Analog watchdog filter oversampling ratio (decimation rate) on
      --  channel 4
      AWFOSR         : DFSDM_AWSCD4R_AWFOSR_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  Analog watchdog Sinc filter order on channel 4
      AWFORD         : DFSDM_AWSCD4R_AWFORD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_AWSCD4R_Register use record
      SCDT           at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      BKSCD          at 0 range 12 .. 15;
      AWFOSR         at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      AWFORD         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM_AWSCD5R_SCDT_Field is STM32_SVD.Byte;
   subtype DFSDM_AWSCD5R_BKSCD_Field is STM32_SVD.UInt4;
   subtype DFSDM_AWSCD5R_AWFOSR_Field is STM32_SVD.UInt5;
   subtype DFSDM_AWSCD5R_AWFORD_Field is STM32_SVD.UInt2;

   --  DFSDM analog watchdog and short-circuit detector register
   type DFSDM_AWSCD5R_Register is record
      --  short-circuit detector threshold for channel 5
      SCDT           : DFSDM_AWSCD5R_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32_SVD.UInt4 := 16#0#;
      --  Break signal assignment for short-circuit detector on channel 5
      BKSCD          : DFSDM_AWSCD5R_BKSCD_Field := 16#0#;
      --  Analog watchdog filter oversampling ratio (decimation rate) on
      --  channel 5
      AWFOSR         : DFSDM_AWSCD5R_AWFOSR_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  Analog watchdog Sinc filter order on channel 5
      AWFORD         : DFSDM_AWSCD5R_AWFORD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_AWSCD5R_Register use record
      SCDT           at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      BKSCD          at 0 range 12 .. 15;
      AWFOSR         at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      AWFORD         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM_AWSCD6R_SCDT_Field is STM32_SVD.Byte;
   subtype DFSDM_AWSCD6R_BKSCD_Field is STM32_SVD.UInt4;
   subtype DFSDM_AWSCD6R_AWFOSR_Field is STM32_SVD.UInt5;
   subtype DFSDM_AWSCD6R_AWFORD_Field is STM32_SVD.UInt2;

   --  DFSDM analog watchdog and short-circuit detector register
   type DFSDM_AWSCD6R_Register is record
      --  short-circuit detector threshold for channel 6
      SCDT           : DFSDM_AWSCD6R_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32_SVD.UInt4 := 16#0#;
      --  Break signal assignment for short-circuit detector on channel 6
      BKSCD          : DFSDM_AWSCD6R_BKSCD_Field := 16#0#;
      --  Analog watchdog filter oversampling ratio (decimation rate) on
      --  channel 6
      AWFOSR         : DFSDM_AWSCD6R_AWFOSR_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  Analog watchdog Sinc filter order on channel 6
      AWFORD         : DFSDM_AWSCD6R_AWFORD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_AWSCD6R_Register use record
      SCDT           at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      BKSCD          at 0 range 12 .. 15;
      AWFOSR         at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      AWFORD         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM_AWSCD7R_SCDT_Field is STM32_SVD.Byte;
   subtype DFSDM_AWSCD7R_BKSCD_Field is STM32_SVD.UInt4;
   subtype DFSDM_AWSCD7R_AWFOSR_Field is STM32_SVD.UInt5;
   subtype DFSDM_AWSCD7R_AWFORD_Field is STM32_SVD.UInt2;

   --  DFSDM analog watchdog and short-circuit detector register
   type DFSDM_AWSCD7R_Register is record
      --  short-circuit detector threshold for channel 7
      SCDT           : DFSDM_AWSCD7R_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32_SVD.UInt4 := 16#0#;
      --  Break signal assignment for short-circuit detector on channel 7
      BKSCD          : DFSDM_AWSCD7R_BKSCD_Field := 16#0#;
      --  Analog watchdog filter oversampling ratio (decimation rate) on
      --  channel 7
      AWFOSR         : DFSDM_AWSCD7R_AWFOSR_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  Analog watchdog Sinc filter order on channel 7
      AWFORD         : DFSDM_AWSCD7R_AWFORD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_AWSCD7R_Register use record
      SCDT           at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      BKSCD          at 0 range 12 .. 15;
      AWFOSR         at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      AWFORD         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM_CHWDAT0R_WDATA_Field is STM32_SVD.UInt16;

   --  DFSDM channel watchdog filter data register
   type DFSDM_CHWDAT0R_Register is record
      --  Read-only. Input channel y watchdog data
      WDATA          : DFSDM_CHWDAT0R_WDATA_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHWDAT0R_Register use record
      WDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM_CHWDAT1R_WDATA_Field is STM32_SVD.UInt16;

   --  DFSDM channel watchdog filter data register
   type DFSDM_CHWDAT1R_Register is record
      --  Read-only. Input channel y watchdog data
      WDATA          : DFSDM_CHWDAT1R_WDATA_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHWDAT1R_Register use record
      WDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM_CHWDAT2R_WDATA_Field is STM32_SVD.UInt16;

   --  DFSDM channel watchdog filter data register
   type DFSDM_CHWDAT2R_Register is record
      --  Read-only. Input channel y watchdog data
      WDATA          : DFSDM_CHWDAT2R_WDATA_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHWDAT2R_Register use record
      WDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM_CHWDAT3R_WDATA_Field is STM32_SVD.UInt16;

   --  DFSDM channel watchdog filter data register
   type DFSDM_CHWDAT3R_Register is record
      --  Read-only. Input channel y watchdog data
      WDATA          : DFSDM_CHWDAT3R_WDATA_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHWDAT3R_Register use record
      WDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM_CHWDAT4R_WDATA_Field is STM32_SVD.UInt16;

   --  DFSDM channel watchdog filter data register
   type DFSDM_CHWDAT4R_Register is record
      --  Read-only. Input channel y watchdog data
      WDATA          : DFSDM_CHWDAT4R_WDATA_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHWDAT4R_Register use record
      WDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM_CHWDAT5R_WDATA_Field is STM32_SVD.UInt16;

   --  DFSDM channel watchdog filter data register
   type DFSDM_CHWDAT5R_Register is record
      --  Read-only. Input channel y watchdog data
      WDATA          : DFSDM_CHWDAT5R_WDATA_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHWDAT5R_Register use record
      WDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM_CHWDAT6R_WDATA_Field is STM32_SVD.UInt16;

   --  DFSDM channel watchdog filter data register
   type DFSDM_CHWDAT6R_Register is record
      --  Read-only. Input channel y watchdog data
      WDATA          : DFSDM_CHWDAT6R_WDATA_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHWDAT6R_Register use record
      WDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM_CHWDAT7R_WDATA_Field is STM32_SVD.UInt16;

   --  DFSDM channel watchdog filter data register
   type DFSDM_CHWDAT7R_Register is record
      --  Read-only. Input channel y watchdog data
      WDATA          : DFSDM_CHWDAT7R_WDATA_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHWDAT7R_Register use record
      WDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DFSDM_CHDATIN0R_INDAT array element
   subtype DFSDM_CHDATIN0R_INDAT_Element is STM32_SVD.UInt16;

   --  DFSDM_CHDATIN0R_INDAT array
   type DFSDM_CHDATIN0R_INDAT_Field_Array is array (0 .. 1)
     of DFSDM_CHDATIN0R_INDAT_Element
     with Component_Size => 16, Size => 32;

   --  DFSDM channel data input register
   type DFSDM_CHDATIN0R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INDAT as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  INDAT as an array
            Arr : DFSDM_CHDATIN0R_INDAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHDATIN0R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DFSDM_CHDATIN1R_INDAT array element
   subtype DFSDM_CHDATIN1R_INDAT_Element is STM32_SVD.UInt16;

   --  DFSDM_CHDATIN1R_INDAT array
   type DFSDM_CHDATIN1R_INDAT_Field_Array is array (0 .. 1)
     of DFSDM_CHDATIN1R_INDAT_Element
     with Component_Size => 16, Size => 32;

   --  DFSDM channel data input register
   type DFSDM_CHDATIN1R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INDAT as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  INDAT as an array
            Arr : DFSDM_CHDATIN1R_INDAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHDATIN1R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DFSDM_CHDATIN2R_INDAT array element
   subtype DFSDM_CHDATIN2R_INDAT_Element is STM32_SVD.UInt16;

   --  DFSDM_CHDATIN2R_INDAT array
   type DFSDM_CHDATIN2R_INDAT_Field_Array is array (0 .. 1)
     of DFSDM_CHDATIN2R_INDAT_Element
     with Component_Size => 16, Size => 32;

   --  DFSDM channel data input register
   type DFSDM_CHDATIN2R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INDAT as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  INDAT as an array
            Arr : DFSDM_CHDATIN2R_INDAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHDATIN2R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DFSDM_CHDATIN3R_INDAT array element
   subtype DFSDM_CHDATIN3R_INDAT_Element is STM32_SVD.UInt16;

   --  DFSDM_CHDATIN3R_INDAT array
   type DFSDM_CHDATIN3R_INDAT_Field_Array is array (0 .. 1)
     of DFSDM_CHDATIN3R_INDAT_Element
     with Component_Size => 16, Size => 32;

   --  DFSDM channel data input register
   type DFSDM_CHDATIN3R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INDAT as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  INDAT as an array
            Arr : DFSDM_CHDATIN3R_INDAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHDATIN3R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DFSDM_CHDATIN4R_INDAT array element
   subtype DFSDM_CHDATIN4R_INDAT_Element is STM32_SVD.UInt16;

   --  DFSDM_CHDATIN4R_INDAT array
   type DFSDM_CHDATIN4R_INDAT_Field_Array is array (0 .. 1)
     of DFSDM_CHDATIN4R_INDAT_Element
     with Component_Size => 16, Size => 32;

   --  DFSDM channel data input register
   type DFSDM_CHDATIN4R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INDAT as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  INDAT as an array
            Arr : DFSDM_CHDATIN4R_INDAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHDATIN4R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DFSDM_CHDATIN5R_INDAT array element
   subtype DFSDM_CHDATIN5R_INDAT_Element is STM32_SVD.UInt16;

   --  DFSDM_CHDATIN5R_INDAT array
   type DFSDM_CHDATIN5R_INDAT_Field_Array is array (0 .. 1)
     of DFSDM_CHDATIN5R_INDAT_Element
     with Component_Size => 16, Size => 32;

   --  DFSDM channel data input register
   type DFSDM_CHDATIN5R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INDAT as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  INDAT as an array
            Arr : DFSDM_CHDATIN5R_INDAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHDATIN5R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DFSDM_CHDATIN6R_INDAT array element
   subtype DFSDM_CHDATIN6R_INDAT_Element is STM32_SVD.UInt16;

   --  DFSDM_CHDATIN6R_INDAT array
   type DFSDM_CHDATIN6R_INDAT_Field_Array is array (0 .. 1)
     of DFSDM_CHDATIN6R_INDAT_Element
     with Component_Size => 16, Size => 32;

   --  DFSDM channel data input register
   type DFSDM_CHDATIN6R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INDAT as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  INDAT as an array
            Arr : DFSDM_CHDATIN6R_INDAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHDATIN6R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DFSDM_CHDATIN7R_INDAT array element
   subtype DFSDM_CHDATIN7R_INDAT_Element is STM32_SVD.UInt16;

   --  DFSDM_CHDATIN7R_INDAT array
   type DFSDM_CHDATIN7R_INDAT_Field_Array is array (0 .. 1)
     of DFSDM_CHDATIN7R_INDAT_Element
     with Component_Size => 16, Size => 32;

   --  DFSDM channel data input register
   type DFSDM_CHDATIN7R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INDAT as a value
            Val : STM32_SVD.UInt32;
         when True =>
            --  INDAT as an array
            Arr : DFSDM_CHDATIN7R_INDAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DFSDM_CHDATIN7R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype DFSDM0_CR1_DFEN_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR1_JSWSTART_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR1_JSYNC_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR1_JSCAN_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR1_JDMAEN_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR1_JEXTSEL_Field is STM32_SVD.UInt5;
   subtype DFSDM0_CR1_JEXTEN_Field is STM32_SVD.UInt2;
   subtype DFSDM0_CR1_RSWSTART_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR1_RCONT_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR1_RSYNC_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR1_RDMAEN_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR1_RCH_Field is STM32_SVD.UInt3;
   subtype DFSDM0_CR1_FAST_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR1_AWFSEL_Field is STM32_SVD.Bit;

   --  DFSDM control register 1
   type DFSDM0_CR1_Register is record
      --  DFSDM enable
      DFEN           : DFSDM0_CR1_DFEN_Field := 16#0#;
      --  Start a conversion of the injected group of channels
      JSWSTART       : DFSDM0_CR1_JSWSTART_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : STM32_SVD.Bit := 16#0#;
      --  Launch an injected conversion synchronously with the DFSDM0 JSWSTART
      --  trigger
      JSYNC          : DFSDM0_CR1_JSYNC_Field := 16#0#;
      --  Scanning conversion mode for injected conversions
      JSCAN          : DFSDM0_CR1_JSCAN_Field := 16#0#;
      --  DMA channel enabled to read data for the injected channel group
      JDMAEN         : DFSDM0_CR1_JDMAEN_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32_SVD.UInt2 := 16#0#;
      --  Trigger signal selection for launching injected conversions
      JEXTSEL        : DFSDM0_CR1_JEXTSEL_Field := 16#0#;
      --  Trigger enable and trigger edge selection for injected conversions
      JEXTEN         : DFSDM0_CR1_JEXTEN_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : STM32_SVD.UInt2 := 16#0#;
      --  Software start of a conversion on the regular channel
      RSWSTART       : DFSDM0_CR1_RSWSTART_Field := 16#0#;
      --  Continuous mode selection for regular conversions
      RCONT          : DFSDM0_CR1_RCONT_Field := 16#0#;
      --  Launch regular conversion synchronously with DFSDM0
      RSYNC          : DFSDM0_CR1_RSYNC_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : STM32_SVD.Bit := 16#0#;
      --  DMA channel enabled to read data for the regular conversion
      RDMAEN         : DFSDM0_CR1_RDMAEN_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : STM32_SVD.UInt2 := 16#0#;
      --  Regular channel selection
      RCH            : DFSDM0_CR1_RCH_Field := 16#0#;
      --  unspecified
      Reserved_27_28 : STM32_SVD.UInt2 := 16#0#;
      --  Fast conversion mode selection for regular conversions
      FAST           : DFSDM0_CR1_FAST_Field := 16#0#;
      --  Analog watchdog fast mode select
      AWFSEL         : DFSDM0_CR1_AWFSEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_CR1_Register use record
      DFEN           at 0 range 0 .. 0;
      JSWSTART       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JSYNC          at 0 range 3 .. 3;
      JSCAN          at 0 range 4 .. 4;
      JDMAEN         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      JEXTSEL        at 0 range 8 .. 12;
      JEXTEN         at 0 range 13 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      RSWSTART       at 0 range 17 .. 17;
      RCONT          at 0 range 18 .. 18;
      RSYNC          at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      RDMAEN         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RCH            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      FAST           at 0 range 29 .. 29;
      AWFSEL         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DFSDM1_CR1_DFEN_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR1_JSWSTART_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR1_JSYNC_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR1_JSCAN_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR1_JDMAEN_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR1_JEXTSEL_Field is STM32_SVD.UInt5;
   subtype DFSDM1_CR1_JEXTEN_Field is STM32_SVD.UInt2;
   subtype DFSDM1_CR1_RSWSTART_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR1_RCONT_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR1_RSYNC_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR1_RDMAEN_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR1_RCH_Field is STM32_SVD.UInt3;
   subtype DFSDM1_CR1_FAST_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR1_AWFSEL_Field is STM32_SVD.Bit;

   --  DFSDM control register 1
   type DFSDM1_CR1_Register is record
      --  DFSDM enable
      DFEN           : DFSDM1_CR1_DFEN_Field := 16#0#;
      --  Start a conversion of the injected group of channels
      JSWSTART       : DFSDM1_CR1_JSWSTART_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : STM32_SVD.Bit := 16#0#;
      --  Launch an injected conversion synchronously with the DFSDM0 JSWSTART
      --  trigger
      JSYNC          : DFSDM1_CR1_JSYNC_Field := 16#0#;
      --  Scanning conversion mode for injected conversions
      JSCAN          : DFSDM1_CR1_JSCAN_Field := 16#0#;
      --  DMA channel enabled to read data for the injected channel group
      JDMAEN         : DFSDM1_CR1_JDMAEN_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32_SVD.UInt2 := 16#0#;
      --  Trigger signal selection for launching injected conversions
      JEXTSEL        : DFSDM1_CR1_JEXTSEL_Field := 16#0#;
      --  Trigger enable and trigger edge selection for injected conversions
      JEXTEN         : DFSDM1_CR1_JEXTEN_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : STM32_SVD.UInt2 := 16#0#;
      --  Software start of a conversion on the regular channel
      RSWSTART       : DFSDM1_CR1_RSWSTART_Field := 16#0#;
      --  Continuous mode selection for regular conversions
      RCONT          : DFSDM1_CR1_RCONT_Field := 16#0#;
      --  Launch regular conversion synchronously with DFSDM0
      RSYNC          : DFSDM1_CR1_RSYNC_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : STM32_SVD.Bit := 16#0#;
      --  DMA channel enabled to read data for the regular conversion
      RDMAEN         : DFSDM1_CR1_RDMAEN_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : STM32_SVD.UInt2 := 16#0#;
      --  Regular channel selection
      RCH            : DFSDM1_CR1_RCH_Field := 16#0#;
      --  unspecified
      Reserved_27_28 : STM32_SVD.UInt2 := 16#0#;
      --  Fast conversion mode selection for regular conversions
      FAST           : DFSDM1_CR1_FAST_Field := 16#0#;
      --  Analog watchdog fast mode select
      AWFSEL         : DFSDM1_CR1_AWFSEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_CR1_Register use record
      DFEN           at 0 range 0 .. 0;
      JSWSTART       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JSYNC          at 0 range 3 .. 3;
      JSCAN          at 0 range 4 .. 4;
      JDMAEN         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      JEXTSEL        at 0 range 8 .. 12;
      JEXTEN         at 0 range 13 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      RSWSTART       at 0 range 17 .. 17;
      RCONT          at 0 range 18 .. 18;
      RSYNC          at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      RDMAEN         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RCH            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      FAST           at 0 range 29 .. 29;
      AWFSEL         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DFSDM2_CR1_DFEN_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR1_JSWSTART_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR1_JSYNC_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR1_JSCAN_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR1_JDMAEN_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR1_JEXTSEL_Field is STM32_SVD.UInt5;
   subtype DFSDM2_CR1_JEXTEN_Field is STM32_SVD.UInt2;
   subtype DFSDM2_CR1_RSWSTART_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR1_RCONT_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR1_RSYNC_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR1_RDMAEN_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR1_RCH_Field is STM32_SVD.UInt3;
   subtype DFSDM2_CR1_FAST_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR1_AWFSEL_Field is STM32_SVD.Bit;

   --  DFSDM control register 1
   type DFSDM2_CR1_Register is record
      --  DFSDM enable
      DFEN           : DFSDM2_CR1_DFEN_Field := 16#0#;
      --  Start a conversion of the injected group of channels
      JSWSTART       : DFSDM2_CR1_JSWSTART_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : STM32_SVD.Bit := 16#0#;
      --  Launch an injected conversion synchronously with the DFSDM0 JSWSTART
      --  trigger
      JSYNC          : DFSDM2_CR1_JSYNC_Field := 16#0#;
      --  Scanning conversion mode for injected conversions
      JSCAN          : DFSDM2_CR1_JSCAN_Field := 16#0#;
      --  DMA channel enabled to read data for the injected channel group
      JDMAEN         : DFSDM2_CR1_JDMAEN_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32_SVD.UInt2 := 16#0#;
      --  Trigger signal selection for launching injected conversions
      JEXTSEL        : DFSDM2_CR1_JEXTSEL_Field := 16#0#;
      --  Trigger enable and trigger edge selection for injected conversions
      JEXTEN         : DFSDM2_CR1_JEXTEN_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : STM32_SVD.UInt2 := 16#0#;
      --  Software start of a conversion on the regular channel
      RSWSTART       : DFSDM2_CR1_RSWSTART_Field := 16#0#;
      --  Continuous mode selection for regular conversions
      RCONT          : DFSDM2_CR1_RCONT_Field := 16#0#;
      --  Launch regular conversion synchronously with DFSDM0
      RSYNC          : DFSDM2_CR1_RSYNC_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : STM32_SVD.Bit := 16#0#;
      --  DMA channel enabled to read data for the regular conversion
      RDMAEN         : DFSDM2_CR1_RDMAEN_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : STM32_SVD.UInt2 := 16#0#;
      --  Regular channel selection
      RCH            : DFSDM2_CR1_RCH_Field := 16#0#;
      --  unspecified
      Reserved_27_28 : STM32_SVD.UInt2 := 16#0#;
      --  Fast conversion mode selection for regular conversions
      FAST           : DFSDM2_CR1_FAST_Field := 16#0#;
      --  Analog watchdog fast mode select
      AWFSEL         : DFSDM2_CR1_AWFSEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_CR1_Register use record
      DFEN           at 0 range 0 .. 0;
      JSWSTART       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JSYNC          at 0 range 3 .. 3;
      JSCAN          at 0 range 4 .. 4;
      JDMAEN         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      JEXTSEL        at 0 range 8 .. 12;
      JEXTEN         at 0 range 13 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      RSWSTART       at 0 range 17 .. 17;
      RCONT          at 0 range 18 .. 18;
      RSYNC          at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      RDMAEN         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RCH            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      FAST           at 0 range 29 .. 29;
      AWFSEL         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DFSDM3_CR1_DFEN_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR1_JSWSTART_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR1_JSYNC_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR1_JSCAN_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR1_JDMAEN_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR1_JEXTSEL_Field is STM32_SVD.UInt5;
   subtype DFSDM3_CR1_JEXTEN_Field is STM32_SVD.UInt2;
   subtype DFSDM3_CR1_RSWSTART_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR1_RCONT_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR1_RSYNC_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR1_RDMAEN_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR1_RCH_Field is STM32_SVD.UInt3;
   subtype DFSDM3_CR1_FAST_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR1_AWFSEL_Field is STM32_SVD.Bit;

   --  DFSDM control register 1
   type DFSDM3_CR1_Register is record
      --  DFSDM enable
      DFEN           : DFSDM3_CR1_DFEN_Field := 16#0#;
      --  Start a conversion of the injected group of channels
      JSWSTART       : DFSDM3_CR1_JSWSTART_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : STM32_SVD.Bit := 16#0#;
      --  Launch an injected conversion synchronously with the DFSDM0 JSWSTART
      --  trigger
      JSYNC          : DFSDM3_CR1_JSYNC_Field := 16#0#;
      --  Scanning conversion mode for injected conversions
      JSCAN          : DFSDM3_CR1_JSCAN_Field := 16#0#;
      --  DMA channel enabled to read data for the injected channel group
      JDMAEN         : DFSDM3_CR1_JDMAEN_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32_SVD.UInt2 := 16#0#;
      --  Trigger signal selection for launching injected conversions
      JEXTSEL        : DFSDM3_CR1_JEXTSEL_Field := 16#0#;
      --  Trigger enable and trigger edge selection for injected conversions
      JEXTEN         : DFSDM3_CR1_JEXTEN_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : STM32_SVD.UInt2 := 16#0#;
      --  Software start of a conversion on the regular channel
      RSWSTART       : DFSDM3_CR1_RSWSTART_Field := 16#0#;
      --  Continuous mode selection for regular conversions
      RCONT          : DFSDM3_CR1_RCONT_Field := 16#0#;
      --  Launch regular conversion synchronously with DFSDM0
      RSYNC          : DFSDM3_CR1_RSYNC_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : STM32_SVD.Bit := 16#0#;
      --  DMA channel enabled to read data for the regular conversion
      RDMAEN         : DFSDM3_CR1_RDMAEN_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : STM32_SVD.UInt2 := 16#0#;
      --  Regular channel selection
      RCH            : DFSDM3_CR1_RCH_Field := 16#0#;
      --  unspecified
      Reserved_27_28 : STM32_SVD.UInt2 := 16#0#;
      --  Fast conversion mode selection for regular conversions
      FAST           : DFSDM3_CR1_FAST_Field := 16#0#;
      --  Analog watchdog fast mode select
      AWFSEL         : DFSDM3_CR1_AWFSEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_CR1_Register use record
      DFEN           at 0 range 0 .. 0;
      JSWSTART       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JSYNC          at 0 range 3 .. 3;
      JSCAN          at 0 range 4 .. 4;
      JDMAEN         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      JEXTSEL        at 0 range 8 .. 12;
      JEXTEN         at 0 range 13 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      RSWSTART       at 0 range 17 .. 17;
      RCONT          at 0 range 18 .. 18;
      RSYNC          at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      RDMAEN         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RCH            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      FAST           at 0 range 29 .. 29;
      AWFSEL         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DFSDM0_CR2_JEOCIE_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR2_REOCIE_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR2_JOVRIE_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR2_ROVRIE_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR2_AWDIE_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR2_SCDIE_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR2_CKABIE_Field is STM32_SVD.Bit;
   subtype DFSDM0_CR2_EXCH_Field is STM32_SVD.Byte;
   subtype DFSDM0_CR2_AWDCH_Field is STM32_SVD.Byte;

   --  DFSDM control register 2
   type DFSDM0_CR2_Register is record
      --  Injected end of conversion interrupt enable
      JEOCIE         : DFSDM0_CR2_JEOCIE_Field := 16#0#;
      --  Regular end of conversion interrupt enable
      REOCIE         : DFSDM0_CR2_REOCIE_Field := 16#0#;
      --  Injected data overrun interrupt enable
      JOVRIE         : DFSDM0_CR2_JOVRIE_Field := 16#0#;
      --  Regular data overrun interrupt enable
      ROVRIE         : DFSDM0_CR2_ROVRIE_Field := 16#0#;
      --  Analog watchdog interrupt enable
      AWDIE          : DFSDM0_CR2_AWDIE_Field := 16#0#;
      --  Short-circuit detector interrupt enable
      SCDIE          : DFSDM0_CR2_SCDIE_Field := 16#0#;
      --  Clock absence interrupt enable
      CKABIE         : DFSDM0_CR2_CKABIE_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  Extremes detector channel selection
      EXCH           : DFSDM0_CR2_EXCH_Field := 16#0#;
      --  Analog watchdog channel selection
      AWDCH          : DFSDM0_CR2_AWDCH_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_CR2_Register use record
      JEOCIE         at 0 range 0 .. 0;
      REOCIE         at 0 range 1 .. 1;
      JOVRIE         at 0 range 2 .. 2;
      ROVRIE         at 0 range 3 .. 3;
      AWDIE          at 0 range 4 .. 4;
      SCDIE          at 0 range 5 .. 5;
      CKABIE         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EXCH           at 0 range 8 .. 15;
      AWDCH          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM1_CR2_JEOCIE_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR2_REOCIE_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR2_JOVRIE_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR2_ROVRIE_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR2_AWDIE_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR2_SCDIE_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR2_CKABIE_Field is STM32_SVD.Bit;
   subtype DFSDM1_CR2_EXCH_Field is STM32_SVD.Byte;
   subtype DFSDM1_CR2_AWDCH_Field is STM32_SVD.Byte;

   --  DFSDM control register 2
   type DFSDM1_CR2_Register is record
      --  Injected end of conversion interrupt enable
      JEOCIE         : DFSDM1_CR2_JEOCIE_Field := 16#0#;
      --  Regular end of conversion interrupt enable
      REOCIE         : DFSDM1_CR2_REOCIE_Field := 16#0#;
      --  Injected data overrun interrupt enable
      JOVRIE         : DFSDM1_CR2_JOVRIE_Field := 16#0#;
      --  Regular data overrun interrupt enable
      ROVRIE         : DFSDM1_CR2_ROVRIE_Field := 16#0#;
      --  Analog watchdog interrupt enable
      AWDIE          : DFSDM1_CR2_AWDIE_Field := 16#0#;
      --  Short-circuit detector interrupt enable
      SCDIE          : DFSDM1_CR2_SCDIE_Field := 16#0#;
      --  Clock absence interrupt enable
      CKABIE         : DFSDM1_CR2_CKABIE_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  Extremes detector channel selection
      EXCH           : DFSDM1_CR2_EXCH_Field := 16#0#;
      --  Analog watchdog channel selection
      AWDCH          : DFSDM1_CR2_AWDCH_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_CR2_Register use record
      JEOCIE         at 0 range 0 .. 0;
      REOCIE         at 0 range 1 .. 1;
      JOVRIE         at 0 range 2 .. 2;
      ROVRIE         at 0 range 3 .. 3;
      AWDIE          at 0 range 4 .. 4;
      SCDIE          at 0 range 5 .. 5;
      CKABIE         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EXCH           at 0 range 8 .. 15;
      AWDCH          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM2_CR2_JEOCIE_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR2_REOCIE_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR2_JOVRIE_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR2_ROVRIE_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR2_AWDIE_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR2_SCDIE_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR2_CKABIE_Field is STM32_SVD.Bit;
   subtype DFSDM2_CR2_EXCH_Field is STM32_SVD.Byte;
   subtype DFSDM2_CR2_AWDCH_Field is STM32_SVD.Byte;

   --  DFSDM control register 2
   type DFSDM2_CR2_Register is record
      --  Injected end of conversion interrupt enable
      JEOCIE         : DFSDM2_CR2_JEOCIE_Field := 16#0#;
      --  Regular end of conversion interrupt enable
      REOCIE         : DFSDM2_CR2_REOCIE_Field := 16#0#;
      --  Injected data overrun interrupt enable
      JOVRIE         : DFSDM2_CR2_JOVRIE_Field := 16#0#;
      --  Regular data overrun interrupt enable
      ROVRIE         : DFSDM2_CR2_ROVRIE_Field := 16#0#;
      --  Analog watchdog interrupt enable
      AWDIE          : DFSDM2_CR2_AWDIE_Field := 16#0#;
      --  Short-circuit detector interrupt enable
      SCDIE          : DFSDM2_CR2_SCDIE_Field := 16#0#;
      --  Clock absence interrupt enable
      CKABIE         : DFSDM2_CR2_CKABIE_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  Extremes detector channel selection
      EXCH           : DFSDM2_CR2_EXCH_Field := 16#0#;
      --  Analog watchdog channel selection
      AWDCH          : DFSDM2_CR2_AWDCH_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_CR2_Register use record
      JEOCIE         at 0 range 0 .. 0;
      REOCIE         at 0 range 1 .. 1;
      JOVRIE         at 0 range 2 .. 2;
      ROVRIE         at 0 range 3 .. 3;
      AWDIE          at 0 range 4 .. 4;
      SCDIE          at 0 range 5 .. 5;
      CKABIE         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EXCH           at 0 range 8 .. 15;
      AWDCH          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM3_CR2_JEOCIE_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR2_REOCIE_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR2_JOVRIE_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR2_ROVRIE_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR2_AWDIE_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR2_SCDIE_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR2_CKABIE_Field is STM32_SVD.Bit;
   subtype DFSDM3_CR2_EXCH_Field is STM32_SVD.Byte;
   subtype DFSDM3_CR2_AWDCH_Field is STM32_SVD.Byte;

   --  DFSDM control register 2
   type DFSDM3_CR2_Register is record
      --  Injected end of conversion interrupt enable
      JEOCIE         : DFSDM3_CR2_JEOCIE_Field := 16#0#;
      --  Regular end of conversion interrupt enable
      REOCIE         : DFSDM3_CR2_REOCIE_Field := 16#0#;
      --  Injected data overrun interrupt enable
      JOVRIE         : DFSDM3_CR2_JOVRIE_Field := 16#0#;
      --  Regular data overrun interrupt enable
      ROVRIE         : DFSDM3_CR2_ROVRIE_Field := 16#0#;
      --  Analog watchdog interrupt enable
      AWDIE          : DFSDM3_CR2_AWDIE_Field := 16#0#;
      --  Short-circuit detector interrupt enable
      SCDIE          : DFSDM3_CR2_SCDIE_Field := 16#0#;
      --  Clock absence interrupt enable
      CKABIE         : DFSDM3_CR2_CKABIE_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  Extremes detector channel selection
      EXCH           : DFSDM3_CR2_EXCH_Field := 16#0#;
      --  Analog watchdog channel selection
      AWDCH          : DFSDM3_CR2_AWDCH_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_CR2_Register use record
      JEOCIE         at 0 range 0 .. 0;
      REOCIE         at 0 range 1 .. 1;
      JOVRIE         at 0 range 2 .. 2;
      ROVRIE         at 0 range 3 .. 3;
      AWDIE          at 0 range 4 .. 4;
      SCDIE          at 0 range 5 .. 5;
      CKABIE         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EXCH           at 0 range 8 .. 15;
      AWDCH          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DFSDM0_ISR_JEOCF_Field is STM32_SVD.Bit;
   subtype DFSDM0_ISR_REOCF_Field is STM32_SVD.Bit;
   subtype DFSDM0_ISR_JOVRF_Field is STM32_SVD.Bit;
   subtype DFSDM0_ISR_ROVRF_Field is STM32_SVD.Bit;
   subtype DFSDM0_ISR_AWDF_Field is STM32_SVD.Bit;
   subtype DFSDM0_ISR_JCIP_Field is STM32_SVD.Bit;
   subtype DFSDM0_ISR_RCIP_Field is STM32_SVD.Bit;
   subtype DFSDM0_ISR_CKABF_Field is STM32_SVD.Byte;
   subtype DFSDM0_ISR_SCDF_Field is STM32_SVD.Byte;

   --  DFSDM interrupt and status register
   type DFSDM0_ISR_Register is record
      --  Read-only. End of injected conversion flag
      JEOCF          : DFSDM0_ISR_JEOCF_Field;
      --  Read-only. End of regular conversion flag
      REOCF          : DFSDM0_ISR_REOCF_Field;
      --  Read-only. Injected conversion overrun flag
      JOVRF          : DFSDM0_ISR_JOVRF_Field;
      --  Read-only. Regular conversion overrun flag
      ROVRF          : DFSDM0_ISR_ROVRF_Field;
      --  Read-only. Analog watchdog
      AWDF           : DFSDM0_ISR_AWDF_Field;
      --  unspecified
      Reserved_5_12  : STM32_SVD.Byte;
      --  Read-only. Injected conversion in progress status
      JCIP           : DFSDM0_ISR_JCIP_Field;
      --  Read-only. Regular conversion in progress status
      RCIP           : DFSDM0_ISR_RCIP_Field;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit;
      --  Read-only. Clock absence flag
      CKABF          : DFSDM0_ISR_CKABF_Field;
      --  Read-only. short-circuit detector flag
      SCDF           : DFSDM0_ISR_SCDF_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_ISR_Register use record
      JEOCF          at 0 range 0 .. 0;
      REOCF          at 0 range 1 .. 1;
      JOVRF          at 0 range 2 .. 2;
      ROVRF          at 0 range 3 .. 3;
      AWDF           at 0 range 4 .. 4;
      Reserved_5_12  at 0 range 5 .. 12;
      JCIP           at 0 range 13 .. 13;
      RCIP           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CKABF          at 0 range 16 .. 23;
      SCDF           at 0 range 24 .. 31;
   end record;

   subtype DFSDM1_ISR_JEOCF_Field is STM32_SVD.Bit;
   subtype DFSDM1_ISR_REOCF_Field is STM32_SVD.Bit;
   subtype DFSDM1_ISR_JOVRF_Field is STM32_SVD.Bit;
   subtype DFSDM1_ISR_ROVRF_Field is STM32_SVD.Bit;
   subtype DFSDM1_ISR_AWDF_Field is STM32_SVD.Bit;
   subtype DFSDM1_ISR_JCIP_Field is STM32_SVD.Bit;
   subtype DFSDM1_ISR_RCIP_Field is STM32_SVD.Bit;
   subtype DFSDM1_ISR_CKABF_Field is STM32_SVD.Byte;
   subtype DFSDM1_ISR_SCDF_Field is STM32_SVD.Byte;

   --  DFSDM interrupt and status register
   type DFSDM1_ISR_Register is record
      --  Read-only. End of injected conversion flag
      JEOCF          : DFSDM1_ISR_JEOCF_Field;
      --  Read-only. End of regular conversion flag
      REOCF          : DFSDM1_ISR_REOCF_Field;
      --  Read-only. Injected conversion overrun flag
      JOVRF          : DFSDM1_ISR_JOVRF_Field;
      --  Read-only. Regular conversion overrun flag
      ROVRF          : DFSDM1_ISR_ROVRF_Field;
      --  Read-only. Analog watchdog
      AWDF           : DFSDM1_ISR_AWDF_Field;
      --  unspecified
      Reserved_5_12  : STM32_SVD.Byte;
      --  Read-only. Injected conversion in progress status
      JCIP           : DFSDM1_ISR_JCIP_Field;
      --  Read-only. Regular conversion in progress status
      RCIP           : DFSDM1_ISR_RCIP_Field;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit;
      --  Read-only. Clock absence flag
      CKABF          : DFSDM1_ISR_CKABF_Field;
      --  Read-only. short-circuit detector flag
      SCDF           : DFSDM1_ISR_SCDF_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_ISR_Register use record
      JEOCF          at 0 range 0 .. 0;
      REOCF          at 0 range 1 .. 1;
      JOVRF          at 0 range 2 .. 2;
      ROVRF          at 0 range 3 .. 3;
      AWDF           at 0 range 4 .. 4;
      Reserved_5_12  at 0 range 5 .. 12;
      JCIP           at 0 range 13 .. 13;
      RCIP           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CKABF          at 0 range 16 .. 23;
      SCDF           at 0 range 24 .. 31;
   end record;

   subtype DFSDM2_ISR_JEOCF_Field is STM32_SVD.Bit;
   subtype DFSDM2_ISR_REOCF_Field is STM32_SVD.Bit;
   subtype DFSDM2_ISR_JOVRF_Field is STM32_SVD.Bit;
   subtype DFSDM2_ISR_ROVRF_Field is STM32_SVD.Bit;
   subtype DFSDM2_ISR_AWDF_Field is STM32_SVD.Bit;
   subtype DFSDM2_ISR_JCIP_Field is STM32_SVD.Bit;
   subtype DFSDM2_ISR_RCIP_Field is STM32_SVD.Bit;
   subtype DFSDM2_ISR_CKABF_Field is STM32_SVD.Byte;
   subtype DFSDM2_ISR_SCDF_Field is STM32_SVD.Byte;

   --  DFSDM interrupt and status register
   type DFSDM2_ISR_Register is record
      --  Read-only. End of injected conversion flag
      JEOCF          : DFSDM2_ISR_JEOCF_Field;
      --  Read-only. End of regular conversion flag
      REOCF          : DFSDM2_ISR_REOCF_Field;
      --  Read-only. Injected conversion overrun flag
      JOVRF          : DFSDM2_ISR_JOVRF_Field;
      --  Read-only. Regular conversion overrun flag
      ROVRF          : DFSDM2_ISR_ROVRF_Field;
      --  Read-only. Analog watchdog
      AWDF           : DFSDM2_ISR_AWDF_Field;
      --  unspecified
      Reserved_5_12  : STM32_SVD.Byte;
      --  Read-only. Injected conversion in progress status
      JCIP           : DFSDM2_ISR_JCIP_Field;
      --  Read-only. Regular conversion in progress status
      RCIP           : DFSDM2_ISR_RCIP_Field;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit;
      --  Read-only. Clock absence flag
      CKABF          : DFSDM2_ISR_CKABF_Field;
      --  Read-only. short-circuit detector flag
      SCDF           : DFSDM2_ISR_SCDF_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_ISR_Register use record
      JEOCF          at 0 range 0 .. 0;
      REOCF          at 0 range 1 .. 1;
      JOVRF          at 0 range 2 .. 2;
      ROVRF          at 0 range 3 .. 3;
      AWDF           at 0 range 4 .. 4;
      Reserved_5_12  at 0 range 5 .. 12;
      JCIP           at 0 range 13 .. 13;
      RCIP           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CKABF          at 0 range 16 .. 23;
      SCDF           at 0 range 24 .. 31;
   end record;

   subtype DFSDM3_ISR_JEOCF_Field is STM32_SVD.Bit;
   subtype DFSDM3_ISR_REOCF_Field is STM32_SVD.Bit;
   subtype DFSDM3_ISR_JOVRF_Field is STM32_SVD.Bit;
   subtype DFSDM3_ISR_ROVRF_Field is STM32_SVD.Bit;
   subtype DFSDM3_ISR_AWDF_Field is STM32_SVD.Bit;
   subtype DFSDM3_ISR_JCIP_Field is STM32_SVD.Bit;
   subtype DFSDM3_ISR_RCIP_Field is STM32_SVD.Bit;
   subtype DFSDM3_ISR_CKABF_Field is STM32_SVD.Byte;
   subtype DFSDM3_ISR_SCDF_Field is STM32_SVD.Byte;

   --  DFSDM interrupt and status register
   type DFSDM3_ISR_Register is record
      --  Read-only. End of injected conversion flag
      JEOCF          : DFSDM3_ISR_JEOCF_Field;
      --  Read-only. End of regular conversion flag
      REOCF          : DFSDM3_ISR_REOCF_Field;
      --  Read-only. Injected conversion overrun flag
      JOVRF          : DFSDM3_ISR_JOVRF_Field;
      --  Read-only. Regular conversion overrun flag
      ROVRF          : DFSDM3_ISR_ROVRF_Field;
      --  Read-only. Analog watchdog
      AWDF           : DFSDM3_ISR_AWDF_Field;
      --  unspecified
      Reserved_5_12  : STM32_SVD.Byte;
      --  Read-only. Injected conversion in progress status
      JCIP           : DFSDM3_ISR_JCIP_Field;
      --  Read-only. Regular conversion in progress status
      RCIP           : DFSDM3_ISR_RCIP_Field;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit;
      --  Read-only. Clock absence flag
      CKABF          : DFSDM3_ISR_CKABF_Field;
      --  Read-only. short-circuit detector flag
      SCDF           : DFSDM3_ISR_SCDF_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_ISR_Register use record
      JEOCF          at 0 range 0 .. 0;
      REOCF          at 0 range 1 .. 1;
      JOVRF          at 0 range 2 .. 2;
      ROVRF          at 0 range 3 .. 3;
      AWDF           at 0 range 4 .. 4;
      Reserved_5_12  at 0 range 5 .. 12;
      JCIP           at 0 range 13 .. 13;
      RCIP           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CKABF          at 0 range 16 .. 23;
      SCDF           at 0 range 24 .. 31;
   end record;

   subtype DFSDM0_ICR_CLRJOVRF_Field is STM32_SVD.Bit;
   subtype DFSDM0_ICR_CLRROVRF_Field is STM32_SVD.Bit;
   subtype DFSDM0_ICR_CLRCKABF_Field is STM32_SVD.Byte;
   subtype DFSDM0_ICR_CLRSCDF_Field is STM32_SVD.Byte;

   --  DFSDM interrupt flag clear register
   type DFSDM0_ICR_Register is record
      --  unspecified
      Reserved_0_1  : STM32_SVD.UInt2 := 16#0#;
      --  Clear the injected conversion overrun flag
      CLRJOVRF      : DFSDM0_ICR_CLRJOVRF_Field := 16#0#;
      --  Clear the regular conversion overrun flag
      CLRROVRF      : DFSDM0_ICR_CLRROVRF_Field := 16#0#;
      --  unspecified
      Reserved_4_15 : STM32_SVD.UInt12 := 16#0#;
      --  Clear the clock absence flag
      CLRCKABF      : DFSDM0_ICR_CLRCKABF_Field := 16#0#;
      --  Clear the short-circuit detector flag
      CLRSCDF       : DFSDM0_ICR_CLRSCDF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_ICR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      CLRJOVRF      at 0 range 2 .. 2;
      CLRROVRF      at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
      CLRCKABF      at 0 range 16 .. 23;
      CLRSCDF       at 0 range 24 .. 31;
   end record;

   subtype DFSDM1_ICR_CLRJOVRF_Field is STM32_SVD.Bit;
   subtype DFSDM1_ICR_CLRROVRF_Field is STM32_SVD.Bit;
   subtype DFSDM1_ICR_CLRCKABF_Field is STM32_SVD.Byte;
   subtype DFSDM1_ICR_CLRSCDF_Field is STM32_SVD.Byte;

   --  DFSDM interrupt flag clear register
   type DFSDM1_ICR_Register is record
      --  unspecified
      Reserved_0_1  : STM32_SVD.UInt2 := 16#0#;
      --  Clear the injected conversion overrun flag
      CLRJOVRF      : DFSDM1_ICR_CLRJOVRF_Field := 16#0#;
      --  Clear the regular conversion overrun flag
      CLRROVRF      : DFSDM1_ICR_CLRROVRF_Field := 16#0#;
      --  unspecified
      Reserved_4_15 : STM32_SVD.UInt12 := 16#0#;
      --  Clear the clock absence flag
      CLRCKABF      : DFSDM1_ICR_CLRCKABF_Field := 16#0#;
      --  Clear the short-circuit detector flag
      CLRSCDF       : DFSDM1_ICR_CLRSCDF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_ICR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      CLRJOVRF      at 0 range 2 .. 2;
      CLRROVRF      at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
      CLRCKABF      at 0 range 16 .. 23;
      CLRSCDF       at 0 range 24 .. 31;
   end record;

   subtype DFSDM2_ICR_CLRJOVRF_Field is STM32_SVD.Bit;
   subtype DFSDM2_ICR_CLRROVRF_Field is STM32_SVD.Bit;
   subtype DFSDM2_ICR_CLRCKABF_Field is STM32_SVD.Byte;
   subtype DFSDM2_ICR_CLRSCDF_Field is STM32_SVD.Byte;

   --  DFSDM interrupt flag clear register
   type DFSDM2_ICR_Register is record
      --  unspecified
      Reserved_0_1  : STM32_SVD.UInt2 := 16#0#;
      --  Clear the injected conversion overrun flag
      CLRJOVRF      : DFSDM2_ICR_CLRJOVRF_Field := 16#0#;
      --  Clear the regular conversion overrun flag
      CLRROVRF      : DFSDM2_ICR_CLRROVRF_Field := 16#0#;
      --  unspecified
      Reserved_4_15 : STM32_SVD.UInt12 := 16#0#;
      --  Clear the clock absence flag
      CLRCKABF      : DFSDM2_ICR_CLRCKABF_Field := 16#0#;
      --  Clear the short-circuit detector flag
      CLRSCDF       : DFSDM2_ICR_CLRSCDF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_ICR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      CLRJOVRF      at 0 range 2 .. 2;
      CLRROVRF      at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
      CLRCKABF      at 0 range 16 .. 23;
      CLRSCDF       at 0 range 24 .. 31;
   end record;

   subtype DFSDM3_ICR_CLRJOVRF_Field is STM32_SVD.Bit;
   subtype DFSDM3_ICR_CLRROVRF_Field is STM32_SVD.Bit;
   subtype DFSDM3_ICR_CLRCKABF_Field is STM32_SVD.Byte;
   subtype DFSDM3_ICR_CLRSCDF_Field is STM32_SVD.Byte;

   --  DFSDM interrupt flag clear register
   type DFSDM3_ICR_Register is record
      --  unspecified
      Reserved_0_1  : STM32_SVD.UInt2 := 16#0#;
      --  Clear the injected conversion overrun flag
      CLRJOVRF      : DFSDM3_ICR_CLRJOVRF_Field := 16#0#;
      --  Clear the regular conversion overrun flag
      CLRROVRF      : DFSDM3_ICR_CLRROVRF_Field := 16#0#;
      --  unspecified
      Reserved_4_15 : STM32_SVD.UInt12 := 16#0#;
      --  Clear the clock absence flag
      CLRCKABF      : DFSDM3_ICR_CLRCKABF_Field := 16#0#;
      --  Clear the short-circuit detector flag
      CLRSCDF       : DFSDM3_ICR_CLRSCDF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_ICR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      CLRJOVRF      at 0 range 2 .. 2;
      CLRROVRF      at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
      CLRCKABF      at 0 range 16 .. 23;
      CLRSCDF       at 0 range 24 .. 31;
   end record;

   subtype DFSDM0_JCHGR_JCHG_Field is STM32_SVD.Byte;

   --  DFSDM injected channel group selection register
   type DFSDM0_JCHGR_Register is record
      --  Injected channel group selection
      JCHG          : DFSDM0_JCHGR_JCHG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_JCHGR_Register use record
      JCHG          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DFSDM1_JCHGR_JCHG_Field is STM32_SVD.Byte;

   --  DFSDM injected channel group selection register
   type DFSDM1_JCHGR_Register is record
      --  Injected channel group selection
      JCHG          : DFSDM1_JCHGR_JCHG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_JCHGR_Register use record
      JCHG          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DFSDM2_JCHGR_JCHG_Field is STM32_SVD.Byte;

   --  DFSDM injected channel group selection register
   type DFSDM2_JCHGR_Register is record
      --  Injected channel group selection
      JCHG          : DFSDM2_JCHGR_JCHG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_JCHGR_Register use record
      JCHG          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DFSDM3_JCHGR_JCHG_Field is STM32_SVD.Byte;

   --  DFSDM injected channel group selection register
   type DFSDM3_JCHGR_Register is record
      --  Injected channel group selection
      JCHG          : DFSDM3_JCHGR_JCHG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_JCHGR_Register use record
      JCHG          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DFSDM0_FCR_IOSR_Field is STM32_SVD.Byte;
   subtype DFSDM0_FCR_FOSR_Field is STM32_SVD.UInt10;
   subtype DFSDM0_FCR_FORD_Field is STM32_SVD.UInt3;

   --  DFSDM filter control register
   type DFSDM0_FCR_Register is record
      --  Integrator oversampling ratio (averaging length)
      IOSR           : DFSDM0_FCR_IOSR_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : STM32_SVD.Byte := 16#0#;
      --  Sinc filter oversampling ratio (decimation rate)
      FOSR           : DFSDM0_FCR_FOSR_Field := 16#0#;
      --  unspecified
      Reserved_26_28 : STM32_SVD.UInt3 := 16#0#;
      --  Sinc filter order
      FORD           : DFSDM0_FCR_FORD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_FCR_Register use record
      IOSR           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      FOSR           at 0 range 16 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      FORD           at 0 range 29 .. 31;
   end record;

   subtype DFSDM1_FCR_IOSR_Field is STM32_SVD.Byte;
   subtype DFSDM1_FCR_FOSR_Field is STM32_SVD.UInt10;
   subtype DFSDM1_FCR_FORD_Field is STM32_SVD.UInt3;

   --  DFSDM filter control register
   type DFSDM1_FCR_Register is record
      --  Integrator oversampling ratio (averaging length)
      IOSR           : DFSDM1_FCR_IOSR_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : STM32_SVD.Byte := 16#0#;
      --  Sinc filter oversampling ratio (decimation rate)
      FOSR           : DFSDM1_FCR_FOSR_Field := 16#0#;
      --  unspecified
      Reserved_26_28 : STM32_SVD.UInt3 := 16#0#;
      --  Sinc filter order
      FORD           : DFSDM1_FCR_FORD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_FCR_Register use record
      IOSR           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      FOSR           at 0 range 16 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      FORD           at 0 range 29 .. 31;
   end record;

   subtype DFSDM2_FCR_IOSR_Field is STM32_SVD.Byte;
   subtype DFSDM2_FCR_FOSR_Field is STM32_SVD.UInt10;
   subtype DFSDM2_FCR_FORD_Field is STM32_SVD.UInt3;

   --  DFSDM filter control register
   type DFSDM2_FCR_Register is record
      --  Integrator oversampling ratio (averaging length)
      IOSR           : DFSDM2_FCR_IOSR_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : STM32_SVD.Byte := 16#0#;
      --  Sinc filter oversampling ratio (decimation rate)
      FOSR           : DFSDM2_FCR_FOSR_Field := 16#0#;
      --  unspecified
      Reserved_26_28 : STM32_SVD.UInt3 := 16#0#;
      --  Sinc filter order
      FORD           : DFSDM2_FCR_FORD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_FCR_Register use record
      IOSR           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      FOSR           at 0 range 16 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      FORD           at 0 range 29 .. 31;
   end record;

   subtype DFSDM3_FCR_IOSR_Field is STM32_SVD.Byte;
   subtype DFSDM3_FCR_FOSR_Field is STM32_SVD.UInt10;
   subtype DFSDM3_FCR_FORD_Field is STM32_SVD.UInt3;

   --  DFSDM filter control register
   type DFSDM3_FCR_Register is record
      --  Integrator oversampling ratio (averaging length)
      IOSR           : DFSDM3_FCR_IOSR_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : STM32_SVD.Byte := 16#0#;
      --  Sinc filter oversampling ratio (decimation rate)
      FOSR           : DFSDM3_FCR_FOSR_Field := 16#0#;
      --  unspecified
      Reserved_26_28 : STM32_SVD.UInt3 := 16#0#;
      --  Sinc filter order
      FORD           : DFSDM3_FCR_FORD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_FCR_Register use record
      IOSR           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      FOSR           at 0 range 16 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      FORD           at 0 range 29 .. 31;
   end record;

   subtype DFSDM0_JDATAR_JDATACH_Field is STM32_SVD.UInt3;
   subtype DFSDM0_JDATAR_JDATA_Field is STM32_SVD.UInt24;

   --  DFSDM data register for injected group
   type DFSDM0_JDATAR_Register is record
      --  Read-only. Injected channel most recently converted
      JDATACH      : DFSDM0_JDATAR_JDATACH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Injected group conversion data
      JDATA        : DFSDM0_JDATAR_JDATA_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_JDATAR_Register use record
      JDATACH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      JDATA        at 0 range 8 .. 31;
   end record;

   subtype DFSDM1_JDATAR_JDATACH_Field is STM32_SVD.UInt3;
   subtype DFSDM1_JDATAR_JDATA_Field is STM32_SVD.UInt24;

   --  DFSDM data register for injected group
   type DFSDM1_JDATAR_Register is record
      --  Read-only. Injected channel most recently converted
      JDATACH      : DFSDM1_JDATAR_JDATACH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Injected group conversion data
      JDATA        : DFSDM1_JDATAR_JDATA_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_JDATAR_Register use record
      JDATACH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      JDATA        at 0 range 8 .. 31;
   end record;

   subtype DFSDM2_JDATAR_JDATACH_Field is STM32_SVD.UInt3;
   subtype DFSDM2_JDATAR_JDATA_Field is STM32_SVD.UInt24;

   --  DFSDM data register for injected group
   type DFSDM2_JDATAR_Register is record
      --  Read-only. Injected channel most recently converted
      JDATACH      : DFSDM2_JDATAR_JDATACH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Injected group conversion data
      JDATA        : DFSDM2_JDATAR_JDATA_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_JDATAR_Register use record
      JDATACH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      JDATA        at 0 range 8 .. 31;
   end record;

   subtype DFSDM3_JDATAR_JDATACH_Field is STM32_SVD.UInt3;
   subtype DFSDM3_JDATAR_JDATA_Field is STM32_SVD.UInt24;

   --  DFSDM data register for injected group
   type DFSDM3_JDATAR_Register is record
      --  Read-only. Injected channel most recently converted
      JDATACH      : DFSDM3_JDATAR_JDATACH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Injected group conversion data
      JDATA        : DFSDM3_JDATAR_JDATA_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_JDATAR_Register use record
      JDATACH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      JDATA        at 0 range 8 .. 31;
   end record;

   subtype DFSDM0_RDATAR_RDATACH_Field is STM32_SVD.UInt3;
   subtype DFSDM0_RDATAR_RPEND_Field is STM32_SVD.Bit;
   subtype DFSDM0_RDATAR_RDATA_Field is STM32_SVD.UInt24;

   --  DFSDM data register for the regular channel
   type DFSDM0_RDATAR_Register is record
      --  Read-only. Regular channel most recently converted
      RDATACH      : DFSDM0_RDATAR_RDATACH_Field;
      --  unspecified
      Reserved_3_3 : STM32_SVD.Bit;
      --  Read-only. Regular channel pending data
      RPEND        : DFSDM0_RDATAR_RPEND_Field;
      --  unspecified
      Reserved_5_7 : STM32_SVD.UInt3;
      --  Read-only. Regular channel conversion data
      RDATA        : DFSDM0_RDATAR_RDATA_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_RDATAR_Register use record
      RDATACH      at 0 range 0 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      RPEND        at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
      RDATA        at 0 range 8 .. 31;
   end record;

   subtype DFSDM1_RDATAR_RDATACH_Field is STM32_SVD.UInt3;
   subtype DFSDM1_RDATAR_RPEND_Field is STM32_SVD.Bit;
   subtype DFSDM1_RDATAR_RDATA_Field is STM32_SVD.UInt24;

   --  DFSDM data register for the regular channel
   type DFSDM1_RDATAR_Register is record
      --  Read-only. Regular channel most recently converted
      RDATACH      : DFSDM1_RDATAR_RDATACH_Field;
      --  unspecified
      Reserved_3_3 : STM32_SVD.Bit;
      --  Read-only. Regular channel pending data
      RPEND        : DFSDM1_RDATAR_RPEND_Field;
      --  unspecified
      Reserved_5_7 : STM32_SVD.UInt3;
      --  Read-only. Regular channel conversion data
      RDATA        : DFSDM1_RDATAR_RDATA_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_RDATAR_Register use record
      RDATACH      at 0 range 0 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      RPEND        at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
      RDATA        at 0 range 8 .. 31;
   end record;

   subtype DFSDM2_RDATAR_RDATACH_Field is STM32_SVD.UInt3;
   subtype DFSDM2_RDATAR_RPEND_Field is STM32_SVD.Bit;
   subtype DFSDM2_RDATAR_RDATA_Field is STM32_SVD.UInt24;

   --  DFSDM data register for the regular channel
   type DFSDM2_RDATAR_Register is record
      --  Read-only. Regular channel most recently converted
      RDATACH      : DFSDM2_RDATAR_RDATACH_Field;
      --  unspecified
      Reserved_3_3 : STM32_SVD.Bit;
      --  Read-only. Regular channel pending data
      RPEND        : DFSDM2_RDATAR_RPEND_Field;
      --  unspecified
      Reserved_5_7 : STM32_SVD.UInt3;
      --  Read-only. Regular channel conversion data
      RDATA        : DFSDM2_RDATAR_RDATA_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_RDATAR_Register use record
      RDATACH      at 0 range 0 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      RPEND        at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
      RDATA        at 0 range 8 .. 31;
   end record;

   subtype DFSDM3_RDATAR_RDATACH_Field is STM32_SVD.UInt3;
   subtype DFSDM3_RDATAR_RPEND_Field is STM32_SVD.Bit;
   subtype DFSDM3_RDATAR_RDATA_Field is STM32_SVD.UInt24;

   --  DFSDM data register for the regular channel
   type DFSDM3_RDATAR_Register is record
      --  Read-only. Regular channel most recently converted
      RDATACH      : DFSDM3_RDATAR_RDATACH_Field;
      --  unspecified
      Reserved_3_3 : STM32_SVD.Bit;
      --  Read-only. Regular channel pending data
      RPEND        : DFSDM3_RDATAR_RPEND_Field;
      --  unspecified
      Reserved_5_7 : STM32_SVD.UInt3;
      --  Read-only. Regular channel conversion data
      RDATA        : DFSDM3_RDATAR_RDATA_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_RDATAR_Register use record
      RDATACH      at 0 range 0 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      RPEND        at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
      RDATA        at 0 range 8 .. 31;
   end record;

   subtype DFSDM0_AWHTR_BKAWH_Field is STM32_SVD.UInt4;
   subtype DFSDM0_AWHTR_AWHT_Field is STM32_SVD.UInt24;

   --  DFSDM analog watchdog high threshold register
   type DFSDM0_AWHTR_Register is record
      --  Break signal assignment to analog watchdog high threshold event
      BKAWH        : DFSDM0_AWHTR_BKAWH_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : STM32_SVD.UInt4 := 16#0#;
      --  Analog watchdog high threshold
      AWHT         : DFSDM0_AWHTR_AWHT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_AWHTR_Register use record
      BKAWH        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      AWHT         at 0 range 8 .. 31;
   end record;

   subtype DFSDM1_AWHTR_BKAWH_Field is STM32_SVD.UInt4;
   subtype DFSDM1_AWHTR_AWHT_Field is STM32_SVD.UInt24;

   --  DFSDM analog watchdog high threshold register
   type DFSDM1_AWHTR_Register is record
      --  Break signal assignment to analog watchdog high threshold event
      BKAWH        : DFSDM1_AWHTR_BKAWH_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : STM32_SVD.UInt4 := 16#0#;
      --  Analog watchdog high threshold
      AWHT         : DFSDM1_AWHTR_AWHT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_AWHTR_Register use record
      BKAWH        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      AWHT         at 0 range 8 .. 31;
   end record;

   subtype DFSDM2_AWHTR_BKAWH_Field is STM32_SVD.UInt4;
   subtype DFSDM2_AWHTR_AWHT_Field is STM32_SVD.UInt24;

   --  DFSDM analog watchdog high threshold register
   type DFSDM2_AWHTR_Register is record
      --  Break signal assignment to analog watchdog high threshold event
      BKAWH        : DFSDM2_AWHTR_BKAWH_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : STM32_SVD.UInt4 := 16#0#;
      --  Analog watchdog high threshold
      AWHT         : DFSDM2_AWHTR_AWHT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_AWHTR_Register use record
      BKAWH        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      AWHT         at 0 range 8 .. 31;
   end record;

   subtype DFSDM3_AWHTR_BKAWH_Field is STM32_SVD.UInt4;
   subtype DFSDM3_AWHTR_AWHT_Field is STM32_SVD.UInt24;

   --  DFSDM analog watchdog high threshold register
   type DFSDM3_AWHTR_Register is record
      --  Break signal assignment to analog watchdog high threshold event
      BKAWH        : DFSDM3_AWHTR_BKAWH_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : STM32_SVD.UInt4 := 16#0#;
      --  Analog watchdog high threshold
      AWHT         : DFSDM3_AWHTR_AWHT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_AWHTR_Register use record
      BKAWH        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      AWHT         at 0 range 8 .. 31;
   end record;

   subtype DFSDM0_AWLTR_BKAWL_Field is STM32_SVD.UInt4;
   subtype DFSDM0_AWLTR_AWLT_Field is STM32_SVD.UInt24;

   --  DFSDM analog watchdog low threshold register
   type DFSDM0_AWLTR_Register is record
      --  Break signal assignment to analog watchdog low threshold event
      BKAWL        : DFSDM0_AWLTR_BKAWL_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : STM32_SVD.UInt4 := 16#0#;
      --  Analog watchdog low threshold
      AWLT         : DFSDM0_AWLTR_AWLT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_AWLTR_Register use record
      BKAWL        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      AWLT         at 0 range 8 .. 31;
   end record;

   subtype DFSDM1_AWLTR_BKAWL_Field is STM32_SVD.UInt4;
   subtype DFSDM1_AWLTR_AWLT_Field is STM32_SVD.UInt24;

   --  DFSDM analog watchdog low threshold register
   type DFSDM1_AWLTR_Register is record
      --  Break signal assignment to analog watchdog low threshold event
      BKAWL        : DFSDM1_AWLTR_BKAWL_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : STM32_SVD.UInt4 := 16#0#;
      --  Analog watchdog low threshold
      AWLT         : DFSDM1_AWLTR_AWLT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_AWLTR_Register use record
      BKAWL        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      AWLT         at 0 range 8 .. 31;
   end record;

   subtype DFSDM2_AWLTR_BKAWL_Field is STM32_SVD.UInt4;
   subtype DFSDM2_AWLTR_AWLT_Field is STM32_SVD.UInt24;

   --  DFSDM analog watchdog low threshold register
   type DFSDM2_AWLTR_Register is record
      --  Break signal assignment to analog watchdog low threshold event
      BKAWL        : DFSDM2_AWLTR_BKAWL_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : STM32_SVD.UInt4 := 16#0#;
      --  Analog watchdog low threshold
      AWLT         : DFSDM2_AWLTR_AWLT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_AWLTR_Register use record
      BKAWL        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      AWLT         at 0 range 8 .. 31;
   end record;

   subtype DFSDM3_AWLTR_BKAWL_Field is STM32_SVD.UInt4;
   subtype DFSDM3_AWLTR_AWLT_Field is STM32_SVD.UInt24;

   --  DFSDM analog watchdog low threshold register
   type DFSDM3_AWLTR_Register is record
      --  Break signal assignment to analog watchdog low threshold event
      BKAWL        : DFSDM3_AWLTR_BKAWL_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : STM32_SVD.UInt4 := 16#0#;
      --  Analog watchdog low threshold
      AWLT         : DFSDM3_AWLTR_AWLT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_AWLTR_Register use record
      BKAWL        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      AWLT         at 0 range 8 .. 31;
   end record;

   subtype DFSDM0_AWSR_AWLTF_Field is STM32_SVD.Byte;
   subtype DFSDM0_AWSR_AWHTF_Field is STM32_SVD.Byte;

   --  DFSDM analog watchdog status register
   type DFSDM0_AWSR_Register is record
      --  Read-only. Analog watchdog low threshold flag
      AWLTF          : DFSDM0_AWSR_AWLTF_Field;
      --  Read-only. Analog watchdog high threshold flag
      AWHTF          : DFSDM0_AWSR_AWHTF_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_AWSR_Register use record
      AWLTF          at 0 range 0 .. 7;
      AWHTF          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM1_AWSR_AWLTF_Field is STM32_SVD.Byte;
   subtype DFSDM1_AWSR_AWHTF_Field is STM32_SVD.Byte;

   --  DFSDM analog watchdog status register
   type DFSDM1_AWSR_Register is record
      --  Read-only. Analog watchdog low threshold flag
      AWLTF          : DFSDM1_AWSR_AWLTF_Field;
      --  Read-only. Analog watchdog high threshold flag
      AWHTF          : DFSDM1_AWSR_AWHTF_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_AWSR_Register use record
      AWLTF          at 0 range 0 .. 7;
      AWHTF          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM2_AWSR_AWLTF_Field is STM32_SVD.Byte;
   subtype DFSDM2_AWSR_AWHTF_Field is STM32_SVD.Byte;

   --  DFSDM analog watchdog status register
   type DFSDM2_AWSR_Register is record
      --  Read-only. Analog watchdog low threshold flag
      AWLTF          : DFSDM2_AWSR_AWLTF_Field;
      --  Read-only. Analog watchdog high threshold flag
      AWHTF          : DFSDM2_AWSR_AWHTF_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_AWSR_Register use record
      AWLTF          at 0 range 0 .. 7;
      AWHTF          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM3_AWSR_AWLTF_Field is STM32_SVD.Byte;
   subtype DFSDM3_AWSR_AWHTF_Field is STM32_SVD.Byte;

   --  DFSDM analog watchdog status register
   type DFSDM3_AWSR_Register is record
      --  Read-only. Analog watchdog low threshold flag
      AWLTF          : DFSDM3_AWSR_AWLTF_Field;
      --  Read-only. Analog watchdog high threshold flag
      AWHTF          : DFSDM3_AWSR_AWHTF_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_AWSR_Register use record
      AWLTF          at 0 range 0 .. 7;
      AWHTF          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM0_AWCFR_CLRAWLTF_Field is STM32_SVD.Byte;
   subtype DFSDM0_AWCFR_CLRAWHTF_Field is STM32_SVD.Byte;

   --  DFSDM analog watchdog clear flag register
   type DFSDM0_AWCFR_Register is record
      --  Clear the analog watchdog low threshold flag
      CLRAWLTF       : DFSDM0_AWCFR_CLRAWLTF_Field := 16#0#;
      --  Clear the analog watchdog high threshold flag
      CLRAWHTF       : DFSDM0_AWCFR_CLRAWHTF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_AWCFR_Register use record
      CLRAWLTF       at 0 range 0 .. 7;
      CLRAWHTF       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM1_AWCFR_CLRAWLTF_Field is STM32_SVD.Byte;
   subtype DFSDM1_AWCFR_CLRAWHTF_Field is STM32_SVD.Byte;

   --  DFSDM analog watchdog clear flag register
   type DFSDM1_AWCFR_Register is record
      --  Clear the analog watchdog low threshold flag
      CLRAWLTF       : DFSDM1_AWCFR_CLRAWLTF_Field := 16#0#;
      --  Clear the analog watchdog high threshold flag
      CLRAWHTF       : DFSDM1_AWCFR_CLRAWHTF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_AWCFR_Register use record
      CLRAWLTF       at 0 range 0 .. 7;
      CLRAWHTF       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM2_AWCFR_CLRAWLTF_Field is STM32_SVD.Byte;
   subtype DFSDM2_AWCFR_CLRAWHTF_Field is STM32_SVD.Byte;

   --  DFSDM analog watchdog clear flag register
   type DFSDM2_AWCFR_Register is record
      --  Clear the analog watchdog low threshold flag
      CLRAWLTF       : DFSDM2_AWCFR_CLRAWLTF_Field := 16#0#;
      --  Clear the analog watchdog high threshold flag
      CLRAWHTF       : DFSDM2_AWCFR_CLRAWHTF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_AWCFR_Register use record
      CLRAWLTF       at 0 range 0 .. 7;
      CLRAWHTF       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM3_AWCFR_CLRAWLTF_Field is STM32_SVD.Byte;
   subtype DFSDM3_AWCFR_CLRAWHTF_Field is STM32_SVD.Byte;

   --  DFSDM analog watchdog clear flag register
   type DFSDM3_AWCFR_Register is record
      --  Clear the analog watchdog low threshold flag
      CLRAWLTF       : DFSDM3_AWCFR_CLRAWLTF_Field := 16#0#;
      --  Clear the analog watchdog high threshold flag
      CLRAWHTF       : DFSDM3_AWCFR_CLRAWHTF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_AWCFR_Register use record
      CLRAWLTF       at 0 range 0 .. 7;
      CLRAWHTF       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DFSDM0_EXMAX_EXMAXCH_Field is STM32_SVD.UInt3;
   subtype DFSDM0_EXMAX_EXMAX_Field is STM32_SVD.UInt24;

   --  DFSDM Extremes detector maximum register
   type DFSDM0_EXMAX_Register is record
      --  Read-only. Extremes detector maximum data channel
      EXMAXCH      : DFSDM0_EXMAX_EXMAXCH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Extremes detector maximum value
      EXMAX        : DFSDM0_EXMAX_EXMAX_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_EXMAX_Register use record
      EXMAXCH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      EXMAX        at 0 range 8 .. 31;
   end record;

   subtype DFSDM1_EXMAX_EXMAXCH_Field is STM32_SVD.UInt3;
   subtype DFSDM1_EXMAX_EXMAX_Field is STM32_SVD.UInt24;

   --  DFSDM Extremes detector maximum register
   type DFSDM1_EXMAX_Register is record
      --  Read-only. Extremes detector maximum data channel
      EXMAXCH      : DFSDM1_EXMAX_EXMAXCH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Extremes detector maximum value
      EXMAX        : DFSDM1_EXMAX_EXMAX_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_EXMAX_Register use record
      EXMAXCH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      EXMAX        at 0 range 8 .. 31;
   end record;

   subtype DFSDM2_EXMAX_EXMAXCH_Field is STM32_SVD.UInt3;
   subtype DFSDM2_EXMAX_EXMAX_Field is STM32_SVD.UInt24;

   --  DFSDM Extremes detector maximum register
   type DFSDM2_EXMAX_Register is record
      --  Read-only. Extremes detector maximum data channel
      EXMAXCH      : DFSDM2_EXMAX_EXMAXCH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Extremes detector maximum value
      EXMAX        : DFSDM2_EXMAX_EXMAX_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_EXMAX_Register use record
      EXMAXCH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      EXMAX        at 0 range 8 .. 31;
   end record;

   subtype DFSDM3_EXMAX_EXMAXCH_Field is STM32_SVD.UInt3;
   subtype DFSDM3_EXMAX_EXMAX_Field is STM32_SVD.UInt24;

   --  DFSDM Extremes detector maximum register
   type DFSDM3_EXMAX_Register is record
      --  Read-only. Extremes detector maximum data channel
      EXMAXCH      : DFSDM3_EXMAX_EXMAXCH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Extremes detector maximum value
      EXMAX        : DFSDM3_EXMAX_EXMAX_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_EXMAX_Register use record
      EXMAXCH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      EXMAX        at 0 range 8 .. 31;
   end record;

   subtype DFSDM0_EXMIN_EXMINCH_Field is STM32_SVD.UInt3;
   subtype DFSDM0_EXMIN_EXMIN_Field is STM32_SVD.UInt24;

   --  DFSDM Extremes detector minimum register
   type DFSDM0_EXMIN_Register is record
      --  Read-only. Extremes detector minimum data channel
      EXMINCH      : DFSDM0_EXMIN_EXMINCH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Extremes detector minimum value
      EXMIN        : DFSDM0_EXMIN_EXMIN_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_EXMIN_Register use record
      EXMINCH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      EXMIN        at 0 range 8 .. 31;
   end record;

   subtype DFSDM1_EXMIN_EXMINCH_Field is STM32_SVD.UInt3;
   subtype DFSDM1_EXMIN_EXMIN_Field is STM32_SVD.UInt24;

   --  DFSDM Extremes detector minimum register
   type DFSDM1_EXMIN_Register is record
      --  Read-only. Extremes detector minimum data channel
      EXMINCH      : DFSDM1_EXMIN_EXMINCH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Extremes detector minimum value
      EXMIN        : DFSDM1_EXMIN_EXMIN_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_EXMIN_Register use record
      EXMINCH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      EXMIN        at 0 range 8 .. 31;
   end record;

   subtype DFSDM2_EXMIN_EXMINCH_Field is STM32_SVD.UInt3;
   subtype DFSDM2_EXMIN_EXMIN_Field is STM32_SVD.UInt24;

   --  DFSDM Extremes detector minimum register
   type DFSDM2_EXMIN_Register is record
      --  Read-only. Extremes detector minimum data channel
      EXMINCH      : DFSDM2_EXMIN_EXMINCH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Extremes detector minimum value
      EXMIN        : DFSDM2_EXMIN_EXMIN_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_EXMIN_Register use record
      EXMINCH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      EXMIN        at 0 range 8 .. 31;
   end record;

   subtype DFSDM3_EXMIN_EXMINCH_Field is STM32_SVD.UInt3;
   subtype DFSDM3_EXMIN_EXMIN_Field is STM32_SVD.UInt24;

   --  DFSDM Extremes detector minimum register
   type DFSDM3_EXMIN_Register is record
      --  Read-only. Extremes detector minimum data channel
      EXMINCH      : DFSDM3_EXMIN_EXMINCH_Field;
      --  unspecified
      Reserved_3_7 : STM32_SVD.UInt5;
      --  Read-only. Extremes detector minimum value
      EXMIN        : DFSDM3_EXMIN_EXMIN_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_EXMIN_Register use record
      EXMINCH      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      EXMIN        at 0 range 8 .. 31;
   end record;

   subtype DFSDM0_CNVTIMR_CNVCNT_Field is STM32_SVD.UInt28;

   --  DFSDM conversion timer register
   type DFSDM0_CNVTIMR_Register is record
      --  unspecified
      Reserved_0_3 : STM32_SVD.UInt4;
      --  Read-only. 28-bit timer counting conversion time
      CNVCNT       : DFSDM0_CNVTIMR_CNVCNT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM0_CNVTIMR_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      CNVCNT       at 0 range 4 .. 31;
   end record;

   subtype DFSDM1_CNVTIMR_CNVCNT_Field is STM32_SVD.UInt28;

   --  DFSDM conversion timer register
   type DFSDM1_CNVTIMR_Register is record
      --  unspecified
      Reserved_0_3 : STM32_SVD.UInt4;
      --  Read-only. 28-bit timer counting conversion time
      CNVCNT       : DFSDM1_CNVTIMR_CNVCNT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM1_CNVTIMR_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      CNVCNT       at 0 range 4 .. 31;
   end record;

   subtype DFSDM2_CNVTIMR_CNVCNT_Field is STM32_SVD.UInt28;

   --  DFSDM conversion timer register
   type DFSDM2_CNVTIMR_Register is record
      --  unspecified
      Reserved_0_3 : STM32_SVD.UInt4;
      --  Read-only. 28-bit timer counting conversion time
      CNVCNT       : DFSDM2_CNVTIMR_CNVCNT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM2_CNVTIMR_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      CNVCNT       at 0 range 4 .. 31;
   end record;

   subtype DFSDM3_CNVTIMR_CNVCNT_Field is STM32_SVD.UInt28;

   --  DFSDM conversion timer register
   type DFSDM3_CNVTIMR_Register is record
      --  unspecified
      Reserved_0_3 : STM32_SVD.UInt4;
      --  Read-only. 28-bit timer counting conversion time
      CNVCNT       : DFSDM3_CNVTIMR_CNVCNT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSDM3_CNVTIMR_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      CNVCNT       at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital filter for sigma delta modulators
   type DFSDM_Peripheral is record
      --  DFSDM channel configuration 0 register 1
      DFSDM_CHCFG0R1  : aliased DFSDM_CHCFG0R1_Register;
      --  DFSDM channel configuration 1 register 1
      DFSDM_CHCFG1R1  : aliased DFSDM_CHCFG1R1_Register;
      --  DFSDM channel configuration 2 register 1
      DFSDM_CHCFG2R1  : aliased DFSDM_CHCFG2R1_Register;
      --  DFSDM channel configuration 3 register 1
      DFSDM_CHCFG3R1  : aliased DFSDM_CHCFG3R1_Register;
      --  DFSDM channel configuration 4 register 1
      DFSDM_CHCFG4R1  : aliased DFSDM_CHCFG4R1_Register;
      --  DFSDM channel configuration 5 register 1
      DFSDM_CHCFG5R1  : aliased DFSDM_CHCFG5R1_Register;
      --  DFSDM channel configuration 6 register 1
      DFSDM_CHCFG6R1  : aliased DFSDM_CHCFG6R1_Register;
      --  DFSDM channel configuration 7 register 1
      DFSDM_CHCFG7R1  : aliased DFSDM_CHCFG7R1_Register;
      --  DFSDM channel configuration 0 register 2
      DFSDM_CHCFG0R2  : aliased DFSDM_CHCFG0R2_Register;
      --  DFSDM channel configuration 1 register 2
      DFSDM_CHCFG1R2  : aliased DFSDM_CHCFG1R2_Register;
      --  DFSDM channel configuration 2 register 2
      DFSDM_CHCFG2R2  : aliased DFSDM_CHCFG2R2_Register;
      --  DFSDM channel configuration 3 register 2
      DFSDM_CHCFG3R2  : aliased DFSDM_CHCFG3R2_Register;
      --  DFSDM channel configuration 4 register 2
      DFSDM_CHCFG4R2  : aliased DFSDM_CHCFG4R2_Register;
      --  DFSDM channel configuration 5 register 2
      DFSDM_CHCFG5R2  : aliased DFSDM_CHCFG5R2_Register;
      --  DFSDM channel configuration 6 register 2
      DFSDM_CHCFG6R2  : aliased DFSDM_CHCFG6R2_Register;
      --  DFSDM channel configuration 7 register 2
      DFSDM_CHCFG7R2  : aliased DFSDM_CHCFG7R2_Register;
      --  DFSDM analog watchdog and short-circuit detector register
      DFSDM_AWSCD0R   : aliased DFSDM_AWSCD0R_Register;
      --  DFSDM analog watchdog and short-circuit detector register
      DFSDM_AWSCD1R   : aliased DFSDM_AWSCD1R_Register;
      --  DFSDM analog watchdog and short-circuit detector register
      DFSDM_AWSCD2R   : aliased DFSDM_AWSCD2R_Register;
      --  DFSDM analog watchdog and short-circuit detector register
      DFSDM_AWSCD3R   : aliased DFSDM_AWSCD3R_Register;
      --  DFSDM analog watchdog and short-circuit detector register
      DFSDM_AWSCD4R   : aliased DFSDM_AWSCD4R_Register;
      --  DFSDM analog watchdog and short-circuit detector register
      DFSDM_AWSCD5R   : aliased DFSDM_AWSCD5R_Register;
      --  DFSDM analog watchdog and short-circuit detector register
      DFSDM_AWSCD6R   : aliased DFSDM_AWSCD6R_Register;
      --  DFSDM analog watchdog and short-circuit detector register
      DFSDM_AWSCD7R   : aliased DFSDM_AWSCD7R_Register;
      --  DFSDM channel watchdog filter data register
      DFSDM_CHWDAT0R  : aliased DFSDM_CHWDAT0R_Register;
      --  DFSDM channel watchdog filter data register
      DFSDM_CHWDAT1R  : aliased DFSDM_CHWDAT1R_Register;
      --  DFSDM channel watchdog filter data register
      DFSDM_CHWDAT2R  : aliased DFSDM_CHWDAT2R_Register;
      --  DFSDM channel watchdog filter data register
      DFSDM_CHWDAT3R  : aliased DFSDM_CHWDAT3R_Register;
      --  DFSDM channel watchdog filter data register
      DFSDM_CHWDAT4R  : aliased DFSDM_CHWDAT4R_Register;
      --  DFSDM channel watchdog filter data register
      DFSDM_CHWDAT5R  : aliased DFSDM_CHWDAT5R_Register;
      --  DFSDM channel watchdog filter data register
      DFSDM_CHWDAT6R  : aliased DFSDM_CHWDAT6R_Register;
      --  DFSDM channel watchdog filter data register
      DFSDM_CHWDAT7R  : aliased DFSDM_CHWDAT7R_Register;
      --  DFSDM channel data input register
      DFSDM_CHDATIN0R : aliased DFSDM_CHDATIN0R_Register;
      --  DFSDM channel data input register
      DFSDM_CHDATIN1R : aliased DFSDM_CHDATIN1R_Register;
      --  DFSDM channel data input register
      DFSDM_CHDATIN2R : aliased DFSDM_CHDATIN2R_Register;
      --  DFSDM channel data input register
      DFSDM_CHDATIN3R : aliased DFSDM_CHDATIN3R_Register;
      --  DFSDM channel data input register
      DFSDM_CHDATIN4R : aliased DFSDM_CHDATIN4R_Register;
      --  DFSDM channel data input register
      DFSDM_CHDATIN5R : aliased DFSDM_CHDATIN5R_Register;
      --  DFSDM channel data input register
      DFSDM_CHDATIN6R : aliased DFSDM_CHDATIN6R_Register;
      --  DFSDM channel data input register
      DFSDM_CHDATIN7R : aliased DFSDM_CHDATIN7R_Register;
      --  DFSDM control register 1
      DFSDM0_CR1      : aliased DFSDM0_CR1_Register;
      --  DFSDM control register 1
      DFSDM1_CR1      : aliased DFSDM1_CR1_Register;
      --  DFSDM control register 1
      DFSDM2_CR1      : aliased DFSDM2_CR1_Register;
      --  DFSDM control register 1
      DFSDM3_CR1      : aliased DFSDM3_CR1_Register;
      --  DFSDM control register 2
      DFSDM0_CR2      : aliased DFSDM0_CR2_Register;
      --  DFSDM control register 2
      DFSDM1_CR2      : aliased DFSDM1_CR2_Register;
      --  DFSDM control register 2
      DFSDM2_CR2      : aliased DFSDM2_CR2_Register;
      --  DFSDM control register 2
      DFSDM3_CR2      : aliased DFSDM3_CR2_Register;
      --  DFSDM interrupt and status register
      DFSDM0_ISR      : aliased DFSDM0_ISR_Register;
      --  DFSDM interrupt and status register
      DFSDM1_ISR      : aliased DFSDM1_ISR_Register;
      --  DFSDM interrupt and status register
      DFSDM2_ISR      : aliased DFSDM2_ISR_Register;
      --  DFSDM interrupt and status register
      DFSDM3_ISR      : aliased DFSDM3_ISR_Register;
      --  DFSDM interrupt flag clear register
      DFSDM0_ICR      : aliased DFSDM0_ICR_Register;
      --  DFSDM interrupt flag clear register
      DFSDM1_ICR      : aliased DFSDM1_ICR_Register;
      --  DFSDM interrupt flag clear register
      DFSDM2_ICR      : aliased DFSDM2_ICR_Register;
      --  DFSDM interrupt flag clear register
      DFSDM3_ICR      : aliased DFSDM3_ICR_Register;
      --  DFSDM injected channel group selection register
      DFSDM0_JCHGR    : aliased DFSDM0_JCHGR_Register;
      --  DFSDM injected channel group selection register
      DFSDM1_JCHGR    : aliased DFSDM1_JCHGR_Register;
      --  DFSDM injected channel group selection register
      DFSDM2_JCHGR    : aliased DFSDM2_JCHGR_Register;
      --  DFSDM injected channel group selection register
      DFSDM3_JCHGR    : aliased DFSDM3_JCHGR_Register;
      --  DFSDM filter control register
      DFSDM0_FCR      : aliased DFSDM0_FCR_Register;
      --  DFSDM filter control register
      DFSDM1_FCR      : aliased DFSDM1_FCR_Register;
      --  DFSDM filter control register
      DFSDM2_FCR      : aliased DFSDM2_FCR_Register;
      --  DFSDM filter control register
      DFSDM3_FCR      : aliased DFSDM3_FCR_Register;
      --  DFSDM data register for injected group
      DFSDM0_JDATAR   : aliased DFSDM0_JDATAR_Register;
      --  DFSDM data register for injected group
      DFSDM1_JDATAR   : aliased DFSDM1_JDATAR_Register;
      --  DFSDM data register for injected group
      DFSDM2_JDATAR   : aliased DFSDM2_JDATAR_Register;
      --  DFSDM data register for injected group
      DFSDM3_JDATAR   : aliased DFSDM3_JDATAR_Register;
      --  DFSDM data register for the regular channel
      DFSDM0_RDATAR   : aliased DFSDM0_RDATAR_Register;
      --  DFSDM data register for the regular channel
      DFSDM1_RDATAR   : aliased DFSDM1_RDATAR_Register;
      --  DFSDM data register for the regular channel
      DFSDM2_RDATAR   : aliased DFSDM2_RDATAR_Register;
      --  DFSDM data register for the regular channel
      DFSDM3_RDATAR   : aliased DFSDM3_RDATAR_Register;
      --  DFSDM analog watchdog high threshold register
      DFSDM0_AWHTR    : aliased DFSDM0_AWHTR_Register;
      --  DFSDM analog watchdog high threshold register
      DFSDM1_AWHTR    : aliased DFSDM1_AWHTR_Register;
      --  DFSDM analog watchdog high threshold register
      DFSDM2_AWHTR    : aliased DFSDM2_AWHTR_Register;
      --  DFSDM analog watchdog high threshold register
      DFSDM3_AWHTR    : aliased DFSDM3_AWHTR_Register;
      --  DFSDM analog watchdog low threshold register
      DFSDM0_AWLTR    : aliased DFSDM0_AWLTR_Register;
      --  DFSDM analog watchdog low threshold register
      DFSDM1_AWLTR    : aliased DFSDM1_AWLTR_Register;
      --  DFSDM analog watchdog low threshold register
      DFSDM2_AWLTR    : aliased DFSDM2_AWLTR_Register;
      --  DFSDM analog watchdog low threshold register
      DFSDM3_AWLTR    : aliased DFSDM3_AWLTR_Register;
      --  DFSDM analog watchdog status register
      DFSDM0_AWSR     : aliased DFSDM0_AWSR_Register;
      --  DFSDM analog watchdog status register
      DFSDM1_AWSR     : aliased DFSDM1_AWSR_Register;
      --  DFSDM analog watchdog status register
      DFSDM2_AWSR     : aliased DFSDM2_AWSR_Register;
      --  DFSDM analog watchdog status register
      DFSDM3_AWSR     : aliased DFSDM3_AWSR_Register;
      --  DFSDM analog watchdog clear flag register
      DFSDM0_AWCFR    : aliased DFSDM0_AWCFR_Register;
      --  DFSDM analog watchdog clear flag register
      DFSDM1_AWCFR    : aliased DFSDM1_AWCFR_Register;
      --  DFSDM analog watchdog clear flag register
      DFSDM2_AWCFR    : aliased DFSDM2_AWCFR_Register;
      --  DFSDM analog watchdog clear flag register
      DFSDM3_AWCFR    : aliased DFSDM3_AWCFR_Register;
      --  DFSDM Extremes detector maximum register
      DFSDM0_EXMAX    : aliased DFSDM0_EXMAX_Register;
      --  DFSDM Extremes detector maximum register
      DFSDM1_EXMAX    : aliased DFSDM1_EXMAX_Register;
      --  DFSDM Extremes detector maximum register
      DFSDM2_EXMAX    : aliased DFSDM2_EXMAX_Register;
      --  DFSDM Extremes detector maximum register
      DFSDM3_EXMAX    : aliased DFSDM3_EXMAX_Register;
      --  DFSDM Extremes detector minimum register
      DFSDM0_EXMIN    : aliased DFSDM0_EXMIN_Register;
      --  DFSDM Extremes detector minimum register
      DFSDM1_EXMIN    : aliased DFSDM1_EXMIN_Register;
      --  DFSDM Extremes detector minimum register
      DFSDM2_EXMIN    : aliased DFSDM2_EXMIN_Register;
      --  DFSDM Extremes detector minimum register
      DFSDM3_EXMIN    : aliased DFSDM3_EXMIN_Register;
      --  DFSDM conversion timer register
      DFSDM0_CNVTIMR  : aliased DFSDM0_CNVTIMR_Register;
      --  DFSDM conversion timer register
      DFSDM1_CNVTIMR  : aliased DFSDM1_CNVTIMR_Register;
      --  DFSDM conversion timer register
      DFSDM2_CNVTIMR  : aliased DFSDM2_CNVTIMR_Register;
      --  DFSDM conversion timer register
      DFSDM3_CNVTIMR  : aliased DFSDM3_CNVTIMR_Register;
   end record
     with Volatile;

   for DFSDM_Peripheral use record
      DFSDM_CHCFG0R1  at 16#0# range 0 .. 31;
      DFSDM_CHCFG1R1  at 16#4# range 0 .. 31;
      DFSDM_CHCFG2R1  at 16#8# range 0 .. 31;
      DFSDM_CHCFG3R1  at 16#C# range 0 .. 31;
      DFSDM_CHCFG4R1  at 16#10# range 0 .. 31;
      DFSDM_CHCFG5R1  at 16#14# range 0 .. 31;
      DFSDM_CHCFG6R1  at 16#18# range 0 .. 31;
      DFSDM_CHCFG7R1  at 16#1C# range 0 .. 31;
      DFSDM_CHCFG0R2  at 16#20# range 0 .. 31;
      DFSDM_CHCFG1R2  at 16#24# range 0 .. 31;
      DFSDM_CHCFG2R2  at 16#28# range 0 .. 31;
      DFSDM_CHCFG3R2  at 16#2C# range 0 .. 31;
      DFSDM_CHCFG4R2  at 16#30# range 0 .. 31;
      DFSDM_CHCFG5R2  at 16#34# range 0 .. 31;
      DFSDM_CHCFG6R2  at 16#38# range 0 .. 31;
      DFSDM_CHCFG7R2  at 16#3C# range 0 .. 31;
      DFSDM_AWSCD0R   at 16#40# range 0 .. 31;
      DFSDM_AWSCD1R   at 16#44# range 0 .. 31;
      DFSDM_AWSCD2R   at 16#48# range 0 .. 31;
      DFSDM_AWSCD3R   at 16#4C# range 0 .. 31;
      DFSDM_AWSCD4R   at 16#50# range 0 .. 31;
      DFSDM_AWSCD5R   at 16#54# range 0 .. 31;
      DFSDM_AWSCD6R   at 16#58# range 0 .. 31;
      DFSDM_AWSCD7R   at 16#5C# range 0 .. 31;
      DFSDM_CHWDAT0R  at 16#60# range 0 .. 31;
      DFSDM_CHWDAT1R  at 16#64# range 0 .. 31;
      DFSDM_CHWDAT2R  at 16#68# range 0 .. 31;
      DFSDM_CHWDAT3R  at 16#6C# range 0 .. 31;
      DFSDM_CHWDAT4R  at 16#70# range 0 .. 31;
      DFSDM_CHWDAT5R  at 16#74# range 0 .. 31;
      DFSDM_CHWDAT6R  at 16#78# range 0 .. 31;
      DFSDM_CHWDAT7R  at 16#7C# range 0 .. 31;
      DFSDM_CHDATIN0R at 16#80# range 0 .. 31;
      DFSDM_CHDATIN1R at 16#84# range 0 .. 31;
      DFSDM_CHDATIN2R at 16#88# range 0 .. 31;
      DFSDM_CHDATIN3R at 16#8C# range 0 .. 31;
      DFSDM_CHDATIN4R at 16#90# range 0 .. 31;
      DFSDM_CHDATIN5R at 16#94# range 0 .. 31;
      DFSDM_CHDATIN6R at 16#98# range 0 .. 31;
      DFSDM_CHDATIN7R at 16#9C# range 0 .. 31;
      DFSDM0_CR1      at 16#A0# range 0 .. 31;
      DFSDM1_CR1      at 16#A4# range 0 .. 31;
      DFSDM2_CR1      at 16#A8# range 0 .. 31;
      DFSDM3_CR1      at 16#AC# range 0 .. 31;
      DFSDM0_CR2      at 16#B0# range 0 .. 31;
      DFSDM1_CR2      at 16#B4# range 0 .. 31;
      DFSDM2_CR2      at 16#B8# range 0 .. 31;
      DFSDM3_CR2      at 16#BC# range 0 .. 31;
      DFSDM0_ISR      at 16#C0# range 0 .. 31;
      DFSDM1_ISR      at 16#C4# range 0 .. 31;
      DFSDM2_ISR      at 16#C8# range 0 .. 31;
      DFSDM3_ISR      at 16#CC# range 0 .. 31;
      DFSDM0_ICR      at 16#D0# range 0 .. 31;
      DFSDM1_ICR      at 16#D4# range 0 .. 31;
      DFSDM2_ICR      at 16#D8# range 0 .. 31;
      DFSDM3_ICR      at 16#DC# range 0 .. 31;
      DFSDM0_JCHGR    at 16#E0# range 0 .. 31;
      DFSDM1_JCHGR    at 16#E4# range 0 .. 31;
      DFSDM2_JCHGR    at 16#E8# range 0 .. 31;
      DFSDM3_JCHGR    at 16#EC# range 0 .. 31;
      DFSDM0_FCR      at 16#F0# range 0 .. 31;
      DFSDM1_FCR      at 16#F4# range 0 .. 31;
      DFSDM2_FCR      at 16#F8# range 0 .. 31;
      DFSDM3_FCR      at 16#FC# range 0 .. 31;
      DFSDM0_JDATAR   at 16#100# range 0 .. 31;
      DFSDM1_JDATAR   at 16#104# range 0 .. 31;
      DFSDM2_JDATAR   at 16#108# range 0 .. 31;
      DFSDM3_JDATAR   at 16#10C# range 0 .. 31;
      DFSDM0_RDATAR   at 16#110# range 0 .. 31;
      DFSDM1_RDATAR   at 16#114# range 0 .. 31;
      DFSDM2_RDATAR   at 16#118# range 0 .. 31;
      DFSDM3_RDATAR   at 16#11C# range 0 .. 31;
      DFSDM0_AWHTR    at 16#120# range 0 .. 31;
      DFSDM1_AWHTR    at 16#124# range 0 .. 31;
      DFSDM2_AWHTR    at 16#128# range 0 .. 31;
      DFSDM3_AWHTR    at 16#12C# range 0 .. 31;
      DFSDM0_AWLTR    at 16#130# range 0 .. 31;
      DFSDM1_AWLTR    at 16#134# range 0 .. 31;
      DFSDM2_AWLTR    at 16#138# range 0 .. 31;
      DFSDM3_AWLTR    at 16#13C# range 0 .. 31;
      DFSDM0_AWSR     at 16#140# range 0 .. 31;
      DFSDM1_AWSR     at 16#144# range 0 .. 31;
      DFSDM2_AWSR     at 16#148# range 0 .. 31;
      DFSDM3_AWSR     at 16#14C# range 0 .. 31;
      DFSDM0_AWCFR    at 16#150# range 0 .. 31;
      DFSDM1_AWCFR    at 16#154# range 0 .. 31;
      DFSDM2_AWCFR    at 16#158# range 0 .. 31;
      DFSDM3_AWCFR    at 16#15C# range 0 .. 31;
      DFSDM0_EXMAX    at 16#160# range 0 .. 31;
      DFSDM1_EXMAX    at 16#164# range 0 .. 31;
      DFSDM2_EXMAX    at 16#168# range 0 .. 31;
      DFSDM3_EXMAX    at 16#16C# range 0 .. 31;
      DFSDM0_EXMIN    at 16#170# range 0 .. 31;
      DFSDM1_EXMIN    at 16#174# range 0 .. 31;
      DFSDM2_EXMIN    at 16#178# range 0 .. 31;
      DFSDM3_EXMIN    at 16#17C# range 0 .. 31;
      DFSDM0_CNVTIMR  at 16#180# range 0 .. 31;
      DFSDM1_CNVTIMR  at 16#184# range 0 .. 31;
      DFSDM2_CNVTIMR  at 16#188# range 0 .. 31;
      DFSDM3_CNVTIMR  at 16#18C# range 0 .. 31;
   end record;

   --  Digital filter for sigma delta modulators
   DFSDM_Periph : aliased DFSDM_Peripheral
     with Import, Address => System'To_Address (16#40017000#);

end STM32_SVD.DFSDM;
