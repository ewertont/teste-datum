object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Tarefa3'
  ClientHeight = 295
  ClientWidth = 548
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgridProjetos: TDBGrid
    Left = 0
    Top = 0
    Width = 548
    Height = 217
    DataSource = dsDados
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProjeto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProjeto'
        Width = 322
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 114
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 221
    Width = 548
    Height = 74
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 223
    DesignSize = (
      548
      74)
    object lbTotal: TLabel
      Left = 262
      Top = 10
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Total R$'
    end
    object lbTotalDivisao: TLabel
      Left = 408
      Top = 10
      Width = 81
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Total divis'#245'es R$'
    end
    object edtTotal: TEdit
      Left = 262
      Top = 27
      Width = 140
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
    object edtTotalDivisao: TEdit
      Left = 408
      Top = 27
      Width = 140
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
    object btnTotal: TButton
      Left = 0
      Top = 25
      Width = 120
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Obter Total'
      TabOrder = 2
      OnClick = btnTotalClick
    end
    object btnTotalDivisao: TButton
      Left = 126
      Top = 25
      Width = 120
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Obter Total Divis'#245'es'
      TabOrder = 3
      OnClick = btnTotalDivisaoClick
    end
  end
  object memProjetos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 224
    Top = 32
    object memProjetosidProjeto: TIntegerField
      FieldName = 'idProjeto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object memProjetosNomeProjeto: TStringField
      FieldName = 'NomeProjeto'
      Size = 10
    end
    object memProjetosValor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object dsDados: TDataSource
    DataSet = memProjetos
    Left = 296
    Top = 32
  end
end
