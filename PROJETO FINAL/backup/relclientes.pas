unit relClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ZDataset, DB,
  LR_DBSet, LR_Class, dataModel, LR_DSet;

type

  { TrelClientesF }

  TrelClientesF = class(TForm)
    bitBtnImprimirRelClientes: TBitBtn;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    ImageList1: TImageList;
    qryRelClientes: TZQuery;
    qryRelClientesclienteid: TLongintField;
    qryRelClientescpf_cnpj_cliente: TStringField;
    qryRelClientesnome_cliente: TStringField;
    qryRelClientestipo_cliente: TStringField;
    procedure bitBtnImprimirRelClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frDBDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
  private

  public

  end;

var
  relClientesF: TrelClientesF;

implementation

{$R *.lfm}

{ TrelClientesF }

procedure TrelClientesF.FormShow(Sender: TObject);
begin
  qryRelClientes.Open;
end;

procedure TrelClientesF.frDBDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
begin

end;

procedure TrelClientesF.bitBtnImprimirRelClientesClick(Sender: TObject);
begin
   frReport1.LoadFromFile('relclientes.lrf');
   frReport1.PrepareReport;
   frReport1.ShowReport;
end;

procedure TrelClientesF.FormCreate(Sender: TObject);
begin

end;

end.

