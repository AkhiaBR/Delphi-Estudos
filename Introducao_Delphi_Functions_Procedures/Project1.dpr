program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var // variaveis declaradas fora do begin-end são consideradas variáveis globais
  W,X,Y: Integer;
  Resultado: Integer;

// FUNÇÕES:
// funções sempre retornam algo e argumentos sao destruidos depois da execucao da funcao
function GetSum(num1, num2: Integer): Integer; // define a funcao GetSum que espera dois parametros do tipo Inteiro, e depois retorna um parametro com o mesmo tipo Inteiro
begin
  GetSum := num1 + num2;
end;

function Factorial(num: Integer): Integer; // funcao recursiva (chama a si mesma)
begin
  if num <= 1 then
    Factorial := 1
  else
    Factorial := num * Factorial(num-1); // a funcao chama a si mesma para calcular o fatorial
end;

// PROCEDURES:
// procedures não retornam algo
procedure GetSum3(X,Y,Z: Integer; var Sum: Integer); // espera dois parametros, os numeros para calcular e uma variavel inteira para ser o resultado (W)
begin
  Sum:= X+Y+Z;
end;

procedure PrintNum;
  var // variável local
    W: Integer;
    begin
      W := 1;
      Writeln('Dentro da procedure PrintNum, a variável W é igual a: ', W);
    end;

begin
  try
    W := 5;
    X := 4;
    Resultado := GetSum(W, X);
    Writeln('O resultado da operação foi: ', Resultado);

    Resultado := Factorial(4);
    Writeln('O fatorial de 4 é: ', Resultado);

    GetSum3(1,2,3,W);
    Writeln('Soma: ', W);

    W := 2;
    Writeln('Fora da procedure PrintNum, a variável W é igual a: ', W);
    PrintNum; // executa a procedure
    Writeln('Fora da procedure PrintNum, a variável W é igual a: ', W); // o W continuará o mesmo, pois é uma variável diferente da variável local de PrintNum

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
