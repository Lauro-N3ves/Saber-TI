unit pesquisaClientesCadOrcamento;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TPesquisaClientesCadOrcamento }

  TPesquisaClientesCadOrcamento = class(TForm)
    bitBtnModeloPesquisar: TBitBtn;
    cmbBoxModelo: TComboBox;
    edtPesquisarModelo: TEdit;
    lblModeloPesquisar: TLabel;
    pnlPesquisa: TPanel;
  private

  public

  end;

var
  PesquisaClientesCadOrcamento: TPesquisaClientesCadOrcamento;

implementation

{$R *.lfm}

end.

