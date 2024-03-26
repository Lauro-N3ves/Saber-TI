unit CadUsuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TCadUsuariosF }

  TCadUsuariosF = class(TForm)
    btnCadUsuario: TButton;
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

end.

