unit uOcultarImg;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfrmFormExc3 }

  TfrmFormExc3 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  frmFormExc3: TfrmFormExc3;

implementation

{$R *.lfm}

{ TfrmFormExc3 }

procedure TfrmFormExc3.Button1Click(Sender: TObject);
begin

  if Image1.Visible = true then
     Image1.Visible:=false
  else
    Image1.Visible:= true;
  end;
end.


