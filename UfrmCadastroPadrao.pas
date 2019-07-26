unit UfrmCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList,
  Vcl.ImgList;

type
  TfrmCadastroPadrao = class(TForm)
    gbBotoes: TGroupBox;
    btnAdd: TButton;
    btnDel: TButton;
    btnEdit: TButton;
    btnCancel: TButton;
    btnSave: TButton;
    btnFirst: TButton;
    btnBack: TButton;
    btnNext: TButton;
    btnLast: TButton;
    tabela: TFDQuery;
    dsTabela: TDataSource;
    btnPesquisa: TButton;
    gbCampos: TGroupBox;
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure Ativo();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.dfm}

uses UdmConexao;

procedure TfrmCadastroPadrao.Ativo;
begin
  if btnSave.Enabled=false then
    begin
      btnAdd.Enabled:=false;
      btnEdit.Enabled:=false;
      btnDel.Enabled:=false;
      btnNext.Enabled:=false;
      btnBack.Enabled:=false;
      btnFirst.Enabled:=false;
      btnLast.Enabled:=false;
      btnSave.Enabled:=true;
      btnCancel.Enabled:=true;
      gbCampos.Enabled:=true;
    end
      else
        begin
          btnAdd.Enabled:=true;
          btnEdit.Enabled:=true;
          btnDel.Enabled:=true;
          btnNext.Enabled:=true;
          btnBack.Enabled:=true;
          btnFirst.Enabled:=true;
          btnLast.Enabled:=true;
          btnSave.Enabled:=false;
          btnCancel.Enabled:=false;
          gbCampos.Enabled:=false;
        end
end;

procedure TfrmCadastroPadrao.btnAddClick(Sender: TObject);
begin
  tabela.Append;
  Ativo();
  end;

procedure TfrmCadastroPadrao.btnDelClick(Sender: TObject);
var
  user:Integer;
begin
  user:=Application.MessageBox('Deseja realmente Excluir?','Exclusão de cadastro.',MB_YESNO+MB_ICONQUESTION);
  //6= sim / 7= nao
  if user=6 then
    begin
      tabela.Delete;
      Application.MessageBox('Item Excluido!','Exclusão de cadastro.',MB_OK+MB_ICONEXCLAMATION);
    end
    else
      begin
        Application.MessageBox('CANCELADO!','Exclusão de cadastro cancelada.',MB_OK+MB_ICONEXCLAMATION);
      end;

end;

procedure TfrmCadastroPadrao.btnEditClick(Sender: TObject);
begin
  tabela.Edit;
  Ativo();
end;

procedure TfrmCadastroPadrao.btnFirstClick(Sender: TObject);
begin
  tabela.First;
end;

procedure TfrmCadastroPadrao.btnLastClick(Sender: TObject);
begin
  tabela.Last;
end;

procedure TfrmCadastroPadrao.btnNextClick(Sender: TObject);
begin
  tabela.Next;
end;

procedure TfrmCadastroPadrao.btnBackClick(Sender: TObject);
begin
  tabela.Prior;
end;

procedure TfrmCadastroPadrao.btnSaveClick(Sender: TObject);
begin
  tabela.Post;
  Ativo();
  Application.MessageBox('Salvo!','Salvo com sucesso.',MB_OK+MB_ICONEXCLAMATION);

end;

procedure TfrmCadastroPadrao.btnCancelClick(Sender: TObject);
begin
  tabela.Cancel;
  Application.MessageBox('CANCELADO!','Ação cancelada.',MB_OK+MB_ICONEXCLAMATION);
  Ativo();
end;

end.
