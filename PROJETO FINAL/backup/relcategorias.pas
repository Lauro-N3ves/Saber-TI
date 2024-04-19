unit relCategorias;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, LR_Class,
  LR_DBSet, ZDataset, DB;

type

  { TrelCategoriasF }

  TrelCategoriasF = class(TForm)
    bitBtnImprimirRelProd: TBitBtn;
    frDbDataSetCategorias: TfrDBDataSet;
    frReportCategorias: TfrReport;
    ImageList1: TImageList;
    qryRelCategorias: TZQuery;
    qryRelCategoriascategoriaprodutoid: TLongintField;
    qryRelCategoriasds_categoria_produto: TStringField;
    procedure bitBtnImprimirRelProdClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  relCategoriasF: TrelCategoriasF;

implementation

{$R *.lfm}

{ TrelCategoriasF }

procedure TrelCategoriasF.FormShow(Sender: TObject);
begin
  qryRelCategorias.Open;
end;

procedure TrelCategoriasF.bitBtnImprimirRelProdClick(Sender: TObject);
begin
  frReportCategorias.LoadFromFile('relCategorias.lrf');
  frReportCategorias.PrepareReport;
  frReportCategorias.ShowReport;
end;

end.

