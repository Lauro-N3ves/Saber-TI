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
  Forms, MenuPrincipal, CadModelo, OpLogin, CadEsqSenha, OpSobre, CadProdutos
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TOpSobreF, OpSobreF);
  Application.CreateForm(TMenuPrincipalF, MenuPrincipalF);
  Application.CreateForm(TCadModeloF, CadModeloF);
  Application.CreateForm(TOpLoginF, OpLoginF);
  Application.CreateForm(TCadEsqSenhaF, CadEsqSenhaF);
  Application.CreateForm(TCadProdutosF, CadProdutosF);
  Application.Run;
end.

