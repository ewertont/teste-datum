object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Tarefa2'
  ClientHeight = 208
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 260
    Height = 208
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 160
    ExplicitWidth = 711
    ExplicitHeight = 213
    object lbIntervalo1: TLabel
      Left = 54
      Top = 12
      Width = 50
      Height = 13
      Caption = 'Intervalo1'
    end
    object lbIntervalo2: TLabel
      Left = 142
      Top = 12
      Width = 50
      Height = 13
      Caption = 'Intervalo2'
    end
    object lbContador2: TLabel
      Left = 54
      Top = 147
      Width = 117
      Height = 13
      Caption = 'THREAD2 - Contador : 0'
    end
    object lbContador1: TLabel
      Left = 54
      Top = 100
      Width = 117
      Height = 13
      Caption = 'THREAD1 - Contador : 0'
    end
    object edtIntervalo1: TSpinEdit
      Left = 54
      Top = 31
      Width = 65
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object btnIniciar: TButton
      Left = 54
      Top = 69
      Width = 153
      Height = 25
      Caption = 'Iniciar'
      TabOrder = 1
      OnClick = btnIniciarClick
    end
    object edtIntervalo2: TSpinEdit
      Left = 142
      Top = 31
      Width = 65
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object ProgressBar2: TProgressBar
      Left = 54
      Top = 166
      Width = 153
      Height = 22
      TabOrder = 3
    end
    object ProgressBar1: TProgressBar
      Left = 54
      Top = 119
      Width = 153
      Height = 22
      TabOrder = 4
    end
  end
end
