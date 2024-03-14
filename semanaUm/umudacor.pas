unit uMudaCor;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ColorBox;

type

  { TfrmFormularioCor }

  TfrmFormularioCor = class(TForm)
    ColorBox1: TColorBox;
    Label1: TLabel;
    procedure ColorBox1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private

  public

  end;

var
  frmFormularioCor: TfrmFormularioCor;

implementation

{$R *.lfm}

{ TfrmFormularioCor }


procedure TfrmFormularioCor.ComboBox1Change(Sender: TObject);
begin

end;

procedure TfrmFormularioCor.ColorBox1Change(Sender: TObject);
begin
  frmFormularioCor.Color:= ColorBox1.Selected;
end;

end.

