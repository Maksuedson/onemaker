unit lacre_conteiner_cte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, RzPanel, StdCtrls, sGroupBox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Menus, cxTextEdit, cxDBEdit, DB;

type
  Tfrmlacre_conteiner = class(TForm)
    sGroupBox1: TsGroupBox;
    RzPanel2: TRzPanel;
    btincluir: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    DataSource1: TDataSource;
    Label1: TLabel;
    edtlacre: TcxDBTextEdit;
    pop1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    procedure btincluirClick(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlacre_conteiner: Tfrmlacre_conteiner;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmlacre_conteiner.btincluirClick(Sender: TObject);
begin
  if self.tag = 100 then
  begin
    frmmodulo.qrlacre_conteiner.Open;
    frmmodulo.qrlacre_conteiner.Edit;
    frmmodulo.qrlacre_conteiner.FieldByName('lacre').AsString := edtlacre.Text;
    frmmodulo.qrlacre_conteiner.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrlacre_conteiner.post;
  end
  else
  begin
    
    frmmodulo.qrlacre_conteiner.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrlacre_conteiner.post;
  end;
  frmmodulo.Conexao.Commit;
  close;
end;

procedure Tfrmlacre_conteiner.AdvGlowButton14Click(Sender: TObject);
begin
  close;
end;

end.

