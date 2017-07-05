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
  Top: Alinha o componente no topo (Cabeçalho).
  Bottom: Alinha o componente na parte inferior (Rodapé).
  Horizontal: Expande o componente por toda área horizontal.
  Scale: Mantém a escala do componente em relação à tela na qual foi compilada
         inicialmente.
  Client: Expande o componente por toda tela ou por toda dimensão do seu
          container.


Tradução de:
http://docwiki.embarcadero.com/RADStudio/Berlin/en/Arranging_FireMonkey_Controls#Using_Anchors
Âncoras são necessárias quando um controle deve manter sua posição a uma certa
distância das bordas de seu pai, ou deve esticar, mantendo a distância original
entre suas bordas e as bordas de seu pai. Os controles ancorados se prendem aos
lados dos recipientes e esticam, se especificado. Usando uma combinação de
âncoras e contêineres aninhados você pode criar layouts estiraveis inteligentes
no FireMonkey. Para definir as âncoras de um controle, use a
propriedade Âncoras. Um controle ancorado mantém constante a distância
especificada no tempo de design entre ela e as bordas de seu pai, quando o pai
redimensiona em tempo de execução. No tempo de estruturação, definir a
propriedade Âncoras não tem efeito visual sobre o formulário.

Um controle pode ser ancorado a nenhum, um ou mais de um bordo. Se um controle
é ancorado a bordas opostas ao mesmo tempo (Anchors = [akLeft, akRight] ou
Anchors = [akTop, akBottom]), o controle se estende horizontalmente ou
verticalmente para manter constante a distância para a esquerda e direita ou
superior E bordas inferiores de seu pai. Um controle pode ser ancorado a todas
as 4 arestas de seu pai; Neste caso, ele se estende em todas as direções.
Por padrão, um controle é ancorado para as bordas superior e esquerda de seu
contêiner (Anchors = [akTop, akleft]).

Ao usar o Align, as âncoras são afetadas. As âncoras definidas pelo alinhamento
automático são excluídas.

Observação: não ancorar as crianças de um layout de rolagem (TScrollBox,
TVertScrollBox e assim por diante) para as bordas direita e inferior. Se a
propriedade Anchors de uma criança de layout de rolagem estiver definida como
akBottom, akRight ou ambas, a criança continuará a esticar para manter
constante a distância até as bordas de layout quando o tamanho do conteúdo do
layout estiver sendo calculado. As crianças de um layout de rolagem devem ser
ancoradas somente para as margens esquerda e superior.
}