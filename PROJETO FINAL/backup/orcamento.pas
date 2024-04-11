unit Orcamento;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, Grids, DBGrids,
  ZDataset, modelo;

type

  { TOrcamentoF }

  TOrcamentoF = class(TModeloF)
    DBGrid1: TDBGrid;
    dsOrcamentoPesquisa: TDataSource;
    dsOrcamentoCadastro: TDataSource;
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

