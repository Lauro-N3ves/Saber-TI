unit principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBCtrls, DBGrids,
  StdCtrls, ComCtrls, ExtCtrls, ExtDlgs, Buttons, DateTimePicker, ZDataset,
  ZSqlUpdate, DB;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    dsCatProd: TDataSource;
    dbEdtDescric: TDBEdit;
    dbEdtId: TDBEdit;
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
    procedure BitBtn3Click(Sender: TObject);
    procedure dbEdtDescricEditingDone(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
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

procedure TPrincipalF.dbEdtDescricEditingDone(Sender: TObject);
begin

end;

procedure TPrincipalF.BitBtn3Click(Sender: TObject);
begin

end;

procedure TPrincipalF.BitBtn1Click(Sender: TObject);
begin

end;

procedure TPrincipalF.FormCreate(Sender: TObject);
begin
end;

procedure TPrincipalF.Panel1Click(Sender: TObject);
begin

end;

procedure TPrincipalF.SpeedButton2Click(Sender: TObject);
begin

end;

procedure TPrincipalF.SpeedButton4Click(Sender: TObject);
begin

end;

procedure TPrincipalF.SpeedButton5Click(Sender: TObject);
begin

end;

end.

