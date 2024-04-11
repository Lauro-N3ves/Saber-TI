unit pesquisaClienteCadOrcamento;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons;

type

  { TpesquisaClienteCadOrcamentoF }

  TpesquisaClienteCadOrcamentoF = class(TForm)
    bitBtnModeloPesquisar: TBitBtn;
    Edit1: TEdit;
    ImageList1: TImageList;
    Label1: TLabel;
    pnlPesquisaClienteOrcamento: TPanel;
  private

  public

  end;

var
  pesquisaClienteCadOrcamentoF: TpesquisaClienteCadOrcamentoF;

implementation

{$R *.lfm}

end.

