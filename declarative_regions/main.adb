with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure main is
	procedure Nested is 
	begin
		Put_Line("Declarative Region");
	end Nested;
begin
	Nested;
	
	Put_Line("Bye!");
end main;
