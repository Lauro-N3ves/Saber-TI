unit CadCliente;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  Buttons, ZDataset, modelo, dataModel;

type

  { TCadClienteF }

  TCadClienteF = class(TModeloF)
    dbComboBoxCadClienteTipo: TDBComboBox;
    dbEdtCadClienteID: TDBEdit;
    dbEdtCadClienteCpfCnpj: TDBEdit;
    dbEdtCadClienteNome: TDBEdit;
    dsCadCliente: TDataSource;
    lblCadClienteID: TLabel;
    lblCadClienteTipo: TLabel;
    lblCadClienteCpfCnpj: TLabel;
    lblCadClienteNome: TLabel;
    qryCadCliente: TZQuery;
    qryCadClienteclienteid: TLongintField;
    qryCadClientecpf_cnpj_cliente: TStringField;
    qryCadClientenome_cliente: TStringField;
    qryCadClientetipo_cliente: TStringField;
    procedure bitBtnModeloCancelarClick(Sender: TObject);
    procedure bitBtnModeloEditarClick(Sender: TObject);
    procedure bitBtnModeloExcluirClick(Sender: TObject);
    procedure bitBtnModeloGravarClick(Sender: TObject);
    procedure bitBtnModeloImprimirClick(Sender: TObject);
    procedure bitBtnModeloNovoClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure dbGridModeloDblClick(Sender: TObject);
    procedure lblCadClienteIDClick(Sender: TObject);
    procedure qryCadClienteNewRecord(DataSet: TDataSet);
  private

  public

  end;

var
  CadClienteF: TCadClienteF;

implementation

{$R *.lfm}

{ TCadClienteF }

procedure TCadClienteF.bitBtnModeloNovoClick(Sender: TObject);
begin
  inherited;
  qryCadCliente.Insert;
  dbEdtCadClienteCpfCnpj.ReadOnly:= False;
  dbEdtCadClienteNome.ReadOnly:= False;
  dbComboBoxCadClienteTipo.ReadOnly:= False;
  if dbComboBoxCadClienteTipo.CanFocus then
  begin
    dbComboBoxCadClienteTipo.SetFocus;
  end;
end;

procedure TCadClienteF.bitBtnModeloEditarClick(Sender: TObject);
begin
  inherited;
  qryCadCliente.Edit;
  dbEdtCadClienteCpfCnpj.ReadOnly:= False;
  dbEdtCadClienteNome.ReadOnly:= False;
  dbComboBoxCadClienteTipo.ReadOnly:= False;
end;

procedure TCadClienteF.bitBtnModeloCancelarClick(Sender: TObject);
begin
  inherited;
  dbEdtCadClienteCpfCnpj.ReadOnly:= True;
  dbEdtCadClienteNome.ReadOnly:= True;
  dbComboBoxCadClienteTipo.ReadOnly:= True;
end;

procedure TCadClienteF.bitBtnModeloExcluirClick(Sender: TObject);
begin
  inherited;
  If MessageDlg('Deseja excluir esse arquivo?', mtWarning,[mbYes,mbNo],0)= mrYes Then
  begin
       qryCadCliente.Delete;
       dbEdtCadClienteCpfCnpj.ReadOnly:= True;
       dbEdtCadClienteNome.ReadOnly:= True;
       dbComboBoxCadClienteTipo.ReadOnly:= True;
  end;

end;

procedure TCadClienteF.bitBtnModeloGravarClick(Sender: TObject);
begin
  inherited;
  qryCadCliente.Post;
  dbEdtCadClienteCpfCnpj.ReadOnly:= True;
  dbEdtCadClienteNome.ReadOnly:= True;
  dbComboBoxCadClienteTipo.ReadOnly:= True;
end;

procedure TCadClienteF.bitBtnModeloImprimirClick(Sender: TObject);
begin
  inherited;
  //fzr
  dbEdtCadClienteCpfCnpj.ReadOnly:= True;
  dbEdtCadClienteNome.ReadOnly:= True;
  dbComboBoxCadClienteTipo.ReadOnly:= True;
end;

procedure TCadClienteF.ComboBox1Change(Sender: TObject);
begin

end;

procedure TCadClienteF.dbGridModeloDblClick(Sender: TObject);
begin
  PageControl1.ActivePage:=tbCadastro;
end;

procedure TCadClienteF.lblCadClienteIDClick(Sender: TObject);
begin

end;

procedure TCadClienteF.qryCadClienteNewRecord(DataSet: TDataSet);
begin
  dmF.qryGenerica.Close;
  dmF.qryGenerica.SQL.Clear;
  dmF.qryGenerica.SQL.Add('select nextval('+ QuotedStr('orcamento_orcamentoid_seq')+')AS CODIGO');
  dmF.qryGenerica.Open;

  qryCadClienteclienteid.AsInteger:= dmF.qryGenerica.FieldByName('CODIGO').AsInteger;
end;

end.

