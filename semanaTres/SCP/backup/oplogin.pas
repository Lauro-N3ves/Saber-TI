unit OpLogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,CadEsqSenha,MenuPrincipal,Global;

type

  { TOpLoginF }

  TOpLoginF = class(TForm)
    btnEntrar: TButton;
    btnCancelar: TButton;
    edtEmail: TEdit;
    edtSenha: TEdit;
    lblEsqSenha: TLabel;
    lblEmail: TLabel;
    lblSenha: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure Label1Click(Sender: TObject);
    procedure lblEsqSenhaClick(Sender: TObject);
  private

  public

  end;

var
  OpLoginF: TOpLoginF;

implementation

{$R *.lfm}

{ TOpLoginF }



procedure TOpLoginF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction:=caFree;
end;

procedure TOpLoginF.Label1Click(Sender: TObject);
begin

end;

procedure TOpLoginF.lblEsqSenhaClick(Sender: TObject);
begin
  tela:=1;
  CadEsqSenhaF:=TCadEsqSenhaF.create(self);
  OpLoginF.Visible:=False;
  CadEsqSenhaF.ShowModal;
end;

procedure TOpLoginF.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TOpLoginF.btnEntrarClick(Sender: TObject);
begin
     MenuPrincipalF:=TMenuPrincipalF.Create(self);
     OpLoginF.Visible:=False;
     MenuPrincipalF.ShowModal;
end;

end.

