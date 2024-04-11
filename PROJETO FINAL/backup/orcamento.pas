unit Orcamento;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, Grids, DBGrids,
  StdCtrls, DBCtrls, DBExtCtrls, ZDataset, modelo;

type

  { TOrcamentoF }

  TOrcamentoF = class(TModeloF)
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    dsOrcamentoPesquisa: TDataSource;
    dsOrcamentoCadastro: TDataSource;
    lblOrcamentoCadID: TLabel;
    lblOrcamentoCadIDCliente: TLabel;
    lblOrcamentoCadDataOrcamento: TLabel;
    lblOrcamentoCadDataValidade: TLabel;
    lblOrcamentoCadValorTotal: TLabel;
    qryOrcamentoPesquisa: TZQuery;
    qryOrcamentoPesquisaclienteid: TLongintField;
    qryOrcamentoPesquisadt_orcamento: TDateTimeField;
    qryOrcamentoPesquisadt_validade_orcamento: TDateTimeField;
    qryOrcamentoPesquisaorcamentoid: TLongintField;
    qryOrcamentoPesquisavl_total_orcamento: TFloatField;
  private

  public

  end;

var
  OrcamentoF: TOrcamentoF;

implementation

{$R *.lfm}

end.

