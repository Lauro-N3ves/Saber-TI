unit menuPrincipal;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, cadCategoria;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
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
    procedure subMnCadastroCategoriaClick(Sender: TObject);
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

procedure TMenuPrincipalF.subMnCadastroCategoriaClick(Sender: TObject);
begin
  cadCategoriaF.showmodal;
end;

end.

