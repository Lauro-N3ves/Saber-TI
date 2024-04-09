unit CadCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  Buttons, DBGrids, ZDataset, modelo, DB, dataModel;

type

  { TCadCategoriaF }

  TCadCategoriaF = class(TModeloF)
    dbEdtCadCategoriaID: TDBEdit;
    dbEdtCadCategoriaDescricao: TDBEdit;
    dsCadCategoria: TDataSource;
    lblCadCategoriaID: TLabel;
    lblCadCategoriaDescricao: TLabel;
    qryCadCategoria: TZQuery;
    qryCadCategoriacategoriaprodutoid: TLongintField;
    qryCadCategoriads_categoria_produto: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure bitBtnancelarClick(Sender: TObject);
    procedure bitBtnEditarClick(Sender: TObject);
    procedure bitBtnExcluir1Click(Sender: TObject);
    procedure bitBtnExcluirClick(Sender: TObject);
    procedure bitBtnFecharClick(Sender: TObject);
    procedure bitBtnGravarClick(Sender: TObject);
    procedure bitBtnModeloCancelarClick(Sender: TObject);
    procedure bitBtnModeloEditarClick(Sender: TObject);
    procedure bitBtnModeloExcluirClick(Sender: TObject);
    procedure bitBtnModeloGravarClick(Sender: TObject);
    procedure bitBtnModeloImprimirClick(Sender: TObject);
    procedure bitBtnModeloNovoClick(Sender: TObject);
    procedure bitBtnModeloPesquisarClick(Sender: TObject);
    procedure bitBtnNovoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure dbEdtModeloPesquisarChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure dbGridModeloDblClick(Sender: TObject);
    procedure dsCadCategoriaDataChange(Sender: TObject; Field: TField);
    procedure edtPesquisarModeloChange(Sender: TObject);
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

procedure TCadCategoriaF.dsCadCategoriaDataChange(Sender: TObject; Field: TField);
begin

end;

procedure TCadCategoriaF.edtPesquisarModeloChange(Sender: TObject);
var
  filtro : string;
begin
  filtro := cmbBoxModelo.text;
  if  filtro = 'ID' then
  begin
     edtPesquisarModelo.NumbersOnly:= True;
  end;
end;

procedure TCadCategoriaF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  inherited;
  qryCadCategoria.Close;
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
  dmF.qryGenerica.Close;
  dmF.qryGenerica.SQL.Clear;
  dmF.qryGenerica.SQL.Add('select nextval('+ QuotedStr('categoria_produto_categoriaprodutoid_seq')+') AS CODIGO');
  dmF.qryGenerica.Open;

  qryCadCategoriacategoriaprodutoid.AsInteger := dmF.qryGenerica.FieldByName('CODIGO').AsInteger;
end;


procedure TCadCategoriaF.bitBtnNovoClick(Sender: TObject);
begin
  inherited;
  qryCadCategoria.Insert;
  PageControl1.ActivePage:=tbCadastro;
  dbEdtCadCategoriaDescricao.ReadOnly:=False;
end;

procedure TCadCategoriaF.Button1Click(Sender: TObject);
begin

end;

procedure TCadCategoriaF.DBComboBox1Change(Sender: TObject);
begin

end;

procedure TCadCategoriaF.dbEdtModeloPesquisarChange(Sender: TObject);
begin

end;

procedure TCadCategoriaF.DBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePage:=tbCadastro;
end;

procedure TCadCategoriaF.dbGridModeloDblClick(Sender: TObject);
begin
  PageControl1.ActivePage:=tbCadastro;
end;

procedure TCadCategoriaF.bitBtnGravarClick(Sender: TObject);
begin
  qryCadCategoria.Post;
  dbEdtCadCategoriaDescricao.ReadOnly:=true;
  PageControl1.ActivePage:=tbPesquisa;

end;

procedure TCadCategoriaF.bitBtnModeloCancelarClick(Sender: TObject);
begin
  inherited;
  dbEdtCadCategoriaDescricao.ReadOnly:= True;
end;

procedure TCadCategoriaF.bitBtnModeloEditarClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePage:= tbCadastro;
  if dbEdtCadCategoriaDescricao.CanFocus then
  begin
     dbEdtCadCategoriaDescricao.SetFocus;
  end;
  dbEdtCadCategoriaDescricao.ReadOnly:= False;
  qryCadCategoria.Edit;
end;

procedure TCadCategoriaF.bitBtnModeloExcluirClick(Sender: TObject);
begin
       //inherited;
  If MessageDlg('Deseja excluir esse registro?',mtWarning,[mbYes,mbNo],0)=mrYes Then
  begin

     qryCadCategoria.delete;
     dbEdtCadCategoriaDescricao.ReadOnly:= True;
  end;

end;

procedure TCadCategoriaF.bitBtnModeloGravarClick(Sender: TObject);
begin
  inherited;
  qryCadCategoria.Post;
  dbEdtCadCategoriaDescricao.ReadOnly:= True;
end;

procedure TCadCategoriaF.bitBtnModeloImprimirClick(Sender: TObject);
begin
  inherited;
  //terminar
  dbEdtCadCategoriaDescricao.ReadOnly:= True;
end;

procedure TCadCategoriaF.bitBtnModeloNovoClick(Sender: TObject);
begin
  inherited;
  qryCadCategoria.Insert;
  dbEdtCadCategoriaDescricao.ReadOnly := False;
  if dbEdtCadCategoriaDescricao.CanFocus then
  begin
     dbEdtCadCategoriaDescricao.SetFocus;
  end;

end;

procedure TCadCategoriaF.bitBtnModeloPesquisarClick(Sender: TObject);
var
filtro : String;
begin
  filtro := cmbBoxModelo.text;

  qryCadCategoria.Close;
  qryCadCategoria.SQL.Clear;

  if filtro = 'ID' then
  begin
     qryCadCategoria.SQL.Add('select * from categoria_produto WHERE categoriaprodutoid = ' + edtPesquisarModelo.Text);
     qryCadCategoria.Open;
  end
     else if filtro =  'Descrição' then
     begin
        qryCadCategoria.SQL.Text:=' select * from categoria_produto WHERE upper(ds_categoria_produto) LIKE '+
        QuotedStr(UpperCase('%'+edtPesquisarModelo.Text+'%'));
     // ShowMessage(qryCadCategoria.SQL.Text);
        qryCadCategoria.Open;
  end;
 // else if edtPesquisarModelo.Text = '' and filtro = 'ID' then



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

procedure TCadCategoriaF.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este arquivo?', mtWarning, [mbYes,mbNo],0)=mrYes then
  begin
     qryCadCategoria.Delete;
     PageControl1.ActivePage:=tbPesquisa;
     dbEdtCadCategoriaDescricao.ReadOnly:=True;

  end;
end;

end.

