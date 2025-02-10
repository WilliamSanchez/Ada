with Interfaces.C; use Interfaces.C;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
	function my_func (a : int) return int
	with
		Import => True,
		Convention => C;
	V : int;
	funct_cnt : int
	with
		Import => True,
		Convention => C;	
begin
	V := my_func (1);
	V := my_func (2);
	V := my_func (3);
	Put_Line ("Result is "& int'Image (v));
	Put_Line ("Function was called " & int'Image(funct_cnt) & " times");
end Main;
