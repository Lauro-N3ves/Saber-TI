unit relProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ZDataset, DB,
  LR_DBSet, LR_Class, LR_DSet;

type

  { TrelProdutosF }

  TrelProdutosF = class(TForm)
    bitBtnImprimirRelProd: TBitBtn;
    frDbDataSetProd: TfrDBDataSet;
    frReportProd: TfrReport;
    ImageList1: TImageList;
    qryRelProdutos: TZQuery;
    qryRelProdutoscategoriaprodutoid: TLongintField;
    qryRelProdutosds_produto: TStringField;
    qryRelProdutosdt_cadastro_produto: TDateTimeField;
    qryRelProdutosobs_produto: TStringField;
    qryRelProdutosprodutoid: TLongintField;
    qryRelProdutosstatus_produto: TStringField;
    qryRelProdutosvl_venda_produto: TFloatField;
    procedure bitBtnImprimirRelProdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frDbDataSetProdCheckEOF(Sender: TObject; var Eof: Boolean);
  private

  public

  end;

var
  relProdutosF: TrelProdutosF;

implementation

{$R *.lfm}

{ TrelProdutosF }

procedure TrelProdutosF.bitBtnImprimirRelProdClick(Sender: TObject);
begin
  frReportProd.LoadFromFile('relProdutos.lrf');
  frReportProd.PrepareReport;
  frReportProd.ShowReport;
end;

procedure TrelProdutosF.FormCreate(Sender: TObject);
begin

end;

procedure TrelProdutosF.FormShow(Sender: TObject);
begin
  qryRelProdutos.Open;
end;

procedure TrelProdutosF.frDbDataSetProdCheckEOF(Sender: TObject;
  var Eof: Boolean);
begin

end;

end.

