with System;

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package adapted_test_h is

   type Test is new System.Address;

   function Create return Test;  -- ./test.h:3
   pragma Import (C, Create, "test_created");

   procedure Destroy (T : Test);  -- ./test.h:4
   pragma Import (C, Destroy, "test_destroy");

   procedure Reset (T : Test);  -- ./test.h:5
   pragma Import (C, Reset, "test_reset");

   procedure Set_Name (T : Test; Name : Interfaces.C.Strings.chars_ptr);  -- ./test.h:6
   pragma Import (C, Set_Name, "test_set_name");

   procedure Set_Address (t : Test; Address : Interfaces.C.Strings.chars_ptr);  -- ./test.h:7
   pragma Import (C, Set_Address, "test_set_address");

   procedure Display (t : Test);  -- ./test.h:8
   pragma Import (C, Display, "test_display");

end adapted_test_h;