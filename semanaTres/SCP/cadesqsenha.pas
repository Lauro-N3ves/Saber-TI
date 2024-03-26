unit CadEsqSenha;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TCadEsqSenhaF }

  TCadEsqSenhaF = class(TForm)
    Button1: TButton;
    Button2: TButton;
    edtEsqEmail: TEdit;
    edtEsqSenhaNova: TEdit;
    edtEsqConfirma: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
  private

  public

  end;

var
  CadEsqSenhaF: TCadEsqSenhaF;

implementation

{$R *.lfm}

end.

