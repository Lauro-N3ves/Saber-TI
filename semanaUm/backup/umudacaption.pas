unit uMudaCaption;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmFormExc2 }

  TfrmFormExc2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmFormExc2: TfrmFormExc2;

implementation

{$R *.lfm}

{ TfrmFormExc2 }

procedure TfrmFormExc2.FormCreate(Sender: TObject);
begin

end;

procedure TfrmFormExc2.Edit1Change(Sender: TObject);
begin

end;

procedure TfrmFormExc2.Button1Click(Sender: TObject);
begin
  //frmFormExc2.;
  frmFormExc2.Caption:=Edit1.Text;
end;

end.

