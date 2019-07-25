object frmPesquisaPadrao: TfrmPesquisaPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'frmPesquisaPadrao'
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblPesquisa: TLabel
    Left = 72
    Top = 31
    Width = 50
    Height = 13
    Caption = 'Pesquisar:'
  end
  object edtPesquisa: TEdit
    Left = 72
    Top = 50
    Width = 345
    Height = 21
    TabOrder = 0
  end
  object btnPesquisar: TButton
    Left = 446
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
  end
  object dbGrid: TDBGrid
    Left = 72
    Top = 77
    Width = 449
    Height = 120
    DataSource = dsTabela
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 72
    Top = 207
    Width = 449
    Height = 62
    TabOrder = 3
    object btnCancel: TButton
      Left = 97
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 0
    end
    object btnOK: TButton
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
    end
  end
  object fdqTabela: TFDQuery
    Connection = dmConexao.conexao
    Left = 536
    Top = 160
  end
  object dsTabela: TDataSource
    AutoEdit = False
    DataSet = fdqTabela
    Left = 544
    Top = 216
  end
end
