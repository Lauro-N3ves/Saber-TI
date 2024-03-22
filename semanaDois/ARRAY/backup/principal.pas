unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    Button1: TButton;
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
  i: Integer;
begin
  for i:= 10 downto 0 do
  begin
    ShowMessage('estamos na posição: '+ IntToStr(i));
  end;
      ShowMessage('ACABOU');
end;

end.
//var
//  numero: Integer;
//begin
//     numero:= 20;
//     while numero >= 0 do
//     begin
//       ShowMessage('O número atual é: '+IntToStr(numero));
//       numero:= numero-1;
//     end;
//end;
