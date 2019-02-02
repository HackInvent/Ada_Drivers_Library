with Ada.Real_Time;        use Ada.Real_Time;
with STM32.GPIO;   use STM32.GPIO;
with STM32.Device; use STM32.Device;

procedure Blink
is

   procedure Initialize_LEDs;

   procedure Initialize_LEDs is
   begin
      Enable_Clock (GPIO_B);

      Configure_IO
        (PB0,
         (Mode        => Mode_Out,
          Resistors   => Floating,
          Speed       => Speed_100MHz,
          Output_Type => Push_Pull));
   end Initialize_LEDs;

begin
   --  Enable main clocks
   STM32.Device.Enable_Clock_Main;

   --  Enable board leds
   Initialize_LEDs;

   --  Loop
   loop
      PB0.Toggle;
      delay until Clock + Milliseconds (50);
   end loop;

end Blink;
