unit uTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Samples.Spin, Vcl.ExtCtrls;

type
  TfTarefa2 = class(TForm)
    Panel1: TPanel;
    edtIntervalo1: TSpinEdit;
    btnIniciar: TButton;
    edtIntervalo2: TSpinEdit;
    lbIntervalo1: TLabel;
    lbIntervalo2: TLabel;
    lbContador2: TLabel;
    ProgressBar2: TProgressBar;
    ProgressBar1: TProgressBar;
    lbContador1: TLabel;
    procedure btnIniciarClick(Sender: TObject);
  private    { Private declarations }
  public    { Public declarations }
  end;

type
  TTread1 = class(TThread)
  private
    Count: Integer;
    procedure atualizarProgress1;
  protected
    procedure Execute; override;
  public
    var
      timeS: Integer;
  end;

type
  TTread2 = class(TThread)
  private
    Count: Integer;
    procedure atualizarProgress2;
  protected
    procedure Execute; override;
  public
    var
      timeS: Integer;
  end;

var
  FTarefa2: TfTarefa2;


implementation

{$R *.dfm}

procedure TfTarefa2.btnIniciarClick(Sender: TObject);
var
  Th1: TTread1;
  Th2: TTread2;
begin
  Th1 := TTread1.Create(True);
  Th1.timeS := edtIntervalo1.Value;
  Th1.Resume;

  Th2 := TTread2.Create(True);
  Th2.timeS := edtIntervalo2.Value;
  Th2.Resume;
end;

{ TTread1 }

procedure TTread1.Execute;
var
  i: Integer;
begin
  i := 1;
  while i <= 100 do
  begin
    Sleep(timeS);
    Self.Count := i;
    SYNCHRONIZE(Self.atualizarProgress1);
    i := i + 1;
  end;
end;

procedure TTread1.atualizarProgress1;
begin
  FTarefa2.ProgressBar1.Max := 100;
  FTarefa2.ProgressBar1.Position := Self.Count;
  FTarefa2.lbContador1.Caption := 'THREAD1 - Contador: ' + IntToStr(Self.Count);
end;


{ TTread2 }

procedure TTread2.Execute;
var
  i: Integer;
begin
  i := 1;
  while i <= 100 do
  begin
    Sleep(timeS);
    Self.Count := i;
    SYNCHRONIZE(Self.atualizarProgress2);
    i := i + 1;
  end;
end;

procedure TTread2.atualizarProgress2;
begin
  FTarefa2.ProgressBar2.Max := 100;
  FTarefa2.ProgressBar2.Position := Self.Count;
  FTarefa2.lbContador2.Caption := 'THREAD2 - Contador: ' + IntToStr(Self.Count);
end;

end.

