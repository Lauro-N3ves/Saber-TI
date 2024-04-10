unit cadProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  DBExtCtrls, ZDataset, DB, modelo, PesquisaCategoriaCadProduto;

type

  { TcadProdutosF }

  TcadProdutosF = class(TModeloF)
    btnCadprodutos: TButton;
    dbCmbBoxStatus: TDBComboBox;
    dbDataEdtCadProdutos: TDBDateEdit;
    dbEdtCadProdutosDescricao: TDBEdit;
    dbEdtCadProdutosObs: TDBEdit;
    dbEdtId: TDBEdit;
    dbEdtCategoria: TDBEdit;
    dbEdtValorVenda: TDBEdit;
    dsCadProdutos: TDataSource;
    lbCadProdutosDescricao: TLabel;
    lblCadProdutosObs: TLabel;
    lblCadProdutosID: TLabel;
    lblCadProdutosCategoria: TLabel;
    lblCadProdutosStatus: TLabel;
    lblCadProdutosDataCad: TLabel;
    lblCadProdutosValorVenda: TLabel;
    qryCadProdutos: TZQuery;
    qryCadProdutoscategoriaprodutoid: TLongintField;
    qryCadProdutosds_produto: TStringField;
    qryCadProdutosdt_cadastro_produto: TDateTimeField;
    qryCadProdutosobs_produto: TStringField;
    qryCadProdutosprodutoid: TLongintField;
    qryCadProdutosstatus_produto: TStringField;
    qryCadProdutosvl_venda_produto: TFloatField;
    procedure bitBtnModeloCancelarClick(Sender: TObject);
    procedure bitBtnModeloEditarClick(Sender: TObject);
    procedure bitBtnModeloExcluirClick(Sender: TObject);
    procedure bitBtnModeloGravarClick(Sender: TObject);
    procedure bitBtnModeloImprimirClick(Sender: TObject);
    procedure bitBtnModeloNovoClick(Sender: TObject);
    procedure btnCadprodutosClick(Sender: TObject);
    procedure dbGridModeloDblClick(Sender: TObject);
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

procedure TcadProdutosF.bitBtnModeloNovoClick(Sender: TObject);
begin
  inherited;
  qryCadProdutos.Insert;
  dbCmbBoxStatus.ReadOnly:=True;
  dbEdtValorVenda.ReadOnly:=True;
  dbEdtCadProdutosDescricao.ReadOnly:=True;
  dbEdtCadProdutosObs.ReadOnly:=True;
end;

procedure TcadProdutosF.btnCadprodutosClick(Sender: TObject);
begin
  pesquisaCategoriaCadProdutoF:=TpesquisaCategoriaCadProdutoF.Create(Self);
  pesquisaCategoriaCadProdutoF.ShowModal;
end;

procedure TcadProdutosF.dbGridModeloDblClick(Sender: TObject);
begin
  inherited;
end;

procedure TcadProdutosF.bitBtnModeloEditarClick(Sender: TObject);
begin
  inherited;
  qryCadProdutos.Edit;
  dbCmbBoxStatus.ReadOnly:=True;
  dbEdtValorVenda.ReadOnly:=True;
  dbEdtCadProdutosDescricao.ReadOnly:=True;
  dbEdtCadProdutosObs.ReadOnly:=True;
end;

procedure TcadProdutosF.bitBtnModeloExcluirClick(Sender: TObject);
begin
  inherited;
  If MessageDlg('Deseja excluir esse registro?', mtWarning,[mbYes,mbNo],0)= mrYes Then
  begin
       qryCadProdutos.Delete;
       dbCmbBoxStatus.ReadOnly:=False;
       dbEdtValorVenda.ReadOnly:=False;
       dbEdtCadProdutosDescricao.ReadOnly:=False;
       dbEdtCadProdutosObs.ReadOnly:=False;

  end;
end;

procedure TcadProdutosF.bitBtnModeloGravarClick(Sender: TObject);
begin
  inherited;
  qryCadProdutos.Post;
  dbCmbBoxStatus.ReadOnly:=False;
  dbEdtValorVenda.ReadOnly:=False;
  dbEdtCadProdutosDescricao.ReadOnly:=False;
  dbEdtCadProdutosObs.ReadOnly:=False;
end;

procedure TcadProdutosF.bitBtnModeloImprimirClick(Sender: TObject);
begin
  inherited;
  dbCmbBoxStatus.ReadOnly:=False;
  dbEdtValorVenda.ReadOnly:=False;
  dbEdtCadProdutosDescricao.ReadOnly:=False;
  dbEdtCadProdutosObs.ReadOnly:=False;
end;

procedure TcadProdutosF.bitBtnModeloCancelarClick(Sender: TObject);
begin
  inherited;
  qryCadProdutos.Cancel;
  dbCmbBoxStatus.ReadOnly:=False;
  dbEdtValorVenda.ReadOnly:=False;
  dbEdtCadProdutosDescricao.ReadOnly:=False;
  dbEdtCadProdutosObs.ReadOnly:=False;
end;

end.

