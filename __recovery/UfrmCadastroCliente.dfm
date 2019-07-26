inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 366
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitHeight = 395
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbCampos: TGroupBox [0]
    Height = 316
    Caption = 'Clientes:'
    TabOrder = 0
    ExplicitHeight = 316
    object lblBairro: TLabel
      Left = 31
      Top = 217
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object lblCpf: TLabel
      Left = 31
      Top = 123
      Width = 23
      Height = 13
      Caption = 'CPF:'
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
    object lblRua: TLabel
      Left = 31
      Top = 169
      Width = 23
      Height = 13
      Caption = 'Rua:'
    end
    object dbeBairro: TDBEdit
      Left = 31
      Top = 236
      Width = 203
      Height = 21
      DataField = 'BAIRRO'
      DataSource = dsTabela
      MaxLength = 40
      TabOrder = 0
    end
    object dbeCpf: TDBEdit
      Left = 31
      Top = 142
      Width = 121
      Height = 21
      DataField = 'CPF'
      DataSource = dsTabela
      MaxLength = 16
      TabOrder = 1
      OnExit = dbeCpfExit
    end
    object dbeId: TDBEdit
      Left = 31
      Top = 48
      Width = 121
      Height = 21
      DataField = 'ID'
      DataSource = dsTabela
      Enabled = False
      TabOrder = 2
    end
    object dbeNome: TDBEdit
      Left = 31
      Top = 96
      Width = 203
      Height = 21
      DataField = 'NOME'
      DataSource = dsTabela
      MaxLength = 40
      TabOrder = 3
    end
    object dbeRua: TDBEdit
      Left = 31
      Top = 188
      Width = 203
      Height = 21
      DataField = 'RUA'
      DataSource = dsTabela
      MaxLength = 45
      TabOrder = 4
    end
  end
  inherited gbBotoes: TGroupBox [1]
    TabOrder = 1
    inherited btnPesquisa: TButton
      OnClick = btnPesquisaClick
    end
  end
  inherited tabela: TFDQuery
    SQL.Strings = (
      'select * from CLIENTES')
    Left = 480
    Top = 280
  end
  inherited dsTabela: TDataSource
    Left = 528
    Top = 280
  end
end
