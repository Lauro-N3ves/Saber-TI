unit CadEsqSenha;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,MenuPrincipal,CadUsuarios;

type

  { TCadEsqSenhaF }

  TCadEsqSenhaF = class(TForm)
    btnRedefinir: TButton;
    Button2: TButton;
    edtEsqConfirma1: TEdit;
    edtEsqEmail1: TEdit;
    edtEsqSenhaNova1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btnRedefinirClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  CadEsqSenhaF: TCadEsqSenhaF;
  tela:integer;
implementation
uses
  OpLogin;


{$R *.lfm}

{ TCadEsqSenhaF }

procedure TCadEsqSenhaF.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TCadEsqSenhaF.btnRedefinirClick(Sender: TObject);
begin
  //if (tela = 1 )then
  //begin
  //OpLoginF.Visible:=true;
  //Close;
  //end
  //else if ( tela = 2) then
  //begin
  //CadUsuariosF.Visible:=true;
  //Close;
  //end;

end;

end.

