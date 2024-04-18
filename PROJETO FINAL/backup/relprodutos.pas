unit relProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ZDataset,
  LR_DBSet, LR_Class;

type

  { TrelProdutosF }

  TrelProdutosF = class(TForm)
    bitBtnImprimirRelProd: TBitBtn;
    frDbDataSetProd: TfrDBDataSet;
    frReportProd: TfrReport;
    ImageList1: TImageList;
    qryRelProdutos: TZQuery;
    procedure bitBtnImprimirRelProdClick(Sender: TObject);
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
  //frReportProd.LoadFromFile('relClientes.lrf');
  // frReportProd.PrepareReport;
  // frReportProd.ShowReport;
  frReportProd.LoadFromFile('relProdutos.lrf');
  frReportProd.PrepareReport;
  frReportProd.ShowReport;
end;

end.

