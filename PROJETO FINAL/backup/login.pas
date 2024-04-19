unit login;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, menuPrincipal;

type

  { TloginF }

  TloginF = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    lblNomeLogin: TLabel;
    lblSenhaLogin: TLabel;
    lblLogin: TLabel;
    loginF: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  loginF: TloginF;

implementation

{$R *.lfm}

{ TloginF }

procedure TloginF.Button1Click(Sender: TObject);
begin
  MenuPrincipalF:=TMenuPrincipalF.Create(Self);
  MenuPrincipalF.ShowModal;
end;

end.

