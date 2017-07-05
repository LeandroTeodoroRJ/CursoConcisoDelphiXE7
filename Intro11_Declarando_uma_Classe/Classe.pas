{
IMPLEMENTA��O DE UMA CLASSE
Fonte:
http://www.clipatecinformatica.com.br/2012/11/declarando-uma-classe-no-delphi.html

1� Passo:
Abaixo do comando "Interface", digite o comando "Type" e na linha de baixo,
digite "class" e pressiona a tecla "Tab" e defina o nome da classe:

interface

type
  TPessoa = class


2� Passo:
Muito bem, agora vamos declarar os atributos de nossa classe pessoa, que s�o
comuns nas sub-classes (classes filhas), estes atributos s�o privados, ou seja,
vis�vel e acess�vel somente � classe,  para que outras classes possam ler ou
escrever nesses atributos, isso � feito atrav�s dos m�todos "Get" e "Set",
pois estas propriedades ser�o encapsuladas.
Ent�o, na se��o "Private", declaramos os atributos (por conven��o, um atributo
inicia-se o nome com a letra "F"), seguido de ":" e seu tipo:

  private

    Fid_pessoa: Integer;
    Fuf_pessoa: String;


3� Passo:
 Ok, agora temos que encapsular estes atributos e criar os m�todos
 "Get" e "Set", mas, voc� n�o precisa se preocupar com isso, o IDE Delphi faz
 isso pra voc�, s� � necess�rio declararmos a "property" com o nome do atributo
 sem a letra "F" seguido de ":" e seu tipo, ent�o, dentro da se��o "Public"
 fa�a:

    property id_pessoa: Integer;
    property uf_pessoa: String;
    constructor Create;

4� Passo:
Note que temos depois da �ltima "Property" o m�todo construtor, que por
conven��o, o chamamos de "Create".
Feito isso, deixe o cursor do mouse piscando no final do m�todo construtor e
pressione as teclas de atalho "Shift + Crtl + C", o IDE j� vai implementar
automaticamente na se��o "Private" os seguintes comandos:

 Public

    procedure Setbairro_pessoa(const Value: string);
    procedure Setcep_pessoa(const  Value: string);


5� Passo:
 N�o para por a�, ele tamb�m j� implementa as "property" pra voc�, ficando
 apenas o m�todo construtor para implementarmos, ent�o, vamos implement�-lo,
 para isso, fa�a o seguinte dentro do m�todo construtor:


constructor TPessoa.Create;
begin
  Fid_pessoa := 0;
  Fuf_pessoa := ' ';
end;


6� Passo e Final:
Todas as procedures j� est�o implementadas pela IDE, completar o bloco de
instru��es caso seja necess�rio.

}

unit Classe;

interface
type Pais = class
            private
              { private declarations }
              FDescricao: string;
              procedure SetDescricao(const Value: String);
            protected
              { protected declarations }
            public
              { public declarations }
              property Descricao: String read FDescricao write SetDescricao;
              constructor Create;
            published
              { published declarations }

            end;
implementation


{ Pais }

constructor Pais.Create;
begin
  FDescricao:='';
end;

procedure Pais.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

end.
