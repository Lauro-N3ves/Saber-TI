unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  CadClientes, CadUsuarios;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    btnCadClientes: TButton;
    BtnCadUsuarios: TButton;
    MainMenu1: TMainMenu;
    subCliente: TMenuItem;
    subUsuario: TMenuItem;
    mnCadastros: TMenuItem;
    procedure btnCadClientesClick(Sender: TObject);
    procedure subClienteClick(Sender: TObject);
    procedure subUsuarioClick(Sender: TObject);
  private

  public

  end;

var
  PrincipalF: TPrincipalF;

implementation

{$R *.lfm}

{ TPrincipalF }



procedure TPrincipalF.subClienteClick(Sender: TObject);
begin
  CadClientesF:=TCadClientesF.Create(Self);
  CadClientesF.ShowModal;
end;

procedure TPrincipalF.btnCadClientesClick(Sender: TObject);
begin

end;

procedure TPrincipalF.subUsuarioClick(Sender: TObject);
begin
  CadUsuariosF:=TCadUsuariosF.Create(Self);
  CadUsuariosF.ShowModal;
end;



end.

