pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package test_h is

   type test is null record;   -- incomplete struct

   function test_created return access test  -- ./test.h:3
   with Import => True, 
        Convention => C, 
        External_Name => "test_created";

   procedure test_destroy (t : access test)  -- ./test.h:4
   with Import => True, 
        Convention => C, 
        External_Name => "test_destroy";

   procedure test_reset (t : access test)  -- ./test.h:5
   with Import => True, 
        Convention => C, 
        External_Name => "test_reset";

   procedure test_set_name (t : access test; name : Interfaces.C.Strings.chars_ptr)  -- ./test.h:6
   with Import => True, 
        Convention => C, 
        External_Name => "test_set_name";

   procedure test_set_address (t : access test; address : Interfaces.C.Strings.chars_ptr)  -- ./test.h:7
   with Import => True, 
        Convention => C, 
        External_Name => "test_set_address";

   procedure test_display (t : access test)  -- ./test.h:8
   with Import => True, 
        Convention => C, 
        External_Name => "test_display";

end test_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
