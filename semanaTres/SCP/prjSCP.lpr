program prjSCP;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, MenuPrincipal, CadModelo, OpLogin, CadEsqSenha, OpSobre,
  CadProdutos, CadClientes, CadUsuarios, CadFornecedor, CadVendedores, Global
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TOpLoginF, OpLoginF);
  Application.Run;
end.

