program Intro3_Console_Entrada_e_Saida;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

//In�cio de declara��es de vari�veis globais
var
login: string;
senha: integer;
Exit:  string;
begin
//In�cio do bloco de desenvolvimento
Write('Entre com o login:');  //Imprime uma string na tela sem pular linha
ReadLn(login);  //L� o que foi digitado no teclado e pula uma linha
Write('Entre com a senha:');
ReadLn(senha);
WriteLn('Resultado:');    //Imprime na tela e pula uma linha
Write('O usu�rio �:'+login);
Write(', e a senha �:' +inttostr(senha)); //Imprime as duas instru��es na mesma
                                          //linha.
ReadLn(Exit); //Espera o usu�rio apertar qualquer tecla para sair do programa,
              //isso "congela" a tela para que o delphi n�o feche a tela do
              //terminal automaticamente.

//  TODO ESTE BLOCO ABAIXO GERADO AUTOMATICAMENTE PELO DELPHI XE6 PODE SER APAGADO
//  SEM PREJU�ZO:
//  try
//    { TODO -oUser -cConsole Main : Insert code here }
//  except
//    on E: Exception do
//      Writeln(E.ClassName, ': ', E.Message);
//  end;

end.

{
Em aplica��es console utilizamos o m�todo Write e WriteLn (escreve e pula uma
linha) para escrever valores de sa�da dentro da janela console. Para fazer a
leitura de valores utilizamos os m�todos Read e ReadLn (L� e pula uma linha).
}