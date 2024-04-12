unit pesquisaClienteCadOrcamento;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, DBGrids, ZDataset;

type

  { TpesquisaClienteCadOrcamentoF }

  TpesquisaClienteCadOrcamentoF = class(TForm)
    bitBtnModeloPesquisar: TBitBtn;
    cmbBoxModelo: TComboBox;
    dsPesquisaClienteOrc: TDataSource;
    DBGrid1: TDBGrid;
    edtPesquisarClienteOrc: TEdit;
    ImageList1: TImageList;
    lblPesquisarClienteOrc: TLabel;
    Panel1: TPanel;
    pnlPesquisaClienteOrcamento: TPanel;
    qryPesquisaClienteOrc: TZQuery;
    qryPesquisaClienteOrcclienteid: TLongintField;
    qryPesquisaClienteOrccpf_cnpj_cliente: TStringField;
    qryPesquisaClienteOrcnome_cliente: TStringField;
    qryPesquisaClienteOrctipo_cliente: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  pesquisaClienteCadOrcamentoF: TpesquisaClienteCadOrcamentoF;

implementation

uses
  Orcamento;

{$R *.lfm}

{ TpesquisaClienteCadOrcamentoF }

procedure TpesquisaClienteCadOrcamentoF.DBGrid1DblClick(Sender: TObject);
begin
 OrcamentoF.qryOrcamentoCadorcamentoid.AsInteger:=qryPesquisaClienteOrcclienteid.AsInteger;
  Close;
end;

procedure TpesquisaClienteCadOrcamentoF.FormCreate(Sender: TObject);
begin
  qryPesquisaClienteOrc.Active:=True;
end;

end.

