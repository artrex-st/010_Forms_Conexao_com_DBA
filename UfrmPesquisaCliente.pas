unit UfrmPesquisaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPesquisaCliente = class(TfrmPesquisaPadrao)
    cbCampo: TComboBox;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaCliente: TfrmPesquisaCliente;

implementation

{$R *.dfm}

procedure TfrmPesquisaCliente.btnPesquisarClick(Sender: TObject);
var campo:string;
begin
  inherited;
  campo := cbCampo.Text;
  fdqTabela.Close;
  fdqTabela.SQL.Clear;
  fdqTabela.SQL.Add('select * from clientes where '+campo+' like :pesq');
  fdqTabela.ParamByName('pesq').AsString:=edtPesquisa.Text+'%';
  fdqTabela.Open();
end;

end.
