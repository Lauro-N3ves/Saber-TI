unit inserirItem;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  ZDataset, pesquisaProdutoInserir;

type

  { TInserirItemF }

  TInserirItemF = class(TForm)
    btnInserirProduto: TButton;
    dsInserirItem: TDataSource;
    dbedtInserirProduto: TDBEdit;
    dbEdtInserirDescProduto: TDBEdit;
    dbEdtInserirValorUni: TDBEdit;
    edtInserirQuantidade: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qryInserirItem: TZQuery;
    qryInserirItemcategoriaprodutoid: TLongintField;
    qryInserirItemds_produto: TStringField;
    qryInserirItemdt_cadastro_produto: TDateTimeField;
    qryInserirItemobs_produto: TStringField;
    qryInserirItemprodutoid: TLongintField;
    qryInserirItemstatus_produto: TStringField;
    qryInserirItemvl_venda_produto: TFloatField;
    procedure btnInserirProdutoClick(Sender: TObject);
  private

  public

  end;

var
  InserirItemF: TInserirItemF;

implementation

{$R *.lfm}

{ TInserirItemF }

procedure TInserirItemF.btnInserirProdutoClick(Sender: TObject);
begin
    pesquisaProdutoInserirF := TpesquisaProdutoInserirF.Create(Self);
    pesquisaProdutoInserirF.ShowModal;
end;

end.

