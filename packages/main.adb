with Ada.Text_IO; use Ada.Text_IO;
with Week;
with Operations;

procedure Main is 
	use Operations;

	I : Integer := 0;
	R : Integer;

	procedure Display_Update_Value is
		Incr : constant Integer := Get_Increment_Value;
	begin
		Put_Line(Integer'Image (I)
			& " incremented by "
			& Integer'Image (Incr)
			& " is "
			& Integer'Image (R));
		I := R;
	end Display_Update_Value;
begin
	Put_Line("First day of the week is " & Week.Mon);

	R := Increment_By (I);
	Display_Update_Value;
        R := Increment_By (I);
        Display_Update_Value; 

        R := Increment_By (I,5);
        Display_Update_Value; 
        R := Increment_By (I);
        Display_Update_Value;

        R := Increment_By (I, 10);
        Display_Update_Value; 
        R := Increment_By (I);
        Display_Update_Value;



end Main;
