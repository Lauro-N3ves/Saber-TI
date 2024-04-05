program prJSistema;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zcomponent, modelo, dataModel, menuPrincipal, cadcategoria;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TMenuPrincipalF, MenuPrincipalF);
  Application.CreateForm(TdmF, dmF);
  Application.CreateForm(TModeloF, ModeloF);
  Application.CreateForm(TModeloF1, ModeloF1);
  Application.Run;
end.

