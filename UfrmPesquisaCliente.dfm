inherited frmPesquisaCliente: TfrmPesquisaCliente
  Caption = 'frmPesquisaCliente'
  ClientWidth = 811
  ExplicitWidth = 817
  PixelsPerInch = 96
  TextHeight = 13
  inherited edtPesquisa: TEdit
    Left = 208
    Width = 416
    ExplicitLeft = 208
    ExplicitWidth = 416
  end
  inherited btnPesquisar: TButton
    Left = 630
    Top = 48
    OnClick = btnPesquisarClick
    ExplicitLeft = 630
    ExplicitTop = 48
  end
  inherited dbGrid: TDBGrid
    Width = 633
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end>
  end
  inherited GroupBox1: TGroupBox
    Top = 203
    Width = 633
    ExplicitTop = 203
    ExplicitWidth = 633
  end
  object cbCampo: TComboBox [5]
    Left = 72
    Top = 50
    Width = 130
    Height = 21
    ItemIndex = 0
    TabOrder = 4
    Text = 'ID'
    Items.Strings = (
      'ID'
      'NOME'
      'CPF'
      'RUA'
      'BAIRRO')
  end
  inherited fdqTabela: TFDQuery
    SQL.Strings = (
      'select * from clientes')
  end
end
