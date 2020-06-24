const dlina = 9;
var N: integer;
a: array[0..dlina-1] of integer;
max, m, mEven, x, j, i: integer;
begin
readln(N);
for j:=0 to dlina-1 do read(a[j]);
max:= -1;
m:= -1; mEven:= -1;
for j:= dlina to N-1 do begin
	read(x);
	if ((a[j mod dlina] mod 2 = 0) and
	(a[j mod dlina] > mEven)) then mEven:= a[j mod dlina];
	if (a[j mod dlina] > m) then m := a[j mod dlina];
	if x mod 2 = 1 then begin
		if x*mEven > max then max := mEven*x;
	end
	else
	if x*m > max then max := m*x;
	a[j mod dlina]:=x;
end;
writeln(max)
end.
