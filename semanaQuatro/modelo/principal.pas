unit principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, DBGrids,
  StdCtrls, ComCtrls, ExtCtrls, ExtDlgs, Buttons, DateTimePicker, ZDataset,
  ZSqlUpdate, DB, dm;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    dbEdtID: TDBEdit;
    dsCatProd: TDataSource;
    dbEdtDescric: TDBEdit;
    DBGrid1: TDBGrid;
    lblIdCad: TLabel;
    lblDescricCad: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    qryCatProdcategoriaprodutoid: TLongintField;
    qryCatProdds_categoria_produto: TStringField;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    tbCadastro: TTabSheet;
    tbPesquisa: TTabSheet;
    qryCatProd: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure qryCatProdNewRecord(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private

  public

  end;

var
  PrincipalF: TPrincipalF;

implementation

{$R *.lfm}

{ TPrincipalF }

procedure TPrincipalF.PageControl1Change(Sender: TObject);
begin

end;

procedure TPrincipalF.BitBtn3Click(Sender: TObject);
begin
  qryCatProd.Edit;
  dbEdtDescric.ReadOnly:=False;
end;

procedure TPrincipalF.DBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePage := tbCadastro;
end;

procedure TPrincipalF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
    qryCatProd.Close;
end;

procedure TPrincipalF.BitBtn4Click(Sender: TObject);
begin
  qryCatProd.Post;
  PageControl1.ActivePage := tbPesquisa;
  dbEdtDescric.ReadOnly:=True;
end;

procedure TPrincipalF.BitBtn5Click(Sender: TObject);
begin
  qryCatProd.Cancel;
  PageControl1.ActivePage := tbPesquisa;
end;

procedure TPrincipalF.BitBtn6Click(Sender: TObject);
begin
    If  MessageDlg('Deseja excluir o registro?', mtWarning,[mbyes,mbno],0)=mryes then
  begin
      qryCatProd.delete;
      PageControl1.ActivePage := tbPesquisa;
  end;
end;

procedure TPrincipalF.BitBtn1Click(Sender: TObject);
begin
    qryCatProd.Insert;
  PageControl1.ActivePage := tbCadastro;

  if dbEdtDescric.CanFocus then
     dbEdtDescric.SetFocus;
end;

procedure TPrincipalF.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TPrincipalF.FormCreate(Sender: TObject);
begin
end;

procedure TPrincipalF.FormShow(Sender: TObject);
begin
    qryCatProd.Open;
  PageControl1.ActivePage := tbPesquisa;
end;

procedure TPrincipalF.Panel1Click(Sender: TObject);
begin

end;

procedure TPrincipalF.qryCatProdNewRecord(DataSet: TDataSet);
begin
  dmF.qryGenerica.Close;
  dmF.qryGenerica.SQL.Clear;
  dmF.qryGenerica.SQL.Add('select+nextval('+ QuotedStr('categoria_produto_categoriaprodutoid_seq')+')AS CODIGO');
  dmF.qryGenerica.Open;

  qryCatProdcategoriaprodutoid.AsInteger:= dmF.qryGenerica.FieldByName('CODIGO').AsInteger;
end;

procedure TPrincipalF.SpeedButton2Click(Sender: TObject);
begin

end;

procedure TPrincipalF.SpeedButton3Click(Sender: TObject);
begin
  qryCatProd.Last;
end;

procedure TPrincipalF.SpeedButton4Click(Sender: TObject);
begin
  qryCatProd.First;
end;

procedure TPrincipalF.SpeedButton5Click(Sender: TObject);
begin
  qryCatProd.Next;
end;

procedure TPrincipalF.SpeedButton6Click(Sender: TObject);
begin
  qryCatProd.Prior;
end;

end.

