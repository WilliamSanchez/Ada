with Ada.text_IO;  use Ada.Text_IO;
with Increment;

procedure Show_Increment is 
	A, B, C : Integer;
	
	procedure Display_Result is 
	begin
		Put_Line(" Increment of "
			& Integer'Image(A)
			& " with "
			& Integer'Image(B)
			& " is "
			& Integer'Image(C)			
			);
	end Display_Result;

begin 
	A := 10;
	B := 5;
	C := increment(A);
	Display_Result;
	C := increment(B);
	Display_Result;
end Show_increment;
