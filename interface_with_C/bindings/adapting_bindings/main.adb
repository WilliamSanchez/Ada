with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings; use Interfaces.C.Strings;

with adapted_test_h; use adapted_test_h;

with System;

procedure Main is

	Name : constant chars_ptr := New_String("William Sanchez");
	Address : constant chars_ptr := New_String("Sao Paulo");

	T : Test := Create;
	
begin
	Reset (T);
	Set_Name(T,Name);
	Set_Address(T,Address);

	Display(T);
	Destroy(T);
end Main;
