unit OpSobre;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TOpSobreF }

  TOpSobreF = class(TForm)
    Memo1: TMemo;
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  OpSobreF: TOpSobreF;

implementation

{$R *.lfm}

{ TOpSobreF }

procedure TOpSobreF.Memo1Change(Sender: TObject);
begin

end;

end.

