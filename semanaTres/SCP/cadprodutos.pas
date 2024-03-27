unit CadProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadProdutosF }

  TCadProdutosF = class(TCadModeloF)
    edtCadProd: TEdit;
    edtValorVenda: TEdit;
    edtDescCompleta: TEdit;
    edtDescSimples: TEdit;
    boxTipoProd: TComboBox;
    lblTipoProd: TLabel;
    lblValorVenda: TLabel;
    lblDescCompleta: TLabel;
    lblDescSimples: TLabel;
    lbIdCadProd: TLabel;
    procedure lblDescSimplesClick(Sender: TObject);
  private

  public

  end;

var
  CadProdutosF: TCadProdutosF;

implementation

{$R *.lfm}

{ TCadProdutosF }

procedure TCadProdutosF.lblDescSimplesClick(Sender: TObject);
begin

end;

end.

