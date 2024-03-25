unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Menus, Grids, ComCtrls;

type

  { TExecLancheriaF }

  TExecLancheriaF = class(TForm)
    Item1: TCheckBox;
    Item2: TCheckBox;
    Item3: TCheckBox;
    Item4: TCheckBox;
    Item5: TCheckBox;
    Item6: TCheckBox;
    Edt1: TEdit;
    Edt2: TEdit;
    Edt3: TEdit;
    Edt4: TEdit;
    Edt5: TEdit;
    Edt6: TEdit;
    EdtTotal: TEdit;
    Item7: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure CalcTotal;
    procedure Item1Change(Sender: TObject);
    procedure Item2Change(Sender: TObject);
    procedure Item3Change(Sender: TObject);
    procedure Item4Change(Sender: TObject);
    procedure Item5Change(Sender: TObject);
    procedure Item6Change(Sender: TObject);
  private

  public

    end;

var
  ExecLancheriaF: TExecLancheriaF;

implementation

{$R *.lfm}

{ TExecLancheriaF }

procedure TExecLancheriaF.CalcTotal;
var
  total: Double;
begin
  total:=0.0;

  if Item1.Checked then
  Begin
       total:=total + StrToFloat(Edt1.Text);
  end;
  if Item2.Checked then
  begin
       total:=total + StrToFloat(Edt2.Text);
  end;
  if Item3.Checked then
  Begin
       total:=total + StrToFloat(Edt3.Text);
  end;
  if Item4.Checked then
  begin
       total:=total + StrToFloat(Edt4.Text);
  end;
  if Item5.Checked then
  Begin
       total:=total + StrToFloat(Edt5.Text);
  end;
  if Item6.Checked then
  begin
       total:=total + StrToFloat(Edt6.Text);
  end;
  if Item7.checked then
  begin
       total+= 4;
  end;

  EdtTotal.Text:=FloatToStr(total);
end;

procedure TExecLancheriaF.Item1Change(Sender: TObject);
begin
  CalcTotal;
end;

procedure TExecLancheriaF.Item2Change(Sender: TObject);
begin
  CalcTotal;
end;

procedure TExecLancheriaF.Item3Change(Sender: TObject);
begin
  CalcTotal;
end;

procedure TExecLancheriaF.Item4Change(Sender: TObject);
begin
  CalcTotal;
end;

procedure TExecLancheriaF.Item5Change(Sender: TObject);
begin
  CalcTotal;
end;

procedure TExecLancheriaF.Item6Change(Sender: TObject);
begin
  CalcTotal;
end;


end.

