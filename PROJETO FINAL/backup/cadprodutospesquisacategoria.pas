unit cadProdutosPesquisaCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, DBGrids, ZDataset;

type

  { TPesquisaCategoriaCadProdF }

  TPesquisaCategoriaCadProdF = class(TForm)
    bitBtnModeloPesquisar: TBitBtn;
    DBGrid1: TDBGrid;
    dsPesquisaCategoriaCadProd: TDataSource;
    edtPesquisaCategoria: TEdit;
    ImageList1: TImageList;
    Pesquisar: TLabel;
    pnlCadProdPesquisa: TPanel;
    pnlCadProdGrid: TPanel;
    qryPesquisaCategoria: TZQuery;
    qryPesquisaCategoriacategoriaprodutoid: TLongintField;
    qryPesquisaCategoriads_categoria_produto: TStringField;
    procedure dsPesquisaCategoriaCadProdDataChange(Sender: TObject;
      Field: TField);
  private

  public

  end;

var
  PesquisaCategoriaCadProdF: TPesquisaCategoriaCadProdF;

implementation

{$R *.lfm}

{ TPesquisaCategoriaCadProdF }

procedure TPesquisaCategoriaCadProdF.dsPesquisaCategoriaCadProdDataChange(
  Sender: TObject; Field: TField);
begin

end;

end.

