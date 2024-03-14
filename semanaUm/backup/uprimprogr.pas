unit uPrimProgr;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmPrimProg }

  TfrmPrimProg = class(TForm)
    btnMensagem: TButton;
    procedure btnMensagemClick(Sender: TObject);
  private

  public

  end;

var
  frmPrimProg: TfrmPrimProg;

implementation

{$R *.lfm}

{ TfrmPrimProg }

procedure TfrmPrimProg.btnMensagemClick(Sender: TObject);
begin
  ShowMessage('Meu primeiro Programa');
end;

end.

