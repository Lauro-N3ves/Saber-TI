unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    Button1: TButton;
    edtDuracao: TEdit;
    edtDuracaoH: TEdit;
    edtDuracaoM: TEdit;
    edtDuracaoS: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  PrincipalF: TPrincipalF;

implementation

{$R *.lfm}

{ TPrincipalF }

procedure TPrincipalF.Label1Click(Sender: TObject);
begin

end;

procedure TPrincipalF.Button1Click(Sender: TObject);

var
  restoMin:Double;
  tmpConvertido,restoHoras: Integer;
begin
      tmpConvertido:=StrToInt(edtDuracao.text);

      restoHoras:= tmpConvertido mod 3600;
      restoMin:= restoHoras mod 60;

      edtDuracaoH.Text:= IntToStr(tmpConvertido div 3600);
      edtDuracaoM.Text:= IntToStr(restoHoras div 60);
      edtDuracaoS.Text:=FLoatToStr(restoMin);
end;

end.

