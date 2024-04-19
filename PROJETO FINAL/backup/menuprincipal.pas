unit menuPrincipal;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, modelo, CadCategoria,
  CadCliente, cadProdutos, cadUsuario, Orcamento, relClientes, relProdutos, relOrcamento,
  relCategorias, SobreF;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
    Separator1: TMenuItem;
    subMnRelatoriosClientes: TMenuItem;
    subMnRelatoriosProdutos: TMenuItem;
    subMnRelatoriosOrcamento: TMenuItem;
    subMnRelatoriosCategorias: TMenuItem;
    subMnVendasOrcamento: TMenuItem;
    subMnCadastroCategoria: TMenuItem;
    subMnCadastroCliente: TMenuItem;
    subMnCadastroProdutos: TMenuItem;
    subMnCadastroUsuarios: TMenuItem;
    mnCadastro: TMenuItem;
    mnVendas: TMenuItem;
    mnReltorios: TMenuItem;
    mnSobre: TMenuItem;
    mnSair: TMenuItem;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure mnCadastroClick(Sender: TObject);
    procedure mnSairClick(Sender: TObject);
    procedure mnSobreClick(Sender: TObject);
    procedure subMnCadastroCategoriaClick(Sender: TObject);
    procedure subMnCadastroClienteClick(Sender: TObject);
    procedure subMnCadastroProdutosClick(Sender: TObject);
    procedure subMnCadastroUsuariosClick(Sender: TObject);
    procedure subMnRelatoriosCategoriasClick(Sender: TObject);
    procedure subMnRelatoriosClientesClick(Sender: TObject);
    procedure subMnRelatoriosOrcamentoClick(Sender: TObject);
    procedure subMnRelatoriosProdutosClick(Sender: TObject);
    procedure subMnVendasOrcamentoClick(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }

procedure TMenuPrincipalF.FormCreate(Sender: TObject);
begin

end;

procedure TMenuPrincipalF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CloseAction:=caFree;
end;

procedure TMenuPrincipalF.mnCadastroClick(Sender: TObject);
begin
  end;

procedure TMenuPrincipalF.mnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMenuPrincipalF.mnSobreClick(Sender: TObject);
begin
  SobreForms:=TSobreForms.Create(Self);
  SobreForms.ShowModal;
end;

procedure TMenuPrincipalF.subMnCadastroCategoriaClick(Sender: TObject);
begin
  CadCategoriaF:=TCadCategoriaF.Create(self);
  CadCategoriaF.ShowModal;
end;

procedure TMenuPrincipalF.subMnCadastroClienteClick(Sender: TObject);
begin
  CadClienteF:=TCadClienteF.Create(self);
  CadClienteF.ShowModal;
end;

procedure TMenuPrincipalF.subMnCadastroProdutosClick(Sender: TObject);
begin
  cadProdutosF:=TcadProdutosF.Create(Self);
  cadProdutosF.ShowModal;
end;

procedure TMenuPrincipalF.subMnCadastroUsuariosClick(Sender: TObject);
begin
  cadUsuarioF:=TcadUsuarioF.Create(Self);
  cadUsuarioF.ShowModal;
end;

procedure TMenuPrincipalF.subMnRelatoriosCategoriasClick(Sender: TObject);
begin
  relCategoriasF:=TrelCategoriasF.Create(Self);
  relCategoriasF.ShowModal;
end;

procedure TMenuPrincipalF.subMnRelatoriosClientesClick(Sender: TObject);
begin
  relClientesF:=TrelClientesF.Create(Self);
  relClientesF.ShowModal;
end;

procedure TMenuPrincipalF.subMnRelatoriosOrcamentoClick(Sender: TObject);
begin
  relOrcamentoF:=TrelOrcamentoF.Create(Self);
  relOrcamentoF.ShowModal;
end;

procedure TMenuPrincipalF.subMnRelatoriosProdutosClick(Sender: TObject);
begin
  relProdutosF:= TrelProdutosF.Create(Self);
  relProdutosF.ShowModal;

end;

procedure TMenuPrincipalF.subMnVendasOrcamentoClick(Sender: TObject);
begin
  OrcamentoF:=TOrcamentoF.Create(Self);
  OrcamentoF.ShowModal;
end;

end.

