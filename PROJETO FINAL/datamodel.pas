unit dataModel;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ZConnection;

type

  { TdmF }

  TdmF = class(TDataModule)
    ZConnection1: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure ZConnection1AfterConnect(Sender: TObject);
  private

  public

  end;

var
  dmF: TdmF;

implementation

{$R *.lfm}

{ TdmF }

procedure TdmF.ZConnection1AfterConnect(Sender: TObject);
begin

end;

procedure TdmF.DataModuleCreate(Sender: TObject);
begin

end;

end.

