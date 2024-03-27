unit CadUsuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadUsuariosF }

  TCadUsuariosF = class(TCadModeloF)
    Button1: TButton;
    btnRedefSenha: TButton;
    edtCep: TEdit;
    edtCpfCnpj: TEdit;
    edtEmail: TEdit;
    edtEndereco: TEdit;
    edtIdCadUsu: TEdit;
    edtNomeFantasia: TEdit;
    edtNomeUsuario: TEdit;
    edtRazaoSocial: TEdit;
    edtSenha: TEdit;
    edtTelefone: TEdit;
    lblCep: TLabel;
    lblCpfCnpj: TLabel;
    lblEmail: TLabel;
    lblEndereco: TLabel;
    lblIdCadUsu: TLabel;
    lblNomeFantasia: TLabel;
    lblNomeUsuario: TLabel;
    lblRazaoSocial: TLabel;
    lblSenha: TLabel;
    lblTelefone: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure btnRedefSenhaClick(Sender: TObject);
  private

  public

  end;

var
  CadUsuariosF: TCadUsuariosF;

implementation

uses
  CadEsqSenha;

{$R *.lfm}

{ TCadUsuariosF }

procedure TCadUsuariosF.Button1Click(Sender: TObject);
begin

end;

procedure TCadUsuariosF.btnRedefSenhaClick(Sender: TObject);
begin
  //tela:=2;
  CadEsqSenhaF:=TCadEsqSenhaF.Create(self);
  CadUsuariosF.Visible:=false;
  CadEsqSenhaF.ShowModal;
end;

end.

