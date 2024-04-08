unit CadCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ZDataset, modelo, DB;

type

  { TCadCategoriaF }

  TCadCategoriaF = class(TModeloF)
    qryCadCategoria: TZQuery;
    qryCadCategoriacategoriaprodutoid: TLongintField;
    qryCadCategoriads_categoria_produto: TStringField;
    procedure dsCadModeloDataChange(Sender: TObject; Field: TField);
  private

  public

  end;

var
  CadCategoriaF: TCadCategoriaF;

implementation

{$R *.lfm}

{ TCadCategoriaF }

procedure TCadCategoriaF.dsCadModeloDataChange(Sender: TObject; Field: TField);
begin

end;

end.

