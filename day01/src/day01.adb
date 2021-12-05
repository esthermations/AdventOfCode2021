with Ada.Text_IO; use Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

procedure Day01 is
   Input_File     : File_Type        := Standard_Input;
   Line           : Unbounded_String;

   package Natural_Vectors is new Ada.Containers.Vectors
      (Index_Type   => Positive,
       Element_Type => Natural);

   subtype Vector_Of_Natural is Natural_Vectors.Vector;

   Input_Values : Vector_Of_Natural;

   function Part01 (Inputs : Vector_Of_Natural)
      return Natural
      is separate;

   function Part02 (Inputs : Vector_Of_Natural)
      return Natural
      is separate;

begin
   Read_Inputs : loop
      exit Read_Inputs when End_Of_File( Input_File );
      Input_Values.Append( Natural'Value( To_String( Get_Line( Input_File ) ) ) );
   end loop Read_Inputs;

   pragma Assert( ( for all X of Input_Values => X < Natural'Last ) );

   Ada.Text_IO.Put_Line( "Part01: " & Part01( Input_Values )'Img );
   Ada.Text_IO.Put_Line( "Part02: " & Part02( Input_Values )'Img );

end Day01;
