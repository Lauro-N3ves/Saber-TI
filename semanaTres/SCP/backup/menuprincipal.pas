unit MenuPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus,OpSobre,CadClientes, CadUsuarios,CadVendedores, CadProdutos, CadFornecedor;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
    MnUsuario: TMenuItem;
    MnCadastros: TMenuItem;
    MnManutencao: TMenuItem;
    MnSobre: TMenuItem;
    MnSair: TMenuItem;
    MnCliente: TMenuItem;
    MnProdutos: TMenuItem;
    MnFornecedor: TMenuItem;
    MnVenderores: TMenuItem;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure MnClienteClick(Sender: TObject);
    procedure MnFornecedorClick(Sender: TObject);
    procedure MnProdutosClick(Sender: TObject);
    procedure MnSairClick(Sender: TObject);
    procedure MnSobreClick(Sender: TObject);
    procedure MnUsuarioClick(Sender: TObject);
    procedure MnVenderoresClick(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }


procedure TMenuPrincipalF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CloseAction:=caFree;
  Application.Terminate;
end;

procedure TMenuPrincipalF.MnClienteClick(Sender: TObject);
begin
  CadClientesF:=TCadClientesF.create(self);
  CadClientesF.showModal;
end;

procedure TMenuPrincipalF.MnFornecedorClick(Sender: TObject);
begin
     CadFornecedorF:=TCadFornecedorF.create(self);
     CadFornecedorF.ShowModal;
end;

procedure TMenuPrincipalF.MnProdutosClick(Sender: TObject);
begin
     CadProdutosF:=TCadProdutosF.create(self);
     CadProdutosF.ShowModal;
end;

procedure TMenuPrincipalF.MnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TMenuPrincipalF.MnSobreClick(Sender: TObject);
begin
     OpSobreF:=TOpSobreF.create(self);
     OpSobreF.ShowModal;
end;

procedure TMenuPrincipalF.MnUsuarioClick(Sender: TObject);
begin
  CadUsuariosF:=TCadUsuariosF.create(Self);
  CadUsuariosF.ShowModal;
end;

procedure TMenuPrincipalF.MnVenderoresClick(Sender: TObject);
begin
     CadVendedoresF:=TCadVendedoresF.create(self);
     CadVendedoresF.ShowModal;
end;



end.

