inherited frmCadastroProduto: TfrmCadastroProduto
  Caption = 'Cadastro de Produtos'
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbBotoes: TGroupBox
    inherited btnPesquisa: TButton
      OnClick = btnPesquisaClick
    end
  end
  inherited gbCampos: TGroupBox
    Caption = 'Produtos:'
    ExplicitLeft = 0
    ExplicitTop = 50
    ExplicitWidth = 666
    ExplicitHeight = 278
    object lblEstoque: TLabel
      Left = 31
      Top = 125
      Width = 43
      Height = 13
      Caption = 'Estoque:'
    end
    object lblId: TLabel
      Left = 31
      Top = 29
      Width = 15
      Height = 13
      Caption = 'ID:'
    end
    object lblNome: TLabel
      Left = 31
      Top = 77
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object dbeEstoque: TDBEdit
      Left = 31
      Top = 144
      Width = 121
      Height = 21
      DataField = 'ESTOQUE'
      DataSource = dsTabela
      MaxLength = 14
      TabOrder = 0
    end
    object dbeId: TDBEdit
      Left = 31
      Top = 48
      Width = 121
      Height = 21
      DataField = 'ID'
      DataSource = dsTabela
      Enabled = False
      TabOrder = 1
    end
    object dbeNome: TDBEdit
      Left = 31
      Top = 96
      Width = 121
      Height = 21
      DataField = 'NOME'
      DataSource = dsTabela
      MaxLength = 45
      TabOrder = 2
    end
  end
  inherited tabela: TFDQuery
    SQL.Strings = (
      'select * from produtos')
    Left = 480
    Top = 272
  end
  inherited dsTabela: TDataSource
    Left = 512
    Top = 272
  end
end
