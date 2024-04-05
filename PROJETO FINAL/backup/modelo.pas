unit modelo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  Grids, DBCtrls, Buttons, Menus, StdCtrls, DBGrids;

type

  { TModeloF }

  TModeloF = class(TForm)
    bitBtnGravar: TBitBtn;
    bitBtnExcluir: TBitBtn;
    bitBtnancelar: TBitBtn;
    bitBtnPesquisar: TBitBtn;
    bitBtnNovo: TBitBtn;
    bitBtnFechar: TBitBtn;
    dbEdtPesquisar: TDBEdit;
    DBGrid1: TDBGrid;
    dsCadModelo: TDataSource;
    lblCodigo: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    tbPesquisa: TTabSheet;
    tbCadastro: TTabSheet;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private

  public

  end;

var
  ModeloF: TModeloF;

implementation

{$R *.lfm}

{ TModeloF }

procedure TModeloF.FormCreate(Sender: TObject);
begin

end;

procedure TModeloF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
   CloseAction:= caFree;

end;

procedure TModeloF.PageControl1Change(Sender: TObject);
begin

end;

procedure TModeloF.Panel1Click(Sender: TObject);
begin

end;

end.

