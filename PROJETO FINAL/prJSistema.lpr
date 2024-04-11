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
  Forms, zcomponent, modelo, dataModel, menuPrincipal, CadCategoria, CadCliente,
  cadProdutos, cadProdutosPesquisaCategoria, PesquisaCategoriaCadProduto,
cadUsuario, Orcamento;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TMenuPrincipalF, MenuPrincipalF);
  Application.CreateForm(TdmF, dmF);
  Application.CreateForm(TModeloF, ModeloF);
  Application.CreateForm(TCadCategoriaF, CadCategoriaF);
  Application.CreateForm(TCadClienteF, CadClienteF);
  Application.CreateForm(TcadProdutosF, cadProdutosF);
  Application.CreateForm(TpesquisaCategoriaCadProdutoF,
    pesquisaCategoriaCadProdutoF);
  Application.CreateForm(TcadUsuarioF, cadUsuarioF);
  Application.CreateForm(TOrcamentoF, OrcamentoF);
  Application.Run;
end.

