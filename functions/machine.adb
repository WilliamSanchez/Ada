package body Machine is 
	function Get (S : Status) return Code is
	begin
		case  S is
			When Off => return 1;
			When On  => return 3;
		end case;	
	end Get;

	function Get (S : Status) return Threshold is
	begin
		case S is
			When Off => return 2.0;
			When On  => return 10.0;
		end case;
	end Get;
end Machine;
