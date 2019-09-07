unit Frm_Relatorios;

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
  TFrame_Relatorios = class(TFrame)
    dxTileControl1: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl1Item13: TdxTileControlItem;
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item5Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item6Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item12Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item13Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item11Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item4Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item10Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item7Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item8Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item9Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses principal;

procedure TFrame_Relatorios.dxTileControl1Item10Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action58.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item11Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action62.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item12Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action60.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item13Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action56.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item1Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action8.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item2Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action53.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item3Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action61.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item4Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action59.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item5Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action54.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item6Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action65.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item7Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action55.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item8Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action57.Execute;
end;

procedure TFrame_Relatorios.dxTileControl1Item9Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action63.Execute;
end;

end.
