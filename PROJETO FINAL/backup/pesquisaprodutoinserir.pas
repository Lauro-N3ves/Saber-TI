unit pesquisaProdutoInserir;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  ZDataset;

type

  { TpesquisaProdInserirF }

  TpesquisaProdInserirF = class(TForm)
    dsPesquisaProdInserir: TDataSource;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    pnlGridPesquisarProdInserir: TPanel;
    qryPesquisaProdInserir: TZQuery;
    qryPesquisaProdInserirds_produto: TStringField;
    qryPesquisaProdInserirobs_produto: TStringField;
    qryPesquisaProdInserirprodutoid: TLongintField;
  private

  public

  end;

var
  pesquisaProdInserirF: TpesquisaProdInserirF;

implementation

{$R *.lfm}

end.

