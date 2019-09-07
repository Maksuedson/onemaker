unit frmNatOperacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, AdvGlowButton, Vcl.ExtCtrls,
  TFlatPanelUnit;

type
  Tfrmnatureza = class(TForm)
    ComboBox1: TComboBox;
    FlatPanel3: TFlatPanel;
    bt_gravar_consumid: TAdvGlowButton;
    bt_cancelar_consumid: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    procedure FormShow(Sender: TObject);
    procedure bt_cancelar_consumidClick(Sender: TObject);
    procedure bt_gravar_consumidClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnatureza: Tfrmnatureza;

implementation

{$R *.dfm}

uses modulo, venda;

procedure Tfrmnatureza.bt_cancelar_consumidClick(Sender: TObject);
begin
  bContinuaNFCE := False;
  Close;
end;

procedure Tfrmnatureza.bt_gravar_consumidClick(Sender: TObject);
begin
  with frmModulo do
  begin
    edtNatOperacao := ComboBox1.Items[ComboBox1.ItemIndex];
    bContinuaNFCE := True;
    Close;
  end;
end;

procedure Tfrmnatureza.FormShow(Sender: TObject);
begin
  bContinuaNFCE := False;
end;

end.
