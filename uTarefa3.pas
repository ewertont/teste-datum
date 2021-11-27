unit uTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin;

type
  TFTarefa3 = class(TForm)
    memProjetos: TFDMemTable;
    memProjetosidProjeto: TIntegerField;
    memProjetosNomeProjeto: TStringField;
    memProjetosValor: TCurrencyField;
    dsDados: TDataSource;
    dbgridProjetos: TDBGrid;
    Panel1: TPanel;
    edtTotal: TEdit;
    lbTotal: TLabel;
    edtTotalDivisao: TEdit;
    lbTotalDivisao: TLabel;
    btnTotal: TButton;
    btnTotalDivisao: TButton;
    procedure btnTotalClick(Sender: TObject);
    procedure btnTotalDivisaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private    { Private declarations }
  public    { Public declarations }
  end;

var
  FTarefa3: TFTarefa3;


implementation

{$R *.dfm}

procedure TFTarefa3.btnTotalClick(Sender: TObject);
var
  valor: Real;
begin
  valor := 0;
  memProjetos.First;
  while not memProjetos.Eof do
  begin
    valor := valor + memProjetosValor.Value;
    memProjetos.Next;
  end;
  edtTotal.Text := CurrToStr(valor);
end;

procedure TFTarefa3.btnTotalDivisaoClick(Sender: TObject);
var
  valor, ultimo: Real;
  i: Integer;
begin
  valor := 0;
  ultimo := 1;
  memProjetos.First;
  ultimo := memProjetosValor.Value;
  memProjetos.Next;
  while not memProjetos.Eof do
  begin
    valor := valor + (memProjetosValor.Value / ultimo);
    ultimo := memProjetosValor.Value;
    memProjetos.Next;
  end;
  edtTotalDivisao.Text := CurrToStr(valor);
end;

procedure TFTarefa3.FormShow(Sender: TObject);
var
  I: Integer;
  randomValor: Real;
begin
  for I := 1 to 10 do
  begin
    memProjetos.Append;
    memProjetosidProjeto.AsInteger := I;
    memProjetosNomeProjeto.AsString := 'Projeto ' + IntToStr(I);
    randomValor := Random(100);
    if randomValor = 0 then
      randomValor := Random(100);
    memProjetosValor.AsCurrency := Random(100);
    memProjetos.Post;
  end;
  memProjetos.First;
end;

end.

