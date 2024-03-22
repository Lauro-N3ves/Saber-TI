unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    Button1: TButton;
    edtIdadeDias: TEdit;
    edtIdAnos: TEdit;
    edtIdMes: TEdit;
    edtIdDias: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  PrincipalF: TPrincipalF;

implementation

{$R *.lfm}

{ TPrincipalF }



procedure TPrincipalF.Button1Click(Sender: TObject);
var
 idAno,IdMes, restoMes:Double;
  IdConvertida,restoAno: Integer;
begin
      IdConvertida:=StrToInt(edtIdadeDias.text);

      restoAno:= IdConvertida mod 365;
      restoMes:= restoAno mod 30;

      edtIdAnos.Text:= IntToStr(IdConvertida div 365);
      edtIdMes.Text:= IntToStr(restoAno div 30);
      edtIdDias.Text:=FLoatToStr(restoMes);
end;


end.

