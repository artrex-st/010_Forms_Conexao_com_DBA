unit UfrmCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadastroPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmCadastroProduto = class(TfrmCadastroPadrao)
    dbeId: TDBEdit;
    lblId: TLabel;
    lblNome: TLabel;
    dbeNome: TDBEdit;
    lblEstoque: TLabel;
    dbeEstoque: TDBEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

uses UdmConexao, UfrmPesquisaProduto;
{$R *.dfm}

procedure TfrmCadastroProduto.btnPesquisaClick(Sender: TObject);
var
  form : TfrmPesquisaProduto;
begin
  inherited;
  form := TfrmPesquisaProduto.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TfrmCadastroProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree; // fechar da base
end;

procedure TfrmCadastroProduto.FormDestroy(Sender: TObject);
begin
  inherited;
  frmCadastroProduto:=nil;
end;

procedure TfrmCadastroProduto.FormShow(Sender: TObject);
begin
  inherited;
  tabela.Open();
end;

end.
