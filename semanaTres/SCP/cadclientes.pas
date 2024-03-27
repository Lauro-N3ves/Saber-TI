unit CadClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadClientesF }

  TCadClientesF = class(TCadModeloF)
    edtIdCadCli: TEdit;
    edtCpfCnpj: TEdit;
    edtNomeFantasia: TEdit;
    edtRazaoSocial: TEdit;
    edtEndereco: TEdit;
    edtCep: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    lblIdCadCli: TLabel;
    lblCpfCnpj: TLabel;
    lblNomeFantasia: TLabel;
    lblRazaoSocial: TLabel;
    lblEndereco: TLabel;
    lblCep: TLabel;
    lblTelefone: TLabel;
    lblEmail: TLabel;
    procedure Panel1Click(Sender: TObject);
  private

  public

  end;

var
  CadClientesF: TCadClientesF;

implementation

{$R *.lfm}

{ TCadClientesF }

procedure TCadClientesF.Panel1Click(Sender: TObject);
begin

end;

end.

