with Interface.C; use Interface.C;

proceduure Show_C_Struct is
	type c_struct is record
		a : int;
		b : long;
		c : unsigned;
		d : double;
	end record
	with Convention.C
begin
	null;
end Show_C_Struct;
