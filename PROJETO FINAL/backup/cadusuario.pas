unit cadUsuario;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  ZDataset, DB, modelo;

type

  { TcadUsuarioF }

  TcadUsuarioF = class(TModeloF)
    dbEdtCadusuarioID: TDBEdit;
    dbEdtCadUsuarioUser: TDBEdit;
    dbEdtCadUsuarioNomeCompleto: TDBEdit;
    dbEdtCadUsuarioSenha: TDBEdit;
    dsCadUsuario: TDataSource;
    lblCadUsuarioID: TLabel;
    lblCadUsuarioUser: TLabel;
    lblCadUsuarioNomeCompleto: TLabel;
    lblCadUsuarioSenha: TLabel;
    qryCadUsuario: TZQuery;
    qryCadUsuarioid: TLongintField;
    qryCadUsuarionome_completo: TStringField;
    qryCadUsuariosenha: TStringField;
    qryCadUsuariousuario: TStringField;
    procedure bitBtnModeloCancelarClick(Sender: TObject);
    procedure bitBtnModeloEditarClick(Sender: TObject);
    procedure bitBtnModeloExcluirClick(Sender: TObject);
    procedure bitBtnModeloGravarClick(Sender: TObject);
    procedure bitBtnModeloNovoClick(Sender: TObject);
  private

  public

  end;

var
  cadUsuarioF: TcadUsuarioF;

implementation

{$R *.lfm}

{ TcadUsuarioF }

procedure TcadUsuarioF.bitBtnModeloNovoClick(Sender: TObject);
begin
  inherited;
  qryCadUsuario.Insert;
end;

procedure TcadUsuarioF.bitBtnModeloEditarClick(Sender: TObject);
begin
  inherited;
  qryCadUsuario.Edit;
end;

procedure TcadUsuarioF.bitBtnModeloCancelarClick(Sender: TObject);
begin
  inherited;
  qryCadUsuario.Cancel;
end;

procedure TcadUsuarioF.bitBtnModeloExcluirClick(Sender: TObject);
begin
  inherited;
  If MessageDlg('Deseja excluir esse registro?', mtWarning,[mbYes,mbNo],0)= mrYes Then
  begin
       qryCadUsuario.Delete;
  end;
end;

procedure TcadUsuarioF.bitBtnModeloGravarClick(Sender: TObject);
begin
  inherited;
  qryCadUsuario.Post;
end;

end.

