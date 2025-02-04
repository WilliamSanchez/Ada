with Ada.Text_IO; use Ada.Text_IO;

procedure Main is 
	subtype A_To_Z is Character range 'A'.. 'Z';

	task My_Task;
	task body My_Task is
	begin
		for I in A_To_Z'Range loop
			Put (I);
		end loop;
		New_Line;
	end My_Task;
begin
	for A in 1 .. 45 loop
		PUT(Integer'Image(A));
	end loop;
	New_Line;
end Main;
