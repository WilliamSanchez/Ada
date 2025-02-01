with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure main is
	N : Integer;
begin
	Put ("!Enter an intger value: ");
	Get (N);
	Put (N);

	declare
		S : constant String := (if N > 0 then " is a positive number" else " is a not positive number");
	begin
		Put_Line(S);
	end;	

	for I in 1 .. 10 loop
		Put_Line(case I is
			when 1 | 3 | 5 | 7 | 9 => Integer'Image(I) & "  odd",
			when 2 | 4 | 6 | 8 | 10 => Integer'Image(I) & "Even");	
	end loop;

	Put_Line("Bye!");
end main;
