with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure main is
	N : Integer;	
	x : Integer := 1;
	b : Integer := 1;
begin
	-- Put a String
	Put ("Enter a integer value: ");
	Get (N);
		
	for I in 1 .. N loop
		Put_Line ("Hello world: " & Integer'Image(I));
	end loop;

	-- Reverse	
	for I in reverse 1 .. 5 loop
		Put_Line("Hello world count reverse: " & Integer'Image(I));
	end loop;
	
	loop
		Put_Line("Hello, World [Exit]!" & Integer'Image(x));
		exit when x = N;
		x := x + 1;
	end loop;	

	while b <= N loop
		Put_Line("Hello world [while]" & Integer'Image(b));
		b := b + 1;
	end loop;
end main;
