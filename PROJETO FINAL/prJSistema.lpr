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
  CadCliente, PesquisaCategoriaCadProduto, pesquisaClienteCadOrcamento;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TMenuPrincipalF, MenuPrincipalF);
  Application.CreateForm(TdmF, dmF);
  Application.CreateForm(TModeloF, ModeloF);
  Application.CreateForm(TCadCategoriaF, CadCategoriaF);
  Application.CreateForm(TcadProdutosF, cadProdutosF);
  Application.CreateForm(TcadUsuarioF, cadUsuarioF);
  Application.CreateForm(TOrcamentoF, OrcamentoF);
  Application.CreateForm(TrelClientesF, relClientesF);
  Application.CreateForm(TpesquisaCategoriaCadProdutoF,
    pesquisaCategoriaCadProdutoF);
  Application.CreateForm(TpesquisaClienteCadOrcamentoF,
    pesquisaClienteCadOrcamentoF);
  Application.Run;
end.

