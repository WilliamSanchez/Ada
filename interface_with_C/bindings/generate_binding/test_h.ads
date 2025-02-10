pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package test_h is

   funct_cnt : aliased int  -- ./test.h:1
   with Import => True, 
        Convention => C, 
        External_Name => "funct_cnt";

   function my_funct (a : int) return int  -- ./test.h:3
   with Import => True, 
        Convention => C, 
        External_Name => "my_funct";

end test_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
