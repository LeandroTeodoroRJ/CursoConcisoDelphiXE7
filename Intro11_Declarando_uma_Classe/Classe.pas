{
IMPLEMENTAÇÃO DE UMA CLASSE
Fonte:
http://www.clipatecinformatica.com.br/2012/11/declarando-uma-classe-no-delphi.html

1º Passo:
Abaixo do comando "Interface", digite o comando "Type" e na linha de baixo,
digite "class" e pressiona a tecla "Tab" e defina o nome da classe:

interface

type
  TPessoa = class


2º Passo:
Muito bem, agora vamos declarar os atributos de nossa classe pessoa, que são
comuns nas sub-classes (classes filhas), estes atributos são privados, ou seja,
visível e acessível somente à classe,  para que outras classes possam ler ou
escrever nesses atributos, isso é feito através dos métodos "Get" e "Set",
pois estas propriedades serão encapsuladas.
Então, na seção "Private", declaramos os atributos (por convenção, um atributo
inicia-se o nome com a letra "F"), seguido de ":" e seu tipo:

  private

    Fid_pessoa: Integer;
    Fuf_pessoa: String;


3º Passo:
 Ok, agora temos que encapsular estes atributos e criar os métodos
 "Get" e "Set", mas, você não precisa se preocupar com isso, o IDE Delphi faz
 isso pra você, só é necessário declararmos a "property" com o nome do atributo
 sem a letra "F" seguido de ":" e seu tipo, então, dentro da seção "Public"
 faça:

    property id_pessoa: Integer;
    property uf_pessoa: String;
    constructor Create;

4º Passo:
Note que temos depois da última "Property" o método construtor, que por
convenção, o chamamos de "Create".
Feito isso, deixe o cursor do mouse piscando no final do método construtor e
pressione as teclas de atalho "Shift + Crtl + C", o IDE já vai implementar
automaticamente na seção "Private" os seguintes comandos:

 Public

    procedure Setbairro_pessoa(const Value: string);
    procedure Setcep_pessoa(const  Value: string);


5º Passo:
 Não para por aí, ele também já implementa as "property" pra você, ficando
 apenas o método construtor para implementarmos, então, vamos implementá-lo,
 para isso, faça o seguinte dentro do método construtor:


constructor TPessoa.Create;
begin
  Fid_pessoa := 0;
  Fuf_pessoa := ' ';
end;


6º Passo e Final:
Todas as procedures já estão implementadas pela IDE, completar o bloco de
instruções caso seja necessário.

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
