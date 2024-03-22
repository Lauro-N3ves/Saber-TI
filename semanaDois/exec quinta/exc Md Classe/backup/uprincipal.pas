unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    EdtFalta: TEdit;
    EdtMedia: TEdit;
    edtResult: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
  private

  public

  end;

var
  PrincipalF: TPrincipalF;

CONST
  media = 7;
  frequencia = 30;
implementation

{$R *.lfm}

{ TPrincipalF }

procedure TPrincipalF.Label1Click(Sender: TObject);
begin

end;

procedure TPrincipalF.Label8Click(Sender: TObject);
begin

end;

procedure TPrincipalF.Button1Click(Sender: TObject);
var
  n1,n2,n3,n4,md,falta:Double;
begin
  n1 := StrToFloat(Edit1.Text);
  n2 := StrToFloat(Edit2.Text);
  n3 := StrToFloat(Edit3.Text);
  n4 := StrToFloat(Edit4.Text);
  falta := StrToFloat(EdtFalta.Text);
  md:= (n1+n2+n3+n4)/4;
  EdtMedia.Text:=FloatToStr(md);
  if (md<media) and (falta>frequencia) then
  begin
       edtResult.Text:='REPROVADO';
  end
  else if (md<media) and (falta<=frequencia) then
  begin
       ShowMessage('REPROVADO POR NOTA');
  end
  else if (md>=media) and (falta>frequencia) then
  begin
       ShowMessage('REPROVADO POR FREQUÊNCIA');
  end
  else
  begin
      edtResult.Text:='APROVADO';
  end;

end;

procedure TPrincipalF.Edit1Change(Sender: TObject);
begin

end;


end.

