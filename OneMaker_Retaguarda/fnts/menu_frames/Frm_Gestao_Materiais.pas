unit Frm_Gestao_Materiais;

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
  TFrame_Gestao_Materiais = class(TFrame)
    dxTileControl1: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl1Item10: TdxTileControlItem;
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item4Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item7Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item8Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item5Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item6Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item9Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item10Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses principal, Produto_consultaserial, inventario;

procedure TFrame_Gestao_Materiais.dxTileControl1Item10Click(
  Sender: TdxTileControlItem);
begin
  frminventario := tfrminventario.create(application);
  try
    frminventario.showmodal;
  finally
    frminventario.Release;
    frminventario := nil;
  end;
end;

procedure TFrame_Gestao_Materiais.dxTileControl1Item1Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action4.Execute;
end;

procedure TFrame_Gestao_Materiais.dxTileControl1Item2Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action26.Execute;
end;

procedure TFrame_Gestao_Materiais.dxTileControl1Item3Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action29.Execute;
end;

procedure TFrame_Gestao_Materiais.dxTileControl1Item4Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action25.Execute;
end;

procedure TFrame_Gestao_Materiais.dxTileControl1Item5Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action27.Execute;
end;

procedure TFrame_Gestao_Materiais.dxTileControl1Item6Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action33.Execute;
end;

procedure TFrame_Gestao_Materiais.dxTileControl1Item7Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action30.Execute;
end;

procedure TFrame_Gestao_Materiais.dxTileControl1Item8Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action31.Execute;
end;

procedure TFrame_Gestao_Materiais.dxTileControl1Item9Click(
  Sender: TdxTileControlItem);
begin
  frmProduto_consultaserial := tfrmProduto_consultaserial.create(self);
  frmProduto_consultaserial.showmodal;
end;

end.
