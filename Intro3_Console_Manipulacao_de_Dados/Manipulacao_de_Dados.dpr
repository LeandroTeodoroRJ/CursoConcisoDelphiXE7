program Manipulacao_de_Dados;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
num_int: integer;
num_dec: real;    //Vari�vel ponto flutuante
valor_str: string;
begin
//CONCATENA��O DE DADOS COM DELPHI
num_int:=4;     //Inicializa um inteiro
num_dec:=7.3;   //Inicializa um ponto flutuante
valor_str:='Isso � uma string';  //Inicializa uma String

//Com transforma��o de vari�veis
WriteLn('Concatena��o string e inteiro:'+inttostr(num_int));
//Com marcador %d (para inteiro) e instru��o "Format"
WriteLn(Format('Mostra o inteiro %d, no meio da frase', [num_int]));

//Com transforma��o de vari�veis
WriteLn('Concatena��o da string e float:'+floattostr(num_dec));
//Com marcador %f (para ponto flutuante) e instru��o "Format" com resolu��o
//de 4 casas decimais "0.4"
WriteLn(Format('Mostra o float: %0.4f, no meio da frase', [num_dec]));

//String com concatena��o direta
WriteLn('O valor da string �: '+valor_str+' e pode ficar no meio ou final:' +valor_str);

//Concatenando mais de um tipo com a instru��o Format
WriteLn(Format('O float �: %0.4f, e o inteiro:%d', [num_dec,num_int]));



Read(valor_str);  //Aguarda para fechar o programa
end.
