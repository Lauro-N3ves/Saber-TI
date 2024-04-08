unit CadCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  Buttons, DBGrids, ZDataset, modelo, DB;

type

  { TCadCategoriaF }

  TCadCategoriaF = class(TModeloF)
    bitBtnEditar: TBitBtn;
    bitBtnExcluir1: TBitBtn;
    dbEdtCadCategoriaID: TDBEdit;
    dbEdtCadCategoriaDescricao: TDBEdit;
    lblCadCategoriaID: TLabel;
    lblCadCategoriaDescricao: TLabel;
    qryCadCategoria: TZQuery;
    qryCadCategoriacategoriaprodutoid: TLongintField;
    qryCadCategoriads_categoria_produto: TStringField;
    procedure bitBtnancelarClick(Sender: TObject);
    procedure bitBtnEditarClick(Sender: TObject);
    procedure bitBtnExcluir1Click(Sender: TObject);
    procedure bitBtnExcluirClick(Sender: TObject);
    procedure bitBtnFecharClick(Sender: TObject);
    procedure bitBtnGravarClick(Sender: TObject);
    procedure bitBtnNovoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure dsCadModeloDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qryCadCategoriaNewRecord(DataSet: TDataSet);
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

procedure TCadCategoriaF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  inherited;
  dbEdtCadCategoriaDescricao.ReadOnly:=true;
end;

procedure TCadCategoriaF.FormCreate(Sender: TObject);
begin
   inherited;
  try
    qryCadCategoria.Open;
    except
      on E: EDatabaseError do
      ShowMessage('Erro ao abrir conjunto de Dados' +E.Message);
  end;
end;

procedure TCadCategoriaF.PageControl1Change(Sender: TObject);
begin
end;

procedure TCadCategoriaF.qryCadCategoriaNewRecord(DataSet: TDataSet);
begin

end;


procedure TCadCategoriaF.bitBtnNovoClick(Sender: TObject);
begin
  inherited;
  qryCadCategoria.Insert;
  PageControl1.ActivePage:=tbCadastro;
  dbEdtCadCategoriaDescricao.ReadOnly:=False;
end;

procedure TCadCategoriaF.DBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePage:=tbCadastro;
end;

procedure TCadCategoriaF.bitBtnGravarClick(Sender: TObject);
begin
  qryCadCategoria.Post;
  dbEdtCadCategoriaDescricao.ReadOnly:=true;
  PageControl1.ActivePage:=tbPesquisa;

end;

procedure TCadCategoriaF.bitBtnFecharClick(Sender: TObject);
begin
  inherited;
end;

procedure TCadCategoriaF.bitBtnEditarClick(Sender: TObject);
begin
   qryCadCategoria.Edit;  // editar
   dbEdtCadCategoriaDescricao.ReadOnly:=False;     // possivel editar
   PageControl1.ActivePage:=tbCadastro;    // muda tela
   dbEdtCadCategoriaDescricao.SetFocus;    // vai pro campo certo

end;

procedure TCadCategoriaF.bitBtnExcluir1Click(Sender: TObject);
begin
  dbEdtCadCategoriaDescricao.ReadOnly:=true;
end;

procedure TCadCategoriaF.bitBtnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este arquivo?', mtWarning, [mbYes,mbNo],0)=mrYes then
  begin
     qryCadCategoria.Delete;
     PageControl1.ActivePage:=tbPesquisa;
     dbEdtCadCategoriaDescricao.ReadOnly:=True;

  end;
end;

procedure TCadCategoriaF.bitBtnancelarClick(Sender: TObject);
begin
  inherited;
  dbEdtCadCategoriaDescricao.ReadOnly:=True;
end;

end.

