unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    Button1: TButton;
    edtSB1: TEdit;
    edtSB10: TEdit;
    edtSB11: TEdit;
    edtSB12: TEdit;
    edtTotB: TEdit;
    edtTotL: TEdit;
    edtDesc1: TEdit;
    edtDesc2: TEdit;
    edtDesc3: TEdit;
    edtDesc4: TEdit;
    edtDesc5: TEdit;
    edtSB2: TEdit;
    edtDesc6: TEdit;
    edtDesc7: TEdit;
    edtDesc8: TEdit;
    edtDesc9: TEdit;
    edtDesc10: TEdit;
    edtDesc11: TEdit;
    edtDesc12: TEdit;
    edtSL1: TEdit;
    edtSL2: TEdit;
    edtSL3: TEdit;
    edtSB3: TEdit;
    edtSL4: TEdit;
    edtSL5: TEdit;
    edtSL6: TEdit;
    edtSL7: TEdit;
    edtSL8: TEdit;
    edtSL9: TEdit;
    edtSL10: TEdit;
    edtSL11: TEdit;
    edtSL12: TEdit;
    edtSB4: TEdit;
    edtSB5: TEdit;
    edtSB6: TEdit;
    edtSB7: TEdit;
    edtSB8: TEdit;
    edtSB9: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    lblToTal: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblToTal1: TLabel;
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
slr1,slr2,slr3,slr4,slr5,slr6,slr7,slr8,slr9,slr10,slr11,slr12, totB, totL: Double;
slrL1,slrL2,slrL3,slrL4,slrL5,slrL6,slrL7,slrL8,slrL9,slrL10,slrL11,slrL12: Double;
desc1,desc2,desc3,desc4,desc5,desc6,desc7,desc8,desc9,desc10,desc11,desc12 :Double;
begin
//passa str pra float no salario
slr1:=StrToFloat(edtSB1.Text);
slr2:=StrToFloat(edtSB2.Text);
slr3:=StrToFloat(edtSB3.Text);
slr4:=StrToFloat(edtSB4.Text);
slr5:=StrToFloat(edtSB5.Text);
slr6:=StrToFloat(edtSB6.Text);
slr7:=StrToFloat(edtSB7.Text);
slr8:=StrToFloat(edtSB8.Text);
slr9:=StrToFloat(edtSB9.Text);
slr10:=StrToFloat(edtSB10.Text);
slr11:=StrToFloat(edtSB11.Text);
slr12:=StrToFloat(edtSB12.Text);
//passa str pro float no desconto
desc1:=StrToFloat(edtdesc1.Text);
desc2:=StrToFloat(edtdesc2.Text);
desc3:=StrToFloat(edtdesc3.Text);
desc4:=StrToFloat(edtdesc4.Text);
desc5:=StrToFloat(edtdesc5.Text);
desc6:=StrToFloat(edtdesc6.Text);
desc7:=StrToFloat(edtdesc7.Text);
desc8:=StrToFloat(edtdesc8.Text);
desc9:=StrToFloat(edtdesc9.Text);
desc10:=StrToFloat(edtdesc10.Text);
desc11:=StrToFloat(edtdesc11.Text);
desc12:=StrToFloat(edtdesc12.Text);

totB:= slr1+slr2+slr3+slr4+slr5+slr6+slr7+slr8+slr9+slr10+slr11+slr12;
edtTotB.Text:= FloatToStr(totB);

//calc salario liquido
slrL1:=slr1-(slr1 * (desc1/100));
slrL2:=slr2-(slr2 * (desc2/100));
slrL3:=slr3-(slr3 * (desc3/100));
slrL4:=slr4-(slr4 * (desc4/100));
slrL5:=slr5-(slr5 * (desc5/100));
slrL6:=slr6-(slr6 * (desc6/100));
slrL7:=slr7-(slr7 * (desc7/100));
slrL8:=slr8-(slr8 * (desc8/100));
slrL9:=slr9-(slr9 * (desc9/100));
slrL10:=slr10-(slr10 * (desc10/100));
slrL11:=slr11-(slr11 * (desc11/100));
slrL12:=slr12-(slr12 * (desc12/100));
//total salario liquido
totL:=slrL1+slrL2+slrL3+slrL4+slrL5+slrL6+slrL7+slrL8+slrL9+slrL10+slrL11+slrL12;
edtTotL.Text:= FloatToStr(totL);

//apresenta salario liquido
edtSL1.Text:= FloatToStr(slrL1);
edtSL2.Text:= FloatToStr(slrL2);
edtSL3.Text:= FloatToStr(slrL3);
edtSL4.Text:= FloatToStr(slrL4);
edtSL5.Text:= FloatToStr(slrL5);
edtSL6.Text:= FloatToStr(slrL6);
edtSL7.Text:= FloatToStr(slrL7);
edtSL8.Text:= FloatToStr(slrL8);
edtSL9.Text:= FloatToStr(slrL9);
edtSL10.Text:= FloatToStr(slrL10);
edtSL11.Text:= FloatToStr(slrL11);
edtSL12.Text:= FloatToStr(slrL12);
end;



end.

