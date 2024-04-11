unit Orcamento;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, Grids, ZDataset,
  modelo;

type

  { TModeloF1 }

  TModeloF1 = class(TModeloF)
    dsOrcamentoPesquisa: TDataSource;
    DataSource2: TDataSource;
    qryOrcamentoPesquisa: TZQuery;
    StringGrid1: TStringGrid;
  private

  public

  end;

var
  ModeloF1: TModeloF1;

implementation

{$R *.lfm}

end.

