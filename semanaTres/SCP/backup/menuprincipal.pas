unit MenuPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

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
    procedure MnCadastrosClick(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }

procedure TMenuPrincipalF.MnCadastrosClick(Sender: TObject);
begin

end;



end.

