--  This spec has been automatically generated from STM32H7x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.VREFBUF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype VREFBUF_CSR_VRS_Field is STM32_SVD.UInt3;

   --  VREFBUF control and status register
   type VREFBUF_CSR_Register is record
      --  Voltage reference buffer mode enable This bit is used to enable the
      --  voltage reference buffer mode.
      ENVR          : Boolean := False;
      --  High impedance mode This bit controls the analog switch to connect or
      --  not the VREF+ pin. Refer to Table196: VREF buffer modes for the mode
      --  descriptions depending on ENVR bit configuration.
      HIZ           : Boolean := True;
      --  unspecified
      Reserved_2_2  : STM32_SVD.Bit := 16#0#;
      --  Read-only. Voltage reference buffer ready
      VRR           : Boolean := False;
      --  Voltage reference scale These bits select the value generated by the
      --  voltage reference buffer. Other: Reserved
      VRS           : VREFBUF_CSR_VRS_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : STM32_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREFBUF_CSR_Register use record
      ENVR          at 0 range 0 .. 0;
      HIZ           at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      VRR           at 0 range 3 .. 3;
      VRS           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype VREFBUF_CCR_TRIM_Field is STM32_SVD.UInt6;

   --  VREFBUF calibration control register
   type VREFBUF_CCR_Register is record
      --  Trimming code These bits are automatically initialized after reset
      --  with the trimming value stored in the Flash memory during the
      --  production test. Writing into these bits allows to tune the internal
      --  reference buffer voltage.
      TRIM          : VREFBUF_CCR_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : STM32_SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREFBUF_CCR_Register use record
      TRIM          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  VREFBUF
   type VREFBUF_Peripheral is record
      --  VREFBUF control and status register
      VREFBUF_CSR : aliased VREFBUF_CSR_Register;
      --  VREFBUF calibration control register
      VREFBUF_CCR : aliased VREFBUF_CCR_Register;
   end record
     with Volatile;

   for VREFBUF_Peripheral use record
      VREFBUF_CSR at 16#0# range 0 .. 31;
      VREFBUF_CCR at 16#4# range 0 .. 31;
   end record;

   --  VREFBUF
   VREFBUF_Periph : aliased VREFBUF_Peripheral
     with Import, Address => VREFBUF_Base;

end STM32_SVD.VREFBUF;