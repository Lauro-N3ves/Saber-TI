unit uSetaImg;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons, LCLType;

type

  { TfrnExec4 }

  TfrnExec4 = class(TForm)
    Image1: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private

  public

  end;

var
  frnExec4: TfrnExec4;

implementation

{$R *.lfm}

{ TfrnExec4 }

procedure TfrnExec4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_UP then
    Image1.Top := Image1.Top - 20
  else if Key = VK_DOWN then
    Image1.Top := Image1.Top + 20
  else if Key = VK_LEFT then
    Image1.Left := Image1.Left - 20
  else if Key = VK_RIGHT then
    Image1.Left := Image1.Left + 20;
end;

end.

