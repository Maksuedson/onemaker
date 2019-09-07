unit Frm_Cadastros_Base;

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
  TFrame_Cadastros_Base = class(TFrame)
    dxTileControl1: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl1Item18: TdxTileControlItem;
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item4Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item5Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item6Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item13Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item7Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item8Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item11Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item12Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item14Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item9Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item10Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item15Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item16Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item17Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item18Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses principal, agenda, marca, regiao, modulo;

procedure TFrame_Cadastros_Base.dxTileControl1Item10Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action22.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item11Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action13.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item12Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action16.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item13Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action15.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item14Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action1.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item15Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action19.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item16Click(
  Sender: TdxTileControlItem);
begin
  frmagenda := Tfrmagenda.create(self);
  frmagenda.showmodal;
//  frmprincipal.Action39.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item17Click(
  Sender: TdxTileControlItem);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;

end;

procedure TFrame_Cadastros_Base.dxTileControl1Item18Click(
  Sender: TdxTileControlItem);
begin
  frmregiao := tfrmregiao.CREATE(SELF);
  frmregiao.SHOWMODAL;
  FRMMODULO.qrregiao.refresh;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item1Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action9.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item2Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action12.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item3Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action68.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item4Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action10.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item5Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action11.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item6Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action17.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item7Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action14.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item8Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action18.Execute;
end;

procedure TFrame_Cadastros_Base.dxTileControl1Item9Click(
  Sender: TdxTileControlItem);
begin
  frmprincipal.Action21.Execute;
end;

end.
