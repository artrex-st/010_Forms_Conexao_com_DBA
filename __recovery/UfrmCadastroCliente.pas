unit UfrmCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadastroPadrao, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroCliente = class(TfrmCadastroPadrao)
    dbeId: TDBEdit;
    lblId: TLabel;
    lblNome: TLabel;
    dbeNome: TDBEdit;
    lblCpf: TLabel;
    dbeCpf: TDBEdit;
    lblRua: TLabel;
    dbeRua: TDBEdit;
    lblBairro: TLabel;
    dbeBairro: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbeCpfExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

uses UdmConexao, UfrmPesquisaCliente;

procedure TfrmCadastroCliente.btnPesquisaClick(Sender: TObject);
var
  form : TfrmPesquisaCliente;
begin
  inherited;
  form := TfrmPesquisaCliente.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TfrmCadastroCliente.dbeCpfExit(Sender: TObject);
begin
  inherited;
  Application.MessageBox('verificado foi digitado.','Verifaco.',MB_OK+MB_ICONINFORMATION);
end;

procedure TfrmCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree; // fechar da base
end;

procedure TfrmCadastroCliente.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  inherited;

end;

procedure TfrmCadastroCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  frmCadastroCliente:=nil;
end;

procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  tabela.Open();
end;

end.
