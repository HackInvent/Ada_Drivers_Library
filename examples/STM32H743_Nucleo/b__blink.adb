pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__blink.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__blink.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E49 : Short_Integer; pragma Import (Ada, E49, "system__bb__timing_events_E");
   E05 : Short_Integer; pragma Import (Ada, E05, "ada__real_time_E");
   E79 : Short_Integer; pragma Import (Ada, E79, "stm32__exti_E");
   E75 : Short_Integer; pragma Import (Ada, E75, "stm32__rcc_E");
   E88 : Short_Integer; pragma Import (Ada, E88, "stm32__spi_E");
   E73 : Short_Integer; pragma Import (Ada, E73, "stm32__gpio_E");
   E69 : Short_Integer; pragma Import (Ada, E69, "stm32__device_E");
   E77 : Short_Integer; pragma Import (Ada, E77, "stm32__syscfg_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);


   procedure adainit is
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");

      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      null;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;


      System.Bb.Timing_Events'Elab_Body;
      E49 := E49 + 1;
      Ada.Real_Time'Elab_Body;
      E05 := E05 + 1;
      E79 := E79 + 1;
      E75 := E75 + 1;
      STM32.SPI'ELAB_BODY;
      E88 := E88 + 1;
      STM32.DEVICE'ELAB_SPEC;
      E69 := E69 + 1;
      STM32.GPIO'ELAB_BODY;
      E73 := E73 + 1;
      E77 := E77 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_blink");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   /home/badr/hackinvent/Ada_Drivers_Library/examples/STM32H743_Nucleo/blink.o
   --   -L/home/badr/hackinvent/Ada_Drivers_Library/examples/STM32H743_Nucleo/
   --   -L/home/badr/hackinvent/Ada_Drivers_Library/examples/STM32H743_Nucleo/
   --   -L/home/badr/hackinvent/Ada_Drivers_Library/boards/stm32h743_nucleo/obj/sfp_lib_Debug/
   --   -L/home/badr/GNAT/2018-arm-elf/arm-eabi/lib/gnat/ravenscar-sfp-stm32h743nucleo/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
