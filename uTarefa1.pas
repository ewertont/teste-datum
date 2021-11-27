unit uTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.DApt;

type
  TFTarefa1 = class(TForm)
    colunas: TMemo;
    tabelas: TMemo;
    condicoes: TMemo;
    sqlGerado: TMemo;
    btnGerar: TButton;
    lbColunas: TLabel;
    lbTabelas: TLabel;
    lbCondicoes: TLabel;
    lbSqlGerado: TLabel;
    btnLimpar: TButton;
    procedure btnGerarClick(Sender: TObject);
  private    { Private declarations }
  public    { Public declarations }
  end;

var
  FTarefa1: TFTarefa1;


implementation

{$R *.dfm}

uses
  spQuery;

procedure TFTarefa1.btnGerarClick(Sender: TObject);
var
  I: Integer;
  Query: TspQuery;
begin
  Query := TspQuery.Create(nil);
  try
    Query.spCondicoes := TStringList.Create;
    Query.spColunas := TStringList.Create;
    Query.spTabelas := TStringList.Create;

    for I := 0 to colunas.lines.Count do
    begin
      Query.spColunas.text := Query.spColunas.text + colunas.Lines.Strings[I];
      if I + 1 < colunas.lines.Count then
        Query.spColunas.text := Query.spColunas.text + ','
    end;
    Query.spTabelas.add(tabelas.Lines.Strings[0]);

    for I := 0 to condicoes.lines.Count do
      Query.spCondicoes.text := Query.spCondicoes.text + condicoes.Lines.Strings[I];
  finally
    sqlGerado.Lines.Text := Query.montarSql;
    FreeAndNil(Query);
  end;
end;

end.

