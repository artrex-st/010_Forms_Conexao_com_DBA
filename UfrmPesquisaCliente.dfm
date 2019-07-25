inherited frmPesquisaCliente: TfrmPesquisaCliente
  Caption = 'frmPesquisaCliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnPesquisar: TButton
    OnClick = btnPesquisarClick
  end
  inherited dbGrid: TDBGrid
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
      end>
  end
  inherited fdqTabela: TFDQuery
    SQL.Strings = (
      'select * from clientes')
  end
end
