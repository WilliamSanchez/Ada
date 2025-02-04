with Ada.Text_IO; use Ada.Text_IO;

package body Counters is

	protected body Counter is
		function Get return Integer is
		begin
			return Value;
		end Get;

		procedure Increment is 
		begin
			Value := Value + 1;
		end Increment;

		procedure Decrement is 
		begin
			Value := Value - 1;
		end Decrement;
	end Counter;	
end Counters;
