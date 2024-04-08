unit modelo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  Grids, DBCtrls, Buttons, Menus, StdCtrls, DBGrids, Types;

type

  { TModeloF }

  TModeloF = class(TForm)
    bitBtnModeloCancelar: TBitBtn;
    bitBtnModeloEditar: TBitBtn;
    bitBtnModeloExcluir: TBitBtn;
    bitBtnModeloImprimir: TBitBtn;
    bitBtnModeloFechar: TBitBtn;
    bitBtnModeloGravar: TBitBtn;
    bitBtnModeloNovo: TBitBtn;
    bitBtnModeloPesquisar: TBitBtn;
    dbEdtModeloPesquisar: TDBEdit;
    dbGridModelo: TDBGrid;
    dsCadModelo: TDataSource;
    ImageList1: TImageList;
    lblModeloPesquisar: TLabel;
    Panel1: TPanel;
    pnlModeloPesquisaBotoes: TPanel;
    pnlModeloCadBotoes: TPanel;
    pnlCadTop: TPanel;
    pnlGrid: TPanel;
    pnlModeloPesquisa: TPanel;
    PageControl1: TPageControl;
    tbPesquisa: TTabSheet;
    tbCadastro: TTabSheet;
    procedure bitBtnModeloCancelarClick(Sender: TObject);
    procedure bitBtnModeloEditarClick(Sender: TObject);
    procedure bitBtnModeloImprimirClick(Sender: TObject);
    procedure bitBtnModeloExcluirClick(Sender: TObject);
    procedure bitBtnModeloFecharClick(Sender: TObject);
    procedure bitBtnModeloGravarClick(Sender: TObject);
    procedure bitBtnModeloNovoClick(Sender: TObject);
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
  PageControl1.ActivePage:=tbPesquisa;
end;

procedure TModeloF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
   CloseAction:= caFree;
end;

procedure TModeloF.SClick(Sender: TObject);
begin

end;

procedure TModeloF.bitBtnModeloNovoClick(Sender: TObject);
begin
  PageControl1.ActivePage:=tbCadastro;
end;

procedure TModeloF.bitBtnModeloFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TModeloF.bitBtnModeloGravarClick(Sender: TObject);
begin

end;

procedure TModeloF.bitBtnModeloCancelarClick(Sender: TObject);
begin
  PageControl1.ActivePage:=tbPesquisa;
end;

procedure TModeloF.bitBtnModeloEditarClick(Sender: TObject);
begin

end;

procedure TModeloF.bitBtnModeloImprimirClick(Sender: TObject);
begin

end;

procedure TModeloF.bitBtnModeloExcluirClick(Sender: TObject);
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

