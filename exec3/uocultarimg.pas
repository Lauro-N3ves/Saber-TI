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
    procedure Image1Click(Sender: TObject);
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

end;

procedure TfrmFormExc3.Image1Click(Sender: TObject);
begin
 Image1.Visible:=FalseBoolStrs;
end;

end.

