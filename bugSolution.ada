```ada
function Check_Range(X : Integer) return Boolean is
begin
  if X >= 10 and X <= 20 then  --Removed 'and then'
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

**Explanation of Solution:**

Removing `and then` ensures both conditions are evaluated.  While not always necessary, it eliminates this particular source of unexpected behavior by preventing short-circuiting.  If the intention was indeed to prevent evaluation in certain cases, explicit checks and alternative control flow structures (such as `case` statements) are recommended for clarity and safety.