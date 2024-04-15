unit Orcamento;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, Grids, DBGrids,
  StdCtrls, DBCtrls, DBExtCtrls, ExtCtrls, ZDataset, modelo,
  pesquisaClienteCadOrcamento;

type

  { TOrcamentoF }

  TOrcamentoF = class(TModeloF)
    btnOrcamentoCad: TButton;
    dbDateOrcamento: TDBDateEdit;
    dbDateValidade: TDBDateEdit;
    DBEdit1: TDBEdit;
    dbEdtID: TDBEdit;
    dbedtIdCliente: TDBEdit;
    dbEdtValorTotal: TDBEdit;
    DBGrid1: TDBGrid;
    dsOrcamentoPesquisa: TDataSource;
    dsOrcamentoCadastro: TDataSource;
    lblNomeCli: TLabel;
    lblOrcamentoCadID: TLabel;
    lblOrcamentoCadIDCliente: TLabel;
    lblOrcamentoCadDataOrcamento: TLabel;
    lblOrcamentoCadDataValidade: TLabel;
    lblOrcamentoCadValorTotal: TLabel;
    qryOrcamentoCadorcamentoid: TLongintField;
    qryOrcamentoCadorcamentoitemid: TLongintField;
    qryOrcamentoCadprodutodesc: TStringField;
    qryOrcamentoCadprodutoid: TLongintField;
    qryOrcamentoCadqt_produto: TFloatField;
    qryOrcamentoCadvl_total: TFloatField;
    qryOrcamentoCadvl_unitario: TFloatField;
    qryOrcamentoPesquisa: TZQuery;
    qryOrcamentoPesquisaclienteid: TLongintField;
    qryOrcamentoPesquisadt_orcamento: TDateTimeField;
    qryOrcamentoPesquisadt_validade_orcamento: TDateTimeField;
    qryOrcamentoPesquisaorcamentoid: TLongintField;
    qryOrcamentoPesquisavl_total_orcamento: TFloatField;
    qryOrcamentoCad: TZQuery;
    procedure bitBtnModeloCancelarClick(Sender: TObject);
    procedure bitBtnModeloEditarClick(Sender: TObject);
    procedure bitBtnModeloExcluirClick(Sender: TObject);
    procedure bitBtnModeloGravarClick(Sender: TObject);
    procedure bitBtnModeloImprimirClick(Sender: TObject);
    procedure bitBtnModeloNovoClick(Sender: TObject);
    procedure btnOrcamentoCadClick(Sender: TObject);
    procedure dbedtIdClienteChange(Sender: TObject);
    procedure dsOrcamentoPesquisaDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  OrcamentoF: TOrcamentoF;

implementation

{$R *.lfm}

{ TOrcamentoF }

procedure TOrcamentoF.bitBtnModeloNovoClick(Sender: TObject);
begin
  inherited;
  qryOrcamentoPesquisa.Insert;
  dbDateValidade.ReadOnly:= False;

end;

procedure TOrcamentoF.btnOrcamentoCadClick(Sender: TObject);
begin
  //dbedtIdCliente.ReadOnly:=false;
  //qryOrcamentoPesquisa.Edit;
  pesquisaClienteCadOrcamentoF:=TpesquisaClienteCadOrcamentoF.Create(Self);
  pesquisaClienteCadOrcamentoF.ShowModal;
end;

procedure TOrcamentoF.dbedtIdClienteChange(Sender: TObject);
begin

end;

procedure TOrcamentoF.dsOrcamentoPesquisaDataChange(Sender: TObject;
  Field: TField);
begin

end;

procedure TOrcamentoF.FormCreate(Sender: TObject);
begin
  inherited;
  qryOrcamentoCad.Active:=True;
  qryOrcamentoPesquisa.Active:=True;
end;

procedure TOrcamentoF.bitBtnModeloEditarClick(Sender: TObject);
begin
  inherited;
  qryOrcamentoPesquisa.Edit;
  dbDateValidade.ReadOnly:= False;
end;

procedure TOrcamentoF.bitBtnModeloCancelarClick(Sender: TObject);
begin
  inherited;
  dbDateValidade.ReadOnly:= True;
  qryOrcamentoPesquisa.Cancel;
end;

procedure TOrcamentoF.bitBtnModeloExcluirClick(Sender: TObject);
begin
  inherited;
  dbDateValidade.ReadOnly:= True;
end;

procedure TOrcamentoF.bitBtnModeloGravarClick(Sender: TObject);
begin
  inherited;
  qryOrcamentoPesquisa.Post;
  dbDateValidade.ReadOnly:= True;
end;

procedure TOrcamentoF.bitBtnModeloImprimirClick(Sender: TObject);
begin
  inherited;
  dbDateValidade.ReadOnly:= True;
end;

end.

