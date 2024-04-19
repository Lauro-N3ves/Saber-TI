unit relOrcamento;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ZDataset, DB,
  LR_Class, LR_DBSet;

type

  { TrelOrcamentoF }

  TrelOrcamentoF = class(TForm)
    bitBtnImprimirRelProd: TBitBtn;
    frDbDataSetOrcamento: TfrDBDataSet;
    frReportOrcamento: TfrReport;
    ImageList1: TImageList;
    qryRelOrcamento: TZQuery;
    qryRelOrcamentoclienteid: TLongintField;
    qryRelOrcamentodt_orcamento: TDateTimeField;
    qryRelOrcamentodt_validade_orcamento: TDateTimeField;
    qryRelOrcamentoorcamentoid: TLongintField;
    qryRelOrcamentovl_total_orcamento: TFloatField;
    procedure bitBtnImprimirRelProdClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  relOrcamentoF: TrelOrcamentoF;

implementation

{$R *.lfm}

{ TrelOrcamentoF }

procedure TrelOrcamentoF.bitBtnImprimirRelProdClick(Sender: TObject);
begin
   frReportOrcamento.LoadFromFile('relOrcamento.lrf');
  frReportOrcamento.PrepareReport;
  frReportOrcamento.ShowReport;
end;

procedure TrelOrcamentoF.FormShow(Sender: TObject);
begin
  qryRelOrcamento.Open;
end;

end.

