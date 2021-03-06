program Cadastro;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UfrmCadastroCliente in 'UfrmCadastroCliente.pas' {frmCadastroCliente},
  UdmConexao in 'UdmConexao.pas' {dmConexao: TDataModule},
  UfrmCadastroPadrao in 'UfrmCadastroPadrao.pas' {frmCadastroPadrao},
  UfrmCadastroProduto in 'UfrmCadastroProduto.pas' {frmCadastroProduto},
  UfrmPesquisaPadrao in 'UfrmPesquisaPadrao.pas' {frmPesquisaPadrao},
  UfrmPesquisaCliente in 'UfrmPesquisaCliente.pas' {frmPesquisaCliente},
  UfrmPesquisaProduto in 'UfrmPesquisaProduto.pas' {frmPesquisaProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
