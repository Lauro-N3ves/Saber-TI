unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    EdtMedia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);

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
  p1,p2,p3,p4:Integer;
  Md :Double;
begin
     p1 := StrToInt(Edit1.Text);
     p2 := StrToInt(Edit2.Text);
     p3 := StrToInt(Edit3.Text);
     p4 := StrToInt(Edit4.Text);
     Md:= (p1+p2+p3+p4)/4;
     EdtMedia.Text:= FloatToStr(Md);
end;

procedure TPrincipalF.Edit1Change(Sender: TObject);
begin

end;

end.

