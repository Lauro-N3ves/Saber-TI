unit CadModelo;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TCadModeloF }

  TCadModeloF = class(TForm)
    BtnNovo: TButton;
    BtnEditar: TButton;
    BtnGravar: TButton;
    BtnExcluir: TButton;
    BtnSair: TButton;
    Panel1: TPanel;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  CadModeloF: TCadModeloF;

implementation

{$R *.lfm}

{ TCadModeloF }

procedure TCadModeloF.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCadModeloF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction:=caFree;
end;

end.

