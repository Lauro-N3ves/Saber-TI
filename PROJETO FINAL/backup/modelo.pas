unit modelo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  Grids, DBCtrls, Buttons, Menus, StdCtrls, DBGrids, Types;

type

  { TModeloF }

  TModeloF = class(TForm)
    bitBtnGravar: TBitBtn;
    bitBtnExcluir: TBitBtn;
    bitBtnancelar: TBitBtn;
    bitBtnPesquisar: TBitBtn;
    bitBtnFechar: TBitBtn;
    bitBtnNovo: TBitBtn;
    dbEdtPesquisar: TDBEdit;
    DBGrid1: TDBGrid;
    dsCadModelo: TDataSource;
    ImageList1: TImageList;
    Label1: TLabel;
    pnlGrid: TPanel;
    pnlBotoes: TPanel;
    pnlPesquisa: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    tbPesquisa: TTabSheet;
    tbCadastro: TTabSheet;
    procedure bitBtnNovoClick(Sender: TObject);
    procedure SClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure pnlGridClick(Sender: TObject);
    procedure tbPesquisaContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
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

procedure TModeloF.SClick(Sender: TObject);
begin

end;

procedure TModeloF.bitBtnNovoClick(Sender: TObject);
begin

end;

procedure TModeloF.PageControl1Change(Sender: TObject);
begin

end;

procedure TModeloF.pnlGridClick(Sender: TObject);
begin

end;

procedure TModeloF.tbPesquisaContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

end.

