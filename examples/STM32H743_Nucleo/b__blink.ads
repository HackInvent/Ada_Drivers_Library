pragma Warnings (Off);
pragma Ada_95;
pragma Restrictions (No_Exception_Propagation);
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is


   GNAT_Version : constant String :=
                    "GNAT Version: Community 2018 (20180524-73)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_blink" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure main;
   pragma Export (C, main, "main");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  ada.exceptions%s
   --  ada.exceptions%b
   --  interfaces.stm32%s
   --  interfaces.stm32.rcc%s
   --  system.bb%s
   --  system.bb.board_parameters%s
   --  system.bb.cpu_specific%s
   --  system.machine_code%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.secondary_stack%s
   --  system.secondary_stack%b
   --  ada.tags%s
   --  ada.tags%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.unsigned_types%s
   --  interfaces.stm32.pwr%s
   --  system.bb.mcu_parameters%s
   --  system.bb.mcu_parameters%b
   --  system.stm32%s
   --  system.bb.parameters%s
   --  system.stm32%b
   --  system.multiprocessors%s
   --  system.bb.time%s
   --  system.bb.timing_events%s
   --  system.bb.protection%s
   --  system.bb.interrupts%s
   --  system.bb.board_support%s
   --  system.multiprocessors%b
   --  system.multiprocessors.spin_locks%s
   --  system.multiprocessors.spin_locks%b
   --  system.bb.cpu_primitives%s
   --  system.bb.cpu_primitives.context_switch_trigger%s
   --  system.bb.cpu_primitives.context_switch_trigger%b
   --  system.bb.board_support%b
   --  system.multiprocessors.fair_locks%s
   --  system.bb.threads%s
   --  system.bb.threads.queues%s
   --  system.bb.threads.queues%b
   --  system.bb.interrupts%b
   --  system.bb.cpu_primitives%b
   --  system.os_interface%s
   --  system.multiprocessors.fair_locks%b
   --  system.bb.time%b
   --  system.bb.timing_events%b
   --  system.bb.protection%b
   --  system.bb.threads%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.task_primitives.operations%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.real_time.delays%s
   --  ada.real_time.delays%b
   --  system.assertions%s
   --  system.assertions%b
   --  hal%s
   --  stm32_svd%s
   --  stm32_svd.exti%s
   --  stm32_svd.flash%s
   --  stm32_svd.gpio%s
   --  stm32_svd.rcc%s
   --  stm32_svd.spi%s
   --  stm32_svd.syscfg%s
   --  hal.gpio%s
   --  hal.spi%s
   --  stm32%s
   --  stm32.exti%s
   --  stm32.exti%b
   --  stm32.rcc%s
   --  stm32.rcc%b
   --  stm32.spi%s
   --  stm32.spi%b
   --  stm32.gpio%s
   --  stm32.device%s
   --  stm32.device%b
   --  stm32.syscfg%s
   --  stm32.gpio%b
   --  stm32.syscfg%b
   --  blink%b
   --  END ELABORATION ORDER

end ada_main;
