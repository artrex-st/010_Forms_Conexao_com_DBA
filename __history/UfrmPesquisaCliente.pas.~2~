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
  TfrmPesquisaPadrao1 = class(TfrmPesquisaPadrao)
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaPadrao1: TfrmPesquisaPadrao1;

implementation

{$R *.dfm}

procedure TfrmPesquisaPadrao1.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  fdqTabela.Close;
  fdqTabela.SQL.Clear;
  fdqTabela.SQL.Add('select * from clientes where NOME like :pesq');
  fdqTabela.ParamByName('pesq').AsString:=edtPesquisa.Text+'%';
  fdqTabela.Open();
end;

end.
