unit SobreF;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TSobreForms }

  TSobreForms = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  SobreForms: TSobreForms;

implementation

{$R *.lfm}

{ TSobreForms }

procedure TSobreForms.Label1Click(Sender: TObject);
begin

end;

procedure TSobreForms.Image1Click(Sender: TObject);
begin

end;

end.

