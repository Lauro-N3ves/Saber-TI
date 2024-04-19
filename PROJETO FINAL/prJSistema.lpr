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
  Forms, zcomponent, modelo, dataModel, menuPrincipal, CadCategoria,
  cadProdutos, cadProdutosPesquisaCategoria, cadUsuario, Orcamento, relClientes,
  CadCliente, PesquisaCategoriaCadProduto, pesquisaClienteCadOrcamento,
inserirItem, pesquisaProdutoInserir, login, relProdutos, relOrcamento,
relCategorias;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TdmF, dmF);
  Application.CreateForm(TloginF, loginF);
  Application.Run;
end.

