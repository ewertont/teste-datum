object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Teste Datum TI - Ewerton Tavares'
  ClientHeight = 246
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mainMenu1
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object mainMenu1: TMainMenu
    Left = 24
    Top = 16
    object arefa11: TMenuItem
      Caption = 'Menu'
      object menuTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = menuTarefa1Click
      end
      object menuTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = menuTarefa2Click
      end
      object menuTarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = menuTarefa3Click
      end
    end
  end
end
