with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure main is
	N : Integer;
	X : INteger;	
begin
	-- Put a String
	Put ("Enter a integer value: ");

	Get (N);

	if N > 0 then
		Put (N);
		Put_Line("is a positive number");
	elsif N = 0 then
		Put_Line("is 0 the number");
	else
		Put_Line("is not a positive nunmber");
	end if;

	loop 
		Put ("Enter a integer value: ");
		Get (X);
		Put (X);
		case X is
			when 1 .. 89 =>
				Put_Line("is positive");
			when 0 =>
				Put_Line("is 0");
			when -100 .. -1 =>
				Put_Line("is negative");
			when others =>
				Put_Line("Undefined");
			exit;
		end case;
	end loop;	
end main;
