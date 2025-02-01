with Ada.Text_IO; use Ada.Text_IO;
with Increment;

procedure Main is 
	A, B, C : Integer;
begin
	A := 10;
	C := increment(A);
	Put_Line("Increment of " & Integer'Image(C) &  " is " & Integer'Image(A) );
	
	B := increment(I => 5);
	Put_Line("Increment of 5 is " & Integer'Image(B));
end Main;
