unit formas_pgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, AdvGlowButton, Vcl.ExtCtrls;

type
  TfrmFormas = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    rchequeav: TAdvGlowButton;
    rdinheiro: TAdvGlowButton;
    rcartaod: TAdvGlowButton;
    Panel2: TPanel;
    pop1: TPopupMenu;
    D1: TMenuItem;
    C1: TMenuItem;
    C2: TMenuItem;
    procedure D1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormas: TfrmFormas;

implementation

{$R *.dfm}

uses venda_contasreceber;

procedure TfrmFormas.C1Click(Sender: TObject);
begin
  tipox := '2';
  Close;
end;

procedure TfrmFormas.C2Click(Sender: TObject);
begin
  tipox := '3';
  Close;
end;

procedure TfrmFormas.D1Click(Sender: TObject);
begin
  tipox := '1';
  Close;
end;

end.
