program Intro3_Console_Entrada_e_Saida;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

//Início de declarações de variáveis globais
var
login: string;
senha: integer;
Exit:  string;
begin
//Início do bloco de desenvolvimento
Write('Entre com o login:');  //Imprime uma string na tela sem pular linha
ReadLn(login);  //Lê o que foi digitado no teclado e pula uma linha
Write('Entre com a senha:');
ReadLn(senha);
WriteLn('Resultado:');    //Imprime na tela e pula uma linha
Write('O usuário é:'+login);
Write(', e a senha é:' +inttostr(senha)); //Imprime as duas instruções na mesma
                                          //linha.
ReadLn(Exit); //Espera o usuário apertar qualquer tecla para sair do programa,
              //isso "congela" a tela para que o delphi não feche a tela do
              //terminal automaticamente.

//  TODO ESTE BLOCO ABAIXO GERADO AUTOMATICAMENTE PELO DELPHI XE6 PODE SER APAGADO
//  SEM PREJUÍZO:
//  try
//    { TODO -oUser -cConsole Main : Insert code here }
//  except
//    on E: Exception do
//      Writeln(E.ClassName, ': ', E.Message);
//  end;

end.

{
Em aplicações console utilizamos o método Write e WriteLn (escreve e pula uma
linha) para escrever valores de saída dentro da janela console. Para fazer a
leitura de valores utilizamos os métodos Read e ReadLn (Lê e pula uma linha).
}