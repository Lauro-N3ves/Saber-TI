unit OpLogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TOpLoginF }

  TOpLoginF = class(TForm)
    btnEntrar: TButton;
    btnEsqueciSenha: TButton;
    btnCancelar: TButton;
    edtEmail: TEdit;
    edtSenha: TEdit;
    lblEmail: TLabel;
    lblSenha: TLabel;
    procedure lblSenhaClick(Sender: TObject);
  private

  public

  end;

var
  OpLoginF: TOpLoginF;

implementation

{$R *.lfm}

{ TOpLoginF }

procedure TOpLoginF.lblSenhaClick(Sender: TObject);
begin

end;

end.

