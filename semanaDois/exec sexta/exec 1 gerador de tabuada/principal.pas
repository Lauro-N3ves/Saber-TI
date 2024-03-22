unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);

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
  i,cont:integer;
begin
  i:=StrToInt(Edit1.text);
  cont:=0;
  for cont:= 0 to 10 do
  begin

     Memo1.Append(IntToStr(i) + 'x' + inttostr(cont) + '=' + IntToStr(i*cont));
  end;

end;

procedure TPrincipalF.Memo1Change(Sender: TObject);
begin

end;


end.

