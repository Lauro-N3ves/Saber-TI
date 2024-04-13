unit PesquisaCategoriaCadProduto;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  Buttons, StdCtrls, ZDataset;

type

  { TpesquisaCategoriaCadProdutoF }

  TpesquisaCategoriaCadProdutoF = class(TForm)
    bitBtnModeloPesquisar: TBitBtn;
    dsPesquisaCategoriaCadProd: TDataSource;
    DBGrid1: TDBGrid;
    edtPesqusiaCategoriaCadProd: TEdit;
    ImageList1: TImageList;
    lblPesquisaCategoriaCadProd: TLabel;
    pnlPesquisaCatCadProd: TPanel;
    pnlGridCatCadProd: TPanel;
    qryPesquisaCategoriaCadProd: TZQuery;
    qryPesquisaCategoriaCadProdcategoriaprodutoid: TLongintField;
    qryPesquisaCategoriaCadProdds_categoria_produto: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  pesquisaCategoriaCadProdutoF: TpesquisaCategoriaCadProdutoF;

implementation

uses
  cadProdutos;

{$R *.lfm}

{ TpesquisaCategoriaCadProdutoF }

procedure TpesquisaCategoriaCadProdutoF.DBGrid1DblClick(Sender: TObject);
begin
     cadProdutosF.qryCadProdutoscategoriaprodutoid.AsInteger:= qryPesquisaCategoriaCadProdcategoriaprodutoid.AsInteger;
     Close;
end;

procedure TpesquisaCategoriaCadProdutoF.FormCreate(Sender: TObject);
begin
  qryPesquisaCategoriaCadProd.Active:=True;
end;

end.

