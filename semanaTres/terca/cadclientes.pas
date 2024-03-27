unit CadClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TCadClientesF }

  TCadClientesF = class(TForm)
    btnCadCliente: TButton;
    procedure btnCadClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  CadClientesF: TCadClientesF;

implementation

{$R *.lfm}

{ TCadClientesF }

procedure TCadClientesF.FormCreate(Sender: TObject);
begin

end;

procedure TCadClientesF.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  ShowMessage('fechei tb');
  CloseAction:=caFree;
end;

procedure TCadClientesF.btnCadClienteClick(Sender: TObject);
begin

end;

end.

