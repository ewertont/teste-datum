object FTarefa1: TFTarefa1
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Tarefa1'
  ClientHeight = 296
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbColunas: TLabel
    Left = 8
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lbTabelas: TLabel
    Left = 199
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object lbCondicoes: TLabel
    Left = 390
    Top = 8
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object lbSqlGerado: TLabel
    Left = 8
    Top = 151
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object colunas: TMemo
    Left = 8
    Top = 26
    Width = 185
    Height = 119
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object tabelas: TMemo
    Left = 199
    Top = 27
    Width = 185
    Height = 119
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object condicoes: TMemo
    Left = 390
    Top = 26
    Width = 185
    Height = 119
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object sqlGerado: TMemo
    Left = 8
    Top = 170
    Width = 567
    Height = 118
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object btnGerar: TButton
    Left = 581
    Top = 26
    Width = 99
    Height = 30
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = btnGerarClick
  end
  object btnLimpar: TButton
    Left = 581
    Top = 62
    Width = 99
    Height = 30
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = btnGerarClick
  end
end
