program prjSetaImg;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}           cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uSetaImg
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TfrnExec4, frnExec4);
  Application.Run;
end.

