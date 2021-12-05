separate (Day01)
function Part02 (Inputs : Vector_Of_Natural)
   return Natural
is

   Window_Size : constant Positive := 3;
   type Window_Idx_Type is mod Window_Size;

   Window                 : array (Window_Idx_Type) of Natural := (others => 0);
   Window_Idx             : Window_Idx_Type := Window_Idx_Type'First;
   Sum_Of_Previous_Window : Natural := Natural'Last;
   Sum_Of_Current_Window  : Natural := Natural'Last;
   Num_Increases          : Natural := 0;
begin
   for I in Inputs.First_Index .. Inputs.Last_Index loop
      Window (Window_Idx) := Inputs (I);
      Window_Idx := @ + 1;

      if I >= Window_Size then

         Sum_Of_Previous_Window := Sum_Of_Current_Window;
         Sum_Of_Current_Window  := 0;

         for V of Window loop
            Sum_Of_Current_Window := @ + V;
         end loop;

         if Sum_Of_Current_Window > Sum_Of_Previous_Window then
            Num_Increases := @ + 1;
         end if;
      end if;

   end loop;

   return Num_Increases;
end Part02;