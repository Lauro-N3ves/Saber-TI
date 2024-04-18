unit pesquisaProdutoInserir;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  StdCtrls, Buttons, ZDataset;

type

  { TpesquisaProdutoInserirF }

  TpesquisaProdutoInserirF = class(TForm)
    bitBtnModeloPesquisar: TBitBtn;
    cmbBoxModelo: TComboBox;
    dsPesquisaProdInserir: TDataSource;
    DBGrid1: TDBGrid;
    edtPesquisarModelo: TEdit;
    ImageList1: TImageList;
    lblModeloPesquisar: TLabel;
    pnlPesquisarInserir: TPanel;
    pnlGridPesquisarProdInserir: TPanel;
    qryPesquisaProdInserir: TZQuery;
    qryPesquisaProdInserirds_produto: TStringField;
    qryPesquisaProdInserirobs_produto: TStringField;
    qryPesquisaProdInserirprodutoid: TLongintField;
  private

  public

  end;

var
  pesquisaProdutoInserirF: TpesquisaProdutoInserirF;

implementation

{$R *.lfm}

end.

