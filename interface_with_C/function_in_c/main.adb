with Interfaces.C; use Interfaces.C;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
	function Get_Value (a : int) return int
	with
		Import => True,
		Convention => C,
		External_Name => "my_func";
	V : int;
begin
	V := Get_Value (2);
	Put_Line ("Result is " & int'Image(V));
end Main;
