with Interfaces.C; use Interfaces.C;
with Ada.Text_IO; use Ada.Text_IO;
with test_h; use test_h;

procedure Main is

	V : int;
	
begin
	V := my_funct (1);
	V := my_funct (2);
	V := my_funct (3);
	Put_Line ("Result is "& int'Image (v));
	Put_Line ("Function was called " & int'Image(funct_cnt) & " times");
end Main;
