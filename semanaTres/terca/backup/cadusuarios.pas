unit CadUsuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TCadUsuariosF }

  TCadUsuariosF = class(TForm)
    btnCadUsuario: TButton;
    procedure btnCadUsuarioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  CadUsuariosF: TCadUsuariosF;

implementation

{$R *.lfm}

{ TCadUsuariosF }

procedure TCadUsuariosF.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
     ShowMessage('fechei');
     CloseAction:= caFree;
end;

procedure TCadUsuariosF.btnCadUsuarioClick(Sender: TObject);
begin
  CloseAction:= caFree;
end;

end.

