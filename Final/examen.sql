CREATE TYPE arreglo IS VARRAY(100000) OF integer;
alter session set "_ORACLE_SCRIPT"=true



create or replace function validar_Tarjeta (NumTarjeta arreglo) 
return boolean as
 validar boolean;
 numero1 integer;
 J integer;
 numero2 integer;
 arr varray(16);
 arr1 varray(16);
 numero3 integer;
 numero4 integer;
begin
  for i in 2..NumTarjeta.count loop
        numero1 := NumTarjeta(i);
        j := 8;
        arr(j) := numero1 * 2;
        j := j-1;
  end loop;
  
  for i in 1..arr.count loop
    if arr(i)>9 then
      numero2 := arr(i) - 9;
      arr1 (i) := numero2;
    end if;
  
  for i in 1..arr1.count loop
    numero3 := arr1(i) +0;    
  end loop;
  
  for i in -2..NumTarjeta.last loop
        numero4 := NumTarjeta +0;
  end loop;
  
  return validar;
end;