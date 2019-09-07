unit Frm_Fiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxCustomTileControl, cxClasses, dxTileControl;

type
  TFrame_Fiscal = class(TFrame)
    dxTileControl1: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl1Item9: TdxTileControlItem;
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item4Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item5Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item6Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item7Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item8Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item9Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item10Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses principal, CEST, aliquota, sintegra_gerar;

procedure TFrame_Fiscal.dxTileControl1Item10Click(Sender: TdxTileControlItem);
begin
  frmsintegra_gerar := tfrmsintegra_gerar.create(self);
  frmsintegra_gerar.showmodal;
end;

procedure TFrame_Fiscal.dxTileControl1Item1Click(Sender: TdxTileControlItem);
begin
  frmprincipal.Action3.Execute;
end;

procedure TFrame_Fiscal.dxTileControl1Item2Click(Sender: TdxTileControlItem);
begin
  frmprincipal.Action71.Execute;
end;

procedure TFrame_Fiscal.dxTileControl1Item3Click(Sender: TdxTileControlItem);
begin
  frmprincipal.Action72.Execute;
end;

procedure TFrame_Fiscal.dxTileControl1Item4Click(Sender: TdxTileControlItem);
begin
  frmprincipal.Action73.Execute;
end;

procedure TFrame_Fiscal.dxTileControl1Item5Click(Sender: TdxTileControlItem);
begin
  frmprincipal.Action74.Execute;
end;

procedure TFrame_Fiscal.dxTileControl1Item6Click(Sender: TdxTileControlItem);
begin
  frmprincipal.Action75.Execute;
end;

procedure TFrame_Fiscal.dxTileControl1Item7Click(Sender: TdxTileControlItem);
begin
  frmprincipal.Action20.Execute;
end;

procedure TFrame_Fiscal.dxTileControl1Item8Click(Sender: TdxTileControlItem);
begin
  frmprincipal.Action32.Execute;
end;

procedure TFrame_Fiscal.dxTileControl1Item9Click(Sender: TdxTileControlItem);
begin
  frmAliquota := tfrmAliquota.create(self);
  frmAliquota.showmodal;
end;

end.
