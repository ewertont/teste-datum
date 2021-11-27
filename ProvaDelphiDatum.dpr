program ProvaDelphiDatum;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  spQuery in 'spQuery.pas',
  uTarefa1 in 'uTarefa1.pas' {FTarefa1},
  uTarefa2 in 'uTarefa2.pas' {fTarefa2},
  uTarefa3 in 'uTarefa3.pas' {fTarefa3};

{$R *.res}
//EWERTON TAVARES
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
