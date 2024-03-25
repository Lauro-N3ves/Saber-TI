unit Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  PrintersDlgs;

type

  { TPrincipalF }

  TPrincipalF = class(TForm)
    FontDialog1: TFontDialog;
    MainMenu: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    PrintDialog1: TPrintDialog;
    SaveDialog1: TSaveDialog;
    SubMenu3Fonte: TMenuItem;
    Submenu2Substituir: TMenuItem;
    SubMenu2Localizar: TMenuItem;
    SubMenu1Imprimir: TMenuItem;
    SubMenu1Salvar: TMenuItem;
    SubMenu1Novo: TMenuItem;
    SubMenu1Abrir: TMenuItem;
    OpenDialog1: TOpenDialog;
    procedure Memo1Change(Sender: TObject);
    procedure SubMenu1AbrirClick(Sender: TObject);
    procedure SubMenu1ImprimirClick(Sender: TObject);
    procedure SubMenu1NovoClick(Sender: TObject);
    procedure SubMenu1SalvarClick(Sender: TObject);
    procedure SubMenu2LocalizarClick(Sender: TObject);
    procedure SubMenu3FonteClick(Sender: TObject);
  private

  public

  end;

var
  PrincipalF: TPrincipalF;

implementation

{$R *.lfm}

{ TPrincipalF }



procedure TPrincipalF.SubMenu1AbrirClick(Sender: TObject);
begin
  OpenDialog1.Execute;
end;

procedure TPrincipalF.SubMenu1ImprimirClick(Sender: TObject);
begin
  PrintDialog1.Execute;
end;

procedure TPrincipalF.SubMenu1NovoClick(Sender: TObject);
begin
  if Memo1.Modified then
  begin
    if MessageDlg('Salvar Mudanças?', mtConfirmation, [mbNo, mbYes], 0) = mrYes then

    SubMenu1SalvarClick(sender);

  end;
  Memo1.Clear;
  Memo1.Modified:=false;
end;

procedure TPrincipalF.SubMenu1SalvarClick(Sender: TObject);
begin

  if  SaveDialog1.Execute then
  begin
    try
       Memo1.Lines.SaveToFile(SaveDialog1.FileName);

    finally
    end;
  end;
end;

procedure TPrincipalF.SubMenu2LocalizarClick(Sender: TObject);
begin

end;

procedure TPrincipalF.SubMenu3FonteClick(Sender: TObject);
begin
  FontDialog1.Execute;
  Memo1.font.Style:=FontDialog1.Font.Style;
  Memo1.font.Name:=FontDialog1.Font.Name;
  Memo1.font.Size:=FontDialog1.Font.size;
  Memo1.Font.color:=FontDialog1.Font.Color;
end;

procedure TPrincipalF.Memo1Change(Sender: TObject);
begin

end;

end.

