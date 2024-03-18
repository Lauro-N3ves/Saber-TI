unit uSetaImg;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms,lcltype, Controls, Graphics, Dialogs, ExtCtrls, Buttons;

type

  { TfrnExec4 }

  TfrnExec4 = class(TForm)
    btnLeft: TBitBtn;
    btnRight: TBitBtn;
    btnDown: TBitBtn;
    btnUp: TBitBtn;
    Image1: TImage;
    procedure btnDownClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnLeftClick(Sender: TObject);
    procedure btnUpClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  frnExec4: TfrnExec4;

implementation

{$R *.lfm}

{ TfrnExec4 }

procedure TfrnExec4.Image1Click(Sender: TObject);
begin

end;

procedure TfrnExec4.btnUpClick(Sender: TObject);
begin
  Image1.top:= Image1.top - 20;
end;

procedure TfrnExec4.FormKeyPress(Sender: TObject; var Key: char);
begin
      if Key = VK_UP THEN
         Image1.top:= Image1.top - 20
      else




end;

procedure TfrnExec4.btnLeftClick(Sender: TObject);
begin
     Image1.left:= Image1.left - 20;

end;

procedure TfrnExec4.btnRightClick(Sender: TObject);
begin
     Image1.left:= Image1.left + 20;
end;

procedure TfrnExec4.btnDownClick(Sender: TObject);
begin
     Image1.top:= Image1.top + 20;
end;

end.

