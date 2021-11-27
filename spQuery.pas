unit spQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)
  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;
    procedure SetspCondicoes(const Value: TStringList);
    procedure SetspColunas(const Value: TStringList);
    procedure SetspTabelas(const Value: TStringList);
  public
    property spCondicoes: TStringList read FspCondicoes write SetspCondicoes;
    property spColunas: TStringList read FspColunas write SetspColunas;
    property spTabelas: TStringList read FspTabelas write SetspTabelas;
    function montarSql: string;
  end;

implementation

{ TspQuery }

function TspQuery.montarSql: string;
var
  tSql: string;
begin
  tSql := 'select ' + spColunas.Text + ' from ' + spTabelas.Text + ' where ' + spCondicoes.text;
  Result := tSql;
end;

procedure TspQuery.SetspColunas(const Value: TStringList);
begin
  FspColunas := Value;
end;

procedure TspQuery.SetspCondicoes(const Value: TStringList);
begin
  FspCondicoes := Value;
end;

procedure TspQuery.SetspTabelas(const Value: TStringList);
begin
  FspTabelas := Value;
end;

end.

