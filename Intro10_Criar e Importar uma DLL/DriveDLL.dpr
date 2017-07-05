//*****************************************************************************
//  CRIAR E IMPORTAR UMA DLL
//*****************************************************************************
{
Caminho para criar uma dll
File->New->Other->Dynamic-Link Library
}
library DriveDLL;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes;
  //Caso necessite de alguma biblioteca para compila��o da dll insira aqui
{$R *.res}

//Come�ar a declarar as fun��es e procedimentos aqui.
function somar(A,B:integer):integer; export; //inserir a cl�usula "export"
begin
  somar:=(A+B);  //bloco da fun��o da dll
end;

{
Insira ao final a cl�usula exports + nome_da_function/procedure para exportar.
Fa�a isso para cada sub-rotina.
}
exports somar;

begin
end.
