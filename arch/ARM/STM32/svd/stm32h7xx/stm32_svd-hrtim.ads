--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.HRTIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_MUDIS_Field is STM32_SVD.Bit;
   subtype CR1_TAUDIS_Field is STM32_SVD.Bit;
   subtype CR1_TBUDIS_Field is STM32_SVD.Bit;
   subtype CR1_TCUDIS_Field is STM32_SVD.Bit;
   subtype CR1_TDUDIS_Field is STM32_SVD.Bit;
   subtype CR1_TEUDIS_Field is STM32_SVD.Bit;
   subtype CR1_AD1USRC_Field is STM32_SVD.UInt3;
   subtype CR1_AD2USRC_Field is STM32_SVD.UInt3;
   subtype CR1_AD3USRC_Field is STM32_SVD.UInt3;
   subtype CR1_AD4USRC_Field is STM32_SVD.UInt3;

   --  Control Register 1
   type CR1_Register is record
      --  Master Update Disable
      MUDIS          : CR1_MUDIS_Field := 16#0#;
      --  Timer A Update Disable
      TAUDIS         : CR1_TAUDIS_Field := 16#0#;
      --  Timer B Update Disable
      TBUDIS         : CR1_TBUDIS_Field := 16#0#;
      --  Timer C Update Disable
      TCUDIS         : CR1_TCUDIS_Field := 16#0#;
      --  Timer D Update Disable
      TDUDIS         : CR1_TDUDIS_Field := 16#0#;
      --  Timer E Update Disable
      TEUDIS         : CR1_TEUDIS_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : STM32_SVD.UInt10 := 16#0#;
      --  ADC Trigger 1 Update Source
      AD1USRC        : CR1_AD1USRC_Field := 16#0#;
      --  ADC Trigger 2 Update Source
      AD2USRC        : CR1_AD2USRC_Field := 16#0#;
      --  ADC Trigger 3 Update Source
      AD3USRC        : CR1_AD3USRC_Field := 16#0#;
      --  ADC Trigger 4 Update Source
      AD4USRC        : CR1_AD4USRC_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : STM32_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      MUDIS          at 0 range 0 .. 0;
      TAUDIS         at 0 range 1 .. 1;
      TBUDIS         at 0 range 2 .. 2;
      TCUDIS         at 0 range 3 .. 3;
      TDUDIS         at 0 range 4 .. 4;
      TEUDIS         at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      AD1USRC        at 0 range 16 .. 18;
      AD2USRC        at 0 range 19 .. 21;
      AD3USRC        at 0 range 22 .. 24;
      AD4USRC        at 0 range 25 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CR2_MSWU_Field is STM32_SVD.Bit;
   subtype CR2_TASWU_Field is STM32_SVD.Bit;
   subtype CR2_TBSWU_Field is STM32_SVD.Bit;
   subtype CR2_TCSWU_Field is STM32_SVD.Bit;
   subtype CR2_TDSWU_Field is STM32_SVD.Bit;
   subtype CR2_TESWU_Field is STM32_SVD.Bit;
   subtype CR2_MRST_Field is STM32_SVD.Bit;
   subtype CR2_TARST_Field is STM32_SVD.Bit;
   subtype CR2_TBRST_Field is STM32_SVD.Bit;
   subtype CR2_TCRST_Field is STM32_SVD.Bit;
   subtype CR2_TDRST_Field is STM32_SVD.Bit;
   subtype CR2_TERST_Field is STM32_SVD.Bit;

   --  Control Register 2
   type CR2_Register is record
      --  Master Timer Software update
      MSWU           : CR2_MSWU_Field := 16#0#;
      --  Timer A Software update
      TASWU          : CR2_TASWU_Field := 16#0#;
      --  Timer B Software Update
      TBSWU          : CR2_TBSWU_Field := 16#0#;
      --  Timer C Software Update
      TCSWU          : CR2_TCSWU_Field := 16#0#;
      --  Timer D Software Update
      TDSWU          : CR2_TDSWU_Field := 16#0#;
      --  Timer E Software Update
      TESWU          : CR2_TESWU_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32_SVD.UInt2 := 16#0#;
      --  Master Counter software reset
      MRST           : CR2_MRST_Field := 16#0#;
      --  Timer A counter software reset
      TARST          : CR2_TARST_Field := 16#0#;
      --  Timer B counter software reset
      TBRST          : CR2_TBRST_Field := 16#0#;
      --  Timer C counter software reset
      TCRST          : CR2_TCRST_Field := 16#0#;
      --  Timer D counter software reset
      TDRST          : CR2_TDRST_Field := 16#0#;
      --  Timer E counter software reset
      TERST          : CR2_TERST_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : STM32_SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      MSWU           at 0 range 0 .. 0;
      TASWU          at 0 range 1 .. 1;
      TBSWU          at 0 range 2 .. 2;
      TCSWU          at 0 range 3 .. 3;
      TDSWU          at 0 range 4 .. 4;
      TESWU          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MRST           at 0 range 8 .. 8;
      TARST          at 0 range 9 .. 9;
      TBRST          at 0 range 10 .. 10;
      TCRST          at 0 range 11 .. 11;
      TDRST          at 0 range 12 .. 12;
      TERST          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  ISR_FLT array element
   subtype ISR_FLT_Element is STM32_SVD.Bit;

   --  ISR_FLT array
   type ISR_FLT_Field_Array is array (1 .. 5) of ISR_FLT_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for ISR_FLT
   type ISR_FLT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FLT as a value
            Val : STM32_SVD.UInt5;
         when True =>
            --  FLT as an array
            Arr : ISR_FLT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for ISR_FLT_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype ISR_SYSFLT_Field is STM32_SVD.Bit;
   subtype ISR_DLLRDY_Field is STM32_SVD.Bit;
   subtype ISR_BMPER_Field is STM32_SVD.Bit;

   --  Interrupt Status Register
   type ISR_Register is record
      --  Read-only. Fault 1 Interrupt Flag
      FLT            : ISR_FLT_Field := (As_Array => False, Val => 16#0#);
      --  System Fault Interrupt Flag
      SYSFLT         : ISR_SYSFLT_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : STM32_SVD.UInt10 := 16#0#;
      --  Read-only. DLL Ready Interrupt Flag
      DLLRDY         : ISR_DLLRDY_Field := 16#0#;
      --  Read-only. Burst mode Period Interrupt Flag
      BMPER          : ISR_BMPER_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : STM32_SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      FLT            at 0 range 0 .. 4;
      SYSFLT         at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      DLLRDY         at 0 range 16 .. 16;
      BMPER          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ICR_FLT1C_Field is STM32_SVD.Bit;
   subtype ICR_FLT2C_Field is STM32_SVD.Bit;
   subtype ICR_FLT3C_Field is STM32_SVD.Bit;
   subtype ICR_FLT4C_Field is STM32_SVD.Bit;
   subtype ICR_FLT5C_Field is STM32_SVD.Bit;
   subtype ICR_SYSFLTC_Field is STM32_SVD.Bit;
   subtype ICR_DLLRDYC_Field is STM32_SVD.Bit;
   subtype ICR_BMPERC_Field is STM32_SVD.Bit;

   --  Interrupt Clear Register
   type ICR_Register is record
      --  Write-only. Fault 1 Interrupt Flag Clear
      FLT1C          : ICR_FLT1C_Field := 16#0#;
      --  Write-only. Fault 2 Interrupt Flag Clear
      FLT2C          : ICR_FLT2C_Field := 16#0#;
      --  Write-only. Fault 3 Interrupt Flag Clear
      FLT3C          : ICR_FLT3C_Field := 16#0#;
      --  Write-only. Fault 4 Interrupt Flag Clear
      FLT4C          : ICR_FLT4C_Field := 16#0#;
      --  Write-only. Fault 5 Interrupt Flag Clear
      FLT5C          : ICR_FLT5C_Field := 16#0#;
      --  System Fault Interrupt Flag Clear
      SYSFLTC        : ICR_SYSFLTC_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : STM32_SVD.UInt10 := 16#0#;
      --  Write-only. DLL Ready Interrupt flag Clear
      DLLRDYC        : ICR_DLLRDYC_Field := 16#0#;
      --  Write-only. Burst mode period flag Clear
      BMPERC         : ICR_BMPERC_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : STM32_SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      FLT1C          at 0 range 0 .. 0;
      FLT2C          at 0 range 1 .. 1;
      FLT3C          at 0 range 2 .. 2;
      FLT4C          at 0 range 3 .. 3;
      FLT5C          at 0 range 4 .. 4;
      SYSFLTC        at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      DLLRDYC        at 0 range 16 .. 16;
      BMPERC         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype IER_FLT1IE_Field is STM32_SVD.Bit;
   subtype IER_FLT2IE_Field is STM32_SVD.Bit;
   subtype IER_FLT3IE_Field is STM32_SVD.Bit;
   subtype IER_FLT4IE_Field is STM32_SVD.Bit;
   subtype IER_FLT5IE_Field is STM32_SVD.Bit;
   subtype IER_SYSFLTE_Field is STM32_SVD.Bit;
   subtype IER_DLLRDYIE_Field is STM32_SVD.Bit;
   subtype IER_BMPERIE_Field is STM32_SVD.Bit;

   --  Interrupt Enable Register
   type IER_Register is record
      --  Fault 1 Interrupt Enable
      FLT1IE         : IER_FLT1IE_Field := 16#0#;
      --  Fault 2 Interrupt Enable
      FLT2IE         : IER_FLT2IE_Field := 16#0#;
      --  Fault 3 Interrupt Enable
      FLT3IE         : IER_FLT3IE_Field := 16#0#;
      --  Fault 4 Interrupt Enable
      FLT4IE         : IER_FLT4IE_Field := 16#0#;
      --  Fault 5 Interrupt Enable
      FLT5IE         : IER_FLT5IE_Field := 16#0#;
      --  System Fault Interrupt Enable
      SYSFLTE        : IER_SYSFLTE_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : STM32_SVD.UInt10 := 16#0#;
      --  DLL Ready Interrupt Enable
      DLLRDYIE       : IER_DLLRDYIE_Field := 16#0#;
      --  Burst mode period Interrupt Enable
      BMPERIE        : IER_BMPERIE_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : STM32_SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      FLT1IE         at 0 range 0 .. 0;
      FLT2IE         at 0 range 1 .. 1;
      FLT3IE         at 0 range 2 .. 2;
      FLT4IE         at 0 range 3 .. 3;
      FLT5IE         at 0 range 4 .. 4;
      SYSFLTE        at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      DLLRDYIE       at 0 range 16 .. 16;
      BMPERIE        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype OENR_TA1OEN_Field is STM32_SVD.Bit;
   subtype OENR_TA2OEN_Field is STM32_SVD.Bit;
   subtype OENR_TB1OEN_Field is STM32_SVD.Bit;
   subtype OENR_TB2OEN_Field is STM32_SVD.Bit;
   subtype OENR_TC1OEN_Field is STM32_SVD.Bit;
   subtype OENR_TC2OEN_Field is STM32_SVD.Bit;
   subtype OENR_TD1OEN_Field is STM32_SVD.Bit;
   subtype OENR_TD2OEN_Field is STM32_SVD.Bit;
   subtype OENR_TE1OEN_Field is STM32_SVD.Bit;
   subtype OENR_TE2OEN_Field is STM32_SVD.Bit;

   --  Output Enable Register
   type OENR_Register is record
      --  Write-only. Timer A Output 1 Enable
      TA1OEN         : OENR_TA1OEN_Field := 16#0#;
      --  Write-only. Timer A Output 2 Enable
      TA2OEN         : OENR_TA2OEN_Field := 16#0#;
      --  Write-only. Timer B Output 1 Enable
      TB1OEN         : OENR_TB1OEN_Field := 16#0#;
      --  Write-only. Timer B Output 2 Enable
      TB2OEN         : OENR_TB2OEN_Field := 16#0#;
      --  Write-only. Timer C Output 1 Enable
      TC1OEN         : OENR_TC1OEN_Field := 16#0#;
      --  Write-only. Timer C Output 2 Enable
      TC2OEN         : OENR_TC2OEN_Field := 16#0#;
      --  Write-only. Timer D Output 1 Enable
      TD1OEN         : OENR_TD1OEN_Field := 16#0#;
      --  Write-only. Timer D Output 2 Enable
      TD2OEN         : OENR_TD2OEN_Field := 16#0#;
      --  Write-only. Timer E Output 1 Enable
      TE1OEN         : OENR_TE1OEN_Field := 16#0#;
      --  Write-only. Timer E Output 2 Enable
      TE2OEN         : OENR_TE2OEN_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : STM32_SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OENR_Register use record
      TA1OEN         at 0 range 0 .. 0;
      TA2OEN         at 0 range 1 .. 1;
      TB1OEN         at 0 range 2 .. 2;
      TB2OEN         at 0 range 3 .. 3;
      TC1OEN         at 0 range 4 .. 4;
      TC2OEN         at 0 range 5 .. 5;
      TD1OEN         at 0 range 6 .. 6;
      TD2OEN         at 0 range 7 .. 7;
      TE1OEN         at 0 range 8 .. 8;
      TE2OEN         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DISR_TA1ODIS_Field is STM32_SVD.Bit;
   subtype DISR_TA2ODIS_Field is STM32_SVD.Bit;
   subtype DISR_TB1ODIS_Field is STM32_SVD.Bit;
   subtype DISR_TB2ODIS_Field is STM32_SVD.Bit;
   subtype DISR_TC1ODIS_Field is STM32_SVD.Bit;
   subtype DISR_TC2ODIS_Field is STM32_SVD.Bit;
   subtype DISR_TD1ODIS_Field is STM32_SVD.Bit;
   subtype DISR_TD2ODIS_Field is STM32_SVD.Bit;
   subtype DISR_TE1ODIS_Field is STM32_SVD.Bit;
   subtype DISR_TE2ODIS_Field is STM32_SVD.Bit;

   --  DISR
   type DISR_Register is record
      --  TA1ODIS
      TA1ODIS        : DISR_TA1ODIS_Field := 16#0#;
      --  TA2ODIS
      TA2ODIS        : DISR_TA2ODIS_Field := 16#0#;
      --  TB1ODIS
      TB1ODIS        : DISR_TB1ODIS_Field := 16#0#;
      --  TB2ODIS
      TB2ODIS        : DISR_TB2ODIS_Field := 16#0#;
      --  TC1ODIS
      TC1ODIS        : DISR_TC1ODIS_Field := 16#0#;
      --  TC2ODIS
      TC2ODIS        : DISR_TC2ODIS_Field := 16#0#;
      --  TD1ODIS
      TD1ODIS        : DISR_TD1ODIS_Field := 16#0#;
      --  TD2ODIS
      TD2ODIS        : DISR_TD2ODIS_Field := 16#0#;
      --  TE1ODIS
      TE1ODIS        : DISR_TE1ODIS_Field := 16#0#;
      --  TE2ODIS
      TE2ODIS        : DISR_TE2ODIS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : STM32_SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DISR_Register use record
      TA1ODIS        at 0 range 0 .. 0;
      TA2ODIS        at 0 range 1 .. 1;
      TB1ODIS        at 0 range 2 .. 2;
      TB2ODIS        at 0 range 3 .. 3;
      TC1ODIS        at 0 range 4 .. 4;
      TC2ODIS        at 0 range 5 .. 5;
      TD1ODIS        at 0 range 6 .. 6;
      TD2ODIS        at 0 range 7 .. 7;
      TE1ODIS        at 0 range 8 .. 8;
      TE2ODIS        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype ODSR_TA1ODS_Field is STM32_SVD.Bit;
   subtype ODSR_TA2ODS_Field is STM32_SVD.Bit;
   subtype ODSR_TB1ODS_Field is STM32_SVD.Bit;
   subtype ODSR_TB2ODS_Field is STM32_SVD.Bit;
   subtype ODSR_TC1ODS_Field is STM32_SVD.Bit;
   subtype ODSR_TC2ODS_Field is STM32_SVD.Bit;
   subtype ODSR_TD1ODS_Field is STM32_SVD.Bit;
   subtype ODSR_TD2ODS_Field is STM32_SVD.Bit;
   subtype ODSR_TE1ODS_Field is STM32_SVD.Bit;
   subtype ODSR_TE2ODS_Field is STM32_SVD.Bit;

   --  Output Disable Status Register
   type ODSR_Register is record
      --  Read-only. Timer A Output 1 disable status
      TA1ODS         : ODSR_TA1ODS_Field;
      --  Read-only. Timer A Output 2 disable status
      TA2ODS         : ODSR_TA2ODS_Field;
      --  Read-only. Timer B Output 1 disable status
      TB1ODS         : ODSR_TB1ODS_Field;
      --  Read-only. Timer B Output 2 disable status
      TB2ODS         : ODSR_TB2ODS_Field;
      --  Read-only. Timer C Output 1 disable status
      TC1ODS         : ODSR_TC1ODS_Field;
      --  Read-only. Timer C Output 2 disable status
      TC2ODS         : ODSR_TC2ODS_Field;
      --  Read-only. Timer D Output 1 disable status
      TD1ODS         : ODSR_TD1ODS_Field;
      --  Read-only. Timer D Output 2 disable status
      TD2ODS         : ODSR_TD2ODS_Field;
      --  Read-only. Timer E Output 1 disable status
      TE1ODS         : ODSR_TE1ODS_Field;
      --  Read-only. Timer E Output 2 disable status
      TE2ODS         : ODSR_TE2ODS_Field;
      --  unspecified
      Reserved_10_31 : STM32_SVD.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODSR_Register use record
      TA1ODS         at 0 range 0 .. 0;
      TA2ODS         at 0 range 1 .. 1;
      TB1ODS         at 0 range 2 .. 2;
      TB2ODS         at 0 range 3 .. 3;
      TC1ODS         at 0 range 4 .. 4;
      TC2ODS         at 0 range 5 .. 5;
      TD1ODS         at 0 range 6 .. 6;
      TD2ODS         at 0 range 7 .. 7;
      TE1ODS         at 0 range 8 .. 8;
      TE2ODS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype BMCR_BME_Field is STM32_SVD.Bit;
   subtype BMCR_BMOM_Field is STM32_SVD.Bit;
   subtype BMCR_BMCLK_Field is STM32_SVD.UInt4;
   subtype BMCR_BMPRSC_Field is STM32_SVD.UInt4;
   subtype BMCR_BMPREN_Field is STM32_SVD.Bit;
   subtype BMCR_MTBM_Field is STM32_SVD.Bit;
   subtype BMCR_TABM_Field is STM32_SVD.Bit;
   subtype BMCR_TBBM_Field is STM32_SVD.Bit;
   subtype BMCR_TCBM_Field is STM32_SVD.Bit;
   subtype BMCR_TDBM_Field is STM32_SVD.Bit;
   subtype BMCR_TEBM_Field is STM32_SVD.Bit;
   subtype BMCR_BMSTAT_Field is STM32_SVD.Bit;

   --  Burst Mode Control Register
   type BMCR_Register is record
      --  Burst Mode enable
      BME            : BMCR_BME_Field := 16#0#;
      --  Burst Mode operating mode
      BMOM           : BMCR_BMOM_Field := 16#0#;
      --  Burst Mode Clock source
      BMCLK          : BMCR_BMCLK_Field := 16#0#;
      --  Burst Mode Prescaler
      BMPRSC         : BMCR_BMPRSC_Field := 16#0#;
      --  Burst Mode Preload Enable
      BMPREN         : BMCR_BMPREN_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : STM32_SVD.UInt5 := 16#0#;
      --  Master Timer Burst Mode
      MTBM           : BMCR_MTBM_Field := 16#0#;
      --  Timer A Burst Mode
      TABM           : BMCR_TABM_Field := 16#0#;
      --  Timer B Burst Mode
      TBBM           : BMCR_TBBM_Field := 16#0#;
      --  Timer C Burst Mode
      TCBM           : BMCR_TCBM_Field := 16#0#;
      --  Timer D Burst Mode
      TDBM           : BMCR_TDBM_Field := 16#0#;
      --  Timer E Burst Mode
      TEBM           : BMCR_TEBM_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : STM32_SVD.UInt9 := 16#0#;
      --  Burst Mode Status
      BMSTAT         : BMCR_BMSTAT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BMCR_Register use record
      BME            at 0 range 0 .. 0;
      BMOM           at 0 range 1 .. 1;
      BMCLK          at 0 range 2 .. 5;
      BMPRSC         at 0 range 6 .. 9;
      BMPREN         at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      MTBM           at 0 range 16 .. 16;
      TABM           at 0 range 17 .. 17;
      TBBM           at 0 range 18 .. 18;
      TCBM           at 0 range 19 .. 19;
      TDBM           at 0 range 20 .. 20;
      TEBM           at 0 range 21 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      BMSTAT         at 0 range 31 .. 31;
   end record;

   subtype BMTRG_SW_Field is STM32_SVD.Bit;
   subtype BMTRG_MSTRST_Field is STM32_SVD.Bit;
   subtype BMTRG_MSTREP_Field is STM32_SVD.Bit;
   --  BMTRG_MSTCMP array element
   subtype BMTRG_MSTCMP_Element is STM32_SVD.Bit;

   --  BMTRG_MSTCMP array
   type BMTRG_MSTCMP_Field_Array is array (1 .. 4) of BMTRG_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for BMTRG_MSTCMP
   type BMTRG_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : BMTRG_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for BMTRG_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype BMTRG_TARST_Field is STM32_SVD.Bit;
   subtype BMTRG_TAREP_Field is STM32_SVD.Bit;
   --  BMTRG_TACMP array element
   subtype BMTRG_TACMP_Element is STM32_SVD.Bit;

   --  BMTRG_TACMP array
   type BMTRG_TACMP_Field_Array is array (1 .. 2) of BMTRG_TACMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for BMTRG_TACMP
   type BMTRG_TACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TACMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TACMP as an array
            Arr : BMTRG_TACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BMTRG_TACMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype BMTRG_TBRST_Field is STM32_SVD.Bit;
   subtype BMTRG_TBREP_Field is STM32_SVD.Bit;
   --  BMTRG_TBCMP array element
   subtype BMTRG_TBCMP_Element is STM32_SVD.Bit;

   --  BMTRG_TBCMP array
   type BMTRG_TBCMP_Field_Array is array (1 .. 2) of BMTRG_TBCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for BMTRG_TBCMP
   type BMTRG_TBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TBCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TBCMP as an array
            Arr : BMTRG_TBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BMTRG_TBCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype BMTRG_TCRST_Field is STM32_SVD.Bit;
   subtype BMTRG_TCREP_Field is STM32_SVD.Bit;
   --  BMTRG_TCCMP array element
   subtype BMTRG_TCCMP_Element is STM32_SVD.Bit;

   --  BMTRG_TCCMP array
   type BMTRG_TCCMP_Field_Array is array (1 .. 2) of BMTRG_TCCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for BMTRG_TCCMP
   type BMTRG_TCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TCCMP as an array
            Arr : BMTRG_TCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BMTRG_TCCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype BMTRG_TDRST_Field is STM32_SVD.Bit;
   subtype BMTRG_TDREP_Field is STM32_SVD.Bit;
   --  BMTRG_TDCMP array element
   subtype BMTRG_TDCMP_Element is STM32_SVD.Bit;

   --  BMTRG_TDCMP array
   type BMTRG_TDCMP_Field_Array is array (1 .. 2) of BMTRG_TDCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for BMTRG_TDCMP
   type BMTRG_TDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TDCMP as an array
            Arr : BMTRG_TDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BMTRG_TDCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype BMTRG_TERST_Field is STM32_SVD.Bit;
   subtype BMTRG_TEREP_Field is STM32_SVD.Bit;
   --  BMTRG_TECMP array element
   subtype BMTRG_TECMP_Element is STM32_SVD.Bit;

   --  BMTRG_TECMP array
   type BMTRG_TECMP_Field_Array is array (1 .. 2) of BMTRG_TECMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for BMTRG_TECMP
   type BMTRG_TECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TECMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TECMP as an array
            Arr : BMTRG_TECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BMTRG_TECMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype BMTRG_OCHPEV_Field is STM32_SVD.Bit;

   --  BMTRG
   type BMTRG_Register is record
      --  SW
      SW             : BMTRG_SW_Field := 16#0#;
      --  MSTRST
      MSTRST         : BMTRG_MSTRST_Field := 16#0#;
      --  MSTREP
      MSTREP         : BMTRG_MSTREP_Field := 16#0#;
      --  MSTCMP1
      MSTCMP         : BMTRG_MSTCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  TARST
      TARST          : BMTRG_TARST_Field := 16#0#;
      --  TAREP
      TAREP          : BMTRG_TAREP_Field := 16#0#;
      --  TACMP1
      TACMP          : BMTRG_TACMP_Field := (As_Array => False, Val => 16#0#);
      --  TBRST
      TBRST          : BMTRG_TBRST_Field := 16#0#;
      --  TBREP
      TBREP          : BMTRG_TBREP_Field := 16#0#;
      --  TBCMP1
      TBCMP          : BMTRG_TBCMP_Field := (As_Array => False, Val => 16#0#);
      --  TCRST
      TCRST          : BMTRG_TCRST_Field := 16#0#;
      --  TCREP
      TCREP          : BMTRG_TCREP_Field := 16#0#;
      --  TCCMP1
      TCCMP          : BMTRG_TCCMP_Field := (As_Array => False, Val => 16#0#);
      --  TDRST
      TDRST          : BMTRG_TDRST_Field := 16#0#;
      --  TDREP
      TDREP          : BMTRG_TDREP_Field := 16#0#;
      --  TDCMP1
      TDCMP          : BMTRG_TDCMP_Field := (As_Array => False, Val => 16#0#);
      --  TERST
      TERST          : BMTRG_TERST_Field := 16#0#;
      --  TEREP
      TEREP          : BMTRG_TEREP_Field := 16#0#;
      --  TECMP1
      TECMP          : BMTRG_TECMP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_30 : STM32_SVD.UInt4 := 16#0#;
      --  OCHPEV
      OCHPEV         : BMTRG_OCHPEV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BMTRG_Register use record
      SW             at 0 range 0 .. 0;
      MSTRST         at 0 range 1 .. 1;
      MSTREP         at 0 range 2 .. 2;
      MSTCMP         at 0 range 3 .. 6;
      TARST          at 0 range 7 .. 7;
      TAREP          at 0 range 8 .. 8;
      TACMP          at 0 range 9 .. 10;
      TBRST          at 0 range 11 .. 11;
      TBREP          at 0 range 12 .. 12;
      TBCMP          at 0 range 13 .. 14;
      TCRST          at 0 range 15 .. 15;
      TCREP          at 0 range 16 .. 16;
      TCCMP          at 0 range 17 .. 18;
      TDRST          at 0 range 19 .. 19;
      TDREP          at 0 range 20 .. 20;
      TDCMP          at 0 range 21 .. 22;
      TERST          at 0 range 23 .. 23;
      TEREP          at 0 range 24 .. 24;
      TECMP          at 0 range 25 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      OCHPEV         at 0 range 31 .. 31;
   end record;

   subtype BMCMPR6_BMCMP_Field is STM32_SVD.UInt16;

   --  BMCMPR6
   type BMCMPR6_Register is record
      --  BMCMP
      BMCMP          : BMCMPR6_BMCMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BMCMPR6_Register use record
      BMCMP          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BMPER_BMPER_Field is STM32_SVD.UInt16;

   --  Burst Mode Period Register
   type BMPER_Register is record
      --  Burst mode Period
      BMPER          : BMPER_BMPER_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BMPER_Register use record
      BMPER          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EECR1_EE1SRC_Field is STM32_SVD.UInt2;
   subtype EECR1_EE1POL_Field is STM32_SVD.Bit;
   subtype EECR1_EE1SNS_Field is STM32_SVD.UInt2;
   subtype EECR1_EE1FAST_Field is STM32_SVD.Bit;
   subtype EECR1_EE2SRC_Field is STM32_SVD.UInt2;
   subtype EECR1_EE2POL_Field is STM32_SVD.Bit;
   subtype EECR1_EE2SNS_Field is STM32_SVD.UInt2;
   subtype EECR1_EE2FAST_Field is STM32_SVD.Bit;
   subtype EECR1_EE3SRC_Field is STM32_SVD.UInt2;
   subtype EECR1_EE3POL_Field is STM32_SVD.Bit;
   subtype EECR1_EE3SNS_Field is STM32_SVD.UInt2;
   subtype EECR1_EE3FAST_Field is STM32_SVD.Bit;
   subtype EECR1_EE4SRC_Field is STM32_SVD.UInt2;
   subtype EECR1_EE4POL_Field is STM32_SVD.Bit;
   subtype EECR1_EE4SNS_Field is STM32_SVD.UInt2;
   subtype EECR1_EE4FAST_Field is STM32_SVD.Bit;
   subtype EECR1_EE5SRC_Field is STM32_SVD.UInt2;
   subtype EECR1_EE5POL_Field is STM32_SVD.Bit;
   subtype EECR1_EE5SNS_Field is STM32_SVD.UInt2;
   subtype EECR1_EE5FAST_Field is STM32_SVD.Bit;

   --  Timer External Event Control Register 1
   type EECR1_Register is record
      --  External Event 1 Source
      EE1SRC         : EECR1_EE1SRC_Field := 16#0#;
      --  External Event 1 Polarity
      EE1POL         : EECR1_EE1POL_Field := 16#0#;
      --  External Event 1 Sensitivity
      EE1SNS         : EECR1_EE1SNS_Field := 16#0#;
      --  External Event 1 Fast mode
      EE1FAST        : EECR1_EE1FAST_Field := 16#0#;
      --  External Event 2 Source
      EE2SRC         : EECR1_EE2SRC_Field := 16#0#;
      --  External Event 2 Polarity
      EE2POL         : EECR1_EE2POL_Field := 16#0#;
      --  External Event 2 Sensitivity
      EE2SNS         : EECR1_EE2SNS_Field := 16#0#;
      --  External Event 2 Fast mode
      EE2FAST        : EECR1_EE2FAST_Field := 16#0#;
      --  External Event 3 Source
      EE3SRC         : EECR1_EE3SRC_Field := 16#0#;
      --  External Event 3 Polarity
      EE3POL         : EECR1_EE3POL_Field := 16#0#;
      --  External Event 3 Sensitivity
      EE3SNS         : EECR1_EE3SNS_Field := 16#0#;
      --  External Event 3 Fast mode
      EE3FAST        : EECR1_EE3FAST_Field := 16#0#;
      --  External Event 4 Source
      EE4SRC         : EECR1_EE4SRC_Field := 16#0#;
      --  External Event 4 Polarity
      EE4POL         : EECR1_EE4POL_Field := 16#0#;
      --  External Event 4 Sensitivity
      EE4SNS         : EECR1_EE4SNS_Field := 16#0#;
      --  External Event 4 Fast mode
      EE4FAST        : EECR1_EE4FAST_Field := 16#0#;
      --  External Event 5 Source
      EE5SRC         : EECR1_EE5SRC_Field := 16#0#;
      --  External Event 5 Polarity
      EE5POL         : EECR1_EE5POL_Field := 16#0#;
      --  External Event 5 Sensitivity
      EE5SNS         : EECR1_EE5SNS_Field := 16#0#;
      --  External Event 5 Fast mode
      EE5FAST        : EECR1_EE5FAST_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : STM32_SVD.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EECR1_Register use record
      EE1SRC         at 0 range 0 .. 1;
      EE1POL         at 0 range 2 .. 2;
      EE1SNS         at 0 range 3 .. 4;
      EE1FAST        at 0 range 5 .. 5;
      EE2SRC         at 0 range 6 .. 7;
      EE2POL         at 0 range 8 .. 8;
      EE2SNS         at 0 range 9 .. 10;
      EE2FAST        at 0 range 11 .. 11;
      EE3SRC         at 0 range 12 .. 13;
      EE3POL         at 0 range 14 .. 14;
      EE3SNS         at 0 range 15 .. 16;
      EE3FAST        at 0 range 17 .. 17;
      EE4SRC         at 0 range 18 .. 19;
      EE4POL         at 0 range 20 .. 20;
      EE4SNS         at 0 range 21 .. 22;
      EE4FAST        at 0 range 23 .. 23;
      EE5SRC         at 0 range 24 .. 25;
      EE5POL         at 0 range 26 .. 26;
      EE5SNS         at 0 range 27 .. 28;
      EE5FAST        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype EECR_EE6SRC_Field is STM32_SVD.UInt2;
   subtype EECR_EE6POL_Field is STM32_SVD.Bit;
   subtype EECR_EE6SNS_Field is STM32_SVD.UInt2;
   subtype EECR_EE7SRC_Field is STM32_SVD.UInt2;
   subtype EECR_EE7POL_Field is STM32_SVD.Bit;
   subtype EECR_EE7SNS_Field is STM32_SVD.UInt2;
   subtype EECR_EE8SRC_Field is STM32_SVD.UInt2;
   subtype EECR_EE8POL_Field is STM32_SVD.Bit;
   subtype EECR_EE8SNS_Field is STM32_SVD.UInt2;
   subtype EECR_EE9SRC_Field is STM32_SVD.UInt2;
   subtype EECR_EE9POL_Field is STM32_SVD.Bit;
   subtype EECR_EE9SNS_Field is STM32_SVD.UInt2;
   subtype EECR_EE10SRC_Field is STM32_SVD.UInt2;
   subtype EECR_EE10POL_Field is STM32_SVD.Bit;
   subtype EECR_EE10SNS_Field is STM32_SVD.UInt2;

   --  Timer External Event Control Register 2
   type EECR_Register is record
      --  External Event 6 Source
      EE6SRC         : EECR_EE6SRC_Field := 16#0#;
      --  External Event 6 Polarity
      EE6POL         : EECR_EE6POL_Field := 16#0#;
      --  External Event 6 Sensitivity
      EE6SNS         : EECR_EE6SNS_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 7 Source
      EE7SRC         : EECR_EE7SRC_Field := 16#0#;
      --  External Event 7 Polarity
      EE7POL         : EECR_EE7POL_Field := 16#0#;
      --  External Event 7 Sensitivity
      EE7SNS         : EECR_EE7SNS_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 8 Source
      EE8SRC         : EECR_EE8SRC_Field := 16#0#;
      --  External Event 8 Polarity
      EE8POL         : EECR_EE8POL_Field := 16#0#;
      --  External Event 8 Sensitivity
      EE8SNS         : EECR_EE8SNS_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 9 Source
      EE9SRC         : EECR_EE9SRC_Field := 16#0#;
      --  External Event 9 Polarity
      EE9POL         : EECR_EE9POL_Field := 16#0#;
      --  External Event 9 Sensitivity
      EE9SNS         : EECR_EE9SNS_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 10 Source
      EE10SRC        : EECR_EE10SRC_Field := 16#0#;
      --  External Event 10 Polarity
      EE10POL        : EECR_EE10POL_Field := 16#0#;
      --  External Event 10 Sensitivity
      EE10SNS        : EECR_EE10SNS_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EECR_Register use record
      EE6SRC         at 0 range 0 .. 1;
      EE6POL         at 0 range 2 .. 2;
      EE6SNS         at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE7SRC         at 0 range 6 .. 7;
      EE7POL         at 0 range 8 .. 8;
      EE7SNS         at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE8SRC         at 0 range 12 .. 13;
      EE8POL         at 0 range 14 .. 14;
      EE8SNS         at 0 range 15 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE9SRC         at 0 range 18 .. 19;
      EE9POL         at 0 range 20 .. 20;
      EE9SNS         at 0 range 21 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE10SRC        at 0 range 24 .. 25;
      EE10POL        at 0 range 26 .. 26;
      EE10SNS        at 0 range 27 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  ADC1R_AD1MC array element
   subtype ADC1R_AD1MC_Element is STM32_SVD.Bit;

   --  ADC1R_AD1MC array
   type ADC1R_AD1MC_Field_Array is array (1 .. 4) of ADC1R_AD1MC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC1R_AD1MC
   type ADC1R_AD1MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1MC as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  AD1MC as an array
            Arr : ADC1R_AD1MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC1R_AD1MC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype ADC1R_AD1MPER_Field is STM32_SVD.Bit;
   --  ADC1R_AD1EEV array element
   subtype ADC1R_AD1EEV_Element is STM32_SVD.Bit;

   --  ADC1R_AD1EEV array
   type ADC1R_AD1EEV_Field_Array is array (1 .. 5) of ADC1R_AD1EEV_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for ADC1R_AD1EEV
   type ADC1R_AD1EEV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1EEV as a value
            Val : STM32_SVD.UInt5;
         when True =>
            --  AD1EEV as an array
            Arr : ADC1R_AD1EEV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for ADC1R_AD1EEV_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  ADC1R_AD1TAC array element
   subtype ADC1R_AD1TAC_Element is STM32_SVD.Bit;

   --  ADC1R_AD1TAC array
   type ADC1R_AD1TAC_Field_Array is array (2 .. 4) of ADC1R_AD1TAC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC1R_AD1TAC
   type ADC1R_AD1TAC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1TAC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD1TAC as an array
            Arr : ADC1R_AD1TAC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC1R_AD1TAC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC1R_AD1TAPER_Field is STM32_SVD.Bit;
   subtype ADC1R_AD1TARST_Field is STM32_SVD.Bit;
   --  ADC1R_AD1TBC array element
   subtype ADC1R_AD1TBC_Element is STM32_SVD.Bit;

   --  ADC1R_AD1TBC array
   type ADC1R_AD1TBC_Field_Array is array (2 .. 4) of ADC1R_AD1TBC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC1R_AD1TBC
   type ADC1R_AD1TBC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1TBC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD1TBC as an array
            Arr : ADC1R_AD1TBC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC1R_AD1TBC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC1R_AD1TBPER_Field is STM32_SVD.Bit;
   subtype ADC1R_AD1TBRST_Field is STM32_SVD.Bit;
   --  ADC1R_AD1TCC array element
   subtype ADC1R_AD1TCC_Element is STM32_SVD.Bit;

   --  ADC1R_AD1TCC array
   type ADC1R_AD1TCC_Field_Array is array (2 .. 4) of ADC1R_AD1TCC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC1R_AD1TCC
   type ADC1R_AD1TCC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1TCC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD1TCC as an array
            Arr : ADC1R_AD1TCC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC1R_AD1TCC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC1R_AD1TCPER_Field is STM32_SVD.Bit;
   --  ADC1R_AD1TDC array element
   subtype ADC1R_AD1TDC_Element is STM32_SVD.Bit;

   --  ADC1R_AD1TDC array
   type ADC1R_AD1TDC_Field_Array is array (2 .. 4) of ADC1R_AD1TDC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC1R_AD1TDC
   type ADC1R_AD1TDC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1TDC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD1TDC as an array
            Arr : ADC1R_AD1TDC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC1R_AD1TDC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC1R_AD1TDPER_Field is STM32_SVD.Bit;
   --  ADC1R_AD1TEC array element
   subtype ADC1R_AD1TEC_Element is STM32_SVD.Bit;

   --  ADC1R_AD1TEC array
   type ADC1R_AD1TEC_Field_Array is array (2 .. 4) of ADC1R_AD1TEC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC1R_AD1TEC
   type ADC1R_AD1TEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1TEC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD1TEC as an array
            Arr : ADC1R_AD1TEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC1R_AD1TEC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC1R_AD1TEPER_Field is STM32_SVD.Bit;

   --  ADC Trigger 1 Register
   type ADC1R_Register is record
      --  ADC trigger 1 on Master Compare 1
      AD1MC    : ADC1R_AD1MC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 1 on Master Period
      AD1MPER  : ADC1R_AD1MPER_Field := 16#0#;
      --  ADC trigger 1 on External Event 1
      AD1EEV   : ADC1R_AD1EEV_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 1 on Timer A compare 2
      AD1TAC   : ADC1R_AD1TAC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 1 on Timer A Period
      AD1TAPER : ADC1R_AD1TAPER_Field := 16#0#;
      --  ADC trigger 1 on Timer A Reset
      AD1TARST : ADC1R_AD1TARST_Field := 16#0#;
      --  ADC trigger 1 on Timer B compare 2
      AD1TBC   : ADC1R_AD1TBC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 1 on Timer B Period
      AD1TBPER : ADC1R_AD1TBPER_Field := 16#0#;
      --  ADC trigger 1 on Timer B Reset
      AD1TBRST : ADC1R_AD1TBRST_Field := 16#0#;
      --  ADC trigger 1 on Timer C compare 2
      AD1TCC   : ADC1R_AD1TCC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 1 on Timer C Period
      AD1TCPER : ADC1R_AD1TCPER_Field := 16#0#;
      --  ADC trigger 1 on Timer D compare 2
      AD1TDC   : ADC1R_AD1TDC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 1 on Timer D Period
      AD1TDPER : ADC1R_AD1TDPER_Field := 16#0#;
      --  ADC trigger 1 on Timer E compare 2
      AD1TEC   : ADC1R_AD1TEC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 1 on Timer E Period
      AD1TEPER : ADC1R_AD1TEPER_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC1R_Register use record
      AD1MC    at 0 range 0 .. 3;
      AD1MPER  at 0 range 4 .. 4;
      AD1EEV   at 0 range 5 .. 9;
      AD1TAC   at 0 range 10 .. 12;
      AD1TAPER at 0 range 13 .. 13;
      AD1TARST at 0 range 14 .. 14;
      AD1TBC   at 0 range 15 .. 17;
      AD1TBPER at 0 range 18 .. 18;
      AD1TBRST at 0 range 19 .. 19;
      AD1TCC   at 0 range 20 .. 22;
      AD1TCPER at 0 range 23 .. 23;
      AD1TDC   at 0 range 24 .. 26;
      AD1TDPER at 0 range 27 .. 27;
      AD1TEC   at 0 range 28 .. 30;
      AD1TEPER at 0 range 31 .. 31;
   end record;

   --  ADC2R_AD2MC array element
   subtype ADC2R_AD2MC_Element is STM32_SVD.Bit;

   --  ADC2R_AD2MC array
   type ADC2R_AD2MC_Field_Array is array (1 .. 4) of ADC2R_AD2MC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC2R_AD2MC
   type ADC2R_AD2MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2MC as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  AD2MC as an array
            Arr : ADC2R_AD2MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC2R_AD2MC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype ADC2R_AD2MPER_Field is STM32_SVD.Bit;
   --  ADC2R_AD2EEV array element
   subtype ADC2R_AD2EEV_Element is STM32_SVD.Bit;

   --  ADC2R_AD2EEV array
   type ADC2R_AD2EEV_Field_Array is array (6 .. 10) of ADC2R_AD2EEV_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for ADC2R_AD2EEV
   type ADC2R_AD2EEV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2EEV as a value
            Val : STM32_SVD.UInt5;
         when True =>
            --  AD2EEV as an array
            Arr : ADC2R_AD2EEV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for ADC2R_AD2EEV_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  ADC2R_AD2TAC array element
   subtype ADC2R_AD2TAC_Element is STM32_SVD.Bit;

   --  ADC2R_AD2TAC array
   type ADC2R_AD2TAC_Field_Array is array (2 .. 4) of ADC2R_AD2TAC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC2R_AD2TAC
   type ADC2R_AD2TAC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2TAC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD2TAC as an array
            Arr : ADC2R_AD2TAC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC2R_AD2TAC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC2R_AD2TAPER_Field is STM32_SVD.Bit;
   --  ADC2R_AD2TBC array element
   subtype ADC2R_AD2TBC_Element is STM32_SVD.Bit;

   --  ADC2R_AD2TBC array
   type ADC2R_AD2TBC_Field_Array is array (2 .. 4) of ADC2R_AD2TBC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC2R_AD2TBC
   type ADC2R_AD2TBC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2TBC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD2TBC as an array
            Arr : ADC2R_AD2TBC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC2R_AD2TBC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC2R_AD2TBPER_Field is STM32_SVD.Bit;
   --  ADC2R_AD2TCC array element
   subtype ADC2R_AD2TCC_Element is STM32_SVD.Bit;

   --  ADC2R_AD2TCC array
   type ADC2R_AD2TCC_Field_Array is array (2 .. 4) of ADC2R_AD2TCC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC2R_AD2TCC
   type ADC2R_AD2TCC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2TCC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD2TCC as an array
            Arr : ADC2R_AD2TCC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC2R_AD2TCC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC2R_AD2TCPER_Field is STM32_SVD.Bit;
   subtype ADC2R_AD2TCRST_Field is STM32_SVD.Bit;
   --  ADC2R_AD2TDC array element
   subtype ADC2R_AD2TDC_Element is STM32_SVD.Bit;

   --  ADC2R_AD2TDC array
   type ADC2R_AD2TDC_Field_Array is array (2 .. 4) of ADC2R_AD2TDC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC2R_AD2TDC
   type ADC2R_AD2TDC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2TDC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD2TDC as an array
            Arr : ADC2R_AD2TDC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC2R_AD2TDC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC2R_AD2TDPER_Field is STM32_SVD.Bit;
   subtype ADC2R_AD2TDRST_Field is STM32_SVD.Bit;
   --  ADC2R_AD2TEC array element
   subtype ADC2R_AD2TEC_Element is STM32_SVD.Bit;

   --  ADC2R_AD2TEC array
   type ADC2R_AD2TEC_Field_Array is array (2 .. 4) of ADC2R_AD2TEC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC2R_AD2TEC
   type ADC2R_AD2TEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2TEC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD2TEC as an array
            Arr : ADC2R_AD2TEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC2R_AD2TEC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC2R_AD2TERST_Field is STM32_SVD.Bit;

   --  ADC Trigger 2 Register
   type ADC2R_Register is record
      --  ADC trigger 2 on Master Compare 1
      AD2MC    : ADC2R_AD2MC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 2 on Master Period
      AD2MPER  : ADC2R_AD2MPER_Field := 16#0#;
      --  ADC trigger 2 on External Event 6
      AD2EEV   : ADC2R_AD2EEV_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 2 on Timer A compare 2
      AD2TAC   : ADC2R_AD2TAC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 2 on Timer A Period
      AD2TAPER : ADC2R_AD2TAPER_Field := 16#0#;
      --  ADC trigger 2 on Timer B compare 2
      AD2TBC   : ADC2R_AD2TBC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 2 on Timer B Period
      AD2TBPER : ADC2R_AD2TBPER_Field := 16#0#;
      --  ADC trigger 2 on Timer C compare 2
      AD2TCC   : ADC2R_AD2TCC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 2 on Timer C Period
      AD2TCPER : ADC2R_AD2TCPER_Field := 16#0#;
      --  ADC trigger 2 on Timer C Reset
      AD2TCRST : ADC2R_AD2TCRST_Field := 16#0#;
      --  ADC trigger 2 on Timer D compare 2
      AD2TDC   : ADC2R_AD2TDC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 2 on Timer D Period
      AD2TDPER : ADC2R_AD2TDPER_Field := 16#0#;
      --  ADC trigger 2 on Timer D Reset
      AD2TDRST : ADC2R_AD2TDRST_Field := 16#0#;
      --  ADC trigger 2 on Timer E compare 2
      AD2TEC   : ADC2R_AD2TEC_Field := (As_Array => False, Val => 16#0#);
      --  ADC trigger 2 on Timer E Reset
      AD2TERST : ADC2R_AD2TERST_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC2R_Register use record
      AD2MC    at 0 range 0 .. 3;
      AD2MPER  at 0 range 4 .. 4;
      AD2EEV   at 0 range 5 .. 9;
      AD2TAC   at 0 range 10 .. 12;
      AD2TAPER at 0 range 13 .. 13;
      AD2TBC   at 0 range 14 .. 16;
      AD2TBPER at 0 range 17 .. 17;
      AD2TCC   at 0 range 18 .. 20;
      AD2TCPER at 0 range 21 .. 21;
      AD2TCRST at 0 range 22 .. 22;
      AD2TDC   at 0 range 23 .. 25;
      AD2TDPER at 0 range 26 .. 26;
      AD2TDRST at 0 range 27 .. 27;
      AD2TEC   at 0 range 28 .. 30;
      AD2TERST at 0 range 31 .. 31;
   end record;

   --  ADC3R_AD1MC array element
   subtype ADC3R_AD1MC_Element is STM32_SVD.Bit;

   --  ADC3R_AD1MC array
   type ADC3R_AD1MC_Field_Array is array (1 .. 4) of ADC3R_AD1MC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC3R_AD1MC
   type ADC3R_AD1MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1MC as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  AD1MC as an array
            Arr : ADC3R_AD1MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC3R_AD1MC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype ADC3R_AD1MPER_Field is STM32_SVD.Bit;
   --  ADC3R_AD1EEV array element
   subtype ADC3R_AD1EEV_Element is STM32_SVD.Bit;

   --  ADC3R_AD1EEV array
   type ADC3R_AD1EEV_Field_Array is array (1 .. 5) of ADC3R_AD1EEV_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for ADC3R_AD1EEV
   type ADC3R_AD1EEV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1EEV as a value
            Val : STM32_SVD.UInt5;
         when True =>
            --  AD1EEV as an array
            Arr : ADC3R_AD1EEV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for ADC3R_AD1EEV_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  ADC3R_AD1TAC array element
   subtype ADC3R_AD1TAC_Element is STM32_SVD.Bit;

   --  ADC3R_AD1TAC array
   type ADC3R_AD1TAC_Field_Array is array (2 .. 4) of ADC3R_AD1TAC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC3R_AD1TAC
   type ADC3R_AD1TAC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1TAC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD1TAC as an array
            Arr : ADC3R_AD1TAC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC3R_AD1TAC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC3R_AD1TAPER_Field is STM32_SVD.Bit;
   subtype ADC3R_AD1TARST_Field is STM32_SVD.Bit;
   --  ADC3R_AD1TBC array element
   subtype ADC3R_AD1TBC_Element is STM32_SVD.Bit;

   --  ADC3R_AD1TBC array
   type ADC3R_AD1TBC_Field_Array is array (2 .. 4) of ADC3R_AD1TBC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC3R_AD1TBC
   type ADC3R_AD1TBC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1TBC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD1TBC as an array
            Arr : ADC3R_AD1TBC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC3R_AD1TBC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC3R_AD1TBPER_Field is STM32_SVD.Bit;
   subtype ADC3R_AD1TBRST_Field is STM32_SVD.Bit;
   --  ADC3R_AD1TCC array element
   subtype ADC3R_AD1TCC_Element is STM32_SVD.Bit;

   --  ADC3R_AD1TCC array
   type ADC3R_AD1TCC_Field_Array is array (2 .. 4) of ADC3R_AD1TCC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC3R_AD1TCC
   type ADC3R_AD1TCC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1TCC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD1TCC as an array
            Arr : ADC3R_AD1TCC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC3R_AD1TCC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC3R_AD1TCPER_Field is STM32_SVD.Bit;
   --  ADC3R_AD1TDC array element
   subtype ADC3R_AD1TDC_Element is STM32_SVD.Bit;

   --  ADC3R_AD1TDC array
   type ADC3R_AD1TDC_Field_Array is array (2 .. 4) of ADC3R_AD1TDC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC3R_AD1TDC
   type ADC3R_AD1TDC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1TDC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD1TDC as an array
            Arr : ADC3R_AD1TDC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC3R_AD1TDC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC3R_AD1TDPER_Field is STM32_SVD.Bit;
   --  ADC3R_AD1TEC array element
   subtype ADC3R_AD1TEC_Element is STM32_SVD.Bit;

   --  ADC3R_AD1TEC array
   type ADC3R_AD1TEC_Field_Array is array (2 .. 4) of ADC3R_AD1TEC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC3R_AD1TEC
   type ADC3R_AD1TEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD1TEC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD1TEC as an array
            Arr : ADC3R_AD1TEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC3R_AD1TEC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC3R_AD1TEPER_Field is STM32_SVD.Bit;

   --  ADC Trigger 3 Register
   type ADC3R_Register is record
      --  AD1MC1
      AD1MC    : ADC3R_AD1MC_Field := (As_Array => False, Val => 16#0#);
      --  AD1MPER
      AD1MPER  : ADC3R_AD1MPER_Field := 16#0#;
      --  AD1EEV1
      AD1EEV   : ADC3R_AD1EEV_Field := (As_Array => False, Val => 16#0#);
      --  AD1TAC2
      AD1TAC   : ADC3R_AD1TAC_Field := (As_Array => False, Val => 16#0#);
      --  AD1TAPER
      AD1TAPER : ADC3R_AD1TAPER_Field := 16#0#;
      --  AD1TARST
      AD1TARST : ADC3R_AD1TARST_Field := 16#0#;
      --  AD1TBC2
      AD1TBC   : ADC3R_AD1TBC_Field := (As_Array => False, Val => 16#0#);
      --  AD1TBPER
      AD1TBPER : ADC3R_AD1TBPER_Field := 16#0#;
      --  AD1TBRST
      AD1TBRST : ADC3R_AD1TBRST_Field := 16#0#;
      --  AD1TCC2
      AD1TCC   : ADC3R_AD1TCC_Field := (As_Array => False, Val => 16#0#);
      --  AD1TCPER
      AD1TCPER : ADC3R_AD1TCPER_Field := 16#0#;
      --  AD1TDC2
      AD1TDC   : ADC3R_AD1TDC_Field := (As_Array => False, Val => 16#0#);
      --  AD1TDPER
      AD1TDPER : ADC3R_AD1TDPER_Field := 16#0#;
      --  AD1TEC2
      AD1TEC   : ADC3R_AD1TEC_Field := (As_Array => False, Val => 16#0#);
      --  AD1TEPER
      AD1TEPER : ADC3R_AD1TEPER_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC3R_Register use record
      AD1MC    at 0 range 0 .. 3;
      AD1MPER  at 0 range 4 .. 4;
      AD1EEV   at 0 range 5 .. 9;
      AD1TAC   at 0 range 10 .. 12;
      AD1TAPER at 0 range 13 .. 13;
      AD1TARST at 0 range 14 .. 14;
      AD1TBC   at 0 range 15 .. 17;
      AD1TBPER at 0 range 18 .. 18;
      AD1TBRST at 0 range 19 .. 19;
      AD1TCC   at 0 range 20 .. 22;
      AD1TCPER at 0 range 23 .. 23;
      AD1TDC   at 0 range 24 .. 26;
      AD1TDPER at 0 range 27 .. 27;
      AD1TEC   at 0 range 28 .. 30;
      AD1TEPER at 0 range 31 .. 31;
   end record;

   --  ADC4R_AD2MC array element
   subtype ADC4R_AD2MC_Element is STM32_SVD.Bit;

   --  ADC4R_AD2MC array
   type ADC4R_AD2MC_Field_Array is array (1 .. 4) of ADC4R_AD2MC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC4R_AD2MC
   type ADC4R_AD2MC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2MC as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  AD2MC as an array
            Arr : ADC4R_AD2MC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC4R_AD2MC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype ADC4R_AD2MPER_Field is STM32_SVD.Bit;
   --  ADC4R_AD2EEV array element
   subtype ADC4R_AD2EEV_Element is STM32_SVD.Bit;

   --  ADC4R_AD2EEV array
   type ADC4R_AD2EEV_Field_Array is array (6 .. 10) of ADC4R_AD2EEV_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for ADC4R_AD2EEV
   type ADC4R_AD2EEV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2EEV as a value
            Val : STM32_SVD.UInt5;
         when True =>
            --  AD2EEV as an array
            Arr : ADC4R_AD2EEV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for ADC4R_AD2EEV_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  ADC4R_AD2TAC array element
   subtype ADC4R_AD2TAC_Element is STM32_SVD.Bit;

   --  ADC4R_AD2TAC array
   type ADC4R_AD2TAC_Field_Array is array (2 .. 4) of ADC4R_AD2TAC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC4R_AD2TAC
   type ADC4R_AD2TAC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2TAC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD2TAC as an array
            Arr : ADC4R_AD2TAC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC4R_AD2TAC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC4R_AD2TAPER_Field is STM32_SVD.Bit;
   --  ADC4R_AD2TBC array element
   subtype ADC4R_AD2TBC_Element is STM32_SVD.Bit;

   --  ADC4R_AD2TBC array
   type ADC4R_AD2TBC_Field_Array is array (2 .. 4) of ADC4R_AD2TBC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC4R_AD2TBC
   type ADC4R_AD2TBC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2TBC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD2TBC as an array
            Arr : ADC4R_AD2TBC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC4R_AD2TBC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC4R_AD2TBPER_Field is STM32_SVD.Bit;
   --  ADC4R_AD2TCC array element
   subtype ADC4R_AD2TCC_Element is STM32_SVD.Bit;

   --  ADC4R_AD2TCC array
   type ADC4R_AD2TCC_Field_Array is array (2 .. 4) of ADC4R_AD2TCC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC4R_AD2TCC
   type ADC4R_AD2TCC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2TCC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD2TCC as an array
            Arr : ADC4R_AD2TCC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC4R_AD2TCC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC4R_AD2TCPER_Field is STM32_SVD.Bit;
   subtype ADC4R_AD2TCRST_Field is STM32_SVD.Bit;
   --  ADC4R_AD2TDC array element
   subtype ADC4R_AD2TDC_Element is STM32_SVD.Bit;

   --  ADC4R_AD2TDC array
   type ADC4R_AD2TDC_Field_Array is array (2 .. 4) of ADC4R_AD2TDC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC4R_AD2TDC
   type ADC4R_AD2TDC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2TDC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD2TDC as an array
            Arr : ADC4R_AD2TDC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC4R_AD2TDC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC4R_AD2TDPER_Field is STM32_SVD.Bit;
   subtype ADC4R_AD2TDRST_Field is STM32_SVD.Bit;
   --  ADC4R_AD2TEC array element
   subtype ADC4R_AD2TEC_Element is STM32_SVD.Bit;

   --  ADC4R_AD2TEC array
   type ADC4R_AD2TEC_Field_Array is array (2 .. 4) of ADC4R_AD2TEC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC4R_AD2TEC
   type ADC4R_AD2TEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AD2TEC as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  AD2TEC as an array
            Arr : ADC4R_AD2TEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC4R_AD2TEC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC4R_AD2TERST_Field is STM32_SVD.Bit;

   --  ADC Trigger 4 Register
   type ADC4R_Register is record
      --  AD2MC1
      AD2MC    : ADC4R_AD2MC_Field := (As_Array => False, Val => 16#0#);
      --  AD2MPER
      AD2MPER  : ADC4R_AD2MPER_Field := 16#0#;
      --  AD2EEV6
      AD2EEV   : ADC4R_AD2EEV_Field := (As_Array => False, Val => 16#0#);
      --  AD2TAC2
      AD2TAC   : ADC4R_AD2TAC_Field := (As_Array => False, Val => 16#0#);
      --  AD2TAPER
      AD2TAPER : ADC4R_AD2TAPER_Field := 16#0#;
      --  AD2TBC2
      AD2TBC   : ADC4R_AD2TBC_Field := (As_Array => False, Val => 16#0#);
      --  AD2TBPER
      AD2TBPER : ADC4R_AD2TBPER_Field := 16#0#;
      --  AD2TCC2
      AD2TCC   : ADC4R_AD2TCC_Field := (As_Array => False, Val => 16#0#);
      --  AD2TCPER
      AD2TCPER : ADC4R_AD2TCPER_Field := 16#0#;
      --  AD2TCRST
      AD2TCRST : ADC4R_AD2TCRST_Field := 16#0#;
      --  AD2TDC2
      AD2TDC   : ADC4R_AD2TDC_Field := (As_Array => False, Val => 16#0#);
      --  AD2TDPER
      AD2TDPER : ADC4R_AD2TDPER_Field := 16#0#;
      --  AD2TDRST
      AD2TDRST : ADC4R_AD2TDRST_Field := 16#0#;
      --  AD2TEC2
      AD2TEC   : ADC4R_AD2TEC_Field := (As_Array => False, Val => 16#0#);
      --  AD2TERST
      AD2TERST : ADC4R_AD2TERST_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC4R_Register use record
      AD2MC    at 0 range 0 .. 3;
      AD2MPER  at 0 range 4 .. 4;
      AD2EEV   at 0 range 5 .. 9;
      AD2TAC   at 0 range 10 .. 12;
      AD2TAPER at 0 range 13 .. 13;
      AD2TBC   at 0 range 14 .. 16;
      AD2TBPER at 0 range 17 .. 17;
      AD2TCC   at 0 range 18 .. 20;
      AD2TCPER at 0 range 21 .. 21;
      AD2TCRST at 0 range 22 .. 22;
      AD2TDC   at 0 range 23 .. 25;
      AD2TDPER at 0 range 26 .. 26;
      AD2TDRST at 0 range 27 .. 27;
      AD2TEC   at 0 range 28 .. 30;
      AD2TERST at 0 range 31 .. 31;
   end record;

   subtype DLLCR_CAL_Field is STM32_SVD.Bit;
   subtype DLLCR_CALEN_Field is STM32_SVD.Bit;
   subtype DLLCR_CALRTE_Field is STM32_SVD.UInt2;

   --  DLL Control Register
   type DLLCR_Register is record
      --  DLL Calibration Start
      CAL           : DLLCR_CAL_Field := 16#0#;
      --  DLL Calibration Enable
      CALEN         : DLLCR_CALEN_Field := 16#0#;
      --  DLL Calibration rate
      CALRTE        : DLLCR_CALRTE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : STM32_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLLCR_Register use record
      CAL           at 0 range 0 .. 0;
      CALEN         at 0 range 1 .. 1;
      CALRTE        at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype FLTINR1_FLT1E_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT1P_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT1SRC_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT1F_Field is STM32_SVD.UInt4;
   subtype FLTINR1_FLT1LCK_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT2E_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT2P_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT2SRC_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT2F_Field is STM32_SVD.UInt4;
   subtype FLTINR1_FLT2LCK_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT3E_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT3P_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT3SRC_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT3F_Field is STM32_SVD.UInt4;
   subtype FLTINR1_FLT3LCK_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT4E_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT4P_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT4SRC_Field is STM32_SVD.Bit;
   subtype FLTINR1_FLT4F_Field is STM32_SVD.UInt4;
   subtype FLTINR1_FLT4LCK_Field is STM32_SVD.Bit;

   --  HRTIM Fault Input Register 1
   type FLTINR1_Register is record
      --  FLT1E
      FLT1E   : FLTINR1_FLT1E_Field := 16#0#;
      --  FLT1P
      FLT1P   : FLTINR1_FLT1P_Field := 16#0#;
      --  FLT1SRC
      FLT1SRC : FLTINR1_FLT1SRC_Field := 16#0#;
      --  FLT1F
      FLT1F   : FLTINR1_FLT1F_Field := 16#0#;
      --  FLT1LCK
      FLT1LCK : FLTINR1_FLT1LCK_Field := 16#0#;
      --  FLT2E
      FLT2E   : FLTINR1_FLT2E_Field := 16#0#;
      --  FLT2P
      FLT2P   : FLTINR1_FLT2P_Field := 16#0#;
      --  FLT2SRC
      FLT2SRC : FLTINR1_FLT2SRC_Field := 16#0#;
      --  FLT2F
      FLT2F   : FLTINR1_FLT2F_Field := 16#0#;
      --  FLT2LCK
      FLT2LCK : FLTINR1_FLT2LCK_Field := 16#0#;
      --  FLT3E
      FLT3E   : FLTINR1_FLT3E_Field := 16#0#;
      --  FLT3P
      FLT3P   : FLTINR1_FLT3P_Field := 16#0#;
      --  FLT3SRC
      FLT3SRC : FLTINR1_FLT3SRC_Field := 16#0#;
      --  FLT3F
      FLT3F   : FLTINR1_FLT3F_Field := 16#0#;
      --  FLT3LCK
      FLT3LCK : FLTINR1_FLT3LCK_Field := 16#0#;
      --  FLT4E
      FLT4E   : FLTINR1_FLT4E_Field := 16#0#;
      --  FLT4P
      FLT4P   : FLTINR1_FLT4P_Field := 16#0#;
      --  FLT4SRC
      FLT4SRC : FLTINR1_FLT4SRC_Field := 16#0#;
      --  FLT4F
      FLT4F   : FLTINR1_FLT4F_Field := 16#0#;
      --  FLT4LCK
      FLT4LCK : FLTINR1_FLT4LCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLTINR1_Register use record
      FLT1E   at 0 range 0 .. 0;
      FLT1P   at 0 range 1 .. 1;
      FLT1SRC at 0 range 2 .. 2;
      FLT1F   at 0 range 3 .. 6;
      FLT1LCK at 0 range 7 .. 7;
      FLT2E   at 0 range 8 .. 8;
      FLT2P   at 0 range 9 .. 9;
      FLT2SRC at 0 range 10 .. 10;
      FLT2F   at 0 range 11 .. 14;
      FLT2LCK at 0 range 15 .. 15;
      FLT3E   at 0 range 16 .. 16;
      FLT3P   at 0 range 17 .. 17;
      FLT3SRC at 0 range 18 .. 18;
      FLT3F   at 0 range 19 .. 22;
      FLT3LCK at 0 range 23 .. 23;
      FLT4E   at 0 range 24 .. 24;
      FLT4P   at 0 range 25 .. 25;
      FLT4SRC at 0 range 26 .. 26;
      FLT4F   at 0 range 27 .. 30;
      FLT4LCK at 0 range 31 .. 31;
   end record;

   subtype FLTINR2_FLT5E_Field is STM32_SVD.Bit;
   subtype FLTINR2_FLT5P_Field is STM32_SVD.Bit;
   subtype FLTINR2_FLT5SRC_Field is STM32_SVD.Bit;
   subtype FLTINR2_FLT5F_Field is STM32_SVD.UInt4;
   subtype FLTINR2_FLT5LCK_Field is STM32_SVD.Bit;
   subtype FLTINR2_FLTSD_Field is STM32_SVD.UInt2;

   --  HRTIM Fault Input Register 2
   type FLTINR2_Register is record
      --  FLT5E
      FLT5E          : FLTINR2_FLT5E_Field := 16#0#;
      --  FLT5P
      FLT5P          : FLTINR2_FLT5P_Field := 16#0#;
      --  FLT5SRC
      FLT5SRC        : FLTINR2_FLT5SRC_Field := 16#0#;
      --  FLT5F
      FLT5F          : FLTINR2_FLT5F_Field := 16#0#;
      --  FLT5LCK
      FLT5LCK        : FLTINR2_FLT5LCK_Field := 16#0#;
      --  unspecified
      Reserved_8_23  : STM32_SVD.UInt16 := 16#0#;
      --  FLTSD
      FLTSD          : FLTINR2_FLTSD_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : STM32_SVD.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLTINR2_Register use record
      FLT5E          at 0 range 0 .. 0;
      FLT5P          at 0 range 1 .. 1;
      FLT5SRC        at 0 range 2 .. 2;
      FLT5F          at 0 range 3 .. 6;
      FLT5LCK        at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      FLTSD          at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype BDMUPDR_MCR_Field is STM32_SVD.Bit;
   subtype BDMUPDR_MICR_Field is STM32_SVD.Bit;
   subtype BDMUPDR_MDIER_Field is STM32_SVD.Bit;
   subtype BDMUPDR_MCNT_Field is STM32_SVD.Bit;
   subtype BDMUPDR_MPER_Field is STM32_SVD.Bit;
   subtype BDMUPDR_MREP_Field is STM32_SVD.Bit;
   --  BDMUPDR_MCMP array element
   subtype BDMUPDR_MCMP_Element is STM32_SVD.Bit;

   --  BDMUPDR_MCMP array
   type BDMUPDR_MCMP_Field_Array is array (1 .. 4) of BDMUPDR_MCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for BDMUPDR_MCMP
   type BDMUPDR_MCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MCMP as an array
            Arr : BDMUPDR_MCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for BDMUPDR_MCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  BDMUPDR
   type BDMUPDR_Register is record
      --  MCR
      MCR            : BDMUPDR_MCR_Field := 16#0#;
      --  MICR
      MICR           : BDMUPDR_MICR_Field := 16#0#;
      --  MDIER
      MDIER          : BDMUPDR_MDIER_Field := 16#0#;
      --  MCNT
      MCNT           : BDMUPDR_MCNT_Field := 16#0#;
      --  MPER
      MPER           : BDMUPDR_MPER_Field := 16#0#;
      --  MREP
      MREP           : BDMUPDR_MREP_Field := 16#0#;
      --  MCMP1
      MCMP           : BDMUPDR_MCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : STM32_SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDMUPDR_Register use record
      MCR            at 0 range 0 .. 0;
      MICR           at 0 range 1 .. 1;
      MDIER          at 0 range 2 .. 2;
      MCNT           at 0 range 3 .. 3;
      MPER           at 0 range 4 .. 4;
      MREP           at 0 range 5 .. 5;
      MCMP           at 0 range 6 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype BDTxUPR_TIMxCR_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxICR_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxDIER_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxCNT_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxPER_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxREP_Field is STM32_SVD.Bit;
   --  BDTxUPR_TIMxCMP array element
   subtype BDTxUPR_TIMxCMP_Element is STM32_SVD.Bit;

   --  BDTxUPR_TIMxCMP array
   type BDTxUPR_TIMxCMP_Field_Array is array (1 .. 4)
     of BDTxUPR_TIMxCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for BDTxUPR_TIMxCMP
   type BDTxUPR_TIMxCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMxCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  TIMxCMP as an array
            Arr : BDTxUPR_TIMxCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for BDTxUPR_TIMxCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype BDTxUPR_TIMx_DTxR_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxSET1R_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxRST1R_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxSET2R_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxRST2R_Field is STM32_SVD.Bit;
   --  BDTxUPR_TIMxEEFR array element
   subtype BDTxUPR_TIMxEEFR_Element is STM32_SVD.Bit;

   --  BDTxUPR_TIMxEEFR array
   type BDTxUPR_TIMxEEFR_Field_Array is array (1 .. 2)
     of BDTxUPR_TIMxEEFR_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for BDTxUPR_TIMxEEFR
   type BDTxUPR_TIMxEEFR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMxEEFR as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TIMxEEFR as an array
            Arr : BDTxUPR_TIMxEEFR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BDTxUPR_TIMxEEFR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype BDTxUPR_TIMxRSTR_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxCHPR_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxOUTR_Field is STM32_SVD.Bit;
   subtype BDTxUPR_TIMxFLTR_Field is STM32_SVD.Bit;

   --  Burst DMA Timerx update Register
   type BDTxUPR_Register is record
      --  HRTIM_TIMxCR register update enable
      TIMxCR         : BDTxUPR_TIMxCR_Field := 16#0#;
      --  HRTIM_TIMxICR register update enable
      TIMxICR        : BDTxUPR_TIMxICR_Field := 16#0#;
      --  HRTIM_TIMxDIER register update enable
      TIMxDIER       : BDTxUPR_TIMxDIER_Field := 16#0#;
      --  HRTIM_CNTxR register update enable
      TIMxCNT        : BDTxUPR_TIMxCNT_Field := 16#0#;
      --  HRTIM_PERxR register update enable
      TIMxPER        : BDTxUPR_TIMxPER_Field := 16#0#;
      --  HRTIM_REPxR register update enable
      TIMxREP        : BDTxUPR_TIMxREP_Field := 16#0#;
      --  HRTIM_CMP1xR register update enable
      TIMxCMP        : BDTxUPR_TIMxCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  HRTIM_DTxR register update enable
      TIMx_DTxR      : BDTxUPR_TIMx_DTxR_Field := 16#0#;
      --  HRTIM_SET1xR register update enable
      TIMxSET1R      : BDTxUPR_TIMxSET1R_Field := 16#0#;
      --  HRTIM_RST1xR register update enable
      TIMxRST1R      : BDTxUPR_TIMxRST1R_Field := 16#0#;
      --  HRTIM_SET2xR register update enable
      TIMxSET2R      : BDTxUPR_TIMxSET2R_Field := 16#0#;
      --  HRTIM_RST2xR register update enable
      TIMxRST2R      : BDTxUPR_TIMxRST2R_Field := 16#0#;
      --  HRTIM_EEFxR1 register update enable
      TIMxEEFR       : BDTxUPR_TIMxEEFR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  HRTIM_RSTxR register update enable
      TIMxRSTR       : BDTxUPR_TIMxRSTR_Field := 16#0#;
      --  HRTIM_CHPxR register update enable
      TIMxCHPR       : BDTxUPR_TIMxCHPR_Field := 16#0#;
      --  HRTIM_OUTxR register update enable
      TIMxOUTR       : BDTxUPR_TIMxOUTR_Field := 16#0#;
      --  HRTIM_FLTxR register update enable
      TIMxFLTR       : BDTxUPR_TIMxFLTR_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : STM32_SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDTxUPR_Register use record
      TIMxCR         at 0 range 0 .. 0;
      TIMxICR        at 0 range 1 .. 1;
      TIMxDIER       at 0 range 2 .. 2;
      TIMxCNT        at 0 range 3 .. 3;
      TIMxPER        at 0 range 4 .. 4;
      TIMxREP        at 0 range 5 .. 5;
      TIMxCMP        at 0 range 6 .. 9;
      TIMx_DTxR      at 0 range 10 .. 10;
      TIMxSET1R      at 0 range 11 .. 11;
      TIMxRST1R      at 0 range 12 .. 12;
      TIMxSET2R      at 0 range 13 .. 13;
      TIMxRST2R      at 0 range 14 .. 14;
      TIMxEEFR       at 0 range 15 .. 16;
      TIMxRSTR       at 0 range 17 .. 17;
      TIMxCHPR       at 0 range 18 .. 18;
      TIMxOUTR       at 0 range 19 .. 19;
      TIMxFLTR       at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype MCR_CK_PSC_Field is STM32_SVD.UInt3;
   subtype MCR_CONT_Field is STM32_SVD.Bit;
   subtype MCR_RETRIG_Field is STM32_SVD.Bit;
   subtype MCR_HALF_Field is STM32_SVD.Bit;
   subtype MCR_SYNC_IN_Field is STM32_SVD.UInt2;
   subtype MCR_SYNCRSTM_Field is STM32_SVD.Bit;
   subtype MCR_SYNCSTRTM_Field is STM32_SVD.Bit;
   subtype MCR_SYNC_OUT_Field is STM32_SVD.UInt2;
   subtype MCR_SYNC_SRC_Field is STM32_SVD.UInt2;
   subtype MCR_MCEN_Field is STM32_SVD.Bit;
   subtype MCR_TACEN_Field is STM32_SVD.Bit;
   subtype MCR_TBCEN_Field is STM32_SVD.Bit;
   subtype MCR_TCCEN_Field is STM32_SVD.Bit;
   subtype MCR_TDCEN_Field is STM32_SVD.Bit;
   subtype MCR_TECEN_Field is STM32_SVD.Bit;
   subtype MCR_DACSYNC_Field is STM32_SVD.UInt2;
   subtype MCR_PREEN_Field is STM32_SVD.Bit;
   subtype MCR_MREPU_Field is STM32_SVD.Bit;
   subtype MCR_BRSTDMA_Field is STM32_SVD.UInt2;

   --  Master Timer Control Register
   type MCR_Register is record
      --  HRTIM Master Clock prescaler
      CK_PSC         : MCR_CK_PSC_Field := 16#0#;
      --  Master Continuous mode
      CONT           : MCR_CONT_Field := 16#0#;
      --  Master Re-triggerable mode
      RETRIG         : MCR_RETRIG_Field := 16#0#;
      --  Half mode enable
      HALF           : MCR_HALF_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32_SVD.UInt2 := 16#0#;
      --  ynchronization input
      SYNC_IN        : MCR_SYNC_IN_Field := 16#0#;
      --  Synchronization Resets Master
      SYNCRSTM       : MCR_SYNCRSTM_Field := 16#0#;
      --  Synchronization Starts Master
      SYNCSTRTM      : MCR_SYNCSTRTM_Field := 16#0#;
      --  Synchronization output
      SYNC_OUT       : MCR_SYNC_OUT_Field := 16#0#;
      --  Synchronization source
      SYNC_SRC       : MCR_SYNC_SRC_Field := 16#0#;
      --  Master Counter enable
      MCEN           : MCR_MCEN_Field := 16#0#;
      --  Timer A counter enable
      TACEN          : MCR_TACEN_Field := 16#0#;
      --  Timer B counter enable
      TBCEN          : MCR_TBCEN_Field := 16#0#;
      --  Timer C counter enable
      TCCEN          : MCR_TCCEN_Field := 16#0#;
      --  Timer D counter enable
      TDCEN          : MCR_TDCEN_Field := 16#0#;
      --  Timer E counter enable
      TECEN          : MCR_TECEN_Field := 16#0#;
      --  unspecified
      Reserved_22_24 : STM32_SVD.UInt3 := 16#0#;
      --  AC Synchronization
      DACSYNC        : MCR_DACSYNC_Field := 16#0#;
      --  Preload enable
      PREEN          : MCR_PREEN_Field := 16#0#;
      --  unspecified
      Reserved_28_28 : STM32_SVD.Bit := 16#0#;
      --  Master Timer Repetition update
      MREPU          : MCR_MREPU_Field := 16#0#;
      --  Burst DMA Update
      BRSTDMA        : MCR_BRSTDMA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCR_Register use record
      CK_PSC         at 0 range 0 .. 2;
      CONT           at 0 range 3 .. 3;
      RETRIG         at 0 range 4 .. 4;
      HALF           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SYNC_IN        at 0 range 8 .. 9;
      SYNCRSTM       at 0 range 10 .. 10;
      SYNCSTRTM      at 0 range 11 .. 11;
      SYNC_OUT       at 0 range 12 .. 13;
      SYNC_SRC       at 0 range 14 .. 15;
      MCEN           at 0 range 16 .. 16;
      TACEN          at 0 range 17 .. 17;
      TBCEN          at 0 range 18 .. 18;
      TCCEN          at 0 range 19 .. 19;
      TDCEN          at 0 range 20 .. 20;
      TECEN          at 0 range 21 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      DACSYNC        at 0 range 25 .. 26;
      PREEN          at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      MREPU          at 0 range 29 .. 29;
      BRSTDMA        at 0 range 30 .. 31;
   end record;

   --  MISR_MCMP array element
   subtype MISR_MCMP_Element is STM32_SVD.Bit;

   --  MISR_MCMP array
   type MISR_MCMP_Field_Array is array (1 .. 4) of MISR_MCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for MISR_MCMP
   type MISR_MCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MCMP as an array
            Arr : MISR_MCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for MISR_MCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype MISR_MREP_Field is STM32_SVD.Bit;
   subtype MISR_SYNC_Field is STM32_SVD.Bit;
   subtype MISR_MUPD_Field is STM32_SVD.Bit;

   --  Master Timer Interrupt Status Register
   type MISR_Register is record
      --  Read-only. Master Compare 1 Interrupt Flag
      MCMP          : MISR_MCMP_Field;
      --  Read-only. Master Repetition Interrupt Flag
      MREP          : MISR_MREP_Field;
      --  Read-only. Sync Input Interrupt Flag
      SYNC          : MISR_SYNC_Field;
      --  Read-only. Master Update Interrupt Flag
      MUPD          : MISR_MUPD_Field;
      --  unspecified
      Reserved_7_31 : STM32_SVD.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISR_Register use record
      MCMP          at 0 range 0 .. 3;
      MREP          at 0 range 4 .. 4;
      SYNC          at 0 range 5 .. 5;
      MUPD          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype MICR_MCMP1C_Field is STM32_SVD.Bit;
   subtype MICR_MCMP2C_Field is STM32_SVD.Bit;
   subtype MICR_MCMP3C_Field is STM32_SVD.Bit;
   subtype MICR_MCMP4C_Field is STM32_SVD.Bit;
   subtype MICR_MREPC_Field is STM32_SVD.Bit;
   subtype MICR_SYNCC_Field is STM32_SVD.Bit;
   subtype MICR_MUPDC_Field is STM32_SVD.Bit;

   --  Master Timer Interrupt Clear Register
   type MICR_Register is record
      --  Write-only. Master Compare 1 Interrupt flag clear
      MCMP1C        : MICR_MCMP1C_Field := 16#0#;
      --  Write-only. Master Compare 2 Interrupt flag clear
      MCMP2C        : MICR_MCMP2C_Field := 16#0#;
      --  Write-only. Master Compare 3 Interrupt flag clear
      MCMP3C        : MICR_MCMP3C_Field := 16#0#;
      --  Write-only. Master Compare 4 Interrupt flag clear
      MCMP4C        : MICR_MCMP4C_Field := 16#0#;
      --  Write-only. Repetition Interrupt flag clear
      MREPC         : MICR_MREPC_Field := 16#0#;
      --  Write-only. Sync Input Interrupt flag clear
      SYNCC         : MICR_SYNCC_Field := 16#0#;
      --  Write-only. Master update Interrupt flag clear
      MUPDC         : MICR_MUPDC_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : STM32_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MICR_Register use record
      MCMP1C        at 0 range 0 .. 0;
      MCMP2C        at 0 range 1 .. 1;
      MCMP3C        at 0 range 2 .. 2;
      MCMP4C        at 0 range 3 .. 3;
      MREPC         at 0 range 4 .. 4;
      SYNCC         at 0 range 5 .. 5;
      MUPDC         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype MDIER4_MCMP1IE_Field is STM32_SVD.Bit;
   subtype MDIER4_MCMP2IE_Field is STM32_SVD.Bit;
   subtype MDIER4_MCMP3IE_Field is STM32_SVD.Bit;
   subtype MDIER4_MCMP4IE_Field is STM32_SVD.Bit;
   subtype MDIER4_MREPIE_Field is STM32_SVD.Bit;
   subtype MDIER4_SYNCIE_Field is STM32_SVD.Bit;
   subtype MDIER4_MUPDIE_Field is STM32_SVD.Bit;
   subtype MDIER4_MCMP1DE_Field is STM32_SVD.Bit;
   subtype MDIER4_MCMP2DE_Field is STM32_SVD.Bit;
   subtype MDIER4_MCMP3DE_Field is STM32_SVD.Bit;
   subtype MDIER4_MCMP4DE_Field is STM32_SVD.Bit;
   subtype MDIER4_MREPDE_Field is STM32_SVD.Bit;
   subtype MDIER4_SYNCDE_Field is STM32_SVD.Bit;
   subtype MDIER4_MUPDDE_Field is STM32_SVD.Bit;

   --  MDIER4
   type MDIER4_Register is record
      --  MCMP1IE
      MCMP1IE        : MDIER4_MCMP1IE_Field := 16#0#;
      --  MCMP2IE
      MCMP2IE        : MDIER4_MCMP2IE_Field := 16#0#;
      --  MCMP3IE
      MCMP3IE        : MDIER4_MCMP3IE_Field := 16#0#;
      --  MCMP4IE
      MCMP4IE        : MDIER4_MCMP4IE_Field := 16#0#;
      --  MREPIE
      MREPIE         : MDIER4_MREPIE_Field := 16#0#;
      --  SYNCIE
      SYNCIE         : MDIER4_SYNCIE_Field := 16#0#;
      --  MUPDIE
      MUPDIE         : MDIER4_MUPDIE_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : STM32_SVD.UInt9 := 16#0#;
      --  MCMP1DE
      MCMP1DE        : MDIER4_MCMP1DE_Field := 16#0#;
      --  MCMP2DE
      MCMP2DE        : MDIER4_MCMP2DE_Field := 16#0#;
      --  MCMP3DE
      MCMP3DE        : MDIER4_MCMP3DE_Field := 16#0#;
      --  MCMP4DE
      MCMP4DE        : MDIER4_MCMP4DE_Field := 16#0#;
      --  MREPDE
      MREPDE         : MDIER4_MREPDE_Field := 16#0#;
      --  SYNCDE
      SYNCDE         : MDIER4_SYNCDE_Field := 16#0#;
      --  MUPDDE
      MUPDDE         : MDIER4_MUPDDE_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : STM32_SVD.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDIER4_Register use record
      MCMP1IE        at 0 range 0 .. 0;
      MCMP2IE        at 0 range 1 .. 1;
      MCMP3IE        at 0 range 2 .. 2;
      MCMP4IE        at 0 range 3 .. 3;
      MREPIE         at 0 range 4 .. 4;
      SYNCIE         at 0 range 5 .. 5;
      MUPDIE         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      MCMP1DE        at 0 range 16 .. 16;
      MCMP2DE        at 0 range 17 .. 17;
      MCMP3DE        at 0 range 18 .. 18;
      MCMP4DE        at 0 range 19 .. 19;
      MREPDE         at 0 range 20 .. 20;
      SYNCDE         at 0 range 21 .. 21;
      MUPDDE         at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype MCNTR_MCNT_Field is STM32_SVD.UInt16;

   --  Master Timer Counter Register
   type MCNTR_Register is record
      --  Counter value
      MCNT           : MCNTR_MCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCNTR_Register use record
      MCNT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MPER_MPER_Field is STM32_SVD.UInt16;

   --  Master Timer Period Register
   type MPER_Register is record
      --  Master Timer Period value
      MPER           : MPER_MPER_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPER_Register use record
      MPER           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MREP_MREP_Field is STM32_SVD.Byte;

   --  Master Timer Repetition Register
   type MREP_Register is record
      --  Master Timer Repetition counter value
      MREP          : MREP_MREP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MREP_Register use record
      MREP          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MCMP1R_MCMP1_Field is STM32_SVD.UInt16;

   --  Master Timer Compare 1 Register
   type MCMP1R_Register is record
      --  Master Timer Compare 1 value
      MCMP1          : MCMP1R_MCMP1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCMP1R_Register use record
      MCMP1          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MCMP2R_MCMP2_Field is STM32_SVD.UInt16;

   --  Master Timer Compare 2 Register
   type MCMP2R_Register is record
      --  Master Timer Compare 2 value
      MCMP2          : MCMP2R_MCMP2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCMP2R_Register use record
      MCMP2          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MCMP3R_MCMP3_Field is STM32_SVD.UInt16;

   --  Master Timer Compare 3 Register
   type MCMP3R_Register is record
      --  Master Timer Compare 3 value
      MCMP3          : MCMP3R_MCMP3_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCMP3R_Register use record
      MCMP3          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MCMP4R_MCMP4_Field is STM32_SVD.UInt16;

   --  Master Timer Compare 4 Register
   type MCMP4R_Register is record
      --  Master Timer Compare 4 value
      MCMP4          : MCMP4R_MCMP4_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCMP4R_Register use record
      MCMP4          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMACR_CK_PSCx_Field is STM32_SVD.UInt3;
   subtype TIMACR_CONT_Field is STM32_SVD.Bit;
   subtype TIMACR_RETRIG_Field is STM32_SVD.Bit;
   subtype TIMACR_HALF_Field is STM32_SVD.Bit;
   subtype TIMACR_PSHPLL_Field is STM32_SVD.Bit;
   subtype TIMACR_SYNCRSTx_Field is STM32_SVD.Bit;
   subtype TIMACR_SYNCSTRTx_Field is STM32_SVD.Bit;
   --  TIMACR_DELCMP array element
   subtype TIMACR_DELCMP_Element is STM32_SVD.UInt2;

   --  TIMACR_DELCMP array
   type TIMACR_DELCMP_Field_Array is array (2 .. 3) of TIMACR_DELCMP_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for TIMACR_DELCMP
   type TIMACR_DELCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  DELCMP as an array
            Arr : TIMACR_DELCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMACR_DELCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TIMACR_TxREPU_Field is STM32_SVD.Bit;
   subtype TIMACR_TxRSTU_Field is STM32_SVD.Bit;
   subtype TIMACR_TBU_Field is STM32_SVD.Bit;
   subtype TIMACR_TCU_Field is STM32_SVD.Bit;
   subtype TIMACR_TDU_Field is STM32_SVD.Bit;
   subtype TIMACR_TEU_Field is STM32_SVD.Bit;
   subtype TIMACR_MSTU_Field is STM32_SVD.Bit;
   subtype TIMACR_DACSYNC_Field is STM32_SVD.UInt2;
   subtype TIMACR_PREEN_Field is STM32_SVD.Bit;
   subtype TIMACR_UPDGAT_Field is STM32_SVD.UInt4;

   --  Timerx Control Register
   type TIMACR_Register is record
      --  HRTIM Timer x Clock prescaler
      CK_PSCx        : TIMACR_CK_PSCx_Field := 16#0#;
      --  Continuous mode
      CONT           : TIMACR_CONT_Field := 16#0#;
      --  Re-triggerable mode
      RETRIG         : TIMACR_RETRIG_Field := 16#0#;
      --  Half mode enable
      HALF           : TIMACR_HALF_Field := 16#0#;
      --  Push-Pull mode enable
      PSHPLL         : TIMACR_PSHPLL_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : STM32_SVD.UInt3 := 16#0#;
      --  Synchronization Resets Timer x
      SYNCRSTx       : TIMACR_SYNCRSTx_Field := 16#0#;
      --  Synchronization Starts Timer x
      SYNCSTRTx      : TIMACR_SYNCSTRTx_Field := 16#0#;
      --  Delayed CMP2 mode
      DELCMP         : TIMACR_DELCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : STM32_SVD.Bit := 16#0#;
      --  Timer x Repetition update
      TxREPU         : TIMACR_TxREPU_Field := 16#0#;
      --  Timerx reset update
      TxRSTU         : TIMACR_TxRSTU_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : STM32_SVD.Bit := 16#0#;
      --  TBU
      TBU            : TIMACR_TBU_Field := 16#0#;
      --  TCU
      TCU            : TIMACR_TCU_Field := 16#0#;
      --  TDU
      TDU            : TIMACR_TDU_Field := 16#0#;
      --  TEU
      TEU            : TIMACR_TEU_Field := 16#0#;
      --  Master Timer update
      MSTU           : TIMACR_MSTU_Field := 16#0#;
      --  AC Synchronization
      DACSYNC        : TIMACR_DACSYNC_Field := 16#0#;
      --  Preload enable
      PREEN          : TIMACR_PREEN_Field := 16#0#;
      --  Update Gating
      UPDGAT         : TIMACR_UPDGAT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMACR_Register use record
      CK_PSCx        at 0 range 0 .. 2;
      CONT           at 0 range 3 .. 3;
      RETRIG         at 0 range 4 .. 4;
      HALF           at 0 range 5 .. 5;
      PSHPLL         at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      SYNCRSTx       at 0 range 10 .. 10;
      SYNCSTRTx      at 0 range 11 .. 11;
      DELCMP         at 0 range 12 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      TxREPU         at 0 range 17 .. 17;
      TxRSTU         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TBU            at 0 range 20 .. 20;
      TCU            at 0 range 21 .. 21;
      TDU            at 0 range 22 .. 22;
      TEU            at 0 range 23 .. 23;
      MSTU           at 0 range 24 .. 24;
      DACSYNC        at 0 range 25 .. 26;
      PREEN          at 0 range 27 .. 27;
      UPDGAT         at 0 range 28 .. 31;
   end record;

   --  TIMAISR_CMP array element
   subtype TIMAISR_CMP_Element is STM32_SVD.Bit;

   --  TIMAISR_CMP array
   type TIMAISR_CMP_Field_Array is array (1 .. 4) of TIMAISR_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMAISR_CMP
   type TIMAISR_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : TIMAISR_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMAISR_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TIMAISR_REP_Field is STM32_SVD.Bit;
   subtype TIMAISR_UPD_Field is STM32_SVD.Bit;
   --  TIMAISR_CPT array element
   subtype TIMAISR_CPT_Element is STM32_SVD.Bit;

   --  TIMAISR_CPT array
   type TIMAISR_CPT_Field_Array is array (1 .. 2) of TIMAISR_CPT_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMAISR_CPT
   type TIMAISR_CPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPT as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  CPT as an array
            Arr : TIMAISR_CPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMAISR_CPT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype TIMAISR_SETx1_Field is STM32_SVD.Bit;
   subtype TIMAISR_RSTx1_Field is STM32_SVD.Bit;
   subtype TIMAISR_SETx2_Field is STM32_SVD.Bit;
   subtype TIMAISR_RSTx2_Field is STM32_SVD.Bit;
   subtype TIMAISR_RST_Field is STM32_SVD.Bit;
   subtype TIMAISR_DLYPRT_Field is STM32_SVD.Bit;
   subtype TIMAISR_CPPSTAT_Field is STM32_SVD.Bit;
   subtype TIMAISR_IPPSTAT_Field is STM32_SVD.Bit;
   subtype TIMAISR_O1STAT_Field is STM32_SVD.Bit;
   subtype TIMAISR_O2STAT_Field is STM32_SVD.Bit;

   --  Timerx Interrupt Status Register
   type TIMAISR_Register is record
      --  Read-only. Compare 1 Interrupt Flag
      CMP            : TIMAISR_CMP_Field;
      --  Read-only. Repetition Interrupt Flag
      REP            : TIMAISR_REP_Field;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit;
      --  Read-only. Update Interrupt Flag
      UPD            : TIMAISR_UPD_Field;
      --  Read-only. Capture1 Interrupt Flag
      CPT            : TIMAISR_CPT_Field;
      --  Read-only. Output 1 Set Interrupt Flag
      SETx1          : TIMAISR_SETx1_Field;
      --  Read-only. Output 1 Reset Interrupt Flag
      RSTx1          : TIMAISR_RSTx1_Field;
      --  Read-only. Output 2 Set Interrupt Flag
      SETx2          : TIMAISR_SETx2_Field;
      --  Read-only. Output 2 Reset Interrupt Flag
      RSTx2          : TIMAISR_RSTx2_Field;
      --  Read-only. Reset Interrupt Flag
      RST            : TIMAISR_RST_Field;
      --  Read-only. Delayed Protection Flag
      DLYPRT         : TIMAISR_DLYPRT_Field;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit;
      --  Read-only. Current Push Pull Status
      CPPSTAT        : TIMAISR_CPPSTAT_Field;
      --  Read-only. Idle Push Pull Status
      IPPSTAT        : TIMAISR_IPPSTAT_Field;
      --  Read-only. Output 1 State
      O1STAT         : TIMAISR_O1STAT_Field;
      --  Read-only. Output 2 State
      O2STAT         : TIMAISR_O2STAT_Field;
      --  unspecified
      Reserved_20_31 : STM32_SVD.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMAISR_Register use record
      CMP            at 0 range 0 .. 3;
      REP            at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPD            at 0 range 6 .. 6;
      CPT            at 0 range 7 .. 8;
      SETx1          at 0 range 9 .. 9;
      RSTx1          at 0 range 10 .. 10;
      SETx2          at 0 range 11 .. 11;
      RSTx2          at 0 range 12 .. 12;
      RST            at 0 range 13 .. 13;
      DLYPRT         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CPPSTAT        at 0 range 16 .. 16;
      IPPSTAT        at 0 range 17 .. 17;
      O1STAT         at 0 range 18 .. 18;
      O2STAT         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIMAICR_CMP1C_Field is STM32_SVD.Bit;
   subtype TIMAICR_CMP2C_Field is STM32_SVD.Bit;
   subtype TIMAICR_CMP3C_Field is STM32_SVD.Bit;
   subtype TIMAICR_CMP4C_Field is STM32_SVD.Bit;
   subtype TIMAICR_REPC_Field is STM32_SVD.Bit;
   subtype TIMAICR_UPDC_Field is STM32_SVD.Bit;
   subtype TIMAICR_CPT1C_Field is STM32_SVD.Bit;
   subtype TIMAICR_CPT2C_Field is STM32_SVD.Bit;
   subtype TIMAICR_SET1xC_Field is STM32_SVD.Bit;
   subtype TIMAICR_RSTx1C_Field is STM32_SVD.Bit;
   subtype TIMAICR_SET2xC_Field is STM32_SVD.Bit;
   subtype TIMAICR_RSTx2C_Field is STM32_SVD.Bit;
   subtype TIMAICR_RSTC_Field is STM32_SVD.Bit;
   subtype TIMAICR_DLYPRTC_Field is STM32_SVD.Bit;

   --  Timerx Interrupt Clear Register
   type TIMAICR_Register is record
      --  Write-only. Compare 1 Interrupt flag Clear
      CMP1C          : TIMAICR_CMP1C_Field := 16#0#;
      --  Write-only. Compare 2 Interrupt flag Clear
      CMP2C          : TIMAICR_CMP2C_Field := 16#0#;
      --  Write-only. Compare 3 Interrupt flag Clear
      CMP3C          : TIMAICR_CMP3C_Field := 16#0#;
      --  Write-only. Compare 4 Interrupt flag Clear
      CMP4C          : TIMAICR_CMP4C_Field := 16#0#;
      --  Write-only. Repetition Interrupt flag Clear
      REPC           : TIMAICR_REPC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  Write-only. Update Interrupt flag Clear
      UPDC           : TIMAICR_UPDC_Field := 16#0#;
      --  Write-only. Capture1 Interrupt flag Clear
      CPT1C          : TIMAICR_CPT1C_Field := 16#0#;
      --  Write-only. Capture2 Interrupt flag Clear
      CPT2C          : TIMAICR_CPT2C_Field := 16#0#;
      --  Write-only. Output 1 Set flag Clear
      SET1xC         : TIMAICR_SET1xC_Field := 16#0#;
      --  Write-only. Output 1 Reset flag Clear
      RSTx1C         : TIMAICR_RSTx1C_Field := 16#0#;
      --  Write-only. Output 2 Set flag Clear
      SET2xC         : TIMAICR_SET2xC_Field := 16#0#;
      --  Write-only. Output 2 Reset flag Clear
      RSTx2C         : TIMAICR_RSTx2C_Field := 16#0#;
      --  Write-only. Reset Interrupt flag Clear
      RSTC           : TIMAICR_RSTC_Field := 16#0#;
      --  Write-only. Delayed Protection Flag Clear
      DLYPRTC        : TIMAICR_DLYPRTC_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMAICR_Register use record
      CMP1C          at 0 range 0 .. 0;
      CMP2C          at 0 range 1 .. 1;
      CMP3C          at 0 range 2 .. 2;
      CMP4C          at 0 range 3 .. 3;
      REPC           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPDC           at 0 range 6 .. 6;
      CPT1C          at 0 range 7 .. 7;
      CPT2C          at 0 range 8 .. 8;
      SET1xC         at 0 range 9 .. 9;
      RSTx1C         at 0 range 10 .. 10;
      SET2xC         at 0 range 11 .. 11;
      RSTx2C         at 0 range 12 .. 12;
      RSTC           at 0 range 13 .. 13;
      DLYPRTC        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype TIMADIER5_CMP1IE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CMP2IE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CMP3IE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CMP4IE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_REPIE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_UPDIE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CPT1IE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CPT2IE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_SET1xIE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_RSTx1IE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_SETx2IE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_RSTx2IE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_RSTIE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_DLYPRTIE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CMP1DE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CMP2DE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CMP3DE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CMP4DE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_REPDE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_UPDDE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CPT1DE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_CPT2DE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_SET1xDE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_RSTx1DE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_SETx2DE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_RSTx2DE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_RSTDE_Field is STM32_SVD.Bit;
   subtype TIMADIER5_DLYPRTDE_Field is STM32_SVD.Bit;

   --  TIMxDIER5
   type TIMADIER5_Register is record
      --  CMP1IE
      CMP1IE         : TIMADIER5_CMP1IE_Field := 16#0#;
      --  CMP2IE
      CMP2IE         : TIMADIER5_CMP2IE_Field := 16#0#;
      --  CMP3IE
      CMP3IE         : TIMADIER5_CMP3IE_Field := 16#0#;
      --  CMP4IE
      CMP4IE         : TIMADIER5_CMP4IE_Field := 16#0#;
      --  REPIE
      REPIE          : TIMADIER5_REPIE_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  UPDIE
      UPDIE          : TIMADIER5_UPDIE_Field := 16#0#;
      --  CPT1IE
      CPT1IE         : TIMADIER5_CPT1IE_Field := 16#0#;
      --  CPT2IE
      CPT2IE         : TIMADIER5_CPT2IE_Field := 16#0#;
      --  SET1xIE
      SET1xIE        : TIMADIER5_SET1xIE_Field := 16#0#;
      --  RSTx1IE
      RSTx1IE        : TIMADIER5_RSTx1IE_Field := 16#0#;
      --  SETx2IE
      SETx2IE        : TIMADIER5_SETx2IE_Field := 16#0#;
      --  RSTx2IE
      RSTx2IE        : TIMADIER5_RSTx2IE_Field := 16#0#;
      --  RSTIE
      RSTIE          : TIMADIER5_RSTIE_Field := 16#0#;
      --  DLYPRTIE
      DLYPRTIE       : TIMADIER5_DLYPRTIE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  CMP1DE
      CMP1DE         : TIMADIER5_CMP1DE_Field := 16#0#;
      --  CMP2DE
      CMP2DE         : TIMADIER5_CMP2DE_Field := 16#0#;
      --  CMP3DE
      CMP3DE         : TIMADIER5_CMP3DE_Field := 16#0#;
      --  CMP4DE
      CMP4DE         : TIMADIER5_CMP4DE_Field := 16#0#;
      --  REPDE
      REPDE          : TIMADIER5_REPDE_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  UPDDE
      UPDDE          : TIMADIER5_UPDDE_Field := 16#0#;
      --  CPT1DE
      CPT1DE         : TIMADIER5_CPT1DE_Field := 16#0#;
      --  CPT2DE
      CPT2DE         : TIMADIER5_CPT2DE_Field := 16#0#;
      --  SET1xDE
      SET1xDE        : TIMADIER5_SET1xDE_Field := 16#0#;
      --  RSTx1DE
      RSTx1DE        : TIMADIER5_RSTx1DE_Field := 16#0#;
      --  SETx2DE
      SETx2DE        : TIMADIER5_SETx2DE_Field := 16#0#;
      --  RSTx2DE
      RSTx2DE        : TIMADIER5_RSTx2DE_Field := 16#0#;
      --  RSTDE
      RSTDE          : TIMADIER5_RSTDE_Field := 16#0#;
      --  DLYPRTDE
      DLYPRTDE       : TIMADIER5_DLYPRTDE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMADIER5_Register use record
      CMP1IE         at 0 range 0 .. 0;
      CMP2IE         at 0 range 1 .. 1;
      CMP3IE         at 0 range 2 .. 2;
      CMP4IE         at 0 range 3 .. 3;
      REPIE          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPDIE          at 0 range 6 .. 6;
      CPT1IE         at 0 range 7 .. 7;
      CPT2IE         at 0 range 8 .. 8;
      SET1xIE        at 0 range 9 .. 9;
      RSTx1IE        at 0 range 10 .. 10;
      SETx2IE        at 0 range 11 .. 11;
      RSTx2IE        at 0 range 12 .. 12;
      RSTIE          at 0 range 13 .. 13;
      DLYPRTIE       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CMP1DE         at 0 range 16 .. 16;
      CMP2DE         at 0 range 17 .. 17;
      CMP3DE         at 0 range 18 .. 18;
      CMP4DE         at 0 range 19 .. 19;
      REPDE          at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      UPDDE          at 0 range 22 .. 22;
      CPT1DE         at 0 range 23 .. 23;
      CPT2DE         at 0 range 24 .. 24;
      SET1xDE        at 0 range 25 .. 25;
      RSTx1DE        at 0 range 26 .. 26;
      SETx2DE        at 0 range 27 .. 27;
      RSTx2DE        at 0 range 28 .. 28;
      RSTDE          at 0 range 29 .. 29;
      DLYPRTDE       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CNTAR_CNTx_Field is STM32_SVD.UInt16;

   --  Timerx Counter Register
   type CNTAR_Register is record
      --  Timerx Counter value
      CNTx           : CNTAR_CNTx_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNTAR_Register use record
      CNTx           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PERAR_PERx_Field is STM32_SVD.UInt16;

   --  Timerx Period Register
   type PERAR_Register is record
      --  Timerx Period value
      PERx           : PERAR_PERx_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERAR_Register use record
      PERx           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype REPAR_REPx_Field is STM32_SVD.Byte;

   --  Timerx Repetition Register
   type REPAR_Register is record
      --  Timerx Repetition counter value
      REPx          : REPAR_REPx_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REPAR_Register use record
      REPx          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CMP1AR_CMP1x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 1 Register
   type CMP1AR_Register is record
      --  Timerx Compare 1 value
      CMP1x          : CMP1AR_CMP1x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1AR_Register use record
      CMP1x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP1CAR_CMP1x_Field is STM32_SVD.UInt16;
   subtype CMP1CAR_REPx_Field is STM32_SVD.Byte;

   --  Timerx Compare 1 Compound Register
   type CMP1CAR_Register is record
      --  Timerx Compare 1 value
      CMP1x          : CMP1CAR_CMP1x_Field := 16#0#;
      --  Timerx Repetition value (aliased from HRTIM_REPx register)
      REPx           : CMP1CAR_REPx_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1CAR_Register use record
      CMP1x          at 0 range 0 .. 15;
      REPx           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CMP2AR_CMP2x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 2 Register
   type CMP2AR_Register is record
      --  Timerx Compare 2 value
      CMP2x          : CMP2AR_CMP2x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP2AR_Register use record
      CMP2x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP3AR_CMP3x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 3 Register
   type CMP3AR_Register is record
      --  Timerx Compare 3 value
      CMP3x          : CMP3AR_CMP3x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP3AR_Register use record
      CMP3x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP4AR_CMP4x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 4 Register
   type CMP4AR_Register is record
      --  Timerx Compare 4 value
      CMP4x          : CMP4AR_CMP4x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP4AR_Register use record
      CMP4x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CPT1AR_CPT1x_Field is STM32_SVD.UInt16;

   --  Timerx Capture 1 Register
   type CPT1AR_Register is record
      --  Read-only. Timerx Capture 1 value
      CPT1x          : CPT1AR_CPT1x_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT1AR_Register use record
      CPT1x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CPT2AR_CPT2x_Field is STM32_SVD.UInt16;

   --  Timerx Capture 2 Register
   type CPT2AR_Register is record
      --  Read-only. Timerx Capture 2 value
      CPT2x          : CPT2AR_CPT2x_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT2AR_Register use record
      CPT2x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DTAR_DTRx_Field is STM32_SVD.UInt9;
   subtype DTAR_SDTRx_Field is STM32_SVD.Bit;
   subtype DTAR_DTPRSC_Field is STM32_SVD.UInt3;
   subtype DTAR_DTRSLKx_Field is STM32_SVD.Bit;
   subtype DTAR_DTRLKx_Field is STM32_SVD.Bit;
   subtype DTAR_DTFx_Field is STM32_SVD.UInt9;
   subtype DTAR_SDTFx_Field is STM32_SVD.Bit;
   subtype DTAR_DTFSLKx_Field is STM32_SVD.Bit;
   subtype DTAR_DTFLKx_Field is STM32_SVD.Bit;

   --  Timerx Deadtime Register
   type DTAR_Register is record
      --  Deadtime Rising value
      DTRx           : DTAR_DTRx_Field := 16#0#;
      --  Sign Deadtime Rising value
      SDTRx          : DTAR_SDTRx_Field := 16#0#;
      --  Deadtime Prescaler
      DTPRSC         : DTAR_DTPRSC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32_SVD.Bit := 16#0#;
      --  Deadtime Rising Sign Lock
      DTRSLKx        : DTAR_DTRSLKx_Field := 16#0#;
      --  Deadtime Rising Lock
      DTRLKx         : DTAR_DTRLKx_Field := 16#0#;
      --  Deadtime Falling value
      DTFx           : DTAR_DTFx_Field := 16#0#;
      --  Sign Deadtime Falling value
      SDTFx          : DTAR_SDTFx_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : STM32_SVD.UInt4 := 16#0#;
      --  Deadtime Falling Sign Lock
      DTFSLKx        : DTAR_DTFSLKx_Field := 16#0#;
      --  Deadtime Falling Lock
      DTFLKx         : DTAR_DTFLKx_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTAR_Register use record
      DTRx           at 0 range 0 .. 8;
      SDTRx          at 0 range 9 .. 9;
      DTPRSC         at 0 range 10 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      DTRSLKx        at 0 range 14 .. 14;
      DTRLKx         at 0 range 15 .. 15;
      DTFx           at 0 range 16 .. 24;
      SDTFx          at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      DTFSLKx        at 0 range 30 .. 30;
      DTFLKx         at 0 range 31 .. 31;
   end record;

   subtype SETA1R_SST_Field is STM32_SVD.Bit;
   subtype SETA1R_RESYNC_Field is STM32_SVD.Bit;
   subtype SETA1R_PER_Field is STM32_SVD.Bit;
   --  SETA1R_CMP array element
   subtype SETA1R_CMP_Element is STM32_SVD.Bit;

   --  SETA1R_CMP array
   type SETA1R_CMP_Field_Array is array (1 .. 4) of SETA1R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETA1R_CMP
   type SETA1R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : SETA1R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETA1R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SETA1R_MSTPER_Field is STM32_SVD.Bit;
   --  SETA1R_MSTCMP array element
   subtype SETA1R_MSTCMP_Element is STM32_SVD.Bit;

   --  SETA1R_MSTCMP array
   type SETA1R_MSTCMP_Field_Array is array (1 .. 4) of SETA1R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETA1R_MSTCMP
   type SETA1R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : SETA1R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETA1R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SETA1R_TIMEVNT array element
   subtype SETA1R_TIMEVNT_Element is STM32_SVD.Bit;

   --  SETA1R_TIMEVNT array
   type SETA1R_TIMEVNT_Field_Array is array (1 .. 9)
     of SETA1R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for SETA1R_TIMEVNT
   type SETA1R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : SETA1R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for SETA1R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  SETA1R_EXTEVNT array element
   subtype SETA1R_EXTEVNT_Element is STM32_SVD.Bit;

   --  SETA1R_EXTEVNT array
   type SETA1R_EXTEVNT_Field_Array is array (1 .. 10)
     of SETA1R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for SETA1R_EXTEVNT
   type SETA1R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : SETA1R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SETA1R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype SETA1R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output1 Set Register
   type SETA1R_Register is record
      --  Software Set trigger
      SST     : SETA1R_SST_Field := 16#0#;
      --  Timer A resynchronizaton
      RESYNC  : SETA1R_RESYNC_Field := 16#0#;
      --  Timer A Period
      PER     : SETA1R_PER_Field := 16#0#;
      --  Timer A compare 1
      CMP     : SETA1R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  Master Period
      MSTPER  : SETA1R_MSTPER_Field := 16#0#;
      --  Master Compare 1
      MSTCMP  : SETA1R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  Timer Event 1
      TIMEVNT : SETA1R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  External Event 1
      EXTEVNT : SETA1R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  Registers update (transfer preload to active)
      UPDATE  : SETA1R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETA1R_Register use record
      SST     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype RSTA1R_SRT_Field is STM32_SVD.Bit;
   subtype RSTA1R_RESYNC_Field is STM32_SVD.Bit;
   subtype RSTA1R_PER_Field is STM32_SVD.Bit;
   --  RSTA1R_CMP array element
   subtype RSTA1R_CMP_Element is STM32_SVD.Bit;

   --  RSTA1R_CMP array
   type RSTA1R_CMP_Field_Array is array (1 .. 4) of RSTA1R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTA1R_CMP
   type RSTA1R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : RSTA1R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTA1R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RSTA1R_MSTPER_Field is STM32_SVD.Bit;
   --  RSTA1R_MSTCMP array element
   subtype RSTA1R_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTA1R_MSTCMP array
   type RSTA1R_MSTCMP_Field_Array is array (1 .. 4) of RSTA1R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTA1R_MSTCMP
   type RSTA1R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTA1R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTA1R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTA1R_TIMEVNT array element
   subtype RSTA1R_TIMEVNT_Element is STM32_SVD.Bit;

   --  RSTA1R_TIMEVNT array
   type RSTA1R_TIMEVNT_Field_Array is array (1 .. 9)
     of RSTA1R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for RSTA1R_TIMEVNT
   type RSTA1R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : RSTA1R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RSTA1R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RSTA1R_EXTEVNT array element
   subtype RSTA1R_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTA1R_EXTEVNT array
   type RSTA1R_EXTEVNT_Field_Array is array (1 .. 10)
     of RSTA1R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTA1R_EXTEVNT
   type RSTA1R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTA1R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTA1R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype RSTA1R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output1 Reset Register
   type RSTA1R_Register is record
      --  SRT
      SRT     : RSTA1R_SRT_Field := 16#0#;
      --  RESYNC
      RESYNC  : RSTA1R_RESYNC_Field := 16#0#;
      --  PER
      PER     : RSTA1R_PER_Field := 16#0#;
      --  CMP1
      CMP     : RSTA1R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : RSTA1R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : RSTA1R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : RSTA1R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : RSTA1R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : RSTA1R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTA1R_Register use record
      SRT     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype SETA2R_SST_Field is STM32_SVD.Bit;
   subtype SETA2R_RESYNC_Field is STM32_SVD.Bit;
   subtype SETA2R_PER_Field is STM32_SVD.Bit;
   --  SETA2R_CMP array element
   subtype SETA2R_CMP_Element is STM32_SVD.Bit;

   --  SETA2R_CMP array
   type SETA2R_CMP_Field_Array is array (1 .. 4) of SETA2R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETA2R_CMP
   type SETA2R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : SETA2R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETA2R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SETA2R_MSTPER_Field is STM32_SVD.Bit;
   --  SETA2R_MSTCMP array element
   subtype SETA2R_MSTCMP_Element is STM32_SVD.Bit;

   --  SETA2R_MSTCMP array
   type SETA2R_MSTCMP_Field_Array is array (1 .. 4) of SETA2R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETA2R_MSTCMP
   type SETA2R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : SETA2R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETA2R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SETA2R_TIMEVNT array element
   subtype SETA2R_TIMEVNT_Element is STM32_SVD.Bit;

   --  SETA2R_TIMEVNT array
   type SETA2R_TIMEVNT_Field_Array is array (1 .. 9)
     of SETA2R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for SETA2R_TIMEVNT
   type SETA2R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : SETA2R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for SETA2R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  SETA2R_EXTEVNT array element
   subtype SETA2R_EXTEVNT_Element is STM32_SVD.Bit;

   --  SETA2R_EXTEVNT array
   type SETA2R_EXTEVNT_Field_Array is array (1 .. 10)
     of SETA2R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for SETA2R_EXTEVNT
   type SETA2R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : SETA2R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SETA2R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype SETA2R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output2 Set Register
   type SETA2R_Register is record
      --  SST
      SST     : SETA2R_SST_Field := 16#0#;
      --  RESYNC
      RESYNC  : SETA2R_RESYNC_Field := 16#0#;
      --  PER
      PER     : SETA2R_PER_Field := 16#0#;
      --  CMP1
      CMP     : SETA2R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : SETA2R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : SETA2R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : SETA2R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : SETA2R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : SETA2R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETA2R_Register use record
      SST     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype RSTA2R_SRT_Field is STM32_SVD.Bit;
   subtype RSTA2R_RESYNC_Field is STM32_SVD.Bit;
   subtype RSTA2R_PER_Field is STM32_SVD.Bit;
   --  RSTA2R_CMP array element
   subtype RSTA2R_CMP_Element is STM32_SVD.Bit;

   --  RSTA2R_CMP array
   type RSTA2R_CMP_Field_Array is array (1 .. 4) of RSTA2R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTA2R_CMP
   type RSTA2R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : RSTA2R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTA2R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RSTA2R_MSTPER_Field is STM32_SVD.Bit;
   --  RSTA2R_MSTCMP array element
   subtype RSTA2R_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTA2R_MSTCMP array
   type RSTA2R_MSTCMP_Field_Array is array (1 .. 4) of RSTA2R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTA2R_MSTCMP
   type RSTA2R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTA2R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTA2R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTA2R_TIMEVNT array element
   subtype RSTA2R_TIMEVNT_Element is STM32_SVD.Bit;

   --  RSTA2R_TIMEVNT array
   type RSTA2R_TIMEVNT_Field_Array is array (1 .. 9)
     of RSTA2R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for RSTA2R_TIMEVNT
   type RSTA2R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : RSTA2R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RSTA2R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RSTA2R_EXTEVNT array element
   subtype RSTA2R_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTA2R_EXTEVNT array
   type RSTA2R_EXTEVNT_Field_Array is array (1 .. 10)
     of RSTA2R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTA2R_EXTEVNT
   type RSTA2R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTA2R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTA2R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype RSTA2R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output2 Reset Register
   type RSTA2R_Register is record
      --  SRT
      SRT     : RSTA2R_SRT_Field := 16#0#;
      --  RESYNC
      RESYNC  : RSTA2R_RESYNC_Field := 16#0#;
      --  PER
      PER     : RSTA2R_PER_Field := 16#0#;
      --  CMP1
      CMP     : RSTA2R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : RSTA2R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : RSTA2R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : RSTA2R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : RSTA2R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : RSTA2R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTA2R_Register use record
      SRT     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype EEFAR1_EE1LTCH_Field is STM32_SVD.Bit;
   subtype EEFAR1_EE1FLTR_Field is STM32_SVD.UInt4;
   subtype EEFAR1_EE2LTCH_Field is STM32_SVD.Bit;
   subtype EEFAR1_EE2FLTR_Field is STM32_SVD.UInt4;
   subtype EEFAR1_EE3LTCH_Field is STM32_SVD.Bit;
   subtype EEFAR1_EE3FLTR_Field is STM32_SVD.UInt4;
   subtype EEFAR1_EE4LTCH_Field is STM32_SVD.Bit;
   subtype EEFAR1_EE4FLTR_Field is STM32_SVD.UInt4;
   subtype EEFAR1_EE5LTCH_Field is STM32_SVD.Bit;
   subtype EEFAR1_EE5FLTR_Field is STM32_SVD.UInt4;

   --  Timerx External Event Filtering Register 1
   type EEFAR1_Register is record
      --  External Event 1 latch
      EE1LTCH        : EEFAR1_EE1LTCH_Field := 16#0#;
      --  External Event 1 filter
      EE1FLTR        : EEFAR1_EE1FLTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 2 latch
      EE2LTCH        : EEFAR1_EE2LTCH_Field := 16#0#;
      --  External Event 2 filter
      EE2FLTR        : EEFAR1_EE2FLTR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 3 latch
      EE3LTCH        : EEFAR1_EE3LTCH_Field := 16#0#;
      --  External Event 3 filter
      EE3FLTR        : EEFAR1_EE3FLTR_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 4 latch
      EE4LTCH        : EEFAR1_EE4LTCH_Field := 16#0#;
      --  External Event 4 filter
      EE4FLTR        : EEFAR1_EE4FLTR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 5 latch
      EE5LTCH        : EEFAR1_EE5LTCH_Field := 16#0#;
      --  External Event 5 filter
      EE5FLTR        : EEFAR1_EE5FLTR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEFAR1_Register use record
      EE1LTCH        at 0 range 0 .. 0;
      EE1FLTR        at 0 range 1 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE2LTCH        at 0 range 6 .. 6;
      EE2FLTR        at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE3LTCH        at 0 range 12 .. 12;
      EE3FLTR        at 0 range 13 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE4LTCH        at 0 range 18 .. 18;
      EE4FLTR        at 0 range 19 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE5LTCH        at 0 range 24 .. 24;
      EE5FLTR        at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype EEFAR2_EE6LTCH_Field is STM32_SVD.Bit;
   subtype EEFAR2_EE6FLTR_Field is STM32_SVD.UInt4;
   subtype EEFAR2_EE7LTCH_Field is STM32_SVD.Bit;
   subtype EEFAR2_EE7FLTR_Field is STM32_SVD.UInt4;
   subtype EEFAR2_EE8LTCH_Field is STM32_SVD.Bit;
   subtype EEFAR2_EE8FLTR_Field is STM32_SVD.UInt4;
   subtype EEFAR2_EE9LTCH_Field is STM32_SVD.Bit;
   subtype EEFAR2_EE9FLTR_Field is STM32_SVD.UInt4;
   subtype EEFAR2_EE10LTCH_Field is STM32_SVD.Bit;
   subtype EEFAR2_EE10FLTR_Field is STM32_SVD.UInt4;

   --  Timerx External Event Filtering Register 2
   type EEFAR2_Register is record
      --  External Event 6 latch
      EE6LTCH        : EEFAR2_EE6LTCH_Field := 16#0#;
      --  External Event 6 filter
      EE6FLTR        : EEFAR2_EE6FLTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 7 latch
      EE7LTCH        : EEFAR2_EE7LTCH_Field := 16#0#;
      --  External Event 7 filter
      EE7FLTR        : EEFAR2_EE7FLTR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 8 latch
      EE8LTCH        : EEFAR2_EE8LTCH_Field := 16#0#;
      --  External Event 8 filter
      EE8FLTR        : EEFAR2_EE8FLTR_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 9 latch
      EE9LTCH        : EEFAR2_EE9LTCH_Field := 16#0#;
      --  External Event 9 filter
      EE9FLTR        : EEFAR2_EE9FLTR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 10 latch
      EE10LTCH       : EEFAR2_EE10LTCH_Field := 16#0#;
      --  External Event 10 filter
      EE10FLTR       : EEFAR2_EE10FLTR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEFAR2_Register use record
      EE6LTCH        at 0 range 0 .. 0;
      EE6FLTR        at 0 range 1 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE7LTCH        at 0 range 6 .. 6;
      EE7FLTR        at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE8LTCH        at 0 range 12 .. 12;
      EE8FLTR        at 0 range 13 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE9LTCH        at 0 range 18 .. 18;
      EE9FLTR        at 0 range 19 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE10LTCH       at 0 range 24 .. 24;
      EE10FLTR       at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RSTAR_UPDT_Field is STM32_SVD.Bit;
   --  RSTAR_CMP array element
   subtype RSTAR_CMP_Element is STM32_SVD.Bit;

   --  RSTAR_CMP array
   type RSTAR_CMP_Field_Array is array (2 .. 3) of RSTAR_CMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for RSTAR_CMP
   type RSTAR_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  CMP as an array
            Arr : RSTAR_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RSTAR_CMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype RSTAR_MSTPER_Field is STM32_SVD.Bit;
   --  RSTAR_MSTCMP array element
   subtype RSTAR_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTAR_MSTCMP array
   type RSTAR_MSTCMP_Field_Array is array (1 .. 4) of RSTAR_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTAR_MSTCMP
   type RSTAR_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTAR_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTAR_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTAR_EXTEVNT array element
   subtype RSTAR_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTAR_EXTEVNT array
   type RSTAR_EXTEVNT_Field_Array is array (1 .. 10) of RSTAR_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTAR_EXTEVNT
   type RSTAR_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTAR_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTAR_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  RSTAR_TIMBCMP array element
   subtype RSTAR_TIMBCMP_Element is STM32_SVD.Bit;

   --  RSTAR_TIMBCMP array
   type RSTAR_TIMBCMP_Field_Array is array (1 .. 3) of RSTAR_TIMBCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTAR_TIMBCMP
   type RSTAR_TIMBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMBCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMBCMP as an array
            Arr : RSTAR_TIMBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTAR_TIMBCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTAR_TIMCCMP array element
   subtype RSTAR_TIMCCMP_Element is STM32_SVD.Bit;

   --  RSTAR_TIMCCMP array
   type RSTAR_TIMCCMP_Field_Array is array (1 .. 3) of RSTAR_TIMCCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTAR_TIMCCMP
   type RSTAR_TIMCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMCCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMCCMP as an array
            Arr : RSTAR_TIMCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTAR_TIMCCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTAR_TIMDCMP array element
   subtype RSTAR_TIMDCMP_Element is STM32_SVD.Bit;

   --  RSTAR_TIMDCMP array
   type RSTAR_TIMDCMP_Field_Array is array (1 .. 3) of RSTAR_TIMDCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTAR_TIMDCMP
   type RSTAR_TIMDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMDCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMDCMP as an array
            Arr : RSTAR_TIMDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTAR_TIMDCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTAR_TIMECMP array element
   subtype RSTAR_TIMECMP_Element is STM32_SVD.Bit;

   --  RSTAR_TIMECMP array
   type RSTAR_TIMECMP_Field_Array is array (1 .. 3) of RSTAR_TIMECMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTAR_TIMECMP
   type RSTAR_TIMECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMECMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMECMP as an array
            Arr : RSTAR_TIMECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTAR_TIMECMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  TimerA Reset Register
   type RSTAR_Register is record
      --  unspecified
      Reserved_0_0   : STM32_SVD.Bit := 16#0#;
      --  Timer A Update reset
      UPDT           : RSTAR_UPDT_Field := 16#0#;
      --  Timer A compare 2 reset
      CMP            : RSTAR_CMP_Field := (As_Array => False, Val => 16#0#);
      --  Master timer Period
      MSTPER         : RSTAR_MSTPER_Field := 16#0#;
      --  Master compare 1
      MSTCMP         : RSTAR_MSTCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  External Event 1
      EXTEVNT        : RSTAR_EXTEVNT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer B Compare 1
      TIMBCMP        : RSTAR_TIMBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer C Compare 1
      TIMCCMP        : RSTAR_TIMCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer D Compare 1
      TIMDCMP        : RSTAR_TIMDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer E Compare 1
      TIMECMP        : RSTAR_TIMECMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTAR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      UPDT           at 0 range 1 .. 1;
      CMP            at 0 range 2 .. 3;
      MSTPER         at 0 range 4 .. 4;
      MSTCMP         at 0 range 5 .. 8;
      EXTEVNT        at 0 range 9 .. 18;
      TIMBCMP        at 0 range 19 .. 21;
      TIMCCMP        at 0 range 22 .. 24;
      TIMDCMP        at 0 range 25 .. 27;
      TIMECMP        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CHPAR_CHPFRQ_Field is STM32_SVD.UInt4;
   subtype CHPAR_CHPDTY_Field is STM32_SVD.UInt3;
   subtype CHPAR_STRTPW_Field is STM32_SVD.UInt4;

   --  Timerx Chopper Register
   type CHPAR_Register is record
      --  Timerx carrier frequency value
      CHPFRQ         : CHPAR_CHPFRQ_Field := 16#0#;
      --  Timerx chopper duty cycle value
      CHPDTY         : CHPAR_CHPDTY_Field := 16#0#;
      --  STRTPW
      STRTPW         : CHPAR_STRTPW_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : STM32_SVD.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHPAR_Register use record
      CHPFRQ         at 0 range 0 .. 3;
      CHPDTY         at 0 range 4 .. 6;
      STRTPW         at 0 range 7 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype CPT1ACR_SWCPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_UDPCPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_EXEV1CPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_EXEV2CPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_EXEV3CPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_EXEV4CPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_EXEV5CPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_EXEV6CPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_EXEV7CPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_EXEV8CPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_EXEV9CPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_EXEV10CPT_Field is STM32_SVD.Bit;
   subtype CPT1ACR_TB1SET_Field is STM32_SVD.Bit;
   subtype CPT1ACR_TB1RST_Field is STM32_SVD.Bit;
   --  CPT1ACR_TBCMP array element
   subtype CPT1ACR_TBCMP_Element is STM32_SVD.Bit;

   --  CPT1ACR_TBCMP array
   type CPT1ACR_TBCMP_Field_Array is array (1 .. 2) of CPT1ACR_TBCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1ACR_TBCMP
   type CPT1ACR_TBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TBCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TBCMP as an array
            Arr : CPT1ACR_TBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1ACR_TBCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1ACR_TC1SET_Field is STM32_SVD.Bit;
   subtype CPT1ACR_TC1RST_Field is STM32_SVD.Bit;
   --  CPT1ACR_TCCMP array element
   subtype CPT1ACR_TCCMP_Element is STM32_SVD.Bit;

   --  CPT1ACR_TCCMP array
   type CPT1ACR_TCCMP_Field_Array is array (1 .. 2) of CPT1ACR_TCCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1ACR_TCCMP
   type CPT1ACR_TCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TCCMP as an array
            Arr : CPT1ACR_TCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1ACR_TCCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1ACR_TD1SET_Field is STM32_SVD.Bit;
   subtype CPT1ACR_TD1RST_Field is STM32_SVD.Bit;
   --  CPT1ACR_TDCMP array element
   subtype CPT1ACR_TDCMP_Element is STM32_SVD.Bit;

   --  CPT1ACR_TDCMP array
   type CPT1ACR_TDCMP_Field_Array is array (1 .. 2) of CPT1ACR_TDCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1ACR_TDCMP
   type CPT1ACR_TDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TDCMP as an array
            Arr : CPT1ACR_TDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1ACR_TDCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1ACR_TE1SET_Field is STM32_SVD.Bit;
   subtype CPT1ACR_TE1RST_Field is STM32_SVD.Bit;
   --  CPT1ACR_TECMP array element
   subtype CPT1ACR_TECMP_Element is STM32_SVD.Bit;

   --  CPT1ACR_TECMP array
   type CPT1ACR_TECMP_Field_Array is array (1 .. 2) of CPT1ACR_TECMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1ACR_TECMP
   type CPT1ACR_TECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TECMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TECMP as an array
            Arr : CPT1ACR_TECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1ACR_TECMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Timerx Capture 2 Control Register
   type CPT1ACR_Register is record
      --  Software Capture
      SWCPT          : CPT1ACR_SWCPT_Field := 16#0#;
      --  Update Capture
      UDPCPT         : CPT1ACR_UDPCPT_Field := 16#0#;
      --  External Event 1 Capture
      EXEV1CPT       : CPT1ACR_EXEV1CPT_Field := 16#0#;
      --  External Event 2 Capture
      EXEV2CPT       : CPT1ACR_EXEV2CPT_Field := 16#0#;
      --  External Event 3 Capture
      EXEV3CPT       : CPT1ACR_EXEV3CPT_Field := 16#0#;
      --  External Event 4 Capture
      EXEV4CPT       : CPT1ACR_EXEV4CPT_Field := 16#0#;
      --  External Event 5 Capture
      EXEV5CPT       : CPT1ACR_EXEV5CPT_Field := 16#0#;
      --  External Event 6 Capture
      EXEV6CPT       : CPT1ACR_EXEV6CPT_Field := 16#0#;
      --  External Event 7 Capture
      EXEV7CPT       : CPT1ACR_EXEV7CPT_Field := 16#0#;
      --  External Event 8 Capture
      EXEV8CPT       : CPT1ACR_EXEV8CPT_Field := 16#0#;
      --  External Event 9 Capture
      EXEV9CPT       : CPT1ACR_EXEV9CPT_Field := 16#0#;
      --  External Event 10 Capture
      EXEV10CPT      : CPT1ACR_EXEV10CPT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : STM32_SVD.UInt4 := 16#0#;
      --  Timer B output 1 Set
      TB1SET         : CPT1ACR_TB1SET_Field := 16#0#;
      --  Timer B output 1 Reset
      TB1RST         : CPT1ACR_TB1RST_Field := 16#0#;
      --  Timer B Compare 1
      TBCMP          : CPT1ACR_TBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer C output 1 Set
      TC1SET         : CPT1ACR_TC1SET_Field := 16#0#;
      --  Timer C output 1 Reset
      TC1RST         : CPT1ACR_TC1RST_Field := 16#0#;
      --  Timer C Compare 1
      TCCMP          : CPT1ACR_TCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer D output 1 Set
      TD1SET         : CPT1ACR_TD1SET_Field := 16#0#;
      --  Timer D output 1 Reset
      TD1RST         : CPT1ACR_TD1RST_Field := 16#0#;
      --  Timer D Compare 1
      TDCMP          : CPT1ACR_TDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer E output 1 Set
      TE1SET         : CPT1ACR_TE1SET_Field := 16#0#;
      --  Timer E output 1 Reset
      TE1RST         : CPT1ACR_TE1RST_Field := 16#0#;
      --  Timer E Compare 1
      TECMP          : CPT1ACR_TECMP_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT1ACR_Register use record
      SWCPT          at 0 range 0 .. 0;
      UDPCPT         at 0 range 1 .. 1;
      EXEV1CPT       at 0 range 2 .. 2;
      EXEV2CPT       at 0 range 3 .. 3;
      EXEV3CPT       at 0 range 4 .. 4;
      EXEV4CPT       at 0 range 5 .. 5;
      EXEV5CPT       at 0 range 6 .. 6;
      EXEV6CPT       at 0 range 7 .. 7;
      EXEV7CPT       at 0 range 8 .. 8;
      EXEV8CPT       at 0 range 9 .. 9;
      EXEV9CPT       at 0 range 10 .. 10;
      EXEV10CPT      at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TB1SET         at 0 range 16 .. 16;
      TB1RST         at 0 range 17 .. 17;
      TBCMP          at 0 range 18 .. 19;
      TC1SET         at 0 range 20 .. 20;
      TC1RST         at 0 range 21 .. 21;
      TCCMP          at 0 range 22 .. 23;
      TD1SET         at 0 range 24 .. 24;
      TD1RST         at 0 range 25 .. 25;
      TDCMP          at 0 range 26 .. 27;
      TE1SET         at 0 range 28 .. 28;
      TE1RST         at 0 range 29 .. 29;
      TECMP          at 0 range 30 .. 31;
   end record;

   subtype CPT2ACR_SWCPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_UDPCPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_EXEV1CPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_EXEV2CPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_EXEV3CPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_EXEV4CPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_EXEV5CPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_EXEV6CPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_EXEV7CPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_EXEV8CPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_EXEV9CPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_EXEV10CPT_Field is STM32_SVD.Bit;
   subtype CPT2ACR_TB1SET_Field is STM32_SVD.Bit;
   subtype CPT2ACR_TB1RST_Field is STM32_SVD.Bit;
   --  CPT2ACR_TBCMP array element
   subtype CPT2ACR_TBCMP_Element is STM32_SVD.Bit;

   --  CPT2ACR_TBCMP array
   type CPT2ACR_TBCMP_Field_Array is array (1 .. 2) of CPT2ACR_TBCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2ACR_TBCMP
   type CPT2ACR_TBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TBCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TBCMP as an array
            Arr : CPT2ACR_TBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2ACR_TBCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2ACR_TC1SET_Field is STM32_SVD.Bit;
   subtype CPT2ACR_TC1RST_Field is STM32_SVD.Bit;
   --  CPT2ACR_TCCMP array element
   subtype CPT2ACR_TCCMP_Element is STM32_SVD.Bit;

   --  CPT2ACR_TCCMP array
   type CPT2ACR_TCCMP_Field_Array is array (1 .. 2) of CPT2ACR_TCCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2ACR_TCCMP
   type CPT2ACR_TCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TCCMP as an array
            Arr : CPT2ACR_TCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2ACR_TCCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2ACR_TD1SET_Field is STM32_SVD.Bit;
   subtype CPT2ACR_TD1RST_Field is STM32_SVD.Bit;
   --  CPT2ACR_TDCMP array element
   subtype CPT2ACR_TDCMP_Element is STM32_SVD.Bit;

   --  CPT2ACR_TDCMP array
   type CPT2ACR_TDCMP_Field_Array is array (1 .. 2) of CPT2ACR_TDCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2ACR_TDCMP
   type CPT2ACR_TDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TDCMP as an array
            Arr : CPT2ACR_TDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2ACR_TDCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2ACR_TE1SET_Field is STM32_SVD.Bit;
   subtype CPT2ACR_TE1RST_Field is STM32_SVD.Bit;
   --  CPT2ACR_TECMP array element
   subtype CPT2ACR_TECMP_Element is STM32_SVD.Bit;

   --  CPT2ACR_TECMP array
   type CPT2ACR_TECMP_Field_Array is array (1 .. 2) of CPT2ACR_TECMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2ACR_TECMP
   type CPT2ACR_TECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TECMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TECMP as an array
            Arr : CPT2ACR_TECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2ACR_TECMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CPT2xCR
   type CPT2ACR_Register is record
      --  Software Capture
      SWCPT          : CPT2ACR_SWCPT_Field := 16#0#;
      --  Update Capture
      UDPCPT         : CPT2ACR_UDPCPT_Field := 16#0#;
      --  External Event 1 Capture
      EXEV1CPT       : CPT2ACR_EXEV1CPT_Field := 16#0#;
      --  External Event 2 Capture
      EXEV2CPT       : CPT2ACR_EXEV2CPT_Field := 16#0#;
      --  External Event 3 Capture
      EXEV3CPT       : CPT2ACR_EXEV3CPT_Field := 16#0#;
      --  External Event 4 Capture
      EXEV4CPT       : CPT2ACR_EXEV4CPT_Field := 16#0#;
      --  External Event 5 Capture
      EXEV5CPT       : CPT2ACR_EXEV5CPT_Field := 16#0#;
      --  External Event 6 Capture
      EXEV6CPT       : CPT2ACR_EXEV6CPT_Field := 16#0#;
      --  External Event 7 Capture
      EXEV7CPT       : CPT2ACR_EXEV7CPT_Field := 16#0#;
      --  External Event 8 Capture
      EXEV8CPT       : CPT2ACR_EXEV8CPT_Field := 16#0#;
      --  External Event 9 Capture
      EXEV9CPT       : CPT2ACR_EXEV9CPT_Field := 16#0#;
      --  External Event 10 Capture
      EXEV10CPT      : CPT2ACR_EXEV10CPT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : STM32_SVD.UInt4 := 16#0#;
      --  Timer B output 1 Set
      TB1SET         : CPT2ACR_TB1SET_Field := 16#0#;
      --  Timer B output 1 Reset
      TB1RST         : CPT2ACR_TB1RST_Field := 16#0#;
      --  Timer B Compare 1
      TBCMP          : CPT2ACR_TBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer C output 1 Set
      TC1SET         : CPT2ACR_TC1SET_Field := 16#0#;
      --  Timer C output 1 Reset
      TC1RST         : CPT2ACR_TC1RST_Field := 16#0#;
      --  Timer C Compare 1
      TCCMP          : CPT2ACR_TCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer D output 1 Set
      TD1SET         : CPT2ACR_TD1SET_Field := 16#0#;
      --  Timer D output 1 Reset
      TD1RST         : CPT2ACR_TD1RST_Field := 16#0#;
      --  Timer D Compare 1
      TDCMP          : CPT2ACR_TDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer E output 1 Set
      TE1SET         : CPT2ACR_TE1SET_Field := 16#0#;
      --  Timer E output 1 Reset
      TE1RST         : CPT2ACR_TE1RST_Field := 16#0#;
      --  Timer E Compare 1
      TECMP          : CPT2ACR_TECMP_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT2ACR_Register use record
      SWCPT          at 0 range 0 .. 0;
      UDPCPT         at 0 range 1 .. 1;
      EXEV1CPT       at 0 range 2 .. 2;
      EXEV2CPT       at 0 range 3 .. 3;
      EXEV3CPT       at 0 range 4 .. 4;
      EXEV4CPT       at 0 range 5 .. 5;
      EXEV5CPT       at 0 range 6 .. 6;
      EXEV6CPT       at 0 range 7 .. 7;
      EXEV7CPT       at 0 range 8 .. 8;
      EXEV8CPT       at 0 range 9 .. 9;
      EXEV9CPT       at 0 range 10 .. 10;
      EXEV10CPT      at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TB1SET         at 0 range 16 .. 16;
      TB1RST         at 0 range 17 .. 17;
      TBCMP          at 0 range 18 .. 19;
      TC1SET         at 0 range 20 .. 20;
      TC1RST         at 0 range 21 .. 21;
      TCCMP          at 0 range 22 .. 23;
      TD1SET         at 0 range 24 .. 24;
      TD1RST         at 0 range 25 .. 25;
      TDCMP          at 0 range 26 .. 27;
      TE1SET         at 0 range 28 .. 28;
      TE1RST         at 0 range 29 .. 29;
      TECMP          at 0 range 30 .. 31;
   end record;

   subtype OUTAR_POL1_Field is STM32_SVD.Bit;
   subtype OUTAR_IDLEM1_Field is STM32_SVD.Bit;
   subtype OUTAR_IDLES1_Field is STM32_SVD.Bit;
   subtype OUTAR_FAULT1_Field is STM32_SVD.UInt2;
   subtype OUTAR_CHP1_Field is STM32_SVD.Bit;
   subtype OUTAR_DIDL1_Field is STM32_SVD.Bit;
   subtype OUTAR_DTEN_Field is STM32_SVD.Bit;
   subtype OUTAR_DLYPRTEN_Field is STM32_SVD.Bit;
   subtype OUTAR_DLYPRT_Field is STM32_SVD.UInt3;
   subtype OUTAR_POL2_Field is STM32_SVD.Bit;
   subtype OUTAR_IDLEM2_Field is STM32_SVD.Bit;
   subtype OUTAR_IDLES2_Field is STM32_SVD.Bit;
   subtype OUTAR_FAULT2_Field is STM32_SVD.UInt2;
   subtype OUTAR_CHP2_Field is STM32_SVD.Bit;
   subtype OUTAR_DIDL2_Field is STM32_SVD.Bit;

   --  Timerx Output Register
   type OUTAR_Register is record
      --  unspecified
      Reserved_0_0   : STM32_SVD.Bit := 16#0#;
      --  Output 1 polarity
      POL1           : OUTAR_POL1_Field := 16#0#;
      --  Output 1 Idle mode
      IDLEM1         : OUTAR_IDLEM1_Field := 16#0#;
      --  Output 1 Idle State
      IDLES1         : OUTAR_IDLES1_Field := 16#0#;
      --  Output 1 Fault state
      FAULT1         : OUTAR_FAULT1_Field := 16#0#;
      --  Output 1 Chopper enable
      CHP1           : OUTAR_CHP1_Field := 16#0#;
      --  Output 1 Deadtime upon burst mode Idle entry
      DIDL1          : OUTAR_DIDL1_Field := 16#0#;
      --  Deadtime enable
      DTEN           : OUTAR_DTEN_Field := 16#0#;
      --  Delayed Protection Enable
      DLYPRTEN       : OUTAR_DLYPRTEN_Field := 16#0#;
      --  Delayed Protection
      DLYPRT         : OUTAR_DLYPRT_Field := 16#0#;
      --  unspecified
      Reserved_13_16 : STM32_SVD.UInt4 := 16#0#;
      --  Output 2 polarity
      POL2           : OUTAR_POL2_Field := 16#0#;
      --  Output 2 Idle mode
      IDLEM2         : OUTAR_IDLEM2_Field := 16#0#;
      --  Output 2 Idle State
      IDLES2         : OUTAR_IDLES2_Field := 16#0#;
      --  Output 2 Fault state
      FAULT2         : OUTAR_FAULT2_Field := 16#0#;
      --  Output 2 Chopper enable
      CHP2           : OUTAR_CHP2_Field := 16#0#;
      --  Output 2 Deadtime upon burst mode Idle entry
      DIDL2          : OUTAR_DIDL2_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTAR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      POL1           at 0 range 1 .. 1;
      IDLEM1         at 0 range 2 .. 2;
      IDLES1         at 0 range 3 .. 3;
      FAULT1         at 0 range 4 .. 5;
      CHP1           at 0 range 6 .. 6;
      DIDL1          at 0 range 7 .. 7;
      DTEN           at 0 range 8 .. 8;
      DLYPRTEN       at 0 range 9 .. 9;
      DLYPRT         at 0 range 10 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      POL2           at 0 range 17 .. 17;
      IDLEM2         at 0 range 18 .. 18;
      IDLES2         at 0 range 19 .. 19;
      FAULT2         at 0 range 20 .. 21;
      CHP2           at 0 range 22 .. 22;
      DIDL2          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLTAR_FLT1EN_Field is STM32_SVD.Bit;
   subtype FLTAR_FLT2EN_Field is STM32_SVD.Bit;
   subtype FLTAR_FLT3EN_Field is STM32_SVD.Bit;
   subtype FLTAR_FLT4EN_Field is STM32_SVD.Bit;
   subtype FLTAR_FLT5EN_Field is STM32_SVD.Bit;
   subtype FLTAR_FLTLCK_Field is STM32_SVD.Bit;

   --  Timerx Fault Register
   type FLTAR_Register is record
      --  Fault 1 enable
      FLT1EN        : FLTAR_FLT1EN_Field := 16#0#;
      --  Fault 2 enable
      FLT2EN        : FLTAR_FLT2EN_Field := 16#0#;
      --  Fault 3 enable
      FLT3EN        : FLTAR_FLT3EN_Field := 16#0#;
      --  Fault 4 enable
      FLT4EN        : FLTAR_FLT4EN_Field := 16#0#;
      --  Fault 5 enable
      FLT5EN        : FLTAR_FLT5EN_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : STM32_SVD.UInt26 := 16#0#;
      --  Fault sources Lock
      FLTLCK        : FLTAR_FLTLCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLTAR_Register use record
      FLT1EN        at 0 range 0 .. 0;
      FLT2EN        at 0 range 1 .. 1;
      FLT3EN        at 0 range 2 .. 2;
      FLT4EN        at 0 range 3 .. 3;
      FLT5EN        at 0 range 4 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      FLTLCK        at 0 range 31 .. 31;
   end record;

   subtype TIMBCR_CK_PSCx_Field is STM32_SVD.UInt3;
   subtype TIMBCR_CONT_Field is STM32_SVD.Bit;
   subtype TIMBCR_RETRIG_Field is STM32_SVD.Bit;
   subtype TIMBCR_HALF_Field is STM32_SVD.Bit;
   subtype TIMBCR_PSHPLL_Field is STM32_SVD.Bit;
   subtype TIMBCR_SYNCRSTx_Field is STM32_SVD.Bit;
   subtype TIMBCR_SYNCSTRTx_Field is STM32_SVD.Bit;
   --  TIMBCR_DELCMP array element
   subtype TIMBCR_DELCMP_Element is STM32_SVD.UInt2;

   --  TIMBCR_DELCMP array
   type TIMBCR_DELCMP_Field_Array is array (2 .. 3) of TIMBCR_DELCMP_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for TIMBCR_DELCMP
   type TIMBCR_DELCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  DELCMP as an array
            Arr : TIMBCR_DELCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMBCR_DELCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TIMBCR_TxREPU_Field is STM32_SVD.Bit;
   subtype TIMBCR_TxRSTU_Field is STM32_SVD.Bit;
   subtype TIMBCR_TBU_Field is STM32_SVD.Bit;
   subtype TIMBCR_TCU_Field is STM32_SVD.Bit;
   subtype TIMBCR_TDU_Field is STM32_SVD.Bit;
   subtype TIMBCR_TEU_Field is STM32_SVD.Bit;
   subtype TIMBCR_MSTU_Field is STM32_SVD.Bit;
   subtype TIMBCR_DACSYNC_Field is STM32_SVD.UInt2;
   subtype TIMBCR_PREEN_Field is STM32_SVD.Bit;
   subtype TIMBCR_UPDGAT_Field is STM32_SVD.UInt4;

   --  Timerx Control Register
   type TIMBCR_Register is record
      --  HRTIM Timer x Clock prescaler
      CK_PSCx        : TIMBCR_CK_PSCx_Field := 16#0#;
      --  Continuous mode
      CONT           : TIMBCR_CONT_Field := 16#0#;
      --  Re-triggerable mode
      RETRIG         : TIMBCR_RETRIG_Field := 16#0#;
      --  Half mode enable
      HALF           : TIMBCR_HALF_Field := 16#0#;
      --  Push-Pull mode enable
      PSHPLL         : TIMBCR_PSHPLL_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : STM32_SVD.UInt3 := 16#0#;
      --  Synchronization Resets Timer x
      SYNCRSTx       : TIMBCR_SYNCRSTx_Field := 16#0#;
      --  Synchronization Starts Timer x
      SYNCSTRTx      : TIMBCR_SYNCSTRTx_Field := 16#0#;
      --  Delayed CMP2 mode
      DELCMP         : TIMBCR_DELCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : STM32_SVD.Bit := 16#0#;
      --  Timer x Repetition update
      TxREPU         : TIMBCR_TxREPU_Field := 16#0#;
      --  Timerx reset update
      TxRSTU         : TIMBCR_TxRSTU_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : STM32_SVD.Bit := 16#0#;
      --  TBU
      TBU            : TIMBCR_TBU_Field := 16#0#;
      --  TCU
      TCU            : TIMBCR_TCU_Field := 16#0#;
      --  TDU
      TDU            : TIMBCR_TDU_Field := 16#0#;
      --  TEU
      TEU            : TIMBCR_TEU_Field := 16#0#;
      --  Master Timer update
      MSTU           : TIMBCR_MSTU_Field := 16#0#;
      --  AC Synchronization
      DACSYNC        : TIMBCR_DACSYNC_Field := 16#0#;
      --  Preload enable
      PREEN          : TIMBCR_PREEN_Field := 16#0#;
      --  Update Gating
      UPDGAT         : TIMBCR_UPDGAT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMBCR_Register use record
      CK_PSCx        at 0 range 0 .. 2;
      CONT           at 0 range 3 .. 3;
      RETRIG         at 0 range 4 .. 4;
      HALF           at 0 range 5 .. 5;
      PSHPLL         at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      SYNCRSTx       at 0 range 10 .. 10;
      SYNCSTRTx      at 0 range 11 .. 11;
      DELCMP         at 0 range 12 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      TxREPU         at 0 range 17 .. 17;
      TxRSTU         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TBU            at 0 range 20 .. 20;
      TCU            at 0 range 21 .. 21;
      TDU            at 0 range 22 .. 22;
      TEU            at 0 range 23 .. 23;
      MSTU           at 0 range 24 .. 24;
      DACSYNC        at 0 range 25 .. 26;
      PREEN          at 0 range 27 .. 27;
      UPDGAT         at 0 range 28 .. 31;
   end record;

   --  TIMBISR_CMP array element
   subtype TIMBISR_CMP_Element is STM32_SVD.Bit;

   --  TIMBISR_CMP array
   type TIMBISR_CMP_Field_Array is array (1 .. 4) of TIMBISR_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMBISR_CMP
   type TIMBISR_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : TIMBISR_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMBISR_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TIMBISR_REP_Field is STM32_SVD.Bit;
   subtype TIMBISR_UPD_Field is STM32_SVD.Bit;
   --  TIMBISR_CPT array element
   subtype TIMBISR_CPT_Element is STM32_SVD.Bit;

   --  TIMBISR_CPT array
   type TIMBISR_CPT_Field_Array is array (1 .. 2) of TIMBISR_CPT_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMBISR_CPT
   type TIMBISR_CPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPT as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  CPT as an array
            Arr : TIMBISR_CPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMBISR_CPT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype TIMBISR_SETx1_Field is STM32_SVD.Bit;
   subtype TIMBISR_RSTx1_Field is STM32_SVD.Bit;
   subtype TIMBISR_SETx2_Field is STM32_SVD.Bit;
   subtype TIMBISR_RSTx2_Field is STM32_SVD.Bit;
   subtype TIMBISR_RST_Field is STM32_SVD.Bit;
   subtype TIMBISR_DLYPRT_Field is STM32_SVD.Bit;
   subtype TIMBISR_CPPSTAT_Field is STM32_SVD.Bit;
   subtype TIMBISR_IPPSTAT_Field is STM32_SVD.Bit;
   subtype TIMBISR_O1STAT_Field is STM32_SVD.Bit;
   subtype TIMBISR_O2STAT_Field is STM32_SVD.Bit;

   --  Timerx Interrupt Status Register
   type TIMBISR_Register is record
      --  Read-only. Compare 1 Interrupt Flag
      CMP            : TIMBISR_CMP_Field;
      --  Read-only. Repetition Interrupt Flag
      REP            : TIMBISR_REP_Field;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit;
      --  Read-only. Update Interrupt Flag
      UPD            : TIMBISR_UPD_Field;
      --  Read-only. Capture1 Interrupt Flag
      CPT            : TIMBISR_CPT_Field;
      --  Read-only. Output 1 Set Interrupt Flag
      SETx1          : TIMBISR_SETx1_Field;
      --  Read-only. Output 1 Reset Interrupt Flag
      RSTx1          : TIMBISR_RSTx1_Field;
      --  Read-only. Output 2 Set Interrupt Flag
      SETx2          : TIMBISR_SETx2_Field;
      --  Read-only. Output 2 Reset Interrupt Flag
      RSTx2          : TIMBISR_RSTx2_Field;
      --  Read-only. Reset Interrupt Flag
      RST            : TIMBISR_RST_Field;
      --  Read-only. Delayed Protection Flag
      DLYPRT         : TIMBISR_DLYPRT_Field;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit;
      --  Read-only. Current Push Pull Status
      CPPSTAT        : TIMBISR_CPPSTAT_Field;
      --  Read-only. Idle Push Pull Status
      IPPSTAT        : TIMBISR_IPPSTAT_Field;
      --  Read-only. Output 1 State
      O1STAT         : TIMBISR_O1STAT_Field;
      --  Read-only. Output 2 State
      O2STAT         : TIMBISR_O2STAT_Field;
      --  unspecified
      Reserved_20_31 : STM32_SVD.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMBISR_Register use record
      CMP            at 0 range 0 .. 3;
      REP            at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPD            at 0 range 6 .. 6;
      CPT            at 0 range 7 .. 8;
      SETx1          at 0 range 9 .. 9;
      RSTx1          at 0 range 10 .. 10;
      SETx2          at 0 range 11 .. 11;
      RSTx2          at 0 range 12 .. 12;
      RST            at 0 range 13 .. 13;
      DLYPRT         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CPPSTAT        at 0 range 16 .. 16;
      IPPSTAT        at 0 range 17 .. 17;
      O1STAT         at 0 range 18 .. 18;
      O2STAT         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIMBICR_CMP1C_Field is STM32_SVD.Bit;
   subtype TIMBICR_CMP2C_Field is STM32_SVD.Bit;
   subtype TIMBICR_CMP3C_Field is STM32_SVD.Bit;
   subtype TIMBICR_CMP4C_Field is STM32_SVD.Bit;
   subtype TIMBICR_REPC_Field is STM32_SVD.Bit;
   subtype TIMBICR_UPDC_Field is STM32_SVD.Bit;
   subtype TIMBICR_CPT1C_Field is STM32_SVD.Bit;
   subtype TIMBICR_CPT2C_Field is STM32_SVD.Bit;
   subtype TIMBICR_SET1xC_Field is STM32_SVD.Bit;
   subtype TIMBICR_RSTx1C_Field is STM32_SVD.Bit;
   subtype TIMBICR_SET2xC_Field is STM32_SVD.Bit;
   subtype TIMBICR_RSTx2C_Field is STM32_SVD.Bit;
   subtype TIMBICR_RSTC_Field is STM32_SVD.Bit;
   subtype TIMBICR_DLYPRTC_Field is STM32_SVD.Bit;

   --  Timerx Interrupt Clear Register
   type TIMBICR_Register is record
      --  Write-only. Compare 1 Interrupt flag Clear
      CMP1C          : TIMBICR_CMP1C_Field := 16#0#;
      --  Write-only. Compare 2 Interrupt flag Clear
      CMP2C          : TIMBICR_CMP2C_Field := 16#0#;
      --  Write-only. Compare 3 Interrupt flag Clear
      CMP3C          : TIMBICR_CMP3C_Field := 16#0#;
      --  Write-only. Compare 4 Interrupt flag Clear
      CMP4C          : TIMBICR_CMP4C_Field := 16#0#;
      --  Write-only. Repetition Interrupt flag Clear
      REPC           : TIMBICR_REPC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  Write-only. Update Interrupt flag Clear
      UPDC           : TIMBICR_UPDC_Field := 16#0#;
      --  Write-only. Capture1 Interrupt flag Clear
      CPT1C          : TIMBICR_CPT1C_Field := 16#0#;
      --  Write-only. Capture2 Interrupt flag Clear
      CPT2C          : TIMBICR_CPT2C_Field := 16#0#;
      --  Write-only. Output 1 Set flag Clear
      SET1xC         : TIMBICR_SET1xC_Field := 16#0#;
      --  Write-only. Output 1 Reset flag Clear
      RSTx1C         : TIMBICR_RSTx1C_Field := 16#0#;
      --  Write-only. Output 2 Set flag Clear
      SET2xC         : TIMBICR_SET2xC_Field := 16#0#;
      --  Write-only. Output 2 Reset flag Clear
      RSTx2C         : TIMBICR_RSTx2C_Field := 16#0#;
      --  Write-only. Reset Interrupt flag Clear
      RSTC           : TIMBICR_RSTC_Field := 16#0#;
      --  Write-only. Delayed Protection Flag Clear
      DLYPRTC        : TIMBICR_DLYPRTC_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMBICR_Register use record
      CMP1C          at 0 range 0 .. 0;
      CMP2C          at 0 range 1 .. 1;
      CMP3C          at 0 range 2 .. 2;
      CMP4C          at 0 range 3 .. 3;
      REPC           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPDC           at 0 range 6 .. 6;
      CPT1C          at 0 range 7 .. 7;
      CPT2C          at 0 range 8 .. 8;
      SET1xC         at 0 range 9 .. 9;
      RSTx1C         at 0 range 10 .. 10;
      SET2xC         at 0 range 11 .. 11;
      RSTx2C         at 0 range 12 .. 12;
      RSTC           at 0 range 13 .. 13;
      DLYPRTC        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype TIMBDIER5_CMP1IE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CMP2IE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CMP3IE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CMP4IE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_REPIE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_UPDIE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CPT1IE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CPT2IE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_SET1xIE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_RSTx1IE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_SETx2IE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_RSTx2IE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_RSTIE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_DLYPRTIE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CMP1DE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CMP2DE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CMP3DE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CMP4DE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_REPDE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_UPDDE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CPT1DE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_CPT2DE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_SET1xDE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_RSTx1DE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_SETx2DE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_RSTx2DE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_RSTDE_Field is STM32_SVD.Bit;
   subtype TIMBDIER5_DLYPRTDE_Field is STM32_SVD.Bit;

   --  TIMxDIER5
   type TIMBDIER5_Register is record
      --  CMP1IE
      CMP1IE         : TIMBDIER5_CMP1IE_Field := 16#0#;
      --  CMP2IE
      CMP2IE         : TIMBDIER5_CMP2IE_Field := 16#0#;
      --  CMP3IE
      CMP3IE         : TIMBDIER5_CMP3IE_Field := 16#0#;
      --  CMP4IE
      CMP4IE         : TIMBDIER5_CMP4IE_Field := 16#0#;
      --  REPIE
      REPIE          : TIMBDIER5_REPIE_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  UPDIE
      UPDIE          : TIMBDIER5_UPDIE_Field := 16#0#;
      --  CPT1IE
      CPT1IE         : TIMBDIER5_CPT1IE_Field := 16#0#;
      --  CPT2IE
      CPT2IE         : TIMBDIER5_CPT2IE_Field := 16#0#;
      --  SET1xIE
      SET1xIE        : TIMBDIER5_SET1xIE_Field := 16#0#;
      --  RSTx1IE
      RSTx1IE        : TIMBDIER5_RSTx1IE_Field := 16#0#;
      --  SETx2IE
      SETx2IE        : TIMBDIER5_SETx2IE_Field := 16#0#;
      --  RSTx2IE
      RSTx2IE        : TIMBDIER5_RSTx2IE_Field := 16#0#;
      --  RSTIE
      RSTIE          : TIMBDIER5_RSTIE_Field := 16#0#;
      --  DLYPRTIE
      DLYPRTIE       : TIMBDIER5_DLYPRTIE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  CMP1DE
      CMP1DE         : TIMBDIER5_CMP1DE_Field := 16#0#;
      --  CMP2DE
      CMP2DE         : TIMBDIER5_CMP2DE_Field := 16#0#;
      --  CMP3DE
      CMP3DE         : TIMBDIER5_CMP3DE_Field := 16#0#;
      --  CMP4DE
      CMP4DE         : TIMBDIER5_CMP4DE_Field := 16#0#;
      --  REPDE
      REPDE          : TIMBDIER5_REPDE_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  UPDDE
      UPDDE          : TIMBDIER5_UPDDE_Field := 16#0#;
      --  CPT1DE
      CPT1DE         : TIMBDIER5_CPT1DE_Field := 16#0#;
      --  CPT2DE
      CPT2DE         : TIMBDIER5_CPT2DE_Field := 16#0#;
      --  SET1xDE
      SET1xDE        : TIMBDIER5_SET1xDE_Field := 16#0#;
      --  RSTx1DE
      RSTx1DE        : TIMBDIER5_RSTx1DE_Field := 16#0#;
      --  SETx2DE
      SETx2DE        : TIMBDIER5_SETx2DE_Field := 16#0#;
      --  RSTx2DE
      RSTx2DE        : TIMBDIER5_RSTx2DE_Field := 16#0#;
      --  RSTDE
      RSTDE          : TIMBDIER5_RSTDE_Field := 16#0#;
      --  DLYPRTDE
      DLYPRTDE       : TIMBDIER5_DLYPRTDE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMBDIER5_Register use record
      CMP1IE         at 0 range 0 .. 0;
      CMP2IE         at 0 range 1 .. 1;
      CMP3IE         at 0 range 2 .. 2;
      CMP4IE         at 0 range 3 .. 3;
      REPIE          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPDIE          at 0 range 6 .. 6;
      CPT1IE         at 0 range 7 .. 7;
      CPT2IE         at 0 range 8 .. 8;
      SET1xIE        at 0 range 9 .. 9;
      RSTx1IE        at 0 range 10 .. 10;
      SETx2IE        at 0 range 11 .. 11;
      RSTx2IE        at 0 range 12 .. 12;
      RSTIE          at 0 range 13 .. 13;
      DLYPRTIE       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CMP1DE         at 0 range 16 .. 16;
      CMP2DE         at 0 range 17 .. 17;
      CMP3DE         at 0 range 18 .. 18;
      CMP4DE         at 0 range 19 .. 19;
      REPDE          at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      UPDDE          at 0 range 22 .. 22;
      CPT1DE         at 0 range 23 .. 23;
      CPT2DE         at 0 range 24 .. 24;
      SET1xDE        at 0 range 25 .. 25;
      RSTx1DE        at 0 range 26 .. 26;
      SETx2DE        at 0 range 27 .. 27;
      RSTx2DE        at 0 range 28 .. 28;
      RSTDE          at 0 range 29 .. 29;
      DLYPRTDE       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CNTR_CNTx_Field is STM32_SVD.UInt16;

   --  Timerx Counter Register
   type CNTR_Register is record
      --  Timerx Counter value
      CNTx           : CNTR_CNTx_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNTR_Register use record
      CNTx           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PERBR_PERx_Field is STM32_SVD.UInt16;

   --  Timerx Period Register
   type PERBR_Register is record
      --  Timerx Period value
      PERx           : PERBR_PERx_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERBR_Register use record
      PERx           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype REPBR_REPx_Field is STM32_SVD.Byte;

   --  Timerx Repetition Register
   type REPBR_Register is record
      --  Timerx Repetition counter value
      REPx          : REPBR_REPx_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REPBR_Register use record
      REPx          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CMP1BR_CMP1x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 1 Register
   type CMP1BR_Register is record
      --  Timerx Compare 1 value
      CMP1x          : CMP1BR_CMP1x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1BR_Register use record
      CMP1x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP1CBR_CMP1x_Field is STM32_SVD.UInt16;
   subtype CMP1CBR_REPx_Field is STM32_SVD.Byte;

   --  Timerx Compare 1 Compound Register
   type CMP1CBR_Register is record
      --  Timerx Compare 1 value
      CMP1x          : CMP1CBR_CMP1x_Field := 16#0#;
      --  Timerx Repetition value (aliased from HRTIM_REPx register)
      REPx           : CMP1CBR_REPx_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1CBR_Register use record
      CMP1x          at 0 range 0 .. 15;
      REPx           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CMP2BR_CMP2x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 2 Register
   type CMP2BR_Register is record
      --  Timerx Compare 2 value
      CMP2x          : CMP2BR_CMP2x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP2BR_Register use record
      CMP2x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP3BR_CMP3x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 3 Register
   type CMP3BR_Register is record
      --  Timerx Compare 3 value
      CMP3x          : CMP3BR_CMP3x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP3BR_Register use record
      CMP3x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP4BR_CMP4x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 4 Register
   type CMP4BR_Register is record
      --  Timerx Compare 4 value
      CMP4x          : CMP4BR_CMP4x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP4BR_Register use record
      CMP4x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CPT1BR_CPT1x_Field is STM32_SVD.UInt16;

   --  Timerx Capture 1 Register
   type CPT1BR_Register is record
      --  Read-only. Timerx Capture 1 value
      CPT1x          : CPT1BR_CPT1x_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT1BR_Register use record
      CPT1x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CPT2BR_CPT2x_Field is STM32_SVD.UInt16;

   --  Timerx Capture 2 Register
   type CPT2BR_Register is record
      --  Read-only. Timerx Capture 2 value
      CPT2x          : CPT2BR_CPT2x_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT2BR_Register use record
      CPT2x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DTBR_DTRx_Field is STM32_SVD.UInt9;
   subtype DTBR_SDTRx_Field is STM32_SVD.Bit;
   subtype DTBR_DTPRSC_Field is STM32_SVD.UInt3;
   subtype DTBR_DTRSLKx_Field is STM32_SVD.Bit;
   subtype DTBR_DTRLKx_Field is STM32_SVD.Bit;
   subtype DTBR_DTFx_Field is STM32_SVD.UInt9;
   subtype DTBR_SDTFx_Field is STM32_SVD.Bit;
   subtype DTBR_DTFSLKx_Field is STM32_SVD.Bit;
   subtype DTBR_DTFLKx_Field is STM32_SVD.Bit;

   --  Timerx Deadtime Register
   type DTBR_Register is record
      --  Deadtime Rising value
      DTRx           : DTBR_DTRx_Field := 16#0#;
      --  Sign Deadtime Rising value
      SDTRx          : DTBR_SDTRx_Field := 16#0#;
      --  Deadtime Prescaler
      DTPRSC         : DTBR_DTPRSC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32_SVD.Bit := 16#0#;
      --  Deadtime Rising Sign Lock
      DTRSLKx        : DTBR_DTRSLKx_Field := 16#0#;
      --  Deadtime Rising Lock
      DTRLKx         : DTBR_DTRLKx_Field := 16#0#;
      --  Deadtime Falling value
      DTFx           : DTBR_DTFx_Field := 16#0#;
      --  Sign Deadtime Falling value
      SDTFx          : DTBR_SDTFx_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : STM32_SVD.UInt4 := 16#0#;
      --  Deadtime Falling Sign Lock
      DTFSLKx        : DTBR_DTFSLKx_Field := 16#0#;
      --  Deadtime Falling Lock
      DTFLKx         : DTBR_DTFLKx_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTBR_Register use record
      DTRx           at 0 range 0 .. 8;
      SDTRx          at 0 range 9 .. 9;
      DTPRSC         at 0 range 10 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      DTRSLKx        at 0 range 14 .. 14;
      DTRLKx         at 0 range 15 .. 15;
      DTFx           at 0 range 16 .. 24;
      SDTFx          at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      DTFSLKx        at 0 range 30 .. 30;
      DTFLKx         at 0 range 31 .. 31;
   end record;

   subtype SETB1R_SST_Field is STM32_SVD.Bit;
   subtype SETB1R_RESYNC_Field is STM32_SVD.Bit;
   subtype SETB1R_PER_Field is STM32_SVD.Bit;
   --  SETB1R_CMP array element
   subtype SETB1R_CMP_Element is STM32_SVD.Bit;

   --  SETB1R_CMP array
   type SETB1R_CMP_Field_Array is array (1 .. 4) of SETB1R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETB1R_CMP
   type SETB1R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : SETB1R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETB1R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SETB1R_MSTPER_Field is STM32_SVD.Bit;
   --  SETB1R_MSTCMP array element
   subtype SETB1R_MSTCMP_Element is STM32_SVD.Bit;

   --  SETB1R_MSTCMP array
   type SETB1R_MSTCMP_Field_Array is array (1 .. 4) of SETB1R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETB1R_MSTCMP
   type SETB1R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : SETB1R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETB1R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SETB1R_TIMEVNT array element
   subtype SETB1R_TIMEVNT_Element is STM32_SVD.Bit;

   --  SETB1R_TIMEVNT array
   type SETB1R_TIMEVNT_Field_Array is array (1 .. 9)
     of SETB1R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for SETB1R_TIMEVNT
   type SETB1R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : SETB1R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for SETB1R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  SETB1R_EXTEVNT array element
   subtype SETB1R_EXTEVNT_Element is STM32_SVD.Bit;

   --  SETB1R_EXTEVNT array
   type SETB1R_EXTEVNT_Field_Array is array (1 .. 10)
     of SETB1R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for SETB1R_EXTEVNT
   type SETB1R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : SETB1R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SETB1R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype SETB1R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output1 Set Register
   type SETB1R_Register is record
      --  Software Set trigger
      SST     : SETB1R_SST_Field := 16#0#;
      --  Timer A resynchronizaton
      RESYNC  : SETB1R_RESYNC_Field := 16#0#;
      --  Timer A Period
      PER     : SETB1R_PER_Field := 16#0#;
      --  Timer A compare 1
      CMP     : SETB1R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  Master Period
      MSTPER  : SETB1R_MSTPER_Field := 16#0#;
      --  Master Compare 1
      MSTCMP  : SETB1R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  Timer Event 1
      TIMEVNT : SETB1R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  External Event 1
      EXTEVNT : SETB1R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  Registers update (transfer preload to active)
      UPDATE  : SETB1R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETB1R_Register use record
      SST     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype RSTB1R_SRT_Field is STM32_SVD.Bit;
   subtype RSTB1R_RESYNC_Field is STM32_SVD.Bit;
   subtype RSTB1R_PER_Field is STM32_SVD.Bit;
   --  RSTB1R_CMP array element
   subtype RSTB1R_CMP_Element is STM32_SVD.Bit;

   --  RSTB1R_CMP array
   type RSTB1R_CMP_Field_Array is array (1 .. 4) of RSTB1R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTB1R_CMP
   type RSTB1R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : RSTB1R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTB1R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RSTB1R_MSTPER_Field is STM32_SVD.Bit;
   --  RSTB1R_MSTCMP array element
   subtype RSTB1R_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTB1R_MSTCMP array
   type RSTB1R_MSTCMP_Field_Array is array (1 .. 4) of RSTB1R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTB1R_MSTCMP
   type RSTB1R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTB1R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTB1R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTB1R_TIMEVNT array element
   subtype RSTB1R_TIMEVNT_Element is STM32_SVD.Bit;

   --  RSTB1R_TIMEVNT array
   type RSTB1R_TIMEVNT_Field_Array is array (1 .. 9)
     of RSTB1R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for RSTB1R_TIMEVNT
   type RSTB1R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : RSTB1R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RSTB1R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RSTB1R_EXTEVNT array element
   subtype RSTB1R_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTB1R_EXTEVNT array
   type RSTB1R_EXTEVNT_Field_Array is array (1 .. 10)
     of RSTB1R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTB1R_EXTEVNT
   type RSTB1R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTB1R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTB1R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype RSTB1R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output1 Reset Register
   type RSTB1R_Register is record
      --  SRT
      SRT     : RSTB1R_SRT_Field := 16#0#;
      --  RESYNC
      RESYNC  : RSTB1R_RESYNC_Field := 16#0#;
      --  PER
      PER     : RSTB1R_PER_Field := 16#0#;
      --  CMP1
      CMP     : RSTB1R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : RSTB1R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : RSTB1R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : RSTB1R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : RSTB1R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : RSTB1R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTB1R_Register use record
      SRT     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype SETB2R_SST_Field is STM32_SVD.Bit;
   subtype SETB2R_RESYNC_Field is STM32_SVD.Bit;
   subtype SETB2R_PER_Field is STM32_SVD.Bit;
   --  SETB2R_CMP array element
   subtype SETB2R_CMP_Element is STM32_SVD.Bit;

   --  SETB2R_CMP array
   type SETB2R_CMP_Field_Array is array (1 .. 4) of SETB2R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETB2R_CMP
   type SETB2R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : SETB2R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETB2R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SETB2R_MSTPER_Field is STM32_SVD.Bit;
   --  SETB2R_MSTCMP array element
   subtype SETB2R_MSTCMP_Element is STM32_SVD.Bit;

   --  SETB2R_MSTCMP array
   type SETB2R_MSTCMP_Field_Array is array (1 .. 4) of SETB2R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETB2R_MSTCMP
   type SETB2R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : SETB2R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETB2R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SETB2R_TIMEVNT array element
   subtype SETB2R_TIMEVNT_Element is STM32_SVD.Bit;

   --  SETB2R_TIMEVNT array
   type SETB2R_TIMEVNT_Field_Array is array (1 .. 9)
     of SETB2R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for SETB2R_TIMEVNT
   type SETB2R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : SETB2R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for SETB2R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  SETB2R_EXTEVNT array element
   subtype SETB2R_EXTEVNT_Element is STM32_SVD.Bit;

   --  SETB2R_EXTEVNT array
   type SETB2R_EXTEVNT_Field_Array is array (1 .. 10)
     of SETB2R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for SETB2R_EXTEVNT
   type SETB2R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : SETB2R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SETB2R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype SETB2R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output2 Set Register
   type SETB2R_Register is record
      --  SST
      SST     : SETB2R_SST_Field := 16#0#;
      --  RESYNC
      RESYNC  : SETB2R_RESYNC_Field := 16#0#;
      --  PER
      PER     : SETB2R_PER_Field := 16#0#;
      --  CMP1
      CMP     : SETB2R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : SETB2R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : SETB2R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : SETB2R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : SETB2R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : SETB2R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETB2R_Register use record
      SST     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype RSTB2R_SRT_Field is STM32_SVD.Bit;
   subtype RSTB2R_RESYNC_Field is STM32_SVD.Bit;
   subtype RSTB2R_PER_Field is STM32_SVD.Bit;
   --  RSTB2R_CMP array element
   subtype RSTB2R_CMP_Element is STM32_SVD.Bit;

   --  RSTB2R_CMP array
   type RSTB2R_CMP_Field_Array is array (1 .. 4) of RSTB2R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTB2R_CMP
   type RSTB2R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : RSTB2R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTB2R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RSTB2R_MSTPER_Field is STM32_SVD.Bit;
   --  RSTB2R_MSTCMP array element
   subtype RSTB2R_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTB2R_MSTCMP array
   type RSTB2R_MSTCMP_Field_Array is array (1 .. 4) of RSTB2R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTB2R_MSTCMP
   type RSTB2R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTB2R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTB2R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTB2R_TIMEVNT array element
   subtype RSTB2R_TIMEVNT_Element is STM32_SVD.Bit;

   --  RSTB2R_TIMEVNT array
   type RSTB2R_TIMEVNT_Field_Array is array (1 .. 9)
     of RSTB2R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for RSTB2R_TIMEVNT
   type RSTB2R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : RSTB2R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RSTB2R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RSTB2R_EXTEVNT array element
   subtype RSTB2R_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTB2R_EXTEVNT array
   type RSTB2R_EXTEVNT_Field_Array is array (1 .. 10)
     of RSTB2R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTB2R_EXTEVNT
   type RSTB2R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTB2R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTB2R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype RSTB2R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output2 Reset Register
   type RSTB2R_Register is record
      --  SRT
      SRT     : RSTB2R_SRT_Field := 16#0#;
      --  RESYNC
      RESYNC  : RSTB2R_RESYNC_Field := 16#0#;
      --  PER
      PER     : RSTB2R_PER_Field := 16#0#;
      --  CMP1
      CMP     : RSTB2R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : RSTB2R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : RSTB2R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : RSTB2R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : RSTB2R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : RSTB2R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTB2R_Register use record
      SRT     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype EEFBR1_EE1LTCH_Field is STM32_SVD.Bit;
   subtype EEFBR1_EE1FLTR_Field is STM32_SVD.UInt4;
   subtype EEFBR1_EE2LTCH_Field is STM32_SVD.Bit;
   subtype EEFBR1_EE2FLTR_Field is STM32_SVD.UInt4;
   subtype EEFBR1_EE3LTCH_Field is STM32_SVD.Bit;
   subtype EEFBR1_EE3FLTR_Field is STM32_SVD.UInt4;
   subtype EEFBR1_EE4LTCH_Field is STM32_SVD.Bit;
   subtype EEFBR1_EE4FLTR_Field is STM32_SVD.UInt4;
   subtype EEFBR1_EE5LTCH_Field is STM32_SVD.Bit;
   subtype EEFBR1_EE5FLTR_Field is STM32_SVD.UInt4;

   --  Timerx External Event Filtering Register 1
   type EEFBR1_Register is record
      --  External Event 1 latch
      EE1LTCH        : EEFBR1_EE1LTCH_Field := 16#0#;
      --  External Event 1 filter
      EE1FLTR        : EEFBR1_EE1FLTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 2 latch
      EE2LTCH        : EEFBR1_EE2LTCH_Field := 16#0#;
      --  External Event 2 filter
      EE2FLTR        : EEFBR1_EE2FLTR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 3 latch
      EE3LTCH        : EEFBR1_EE3LTCH_Field := 16#0#;
      --  External Event 3 filter
      EE3FLTR        : EEFBR1_EE3FLTR_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 4 latch
      EE4LTCH        : EEFBR1_EE4LTCH_Field := 16#0#;
      --  External Event 4 filter
      EE4FLTR        : EEFBR1_EE4FLTR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 5 latch
      EE5LTCH        : EEFBR1_EE5LTCH_Field := 16#0#;
      --  External Event 5 filter
      EE5FLTR        : EEFBR1_EE5FLTR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEFBR1_Register use record
      EE1LTCH        at 0 range 0 .. 0;
      EE1FLTR        at 0 range 1 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE2LTCH        at 0 range 6 .. 6;
      EE2FLTR        at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE3LTCH        at 0 range 12 .. 12;
      EE3FLTR        at 0 range 13 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE4LTCH        at 0 range 18 .. 18;
      EE4FLTR        at 0 range 19 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE5LTCH        at 0 range 24 .. 24;
      EE5FLTR        at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype EEFBR2_EE6LTCH_Field is STM32_SVD.Bit;
   subtype EEFBR2_EE6FLTR_Field is STM32_SVD.UInt4;
   subtype EEFBR2_EE7LTCH_Field is STM32_SVD.Bit;
   subtype EEFBR2_EE7FLTR_Field is STM32_SVD.UInt4;
   subtype EEFBR2_EE8LTCH_Field is STM32_SVD.Bit;
   subtype EEFBR2_EE8FLTR_Field is STM32_SVD.UInt4;
   subtype EEFBR2_EE9LTCH_Field is STM32_SVD.Bit;
   subtype EEFBR2_EE9FLTR_Field is STM32_SVD.UInt4;
   subtype EEFBR2_EE10LTCH_Field is STM32_SVD.Bit;
   subtype EEFBR2_EE10FLTR_Field is STM32_SVD.UInt4;

   --  Timerx External Event Filtering Register 2
   type EEFBR2_Register is record
      --  External Event 6 latch
      EE6LTCH        : EEFBR2_EE6LTCH_Field := 16#0#;
      --  External Event 6 filter
      EE6FLTR        : EEFBR2_EE6FLTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 7 latch
      EE7LTCH        : EEFBR2_EE7LTCH_Field := 16#0#;
      --  External Event 7 filter
      EE7FLTR        : EEFBR2_EE7FLTR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 8 latch
      EE8LTCH        : EEFBR2_EE8LTCH_Field := 16#0#;
      --  External Event 8 filter
      EE8FLTR        : EEFBR2_EE8FLTR_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 9 latch
      EE9LTCH        : EEFBR2_EE9LTCH_Field := 16#0#;
      --  External Event 9 filter
      EE9FLTR        : EEFBR2_EE9FLTR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 10 latch
      EE10LTCH       : EEFBR2_EE10LTCH_Field := 16#0#;
      --  External Event 10 filter
      EE10FLTR       : EEFBR2_EE10FLTR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEFBR2_Register use record
      EE6LTCH        at 0 range 0 .. 0;
      EE6FLTR        at 0 range 1 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE7LTCH        at 0 range 6 .. 6;
      EE7FLTR        at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE8LTCH        at 0 range 12 .. 12;
      EE8FLTR        at 0 range 13 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE9LTCH        at 0 range 18 .. 18;
      EE9FLTR        at 0 range 19 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE10LTCH       at 0 range 24 .. 24;
      EE10FLTR       at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RSTBR_UPDT_Field is STM32_SVD.Bit;
   --  RSTBR_CMP array element
   subtype RSTBR_CMP_Element is STM32_SVD.Bit;

   --  RSTBR_CMP array
   type RSTBR_CMP_Field_Array is array (2 .. 3) of RSTBR_CMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for RSTBR_CMP
   type RSTBR_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  CMP as an array
            Arr : RSTBR_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RSTBR_CMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype RSTBR_MSTPER_Field is STM32_SVD.Bit;
   --  RSTBR_MSTCMP array element
   subtype RSTBR_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTBR_MSTCMP array
   type RSTBR_MSTCMP_Field_Array is array (1 .. 4) of RSTBR_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTBR_MSTCMP
   type RSTBR_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTBR_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTBR_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTBR_EXTEVNT array element
   subtype RSTBR_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTBR_EXTEVNT array
   type RSTBR_EXTEVNT_Field_Array is array (1 .. 10) of RSTBR_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTBR_EXTEVNT
   type RSTBR_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTBR_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTBR_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  RSTBR_TIMACMP array element
   subtype RSTBR_TIMACMP_Element is STM32_SVD.Bit;

   --  RSTBR_TIMACMP array
   type RSTBR_TIMACMP_Field_Array is array (1 .. 3) of RSTBR_TIMACMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTBR_TIMACMP
   type RSTBR_TIMACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMACMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMACMP as an array
            Arr : RSTBR_TIMACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTBR_TIMACMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTBR_TIMCCMP array element
   subtype RSTBR_TIMCCMP_Element is STM32_SVD.Bit;

   --  RSTBR_TIMCCMP array
   type RSTBR_TIMCCMP_Field_Array is array (1 .. 3) of RSTBR_TIMCCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTBR_TIMCCMP
   type RSTBR_TIMCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMCCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMCCMP as an array
            Arr : RSTBR_TIMCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTBR_TIMCCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTBR_TIMDCMP array element
   subtype RSTBR_TIMDCMP_Element is STM32_SVD.Bit;

   --  RSTBR_TIMDCMP array
   type RSTBR_TIMDCMP_Field_Array is array (1 .. 3) of RSTBR_TIMDCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTBR_TIMDCMP
   type RSTBR_TIMDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMDCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMDCMP as an array
            Arr : RSTBR_TIMDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTBR_TIMDCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTBR_TIMECMP array element
   subtype RSTBR_TIMECMP_Element is STM32_SVD.Bit;

   --  RSTBR_TIMECMP array
   type RSTBR_TIMECMP_Field_Array is array (1 .. 3) of RSTBR_TIMECMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTBR_TIMECMP
   type RSTBR_TIMECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMECMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMECMP as an array
            Arr : RSTBR_TIMECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTBR_TIMECMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  TimerA Reset Register
   type RSTBR_Register is record
      --  unspecified
      Reserved_0_0   : STM32_SVD.Bit := 16#0#;
      --  Timer A Update reset
      UPDT           : RSTBR_UPDT_Field := 16#0#;
      --  Timer A compare 2 reset
      CMP            : RSTBR_CMP_Field := (As_Array => False, Val => 16#0#);
      --  Master timer Period
      MSTPER         : RSTBR_MSTPER_Field := 16#0#;
      --  Master compare 1
      MSTCMP         : RSTBR_MSTCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  External Event 1
      EXTEVNT        : RSTBR_EXTEVNT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer A Compare 1
      TIMACMP        : RSTBR_TIMACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer C Compare 1
      TIMCCMP        : RSTBR_TIMCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer D Compare 1
      TIMDCMP        : RSTBR_TIMDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer E Compare 1
      TIMECMP        : RSTBR_TIMECMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTBR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      UPDT           at 0 range 1 .. 1;
      CMP            at 0 range 2 .. 3;
      MSTPER         at 0 range 4 .. 4;
      MSTCMP         at 0 range 5 .. 8;
      EXTEVNT        at 0 range 9 .. 18;
      TIMACMP        at 0 range 19 .. 21;
      TIMCCMP        at 0 range 22 .. 24;
      TIMDCMP        at 0 range 25 .. 27;
      TIMECMP        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CHPBR_CHPFRQ_Field is STM32_SVD.UInt4;
   subtype CHPBR_CHPDTY_Field is STM32_SVD.UInt3;
   subtype CHPBR_STRTPW_Field is STM32_SVD.UInt4;

   --  Timerx Chopper Register
   type CHPBR_Register is record
      --  Timerx carrier frequency value
      CHPFRQ         : CHPBR_CHPFRQ_Field := 16#0#;
      --  Timerx chopper duty cycle value
      CHPDTY         : CHPBR_CHPDTY_Field := 16#0#;
      --  STRTPW
      STRTPW         : CHPBR_STRTPW_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : STM32_SVD.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHPBR_Register use record
      CHPFRQ         at 0 range 0 .. 3;
      CHPDTY         at 0 range 4 .. 6;
      STRTPW         at 0 range 7 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype CPT1BCR_SWCPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_UDPCPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_EXEV1CPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_EXEV2CPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_EXEV3CPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_EXEV4CPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_EXEV5CPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_EXEV6CPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_EXEV7CPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_EXEV8CPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_EXEV9CPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_EXEV10CPT_Field is STM32_SVD.Bit;
   subtype CPT1BCR_TA1SET_Field is STM32_SVD.Bit;
   subtype CPT1BCR_TA1RST_Field is STM32_SVD.Bit;
   --  CPT1BCR_TACMP array element
   subtype CPT1BCR_TACMP_Element is STM32_SVD.Bit;

   --  CPT1BCR_TACMP array
   type CPT1BCR_TACMP_Field_Array is array (1 .. 2) of CPT1BCR_TACMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1BCR_TACMP
   type CPT1BCR_TACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TACMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TACMP as an array
            Arr : CPT1BCR_TACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1BCR_TACMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1BCR_TC1SET_Field is STM32_SVD.Bit;
   subtype CPT1BCR_TC1RST_Field is STM32_SVD.Bit;
   --  CPT1BCR_TCCMP array element
   subtype CPT1BCR_TCCMP_Element is STM32_SVD.Bit;

   --  CPT1BCR_TCCMP array
   type CPT1BCR_TCCMP_Field_Array is array (1 .. 2) of CPT1BCR_TCCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1BCR_TCCMP
   type CPT1BCR_TCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TCCMP as an array
            Arr : CPT1BCR_TCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1BCR_TCCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1BCR_TD1SET_Field is STM32_SVD.Bit;
   subtype CPT1BCR_TD1RST_Field is STM32_SVD.Bit;
   --  CPT1BCR_TDCMP array element
   subtype CPT1BCR_TDCMP_Element is STM32_SVD.Bit;

   --  CPT1BCR_TDCMP array
   type CPT1BCR_TDCMP_Field_Array is array (1 .. 2) of CPT1BCR_TDCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1BCR_TDCMP
   type CPT1BCR_TDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TDCMP as an array
            Arr : CPT1BCR_TDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1BCR_TDCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1BCR_TE1SET_Field is STM32_SVD.Bit;
   subtype CPT1BCR_TE1RST_Field is STM32_SVD.Bit;
   --  CPT1BCR_TECMP array element
   subtype CPT1BCR_TECMP_Element is STM32_SVD.Bit;

   --  CPT1BCR_TECMP array
   type CPT1BCR_TECMP_Field_Array is array (1 .. 2) of CPT1BCR_TECMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1BCR_TECMP
   type CPT1BCR_TECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TECMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TECMP as an array
            Arr : CPT1BCR_TECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1BCR_TECMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Timerx Capture 2 Control Register
   type CPT1BCR_Register is record
      --  Software Capture
      SWCPT          : CPT1BCR_SWCPT_Field := 16#0#;
      --  Update Capture
      UDPCPT         : CPT1BCR_UDPCPT_Field := 16#0#;
      --  External Event 1 Capture
      EXEV1CPT       : CPT1BCR_EXEV1CPT_Field := 16#0#;
      --  External Event 2 Capture
      EXEV2CPT       : CPT1BCR_EXEV2CPT_Field := 16#0#;
      --  External Event 3 Capture
      EXEV3CPT       : CPT1BCR_EXEV3CPT_Field := 16#0#;
      --  External Event 4 Capture
      EXEV4CPT       : CPT1BCR_EXEV4CPT_Field := 16#0#;
      --  External Event 5 Capture
      EXEV5CPT       : CPT1BCR_EXEV5CPT_Field := 16#0#;
      --  External Event 6 Capture
      EXEV6CPT       : CPT1BCR_EXEV6CPT_Field := 16#0#;
      --  External Event 7 Capture
      EXEV7CPT       : CPT1BCR_EXEV7CPT_Field := 16#0#;
      --  External Event 8 Capture
      EXEV8CPT       : CPT1BCR_EXEV8CPT_Field := 16#0#;
      --  External Event 9 Capture
      EXEV9CPT       : CPT1BCR_EXEV9CPT_Field := 16#0#;
      --  External Event 10 Capture
      EXEV10CPT      : CPT1BCR_EXEV10CPT_Field := 16#0#;
      --  Timer A output 1 Set
      TA1SET         : CPT1BCR_TA1SET_Field := 16#0#;
      --  Timer A output 1 Reset
      TA1RST         : CPT1BCR_TA1RST_Field := 16#0#;
      --  Timer A Compare 1
      TACMP          : CPT1BCR_TACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : STM32_SVD.UInt4 := 16#0#;
      --  Timer C output 1 Set
      TC1SET         : CPT1BCR_TC1SET_Field := 16#0#;
      --  Timer C output 1 Reset
      TC1RST         : CPT1BCR_TC1RST_Field := 16#0#;
      --  Timer C Compare 1
      TCCMP          : CPT1BCR_TCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer D output 1 Set
      TD1SET         : CPT1BCR_TD1SET_Field := 16#0#;
      --  Timer D output 1 Reset
      TD1RST         : CPT1BCR_TD1RST_Field := 16#0#;
      --  Timer D Compare 1
      TDCMP          : CPT1BCR_TDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer E output 1 Set
      TE1SET         : CPT1BCR_TE1SET_Field := 16#0#;
      --  Timer E output 1 Reset
      TE1RST         : CPT1BCR_TE1RST_Field := 16#0#;
      --  Timer E Compare 1
      TECMP          : CPT1BCR_TECMP_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT1BCR_Register use record
      SWCPT          at 0 range 0 .. 0;
      UDPCPT         at 0 range 1 .. 1;
      EXEV1CPT       at 0 range 2 .. 2;
      EXEV2CPT       at 0 range 3 .. 3;
      EXEV3CPT       at 0 range 4 .. 4;
      EXEV4CPT       at 0 range 5 .. 5;
      EXEV5CPT       at 0 range 6 .. 6;
      EXEV6CPT       at 0 range 7 .. 7;
      EXEV7CPT       at 0 range 8 .. 8;
      EXEV8CPT       at 0 range 9 .. 9;
      EXEV9CPT       at 0 range 10 .. 10;
      EXEV10CPT      at 0 range 11 .. 11;
      TA1SET         at 0 range 12 .. 12;
      TA1RST         at 0 range 13 .. 13;
      TACMP          at 0 range 14 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      TC1SET         at 0 range 20 .. 20;
      TC1RST         at 0 range 21 .. 21;
      TCCMP          at 0 range 22 .. 23;
      TD1SET         at 0 range 24 .. 24;
      TD1RST         at 0 range 25 .. 25;
      TDCMP          at 0 range 26 .. 27;
      TE1SET         at 0 range 28 .. 28;
      TE1RST         at 0 range 29 .. 29;
      TECMP          at 0 range 30 .. 31;
   end record;

   subtype CPT2BCR_SWCPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_UDPCPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_EXEV1CPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_EXEV2CPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_EXEV3CPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_EXEV4CPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_EXEV5CPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_EXEV6CPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_EXEV7CPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_EXEV8CPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_EXEV9CPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_EXEV10CPT_Field is STM32_SVD.Bit;
   subtype CPT2BCR_TA1SET_Field is STM32_SVD.Bit;
   subtype CPT2BCR_TA1RST_Field is STM32_SVD.Bit;
   --  CPT2BCR_TACMP array element
   subtype CPT2BCR_TACMP_Element is STM32_SVD.Bit;

   --  CPT2BCR_TACMP array
   type CPT2BCR_TACMP_Field_Array is array (1 .. 2) of CPT2BCR_TACMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2BCR_TACMP
   type CPT2BCR_TACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TACMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TACMP as an array
            Arr : CPT2BCR_TACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2BCR_TACMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2BCR_TC1SET_Field is STM32_SVD.Bit;
   subtype CPT2BCR_TC1RST_Field is STM32_SVD.Bit;
   --  CPT2BCR_TCCMP array element
   subtype CPT2BCR_TCCMP_Element is STM32_SVD.Bit;

   --  CPT2BCR_TCCMP array
   type CPT2BCR_TCCMP_Field_Array is array (1 .. 2) of CPT2BCR_TCCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2BCR_TCCMP
   type CPT2BCR_TCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TCCMP as an array
            Arr : CPT2BCR_TCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2BCR_TCCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2BCR_TD1SET_Field is STM32_SVD.Bit;
   subtype CPT2BCR_TD1RST_Field is STM32_SVD.Bit;
   --  CPT2BCR_TDCMP array element
   subtype CPT2BCR_TDCMP_Element is STM32_SVD.Bit;

   --  CPT2BCR_TDCMP array
   type CPT2BCR_TDCMP_Field_Array is array (1 .. 2) of CPT2BCR_TDCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2BCR_TDCMP
   type CPT2BCR_TDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TDCMP as an array
            Arr : CPT2BCR_TDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2BCR_TDCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2BCR_TE1SET_Field is STM32_SVD.Bit;
   subtype CPT2BCR_TE1RST_Field is STM32_SVD.Bit;
   --  CPT2BCR_TECMP array element
   subtype CPT2BCR_TECMP_Element is STM32_SVD.Bit;

   --  CPT2BCR_TECMP array
   type CPT2BCR_TECMP_Field_Array is array (1 .. 2) of CPT2BCR_TECMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2BCR_TECMP
   type CPT2BCR_TECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TECMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TECMP as an array
            Arr : CPT2BCR_TECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2BCR_TECMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CPT2xCR
   type CPT2BCR_Register is record
      --  Software Capture
      SWCPT          : CPT2BCR_SWCPT_Field := 16#0#;
      --  Update Capture
      UDPCPT         : CPT2BCR_UDPCPT_Field := 16#0#;
      --  External Event 1 Capture
      EXEV1CPT       : CPT2BCR_EXEV1CPT_Field := 16#0#;
      --  External Event 2 Capture
      EXEV2CPT       : CPT2BCR_EXEV2CPT_Field := 16#0#;
      --  External Event 3 Capture
      EXEV3CPT       : CPT2BCR_EXEV3CPT_Field := 16#0#;
      --  External Event 4 Capture
      EXEV4CPT       : CPT2BCR_EXEV4CPT_Field := 16#0#;
      --  External Event 5 Capture
      EXEV5CPT       : CPT2BCR_EXEV5CPT_Field := 16#0#;
      --  External Event 6 Capture
      EXEV6CPT       : CPT2BCR_EXEV6CPT_Field := 16#0#;
      --  External Event 7 Capture
      EXEV7CPT       : CPT2BCR_EXEV7CPT_Field := 16#0#;
      --  External Event 8 Capture
      EXEV8CPT       : CPT2BCR_EXEV8CPT_Field := 16#0#;
      --  External Event 9 Capture
      EXEV9CPT       : CPT2BCR_EXEV9CPT_Field := 16#0#;
      --  External Event 10 Capture
      EXEV10CPT      : CPT2BCR_EXEV10CPT_Field := 16#0#;
      --  Timer A output 1 Set
      TA1SET         : CPT2BCR_TA1SET_Field := 16#0#;
      --  Timer A output 1 Reset
      TA1RST         : CPT2BCR_TA1RST_Field := 16#0#;
      --  Timer A Compare 1
      TACMP          : CPT2BCR_TACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : STM32_SVD.UInt4 := 16#0#;
      --  Timer C output 1 Set
      TC1SET         : CPT2BCR_TC1SET_Field := 16#0#;
      --  Timer C output 1 Reset
      TC1RST         : CPT2BCR_TC1RST_Field := 16#0#;
      --  Timer C Compare 1
      TCCMP          : CPT2BCR_TCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer D output 1 Set
      TD1SET         : CPT2BCR_TD1SET_Field := 16#0#;
      --  Timer D output 1 Reset
      TD1RST         : CPT2BCR_TD1RST_Field := 16#0#;
      --  Timer D Compare 1
      TDCMP          : CPT2BCR_TDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer E output 1 Set
      TE1SET         : CPT2BCR_TE1SET_Field := 16#0#;
      --  Timer E output 1 Reset
      TE1RST         : CPT2BCR_TE1RST_Field := 16#0#;
      --  Timer E Compare 1
      TECMP          : CPT2BCR_TECMP_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT2BCR_Register use record
      SWCPT          at 0 range 0 .. 0;
      UDPCPT         at 0 range 1 .. 1;
      EXEV1CPT       at 0 range 2 .. 2;
      EXEV2CPT       at 0 range 3 .. 3;
      EXEV3CPT       at 0 range 4 .. 4;
      EXEV4CPT       at 0 range 5 .. 5;
      EXEV5CPT       at 0 range 6 .. 6;
      EXEV6CPT       at 0 range 7 .. 7;
      EXEV7CPT       at 0 range 8 .. 8;
      EXEV8CPT       at 0 range 9 .. 9;
      EXEV9CPT       at 0 range 10 .. 10;
      EXEV10CPT      at 0 range 11 .. 11;
      TA1SET         at 0 range 12 .. 12;
      TA1RST         at 0 range 13 .. 13;
      TACMP          at 0 range 14 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      TC1SET         at 0 range 20 .. 20;
      TC1RST         at 0 range 21 .. 21;
      TCCMP          at 0 range 22 .. 23;
      TD1SET         at 0 range 24 .. 24;
      TD1RST         at 0 range 25 .. 25;
      TDCMP          at 0 range 26 .. 27;
      TE1SET         at 0 range 28 .. 28;
      TE1RST         at 0 range 29 .. 29;
      TECMP          at 0 range 30 .. 31;
   end record;

   subtype OUTBR_POL1_Field is STM32_SVD.Bit;
   subtype OUTBR_IDLEM1_Field is STM32_SVD.Bit;
   subtype OUTBR_IDLES1_Field is STM32_SVD.Bit;
   subtype OUTBR_FAULT1_Field is STM32_SVD.UInt2;
   subtype OUTBR_CHP1_Field is STM32_SVD.Bit;
   subtype OUTBR_DIDL1_Field is STM32_SVD.Bit;
   subtype OUTBR_DTEN_Field is STM32_SVD.Bit;
   subtype OUTBR_DLYPRTEN_Field is STM32_SVD.Bit;
   subtype OUTBR_DLYPRT_Field is STM32_SVD.UInt3;
   subtype OUTBR_POL2_Field is STM32_SVD.Bit;
   subtype OUTBR_IDLEM2_Field is STM32_SVD.Bit;
   subtype OUTBR_IDLES2_Field is STM32_SVD.Bit;
   subtype OUTBR_FAULT2_Field is STM32_SVD.UInt2;
   subtype OUTBR_CHP2_Field is STM32_SVD.Bit;
   subtype OUTBR_DIDL2_Field is STM32_SVD.Bit;

   --  Timerx Output Register
   type OUTBR_Register is record
      --  unspecified
      Reserved_0_0   : STM32_SVD.Bit := 16#0#;
      --  Output 1 polarity
      POL1           : OUTBR_POL1_Field := 16#0#;
      --  Output 1 Idle mode
      IDLEM1         : OUTBR_IDLEM1_Field := 16#0#;
      --  Output 1 Idle State
      IDLES1         : OUTBR_IDLES1_Field := 16#0#;
      --  Output 1 Fault state
      FAULT1         : OUTBR_FAULT1_Field := 16#0#;
      --  Output 1 Chopper enable
      CHP1           : OUTBR_CHP1_Field := 16#0#;
      --  Output 1 Deadtime upon burst mode Idle entry
      DIDL1          : OUTBR_DIDL1_Field := 16#0#;
      --  Deadtime enable
      DTEN           : OUTBR_DTEN_Field := 16#0#;
      --  Delayed Protection Enable
      DLYPRTEN       : OUTBR_DLYPRTEN_Field := 16#0#;
      --  Delayed Protection
      DLYPRT         : OUTBR_DLYPRT_Field := 16#0#;
      --  unspecified
      Reserved_13_16 : STM32_SVD.UInt4 := 16#0#;
      --  Output 2 polarity
      POL2           : OUTBR_POL2_Field := 16#0#;
      --  Output 2 Idle mode
      IDLEM2         : OUTBR_IDLEM2_Field := 16#0#;
      --  Output 2 Idle State
      IDLES2         : OUTBR_IDLES2_Field := 16#0#;
      --  Output 2 Fault state
      FAULT2         : OUTBR_FAULT2_Field := 16#0#;
      --  Output 2 Chopper enable
      CHP2           : OUTBR_CHP2_Field := 16#0#;
      --  Output 2 Deadtime upon burst mode Idle entry
      DIDL2          : OUTBR_DIDL2_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTBR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      POL1           at 0 range 1 .. 1;
      IDLEM1         at 0 range 2 .. 2;
      IDLES1         at 0 range 3 .. 3;
      FAULT1         at 0 range 4 .. 5;
      CHP1           at 0 range 6 .. 6;
      DIDL1          at 0 range 7 .. 7;
      DTEN           at 0 range 8 .. 8;
      DLYPRTEN       at 0 range 9 .. 9;
      DLYPRT         at 0 range 10 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      POL2           at 0 range 17 .. 17;
      IDLEM2         at 0 range 18 .. 18;
      IDLES2         at 0 range 19 .. 19;
      FAULT2         at 0 range 20 .. 21;
      CHP2           at 0 range 22 .. 22;
      DIDL2          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLTBR_FLT1EN_Field is STM32_SVD.Bit;
   subtype FLTBR_FLT2EN_Field is STM32_SVD.Bit;
   subtype FLTBR_FLT3EN_Field is STM32_SVD.Bit;
   subtype FLTBR_FLT4EN_Field is STM32_SVD.Bit;
   subtype FLTBR_FLT5EN_Field is STM32_SVD.Bit;
   subtype FLTBR_FLTLCK_Field is STM32_SVD.Bit;

   --  Timerx Fault Register
   type FLTBR_Register is record
      --  Fault 1 enable
      FLT1EN        : FLTBR_FLT1EN_Field := 16#0#;
      --  Fault 2 enable
      FLT2EN        : FLTBR_FLT2EN_Field := 16#0#;
      --  Fault 3 enable
      FLT3EN        : FLTBR_FLT3EN_Field := 16#0#;
      --  Fault 4 enable
      FLT4EN        : FLTBR_FLT4EN_Field := 16#0#;
      --  Fault 5 enable
      FLT5EN        : FLTBR_FLT5EN_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : STM32_SVD.UInt26 := 16#0#;
      --  Fault sources Lock
      FLTLCK        : FLTBR_FLTLCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLTBR_Register use record
      FLT1EN        at 0 range 0 .. 0;
      FLT2EN        at 0 range 1 .. 1;
      FLT3EN        at 0 range 2 .. 2;
      FLT4EN        at 0 range 3 .. 3;
      FLT5EN        at 0 range 4 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      FLTLCK        at 0 range 31 .. 31;
   end record;

   subtype TIMCCR_CK_PSCx_Field is STM32_SVD.UInt3;
   subtype TIMCCR_CONT_Field is STM32_SVD.Bit;
   subtype TIMCCR_RETRIG_Field is STM32_SVD.Bit;
   subtype TIMCCR_HALF_Field is STM32_SVD.Bit;
   subtype TIMCCR_PSHPLL_Field is STM32_SVD.Bit;
   subtype TIMCCR_SYNCRSTx_Field is STM32_SVD.Bit;
   subtype TIMCCR_SYNCSTRTx_Field is STM32_SVD.Bit;
   --  TIMCCR_DELCMP array element
   subtype TIMCCR_DELCMP_Element is STM32_SVD.UInt2;

   --  TIMCCR_DELCMP array
   type TIMCCR_DELCMP_Field_Array is array (2 .. 3) of TIMCCR_DELCMP_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for TIMCCR_DELCMP
   type TIMCCR_DELCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  DELCMP as an array
            Arr : TIMCCR_DELCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMCCR_DELCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TIMCCR_TxREPU_Field is STM32_SVD.Bit;
   subtype TIMCCR_TxRSTU_Field is STM32_SVD.Bit;
   subtype TIMCCR_TBU_Field is STM32_SVD.Bit;
   subtype TIMCCR_TCU_Field is STM32_SVD.Bit;
   subtype TIMCCR_TDU_Field is STM32_SVD.Bit;
   subtype TIMCCR_TEU_Field is STM32_SVD.Bit;
   subtype TIMCCR_MSTU_Field is STM32_SVD.Bit;
   subtype TIMCCR_DACSYNC_Field is STM32_SVD.UInt2;
   subtype TIMCCR_PREEN_Field is STM32_SVD.Bit;
   subtype TIMCCR_UPDGAT_Field is STM32_SVD.UInt4;

   --  Timerx Control Register
   type TIMCCR_Register is record
      --  HRTIM Timer x Clock prescaler
      CK_PSCx        : TIMCCR_CK_PSCx_Field := 16#0#;
      --  Continuous mode
      CONT           : TIMCCR_CONT_Field := 16#0#;
      --  Re-triggerable mode
      RETRIG         : TIMCCR_RETRIG_Field := 16#0#;
      --  Half mode enable
      HALF           : TIMCCR_HALF_Field := 16#0#;
      --  Push-Pull mode enable
      PSHPLL         : TIMCCR_PSHPLL_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : STM32_SVD.UInt3 := 16#0#;
      --  Synchronization Resets Timer x
      SYNCRSTx       : TIMCCR_SYNCRSTx_Field := 16#0#;
      --  Synchronization Starts Timer x
      SYNCSTRTx      : TIMCCR_SYNCSTRTx_Field := 16#0#;
      --  Delayed CMP2 mode
      DELCMP         : TIMCCR_DELCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : STM32_SVD.Bit := 16#0#;
      --  Timer x Repetition update
      TxREPU         : TIMCCR_TxREPU_Field := 16#0#;
      --  Timerx reset update
      TxRSTU         : TIMCCR_TxRSTU_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : STM32_SVD.Bit := 16#0#;
      --  TBU
      TBU            : TIMCCR_TBU_Field := 16#0#;
      --  TCU
      TCU            : TIMCCR_TCU_Field := 16#0#;
      --  TDU
      TDU            : TIMCCR_TDU_Field := 16#0#;
      --  TEU
      TEU            : TIMCCR_TEU_Field := 16#0#;
      --  Master Timer update
      MSTU           : TIMCCR_MSTU_Field := 16#0#;
      --  AC Synchronization
      DACSYNC        : TIMCCR_DACSYNC_Field := 16#0#;
      --  Preload enable
      PREEN          : TIMCCR_PREEN_Field := 16#0#;
      --  Update Gating
      UPDGAT         : TIMCCR_UPDGAT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMCCR_Register use record
      CK_PSCx        at 0 range 0 .. 2;
      CONT           at 0 range 3 .. 3;
      RETRIG         at 0 range 4 .. 4;
      HALF           at 0 range 5 .. 5;
      PSHPLL         at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      SYNCRSTx       at 0 range 10 .. 10;
      SYNCSTRTx      at 0 range 11 .. 11;
      DELCMP         at 0 range 12 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      TxREPU         at 0 range 17 .. 17;
      TxRSTU         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TBU            at 0 range 20 .. 20;
      TCU            at 0 range 21 .. 21;
      TDU            at 0 range 22 .. 22;
      TEU            at 0 range 23 .. 23;
      MSTU           at 0 range 24 .. 24;
      DACSYNC        at 0 range 25 .. 26;
      PREEN          at 0 range 27 .. 27;
      UPDGAT         at 0 range 28 .. 31;
   end record;

   --  TIMCISR_CMP array element
   subtype TIMCISR_CMP_Element is STM32_SVD.Bit;

   --  TIMCISR_CMP array
   type TIMCISR_CMP_Field_Array is array (1 .. 4) of TIMCISR_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMCISR_CMP
   type TIMCISR_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : TIMCISR_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMCISR_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TIMCISR_REP_Field is STM32_SVD.Bit;
   subtype TIMCISR_UPD_Field is STM32_SVD.Bit;
   --  TIMCISR_CPT array element
   subtype TIMCISR_CPT_Element is STM32_SVD.Bit;

   --  TIMCISR_CPT array
   type TIMCISR_CPT_Field_Array is array (1 .. 2) of TIMCISR_CPT_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMCISR_CPT
   type TIMCISR_CPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPT as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  CPT as an array
            Arr : TIMCISR_CPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMCISR_CPT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype TIMCISR_SETx1_Field is STM32_SVD.Bit;
   subtype TIMCISR_RSTx1_Field is STM32_SVD.Bit;
   subtype TIMCISR_SETx2_Field is STM32_SVD.Bit;
   subtype TIMCISR_RSTx2_Field is STM32_SVD.Bit;
   subtype TIMCISR_RST_Field is STM32_SVD.Bit;
   subtype TIMCISR_DLYPRT_Field is STM32_SVD.Bit;
   subtype TIMCISR_CPPSTAT_Field is STM32_SVD.Bit;
   subtype TIMCISR_IPPSTAT_Field is STM32_SVD.Bit;
   subtype TIMCISR_O1STAT_Field is STM32_SVD.Bit;
   subtype TIMCISR_O2STAT_Field is STM32_SVD.Bit;

   --  Timerx Interrupt Status Register
   type TIMCISR_Register is record
      --  Read-only. Compare 1 Interrupt Flag
      CMP            : TIMCISR_CMP_Field;
      --  Read-only. Repetition Interrupt Flag
      REP            : TIMCISR_REP_Field;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit;
      --  Read-only. Update Interrupt Flag
      UPD            : TIMCISR_UPD_Field;
      --  Read-only. Capture1 Interrupt Flag
      CPT            : TIMCISR_CPT_Field;
      --  Read-only. Output 1 Set Interrupt Flag
      SETx1          : TIMCISR_SETx1_Field;
      --  Read-only. Output 1 Reset Interrupt Flag
      RSTx1          : TIMCISR_RSTx1_Field;
      --  Read-only. Output 2 Set Interrupt Flag
      SETx2          : TIMCISR_SETx2_Field;
      --  Read-only. Output 2 Reset Interrupt Flag
      RSTx2          : TIMCISR_RSTx2_Field;
      --  Read-only. Reset Interrupt Flag
      RST            : TIMCISR_RST_Field;
      --  Read-only. Delayed Protection Flag
      DLYPRT         : TIMCISR_DLYPRT_Field;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit;
      --  Read-only. Current Push Pull Status
      CPPSTAT        : TIMCISR_CPPSTAT_Field;
      --  Read-only. Idle Push Pull Status
      IPPSTAT        : TIMCISR_IPPSTAT_Field;
      --  Read-only. Output 1 State
      O1STAT         : TIMCISR_O1STAT_Field;
      --  Read-only. Output 2 State
      O2STAT         : TIMCISR_O2STAT_Field;
      --  unspecified
      Reserved_20_31 : STM32_SVD.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMCISR_Register use record
      CMP            at 0 range 0 .. 3;
      REP            at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPD            at 0 range 6 .. 6;
      CPT            at 0 range 7 .. 8;
      SETx1          at 0 range 9 .. 9;
      RSTx1          at 0 range 10 .. 10;
      SETx2          at 0 range 11 .. 11;
      RSTx2          at 0 range 12 .. 12;
      RST            at 0 range 13 .. 13;
      DLYPRT         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CPPSTAT        at 0 range 16 .. 16;
      IPPSTAT        at 0 range 17 .. 17;
      O1STAT         at 0 range 18 .. 18;
      O2STAT         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIMCICR_CMP1C_Field is STM32_SVD.Bit;
   subtype TIMCICR_CMP2C_Field is STM32_SVD.Bit;
   subtype TIMCICR_CMP3C_Field is STM32_SVD.Bit;
   subtype TIMCICR_CMP4C_Field is STM32_SVD.Bit;
   subtype TIMCICR_REPC_Field is STM32_SVD.Bit;
   subtype TIMCICR_UPDC_Field is STM32_SVD.Bit;
   subtype TIMCICR_CPT1C_Field is STM32_SVD.Bit;
   subtype TIMCICR_CPT2C_Field is STM32_SVD.Bit;
   subtype TIMCICR_SET1xC_Field is STM32_SVD.Bit;
   subtype TIMCICR_RSTx1C_Field is STM32_SVD.Bit;
   subtype TIMCICR_SET2xC_Field is STM32_SVD.Bit;
   subtype TIMCICR_RSTx2C_Field is STM32_SVD.Bit;
   subtype TIMCICR_RSTC_Field is STM32_SVD.Bit;
   subtype TIMCICR_DLYPRTC_Field is STM32_SVD.Bit;

   --  Timerx Interrupt Clear Register
   type TIMCICR_Register is record
      --  Write-only. Compare 1 Interrupt flag Clear
      CMP1C          : TIMCICR_CMP1C_Field := 16#0#;
      --  Write-only. Compare 2 Interrupt flag Clear
      CMP2C          : TIMCICR_CMP2C_Field := 16#0#;
      --  Write-only. Compare 3 Interrupt flag Clear
      CMP3C          : TIMCICR_CMP3C_Field := 16#0#;
      --  Write-only. Compare 4 Interrupt flag Clear
      CMP4C          : TIMCICR_CMP4C_Field := 16#0#;
      --  Write-only. Repetition Interrupt flag Clear
      REPC           : TIMCICR_REPC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  Write-only. Update Interrupt flag Clear
      UPDC           : TIMCICR_UPDC_Field := 16#0#;
      --  Write-only. Capture1 Interrupt flag Clear
      CPT1C          : TIMCICR_CPT1C_Field := 16#0#;
      --  Write-only. Capture2 Interrupt flag Clear
      CPT2C          : TIMCICR_CPT2C_Field := 16#0#;
      --  Write-only. Output 1 Set flag Clear
      SET1xC         : TIMCICR_SET1xC_Field := 16#0#;
      --  Write-only. Output 1 Reset flag Clear
      RSTx1C         : TIMCICR_RSTx1C_Field := 16#0#;
      --  Write-only. Output 2 Set flag Clear
      SET2xC         : TIMCICR_SET2xC_Field := 16#0#;
      --  Write-only. Output 2 Reset flag Clear
      RSTx2C         : TIMCICR_RSTx2C_Field := 16#0#;
      --  Write-only. Reset Interrupt flag Clear
      RSTC           : TIMCICR_RSTC_Field := 16#0#;
      --  Write-only. Delayed Protection Flag Clear
      DLYPRTC        : TIMCICR_DLYPRTC_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMCICR_Register use record
      CMP1C          at 0 range 0 .. 0;
      CMP2C          at 0 range 1 .. 1;
      CMP3C          at 0 range 2 .. 2;
      CMP4C          at 0 range 3 .. 3;
      REPC           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPDC           at 0 range 6 .. 6;
      CPT1C          at 0 range 7 .. 7;
      CPT2C          at 0 range 8 .. 8;
      SET1xC         at 0 range 9 .. 9;
      RSTx1C         at 0 range 10 .. 10;
      SET2xC         at 0 range 11 .. 11;
      RSTx2C         at 0 range 12 .. 12;
      RSTC           at 0 range 13 .. 13;
      DLYPRTC        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype TIMCDIER5_CMP1IE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CMP2IE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CMP3IE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CMP4IE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_REPIE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_UPDIE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CPT1IE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CPT2IE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_SET1xIE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_RSTx1IE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_SETx2IE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_RSTx2IE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_RSTIE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_DLYPRTIE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CMP1DE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CMP2DE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CMP3DE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CMP4DE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_REPDE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_UPDDE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CPT1DE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_CPT2DE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_SET1xDE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_RSTx1DE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_SETx2DE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_RSTx2DE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_RSTDE_Field is STM32_SVD.Bit;
   subtype TIMCDIER5_DLYPRTDE_Field is STM32_SVD.Bit;

   --  TIMxDIER5
   type TIMCDIER5_Register is record
      --  CMP1IE
      CMP1IE         : TIMCDIER5_CMP1IE_Field := 16#0#;
      --  CMP2IE
      CMP2IE         : TIMCDIER5_CMP2IE_Field := 16#0#;
      --  CMP3IE
      CMP3IE         : TIMCDIER5_CMP3IE_Field := 16#0#;
      --  CMP4IE
      CMP4IE         : TIMCDIER5_CMP4IE_Field := 16#0#;
      --  REPIE
      REPIE          : TIMCDIER5_REPIE_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  UPDIE
      UPDIE          : TIMCDIER5_UPDIE_Field := 16#0#;
      --  CPT1IE
      CPT1IE         : TIMCDIER5_CPT1IE_Field := 16#0#;
      --  CPT2IE
      CPT2IE         : TIMCDIER5_CPT2IE_Field := 16#0#;
      --  SET1xIE
      SET1xIE        : TIMCDIER5_SET1xIE_Field := 16#0#;
      --  RSTx1IE
      RSTx1IE        : TIMCDIER5_RSTx1IE_Field := 16#0#;
      --  SETx2IE
      SETx2IE        : TIMCDIER5_SETx2IE_Field := 16#0#;
      --  RSTx2IE
      RSTx2IE        : TIMCDIER5_RSTx2IE_Field := 16#0#;
      --  RSTIE
      RSTIE          : TIMCDIER5_RSTIE_Field := 16#0#;
      --  DLYPRTIE
      DLYPRTIE       : TIMCDIER5_DLYPRTIE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  CMP1DE
      CMP1DE         : TIMCDIER5_CMP1DE_Field := 16#0#;
      --  CMP2DE
      CMP2DE         : TIMCDIER5_CMP2DE_Field := 16#0#;
      --  CMP3DE
      CMP3DE         : TIMCDIER5_CMP3DE_Field := 16#0#;
      --  CMP4DE
      CMP4DE         : TIMCDIER5_CMP4DE_Field := 16#0#;
      --  REPDE
      REPDE          : TIMCDIER5_REPDE_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  UPDDE
      UPDDE          : TIMCDIER5_UPDDE_Field := 16#0#;
      --  CPT1DE
      CPT1DE         : TIMCDIER5_CPT1DE_Field := 16#0#;
      --  CPT2DE
      CPT2DE         : TIMCDIER5_CPT2DE_Field := 16#0#;
      --  SET1xDE
      SET1xDE        : TIMCDIER5_SET1xDE_Field := 16#0#;
      --  RSTx1DE
      RSTx1DE        : TIMCDIER5_RSTx1DE_Field := 16#0#;
      --  SETx2DE
      SETx2DE        : TIMCDIER5_SETx2DE_Field := 16#0#;
      --  RSTx2DE
      RSTx2DE        : TIMCDIER5_RSTx2DE_Field := 16#0#;
      --  RSTDE
      RSTDE          : TIMCDIER5_RSTDE_Field := 16#0#;
      --  DLYPRTDE
      DLYPRTDE       : TIMCDIER5_DLYPRTDE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMCDIER5_Register use record
      CMP1IE         at 0 range 0 .. 0;
      CMP2IE         at 0 range 1 .. 1;
      CMP3IE         at 0 range 2 .. 2;
      CMP4IE         at 0 range 3 .. 3;
      REPIE          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPDIE          at 0 range 6 .. 6;
      CPT1IE         at 0 range 7 .. 7;
      CPT2IE         at 0 range 8 .. 8;
      SET1xIE        at 0 range 9 .. 9;
      RSTx1IE        at 0 range 10 .. 10;
      SETx2IE        at 0 range 11 .. 11;
      RSTx2IE        at 0 range 12 .. 12;
      RSTIE          at 0 range 13 .. 13;
      DLYPRTIE       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CMP1DE         at 0 range 16 .. 16;
      CMP2DE         at 0 range 17 .. 17;
      CMP3DE         at 0 range 18 .. 18;
      CMP4DE         at 0 range 19 .. 19;
      REPDE          at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      UPDDE          at 0 range 22 .. 22;
      CPT1DE         at 0 range 23 .. 23;
      CPT2DE         at 0 range 24 .. 24;
      SET1xDE        at 0 range 25 .. 25;
      RSTx1DE        at 0 range 26 .. 26;
      SETx2DE        at 0 range 27 .. 27;
      RSTx2DE        at 0 range 28 .. 28;
      RSTDE          at 0 range 29 .. 29;
      DLYPRTDE       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CNTCR_CNTx_Field is STM32_SVD.UInt16;

   --  Timerx Counter Register
   type CNTCR_Register is record
      --  Timerx Counter value
      CNTx           : CNTCR_CNTx_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNTCR_Register use record
      CNTx           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PERCR_PERx_Field is STM32_SVD.UInt16;

   --  Timerx Period Register
   type PERCR_Register is record
      --  Timerx Period value
      PERx           : PERCR_PERx_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERCR_Register use record
      PERx           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype REPCR_REPx_Field is STM32_SVD.Byte;

   --  Timerx Repetition Register
   type REPCR_Register is record
      --  Timerx Repetition counter value
      REPx          : REPCR_REPx_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REPCR_Register use record
      REPx          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CMP1CR_CMP1x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 1 Register
   type CMP1CR_Register is record
      --  Timerx Compare 1 value
      CMP1x          : CMP1CR_CMP1x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1CR_Register use record
      CMP1x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP1CCR_CMP1x_Field is STM32_SVD.UInt16;
   subtype CMP1CCR_REPx_Field is STM32_SVD.Byte;

   --  Timerx Compare 1 Compound Register
   type CMP1CCR_Register is record
      --  Timerx Compare 1 value
      CMP1x          : CMP1CCR_CMP1x_Field := 16#0#;
      --  Timerx Repetition value (aliased from HRTIM_REPx register)
      REPx           : CMP1CCR_REPx_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1CCR_Register use record
      CMP1x          at 0 range 0 .. 15;
      REPx           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CMP2CR_CMP2x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 2 Register
   type CMP2CR_Register is record
      --  Timerx Compare 2 value
      CMP2x          : CMP2CR_CMP2x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP2CR_Register use record
      CMP2x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP3CR_CMP3x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 3 Register
   type CMP3CR_Register is record
      --  Timerx Compare 3 value
      CMP3x          : CMP3CR_CMP3x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP3CR_Register use record
      CMP3x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP4CR_CMP4x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 4 Register
   type CMP4CR_Register is record
      --  Timerx Compare 4 value
      CMP4x          : CMP4CR_CMP4x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP4CR_Register use record
      CMP4x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CPT1CR_CPT1x_Field is STM32_SVD.UInt16;

   --  Timerx Capture 1 Register
   type CPT1CR_Register is record
      --  Read-only. Timerx Capture 1 value
      CPT1x          : CPT1CR_CPT1x_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT1CR_Register use record
      CPT1x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CPT2CR_CPT2x_Field is STM32_SVD.UInt16;

   --  Timerx Capture 2 Register
   type CPT2CR_Register is record
      --  Read-only. Timerx Capture 2 value
      CPT2x          : CPT2CR_CPT2x_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT2CR_Register use record
      CPT2x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DTCR_DTRx_Field is STM32_SVD.UInt9;
   subtype DTCR_SDTRx_Field is STM32_SVD.Bit;
   subtype DTCR_DTPRSC_Field is STM32_SVD.UInt3;
   subtype DTCR_DTRSLKx_Field is STM32_SVD.Bit;
   subtype DTCR_DTRLKx_Field is STM32_SVD.Bit;
   subtype DTCR_DTFx_Field is STM32_SVD.UInt9;
   subtype DTCR_SDTFx_Field is STM32_SVD.Bit;
   subtype DTCR_DTFSLKx_Field is STM32_SVD.Bit;
   subtype DTCR_DTFLKx_Field is STM32_SVD.Bit;

   --  Timerx Deadtime Register
   type DTCR_Register is record
      --  Deadtime Rising value
      DTRx           : DTCR_DTRx_Field := 16#0#;
      --  Sign Deadtime Rising value
      SDTRx          : DTCR_SDTRx_Field := 16#0#;
      --  Deadtime Prescaler
      DTPRSC         : DTCR_DTPRSC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32_SVD.Bit := 16#0#;
      --  Deadtime Rising Sign Lock
      DTRSLKx        : DTCR_DTRSLKx_Field := 16#0#;
      --  Deadtime Rising Lock
      DTRLKx         : DTCR_DTRLKx_Field := 16#0#;
      --  Deadtime Falling value
      DTFx           : DTCR_DTFx_Field := 16#0#;
      --  Sign Deadtime Falling value
      SDTFx          : DTCR_SDTFx_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : STM32_SVD.UInt4 := 16#0#;
      --  Deadtime Falling Sign Lock
      DTFSLKx        : DTCR_DTFSLKx_Field := 16#0#;
      --  Deadtime Falling Lock
      DTFLKx         : DTCR_DTFLKx_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTCR_Register use record
      DTRx           at 0 range 0 .. 8;
      SDTRx          at 0 range 9 .. 9;
      DTPRSC         at 0 range 10 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      DTRSLKx        at 0 range 14 .. 14;
      DTRLKx         at 0 range 15 .. 15;
      DTFx           at 0 range 16 .. 24;
      SDTFx          at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      DTFSLKx        at 0 range 30 .. 30;
      DTFLKx         at 0 range 31 .. 31;
   end record;

   subtype SETC1R_SST_Field is STM32_SVD.Bit;
   subtype SETC1R_RESYNC_Field is STM32_SVD.Bit;
   subtype SETC1R_PER_Field is STM32_SVD.Bit;
   --  SETC1R_CMP array element
   subtype SETC1R_CMP_Element is STM32_SVD.Bit;

   --  SETC1R_CMP array
   type SETC1R_CMP_Field_Array is array (1 .. 4) of SETC1R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETC1R_CMP
   type SETC1R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : SETC1R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETC1R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SETC1R_MSTPER_Field is STM32_SVD.Bit;
   --  SETC1R_MSTCMP array element
   subtype SETC1R_MSTCMP_Element is STM32_SVD.Bit;

   --  SETC1R_MSTCMP array
   type SETC1R_MSTCMP_Field_Array is array (1 .. 4) of SETC1R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETC1R_MSTCMP
   type SETC1R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : SETC1R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETC1R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SETC1R_TIMEVNT array element
   subtype SETC1R_TIMEVNT_Element is STM32_SVD.Bit;

   --  SETC1R_TIMEVNT array
   type SETC1R_TIMEVNT_Field_Array is array (1 .. 9)
     of SETC1R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for SETC1R_TIMEVNT
   type SETC1R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : SETC1R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for SETC1R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  SETC1R_EXTEVNT array element
   subtype SETC1R_EXTEVNT_Element is STM32_SVD.Bit;

   --  SETC1R_EXTEVNT array
   type SETC1R_EXTEVNT_Field_Array is array (1 .. 10)
     of SETC1R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for SETC1R_EXTEVNT
   type SETC1R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : SETC1R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SETC1R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype SETC1R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output1 Set Register
   type SETC1R_Register is record
      --  Software Set trigger
      SST     : SETC1R_SST_Field := 16#0#;
      --  Timer A resynchronizaton
      RESYNC  : SETC1R_RESYNC_Field := 16#0#;
      --  Timer A Period
      PER     : SETC1R_PER_Field := 16#0#;
      --  Timer A compare 1
      CMP     : SETC1R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  Master Period
      MSTPER  : SETC1R_MSTPER_Field := 16#0#;
      --  Master Compare 1
      MSTCMP  : SETC1R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  Timer Event 1
      TIMEVNT : SETC1R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  External Event 1
      EXTEVNT : SETC1R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  Registers update (transfer preload to active)
      UPDATE  : SETC1R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETC1R_Register use record
      SST     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype RSTC1R_SRT_Field is STM32_SVD.Bit;
   subtype RSTC1R_RESYNC_Field is STM32_SVD.Bit;
   subtype RSTC1R_PER_Field is STM32_SVD.Bit;
   --  RSTC1R_CMP array element
   subtype RSTC1R_CMP_Element is STM32_SVD.Bit;

   --  RSTC1R_CMP array
   type RSTC1R_CMP_Field_Array is array (1 .. 4) of RSTC1R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTC1R_CMP
   type RSTC1R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : RSTC1R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTC1R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RSTC1R_MSTPER_Field is STM32_SVD.Bit;
   --  RSTC1R_MSTCMP array element
   subtype RSTC1R_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTC1R_MSTCMP array
   type RSTC1R_MSTCMP_Field_Array is array (1 .. 4) of RSTC1R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTC1R_MSTCMP
   type RSTC1R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTC1R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTC1R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTC1R_TIMEVNT array element
   subtype RSTC1R_TIMEVNT_Element is STM32_SVD.Bit;

   --  RSTC1R_TIMEVNT array
   type RSTC1R_TIMEVNT_Field_Array is array (1 .. 9)
     of RSTC1R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for RSTC1R_TIMEVNT
   type RSTC1R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : RSTC1R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RSTC1R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RSTC1R_EXTEVNT array element
   subtype RSTC1R_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTC1R_EXTEVNT array
   type RSTC1R_EXTEVNT_Field_Array is array (1 .. 10)
     of RSTC1R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTC1R_EXTEVNT
   type RSTC1R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTC1R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTC1R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype RSTC1R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output1 Reset Register
   type RSTC1R_Register is record
      --  SRT
      SRT     : RSTC1R_SRT_Field := 16#0#;
      --  RESYNC
      RESYNC  : RSTC1R_RESYNC_Field := 16#0#;
      --  PER
      PER     : RSTC1R_PER_Field := 16#0#;
      --  CMP1
      CMP     : RSTC1R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : RSTC1R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : RSTC1R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : RSTC1R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : RSTC1R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : RSTC1R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC1R_Register use record
      SRT     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype SETC2R_SST_Field is STM32_SVD.Bit;
   subtype SETC2R_RESYNC_Field is STM32_SVD.Bit;
   subtype SETC2R_PER_Field is STM32_SVD.Bit;
   --  SETC2R_CMP array element
   subtype SETC2R_CMP_Element is STM32_SVD.Bit;

   --  SETC2R_CMP array
   type SETC2R_CMP_Field_Array is array (1 .. 4) of SETC2R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETC2R_CMP
   type SETC2R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : SETC2R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETC2R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SETC2R_MSTPER_Field is STM32_SVD.Bit;
   --  SETC2R_MSTCMP array element
   subtype SETC2R_MSTCMP_Element is STM32_SVD.Bit;

   --  SETC2R_MSTCMP array
   type SETC2R_MSTCMP_Field_Array is array (1 .. 4) of SETC2R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETC2R_MSTCMP
   type SETC2R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : SETC2R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETC2R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SETC2R_TIMEVNT array element
   subtype SETC2R_TIMEVNT_Element is STM32_SVD.Bit;

   --  SETC2R_TIMEVNT array
   type SETC2R_TIMEVNT_Field_Array is array (1 .. 9)
     of SETC2R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for SETC2R_TIMEVNT
   type SETC2R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : SETC2R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for SETC2R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  SETC2R_EXTEVNT array element
   subtype SETC2R_EXTEVNT_Element is STM32_SVD.Bit;

   --  SETC2R_EXTEVNT array
   type SETC2R_EXTEVNT_Field_Array is array (1 .. 10)
     of SETC2R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for SETC2R_EXTEVNT
   type SETC2R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : SETC2R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SETC2R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype SETC2R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output2 Set Register
   type SETC2R_Register is record
      --  SST
      SST     : SETC2R_SST_Field := 16#0#;
      --  RESYNC
      RESYNC  : SETC2R_RESYNC_Field := 16#0#;
      --  PER
      PER     : SETC2R_PER_Field := 16#0#;
      --  CMP1
      CMP     : SETC2R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : SETC2R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : SETC2R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : SETC2R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : SETC2R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : SETC2R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETC2R_Register use record
      SST     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype RSTC2R_SRT_Field is STM32_SVD.Bit;
   subtype RSTC2R_RESYNC_Field is STM32_SVD.Bit;
   subtype RSTC2R_PER_Field is STM32_SVD.Bit;
   --  RSTC2R_CMP array element
   subtype RSTC2R_CMP_Element is STM32_SVD.Bit;

   --  RSTC2R_CMP array
   type RSTC2R_CMP_Field_Array is array (1 .. 4) of RSTC2R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTC2R_CMP
   type RSTC2R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : RSTC2R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTC2R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RSTC2R_MSTPER_Field is STM32_SVD.Bit;
   --  RSTC2R_MSTCMP array element
   subtype RSTC2R_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTC2R_MSTCMP array
   type RSTC2R_MSTCMP_Field_Array is array (1 .. 4) of RSTC2R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTC2R_MSTCMP
   type RSTC2R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTC2R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTC2R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTC2R_TIMEVNT array element
   subtype RSTC2R_TIMEVNT_Element is STM32_SVD.Bit;

   --  RSTC2R_TIMEVNT array
   type RSTC2R_TIMEVNT_Field_Array is array (1 .. 9)
     of RSTC2R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for RSTC2R_TIMEVNT
   type RSTC2R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : RSTC2R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RSTC2R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RSTC2R_EXTEVNT array element
   subtype RSTC2R_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTC2R_EXTEVNT array
   type RSTC2R_EXTEVNT_Field_Array is array (1 .. 10)
     of RSTC2R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTC2R_EXTEVNT
   type RSTC2R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTC2R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTC2R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype RSTC2R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output2 Reset Register
   type RSTC2R_Register is record
      --  SRT
      SRT     : RSTC2R_SRT_Field := 16#0#;
      --  RESYNC
      RESYNC  : RSTC2R_RESYNC_Field := 16#0#;
      --  PER
      PER     : RSTC2R_PER_Field := 16#0#;
      --  CMP1
      CMP     : RSTC2R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : RSTC2R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : RSTC2R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : RSTC2R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : RSTC2R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : RSTC2R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC2R_Register use record
      SRT     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype EEFCR1_EE1LTCH_Field is STM32_SVD.Bit;
   subtype EEFCR1_EE1FLTR_Field is STM32_SVD.UInt4;
   subtype EEFCR1_EE2LTCH_Field is STM32_SVD.Bit;
   subtype EEFCR1_EE2FLTR_Field is STM32_SVD.UInt4;
   subtype EEFCR1_EE3LTCH_Field is STM32_SVD.Bit;
   subtype EEFCR1_EE3FLTR_Field is STM32_SVD.UInt4;
   subtype EEFCR1_EE4LTCH_Field is STM32_SVD.Bit;
   subtype EEFCR1_EE4FLTR_Field is STM32_SVD.UInt4;
   subtype EEFCR1_EE5LTCH_Field is STM32_SVD.Bit;
   subtype EEFCR1_EE5FLTR_Field is STM32_SVD.UInt4;

   --  Timerx External Event Filtering Register 1
   type EEFCR1_Register is record
      --  External Event 1 latch
      EE1LTCH        : EEFCR1_EE1LTCH_Field := 16#0#;
      --  External Event 1 filter
      EE1FLTR        : EEFCR1_EE1FLTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 2 latch
      EE2LTCH        : EEFCR1_EE2LTCH_Field := 16#0#;
      --  External Event 2 filter
      EE2FLTR        : EEFCR1_EE2FLTR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 3 latch
      EE3LTCH        : EEFCR1_EE3LTCH_Field := 16#0#;
      --  External Event 3 filter
      EE3FLTR        : EEFCR1_EE3FLTR_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 4 latch
      EE4LTCH        : EEFCR1_EE4LTCH_Field := 16#0#;
      --  External Event 4 filter
      EE4FLTR        : EEFCR1_EE4FLTR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 5 latch
      EE5LTCH        : EEFCR1_EE5LTCH_Field := 16#0#;
      --  External Event 5 filter
      EE5FLTR        : EEFCR1_EE5FLTR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEFCR1_Register use record
      EE1LTCH        at 0 range 0 .. 0;
      EE1FLTR        at 0 range 1 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE2LTCH        at 0 range 6 .. 6;
      EE2FLTR        at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE3LTCH        at 0 range 12 .. 12;
      EE3FLTR        at 0 range 13 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE4LTCH        at 0 range 18 .. 18;
      EE4FLTR        at 0 range 19 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE5LTCH        at 0 range 24 .. 24;
      EE5FLTR        at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype EEFCR2_EE6LTCH_Field is STM32_SVD.Bit;
   subtype EEFCR2_EE6FLTR_Field is STM32_SVD.UInt4;
   subtype EEFCR2_EE7LTCH_Field is STM32_SVD.Bit;
   subtype EEFCR2_EE7FLTR_Field is STM32_SVD.UInt4;
   subtype EEFCR2_EE8LTCH_Field is STM32_SVD.Bit;
   subtype EEFCR2_EE8FLTR_Field is STM32_SVD.UInt4;
   subtype EEFCR2_EE9LTCH_Field is STM32_SVD.Bit;
   subtype EEFCR2_EE9FLTR_Field is STM32_SVD.UInt4;
   subtype EEFCR2_EE10LTCH_Field is STM32_SVD.Bit;
   subtype EEFCR2_EE10FLTR_Field is STM32_SVD.UInt4;

   --  Timerx External Event Filtering Register 2
   type EEFCR2_Register is record
      --  External Event 6 latch
      EE6LTCH        : EEFCR2_EE6LTCH_Field := 16#0#;
      --  External Event 6 filter
      EE6FLTR        : EEFCR2_EE6FLTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 7 latch
      EE7LTCH        : EEFCR2_EE7LTCH_Field := 16#0#;
      --  External Event 7 filter
      EE7FLTR        : EEFCR2_EE7FLTR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 8 latch
      EE8LTCH        : EEFCR2_EE8LTCH_Field := 16#0#;
      --  External Event 8 filter
      EE8FLTR        : EEFCR2_EE8FLTR_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 9 latch
      EE9LTCH        : EEFCR2_EE9LTCH_Field := 16#0#;
      --  External Event 9 filter
      EE9FLTR        : EEFCR2_EE9FLTR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 10 latch
      EE10LTCH       : EEFCR2_EE10LTCH_Field := 16#0#;
      --  External Event 10 filter
      EE10FLTR       : EEFCR2_EE10FLTR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEFCR2_Register use record
      EE6LTCH        at 0 range 0 .. 0;
      EE6FLTR        at 0 range 1 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE7LTCH        at 0 range 6 .. 6;
      EE7FLTR        at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE8LTCH        at 0 range 12 .. 12;
      EE8FLTR        at 0 range 13 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE9LTCH        at 0 range 18 .. 18;
      EE9FLTR        at 0 range 19 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE10LTCH       at 0 range 24 .. 24;
      EE10FLTR       at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RSTCR_UPDT_Field is STM32_SVD.Bit;
   --  RSTCR_CMP array element
   subtype RSTCR_CMP_Element is STM32_SVD.Bit;

   --  RSTCR_CMP array
   type RSTCR_CMP_Field_Array is array (2 .. 3) of RSTCR_CMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for RSTCR_CMP
   type RSTCR_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  CMP as an array
            Arr : RSTCR_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RSTCR_CMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype RSTCR_MSTPER_Field is STM32_SVD.Bit;
   --  RSTCR_MSTCMP array element
   subtype RSTCR_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTCR_MSTCMP array
   type RSTCR_MSTCMP_Field_Array is array (1 .. 4) of RSTCR_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTCR_MSTCMP
   type RSTCR_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTCR_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTCR_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTCR_EXTEVNT array element
   subtype RSTCR_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTCR_EXTEVNT array
   type RSTCR_EXTEVNT_Field_Array is array (1 .. 10) of RSTCR_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTCR_EXTEVNT
   type RSTCR_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTCR_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTCR_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  RSTCR_TIMACMP array element
   subtype RSTCR_TIMACMP_Element is STM32_SVD.Bit;

   --  RSTCR_TIMACMP array
   type RSTCR_TIMACMP_Field_Array is array (1 .. 3) of RSTCR_TIMACMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTCR_TIMACMP
   type RSTCR_TIMACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMACMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMACMP as an array
            Arr : RSTCR_TIMACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTCR_TIMACMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTCR_TIMBCMP array element
   subtype RSTCR_TIMBCMP_Element is STM32_SVD.Bit;

   --  RSTCR_TIMBCMP array
   type RSTCR_TIMBCMP_Field_Array is array (1 .. 3) of RSTCR_TIMBCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTCR_TIMBCMP
   type RSTCR_TIMBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMBCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMBCMP as an array
            Arr : RSTCR_TIMBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTCR_TIMBCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTCR_TIMDCMP array element
   subtype RSTCR_TIMDCMP_Element is STM32_SVD.Bit;

   --  RSTCR_TIMDCMP array
   type RSTCR_TIMDCMP_Field_Array is array (1 .. 3) of RSTCR_TIMDCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTCR_TIMDCMP
   type RSTCR_TIMDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMDCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMDCMP as an array
            Arr : RSTCR_TIMDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTCR_TIMDCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTCR_TIMECMP array element
   subtype RSTCR_TIMECMP_Element is STM32_SVD.Bit;

   --  RSTCR_TIMECMP array
   type RSTCR_TIMECMP_Field_Array is array (1 .. 3) of RSTCR_TIMECMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTCR_TIMECMP
   type RSTCR_TIMECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMECMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMECMP as an array
            Arr : RSTCR_TIMECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTCR_TIMECMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  TimerA Reset Register
   type RSTCR_Register is record
      --  unspecified
      Reserved_0_0   : STM32_SVD.Bit := 16#0#;
      --  Timer A Update reset
      UPDT           : RSTCR_UPDT_Field := 16#0#;
      --  Timer A compare 2 reset
      CMP            : RSTCR_CMP_Field := (As_Array => False, Val => 16#0#);
      --  Master timer Period
      MSTPER         : RSTCR_MSTPER_Field := 16#0#;
      --  Master compare 1
      MSTCMP         : RSTCR_MSTCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  External Event 1
      EXTEVNT        : RSTCR_EXTEVNT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer A Compare 1
      TIMACMP        : RSTCR_TIMACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer B Compare 1
      TIMBCMP        : RSTCR_TIMBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer D Compare 1
      TIMDCMP        : RSTCR_TIMDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer E Compare 1
      TIMECMP        : RSTCR_TIMECMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      UPDT           at 0 range 1 .. 1;
      CMP            at 0 range 2 .. 3;
      MSTPER         at 0 range 4 .. 4;
      MSTCMP         at 0 range 5 .. 8;
      EXTEVNT        at 0 range 9 .. 18;
      TIMACMP        at 0 range 19 .. 21;
      TIMBCMP        at 0 range 22 .. 24;
      TIMDCMP        at 0 range 25 .. 27;
      TIMECMP        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CHPCR_CHPFRQ_Field is STM32_SVD.UInt4;
   subtype CHPCR_CHPDTY_Field is STM32_SVD.UInt3;
   subtype CHPCR_STRTPW_Field is STM32_SVD.UInt4;

   --  Timerx Chopper Register
   type CHPCR_Register is record
      --  Timerx carrier frequency value
      CHPFRQ         : CHPCR_CHPFRQ_Field := 16#0#;
      --  Timerx chopper duty cycle value
      CHPDTY         : CHPCR_CHPDTY_Field := 16#0#;
      --  STRTPW
      STRTPW         : CHPCR_STRTPW_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : STM32_SVD.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHPCR_Register use record
      CHPFRQ         at 0 range 0 .. 3;
      CHPDTY         at 0 range 4 .. 6;
      STRTPW         at 0 range 7 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype CPT1CCR_SWCPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_UDPCPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_EXEV1CPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_EXEV2CPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_EXEV3CPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_EXEV4CPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_EXEV5CPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_EXEV6CPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_EXEV7CPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_EXEV8CPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_EXEV9CPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_EXEV10CPT_Field is STM32_SVD.Bit;
   subtype CPT1CCR_TA1SET_Field is STM32_SVD.Bit;
   subtype CPT1CCR_TA1RST_Field is STM32_SVD.Bit;
   --  CPT1CCR_TACMP array element
   subtype CPT1CCR_TACMP_Element is STM32_SVD.Bit;

   --  CPT1CCR_TACMP array
   type CPT1CCR_TACMP_Field_Array is array (1 .. 2) of CPT1CCR_TACMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1CCR_TACMP
   type CPT1CCR_TACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TACMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TACMP as an array
            Arr : CPT1CCR_TACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1CCR_TACMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1CCR_TB1SET_Field is STM32_SVD.Bit;
   subtype CPT1CCR_TB1RST_Field is STM32_SVD.Bit;
   --  CPT1CCR_TBCMP array element
   subtype CPT1CCR_TBCMP_Element is STM32_SVD.Bit;

   --  CPT1CCR_TBCMP array
   type CPT1CCR_TBCMP_Field_Array is array (1 .. 2) of CPT1CCR_TBCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1CCR_TBCMP
   type CPT1CCR_TBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TBCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TBCMP as an array
            Arr : CPT1CCR_TBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1CCR_TBCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1CCR_TD1SET_Field is STM32_SVD.Bit;
   subtype CPT1CCR_TD1RST_Field is STM32_SVD.Bit;
   --  CPT1CCR_TDCMP array element
   subtype CPT1CCR_TDCMP_Element is STM32_SVD.Bit;

   --  CPT1CCR_TDCMP array
   type CPT1CCR_TDCMP_Field_Array is array (1 .. 2) of CPT1CCR_TDCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1CCR_TDCMP
   type CPT1CCR_TDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TDCMP as an array
            Arr : CPT1CCR_TDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1CCR_TDCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1CCR_TE1SET_Field is STM32_SVD.Bit;
   subtype CPT1CCR_TE1RST_Field is STM32_SVD.Bit;
   --  CPT1CCR_TECMP array element
   subtype CPT1CCR_TECMP_Element is STM32_SVD.Bit;

   --  CPT1CCR_TECMP array
   type CPT1CCR_TECMP_Field_Array is array (1 .. 2) of CPT1CCR_TECMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1CCR_TECMP
   type CPT1CCR_TECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TECMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TECMP as an array
            Arr : CPT1CCR_TECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1CCR_TECMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Timerx Capture 2 Control Register
   type CPT1CCR_Register is record
      --  Software Capture
      SWCPT          : CPT1CCR_SWCPT_Field := 16#0#;
      --  Update Capture
      UDPCPT         : CPT1CCR_UDPCPT_Field := 16#0#;
      --  External Event 1 Capture
      EXEV1CPT       : CPT1CCR_EXEV1CPT_Field := 16#0#;
      --  External Event 2 Capture
      EXEV2CPT       : CPT1CCR_EXEV2CPT_Field := 16#0#;
      --  External Event 3 Capture
      EXEV3CPT       : CPT1CCR_EXEV3CPT_Field := 16#0#;
      --  External Event 4 Capture
      EXEV4CPT       : CPT1CCR_EXEV4CPT_Field := 16#0#;
      --  External Event 5 Capture
      EXEV5CPT       : CPT1CCR_EXEV5CPT_Field := 16#0#;
      --  External Event 6 Capture
      EXEV6CPT       : CPT1CCR_EXEV6CPT_Field := 16#0#;
      --  External Event 7 Capture
      EXEV7CPT       : CPT1CCR_EXEV7CPT_Field := 16#0#;
      --  External Event 8 Capture
      EXEV8CPT       : CPT1CCR_EXEV8CPT_Field := 16#0#;
      --  External Event 9 Capture
      EXEV9CPT       : CPT1CCR_EXEV9CPT_Field := 16#0#;
      --  External Event 10 Capture
      EXEV10CPT      : CPT1CCR_EXEV10CPT_Field := 16#0#;
      --  Timer A output 1 Set
      TA1SET         : CPT1CCR_TA1SET_Field := 16#0#;
      --  Timer A output 1 Reset
      TA1RST         : CPT1CCR_TA1RST_Field := 16#0#;
      --  Timer A Compare 1
      TACMP          : CPT1CCR_TACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer B output 1 Set
      TB1SET         : CPT1CCR_TB1SET_Field := 16#0#;
      --  Timer B output 1 Reset
      TB1RST         : CPT1CCR_TB1RST_Field := 16#0#;
      --  Timer B Compare 1
      TBCMP          : CPT1CCR_TBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23 : STM32_SVD.UInt4 := 16#0#;
      --  Timer D output 1 Set
      TD1SET         : CPT1CCR_TD1SET_Field := 16#0#;
      --  Timer D output 1 Reset
      TD1RST         : CPT1CCR_TD1RST_Field := 16#0#;
      --  Timer D Compare 1
      TDCMP          : CPT1CCR_TDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer E output 1 Set
      TE1SET         : CPT1CCR_TE1SET_Field := 16#0#;
      --  Timer E output 1 Reset
      TE1RST         : CPT1CCR_TE1RST_Field := 16#0#;
      --  Timer E Compare 1
      TECMP          : CPT1CCR_TECMP_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT1CCR_Register use record
      SWCPT          at 0 range 0 .. 0;
      UDPCPT         at 0 range 1 .. 1;
      EXEV1CPT       at 0 range 2 .. 2;
      EXEV2CPT       at 0 range 3 .. 3;
      EXEV3CPT       at 0 range 4 .. 4;
      EXEV4CPT       at 0 range 5 .. 5;
      EXEV5CPT       at 0 range 6 .. 6;
      EXEV6CPT       at 0 range 7 .. 7;
      EXEV7CPT       at 0 range 8 .. 8;
      EXEV8CPT       at 0 range 9 .. 9;
      EXEV9CPT       at 0 range 10 .. 10;
      EXEV10CPT      at 0 range 11 .. 11;
      TA1SET         at 0 range 12 .. 12;
      TA1RST         at 0 range 13 .. 13;
      TACMP          at 0 range 14 .. 15;
      TB1SET         at 0 range 16 .. 16;
      TB1RST         at 0 range 17 .. 17;
      TBCMP          at 0 range 18 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TD1SET         at 0 range 24 .. 24;
      TD1RST         at 0 range 25 .. 25;
      TDCMP          at 0 range 26 .. 27;
      TE1SET         at 0 range 28 .. 28;
      TE1RST         at 0 range 29 .. 29;
      TECMP          at 0 range 30 .. 31;
   end record;

   subtype CPT2CCR_SWCPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_UDPCPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_EXEV1CPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_EXEV2CPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_EXEV3CPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_EXEV4CPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_EXEV5CPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_EXEV6CPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_EXEV7CPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_EXEV8CPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_EXEV9CPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_EXEV10CPT_Field is STM32_SVD.Bit;
   subtype CPT2CCR_TA1SET_Field is STM32_SVD.Bit;
   subtype CPT2CCR_TA1RST_Field is STM32_SVD.Bit;
   --  CPT2CCR_TACMP array element
   subtype CPT2CCR_TACMP_Element is STM32_SVD.Bit;

   --  CPT2CCR_TACMP array
   type CPT2CCR_TACMP_Field_Array is array (1 .. 2) of CPT2CCR_TACMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2CCR_TACMP
   type CPT2CCR_TACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TACMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TACMP as an array
            Arr : CPT2CCR_TACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2CCR_TACMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2CCR_TB1SET_Field is STM32_SVD.Bit;
   subtype CPT2CCR_TB1RST_Field is STM32_SVD.Bit;
   --  CPT2CCR_TBCMP array element
   subtype CPT2CCR_TBCMP_Element is STM32_SVD.Bit;

   --  CPT2CCR_TBCMP array
   type CPT2CCR_TBCMP_Field_Array is array (1 .. 2) of CPT2CCR_TBCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2CCR_TBCMP
   type CPT2CCR_TBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TBCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TBCMP as an array
            Arr : CPT2CCR_TBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2CCR_TBCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2CCR_TD1SET_Field is STM32_SVD.Bit;
   subtype CPT2CCR_TD1RST_Field is STM32_SVD.Bit;
   --  CPT2CCR_TDCMP array element
   subtype CPT2CCR_TDCMP_Element is STM32_SVD.Bit;

   --  CPT2CCR_TDCMP array
   type CPT2CCR_TDCMP_Field_Array is array (1 .. 2) of CPT2CCR_TDCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2CCR_TDCMP
   type CPT2CCR_TDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TDCMP as an array
            Arr : CPT2CCR_TDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2CCR_TDCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2CCR_TE1SET_Field is STM32_SVD.Bit;
   subtype CPT2CCR_TE1RST_Field is STM32_SVD.Bit;
   --  CPT2CCR_TECMP array element
   subtype CPT2CCR_TECMP_Element is STM32_SVD.Bit;

   --  CPT2CCR_TECMP array
   type CPT2CCR_TECMP_Field_Array is array (1 .. 2) of CPT2CCR_TECMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2CCR_TECMP
   type CPT2CCR_TECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TECMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TECMP as an array
            Arr : CPT2CCR_TECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2CCR_TECMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CPT2xCR
   type CPT2CCR_Register is record
      --  Software Capture
      SWCPT          : CPT2CCR_SWCPT_Field := 16#0#;
      --  Update Capture
      UDPCPT         : CPT2CCR_UDPCPT_Field := 16#0#;
      --  External Event 1 Capture
      EXEV1CPT       : CPT2CCR_EXEV1CPT_Field := 16#0#;
      --  External Event 2 Capture
      EXEV2CPT       : CPT2CCR_EXEV2CPT_Field := 16#0#;
      --  External Event 3 Capture
      EXEV3CPT       : CPT2CCR_EXEV3CPT_Field := 16#0#;
      --  External Event 4 Capture
      EXEV4CPT       : CPT2CCR_EXEV4CPT_Field := 16#0#;
      --  External Event 5 Capture
      EXEV5CPT       : CPT2CCR_EXEV5CPT_Field := 16#0#;
      --  External Event 6 Capture
      EXEV6CPT       : CPT2CCR_EXEV6CPT_Field := 16#0#;
      --  External Event 7 Capture
      EXEV7CPT       : CPT2CCR_EXEV7CPT_Field := 16#0#;
      --  External Event 8 Capture
      EXEV8CPT       : CPT2CCR_EXEV8CPT_Field := 16#0#;
      --  External Event 9 Capture
      EXEV9CPT       : CPT2CCR_EXEV9CPT_Field := 16#0#;
      --  External Event 10 Capture
      EXEV10CPT      : CPT2CCR_EXEV10CPT_Field := 16#0#;
      --  Timer A output 1 Set
      TA1SET         : CPT2CCR_TA1SET_Field := 16#0#;
      --  Timer A output 1 Reset
      TA1RST         : CPT2CCR_TA1RST_Field := 16#0#;
      --  Timer A Compare 1
      TACMP          : CPT2CCR_TACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer B output 1 Set
      TB1SET         : CPT2CCR_TB1SET_Field := 16#0#;
      --  Timer B output 1 Reset
      TB1RST         : CPT2CCR_TB1RST_Field := 16#0#;
      --  Timer B Compare 1
      TBCMP          : CPT2CCR_TBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23 : STM32_SVD.UInt4 := 16#0#;
      --  Timer D output 1 Set
      TD1SET         : CPT2CCR_TD1SET_Field := 16#0#;
      --  Timer D output 1 Reset
      TD1RST         : CPT2CCR_TD1RST_Field := 16#0#;
      --  Timer D Compare 1
      TDCMP          : CPT2CCR_TDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer E output 1 Set
      TE1SET         : CPT2CCR_TE1SET_Field := 16#0#;
      --  Timer E output 1 Reset
      TE1RST         : CPT2CCR_TE1RST_Field := 16#0#;
      --  Timer E Compare 1
      TECMP          : CPT2CCR_TECMP_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT2CCR_Register use record
      SWCPT          at 0 range 0 .. 0;
      UDPCPT         at 0 range 1 .. 1;
      EXEV1CPT       at 0 range 2 .. 2;
      EXEV2CPT       at 0 range 3 .. 3;
      EXEV3CPT       at 0 range 4 .. 4;
      EXEV4CPT       at 0 range 5 .. 5;
      EXEV5CPT       at 0 range 6 .. 6;
      EXEV6CPT       at 0 range 7 .. 7;
      EXEV7CPT       at 0 range 8 .. 8;
      EXEV8CPT       at 0 range 9 .. 9;
      EXEV9CPT       at 0 range 10 .. 10;
      EXEV10CPT      at 0 range 11 .. 11;
      TA1SET         at 0 range 12 .. 12;
      TA1RST         at 0 range 13 .. 13;
      TACMP          at 0 range 14 .. 15;
      TB1SET         at 0 range 16 .. 16;
      TB1RST         at 0 range 17 .. 17;
      TBCMP          at 0 range 18 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TD1SET         at 0 range 24 .. 24;
      TD1RST         at 0 range 25 .. 25;
      TDCMP          at 0 range 26 .. 27;
      TE1SET         at 0 range 28 .. 28;
      TE1RST         at 0 range 29 .. 29;
      TECMP          at 0 range 30 .. 31;
   end record;

   subtype OUTCR_POL1_Field is STM32_SVD.Bit;
   subtype OUTCR_IDLEM1_Field is STM32_SVD.Bit;
   subtype OUTCR_IDLES1_Field is STM32_SVD.Bit;
   subtype OUTCR_FAULT1_Field is STM32_SVD.UInt2;
   subtype OUTCR_CHP1_Field is STM32_SVD.Bit;
   subtype OUTCR_DIDL1_Field is STM32_SVD.Bit;
   subtype OUTCR_DTEN_Field is STM32_SVD.Bit;
   subtype OUTCR_DLYPRTEN_Field is STM32_SVD.Bit;
   subtype OUTCR_DLYPRT_Field is STM32_SVD.UInt3;
   subtype OUTCR_POL2_Field is STM32_SVD.Bit;
   subtype OUTCR_IDLEM2_Field is STM32_SVD.Bit;
   subtype OUTCR_IDLES2_Field is STM32_SVD.Bit;
   subtype OUTCR_FAULT2_Field is STM32_SVD.UInt2;
   subtype OUTCR_CHP2_Field is STM32_SVD.Bit;
   subtype OUTCR_DIDL2_Field is STM32_SVD.Bit;

   --  Timerx Output Register
   type OUTCR_Register is record
      --  unspecified
      Reserved_0_0   : STM32_SVD.Bit := 16#0#;
      --  Output 1 polarity
      POL1           : OUTCR_POL1_Field := 16#0#;
      --  Output 1 Idle mode
      IDLEM1         : OUTCR_IDLEM1_Field := 16#0#;
      --  Output 1 Idle State
      IDLES1         : OUTCR_IDLES1_Field := 16#0#;
      --  Output 1 Fault state
      FAULT1         : OUTCR_FAULT1_Field := 16#0#;
      --  Output 1 Chopper enable
      CHP1           : OUTCR_CHP1_Field := 16#0#;
      --  Output 1 Deadtime upon burst mode Idle entry
      DIDL1          : OUTCR_DIDL1_Field := 16#0#;
      --  Deadtime enable
      DTEN           : OUTCR_DTEN_Field := 16#0#;
      --  Delayed Protection Enable
      DLYPRTEN       : OUTCR_DLYPRTEN_Field := 16#0#;
      --  Delayed Protection
      DLYPRT         : OUTCR_DLYPRT_Field := 16#0#;
      --  unspecified
      Reserved_13_16 : STM32_SVD.UInt4 := 16#0#;
      --  Output 2 polarity
      POL2           : OUTCR_POL2_Field := 16#0#;
      --  Output 2 Idle mode
      IDLEM2         : OUTCR_IDLEM2_Field := 16#0#;
      --  Output 2 Idle State
      IDLES2         : OUTCR_IDLES2_Field := 16#0#;
      --  Output 2 Fault state
      FAULT2         : OUTCR_FAULT2_Field := 16#0#;
      --  Output 2 Chopper enable
      CHP2           : OUTCR_CHP2_Field := 16#0#;
      --  Output 2 Deadtime upon burst mode Idle entry
      DIDL2          : OUTCR_DIDL2_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      POL1           at 0 range 1 .. 1;
      IDLEM1         at 0 range 2 .. 2;
      IDLES1         at 0 range 3 .. 3;
      FAULT1         at 0 range 4 .. 5;
      CHP1           at 0 range 6 .. 6;
      DIDL1          at 0 range 7 .. 7;
      DTEN           at 0 range 8 .. 8;
      DLYPRTEN       at 0 range 9 .. 9;
      DLYPRT         at 0 range 10 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      POL2           at 0 range 17 .. 17;
      IDLEM2         at 0 range 18 .. 18;
      IDLES2         at 0 range 19 .. 19;
      FAULT2         at 0 range 20 .. 21;
      CHP2           at 0 range 22 .. 22;
      DIDL2          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLTCR_FLT1EN_Field is STM32_SVD.Bit;
   subtype FLTCR_FLT2EN_Field is STM32_SVD.Bit;
   subtype FLTCR_FLT3EN_Field is STM32_SVD.Bit;
   subtype FLTCR_FLT4EN_Field is STM32_SVD.Bit;
   subtype FLTCR_FLT5EN_Field is STM32_SVD.Bit;
   subtype FLTCR_FLTLCK_Field is STM32_SVD.Bit;

   --  Timerx Fault Register
   type FLTCR_Register is record
      --  Fault 1 enable
      FLT1EN        : FLTCR_FLT1EN_Field := 16#0#;
      --  Fault 2 enable
      FLT2EN        : FLTCR_FLT2EN_Field := 16#0#;
      --  Fault 3 enable
      FLT3EN        : FLTCR_FLT3EN_Field := 16#0#;
      --  Fault 4 enable
      FLT4EN        : FLTCR_FLT4EN_Field := 16#0#;
      --  Fault 5 enable
      FLT5EN        : FLTCR_FLT5EN_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : STM32_SVD.UInt26 := 16#0#;
      --  Fault sources Lock
      FLTLCK        : FLTCR_FLTLCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLTCR_Register use record
      FLT1EN        at 0 range 0 .. 0;
      FLT2EN        at 0 range 1 .. 1;
      FLT3EN        at 0 range 2 .. 2;
      FLT4EN        at 0 range 3 .. 3;
      FLT5EN        at 0 range 4 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      FLTLCK        at 0 range 31 .. 31;
   end record;

   subtype TIMDCR_CK_PSCx_Field is STM32_SVD.UInt3;
   subtype TIMDCR_CONT_Field is STM32_SVD.Bit;
   subtype TIMDCR_RETRIG_Field is STM32_SVD.Bit;
   subtype TIMDCR_HALF_Field is STM32_SVD.Bit;
   subtype TIMDCR_PSHPLL_Field is STM32_SVD.Bit;
   subtype TIMDCR_SYNCRSTx_Field is STM32_SVD.Bit;
   subtype TIMDCR_SYNCSTRTx_Field is STM32_SVD.Bit;
   --  TIMDCR_DELCMP array element
   subtype TIMDCR_DELCMP_Element is STM32_SVD.UInt2;

   --  TIMDCR_DELCMP array
   type TIMDCR_DELCMP_Field_Array is array (2 .. 3) of TIMDCR_DELCMP_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for TIMDCR_DELCMP
   type TIMDCR_DELCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  DELCMP as an array
            Arr : TIMDCR_DELCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMDCR_DELCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TIMDCR_TxREPU_Field is STM32_SVD.Bit;
   subtype TIMDCR_TxRSTU_Field is STM32_SVD.Bit;
   subtype TIMDCR_TBU_Field is STM32_SVD.Bit;
   subtype TIMDCR_TCU_Field is STM32_SVD.Bit;
   subtype TIMDCR_TDU_Field is STM32_SVD.Bit;
   subtype TIMDCR_TEU_Field is STM32_SVD.Bit;
   subtype TIMDCR_MSTU_Field is STM32_SVD.Bit;
   subtype TIMDCR_DACSYNC_Field is STM32_SVD.UInt2;
   subtype TIMDCR_PREEN_Field is STM32_SVD.Bit;
   subtype TIMDCR_UPDGAT_Field is STM32_SVD.UInt4;

   --  Timerx Control Register
   type TIMDCR_Register is record
      --  HRTIM Timer x Clock prescaler
      CK_PSCx        : TIMDCR_CK_PSCx_Field := 16#0#;
      --  Continuous mode
      CONT           : TIMDCR_CONT_Field := 16#0#;
      --  Re-triggerable mode
      RETRIG         : TIMDCR_RETRIG_Field := 16#0#;
      --  Half mode enable
      HALF           : TIMDCR_HALF_Field := 16#0#;
      --  Push-Pull mode enable
      PSHPLL         : TIMDCR_PSHPLL_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : STM32_SVD.UInt3 := 16#0#;
      --  Synchronization Resets Timer x
      SYNCRSTx       : TIMDCR_SYNCRSTx_Field := 16#0#;
      --  Synchronization Starts Timer x
      SYNCSTRTx      : TIMDCR_SYNCSTRTx_Field := 16#0#;
      --  Delayed CMP2 mode
      DELCMP         : TIMDCR_DELCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : STM32_SVD.Bit := 16#0#;
      --  Timer x Repetition update
      TxREPU         : TIMDCR_TxREPU_Field := 16#0#;
      --  Timerx reset update
      TxRSTU         : TIMDCR_TxRSTU_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : STM32_SVD.Bit := 16#0#;
      --  TBU
      TBU            : TIMDCR_TBU_Field := 16#0#;
      --  TCU
      TCU            : TIMDCR_TCU_Field := 16#0#;
      --  TDU
      TDU            : TIMDCR_TDU_Field := 16#0#;
      --  TEU
      TEU            : TIMDCR_TEU_Field := 16#0#;
      --  Master Timer update
      MSTU           : TIMDCR_MSTU_Field := 16#0#;
      --  AC Synchronization
      DACSYNC        : TIMDCR_DACSYNC_Field := 16#0#;
      --  Preload enable
      PREEN          : TIMDCR_PREEN_Field := 16#0#;
      --  Update Gating
      UPDGAT         : TIMDCR_UPDGAT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMDCR_Register use record
      CK_PSCx        at 0 range 0 .. 2;
      CONT           at 0 range 3 .. 3;
      RETRIG         at 0 range 4 .. 4;
      HALF           at 0 range 5 .. 5;
      PSHPLL         at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      SYNCRSTx       at 0 range 10 .. 10;
      SYNCSTRTx      at 0 range 11 .. 11;
      DELCMP         at 0 range 12 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      TxREPU         at 0 range 17 .. 17;
      TxRSTU         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TBU            at 0 range 20 .. 20;
      TCU            at 0 range 21 .. 21;
      TDU            at 0 range 22 .. 22;
      TEU            at 0 range 23 .. 23;
      MSTU           at 0 range 24 .. 24;
      DACSYNC        at 0 range 25 .. 26;
      PREEN          at 0 range 27 .. 27;
      UPDGAT         at 0 range 28 .. 31;
   end record;

   --  TIMDISR_CMP array element
   subtype TIMDISR_CMP_Element is STM32_SVD.Bit;

   --  TIMDISR_CMP array
   type TIMDISR_CMP_Field_Array is array (1 .. 4) of TIMDISR_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMDISR_CMP
   type TIMDISR_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : TIMDISR_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMDISR_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TIMDISR_REP_Field is STM32_SVD.Bit;
   subtype TIMDISR_UPD_Field is STM32_SVD.Bit;
   --  TIMDISR_CPT array element
   subtype TIMDISR_CPT_Element is STM32_SVD.Bit;

   --  TIMDISR_CPT array
   type TIMDISR_CPT_Field_Array is array (1 .. 2) of TIMDISR_CPT_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMDISR_CPT
   type TIMDISR_CPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPT as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  CPT as an array
            Arr : TIMDISR_CPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMDISR_CPT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype TIMDISR_SETx1_Field is STM32_SVD.Bit;
   subtype TIMDISR_RSTx1_Field is STM32_SVD.Bit;
   subtype TIMDISR_SETx2_Field is STM32_SVD.Bit;
   subtype TIMDISR_RSTx2_Field is STM32_SVD.Bit;
   subtype TIMDISR_RST_Field is STM32_SVD.Bit;
   subtype TIMDISR_DLYPRT_Field is STM32_SVD.Bit;
   subtype TIMDISR_CPPSTAT_Field is STM32_SVD.Bit;
   subtype TIMDISR_IPPSTAT_Field is STM32_SVD.Bit;
   subtype TIMDISR_O1STAT_Field is STM32_SVD.Bit;
   subtype TIMDISR_O2STAT_Field is STM32_SVD.Bit;

   --  Timerx Interrupt Status Register
   type TIMDISR_Register is record
      --  Read-only. Compare 1 Interrupt Flag
      CMP            : TIMDISR_CMP_Field;
      --  Read-only. Repetition Interrupt Flag
      REP            : TIMDISR_REP_Field;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit;
      --  Read-only. Update Interrupt Flag
      UPD            : TIMDISR_UPD_Field;
      --  Read-only. Capture1 Interrupt Flag
      CPT            : TIMDISR_CPT_Field;
      --  Read-only. Output 1 Set Interrupt Flag
      SETx1          : TIMDISR_SETx1_Field;
      --  Read-only. Output 1 Reset Interrupt Flag
      RSTx1          : TIMDISR_RSTx1_Field;
      --  Read-only. Output 2 Set Interrupt Flag
      SETx2          : TIMDISR_SETx2_Field;
      --  Read-only. Output 2 Reset Interrupt Flag
      RSTx2          : TIMDISR_RSTx2_Field;
      --  Read-only. Reset Interrupt Flag
      RST            : TIMDISR_RST_Field;
      --  Read-only. Delayed Protection Flag
      DLYPRT         : TIMDISR_DLYPRT_Field;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit;
      --  Read-only. Current Push Pull Status
      CPPSTAT        : TIMDISR_CPPSTAT_Field;
      --  Read-only. Idle Push Pull Status
      IPPSTAT        : TIMDISR_IPPSTAT_Field;
      --  Read-only. Output 1 State
      O1STAT         : TIMDISR_O1STAT_Field;
      --  Read-only. Output 2 State
      O2STAT         : TIMDISR_O2STAT_Field;
      --  unspecified
      Reserved_20_31 : STM32_SVD.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMDISR_Register use record
      CMP            at 0 range 0 .. 3;
      REP            at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPD            at 0 range 6 .. 6;
      CPT            at 0 range 7 .. 8;
      SETx1          at 0 range 9 .. 9;
      RSTx1          at 0 range 10 .. 10;
      SETx2          at 0 range 11 .. 11;
      RSTx2          at 0 range 12 .. 12;
      RST            at 0 range 13 .. 13;
      DLYPRT         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CPPSTAT        at 0 range 16 .. 16;
      IPPSTAT        at 0 range 17 .. 17;
      O1STAT         at 0 range 18 .. 18;
      O2STAT         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIMDICR_CMP1C_Field is STM32_SVD.Bit;
   subtype TIMDICR_CMP2C_Field is STM32_SVD.Bit;
   subtype TIMDICR_CMP3C_Field is STM32_SVD.Bit;
   subtype TIMDICR_CMP4C_Field is STM32_SVD.Bit;
   subtype TIMDICR_REPC_Field is STM32_SVD.Bit;
   subtype TIMDICR_UPDC_Field is STM32_SVD.Bit;
   subtype TIMDICR_CPT1C_Field is STM32_SVD.Bit;
   subtype TIMDICR_CPT2C_Field is STM32_SVD.Bit;
   subtype TIMDICR_SET1xC_Field is STM32_SVD.Bit;
   subtype TIMDICR_RSTx1C_Field is STM32_SVD.Bit;
   subtype TIMDICR_SET2xC_Field is STM32_SVD.Bit;
   subtype TIMDICR_RSTx2C_Field is STM32_SVD.Bit;
   subtype TIMDICR_RSTC_Field is STM32_SVD.Bit;
   subtype TIMDICR_DLYPRTC_Field is STM32_SVD.Bit;

   --  Timerx Interrupt Clear Register
   type TIMDICR_Register is record
      --  Write-only. Compare 1 Interrupt flag Clear
      CMP1C          : TIMDICR_CMP1C_Field := 16#0#;
      --  Write-only. Compare 2 Interrupt flag Clear
      CMP2C          : TIMDICR_CMP2C_Field := 16#0#;
      --  Write-only. Compare 3 Interrupt flag Clear
      CMP3C          : TIMDICR_CMP3C_Field := 16#0#;
      --  Write-only. Compare 4 Interrupt flag Clear
      CMP4C          : TIMDICR_CMP4C_Field := 16#0#;
      --  Write-only. Repetition Interrupt flag Clear
      REPC           : TIMDICR_REPC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  Write-only. Update Interrupt flag Clear
      UPDC           : TIMDICR_UPDC_Field := 16#0#;
      --  Write-only. Capture1 Interrupt flag Clear
      CPT1C          : TIMDICR_CPT1C_Field := 16#0#;
      --  Write-only. Capture2 Interrupt flag Clear
      CPT2C          : TIMDICR_CPT2C_Field := 16#0#;
      --  Write-only. Output 1 Set flag Clear
      SET1xC         : TIMDICR_SET1xC_Field := 16#0#;
      --  Write-only. Output 1 Reset flag Clear
      RSTx1C         : TIMDICR_RSTx1C_Field := 16#0#;
      --  Write-only. Output 2 Set flag Clear
      SET2xC         : TIMDICR_SET2xC_Field := 16#0#;
      --  Write-only. Output 2 Reset flag Clear
      RSTx2C         : TIMDICR_RSTx2C_Field := 16#0#;
      --  Write-only. Reset Interrupt flag Clear
      RSTC           : TIMDICR_RSTC_Field := 16#0#;
      --  Write-only. Delayed Protection Flag Clear
      DLYPRTC        : TIMDICR_DLYPRTC_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMDICR_Register use record
      CMP1C          at 0 range 0 .. 0;
      CMP2C          at 0 range 1 .. 1;
      CMP3C          at 0 range 2 .. 2;
      CMP4C          at 0 range 3 .. 3;
      REPC           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPDC           at 0 range 6 .. 6;
      CPT1C          at 0 range 7 .. 7;
      CPT2C          at 0 range 8 .. 8;
      SET1xC         at 0 range 9 .. 9;
      RSTx1C         at 0 range 10 .. 10;
      SET2xC         at 0 range 11 .. 11;
      RSTx2C         at 0 range 12 .. 12;
      RSTC           at 0 range 13 .. 13;
      DLYPRTC        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype TIMDDIER5_CMP1IE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CMP2IE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CMP3IE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CMP4IE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_REPIE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_UPDIE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CPT1IE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CPT2IE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_SET1xIE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_RSTx1IE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_SETx2IE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_RSTx2IE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_RSTIE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_DLYPRTIE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CMP1DE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CMP2DE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CMP3DE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CMP4DE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_REPDE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_UPDDE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CPT1DE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_CPT2DE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_SET1xDE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_RSTx1DE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_SETx2DE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_RSTx2DE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_RSTDE_Field is STM32_SVD.Bit;
   subtype TIMDDIER5_DLYPRTDE_Field is STM32_SVD.Bit;

   --  TIMxDIER5
   type TIMDDIER5_Register is record
      --  CMP1IE
      CMP1IE         : TIMDDIER5_CMP1IE_Field := 16#0#;
      --  CMP2IE
      CMP2IE         : TIMDDIER5_CMP2IE_Field := 16#0#;
      --  CMP3IE
      CMP3IE         : TIMDDIER5_CMP3IE_Field := 16#0#;
      --  CMP4IE
      CMP4IE         : TIMDDIER5_CMP4IE_Field := 16#0#;
      --  REPIE
      REPIE          : TIMDDIER5_REPIE_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  UPDIE
      UPDIE          : TIMDDIER5_UPDIE_Field := 16#0#;
      --  CPT1IE
      CPT1IE         : TIMDDIER5_CPT1IE_Field := 16#0#;
      --  CPT2IE
      CPT2IE         : TIMDDIER5_CPT2IE_Field := 16#0#;
      --  SET1xIE
      SET1xIE        : TIMDDIER5_SET1xIE_Field := 16#0#;
      --  RSTx1IE
      RSTx1IE        : TIMDDIER5_RSTx1IE_Field := 16#0#;
      --  SETx2IE
      SETx2IE        : TIMDDIER5_SETx2IE_Field := 16#0#;
      --  RSTx2IE
      RSTx2IE        : TIMDDIER5_RSTx2IE_Field := 16#0#;
      --  RSTIE
      RSTIE          : TIMDDIER5_RSTIE_Field := 16#0#;
      --  DLYPRTIE
      DLYPRTIE       : TIMDDIER5_DLYPRTIE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  CMP1DE
      CMP1DE         : TIMDDIER5_CMP1DE_Field := 16#0#;
      --  CMP2DE
      CMP2DE         : TIMDDIER5_CMP2DE_Field := 16#0#;
      --  CMP3DE
      CMP3DE         : TIMDDIER5_CMP3DE_Field := 16#0#;
      --  CMP4DE
      CMP4DE         : TIMDDIER5_CMP4DE_Field := 16#0#;
      --  REPDE
      REPDE          : TIMDDIER5_REPDE_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  UPDDE
      UPDDE          : TIMDDIER5_UPDDE_Field := 16#0#;
      --  CPT1DE
      CPT1DE         : TIMDDIER5_CPT1DE_Field := 16#0#;
      --  CPT2DE
      CPT2DE         : TIMDDIER5_CPT2DE_Field := 16#0#;
      --  SET1xDE
      SET1xDE        : TIMDDIER5_SET1xDE_Field := 16#0#;
      --  RSTx1DE
      RSTx1DE        : TIMDDIER5_RSTx1DE_Field := 16#0#;
      --  SETx2DE
      SETx2DE        : TIMDDIER5_SETx2DE_Field := 16#0#;
      --  RSTx2DE
      RSTx2DE        : TIMDDIER5_RSTx2DE_Field := 16#0#;
      --  RSTDE
      RSTDE          : TIMDDIER5_RSTDE_Field := 16#0#;
      --  DLYPRTDE
      DLYPRTDE       : TIMDDIER5_DLYPRTDE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMDDIER5_Register use record
      CMP1IE         at 0 range 0 .. 0;
      CMP2IE         at 0 range 1 .. 1;
      CMP3IE         at 0 range 2 .. 2;
      CMP4IE         at 0 range 3 .. 3;
      REPIE          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPDIE          at 0 range 6 .. 6;
      CPT1IE         at 0 range 7 .. 7;
      CPT2IE         at 0 range 8 .. 8;
      SET1xIE        at 0 range 9 .. 9;
      RSTx1IE        at 0 range 10 .. 10;
      SETx2IE        at 0 range 11 .. 11;
      RSTx2IE        at 0 range 12 .. 12;
      RSTIE          at 0 range 13 .. 13;
      DLYPRTIE       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CMP1DE         at 0 range 16 .. 16;
      CMP2DE         at 0 range 17 .. 17;
      CMP3DE         at 0 range 18 .. 18;
      CMP4DE         at 0 range 19 .. 19;
      REPDE          at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      UPDDE          at 0 range 22 .. 22;
      CPT1DE         at 0 range 23 .. 23;
      CPT2DE         at 0 range 24 .. 24;
      SET1xDE        at 0 range 25 .. 25;
      RSTx1DE        at 0 range 26 .. 26;
      SETx2DE        at 0 range 27 .. 27;
      RSTx2DE        at 0 range 28 .. 28;
      RSTDE          at 0 range 29 .. 29;
      DLYPRTDE       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CNTDR_CNTx_Field is STM32_SVD.UInt16;

   --  Timerx Counter Register
   type CNTDR_Register is record
      --  Timerx Counter value
      CNTx           : CNTDR_CNTx_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNTDR_Register use record
      CNTx           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PERDR_PERx_Field is STM32_SVD.UInt16;

   --  Timerx Period Register
   type PERDR_Register is record
      --  Timerx Period value
      PERx           : PERDR_PERx_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERDR_Register use record
      PERx           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype REPDR_REPx_Field is STM32_SVD.Byte;

   --  Timerx Repetition Register
   type REPDR_Register is record
      --  Timerx Repetition counter value
      REPx          : REPDR_REPx_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REPDR_Register use record
      REPx          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CMP1DR_CMP1x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 1 Register
   type CMP1DR_Register is record
      --  Timerx Compare 1 value
      CMP1x          : CMP1DR_CMP1x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1DR_Register use record
      CMP1x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP1CDR_CMP1x_Field is STM32_SVD.UInt16;
   subtype CMP1CDR_REPx_Field is STM32_SVD.Byte;

   --  Timerx Compare 1 Compound Register
   type CMP1CDR_Register is record
      --  Timerx Compare 1 value
      CMP1x          : CMP1CDR_CMP1x_Field := 16#0#;
      --  Timerx Repetition value (aliased from HRTIM_REPx register)
      REPx           : CMP1CDR_REPx_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1CDR_Register use record
      CMP1x          at 0 range 0 .. 15;
      REPx           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CMP2DR_CMP2x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 2 Register
   type CMP2DR_Register is record
      --  Timerx Compare 2 value
      CMP2x          : CMP2DR_CMP2x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP2DR_Register use record
      CMP2x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP3DR_CMP3x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 3 Register
   type CMP3DR_Register is record
      --  Timerx Compare 3 value
      CMP3x          : CMP3DR_CMP3x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP3DR_Register use record
      CMP3x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP4DR_CMP4x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 4 Register
   type CMP4DR_Register is record
      --  Timerx Compare 4 value
      CMP4x          : CMP4DR_CMP4x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP4DR_Register use record
      CMP4x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CPT1DR_CPT1x_Field is STM32_SVD.UInt16;

   --  Timerx Capture 1 Register
   type CPT1DR_Register is record
      --  Read-only. Timerx Capture 1 value
      CPT1x          : CPT1DR_CPT1x_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT1DR_Register use record
      CPT1x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CPT2DR_CPT2x_Field is STM32_SVD.UInt16;

   --  Timerx Capture 2 Register
   type CPT2DR_Register is record
      --  Read-only. Timerx Capture 2 value
      CPT2x          : CPT2DR_CPT2x_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT2DR_Register use record
      CPT2x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DTDR_DTRx_Field is STM32_SVD.UInt9;
   subtype DTDR_SDTRx_Field is STM32_SVD.Bit;
   subtype DTDR_DTPRSC_Field is STM32_SVD.UInt3;
   subtype DTDR_DTRSLKx_Field is STM32_SVD.Bit;
   subtype DTDR_DTRLKx_Field is STM32_SVD.Bit;
   subtype DTDR_DTFx_Field is STM32_SVD.UInt9;
   subtype DTDR_SDTFx_Field is STM32_SVD.Bit;
   subtype DTDR_DTFSLKx_Field is STM32_SVD.Bit;
   subtype DTDR_DTFLKx_Field is STM32_SVD.Bit;

   --  Timerx Deadtime Register
   type DTDR_Register is record
      --  Deadtime Rising value
      DTRx           : DTDR_DTRx_Field := 16#0#;
      --  Sign Deadtime Rising value
      SDTRx          : DTDR_SDTRx_Field := 16#0#;
      --  Deadtime Prescaler
      DTPRSC         : DTDR_DTPRSC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32_SVD.Bit := 16#0#;
      --  Deadtime Rising Sign Lock
      DTRSLKx        : DTDR_DTRSLKx_Field := 16#0#;
      --  Deadtime Rising Lock
      DTRLKx         : DTDR_DTRLKx_Field := 16#0#;
      --  Deadtime Falling value
      DTFx           : DTDR_DTFx_Field := 16#0#;
      --  Sign Deadtime Falling value
      SDTFx          : DTDR_SDTFx_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : STM32_SVD.UInt4 := 16#0#;
      --  Deadtime Falling Sign Lock
      DTFSLKx        : DTDR_DTFSLKx_Field := 16#0#;
      --  Deadtime Falling Lock
      DTFLKx         : DTDR_DTFLKx_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTDR_Register use record
      DTRx           at 0 range 0 .. 8;
      SDTRx          at 0 range 9 .. 9;
      DTPRSC         at 0 range 10 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      DTRSLKx        at 0 range 14 .. 14;
      DTRLKx         at 0 range 15 .. 15;
      DTFx           at 0 range 16 .. 24;
      SDTFx          at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      DTFSLKx        at 0 range 30 .. 30;
      DTFLKx         at 0 range 31 .. 31;
   end record;

   subtype SETD1R_SST_Field is STM32_SVD.Bit;
   subtype SETD1R_RESYNC_Field is STM32_SVD.Bit;
   subtype SETD1R_PER_Field is STM32_SVD.Bit;
   --  SETD1R_CMP array element
   subtype SETD1R_CMP_Element is STM32_SVD.Bit;

   --  SETD1R_CMP array
   type SETD1R_CMP_Field_Array is array (1 .. 4) of SETD1R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETD1R_CMP
   type SETD1R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : SETD1R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETD1R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SETD1R_MSTPER_Field is STM32_SVD.Bit;
   --  SETD1R_MSTCMP array element
   subtype SETD1R_MSTCMP_Element is STM32_SVD.Bit;

   --  SETD1R_MSTCMP array
   type SETD1R_MSTCMP_Field_Array is array (1 .. 4) of SETD1R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETD1R_MSTCMP
   type SETD1R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : SETD1R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETD1R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SETD1R_TIMEVNT array element
   subtype SETD1R_TIMEVNT_Element is STM32_SVD.Bit;

   --  SETD1R_TIMEVNT array
   type SETD1R_TIMEVNT_Field_Array is array (1 .. 9)
     of SETD1R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for SETD1R_TIMEVNT
   type SETD1R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : SETD1R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for SETD1R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  SETD1R_EXTEVNT array element
   subtype SETD1R_EXTEVNT_Element is STM32_SVD.Bit;

   --  SETD1R_EXTEVNT array
   type SETD1R_EXTEVNT_Field_Array is array (1 .. 10)
     of SETD1R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for SETD1R_EXTEVNT
   type SETD1R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : SETD1R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SETD1R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype SETD1R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output1 Set Register
   type SETD1R_Register is record
      --  Software Set trigger
      SST     : SETD1R_SST_Field := 16#0#;
      --  Timer A resynchronizaton
      RESYNC  : SETD1R_RESYNC_Field := 16#0#;
      --  Timer A Period
      PER     : SETD1R_PER_Field := 16#0#;
      --  Timer A compare 1
      CMP     : SETD1R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  Master Period
      MSTPER  : SETD1R_MSTPER_Field := 16#0#;
      --  Master Compare 1
      MSTCMP  : SETD1R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  Timer Event 1
      TIMEVNT : SETD1R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  External Event 1
      EXTEVNT : SETD1R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  Registers update (transfer preload to active)
      UPDATE  : SETD1R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETD1R_Register use record
      SST     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype RSTD1R_SRT_Field is STM32_SVD.Bit;
   subtype RSTD1R_RESYNC_Field is STM32_SVD.Bit;
   subtype RSTD1R_PER_Field is STM32_SVD.Bit;
   --  RSTD1R_CMP array element
   subtype RSTD1R_CMP_Element is STM32_SVD.Bit;

   --  RSTD1R_CMP array
   type RSTD1R_CMP_Field_Array is array (1 .. 4) of RSTD1R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTD1R_CMP
   type RSTD1R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : RSTD1R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTD1R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RSTD1R_MSTPER_Field is STM32_SVD.Bit;
   --  RSTD1R_MSTCMP array element
   subtype RSTD1R_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTD1R_MSTCMP array
   type RSTD1R_MSTCMP_Field_Array is array (1 .. 4) of RSTD1R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTD1R_MSTCMP
   type RSTD1R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTD1R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTD1R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTD1R_TIMEVNT array element
   subtype RSTD1R_TIMEVNT_Element is STM32_SVD.Bit;

   --  RSTD1R_TIMEVNT array
   type RSTD1R_TIMEVNT_Field_Array is array (1 .. 9)
     of RSTD1R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for RSTD1R_TIMEVNT
   type RSTD1R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : RSTD1R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RSTD1R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RSTD1R_EXTEVNT array element
   subtype RSTD1R_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTD1R_EXTEVNT array
   type RSTD1R_EXTEVNT_Field_Array is array (1 .. 10)
     of RSTD1R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTD1R_EXTEVNT
   type RSTD1R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTD1R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTD1R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype RSTD1R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output1 Reset Register
   type RSTD1R_Register is record
      --  SRT
      SRT     : RSTD1R_SRT_Field := 16#0#;
      --  RESYNC
      RESYNC  : RSTD1R_RESYNC_Field := 16#0#;
      --  PER
      PER     : RSTD1R_PER_Field := 16#0#;
      --  CMP1
      CMP     : RSTD1R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : RSTD1R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : RSTD1R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : RSTD1R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : RSTD1R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : RSTD1R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTD1R_Register use record
      SRT     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype SETD2R_SST_Field is STM32_SVD.Bit;
   subtype SETD2R_RESYNC_Field is STM32_SVD.Bit;
   subtype SETD2R_PER_Field is STM32_SVD.Bit;
   --  SETD2R_CMP array element
   subtype SETD2R_CMP_Element is STM32_SVD.Bit;

   --  SETD2R_CMP array
   type SETD2R_CMP_Field_Array is array (1 .. 4) of SETD2R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETD2R_CMP
   type SETD2R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : SETD2R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETD2R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SETD2R_MSTPER_Field is STM32_SVD.Bit;
   --  SETD2R_MSTCMP array element
   subtype SETD2R_MSTCMP_Element is STM32_SVD.Bit;

   --  SETD2R_MSTCMP array
   type SETD2R_MSTCMP_Field_Array is array (1 .. 4) of SETD2R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETD2R_MSTCMP
   type SETD2R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : SETD2R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETD2R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SETD2R_TIMEVNT array element
   subtype SETD2R_TIMEVNT_Element is STM32_SVD.Bit;

   --  SETD2R_TIMEVNT array
   type SETD2R_TIMEVNT_Field_Array is array (1 .. 9)
     of SETD2R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for SETD2R_TIMEVNT
   type SETD2R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : SETD2R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for SETD2R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  SETD2R_EXTEVNT array element
   subtype SETD2R_EXTEVNT_Element is STM32_SVD.Bit;

   --  SETD2R_EXTEVNT array
   type SETD2R_EXTEVNT_Field_Array is array (1 .. 10)
     of SETD2R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for SETD2R_EXTEVNT
   type SETD2R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : SETD2R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SETD2R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype SETD2R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output2 Set Register
   type SETD2R_Register is record
      --  SST
      SST     : SETD2R_SST_Field := 16#0#;
      --  RESYNC
      RESYNC  : SETD2R_RESYNC_Field := 16#0#;
      --  PER
      PER     : SETD2R_PER_Field := 16#0#;
      --  CMP1
      CMP     : SETD2R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : SETD2R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : SETD2R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : SETD2R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : SETD2R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : SETD2R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETD2R_Register use record
      SST     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype RSTD2R_SRT_Field is STM32_SVD.Bit;
   subtype RSTD2R_RESYNC_Field is STM32_SVD.Bit;
   subtype RSTD2R_PER_Field is STM32_SVD.Bit;
   --  RSTD2R_CMP array element
   subtype RSTD2R_CMP_Element is STM32_SVD.Bit;

   --  RSTD2R_CMP array
   type RSTD2R_CMP_Field_Array is array (1 .. 4) of RSTD2R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTD2R_CMP
   type RSTD2R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : RSTD2R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTD2R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RSTD2R_MSTPER_Field is STM32_SVD.Bit;
   --  RSTD2R_MSTCMP array element
   subtype RSTD2R_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTD2R_MSTCMP array
   type RSTD2R_MSTCMP_Field_Array is array (1 .. 4) of RSTD2R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTD2R_MSTCMP
   type RSTD2R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTD2R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTD2R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTD2R_TIMEVNT array element
   subtype RSTD2R_TIMEVNT_Element is STM32_SVD.Bit;

   --  RSTD2R_TIMEVNT array
   type RSTD2R_TIMEVNT_Field_Array is array (1 .. 9)
     of RSTD2R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for RSTD2R_TIMEVNT
   type RSTD2R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : RSTD2R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RSTD2R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RSTD2R_EXTEVNT array element
   subtype RSTD2R_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTD2R_EXTEVNT array
   type RSTD2R_EXTEVNT_Field_Array is array (1 .. 10)
     of RSTD2R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTD2R_EXTEVNT
   type RSTD2R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTD2R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTD2R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype RSTD2R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output2 Reset Register
   type RSTD2R_Register is record
      --  SRT
      SRT     : RSTD2R_SRT_Field := 16#0#;
      --  RESYNC
      RESYNC  : RSTD2R_RESYNC_Field := 16#0#;
      --  PER
      PER     : RSTD2R_PER_Field := 16#0#;
      --  CMP1
      CMP     : RSTD2R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : RSTD2R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : RSTD2R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : RSTD2R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : RSTD2R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : RSTD2R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTD2R_Register use record
      SRT     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype EEFDR1_EE1LTCH_Field is STM32_SVD.Bit;
   subtype EEFDR1_EE1FLTR_Field is STM32_SVD.UInt4;
   subtype EEFDR1_EE2LTCH_Field is STM32_SVD.Bit;
   subtype EEFDR1_EE2FLTR_Field is STM32_SVD.UInt4;
   subtype EEFDR1_EE3LTCH_Field is STM32_SVD.Bit;
   subtype EEFDR1_EE3FLTR_Field is STM32_SVD.UInt4;
   subtype EEFDR1_EE4LTCH_Field is STM32_SVD.Bit;
   subtype EEFDR1_EE4FLTR_Field is STM32_SVD.UInt4;
   subtype EEFDR1_EE5LTCH_Field is STM32_SVD.Bit;
   subtype EEFDR1_EE5FLTR_Field is STM32_SVD.UInt4;

   --  Timerx External Event Filtering Register 1
   type EEFDR1_Register is record
      --  External Event 1 latch
      EE1LTCH        : EEFDR1_EE1LTCH_Field := 16#0#;
      --  External Event 1 filter
      EE1FLTR        : EEFDR1_EE1FLTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 2 latch
      EE2LTCH        : EEFDR1_EE2LTCH_Field := 16#0#;
      --  External Event 2 filter
      EE2FLTR        : EEFDR1_EE2FLTR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 3 latch
      EE3LTCH        : EEFDR1_EE3LTCH_Field := 16#0#;
      --  External Event 3 filter
      EE3FLTR        : EEFDR1_EE3FLTR_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 4 latch
      EE4LTCH        : EEFDR1_EE4LTCH_Field := 16#0#;
      --  External Event 4 filter
      EE4FLTR        : EEFDR1_EE4FLTR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 5 latch
      EE5LTCH        : EEFDR1_EE5LTCH_Field := 16#0#;
      --  External Event 5 filter
      EE5FLTR        : EEFDR1_EE5FLTR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEFDR1_Register use record
      EE1LTCH        at 0 range 0 .. 0;
      EE1FLTR        at 0 range 1 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE2LTCH        at 0 range 6 .. 6;
      EE2FLTR        at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE3LTCH        at 0 range 12 .. 12;
      EE3FLTR        at 0 range 13 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE4LTCH        at 0 range 18 .. 18;
      EE4FLTR        at 0 range 19 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE5LTCH        at 0 range 24 .. 24;
      EE5FLTR        at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype EEFDR2_EE6LTCH_Field is STM32_SVD.Bit;
   subtype EEFDR2_EE6FLTR_Field is STM32_SVD.UInt4;
   subtype EEFDR2_EE7LTCH_Field is STM32_SVD.Bit;
   subtype EEFDR2_EE7FLTR_Field is STM32_SVD.UInt4;
   subtype EEFDR2_EE8LTCH_Field is STM32_SVD.Bit;
   subtype EEFDR2_EE8FLTR_Field is STM32_SVD.UInt4;
   subtype EEFDR2_EE9LTCH_Field is STM32_SVD.Bit;
   subtype EEFDR2_EE9FLTR_Field is STM32_SVD.UInt4;
   subtype EEFDR2_EE10LTCH_Field is STM32_SVD.Bit;
   subtype EEFDR2_EE10FLTR_Field is STM32_SVD.UInt4;

   --  Timerx External Event Filtering Register 2
   type EEFDR2_Register is record
      --  External Event 6 latch
      EE6LTCH        : EEFDR2_EE6LTCH_Field := 16#0#;
      --  External Event 6 filter
      EE6FLTR        : EEFDR2_EE6FLTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 7 latch
      EE7LTCH        : EEFDR2_EE7LTCH_Field := 16#0#;
      --  External Event 7 filter
      EE7FLTR        : EEFDR2_EE7FLTR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 8 latch
      EE8LTCH        : EEFDR2_EE8LTCH_Field := 16#0#;
      --  External Event 8 filter
      EE8FLTR        : EEFDR2_EE8FLTR_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 9 latch
      EE9LTCH        : EEFDR2_EE9LTCH_Field := 16#0#;
      --  External Event 9 filter
      EE9FLTR        : EEFDR2_EE9FLTR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 10 latch
      EE10LTCH       : EEFDR2_EE10LTCH_Field := 16#0#;
      --  External Event 10 filter
      EE10FLTR       : EEFDR2_EE10FLTR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEFDR2_Register use record
      EE6LTCH        at 0 range 0 .. 0;
      EE6FLTR        at 0 range 1 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE7LTCH        at 0 range 6 .. 6;
      EE7FLTR        at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE8LTCH        at 0 range 12 .. 12;
      EE8FLTR        at 0 range 13 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE9LTCH        at 0 range 18 .. 18;
      EE9FLTR        at 0 range 19 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE10LTCH       at 0 range 24 .. 24;
      EE10FLTR       at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RSTDR_UPDT_Field is STM32_SVD.Bit;
   --  RSTDR_CMP array element
   subtype RSTDR_CMP_Element is STM32_SVD.Bit;

   --  RSTDR_CMP array
   type RSTDR_CMP_Field_Array is array (2 .. 3) of RSTDR_CMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for RSTDR_CMP
   type RSTDR_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  CMP as an array
            Arr : RSTDR_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RSTDR_CMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype RSTDR_MSTPER_Field is STM32_SVD.Bit;
   --  RSTDR_MSTCMP array element
   subtype RSTDR_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTDR_MSTCMP array
   type RSTDR_MSTCMP_Field_Array is array (1 .. 4) of RSTDR_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTDR_MSTCMP
   type RSTDR_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTDR_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTDR_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTDR_EXTEVNT array element
   subtype RSTDR_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTDR_EXTEVNT array
   type RSTDR_EXTEVNT_Field_Array is array (1 .. 10) of RSTDR_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTDR_EXTEVNT
   type RSTDR_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTDR_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTDR_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  RSTDR_TIMACMP array element
   subtype RSTDR_TIMACMP_Element is STM32_SVD.Bit;

   --  RSTDR_TIMACMP array
   type RSTDR_TIMACMP_Field_Array is array (1 .. 3) of RSTDR_TIMACMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTDR_TIMACMP
   type RSTDR_TIMACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMACMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMACMP as an array
            Arr : RSTDR_TIMACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTDR_TIMACMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTDR_TIMBCMP array element
   subtype RSTDR_TIMBCMP_Element is STM32_SVD.Bit;

   --  RSTDR_TIMBCMP array
   type RSTDR_TIMBCMP_Field_Array is array (1 .. 3) of RSTDR_TIMBCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTDR_TIMBCMP
   type RSTDR_TIMBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMBCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMBCMP as an array
            Arr : RSTDR_TIMBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTDR_TIMBCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTDR_TIMCCMP array element
   subtype RSTDR_TIMCCMP_Element is STM32_SVD.Bit;

   --  RSTDR_TIMCCMP array
   type RSTDR_TIMCCMP_Field_Array is array (1 .. 3) of RSTDR_TIMCCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTDR_TIMCCMP
   type RSTDR_TIMCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMCCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMCCMP as an array
            Arr : RSTDR_TIMCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTDR_TIMCCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTDR_TIMECMP array element
   subtype RSTDR_TIMECMP_Element is STM32_SVD.Bit;

   --  RSTDR_TIMECMP array
   type RSTDR_TIMECMP_Field_Array is array (1 .. 3) of RSTDR_TIMECMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTDR_TIMECMP
   type RSTDR_TIMECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMECMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMECMP as an array
            Arr : RSTDR_TIMECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTDR_TIMECMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  TimerA Reset Register
   type RSTDR_Register is record
      --  unspecified
      Reserved_0_0   : STM32_SVD.Bit := 16#0#;
      --  Timer A Update reset
      UPDT           : RSTDR_UPDT_Field := 16#0#;
      --  Timer A compare 2 reset
      CMP            : RSTDR_CMP_Field := (As_Array => False, Val => 16#0#);
      --  Master timer Period
      MSTPER         : RSTDR_MSTPER_Field := 16#0#;
      --  Master compare 1
      MSTCMP         : RSTDR_MSTCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  External Event 1
      EXTEVNT        : RSTDR_EXTEVNT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer A Compare 1
      TIMACMP        : RSTDR_TIMACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer B Compare 1
      TIMBCMP        : RSTDR_TIMBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer C Compare 1
      TIMCCMP        : RSTDR_TIMCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer E Compare 1
      TIMECMP        : RSTDR_TIMECMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTDR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      UPDT           at 0 range 1 .. 1;
      CMP            at 0 range 2 .. 3;
      MSTPER         at 0 range 4 .. 4;
      MSTCMP         at 0 range 5 .. 8;
      EXTEVNT        at 0 range 9 .. 18;
      TIMACMP        at 0 range 19 .. 21;
      TIMBCMP        at 0 range 22 .. 24;
      TIMCCMP        at 0 range 25 .. 27;
      TIMECMP        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CHPDR_CHPFRQ_Field is STM32_SVD.UInt4;
   subtype CHPDR_CHPDTY_Field is STM32_SVD.UInt3;
   subtype CHPDR_STRTPW_Field is STM32_SVD.UInt4;

   --  Timerx Chopper Register
   type CHPDR_Register is record
      --  Timerx carrier frequency value
      CHPFRQ         : CHPDR_CHPFRQ_Field := 16#0#;
      --  Timerx chopper duty cycle value
      CHPDTY         : CHPDR_CHPDTY_Field := 16#0#;
      --  STRTPW
      STRTPW         : CHPDR_STRTPW_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : STM32_SVD.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHPDR_Register use record
      CHPFRQ         at 0 range 0 .. 3;
      CHPDTY         at 0 range 4 .. 6;
      STRTPW         at 0 range 7 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype CPT1DCR_SWCPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_UDPCPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_EXEV1CPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_EXEV2CPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_EXEV3CPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_EXEV4CPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_EXEV5CPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_EXEV6CPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_EXEV7CPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_EXEV8CPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_EXEV9CPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_EXEV10CPT_Field is STM32_SVD.Bit;
   subtype CPT1DCR_TA1SET_Field is STM32_SVD.Bit;
   subtype CPT1DCR_TA1RST_Field is STM32_SVD.Bit;
   --  CPT1DCR_TACMP array element
   subtype CPT1DCR_TACMP_Element is STM32_SVD.Bit;

   --  CPT1DCR_TACMP array
   type CPT1DCR_TACMP_Field_Array is array (1 .. 2) of CPT1DCR_TACMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1DCR_TACMP
   type CPT1DCR_TACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TACMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TACMP as an array
            Arr : CPT1DCR_TACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1DCR_TACMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1DCR_TB1SET_Field is STM32_SVD.Bit;
   subtype CPT1DCR_TB1RST_Field is STM32_SVD.Bit;
   --  CPT1DCR_TBCMP array element
   subtype CPT1DCR_TBCMP_Element is STM32_SVD.Bit;

   --  CPT1DCR_TBCMP array
   type CPT1DCR_TBCMP_Field_Array is array (1 .. 2) of CPT1DCR_TBCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1DCR_TBCMP
   type CPT1DCR_TBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TBCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TBCMP as an array
            Arr : CPT1DCR_TBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1DCR_TBCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1DCR_TC1SET_Field is STM32_SVD.Bit;
   subtype CPT1DCR_TC1RST_Field is STM32_SVD.Bit;
   --  CPT1DCR_TCCMP array element
   subtype CPT1DCR_TCCMP_Element is STM32_SVD.Bit;

   --  CPT1DCR_TCCMP array
   type CPT1DCR_TCCMP_Field_Array is array (1 .. 2) of CPT1DCR_TCCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1DCR_TCCMP
   type CPT1DCR_TCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TCCMP as an array
            Arr : CPT1DCR_TCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1DCR_TCCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1DCR_TE1SET_Field is STM32_SVD.Bit;
   subtype CPT1DCR_TE1RST_Field is STM32_SVD.Bit;
   --  CPT1DCR_TECMP array element
   subtype CPT1DCR_TECMP_Element is STM32_SVD.Bit;

   --  CPT1DCR_TECMP array
   type CPT1DCR_TECMP_Field_Array is array (1 .. 2) of CPT1DCR_TECMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1DCR_TECMP
   type CPT1DCR_TECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TECMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TECMP as an array
            Arr : CPT1DCR_TECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1DCR_TECMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Timerx Capture 2 Control Register
   type CPT1DCR_Register is record
      --  Software Capture
      SWCPT          : CPT1DCR_SWCPT_Field := 16#0#;
      --  Update Capture
      UDPCPT         : CPT1DCR_UDPCPT_Field := 16#0#;
      --  External Event 1 Capture
      EXEV1CPT       : CPT1DCR_EXEV1CPT_Field := 16#0#;
      --  External Event 2 Capture
      EXEV2CPT       : CPT1DCR_EXEV2CPT_Field := 16#0#;
      --  External Event 3 Capture
      EXEV3CPT       : CPT1DCR_EXEV3CPT_Field := 16#0#;
      --  External Event 4 Capture
      EXEV4CPT       : CPT1DCR_EXEV4CPT_Field := 16#0#;
      --  External Event 5 Capture
      EXEV5CPT       : CPT1DCR_EXEV5CPT_Field := 16#0#;
      --  External Event 6 Capture
      EXEV6CPT       : CPT1DCR_EXEV6CPT_Field := 16#0#;
      --  External Event 7 Capture
      EXEV7CPT       : CPT1DCR_EXEV7CPT_Field := 16#0#;
      --  External Event 8 Capture
      EXEV8CPT       : CPT1DCR_EXEV8CPT_Field := 16#0#;
      --  External Event 9 Capture
      EXEV9CPT       : CPT1DCR_EXEV9CPT_Field := 16#0#;
      --  External Event 10 Capture
      EXEV10CPT      : CPT1DCR_EXEV10CPT_Field := 16#0#;
      --  Timer A output 1 Set
      TA1SET         : CPT1DCR_TA1SET_Field := 16#0#;
      --  Timer A output 1 Reset
      TA1RST         : CPT1DCR_TA1RST_Field := 16#0#;
      --  Timer A Compare 1
      TACMP          : CPT1DCR_TACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer B output 1 Set
      TB1SET         : CPT1DCR_TB1SET_Field := 16#0#;
      --  Timer B output 1 Reset
      TB1RST         : CPT1DCR_TB1RST_Field := 16#0#;
      --  Timer B Compare 1
      TBCMP          : CPT1DCR_TBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer C output 1 Set
      TC1SET         : CPT1DCR_TC1SET_Field := 16#0#;
      --  Timer C output 1 Reset
      TC1RST         : CPT1DCR_TC1RST_Field := 16#0#;
      --  Timer C Compare 1
      TCCMP          : CPT1DCR_TCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_27 : STM32_SVD.UInt4 := 16#0#;
      --  Timer E output 1 Set
      TE1SET         : CPT1DCR_TE1SET_Field := 16#0#;
      --  Timer E output 1 Reset
      TE1RST         : CPT1DCR_TE1RST_Field := 16#0#;
      --  Timer E Compare 1
      TECMP          : CPT1DCR_TECMP_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT1DCR_Register use record
      SWCPT          at 0 range 0 .. 0;
      UDPCPT         at 0 range 1 .. 1;
      EXEV1CPT       at 0 range 2 .. 2;
      EXEV2CPT       at 0 range 3 .. 3;
      EXEV3CPT       at 0 range 4 .. 4;
      EXEV4CPT       at 0 range 5 .. 5;
      EXEV5CPT       at 0 range 6 .. 6;
      EXEV6CPT       at 0 range 7 .. 7;
      EXEV7CPT       at 0 range 8 .. 8;
      EXEV8CPT       at 0 range 9 .. 9;
      EXEV9CPT       at 0 range 10 .. 10;
      EXEV10CPT      at 0 range 11 .. 11;
      TA1SET         at 0 range 12 .. 12;
      TA1RST         at 0 range 13 .. 13;
      TACMP          at 0 range 14 .. 15;
      TB1SET         at 0 range 16 .. 16;
      TB1RST         at 0 range 17 .. 17;
      TBCMP          at 0 range 18 .. 19;
      TC1SET         at 0 range 20 .. 20;
      TC1RST         at 0 range 21 .. 21;
      TCCMP          at 0 range 22 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      TE1SET         at 0 range 28 .. 28;
      TE1RST         at 0 range 29 .. 29;
      TECMP          at 0 range 30 .. 31;
   end record;

   subtype CPT2DCR_SWCPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_UDPCPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_EXEV1CPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_EXEV2CPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_EXEV3CPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_EXEV4CPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_EXEV5CPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_EXEV6CPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_EXEV7CPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_EXEV8CPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_EXEV9CPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_EXEV10CPT_Field is STM32_SVD.Bit;
   subtype CPT2DCR_TA1SET_Field is STM32_SVD.Bit;
   subtype CPT2DCR_TA1RST_Field is STM32_SVD.Bit;
   --  CPT2DCR_TACMP array element
   subtype CPT2DCR_TACMP_Element is STM32_SVD.Bit;

   --  CPT2DCR_TACMP array
   type CPT2DCR_TACMP_Field_Array is array (1 .. 2) of CPT2DCR_TACMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2DCR_TACMP
   type CPT2DCR_TACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TACMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TACMP as an array
            Arr : CPT2DCR_TACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2DCR_TACMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2DCR_TB1SET_Field is STM32_SVD.Bit;
   subtype CPT2DCR_TB1RST_Field is STM32_SVD.Bit;
   --  CPT2DCR_TBCMP array element
   subtype CPT2DCR_TBCMP_Element is STM32_SVD.Bit;

   --  CPT2DCR_TBCMP array
   type CPT2DCR_TBCMP_Field_Array is array (1 .. 2) of CPT2DCR_TBCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2DCR_TBCMP
   type CPT2DCR_TBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TBCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TBCMP as an array
            Arr : CPT2DCR_TBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2DCR_TBCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2DCR_TC1SET_Field is STM32_SVD.Bit;
   subtype CPT2DCR_TC1RST_Field is STM32_SVD.Bit;
   --  CPT2DCR_TCCMP array element
   subtype CPT2DCR_TCCMP_Element is STM32_SVD.Bit;

   --  CPT2DCR_TCCMP array
   type CPT2DCR_TCCMP_Field_Array is array (1 .. 2) of CPT2DCR_TCCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2DCR_TCCMP
   type CPT2DCR_TCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TCCMP as an array
            Arr : CPT2DCR_TCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2DCR_TCCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2DCR_TE1SET_Field is STM32_SVD.Bit;
   subtype CPT2DCR_TE1RST_Field is STM32_SVD.Bit;
   --  CPT2DCR_TECMP array element
   subtype CPT2DCR_TECMP_Element is STM32_SVD.Bit;

   --  CPT2DCR_TECMP array
   type CPT2DCR_TECMP_Field_Array is array (1 .. 2) of CPT2DCR_TECMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2DCR_TECMP
   type CPT2DCR_TECMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TECMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TECMP as an array
            Arr : CPT2DCR_TECMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2DCR_TECMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CPT2xCR
   type CPT2DCR_Register is record
      --  Software Capture
      SWCPT          : CPT2DCR_SWCPT_Field := 16#0#;
      --  Update Capture
      UDPCPT         : CPT2DCR_UDPCPT_Field := 16#0#;
      --  External Event 1 Capture
      EXEV1CPT       : CPT2DCR_EXEV1CPT_Field := 16#0#;
      --  External Event 2 Capture
      EXEV2CPT       : CPT2DCR_EXEV2CPT_Field := 16#0#;
      --  External Event 3 Capture
      EXEV3CPT       : CPT2DCR_EXEV3CPT_Field := 16#0#;
      --  External Event 4 Capture
      EXEV4CPT       : CPT2DCR_EXEV4CPT_Field := 16#0#;
      --  External Event 5 Capture
      EXEV5CPT       : CPT2DCR_EXEV5CPT_Field := 16#0#;
      --  External Event 6 Capture
      EXEV6CPT       : CPT2DCR_EXEV6CPT_Field := 16#0#;
      --  External Event 7 Capture
      EXEV7CPT       : CPT2DCR_EXEV7CPT_Field := 16#0#;
      --  External Event 8 Capture
      EXEV8CPT       : CPT2DCR_EXEV8CPT_Field := 16#0#;
      --  External Event 9 Capture
      EXEV9CPT       : CPT2DCR_EXEV9CPT_Field := 16#0#;
      --  External Event 10 Capture
      EXEV10CPT      : CPT2DCR_EXEV10CPT_Field := 16#0#;
      --  Timer A output 1 Set
      TA1SET         : CPT2DCR_TA1SET_Field := 16#0#;
      --  Timer A output 1 Reset
      TA1RST         : CPT2DCR_TA1RST_Field := 16#0#;
      --  Timer A Compare 1
      TACMP          : CPT2DCR_TACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer B output 1 Set
      TB1SET         : CPT2DCR_TB1SET_Field := 16#0#;
      --  Timer B output 1 Reset
      TB1RST         : CPT2DCR_TB1RST_Field := 16#0#;
      --  Timer B Compare 1
      TBCMP          : CPT2DCR_TBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer C output 1 Set
      TC1SET         : CPT2DCR_TC1SET_Field := 16#0#;
      --  Timer C output 1 Reset
      TC1RST         : CPT2DCR_TC1RST_Field := 16#0#;
      --  Timer C Compare 1
      TCCMP          : CPT2DCR_TCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_27 : STM32_SVD.UInt4 := 16#0#;
      --  Timer E output 1 Set
      TE1SET         : CPT2DCR_TE1SET_Field := 16#0#;
      --  Timer E output 1 Reset
      TE1RST         : CPT2DCR_TE1RST_Field := 16#0#;
      --  Timer E Compare 1
      TECMP          : CPT2DCR_TECMP_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT2DCR_Register use record
      SWCPT          at 0 range 0 .. 0;
      UDPCPT         at 0 range 1 .. 1;
      EXEV1CPT       at 0 range 2 .. 2;
      EXEV2CPT       at 0 range 3 .. 3;
      EXEV3CPT       at 0 range 4 .. 4;
      EXEV4CPT       at 0 range 5 .. 5;
      EXEV5CPT       at 0 range 6 .. 6;
      EXEV6CPT       at 0 range 7 .. 7;
      EXEV7CPT       at 0 range 8 .. 8;
      EXEV8CPT       at 0 range 9 .. 9;
      EXEV9CPT       at 0 range 10 .. 10;
      EXEV10CPT      at 0 range 11 .. 11;
      TA1SET         at 0 range 12 .. 12;
      TA1RST         at 0 range 13 .. 13;
      TACMP          at 0 range 14 .. 15;
      TB1SET         at 0 range 16 .. 16;
      TB1RST         at 0 range 17 .. 17;
      TBCMP          at 0 range 18 .. 19;
      TC1SET         at 0 range 20 .. 20;
      TC1RST         at 0 range 21 .. 21;
      TCCMP          at 0 range 22 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      TE1SET         at 0 range 28 .. 28;
      TE1RST         at 0 range 29 .. 29;
      TECMP          at 0 range 30 .. 31;
   end record;

   subtype OUTDR_POL1_Field is STM32_SVD.Bit;
   subtype OUTDR_IDLEM1_Field is STM32_SVD.Bit;
   subtype OUTDR_IDLES1_Field is STM32_SVD.Bit;
   subtype OUTDR_FAULT1_Field is STM32_SVD.UInt2;
   subtype OUTDR_CHP1_Field is STM32_SVD.Bit;
   subtype OUTDR_DIDL1_Field is STM32_SVD.Bit;
   subtype OUTDR_DTEN_Field is STM32_SVD.Bit;
   subtype OUTDR_DLYPRTEN_Field is STM32_SVD.Bit;
   subtype OUTDR_DLYPRT_Field is STM32_SVD.UInt3;
   subtype OUTDR_POL2_Field is STM32_SVD.Bit;
   subtype OUTDR_IDLEM2_Field is STM32_SVD.Bit;
   subtype OUTDR_IDLES2_Field is STM32_SVD.Bit;
   subtype OUTDR_FAULT2_Field is STM32_SVD.UInt2;
   subtype OUTDR_CHP2_Field is STM32_SVD.Bit;
   subtype OUTDR_DIDL2_Field is STM32_SVD.Bit;

   --  Timerx Output Register
   type OUTDR_Register is record
      --  unspecified
      Reserved_0_0   : STM32_SVD.Bit := 16#0#;
      --  Output 1 polarity
      POL1           : OUTDR_POL1_Field := 16#0#;
      --  Output 1 Idle mode
      IDLEM1         : OUTDR_IDLEM1_Field := 16#0#;
      --  Output 1 Idle State
      IDLES1         : OUTDR_IDLES1_Field := 16#0#;
      --  Output 1 Fault state
      FAULT1         : OUTDR_FAULT1_Field := 16#0#;
      --  Output 1 Chopper enable
      CHP1           : OUTDR_CHP1_Field := 16#0#;
      --  Output 1 Deadtime upon burst mode Idle entry
      DIDL1          : OUTDR_DIDL1_Field := 16#0#;
      --  Deadtime enable
      DTEN           : OUTDR_DTEN_Field := 16#0#;
      --  Delayed Protection Enable
      DLYPRTEN       : OUTDR_DLYPRTEN_Field := 16#0#;
      --  Delayed Protection
      DLYPRT         : OUTDR_DLYPRT_Field := 16#0#;
      --  unspecified
      Reserved_13_16 : STM32_SVD.UInt4 := 16#0#;
      --  Output 2 polarity
      POL2           : OUTDR_POL2_Field := 16#0#;
      --  Output 2 Idle mode
      IDLEM2         : OUTDR_IDLEM2_Field := 16#0#;
      --  Output 2 Idle State
      IDLES2         : OUTDR_IDLES2_Field := 16#0#;
      --  Output 2 Fault state
      FAULT2         : OUTDR_FAULT2_Field := 16#0#;
      --  Output 2 Chopper enable
      CHP2           : OUTDR_CHP2_Field := 16#0#;
      --  Output 2 Deadtime upon burst mode Idle entry
      DIDL2          : OUTDR_DIDL2_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTDR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      POL1           at 0 range 1 .. 1;
      IDLEM1         at 0 range 2 .. 2;
      IDLES1         at 0 range 3 .. 3;
      FAULT1         at 0 range 4 .. 5;
      CHP1           at 0 range 6 .. 6;
      DIDL1          at 0 range 7 .. 7;
      DTEN           at 0 range 8 .. 8;
      DLYPRTEN       at 0 range 9 .. 9;
      DLYPRT         at 0 range 10 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      POL2           at 0 range 17 .. 17;
      IDLEM2         at 0 range 18 .. 18;
      IDLES2         at 0 range 19 .. 19;
      FAULT2         at 0 range 20 .. 21;
      CHP2           at 0 range 22 .. 22;
      DIDL2          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLTDR_FLT1EN_Field is STM32_SVD.Bit;
   subtype FLTDR_FLT2EN_Field is STM32_SVD.Bit;
   subtype FLTDR_FLT3EN_Field is STM32_SVD.Bit;
   subtype FLTDR_FLT4EN_Field is STM32_SVD.Bit;
   subtype FLTDR_FLT5EN_Field is STM32_SVD.Bit;
   subtype FLTDR_FLTLCK_Field is STM32_SVD.Bit;

   --  Timerx Fault Register
   type FLTDR_Register is record
      --  Fault 1 enable
      FLT1EN        : FLTDR_FLT1EN_Field := 16#0#;
      --  Fault 2 enable
      FLT2EN        : FLTDR_FLT2EN_Field := 16#0#;
      --  Fault 3 enable
      FLT3EN        : FLTDR_FLT3EN_Field := 16#0#;
      --  Fault 4 enable
      FLT4EN        : FLTDR_FLT4EN_Field := 16#0#;
      --  Fault 5 enable
      FLT5EN        : FLTDR_FLT5EN_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : STM32_SVD.UInt26 := 16#0#;
      --  Fault sources Lock
      FLTLCK        : FLTDR_FLTLCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLTDR_Register use record
      FLT1EN        at 0 range 0 .. 0;
      FLT2EN        at 0 range 1 .. 1;
      FLT3EN        at 0 range 2 .. 2;
      FLT4EN        at 0 range 3 .. 3;
      FLT5EN        at 0 range 4 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      FLTLCK        at 0 range 31 .. 31;
   end record;

   subtype TIMECR_CK_PSCx_Field is STM32_SVD.UInt3;
   subtype TIMECR_CONT_Field is STM32_SVD.Bit;
   subtype TIMECR_RETRIG_Field is STM32_SVD.Bit;
   subtype TIMECR_HALF_Field is STM32_SVD.Bit;
   subtype TIMECR_PSHPLL_Field is STM32_SVD.Bit;
   subtype TIMECR_SYNCRSTx_Field is STM32_SVD.Bit;
   subtype TIMECR_SYNCSTRTx_Field is STM32_SVD.Bit;
   --  TIMECR_DELCMP array element
   subtype TIMECR_DELCMP_Element is STM32_SVD.UInt2;

   --  TIMECR_DELCMP array
   type TIMECR_DELCMP_Field_Array is array (2 .. 3) of TIMECR_DELCMP_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for TIMECR_DELCMP
   type TIMECR_DELCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  DELCMP as an array
            Arr : TIMECR_DELCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMECR_DELCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TIMECR_TxREPU_Field is STM32_SVD.Bit;
   subtype TIMECR_TxRSTU_Field is STM32_SVD.Bit;
   subtype TIMECR_TBU_Field is STM32_SVD.Bit;
   subtype TIMECR_TCU_Field is STM32_SVD.Bit;
   subtype TIMECR_TDU_Field is STM32_SVD.Bit;
   subtype TIMECR_TEU_Field is STM32_SVD.Bit;
   subtype TIMECR_MSTU_Field is STM32_SVD.Bit;
   subtype TIMECR_DACSYNC_Field is STM32_SVD.UInt2;
   subtype TIMECR_PREEN_Field is STM32_SVD.Bit;
   subtype TIMECR_UPDGAT_Field is STM32_SVD.UInt4;

   --  Timerx Control Register
   type TIMECR_Register is record
      --  HRTIM Timer x Clock prescaler
      CK_PSCx        : TIMECR_CK_PSCx_Field := 16#0#;
      --  Continuous mode
      CONT           : TIMECR_CONT_Field := 16#0#;
      --  Re-triggerable mode
      RETRIG         : TIMECR_RETRIG_Field := 16#0#;
      --  Half mode enable
      HALF           : TIMECR_HALF_Field := 16#0#;
      --  Push-Pull mode enable
      PSHPLL         : TIMECR_PSHPLL_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : STM32_SVD.UInt3 := 16#0#;
      --  Synchronization Resets Timer x
      SYNCRSTx       : TIMECR_SYNCRSTx_Field := 16#0#;
      --  Synchronization Starts Timer x
      SYNCSTRTx      : TIMECR_SYNCSTRTx_Field := 16#0#;
      --  Delayed CMP2 mode
      DELCMP         : TIMECR_DELCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : STM32_SVD.Bit := 16#0#;
      --  Timer x Repetition update
      TxREPU         : TIMECR_TxREPU_Field := 16#0#;
      --  Timerx reset update
      TxRSTU         : TIMECR_TxRSTU_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : STM32_SVD.Bit := 16#0#;
      --  TBU
      TBU            : TIMECR_TBU_Field := 16#0#;
      --  TCU
      TCU            : TIMECR_TCU_Field := 16#0#;
      --  TDU
      TDU            : TIMECR_TDU_Field := 16#0#;
      --  TEU
      TEU            : TIMECR_TEU_Field := 16#0#;
      --  Master Timer update
      MSTU           : TIMECR_MSTU_Field := 16#0#;
      --  AC Synchronization
      DACSYNC        : TIMECR_DACSYNC_Field := 16#0#;
      --  Preload enable
      PREEN          : TIMECR_PREEN_Field := 16#0#;
      --  Update Gating
      UPDGAT         : TIMECR_UPDGAT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMECR_Register use record
      CK_PSCx        at 0 range 0 .. 2;
      CONT           at 0 range 3 .. 3;
      RETRIG         at 0 range 4 .. 4;
      HALF           at 0 range 5 .. 5;
      PSHPLL         at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      SYNCRSTx       at 0 range 10 .. 10;
      SYNCSTRTx      at 0 range 11 .. 11;
      DELCMP         at 0 range 12 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      TxREPU         at 0 range 17 .. 17;
      TxRSTU         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TBU            at 0 range 20 .. 20;
      TCU            at 0 range 21 .. 21;
      TDU            at 0 range 22 .. 22;
      TEU            at 0 range 23 .. 23;
      MSTU           at 0 range 24 .. 24;
      DACSYNC        at 0 range 25 .. 26;
      PREEN          at 0 range 27 .. 27;
      UPDGAT         at 0 range 28 .. 31;
   end record;

   --  TIMEISR_CMP array element
   subtype TIMEISR_CMP_Element is STM32_SVD.Bit;

   --  TIMEISR_CMP array
   type TIMEISR_CMP_Field_Array is array (1 .. 4) of TIMEISR_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMEISR_CMP
   type TIMEISR_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : TIMEISR_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMEISR_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TIMEISR_REP_Field is STM32_SVD.Bit;
   subtype TIMEISR_UPD_Field is STM32_SVD.Bit;
   --  TIMEISR_CPT array element
   subtype TIMEISR_CPT_Element is STM32_SVD.Bit;

   --  TIMEISR_CPT array
   type TIMEISR_CPT_Field_Array is array (1 .. 2) of TIMEISR_CPT_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMEISR_CPT
   type TIMEISR_CPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPT as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  CPT as an array
            Arr : TIMEISR_CPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMEISR_CPT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype TIMEISR_SETx1_Field is STM32_SVD.Bit;
   subtype TIMEISR_RSTx1_Field is STM32_SVD.Bit;
   subtype TIMEISR_SETx2_Field is STM32_SVD.Bit;
   subtype TIMEISR_RSTx2_Field is STM32_SVD.Bit;
   subtype TIMEISR_RST_Field is STM32_SVD.Bit;
   subtype TIMEISR_DLYPRT_Field is STM32_SVD.Bit;
   subtype TIMEISR_CPPSTAT_Field is STM32_SVD.Bit;
   subtype TIMEISR_IPPSTAT_Field is STM32_SVD.Bit;
   subtype TIMEISR_O1STAT_Field is STM32_SVD.Bit;
   subtype TIMEISR_O2STAT_Field is STM32_SVD.Bit;

   --  Timerx Interrupt Status Register
   type TIMEISR_Register is record
      --  Read-only. Compare 1 Interrupt Flag
      CMP            : TIMEISR_CMP_Field;
      --  Read-only. Repetition Interrupt Flag
      REP            : TIMEISR_REP_Field;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit;
      --  Read-only. Update Interrupt Flag
      UPD            : TIMEISR_UPD_Field;
      --  Read-only. Capture1 Interrupt Flag
      CPT            : TIMEISR_CPT_Field;
      --  Read-only. Output 1 Set Interrupt Flag
      SETx1          : TIMEISR_SETx1_Field;
      --  Read-only. Output 1 Reset Interrupt Flag
      RSTx1          : TIMEISR_RSTx1_Field;
      --  Read-only. Output 2 Set Interrupt Flag
      SETx2          : TIMEISR_SETx2_Field;
      --  Read-only. Output 2 Reset Interrupt Flag
      RSTx2          : TIMEISR_RSTx2_Field;
      --  Read-only. Reset Interrupt Flag
      RST            : TIMEISR_RST_Field;
      --  Read-only. Delayed Protection Flag
      DLYPRT         : TIMEISR_DLYPRT_Field;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit;
      --  Read-only. Current Push Pull Status
      CPPSTAT        : TIMEISR_CPPSTAT_Field;
      --  Read-only. Idle Push Pull Status
      IPPSTAT        : TIMEISR_IPPSTAT_Field;
      --  Read-only. Output 1 State
      O1STAT         : TIMEISR_O1STAT_Field;
      --  Read-only. Output 2 State
      O2STAT         : TIMEISR_O2STAT_Field;
      --  unspecified
      Reserved_20_31 : STM32_SVD.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMEISR_Register use record
      CMP            at 0 range 0 .. 3;
      REP            at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPD            at 0 range 6 .. 6;
      CPT            at 0 range 7 .. 8;
      SETx1          at 0 range 9 .. 9;
      RSTx1          at 0 range 10 .. 10;
      SETx2          at 0 range 11 .. 11;
      RSTx2          at 0 range 12 .. 12;
      RST            at 0 range 13 .. 13;
      DLYPRT         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CPPSTAT        at 0 range 16 .. 16;
      IPPSTAT        at 0 range 17 .. 17;
      O1STAT         at 0 range 18 .. 18;
      O2STAT         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIMEICR_CMP1C_Field is STM32_SVD.Bit;
   subtype TIMEICR_CMP2C_Field is STM32_SVD.Bit;
   subtype TIMEICR_CMP3C_Field is STM32_SVD.Bit;
   subtype TIMEICR_CMP4C_Field is STM32_SVD.Bit;
   subtype TIMEICR_REPC_Field is STM32_SVD.Bit;
   subtype TIMEICR_UPDC_Field is STM32_SVD.Bit;
   subtype TIMEICR_CPT1C_Field is STM32_SVD.Bit;
   subtype TIMEICR_CPT2C_Field is STM32_SVD.Bit;
   subtype TIMEICR_SET1xC_Field is STM32_SVD.Bit;
   subtype TIMEICR_RSTx1C_Field is STM32_SVD.Bit;
   subtype TIMEICR_SET2xC_Field is STM32_SVD.Bit;
   subtype TIMEICR_RSTx2C_Field is STM32_SVD.Bit;
   subtype TIMEICR_RSTC_Field is STM32_SVD.Bit;
   subtype TIMEICR_DLYPRTC_Field is STM32_SVD.Bit;

   --  Timerx Interrupt Clear Register
   type TIMEICR_Register is record
      --  Write-only. Compare 1 Interrupt flag Clear
      CMP1C          : TIMEICR_CMP1C_Field := 16#0#;
      --  Write-only. Compare 2 Interrupt flag Clear
      CMP2C          : TIMEICR_CMP2C_Field := 16#0#;
      --  Write-only. Compare 3 Interrupt flag Clear
      CMP3C          : TIMEICR_CMP3C_Field := 16#0#;
      --  Write-only. Compare 4 Interrupt flag Clear
      CMP4C          : TIMEICR_CMP4C_Field := 16#0#;
      --  Write-only. Repetition Interrupt flag Clear
      REPC           : TIMEICR_REPC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  Write-only. Update Interrupt flag Clear
      UPDC           : TIMEICR_UPDC_Field := 16#0#;
      --  Write-only. Capture1 Interrupt flag Clear
      CPT1C          : TIMEICR_CPT1C_Field := 16#0#;
      --  Write-only. Capture2 Interrupt flag Clear
      CPT2C          : TIMEICR_CPT2C_Field := 16#0#;
      --  Write-only. Output 1 Set flag Clear
      SET1xC         : TIMEICR_SET1xC_Field := 16#0#;
      --  Write-only. Output 1 Reset flag Clear
      RSTx1C         : TIMEICR_RSTx1C_Field := 16#0#;
      --  Write-only. Output 2 Set flag Clear
      SET2xC         : TIMEICR_SET2xC_Field := 16#0#;
      --  Write-only. Output 2 Reset flag Clear
      RSTx2C         : TIMEICR_RSTx2C_Field := 16#0#;
      --  Write-only. Reset Interrupt flag Clear
      RSTC           : TIMEICR_RSTC_Field := 16#0#;
      --  Write-only. Delayed Protection Flag Clear
      DLYPRTC        : TIMEICR_DLYPRTC_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMEICR_Register use record
      CMP1C          at 0 range 0 .. 0;
      CMP2C          at 0 range 1 .. 1;
      CMP3C          at 0 range 2 .. 2;
      CMP4C          at 0 range 3 .. 3;
      REPC           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPDC           at 0 range 6 .. 6;
      CPT1C          at 0 range 7 .. 7;
      CPT2C          at 0 range 8 .. 8;
      SET1xC         at 0 range 9 .. 9;
      RSTx1C         at 0 range 10 .. 10;
      SET2xC         at 0 range 11 .. 11;
      RSTx2C         at 0 range 12 .. 12;
      RSTC           at 0 range 13 .. 13;
      DLYPRTC        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype TIMEDIER5_CMP1IE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CMP2IE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CMP3IE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CMP4IE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_REPIE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_UPDIE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CPT1IE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CPT2IE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_SET1xIE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_RSTx1IE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_SETx2IE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_RSTx2IE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_RSTIE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_DLYPRTIE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CMP1DE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CMP2DE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CMP3DE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CMP4DE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_REPDE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_UPDDE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CPT1DE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_CPT2DE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_SET1xDE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_RSTx1DE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_SETx2DE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_RSTx2DE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_RSTDE_Field is STM32_SVD.Bit;
   subtype TIMEDIER5_DLYPRTDE_Field is STM32_SVD.Bit;

   --  TIMxDIER5
   type TIMEDIER5_Register is record
      --  CMP1IE
      CMP1IE         : TIMEDIER5_CMP1IE_Field := 16#0#;
      --  CMP2IE
      CMP2IE         : TIMEDIER5_CMP2IE_Field := 16#0#;
      --  CMP3IE
      CMP3IE         : TIMEDIER5_CMP3IE_Field := 16#0#;
      --  CMP4IE
      CMP4IE         : TIMEDIER5_CMP4IE_Field := 16#0#;
      --  REPIE
      REPIE          : TIMEDIER5_REPIE_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  UPDIE
      UPDIE          : TIMEDIER5_UPDIE_Field := 16#0#;
      --  CPT1IE
      CPT1IE         : TIMEDIER5_CPT1IE_Field := 16#0#;
      --  CPT2IE
      CPT2IE         : TIMEDIER5_CPT2IE_Field := 16#0#;
      --  SET1xIE
      SET1xIE        : TIMEDIER5_SET1xIE_Field := 16#0#;
      --  RSTx1IE
      RSTx1IE        : TIMEDIER5_RSTx1IE_Field := 16#0#;
      --  SETx2IE
      SETx2IE        : TIMEDIER5_SETx2IE_Field := 16#0#;
      --  RSTx2IE
      RSTx2IE        : TIMEDIER5_RSTx2IE_Field := 16#0#;
      --  RSTIE
      RSTIE          : TIMEDIER5_RSTIE_Field := 16#0#;
      --  DLYPRTIE
      DLYPRTIE       : TIMEDIER5_DLYPRTIE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  CMP1DE
      CMP1DE         : TIMEDIER5_CMP1DE_Field := 16#0#;
      --  CMP2DE
      CMP2DE         : TIMEDIER5_CMP2DE_Field := 16#0#;
      --  CMP3DE
      CMP3DE         : TIMEDIER5_CMP3DE_Field := 16#0#;
      --  CMP4DE
      CMP4DE         : TIMEDIER5_CMP4DE_Field := 16#0#;
      --  REPDE
      REPDE          : TIMEDIER5_REPDE_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : STM32_SVD.Bit := 16#0#;
      --  UPDDE
      UPDDE          : TIMEDIER5_UPDDE_Field := 16#0#;
      --  CPT1DE
      CPT1DE         : TIMEDIER5_CPT1DE_Field := 16#0#;
      --  CPT2DE
      CPT2DE         : TIMEDIER5_CPT2DE_Field := 16#0#;
      --  SET1xDE
      SET1xDE        : TIMEDIER5_SET1xDE_Field := 16#0#;
      --  RSTx1DE
      RSTx1DE        : TIMEDIER5_RSTx1DE_Field := 16#0#;
      --  SETx2DE
      SETx2DE        : TIMEDIER5_SETx2DE_Field := 16#0#;
      --  RSTx2DE
      RSTx2DE        : TIMEDIER5_RSTx2DE_Field := 16#0#;
      --  RSTDE
      RSTDE          : TIMEDIER5_RSTDE_Field := 16#0#;
      --  DLYPRTDE
      DLYPRTDE       : TIMEDIER5_DLYPRTDE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMEDIER5_Register use record
      CMP1IE         at 0 range 0 .. 0;
      CMP2IE         at 0 range 1 .. 1;
      CMP3IE         at 0 range 2 .. 2;
      CMP4IE         at 0 range 3 .. 3;
      REPIE          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UPDIE          at 0 range 6 .. 6;
      CPT1IE         at 0 range 7 .. 7;
      CPT2IE         at 0 range 8 .. 8;
      SET1xIE        at 0 range 9 .. 9;
      RSTx1IE        at 0 range 10 .. 10;
      SETx2IE        at 0 range 11 .. 11;
      RSTx2IE        at 0 range 12 .. 12;
      RSTIE          at 0 range 13 .. 13;
      DLYPRTIE       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CMP1DE         at 0 range 16 .. 16;
      CMP2DE         at 0 range 17 .. 17;
      CMP3DE         at 0 range 18 .. 18;
      CMP4DE         at 0 range 19 .. 19;
      REPDE          at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      UPDDE          at 0 range 22 .. 22;
      CPT1DE         at 0 range 23 .. 23;
      CPT2DE         at 0 range 24 .. 24;
      SET1xDE        at 0 range 25 .. 25;
      RSTx1DE        at 0 range 26 .. 26;
      SETx2DE        at 0 range 27 .. 27;
      RSTx2DE        at 0 range 28 .. 28;
      RSTDE          at 0 range 29 .. 29;
      DLYPRTDE       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CNTER_CNTx_Field is STM32_SVD.UInt16;

   --  Timerx Counter Register
   type CNTER_Register is record
      --  Timerx Counter value
      CNTx           : CNTER_CNTx_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNTER_Register use record
      CNTx           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PERER_PERx_Field is STM32_SVD.UInt16;

   --  Timerx Period Register
   type PERER_Register is record
      --  Timerx Period value
      PERx           : PERER_PERx_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERER_Register use record
      PERx           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype REPER_REPx_Field is STM32_SVD.Byte;

   --  Timerx Repetition Register
   type REPER_Register is record
      --  Timerx Repetition counter value
      REPx          : REPER_REPx_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REPER_Register use record
      REPx          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CMP1ER_CMP1x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 1 Register
   type CMP1ER_Register is record
      --  Timerx Compare 1 value
      CMP1x          : CMP1ER_CMP1x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1ER_Register use record
      CMP1x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP1CER_CMP1x_Field is STM32_SVD.UInt16;
   subtype CMP1CER_REPx_Field is STM32_SVD.Byte;

   --  Timerx Compare 1 Compound Register
   type CMP1CER_Register is record
      --  Timerx Compare 1 value
      CMP1x          : CMP1CER_CMP1x_Field := 16#0#;
      --  Timerx Repetition value (aliased from HRTIM_REPx register)
      REPx           : CMP1CER_REPx_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1CER_Register use record
      CMP1x          at 0 range 0 .. 15;
      REPx           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CMP2ER_CMP2x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 2 Register
   type CMP2ER_Register is record
      --  Timerx Compare 2 value
      CMP2x          : CMP2ER_CMP2x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP2ER_Register use record
      CMP2x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP3ER_CMP3x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 3 Register
   type CMP3ER_Register is record
      --  Timerx Compare 3 value
      CMP3x          : CMP3ER_CMP3x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP3ER_Register use record
      CMP3x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMP4ER_CMP4x_Field is STM32_SVD.UInt16;

   --  Timerx Compare 4 Register
   type CMP4ER_Register is record
      --  Timerx Compare 4 value
      CMP4x          : CMP4ER_CMP4x_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP4ER_Register use record
      CMP4x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CPT1ER_CPT1x_Field is STM32_SVD.UInt16;

   --  Timerx Capture 1 Register
   type CPT1ER_Register is record
      --  Read-only. Timerx Capture 1 value
      CPT1x          : CPT1ER_CPT1x_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT1ER_Register use record
      CPT1x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CPT2ER_CPT2x_Field is STM32_SVD.UInt16;

   --  Timerx Capture 2 Register
   type CPT2ER_Register is record
      --  Read-only. Timerx Capture 2 value
      CPT2x          : CPT2ER_CPT2x_Field;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT2ER_Register use record
      CPT2x          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DTER_DTRx_Field is STM32_SVD.UInt9;
   subtype DTER_SDTRx_Field is STM32_SVD.Bit;
   subtype DTER_DTPRSC_Field is STM32_SVD.UInt3;
   subtype DTER_DTRSLKx_Field is STM32_SVD.Bit;
   subtype DTER_DTRLKx_Field is STM32_SVD.Bit;
   subtype DTER_DTFx_Field is STM32_SVD.UInt9;
   subtype DTER_SDTFx_Field is STM32_SVD.Bit;
   subtype DTER_DTFSLKx_Field is STM32_SVD.Bit;
   subtype DTER_DTFLKx_Field is STM32_SVD.Bit;

   --  Timerx Deadtime Register
   type DTER_Register is record
      --  Deadtime Rising value
      DTRx           : DTER_DTRx_Field := 16#0#;
      --  Sign Deadtime Rising value
      SDTRx          : DTER_SDTRx_Field := 16#0#;
      --  Deadtime Prescaler
      DTPRSC         : DTER_DTPRSC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32_SVD.Bit := 16#0#;
      --  Deadtime Rising Sign Lock
      DTRSLKx        : DTER_DTRSLKx_Field := 16#0#;
      --  Deadtime Rising Lock
      DTRLKx         : DTER_DTRLKx_Field := 16#0#;
      --  Deadtime Falling value
      DTFx           : DTER_DTFx_Field := 16#0#;
      --  Sign Deadtime Falling value
      SDTFx          : DTER_SDTFx_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : STM32_SVD.UInt4 := 16#0#;
      --  Deadtime Falling Sign Lock
      DTFSLKx        : DTER_DTFSLKx_Field := 16#0#;
      --  Deadtime Falling Lock
      DTFLKx         : DTER_DTFLKx_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTER_Register use record
      DTRx           at 0 range 0 .. 8;
      SDTRx          at 0 range 9 .. 9;
      DTPRSC         at 0 range 10 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      DTRSLKx        at 0 range 14 .. 14;
      DTRLKx         at 0 range 15 .. 15;
      DTFx           at 0 range 16 .. 24;
      SDTFx          at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      DTFSLKx        at 0 range 30 .. 30;
      DTFLKx         at 0 range 31 .. 31;
   end record;

   subtype SETE1R_SST_Field is STM32_SVD.Bit;
   subtype SETE1R_RESYNC_Field is STM32_SVD.Bit;
   subtype SETE1R_PER_Field is STM32_SVD.Bit;
   --  SETE1R_CMP array element
   subtype SETE1R_CMP_Element is STM32_SVD.Bit;

   --  SETE1R_CMP array
   type SETE1R_CMP_Field_Array is array (1 .. 4) of SETE1R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETE1R_CMP
   type SETE1R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : SETE1R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETE1R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SETE1R_MSTPER_Field is STM32_SVD.Bit;
   --  SETE1R_MSTCMP array element
   subtype SETE1R_MSTCMP_Element is STM32_SVD.Bit;

   --  SETE1R_MSTCMP array
   type SETE1R_MSTCMP_Field_Array is array (1 .. 4) of SETE1R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETE1R_MSTCMP
   type SETE1R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : SETE1R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETE1R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SETE1R_TIMEVNT array element
   subtype SETE1R_TIMEVNT_Element is STM32_SVD.Bit;

   --  SETE1R_TIMEVNT array
   type SETE1R_TIMEVNT_Field_Array is array (1 .. 9)
     of SETE1R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for SETE1R_TIMEVNT
   type SETE1R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : SETE1R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for SETE1R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  SETE1R_EXTEVNT array element
   subtype SETE1R_EXTEVNT_Element is STM32_SVD.Bit;

   --  SETE1R_EXTEVNT array
   type SETE1R_EXTEVNT_Field_Array is array (1 .. 10)
     of SETE1R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for SETE1R_EXTEVNT
   type SETE1R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : SETE1R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SETE1R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype SETE1R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output1 Set Register
   type SETE1R_Register is record
      --  Software Set trigger
      SST     : SETE1R_SST_Field := 16#0#;
      --  Timer A resynchronizaton
      RESYNC  : SETE1R_RESYNC_Field := 16#0#;
      --  Timer A Period
      PER     : SETE1R_PER_Field := 16#0#;
      --  Timer A compare 1
      CMP     : SETE1R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  Master Period
      MSTPER  : SETE1R_MSTPER_Field := 16#0#;
      --  Master Compare 1
      MSTCMP  : SETE1R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  Timer Event 1
      TIMEVNT : SETE1R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  External Event 1
      EXTEVNT : SETE1R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  Registers update (transfer preload to active)
      UPDATE  : SETE1R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETE1R_Register use record
      SST     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype RSTE1R_SRT_Field is STM32_SVD.Bit;
   subtype RSTE1R_RESYNC_Field is STM32_SVD.Bit;
   subtype RSTE1R_PER_Field is STM32_SVD.Bit;
   --  RSTE1R_CMP array element
   subtype RSTE1R_CMP_Element is STM32_SVD.Bit;

   --  RSTE1R_CMP array
   type RSTE1R_CMP_Field_Array is array (1 .. 4) of RSTE1R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTE1R_CMP
   type RSTE1R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : RSTE1R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTE1R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RSTE1R_MSTPER_Field is STM32_SVD.Bit;
   --  RSTE1R_MSTCMP array element
   subtype RSTE1R_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTE1R_MSTCMP array
   type RSTE1R_MSTCMP_Field_Array is array (1 .. 4) of RSTE1R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTE1R_MSTCMP
   type RSTE1R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTE1R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTE1R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTE1R_TIMEVNT array element
   subtype RSTE1R_TIMEVNT_Element is STM32_SVD.Bit;

   --  RSTE1R_TIMEVNT array
   type RSTE1R_TIMEVNT_Field_Array is array (1 .. 9)
     of RSTE1R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for RSTE1R_TIMEVNT
   type RSTE1R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : RSTE1R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RSTE1R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RSTE1R_EXTEVNT array element
   subtype RSTE1R_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTE1R_EXTEVNT array
   type RSTE1R_EXTEVNT_Field_Array is array (1 .. 10)
     of RSTE1R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTE1R_EXTEVNT
   type RSTE1R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTE1R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTE1R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype RSTE1R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output1 Reset Register
   type RSTE1R_Register is record
      --  SRT
      SRT     : RSTE1R_SRT_Field := 16#0#;
      --  RESYNC
      RESYNC  : RSTE1R_RESYNC_Field := 16#0#;
      --  PER
      PER     : RSTE1R_PER_Field := 16#0#;
      --  CMP1
      CMP     : RSTE1R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : RSTE1R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : RSTE1R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : RSTE1R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : RSTE1R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : RSTE1R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTE1R_Register use record
      SRT     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype SETE2R_SST_Field is STM32_SVD.Bit;
   subtype SETE2R_RESYNC_Field is STM32_SVD.Bit;
   subtype SETE2R_PER_Field is STM32_SVD.Bit;
   --  SETE2R_CMP array element
   subtype SETE2R_CMP_Element is STM32_SVD.Bit;

   --  SETE2R_CMP array
   type SETE2R_CMP_Field_Array is array (1 .. 4) of SETE2R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETE2R_CMP
   type SETE2R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : SETE2R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETE2R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SETE2R_MSTPER_Field is STM32_SVD.Bit;
   --  SETE2R_MSTCMP array element
   subtype SETE2R_MSTCMP_Element is STM32_SVD.Bit;

   --  SETE2R_MSTCMP array
   type SETE2R_MSTCMP_Field_Array is array (1 .. 4) of SETE2R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SETE2R_MSTCMP
   type SETE2R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : SETE2R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SETE2R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SETE2R_TIMEVNT array element
   subtype SETE2R_TIMEVNT_Element is STM32_SVD.Bit;

   --  SETE2R_TIMEVNT array
   type SETE2R_TIMEVNT_Field_Array is array (1 .. 9)
     of SETE2R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for SETE2R_TIMEVNT
   type SETE2R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : SETE2R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for SETE2R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  SETE2R_EXTEVNT array element
   subtype SETE2R_EXTEVNT_Element is STM32_SVD.Bit;

   --  SETE2R_EXTEVNT array
   type SETE2R_EXTEVNT_Field_Array is array (1 .. 10)
     of SETE2R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for SETE2R_EXTEVNT
   type SETE2R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : SETE2R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SETE2R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype SETE2R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output2 Set Register
   type SETE2R_Register is record
      --  SST
      SST     : SETE2R_SST_Field := 16#0#;
      --  RESYNC
      RESYNC  : SETE2R_RESYNC_Field := 16#0#;
      --  PER
      PER     : SETE2R_PER_Field := 16#0#;
      --  CMP1
      CMP     : SETE2R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : SETE2R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : SETE2R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : SETE2R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : SETE2R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : SETE2R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETE2R_Register use record
      SST     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype RSTE2R_SRT_Field is STM32_SVD.Bit;
   subtype RSTE2R_RESYNC_Field is STM32_SVD.Bit;
   subtype RSTE2R_PER_Field is STM32_SVD.Bit;
   --  RSTE2R_CMP array element
   subtype RSTE2R_CMP_Element is STM32_SVD.Bit;

   --  RSTE2R_CMP array
   type RSTE2R_CMP_Field_Array is array (1 .. 4) of RSTE2R_CMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTE2R_CMP
   type RSTE2R_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CMP as an array
            Arr : RSTE2R_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTE2R_CMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RSTE2R_MSTPER_Field is STM32_SVD.Bit;
   --  RSTE2R_MSTCMP array element
   subtype RSTE2R_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTE2R_MSTCMP array
   type RSTE2R_MSTCMP_Field_Array is array (1 .. 4) of RSTE2R_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTE2R_MSTCMP
   type RSTE2R_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTE2R_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTE2R_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTE2R_TIMEVNT array element
   subtype RSTE2R_TIMEVNT_Element is STM32_SVD.Bit;

   --  RSTE2R_TIMEVNT array
   type RSTE2R_TIMEVNT_Field_Array is array (1 .. 9)
     of RSTE2R_TIMEVNT_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for RSTE2R_TIMEVNT
   type RSTE2R_TIMEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMEVNT as a value
            Val : STM32_SVD.UInt9;
         when True =>
            --  TIMEVNT as an array
            Arr : RSTE2R_TIMEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for RSTE2R_TIMEVNT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  RSTE2R_EXTEVNT array element
   subtype RSTE2R_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTE2R_EXTEVNT array
   type RSTE2R_EXTEVNT_Field_Array is array (1 .. 10)
     of RSTE2R_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTE2R_EXTEVNT
   type RSTE2R_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTE2R_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTE2R_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype RSTE2R_UPDATE_Field is STM32_SVD.Bit;

   --  Timerx Output2 Reset Register
   type RSTE2R_Register is record
      --  SRT
      SRT     : RSTE2R_SRT_Field := 16#0#;
      --  RESYNC
      RESYNC  : RSTE2R_RESYNC_Field := 16#0#;
      --  PER
      PER     : RSTE2R_PER_Field := 16#0#;
      --  CMP1
      CMP     : RSTE2R_CMP_Field := (As_Array => False, Val => 16#0#);
      --  MSTPER
      MSTPER  : RSTE2R_MSTPER_Field := 16#0#;
      --  MSTCMP1
      MSTCMP  : RSTE2R_MSTCMP_Field := (As_Array => False, Val => 16#0#);
      --  TIMEVNT1
      TIMEVNT : RSTE2R_TIMEVNT_Field := (As_Array => False, Val => 16#0#);
      --  EXTEVNT1
      EXTEVNT : RSTE2R_EXTEVNT_Field := (As_Array => False, Val => 16#0#);
      --  UPDATE
      UPDATE  : RSTE2R_UPDATE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTE2R_Register use record
      SRT     at 0 range 0 .. 0;
      RESYNC  at 0 range 1 .. 1;
      PER     at 0 range 2 .. 2;
      CMP     at 0 range 3 .. 6;
      MSTPER  at 0 range 7 .. 7;
      MSTCMP  at 0 range 8 .. 11;
      TIMEVNT at 0 range 12 .. 20;
      EXTEVNT at 0 range 21 .. 30;
      UPDATE  at 0 range 31 .. 31;
   end record;

   subtype EEFER1_EE1LTCH_Field is STM32_SVD.Bit;
   subtype EEFER1_EE1FLTR_Field is STM32_SVD.UInt4;
   subtype EEFER1_EE2LTCH_Field is STM32_SVD.Bit;
   subtype EEFER1_EE2FLTR_Field is STM32_SVD.UInt4;
   subtype EEFER1_EE3LTCH_Field is STM32_SVD.Bit;
   subtype EEFER1_EE3FLTR_Field is STM32_SVD.UInt4;
   subtype EEFER1_EE4LTCH_Field is STM32_SVD.Bit;
   subtype EEFER1_EE4FLTR_Field is STM32_SVD.UInt4;
   subtype EEFER1_EE5LTCH_Field is STM32_SVD.Bit;
   subtype EEFER1_EE5FLTR_Field is STM32_SVD.UInt4;

   --  Timerx External Event Filtering Register 1
   type EEFER1_Register is record
      --  External Event 1 latch
      EE1LTCH        : EEFER1_EE1LTCH_Field := 16#0#;
      --  External Event 1 filter
      EE1FLTR        : EEFER1_EE1FLTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 2 latch
      EE2LTCH        : EEFER1_EE2LTCH_Field := 16#0#;
      --  External Event 2 filter
      EE2FLTR        : EEFER1_EE2FLTR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 3 latch
      EE3LTCH        : EEFER1_EE3LTCH_Field := 16#0#;
      --  External Event 3 filter
      EE3FLTR        : EEFER1_EE3FLTR_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 4 latch
      EE4LTCH        : EEFER1_EE4LTCH_Field := 16#0#;
      --  External Event 4 filter
      EE4FLTR        : EEFER1_EE4FLTR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 5 latch
      EE5LTCH        : EEFER1_EE5LTCH_Field := 16#0#;
      --  External Event 5 filter
      EE5FLTR        : EEFER1_EE5FLTR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEFER1_Register use record
      EE1LTCH        at 0 range 0 .. 0;
      EE1FLTR        at 0 range 1 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE2LTCH        at 0 range 6 .. 6;
      EE2FLTR        at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE3LTCH        at 0 range 12 .. 12;
      EE3FLTR        at 0 range 13 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE4LTCH        at 0 range 18 .. 18;
      EE4FLTR        at 0 range 19 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE5LTCH        at 0 range 24 .. 24;
      EE5FLTR        at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype EEFER2_EE6LTCH_Field is STM32_SVD.Bit;
   subtype EEFER2_EE6FLTR_Field is STM32_SVD.UInt4;
   subtype EEFER2_EE7LTCH_Field is STM32_SVD.Bit;
   subtype EEFER2_EE7FLTR_Field is STM32_SVD.UInt4;
   subtype EEFER2_EE8LTCH_Field is STM32_SVD.Bit;
   subtype EEFER2_EE8FLTR_Field is STM32_SVD.UInt4;
   subtype EEFER2_EE9LTCH_Field is STM32_SVD.Bit;
   subtype EEFER2_EE9FLTR_Field is STM32_SVD.UInt4;
   subtype EEFER2_EE10LTCH_Field is STM32_SVD.Bit;
   subtype EEFER2_EE10FLTR_Field is STM32_SVD.UInt4;

   --  Timerx External Event Filtering Register 2
   type EEFER2_Register is record
      --  External Event 6 latch
      EE6LTCH        : EEFER2_EE6LTCH_Field := 16#0#;
      --  External Event 6 filter
      EE6FLTR        : EEFER2_EE6FLTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  External Event 7 latch
      EE7LTCH        : EEFER2_EE7LTCH_Field := 16#0#;
      --  External Event 7 filter
      EE7FLTR        : EEFER2_EE7FLTR_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  External Event 8 latch
      EE8LTCH        : EEFER2_EE8LTCH_Field := 16#0#;
      --  External Event 8 filter
      EE8FLTR        : EEFER2_EE8FLTR_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32_SVD.Bit := 16#0#;
      --  External Event 9 latch
      EE9LTCH        : EEFER2_EE9LTCH_Field := 16#0#;
      --  External Event 9 filter
      EE9FLTR        : EEFER2_EE9FLTR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  External Event 10 latch
      EE10LTCH       : EEFER2_EE10LTCH_Field := 16#0#;
      --  External Event 10 filter
      EE10FLTR       : EEFER2_EE10FLTR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : STM32_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEFER2_Register use record
      EE6LTCH        at 0 range 0 .. 0;
      EE6FLTR        at 0 range 1 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EE7LTCH        at 0 range 6 .. 6;
      EE7FLTR        at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EE8LTCH        at 0 range 12 .. 12;
      EE8FLTR        at 0 range 13 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EE9LTCH        at 0 range 18 .. 18;
      EE9FLTR        at 0 range 19 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EE10LTCH       at 0 range 24 .. 24;
      EE10FLTR       at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RSTER_UPDT_Field is STM32_SVD.Bit;
   --  RSTER_CMP array element
   subtype RSTER_CMP_Element is STM32_SVD.Bit;

   --  RSTER_CMP array
   type RSTER_CMP_Field_Array is array (2 .. 3) of RSTER_CMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for RSTER_CMP
   type RSTER_CMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  CMP as an array
            Arr : RSTER_CMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RSTER_CMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype RSTER_MSTPER_Field is STM32_SVD.Bit;
   --  RSTER_MSTCMP array element
   subtype RSTER_MSTCMP_Element is STM32_SVD.Bit;

   --  RSTER_MSTCMP array
   type RSTER_MSTCMP_Field_Array is array (1 .. 4) of RSTER_MSTCMP_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RSTER_MSTCMP
   type RSTER_MSTCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSTCMP as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  MSTCMP as an array
            Arr : RSTER_MSTCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RSTER_MSTCMP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RSTER_EXTEVNT array element
   subtype RSTER_EXTEVNT_Element is STM32_SVD.Bit;

   --  RSTER_EXTEVNT array
   type RSTER_EXTEVNT_Field_Array is array (1 .. 10) of RSTER_EXTEVNT_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for RSTER_EXTEVNT
   type RSTER_EXTEVNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTEVNT as a value
            Val : STM32_SVD.UInt10;
         when True =>
            --  EXTEVNT as an array
            Arr : RSTER_EXTEVNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RSTER_EXTEVNT_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  RSTER_TIMACMP array element
   subtype RSTER_TIMACMP_Element is STM32_SVD.Bit;

   --  RSTER_TIMACMP array
   type RSTER_TIMACMP_Field_Array is array (1 .. 3) of RSTER_TIMACMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTER_TIMACMP
   type RSTER_TIMACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMACMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMACMP as an array
            Arr : RSTER_TIMACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTER_TIMACMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTER_TIMBCMP array element
   subtype RSTER_TIMBCMP_Element is STM32_SVD.Bit;

   --  RSTER_TIMBCMP array
   type RSTER_TIMBCMP_Field_Array is array (1 .. 3) of RSTER_TIMBCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTER_TIMBCMP
   type RSTER_TIMBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMBCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMBCMP as an array
            Arr : RSTER_TIMBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTER_TIMBCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTER_TIMCCMP array element
   subtype RSTER_TIMCCMP_Element is STM32_SVD.Bit;

   --  RSTER_TIMCCMP array
   type RSTER_TIMCCMP_Field_Array is array (1 .. 3) of RSTER_TIMCCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTER_TIMCCMP
   type RSTER_TIMCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMCCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMCCMP as an array
            Arr : RSTER_TIMCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTER_TIMCCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RSTER_TIMDCMP array element
   subtype RSTER_TIMDCMP_Element is STM32_SVD.Bit;

   --  RSTER_TIMDCMP array
   type RSTER_TIMDCMP_Field_Array is array (1 .. 3) of RSTER_TIMDCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RSTER_TIMDCMP
   type RSTER_TIMDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMDCMP as a value
            Val : STM32_SVD.UInt3;
         when True =>
            --  TIMDCMP as an array
            Arr : RSTER_TIMDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RSTER_TIMDCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  TimerA Reset Register
   type RSTER_Register is record
      --  unspecified
      Reserved_0_0   : STM32_SVD.Bit := 16#0#;
      --  Timer A Update reset
      UPDT           : RSTER_UPDT_Field := 16#0#;
      --  Timer A compare 2 reset
      CMP            : RSTER_CMP_Field := (As_Array => False, Val => 16#0#);
      --  Master timer Period
      MSTPER         : RSTER_MSTPER_Field := 16#0#;
      --  Master compare 1
      MSTCMP         : RSTER_MSTCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  External Event 1
      EXTEVNT        : RSTER_EXTEVNT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer A Compare 1
      TIMACMP        : RSTER_TIMACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer B Compare 1
      TIMBCMP        : RSTER_TIMBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer C Compare 1
      TIMCCMP        : RSTER_TIMCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer D Compare 1
      TIMDCMP        : RSTER_TIMDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTER_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      UPDT           at 0 range 1 .. 1;
      CMP            at 0 range 2 .. 3;
      MSTPER         at 0 range 4 .. 4;
      MSTCMP         at 0 range 5 .. 8;
      EXTEVNT        at 0 range 9 .. 18;
      TIMACMP        at 0 range 19 .. 21;
      TIMBCMP        at 0 range 22 .. 24;
      TIMCCMP        at 0 range 25 .. 27;
      TIMDCMP        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CHPER_CHPFRQ_Field is STM32_SVD.UInt4;
   subtype CHPER_CHPDTY_Field is STM32_SVD.UInt3;
   subtype CHPER_STRTPW_Field is STM32_SVD.UInt4;

   --  Timerx Chopper Register
   type CHPER_Register is record
      --  Timerx carrier frequency value
      CHPFRQ         : CHPER_CHPFRQ_Field := 16#0#;
      --  Timerx chopper duty cycle value
      CHPDTY         : CHPER_CHPDTY_Field := 16#0#;
      --  STRTPW
      STRTPW         : CHPER_STRTPW_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : STM32_SVD.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHPER_Register use record
      CHPFRQ         at 0 range 0 .. 3;
      CHPDTY         at 0 range 4 .. 6;
      STRTPW         at 0 range 7 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype CPT1ECR_SWCPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_UDPCPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_EXEV1CPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_EXEV2CPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_EXEV3CPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_EXEV4CPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_EXEV5CPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_EXEV6CPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_EXEV7CPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_EXEV8CPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_EXEV9CPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_EXEV10CPT_Field is STM32_SVD.Bit;
   subtype CPT1ECR_TA1SET_Field is STM32_SVD.Bit;
   subtype CPT1ECR_TA1RST_Field is STM32_SVD.Bit;
   --  CPT1ECR_TACMP array element
   subtype CPT1ECR_TACMP_Element is STM32_SVD.Bit;

   --  CPT1ECR_TACMP array
   type CPT1ECR_TACMP_Field_Array is array (1 .. 2) of CPT1ECR_TACMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1ECR_TACMP
   type CPT1ECR_TACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TACMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TACMP as an array
            Arr : CPT1ECR_TACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1ECR_TACMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1ECR_TB1SET_Field is STM32_SVD.Bit;
   subtype CPT1ECR_TB1RST_Field is STM32_SVD.Bit;
   --  CPT1ECR_TBCMP array element
   subtype CPT1ECR_TBCMP_Element is STM32_SVD.Bit;

   --  CPT1ECR_TBCMP array
   type CPT1ECR_TBCMP_Field_Array is array (1 .. 2) of CPT1ECR_TBCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1ECR_TBCMP
   type CPT1ECR_TBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TBCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TBCMP as an array
            Arr : CPT1ECR_TBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1ECR_TBCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1ECR_TC1SET_Field is STM32_SVD.Bit;
   subtype CPT1ECR_TC1RST_Field is STM32_SVD.Bit;
   --  CPT1ECR_TCCMP array element
   subtype CPT1ECR_TCCMP_Element is STM32_SVD.Bit;

   --  CPT1ECR_TCCMP array
   type CPT1ECR_TCCMP_Field_Array is array (1 .. 2) of CPT1ECR_TCCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1ECR_TCCMP
   type CPT1ECR_TCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TCCMP as an array
            Arr : CPT1ECR_TCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1ECR_TCCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT1ECR_TD1SET_Field is STM32_SVD.Bit;
   subtype CPT1ECR_TD1RST_Field is STM32_SVD.Bit;
   --  CPT1ECR_TDCMP array element
   subtype CPT1ECR_TDCMP_Element is STM32_SVD.Bit;

   --  CPT1ECR_TDCMP array
   type CPT1ECR_TDCMP_Field_Array is array (1 .. 2) of CPT1ECR_TDCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT1ECR_TDCMP
   type CPT1ECR_TDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TDCMP as an array
            Arr : CPT1ECR_TDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT1ECR_TDCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Timerx Capture 2 Control Register
   type CPT1ECR_Register is record
      --  Software Capture
      SWCPT          : CPT1ECR_SWCPT_Field := 16#0#;
      --  Update Capture
      UDPCPT         : CPT1ECR_UDPCPT_Field := 16#0#;
      --  External Event 1 Capture
      EXEV1CPT       : CPT1ECR_EXEV1CPT_Field := 16#0#;
      --  External Event 2 Capture
      EXEV2CPT       : CPT1ECR_EXEV2CPT_Field := 16#0#;
      --  External Event 3 Capture
      EXEV3CPT       : CPT1ECR_EXEV3CPT_Field := 16#0#;
      --  External Event 4 Capture
      EXEV4CPT       : CPT1ECR_EXEV4CPT_Field := 16#0#;
      --  External Event 5 Capture
      EXEV5CPT       : CPT1ECR_EXEV5CPT_Field := 16#0#;
      --  External Event 6 Capture
      EXEV6CPT       : CPT1ECR_EXEV6CPT_Field := 16#0#;
      --  External Event 7 Capture
      EXEV7CPT       : CPT1ECR_EXEV7CPT_Field := 16#0#;
      --  External Event 8 Capture
      EXEV8CPT       : CPT1ECR_EXEV8CPT_Field := 16#0#;
      --  External Event 9 Capture
      EXEV9CPT       : CPT1ECR_EXEV9CPT_Field := 16#0#;
      --  External Event 10 Capture
      EXEV10CPT      : CPT1ECR_EXEV10CPT_Field := 16#0#;
      --  Timer A output 1 Set
      TA1SET         : CPT1ECR_TA1SET_Field := 16#0#;
      --  Timer A output 1 Reset
      TA1RST         : CPT1ECR_TA1RST_Field := 16#0#;
      --  Timer A Compare 1
      TACMP          : CPT1ECR_TACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer B output 1 Set
      TB1SET         : CPT1ECR_TB1SET_Field := 16#0#;
      --  Timer B output 1 Reset
      TB1RST         : CPT1ECR_TB1RST_Field := 16#0#;
      --  Timer B Compare 1
      TBCMP          : CPT1ECR_TBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer C output 1 Set
      TC1SET         : CPT1ECR_TC1SET_Field := 16#0#;
      --  Timer C output 1 Reset
      TC1RST         : CPT1ECR_TC1RST_Field := 16#0#;
      --  Timer C Compare 1
      TCCMP          : CPT1ECR_TCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer D output 1 Set
      TD1SET         : CPT1ECR_TD1SET_Field := 16#0#;
      --  Timer D output 1 Reset
      TD1RST         : CPT1ECR_TD1RST_Field := 16#0#;
      --  Timer D Compare 1
      TDCMP          : CPT1ECR_TDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : STM32_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT1ECR_Register use record
      SWCPT          at 0 range 0 .. 0;
      UDPCPT         at 0 range 1 .. 1;
      EXEV1CPT       at 0 range 2 .. 2;
      EXEV2CPT       at 0 range 3 .. 3;
      EXEV3CPT       at 0 range 4 .. 4;
      EXEV4CPT       at 0 range 5 .. 5;
      EXEV5CPT       at 0 range 6 .. 6;
      EXEV6CPT       at 0 range 7 .. 7;
      EXEV7CPT       at 0 range 8 .. 8;
      EXEV8CPT       at 0 range 9 .. 9;
      EXEV9CPT       at 0 range 10 .. 10;
      EXEV10CPT      at 0 range 11 .. 11;
      TA1SET         at 0 range 12 .. 12;
      TA1RST         at 0 range 13 .. 13;
      TACMP          at 0 range 14 .. 15;
      TB1SET         at 0 range 16 .. 16;
      TB1RST         at 0 range 17 .. 17;
      TBCMP          at 0 range 18 .. 19;
      TC1SET         at 0 range 20 .. 20;
      TC1RST         at 0 range 21 .. 21;
      TCCMP          at 0 range 22 .. 23;
      TD1SET         at 0 range 24 .. 24;
      TD1RST         at 0 range 25 .. 25;
      TDCMP          at 0 range 26 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CPT2ECR_SWCPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_UDPCPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_EXEV1CPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_EXEV2CPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_EXEV3CPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_EXEV4CPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_EXEV5CPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_EXEV6CPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_EXEV7CPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_EXEV8CPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_EXEV9CPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_EXEV10CPT_Field is STM32_SVD.Bit;
   subtype CPT2ECR_TA1SET_Field is STM32_SVD.Bit;
   subtype CPT2ECR_TA1RST_Field is STM32_SVD.Bit;
   --  CPT2ECR_TACMP array element
   subtype CPT2ECR_TACMP_Element is STM32_SVD.Bit;

   --  CPT2ECR_TACMP array
   type CPT2ECR_TACMP_Field_Array is array (1 .. 2) of CPT2ECR_TACMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2ECR_TACMP
   type CPT2ECR_TACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TACMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TACMP as an array
            Arr : CPT2ECR_TACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2ECR_TACMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2ECR_TB1SET_Field is STM32_SVD.Bit;
   subtype CPT2ECR_TB1RST_Field is STM32_SVD.Bit;
   --  CPT2ECR_TBCMP array element
   subtype CPT2ECR_TBCMP_Element is STM32_SVD.Bit;

   --  CPT2ECR_TBCMP array
   type CPT2ECR_TBCMP_Field_Array is array (1 .. 2) of CPT2ECR_TBCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2ECR_TBCMP
   type CPT2ECR_TBCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TBCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TBCMP as an array
            Arr : CPT2ECR_TBCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2ECR_TBCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2ECR_TC1SET_Field is STM32_SVD.Bit;
   subtype CPT2ECR_TC1RST_Field is STM32_SVD.Bit;
   --  CPT2ECR_TCCMP array element
   subtype CPT2ECR_TCCMP_Element is STM32_SVD.Bit;

   --  CPT2ECR_TCCMP array
   type CPT2ECR_TCCMP_Field_Array is array (1 .. 2) of CPT2ECR_TCCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2ECR_TCCMP
   type CPT2ECR_TCCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TCCMP as an array
            Arr : CPT2ECR_TCCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2ECR_TCCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CPT2ECR_TD1SET_Field is STM32_SVD.Bit;
   subtype CPT2ECR_TD1RST_Field is STM32_SVD.Bit;
   --  CPT2ECR_TDCMP array element
   subtype CPT2ECR_TDCMP_Element is STM32_SVD.Bit;

   --  CPT2ECR_TDCMP array
   type CPT2ECR_TDCMP_Field_Array is array (1 .. 2) of CPT2ECR_TDCMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CPT2ECR_TDCMP
   type CPT2ECR_TDCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDCMP as a value
            Val : STM32_SVD.UInt2;
         when True =>
            --  TDCMP as an array
            Arr : CPT2ECR_TDCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CPT2ECR_TDCMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CPT2xCR
   type CPT2ECR_Register is record
      --  Software Capture
      SWCPT          : CPT2ECR_SWCPT_Field := 16#0#;
      --  Update Capture
      UDPCPT         : CPT2ECR_UDPCPT_Field := 16#0#;
      --  External Event 1 Capture
      EXEV1CPT       : CPT2ECR_EXEV1CPT_Field := 16#0#;
      --  External Event 2 Capture
      EXEV2CPT       : CPT2ECR_EXEV2CPT_Field := 16#0#;
      --  External Event 3 Capture
      EXEV3CPT       : CPT2ECR_EXEV3CPT_Field := 16#0#;
      --  External Event 4 Capture
      EXEV4CPT       : CPT2ECR_EXEV4CPT_Field := 16#0#;
      --  External Event 5 Capture
      EXEV5CPT       : CPT2ECR_EXEV5CPT_Field := 16#0#;
      --  External Event 6 Capture
      EXEV6CPT       : CPT2ECR_EXEV6CPT_Field := 16#0#;
      --  External Event 7 Capture
      EXEV7CPT       : CPT2ECR_EXEV7CPT_Field := 16#0#;
      --  External Event 8 Capture
      EXEV8CPT       : CPT2ECR_EXEV8CPT_Field := 16#0#;
      --  External Event 9 Capture
      EXEV9CPT       : CPT2ECR_EXEV9CPT_Field := 16#0#;
      --  External Event 10 Capture
      EXEV10CPT      : CPT2ECR_EXEV10CPT_Field := 16#0#;
      --  Timer A output 1 Set
      TA1SET         : CPT2ECR_TA1SET_Field := 16#0#;
      --  Timer A output 1 Reset
      TA1RST         : CPT2ECR_TA1RST_Field := 16#0#;
      --  Timer A Compare 1
      TACMP          : CPT2ECR_TACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer B output 1 Set
      TB1SET         : CPT2ECR_TB1SET_Field := 16#0#;
      --  Timer B output 1 Reset
      TB1RST         : CPT2ECR_TB1RST_Field := 16#0#;
      --  Timer B Compare 1
      TBCMP          : CPT2ECR_TBCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer C output 1 Set
      TC1SET         : CPT2ECR_TC1SET_Field := 16#0#;
      --  Timer C output 1 Reset
      TC1RST         : CPT2ECR_TC1RST_Field := 16#0#;
      --  Timer C Compare 1
      TCCMP          : CPT2ECR_TCCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer D output 1 Set
      TD1SET         : CPT2ECR_TD1SET_Field := 16#0#;
      --  Timer D output 1 Reset
      TD1RST         : CPT2ECR_TD1RST_Field := 16#0#;
      --  Timer D Compare 1
      TDCMP          : CPT2ECR_TDCMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : STM32_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPT2ECR_Register use record
      SWCPT          at 0 range 0 .. 0;
      UDPCPT         at 0 range 1 .. 1;
      EXEV1CPT       at 0 range 2 .. 2;
      EXEV2CPT       at 0 range 3 .. 3;
      EXEV3CPT       at 0 range 4 .. 4;
      EXEV4CPT       at 0 range 5 .. 5;
      EXEV5CPT       at 0 range 6 .. 6;
      EXEV6CPT       at 0 range 7 .. 7;
      EXEV7CPT       at 0 range 8 .. 8;
      EXEV8CPT       at 0 range 9 .. 9;
      EXEV9CPT       at 0 range 10 .. 10;
      EXEV10CPT      at 0 range 11 .. 11;
      TA1SET         at 0 range 12 .. 12;
      TA1RST         at 0 range 13 .. 13;
      TACMP          at 0 range 14 .. 15;
      TB1SET         at 0 range 16 .. 16;
      TB1RST         at 0 range 17 .. 17;
      TBCMP          at 0 range 18 .. 19;
      TC1SET         at 0 range 20 .. 20;
      TC1RST         at 0 range 21 .. 21;
      TCCMP          at 0 range 22 .. 23;
      TD1SET         at 0 range 24 .. 24;
      TD1RST         at 0 range 25 .. 25;
      TDCMP          at 0 range 26 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype OUTER_POL1_Field is STM32_SVD.Bit;
   subtype OUTER_IDLEM1_Field is STM32_SVD.Bit;
   subtype OUTER_IDLES1_Field is STM32_SVD.Bit;
   subtype OUTER_FAULT1_Field is STM32_SVD.UInt2;
   subtype OUTER_CHP1_Field is STM32_SVD.Bit;
   subtype OUTER_DIDL1_Field is STM32_SVD.Bit;
   subtype OUTER_DTEN_Field is STM32_SVD.Bit;
   subtype OUTER_DLYPRTEN_Field is STM32_SVD.Bit;
   subtype OUTER_DLYPRT_Field is STM32_SVD.UInt3;
   subtype OUTER_POL2_Field is STM32_SVD.Bit;
   subtype OUTER_IDLEM2_Field is STM32_SVD.Bit;
   subtype OUTER_IDLES2_Field is STM32_SVD.Bit;
   subtype OUTER_FAULT2_Field is STM32_SVD.UInt2;
   subtype OUTER_CHP2_Field is STM32_SVD.Bit;
   subtype OUTER_DIDL2_Field is STM32_SVD.Bit;

   --  Timerx Output Register
   type OUTER_Register is record
      --  unspecified
      Reserved_0_0   : STM32_SVD.Bit := 16#0#;
      --  Output 1 polarity
      POL1           : OUTER_POL1_Field := 16#0#;
      --  Output 1 Idle mode
      IDLEM1         : OUTER_IDLEM1_Field := 16#0#;
      --  Output 1 Idle State
      IDLES1         : OUTER_IDLES1_Field := 16#0#;
      --  Output 1 Fault state
      FAULT1         : OUTER_FAULT1_Field := 16#0#;
      --  Output 1 Chopper enable
      CHP1           : OUTER_CHP1_Field := 16#0#;
      --  Output 1 Deadtime upon burst mode Idle entry
      DIDL1          : OUTER_DIDL1_Field := 16#0#;
      --  Deadtime enable
      DTEN           : OUTER_DTEN_Field := 16#0#;
      --  Delayed Protection Enable
      DLYPRTEN       : OUTER_DLYPRTEN_Field := 16#0#;
      --  Delayed Protection
      DLYPRT         : OUTER_DLYPRT_Field := 16#0#;
      --  unspecified
      Reserved_13_16 : STM32_SVD.UInt4 := 16#0#;
      --  Output 2 polarity
      POL2           : OUTER_POL2_Field := 16#0#;
      --  Output 2 Idle mode
      IDLEM2         : OUTER_IDLEM2_Field := 16#0#;
      --  Output 2 Idle State
      IDLES2         : OUTER_IDLES2_Field := 16#0#;
      --  Output 2 Fault state
      FAULT2         : OUTER_FAULT2_Field := 16#0#;
      --  Output 2 Chopper enable
      CHP2           : OUTER_CHP2_Field := 16#0#;
      --  Output 2 Deadtime upon burst mode Idle entry
      DIDL2          : OUTER_DIDL2_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTER_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      POL1           at 0 range 1 .. 1;
      IDLEM1         at 0 range 2 .. 2;
      IDLES1         at 0 range 3 .. 3;
      FAULT1         at 0 range 4 .. 5;
      CHP1           at 0 range 6 .. 6;
      DIDL1          at 0 range 7 .. 7;
      DTEN           at 0 range 8 .. 8;
      DLYPRTEN       at 0 range 9 .. 9;
      DLYPRT         at 0 range 10 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      POL2           at 0 range 17 .. 17;
      IDLEM2         at 0 range 18 .. 18;
      IDLES2         at 0 range 19 .. 19;
      FAULT2         at 0 range 20 .. 21;
      CHP2           at 0 range 22 .. 22;
      DIDL2          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLTER_FLT1EN_Field is STM32_SVD.Bit;
   subtype FLTER_FLT2EN_Field is STM32_SVD.Bit;
   subtype FLTER_FLT3EN_Field is STM32_SVD.Bit;
   subtype FLTER_FLT4EN_Field is STM32_SVD.Bit;
   subtype FLTER_FLT5EN_Field is STM32_SVD.Bit;
   subtype FLTER_FLTLCK_Field is STM32_SVD.Bit;

   --  Timerx Fault Register
   type FLTER_Register is record
      --  Fault 1 enable
      FLT1EN        : FLTER_FLT1EN_Field := 16#0#;
      --  Fault 2 enable
      FLT2EN        : FLTER_FLT2EN_Field := 16#0#;
      --  Fault 3 enable
      FLT3EN        : FLTER_FLT3EN_Field := 16#0#;
      --  Fault 4 enable
      FLT4EN        : FLTER_FLT4EN_Field := 16#0#;
      --  Fault 5 enable
      FLT5EN        : FLTER_FLT5EN_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : STM32_SVD.UInt26 := 16#0#;
      --  Fault sources Lock
      FLTLCK        : FLTER_FLTLCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLTER_Register use record
      FLT1EN        at 0 range 0 .. 0;
      FLT2EN        at 0 range 1 .. 1;
      FLT3EN        at 0 range 2 .. 2;
      FLT4EN        at 0 range 3 .. 3;
      FLT5EN        at 0 range 4 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      FLTLCK        at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  High Resolution Timer: Common functions
   type HRTIM_Common_Peripheral is record
      --  Control Register 1
      CR1     : aliased CR1_Register;
      --  Control Register 2
      CR2     : aliased CR2_Register;
      --  Interrupt Status Register
      ISR     : aliased ISR_Register;
      --  Interrupt Clear Register
      ICR     : aliased ICR_Register;
      --  Interrupt Enable Register
      IER     : aliased IER_Register;
      --  Output Enable Register
      OENR    : aliased OENR_Register;
      --  DISR
      DISR    : aliased DISR_Register;
      --  Output Disable Status Register
      ODSR    : aliased ODSR_Register;
      --  Burst Mode Control Register
      BMCR    : aliased BMCR_Register;
      --  BMTRG
      BMTRG   : aliased BMTRG_Register;
      --  BMCMPR6
      BMCMPR6 : aliased BMCMPR6_Register;
      --  Burst Mode Period Register
      BMPER   : aliased BMPER_Register;
      --  Timer External Event Control Register 1
      EECR1   : aliased EECR1_Register;
      --  Timer External Event Control Register 2
      EECR2   : aliased EECR_Register;
      --  Timer External Event Control Register 3
      EECR3   : aliased EECR_Register;
      --  ADC Trigger 1 Register
      ADC1R   : aliased ADC1R_Register;
      --  ADC Trigger 2 Register
      ADC2R   : aliased ADC2R_Register;
      --  ADC Trigger 3 Register
      ADC3R   : aliased ADC3R_Register;
      --  ADC Trigger 4 Register
      ADC4R   : aliased ADC4R_Register;
      --  DLL Control Register
      DLLCR   : aliased DLLCR_Register;
      --  HRTIM Fault Input Register 1
      FLTINR1 : aliased FLTINR1_Register;
      --  HRTIM Fault Input Register 2
      FLTINR2 : aliased FLTINR2_Register;
      --  BDMUPDR
      BDMUPDR : aliased BDMUPDR_Register;
      --  Burst DMA Timerx update Register
      BDTxUPR : aliased BDTxUPR_Register;
      --  Burst DMA Data Register
      BDMADR  : aliased STM32_SVD.UInt32;
   end record
     with Volatile;

   for HRTIM_Common_Peripheral use record
      CR1     at 16#0# range 0 .. 31;
      CR2     at 16#4# range 0 .. 31;
      ISR     at 16#8# range 0 .. 31;
      ICR     at 16#C# range 0 .. 31;
      IER     at 16#10# range 0 .. 31;
      OENR    at 16#14# range 0 .. 31;
      DISR    at 16#18# range 0 .. 31;
      ODSR    at 16#1C# range 0 .. 31;
      BMCR    at 16#20# range 0 .. 31;
      BMTRG   at 16#24# range 0 .. 31;
      BMCMPR6 at 16#28# range 0 .. 31;
      BMPER   at 16#2C# range 0 .. 31;
      EECR1   at 16#30# range 0 .. 31;
      EECR2   at 16#34# range 0 .. 31;
      EECR3   at 16#38# range 0 .. 31;
      ADC1R   at 16#3C# range 0 .. 31;
      ADC2R   at 16#40# range 0 .. 31;
      ADC3R   at 16#44# range 0 .. 31;
      ADC4R   at 16#48# range 0 .. 31;
      DLLCR   at 16#4C# range 0 .. 31;
      FLTINR1 at 16#50# range 0 .. 31;
      FLTINR2 at 16#54# range 0 .. 31;
      BDMUPDR at 16#58# range 0 .. 31;
      BDTxUPR at 16#5C# range 0 .. 31;
      BDMADR  at 16#60# range 0 .. 31;
   end record;

   --  High Resolution Timer: Common functions
   HRTIM_Common_Periph : aliased HRTIM_Common_Peripheral
     with Import, Address => System'To_Address (16#40017780#);

   --  High Resolution Timer: Master Timers
   type HRTIM_Master_Peripheral is record
      --  Master Timer Control Register
      MCR    : aliased MCR_Register;
      --  Master Timer Interrupt Status Register
      MISR   : aliased MISR_Register;
      --  Master Timer Interrupt Clear Register
      MICR   : aliased MICR_Register;
      --  MDIER4
      MDIER4 : aliased MDIER4_Register;
      --  Master Timer Counter Register
      MCNTR  : aliased MCNTR_Register;
      --  Master Timer Period Register
      MPER   : aliased MPER_Register;
      --  Master Timer Repetition Register
      MREP   : aliased MREP_Register;
      --  Master Timer Compare 1 Register
      MCMP1R : aliased MCMP1R_Register;
      --  Master Timer Compare 2 Register
      MCMP2R : aliased MCMP2R_Register;
      --  Master Timer Compare 3 Register
      MCMP3R : aliased MCMP3R_Register;
      --  Master Timer Compare 4 Register
      MCMP4R : aliased MCMP4R_Register;
   end record
     with Volatile;

   for HRTIM_Master_Peripheral use record
      MCR    at 16#0# range 0 .. 31;
      MISR   at 16#4# range 0 .. 31;
      MICR   at 16#8# range 0 .. 31;
      MDIER4 at 16#C# range 0 .. 31;
      MCNTR  at 16#10# range 0 .. 31;
      MPER   at 16#14# range 0 .. 31;
      MREP   at 16#18# range 0 .. 31;
      MCMP1R at 16#1C# range 0 .. 31;
      MCMP2R at 16#24# range 0 .. 31;
      MCMP3R at 16#28# range 0 .. 31;
      MCMP4R at 16#2C# range 0 .. 31;
   end record;

   --  High Resolution Timer: Master Timers
   HRTIM_Master_Periph : aliased HRTIM_Master_Peripheral
     with Import, Address => System'To_Address (16#40017400#);

   --  High Resolution Timer: TIMA
   type HRTIM_TIMA_Peripheral is record
      --  Timerx Control Register
      TIMACR    : aliased TIMACR_Register;
      --  Timerx Interrupt Status Register
      TIMAISR   : aliased TIMAISR_Register;
      --  Timerx Interrupt Clear Register
      TIMAICR   : aliased TIMAICR_Register;
      --  TIMxDIER5
      TIMADIER5 : aliased TIMADIER5_Register;
      --  Timerx Counter Register
      CNTAR     : aliased CNTAR_Register;
      --  Timerx Period Register
      PERAR     : aliased PERAR_Register;
      --  Timerx Repetition Register
      REPAR     : aliased REPAR_Register;
      --  Timerx Compare 1 Register
      CMP1AR    : aliased CMP1AR_Register;
      --  Timerx Compare 1 Compound Register
      CMP1CAR   : aliased CMP1CAR_Register;
      --  Timerx Compare 2 Register
      CMP2AR    : aliased CMP2AR_Register;
      --  Timerx Compare 3 Register
      CMP3AR    : aliased CMP3AR_Register;
      --  Timerx Compare 4 Register
      CMP4AR    : aliased CMP4AR_Register;
      --  Timerx Capture 1 Register
      CPT1AR    : aliased CPT1AR_Register;
      --  Timerx Capture 2 Register
      CPT2AR    : aliased CPT2AR_Register;
      --  Timerx Deadtime Register
      DTAR      : aliased DTAR_Register;
      --  Timerx Output1 Set Register
      SETA1R    : aliased SETA1R_Register;
      --  Timerx Output1 Reset Register
      RSTA1R    : aliased RSTA1R_Register;
      --  Timerx Output2 Set Register
      SETA2R    : aliased SETA2R_Register;
      --  Timerx Output2 Reset Register
      RSTA2R    : aliased RSTA2R_Register;
      --  Timerx External Event Filtering Register 1
      EEFAR1    : aliased EEFAR1_Register;
      --  Timerx External Event Filtering Register 2
      EEFAR2    : aliased EEFAR2_Register;
      --  TimerA Reset Register
      RSTAR     : aliased RSTAR_Register;
      --  Timerx Chopper Register
      CHPAR     : aliased CHPAR_Register;
      --  Timerx Capture 2 Control Register
      CPT1ACR   : aliased CPT1ACR_Register;
      --  CPT2xCR
      CPT2ACR   : aliased CPT2ACR_Register;
      --  Timerx Output Register
      OUTAR     : aliased OUTAR_Register;
      --  Timerx Fault Register
      FLTAR     : aliased FLTAR_Register;
   end record
     with Volatile;

   for HRTIM_TIMA_Peripheral use record
      TIMACR    at 16#0# range 0 .. 31;
      TIMAISR   at 16#4# range 0 .. 31;
      TIMAICR   at 16#8# range 0 .. 31;
      TIMADIER5 at 16#C# range 0 .. 31;
      CNTAR     at 16#10# range 0 .. 31;
      PERAR     at 16#14# range 0 .. 31;
      REPAR     at 16#18# range 0 .. 31;
      CMP1AR    at 16#1C# range 0 .. 31;
      CMP1CAR   at 16#20# range 0 .. 31;
      CMP2AR    at 16#24# range 0 .. 31;
      CMP3AR    at 16#28# range 0 .. 31;
      CMP4AR    at 16#2C# range 0 .. 31;
      CPT1AR    at 16#30# range 0 .. 31;
      CPT2AR    at 16#34# range 0 .. 31;
      DTAR      at 16#38# range 0 .. 31;
      SETA1R    at 16#3C# range 0 .. 31;
      RSTA1R    at 16#40# range 0 .. 31;
      SETA2R    at 16#44# range 0 .. 31;
      RSTA2R    at 16#48# range 0 .. 31;
      EEFAR1    at 16#4C# range 0 .. 31;
      EEFAR2    at 16#50# range 0 .. 31;
      RSTAR     at 16#54# range 0 .. 31;
      CHPAR     at 16#58# range 0 .. 31;
      CPT1ACR   at 16#5C# range 0 .. 31;
      CPT2ACR   at 16#60# range 0 .. 31;
      OUTAR     at 16#64# range 0 .. 31;
      FLTAR     at 16#68# range 0 .. 31;
   end record;

   --  High Resolution Timer: TIMA
   HRTIM_TIMA_Periph : aliased HRTIM_TIMA_Peripheral
     with Import, Address => System'To_Address (16#40017480#);

   --  High Resolution Timer: TIMB
   type HRTIM_TIMB_Peripheral is record
      --  Timerx Control Register
      TIMBCR    : aliased TIMBCR_Register;
      --  Timerx Interrupt Status Register
      TIMBISR   : aliased TIMBISR_Register;
      --  Timerx Interrupt Clear Register
      TIMBICR   : aliased TIMBICR_Register;
      --  TIMxDIER5
      TIMBDIER5 : aliased TIMBDIER5_Register;
      --  Timerx Counter Register
      CNTR      : aliased CNTR_Register;
      --  Timerx Period Register
      PERBR     : aliased PERBR_Register;
      --  Timerx Repetition Register
      REPBR     : aliased REPBR_Register;
      --  Timerx Compare 1 Register
      CMP1BR    : aliased CMP1BR_Register;
      --  Timerx Compare 1 Compound Register
      CMP1CBR   : aliased CMP1CBR_Register;
      --  Timerx Compare 2 Register
      CMP2BR    : aliased CMP2BR_Register;
      --  Timerx Compare 3 Register
      CMP3BR    : aliased CMP3BR_Register;
      --  Timerx Compare 4 Register
      CMP4BR    : aliased CMP4BR_Register;
      --  Timerx Capture 1 Register
      CPT1BR    : aliased CPT1BR_Register;
      --  Timerx Capture 2 Register
      CPT2BR    : aliased CPT2BR_Register;
      --  Timerx Deadtime Register
      DTBR      : aliased DTBR_Register;
      --  Timerx Output1 Set Register
      SETB1R    : aliased SETB1R_Register;
      --  Timerx Output1 Reset Register
      RSTB1R    : aliased RSTB1R_Register;
      --  Timerx Output2 Set Register
      SETB2R    : aliased SETB2R_Register;
      --  Timerx Output2 Reset Register
      RSTB2R    : aliased RSTB2R_Register;
      --  Timerx External Event Filtering Register 1
      EEFBR1    : aliased EEFBR1_Register;
      --  Timerx External Event Filtering Register 2
      EEFBR2    : aliased EEFBR2_Register;
      --  TimerA Reset Register
      RSTBR     : aliased RSTBR_Register;
      --  Timerx Chopper Register
      CHPBR     : aliased CHPBR_Register;
      --  Timerx Capture 2 Control Register
      CPT1BCR   : aliased CPT1BCR_Register;
      --  CPT2xCR
      CPT2BCR   : aliased CPT2BCR_Register;
      --  Timerx Output Register
      OUTBR     : aliased OUTBR_Register;
      --  Timerx Fault Register
      FLTBR     : aliased FLTBR_Register;
   end record
     with Volatile;

   for HRTIM_TIMB_Peripheral use record
      TIMBCR    at 16#0# range 0 .. 31;
      TIMBISR   at 16#4# range 0 .. 31;
      TIMBICR   at 16#8# range 0 .. 31;
      TIMBDIER5 at 16#C# range 0 .. 31;
      CNTR      at 16#10# range 0 .. 31;
      PERBR     at 16#14# range 0 .. 31;
      REPBR     at 16#18# range 0 .. 31;
      CMP1BR    at 16#1C# range 0 .. 31;
      CMP1CBR   at 16#20# range 0 .. 31;
      CMP2BR    at 16#24# range 0 .. 31;
      CMP3BR    at 16#28# range 0 .. 31;
      CMP4BR    at 16#2C# range 0 .. 31;
      CPT1BR    at 16#30# range 0 .. 31;
      CPT2BR    at 16#34# range 0 .. 31;
      DTBR      at 16#38# range 0 .. 31;
      SETB1R    at 16#3C# range 0 .. 31;
      RSTB1R    at 16#40# range 0 .. 31;
      SETB2R    at 16#44# range 0 .. 31;
      RSTB2R    at 16#48# range 0 .. 31;
      EEFBR1    at 16#4C# range 0 .. 31;
      EEFBR2    at 16#50# range 0 .. 31;
      RSTBR     at 16#54# range 0 .. 31;
      CHPBR     at 16#58# range 0 .. 31;
      CPT1BCR   at 16#5C# range 0 .. 31;
      CPT2BCR   at 16#60# range 0 .. 31;
      OUTBR     at 16#64# range 0 .. 31;
      FLTBR     at 16#68# range 0 .. 31;
   end record;

   --  High Resolution Timer: TIMB
   HRTIM_TIMB_Periph : aliased HRTIM_TIMB_Peripheral
     with Import, Address => System'To_Address (16#40017500#);

   --  High Resolution Timer: TIMC
   type HRTIM_TIMC_Peripheral is record
      --  Timerx Control Register
      TIMCCR    : aliased TIMCCR_Register;
      --  Timerx Interrupt Status Register
      TIMCISR   : aliased TIMCISR_Register;
      --  Timerx Interrupt Clear Register
      TIMCICR   : aliased TIMCICR_Register;
      --  TIMxDIER5
      TIMCDIER5 : aliased TIMCDIER5_Register;
      --  Timerx Counter Register
      CNTCR     : aliased CNTCR_Register;
      --  Timerx Period Register
      PERCR     : aliased PERCR_Register;
      --  Timerx Repetition Register
      REPCR     : aliased REPCR_Register;
      --  Timerx Compare 1 Register
      CMP1CR    : aliased CMP1CR_Register;
      --  Timerx Compare 1 Compound Register
      CMP1CCR   : aliased CMP1CCR_Register;
      --  Timerx Compare 2 Register
      CMP2CR    : aliased CMP2CR_Register;
      --  Timerx Compare 3 Register
      CMP3CR    : aliased CMP3CR_Register;
      --  Timerx Compare 4 Register
      CMP4CR    : aliased CMP4CR_Register;
      --  Timerx Capture 1 Register
      CPT1CR    : aliased CPT1CR_Register;
      --  Timerx Capture 2 Register
      CPT2CR    : aliased CPT2CR_Register;
      --  Timerx Deadtime Register
      DTCR      : aliased DTCR_Register;
      --  Timerx Output1 Set Register
      SETC1R    : aliased SETC1R_Register;
      --  Timerx Output1 Reset Register
      RSTC1R    : aliased RSTC1R_Register;
      --  Timerx Output2 Set Register
      SETC2R    : aliased SETC2R_Register;
      --  Timerx Output2 Reset Register
      RSTC2R    : aliased RSTC2R_Register;
      --  Timerx External Event Filtering Register 1
      EEFCR1    : aliased EEFCR1_Register;
      --  Timerx External Event Filtering Register 2
      EEFCR2    : aliased EEFCR2_Register;
      --  TimerA Reset Register
      RSTCR     : aliased RSTCR_Register;
      --  Timerx Chopper Register
      CHPCR     : aliased CHPCR_Register;
      --  Timerx Capture 2 Control Register
      CPT1CCR   : aliased CPT1CCR_Register;
      --  CPT2xCR
      CPT2CCR   : aliased CPT2CCR_Register;
      --  Timerx Output Register
      OUTCR     : aliased OUTCR_Register;
      --  Timerx Fault Register
      FLTCR     : aliased FLTCR_Register;
   end record
     with Volatile;

   for HRTIM_TIMC_Peripheral use record
      TIMCCR    at 16#0# range 0 .. 31;
      TIMCISR   at 16#4# range 0 .. 31;
      TIMCICR   at 16#8# range 0 .. 31;
      TIMCDIER5 at 16#C# range 0 .. 31;
      CNTCR     at 16#10# range 0 .. 31;
      PERCR     at 16#14# range 0 .. 31;
      REPCR     at 16#18# range 0 .. 31;
      CMP1CR    at 16#1C# range 0 .. 31;
      CMP1CCR   at 16#20# range 0 .. 31;
      CMP2CR    at 16#24# range 0 .. 31;
      CMP3CR    at 16#28# range 0 .. 31;
      CMP4CR    at 16#2C# range 0 .. 31;
      CPT1CR    at 16#30# range 0 .. 31;
      CPT2CR    at 16#34# range 0 .. 31;
      DTCR      at 16#38# range 0 .. 31;
      SETC1R    at 16#3C# range 0 .. 31;
      RSTC1R    at 16#40# range 0 .. 31;
      SETC2R    at 16#44# range 0 .. 31;
      RSTC2R    at 16#48# range 0 .. 31;
      EEFCR1    at 16#4C# range 0 .. 31;
      EEFCR2    at 16#50# range 0 .. 31;
      RSTCR     at 16#54# range 0 .. 31;
      CHPCR     at 16#58# range 0 .. 31;
      CPT1CCR   at 16#5C# range 0 .. 31;
      CPT2CCR   at 16#60# range 0 .. 31;
      OUTCR     at 16#64# range 0 .. 31;
      FLTCR     at 16#68# range 0 .. 31;
   end record;

   --  High Resolution Timer: TIMC
   HRTIM_TIMC_Periph : aliased HRTIM_TIMC_Peripheral
     with Import, Address => System'To_Address (16#40017580#);

   --  High Resolution Timer: TIMD
   type HRTIM_TIMD_Peripheral is record
      --  Timerx Control Register
      TIMDCR    : aliased TIMDCR_Register;
      --  Timerx Interrupt Status Register
      TIMDISR   : aliased TIMDISR_Register;
      --  Timerx Interrupt Clear Register
      TIMDICR   : aliased TIMDICR_Register;
      --  TIMxDIER5
      TIMDDIER5 : aliased TIMDDIER5_Register;
      --  Timerx Counter Register
      CNTDR     : aliased CNTDR_Register;
      --  Timerx Period Register
      PERDR     : aliased PERDR_Register;
      --  Timerx Repetition Register
      REPDR     : aliased REPDR_Register;
      --  Timerx Compare 1 Register
      CMP1DR    : aliased CMP1DR_Register;
      --  Timerx Compare 1 Compound Register
      CMP1CDR   : aliased CMP1CDR_Register;
      --  Timerx Compare 2 Register
      CMP2DR    : aliased CMP2DR_Register;
      --  Timerx Compare 3 Register
      CMP3DR    : aliased CMP3DR_Register;
      --  Timerx Compare 4 Register
      CMP4DR    : aliased CMP4DR_Register;
      --  Timerx Capture 1 Register
      CPT1DR    : aliased CPT1DR_Register;
      --  Timerx Capture 2 Register
      CPT2DR    : aliased CPT2DR_Register;
      --  Timerx Deadtime Register
      DTDR      : aliased DTDR_Register;
      --  Timerx Output1 Set Register
      SETD1R    : aliased SETD1R_Register;
      --  Timerx Output1 Reset Register
      RSTD1R    : aliased RSTD1R_Register;
      --  Timerx Output2 Set Register
      SETD2R    : aliased SETD2R_Register;
      --  Timerx Output2 Reset Register
      RSTD2R    : aliased RSTD2R_Register;
      --  Timerx External Event Filtering Register 1
      EEFDR1    : aliased EEFDR1_Register;
      --  Timerx External Event Filtering Register 2
      EEFDR2    : aliased EEFDR2_Register;
      --  TimerA Reset Register
      RSTDR     : aliased RSTDR_Register;
      --  Timerx Chopper Register
      CHPDR     : aliased CHPDR_Register;
      --  Timerx Capture 2 Control Register
      CPT1DCR   : aliased CPT1DCR_Register;
      --  CPT2xCR
      CPT2DCR   : aliased CPT2DCR_Register;
      --  Timerx Output Register
      OUTDR     : aliased OUTDR_Register;
      --  Timerx Fault Register
      FLTDR     : aliased FLTDR_Register;
   end record
     with Volatile;

   for HRTIM_TIMD_Peripheral use record
      TIMDCR    at 16#0# range 0 .. 31;
      TIMDISR   at 16#4# range 0 .. 31;
      TIMDICR   at 16#8# range 0 .. 31;
      TIMDDIER5 at 16#C# range 0 .. 31;
      CNTDR     at 16#10# range 0 .. 31;
      PERDR     at 16#14# range 0 .. 31;
      REPDR     at 16#18# range 0 .. 31;
      CMP1DR    at 16#1C# range 0 .. 31;
      CMP1CDR   at 16#20# range 0 .. 31;
      CMP2DR    at 16#24# range 0 .. 31;
      CMP3DR    at 16#28# range 0 .. 31;
      CMP4DR    at 16#2C# range 0 .. 31;
      CPT1DR    at 16#30# range 0 .. 31;
      CPT2DR    at 16#34# range 0 .. 31;
      DTDR      at 16#38# range 0 .. 31;
      SETD1R    at 16#3C# range 0 .. 31;
      RSTD1R    at 16#40# range 0 .. 31;
      SETD2R    at 16#44# range 0 .. 31;
      RSTD2R    at 16#48# range 0 .. 31;
      EEFDR1    at 16#4C# range 0 .. 31;
      EEFDR2    at 16#50# range 0 .. 31;
      RSTDR     at 16#54# range 0 .. 31;
      CHPDR     at 16#58# range 0 .. 31;
      CPT1DCR   at 16#5C# range 0 .. 31;
      CPT2DCR   at 16#60# range 0 .. 31;
      OUTDR     at 16#64# range 0 .. 31;
      FLTDR     at 16#68# range 0 .. 31;
   end record;

   --  High Resolution Timer: TIMD
   HRTIM_TIMD_Periph : aliased HRTIM_TIMD_Peripheral
     with Import, Address => System'To_Address (16#40017600#);

   --  High Resolution Timer: TIME
   type HRTIM_TIME_Peripheral is record
      --  Timerx Control Register
      TIMECR    : aliased TIMECR_Register;
      --  Timerx Interrupt Status Register
      TIMEISR   : aliased TIMEISR_Register;
      --  Timerx Interrupt Clear Register
      TIMEICR   : aliased TIMEICR_Register;
      --  TIMxDIER5
      TIMEDIER5 : aliased TIMEDIER5_Register;
      --  Timerx Counter Register
      CNTER     : aliased CNTER_Register;
      --  Timerx Period Register
      PERER     : aliased PERER_Register;
      --  Timerx Repetition Register
      REPER     : aliased REPER_Register;
      --  Timerx Compare 1 Register
      CMP1ER    : aliased CMP1ER_Register;
      --  Timerx Compare 1 Compound Register
      CMP1CER   : aliased CMP1CER_Register;
      --  Timerx Compare 2 Register
      CMP2ER    : aliased CMP2ER_Register;
      --  Timerx Compare 3 Register
      CMP3ER    : aliased CMP3ER_Register;
      --  Timerx Compare 4 Register
      CMP4ER    : aliased CMP4ER_Register;
      --  Timerx Capture 1 Register
      CPT1ER    : aliased CPT1ER_Register;
      --  Timerx Capture 2 Register
      CPT2ER    : aliased CPT2ER_Register;
      --  Timerx Deadtime Register
      DTER      : aliased DTER_Register;
      --  Timerx Output1 Set Register
      SETE1R    : aliased SETE1R_Register;
      --  Timerx Output1 Reset Register
      RSTE1R    : aliased RSTE1R_Register;
      --  Timerx Output2 Set Register
      SETE2R    : aliased SETE2R_Register;
      --  Timerx Output2 Reset Register
      RSTE2R    : aliased RSTE2R_Register;
      --  Timerx External Event Filtering Register 1
      EEFER1    : aliased EEFER1_Register;
      --  Timerx External Event Filtering Register 2
      EEFER2    : aliased EEFER2_Register;
      --  TimerA Reset Register
      RSTER     : aliased RSTER_Register;
      --  Timerx Chopper Register
      CHPER     : aliased CHPER_Register;
      --  Timerx Capture 2 Control Register
      CPT1ECR   : aliased CPT1ECR_Register;
      --  CPT2xCR
      CPT2ECR   : aliased CPT2ECR_Register;
      --  Timerx Output Register
      OUTER     : aliased OUTER_Register;
      --  Timerx Fault Register
      FLTER     : aliased FLTER_Register;
   end record
     with Volatile;

   for HRTIM_TIME_Peripheral use record
      TIMECR    at 16#0# range 0 .. 31;
      TIMEISR   at 16#4# range 0 .. 31;
      TIMEICR   at 16#8# range 0 .. 31;
      TIMEDIER5 at 16#C# range 0 .. 31;
      CNTER     at 16#10# range 0 .. 31;
      PERER     at 16#14# range 0 .. 31;
      REPER     at 16#18# range 0 .. 31;
      CMP1ER    at 16#1C# range 0 .. 31;
      CMP1CER   at 16#20# range 0 .. 31;
      CMP2ER    at 16#24# range 0 .. 31;
      CMP3ER    at 16#28# range 0 .. 31;
      CMP4ER    at 16#2C# range 0 .. 31;
      CPT1ER    at 16#30# range 0 .. 31;
      CPT2ER    at 16#34# range 0 .. 31;
      DTER      at 16#38# range 0 .. 31;
      SETE1R    at 16#3C# range 0 .. 31;
      RSTE1R    at 16#40# range 0 .. 31;
      SETE2R    at 16#44# range 0 .. 31;
      RSTE2R    at 16#48# range 0 .. 31;
      EEFER1    at 16#4C# range 0 .. 31;
      EEFER2    at 16#50# range 0 .. 31;
      RSTER     at 16#54# range 0 .. 31;
      CHPER     at 16#58# range 0 .. 31;
      CPT1ECR   at 16#5C# range 0 .. 31;
      CPT2ECR   at 16#60# range 0 .. 31;
      OUTER     at 16#64# range 0 .. 31;
      FLTER     at 16#68# range 0 .. 31;
   end record;

   --  High Resolution Timer: TIME
   HRTIM_TIME_Periph : aliased HRTIM_TIME_Peripheral
     with Import, Address => System'To_Address (16#40017680#);

end STM32_SVD.HRTIM;
