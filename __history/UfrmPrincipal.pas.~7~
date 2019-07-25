unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mainMenu: TMainMenu;
    meCadastro: TMenuItem;
    cliente1: TMenuItem;
    Produto1: TMenuItem;
    procedure cliente1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmCadastroCliente, UfrmCadastroProduto;

procedure TfrmPrincipal.cliente1Click(Sender: TObject); //--------------------- Cliente
begin
  if not Assigned(frmCadastroCliente) then
    begin
      frmCadastroCliente := TfrmCadastroCliente.Create(Self);
    end;
    frmCadastroCliente.Show;

end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key =#27 then    //tem que verificar o keyPreviw
    frmPrincipal.Close;
  if key = #13 then
    begin
      key := #0;
      perform(wm_nextdlgctl,0,0);
    end;
end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject); //--------------------- Produto
begin
  if not Assigned(frmCadastroProduto) then
    begin
      frmCadastroProduto := TfrmCadastroProduto.Create(Self);
    end;
    frmCadastroProduto.Show;
end;

end.
