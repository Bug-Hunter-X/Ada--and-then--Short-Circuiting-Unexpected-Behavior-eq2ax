```ada
function Check_Range(X : Integer) return Boolean is
begin
  if X >= 10 and then X <= 20 then
    return True;
  else
    return False;
  end if;
end Check_Range;

procedure Test_Range is
   Result : Boolean;
begin
   Result := Check_Range(25);
   if Result = True then
     Put_Line("In range");
   else
     Put_Line("Out of range");
   end if;
end Test_Range;
```