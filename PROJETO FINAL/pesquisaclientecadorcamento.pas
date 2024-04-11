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
  private

  public

  end;

var
  pesquisaClienteCadOrcamentoF: TpesquisaClienteCadOrcamentoF;

implementation

{$R *.lfm}

end.

