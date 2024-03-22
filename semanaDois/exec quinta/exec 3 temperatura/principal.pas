unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    Button1: TButton;
    edtCelc: TEdit;
    edtFah: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  PrincipalF: TPrincipalF;

implementation

{$R *.lfm}

{ TPrincipalF }

procedure TPrincipalF.Button1Click(Sender: TObject);
var
tmpC,tmpF,conversao: Double;
begin
  tmpC:=StrToFloat(edtCelc.text);
  conversao:=(tmpC * 1.8 + 32);

  edtFah.Text:=FloatToStr(conversao);
end;

end.

