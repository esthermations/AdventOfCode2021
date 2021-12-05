separate (Day01)
function Part01 (Inputs : Vector_Of_Natural)
    return Natural
is
   Num_Increases  : Natural := 0;
   Current_Value  : Natural := Natural'Last;
   Previous_Value : Natural;
begin
    for X of Inputs loop
      Previous_Value := Current_Value;
      Current_Value := X;
      if Current_Value > Previous_Value then
         Num_Increases := @ + 1;
      end if;
    end loop;
    return Num_Increases;
end Part01;
