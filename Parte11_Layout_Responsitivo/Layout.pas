unit Layout;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel1: TPanel;
    Button5: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.

{
Propriedade Aligin
  Top: Alinha o componente no topo (Cabe�alho).
  Bottom: Alinha o componente na parte inferior (Rodap�).
  Horizontal: Expande o componente por toda �rea horizontal.
  Scale: Mant�m a escala do componente em rela��o � tela na qual foi compilada
         inicialmente.
  Client: Expande o componente por toda tela ou por toda dimens�o do seu
          container.


Tradu��o de:
http://docwiki.embarcadero.com/RADStudio/Berlin/en/Arranging_FireMonkey_Controls#Using_Anchors
�ncoras s�o necess�rias quando um controle deve manter sua posi��o a uma certa
dist�ncia das bordas de seu pai, ou deve esticar, mantendo a dist�ncia original
entre suas bordas e as bordas de seu pai. Os controles ancorados se prendem aos
lados dos recipientes e esticam, se especificado. Usando uma combina��o de
�ncoras e cont�ineres aninhados voc� pode criar layouts estiraveis inteligentes
no FireMonkey. Para definir as �ncoras de um controle, use a
propriedade �ncoras. Um controle ancorado mant�m constante a dist�ncia
especificada no tempo de design entre ela e as bordas de seu pai, quando o pai
redimensiona em tempo de execu��o. No tempo de estrutura��o, definir a
propriedade �ncoras n�o tem efeito visual sobre o formul�rio.

Um controle pode ser ancorado a nenhum, um ou mais de um bordo. Se um controle
� ancorado a bordas opostas ao mesmo tempo (Anchors = [akLeft, akRight] ou
Anchors = [akTop, akBottom]), o controle se estende horizontalmente ou
verticalmente para manter constante a dist�ncia para a esquerda e direita ou
superior E bordas inferiores de seu pai. Um controle pode ser ancorado a todas
as 4 arestas de seu pai; Neste caso, ele se estende em todas as dire��es.
Por padr�o, um controle � ancorado para as bordas superior e esquerda de seu
cont�iner (Anchors = [akTop, akleft]).

Ao usar o Align, as �ncoras s�o afetadas. As �ncoras definidas pelo alinhamento
autom�tico s�o exclu�das.

Observa��o: n�o ancorar as crian�as de um layout de rolagem (TScrollBox,
TVertScrollBox e assim por diante) para as bordas direita e inferior. Se a
propriedade Anchors de uma crian�a de layout de rolagem estiver definida como
akBottom, akRight ou ambas, a crian�a continuar� a esticar para manter
constante a dist�ncia at� as bordas de layout quando o tamanho do conte�do do
layout estiver sendo calculado. As crian�as de um layout de rolagem devem ser
ancoradas somente para as margens esquerda e superior.
}