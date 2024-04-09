unit cadProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ZDataset, DB, modelo;

type

  { TcadProdutosF }

  TcadProdutosF = class(TModeloF)
    dsCadProdutos: TDataSource;
    qryCadProdutos: TZQuery;
    procedure dsCadProdutosDataChange(Sender: TObject; Field: TField);
  private

  public

  end;

var
  cadProdutosF: TcadProdutosF;

implementation

{$R *.lfm}

{ TcadProdutosF }

procedure TcadProdutosF.dsCadProdutosDataChange(Sender: TObject; Field: TField);
begin

end;

end.

