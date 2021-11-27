unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mainMenu1: TMainMenu;
    menuTarefa1: TMenuItem;
    menuTarefa2: TMenuItem;
    menuTarefa3: TMenuItem;
    procedure menuTarefa1Click(Sender: TObject);
    procedure menuTarefa2Click(Sender: TObject);
    procedure menuTarefa3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private    { Private declarations }
  public    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;


implementation

{$R *.dfm}

uses
  uTarefa1, uTarefa2, uTarefa3;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FTarefa1) then
    FreeAndNil(FTarefa1);
  if Assigned(FTarefa2) then
    FreeAndNil(FTarefa2);
  if Assigned(FTarefa3) then
    FreeAndNil(FTarefa3);
end;

procedure TfrmPrincipal.menuTarefa1Click(Sender: TObject);
begin
  FTarefa1 := TFTarefa1.Create(nil);
  FTarefa1.ShowModal;
end;

procedure TfrmPrincipal.menuTarefa2Click(Sender: TObject);
begin
  FTarefa2 := TfTarefa2.Create(nil);
  FTarefa2.ShowModal;
end;

procedure TfrmPrincipal.menuTarefa3Click(Sender: TObject);
begin
  FTarefa3 := TFTarefa3.Create(nil);
  FTarefa3.memProjetos.Open;
  FTarefa3.ShowModal;
end;

end.

