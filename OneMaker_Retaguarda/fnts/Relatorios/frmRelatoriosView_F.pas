unit frmRelatoriosView_F;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,

  FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client,
  ppProd, ppReport,
  ppTypes, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons,
  ppViewr, cxPC, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxGDIPlusClasses,
  dxStatusBar, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, ppComm,
  ppEndUsr, ppRelatv, ppClass, Vcl.Samples.Spin, dxSkinsCore, dxSkinSharp,
  dxSkinSharpPlus, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, AdvGlowButton;

type
  TfrmRelatoriosView = class(TForm)
    PageREL: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    Panel3: TPanel;
    ppViewer1: TppViewer;
    pnlPreviewBar: TPanel;
    spbPreviewPrint: TSpeedButton;
    spbPreviewWhole: TSpeedButton;
    spbPreviewFirst: TSpeedButton;
    spbPreviewPrior: TSpeedButton;
    spbPreviewNext: TSpeedButton;
    spbPreviewLast: TSpeedButton;
    spbPreviewWidth: TSpeedButton;
    spbPreview100Percent: TSpeedButton;
    Bevel9: TBevel;
    mskPreviewPage: TMaskEdit;
    pnlCancelButton: TPanel;
    Panel1: TPanel;
    PnlPadrao: TPanel;
    BtnFechar: TBitBtn;
    dxStatusBar: TdxStatusBar;
    Splitter1: TSplitter;
    BtnEditar: TBitBtn;
    ppDesigner1: TppDesigner;
    mskPreviewPercentage: TSpinEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    CBTipoExporta: TcxComboBox;
    BtnExportar: TBitBtn;
    AdvGlowButton11: TAdvGlowButton;
    procedure spbPreviewPrintClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewFirstClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewLastClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnExportarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure mskPreviewPercentageChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ppViewer1PageChange(Sender: TObject);
 //   procedure spbPreviewCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Report: TppReport;
  end;

var
  frmRelatoriosView: TfrmRelatoriosView;

implementation


{$R *.dfm}

procedure TfrmRelatoriosView.BtnEditarClick(Sender: TObject);
begin
  ppDesigner1.Report:=TppReport(ppViewer1.Report);
  ppDesigner1.ShowModal;
end;

procedure TfrmRelatoriosView.BtnExportarClick(Sender: TObject);
begin
  with Report do
  begin
    AllowPrintToFile := True;
    DeviceType := CBTipoExporta.Text;
    Print;
  end;
end;

procedure TfrmRelatoriosView.BtnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmRelatoriosView.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then
  close;
end;

procedure TfrmRelatoriosView.FormShow(Sender: TObject);
begin
 // if (A_Menu._relExportar <= 0) And (A_Menu.lblUSuario.Caption <> 'VISTA') then
 // begin
  // BtnExportar.Enabled := False;
 // end else begin
   BtnExportar.Enabled := True;
 // end;

 ppViewer1.Reset;
 ppViewer1.Report := Report;
 ppViewer1.Report.PrintToDevices;

  ppViewer1.ZoomSetting := zs100Percent;


end;

procedure TfrmRelatoriosView.mskPreviewPercentageChange(Sender: TObject);
begin
   ppViewer1.ZoomPercentage:= mskPreviewPercentage.Value;
end;

procedure TfrmRelatoriosView.ppViewer1PageChange(Sender: TObject);
begin
 // mskPreviewPage.Text:= ppViewer1.PageSeparation.ToString;;

end;

procedure TfrmRelatoriosView.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

end;

procedure TfrmRelatoriosView.spbPreviewFirstClick(Sender: TObject);
begin
  ppViewer1.FirstPage;
end;

procedure TfrmRelatoriosView.spbPreviewLastClick(Sender: TObject);
begin
  ppViewer1.LastPage;
end;

procedure TfrmRelatoriosView.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
end;

procedure TfrmRelatoriosView.spbPreviewPrintClick(Sender: TObject);
begin
 Report.DeviceType := 'Printer';
 Report.ShowPrintDialog := True;
 Report.Print;

 //ppViewer1.Print;
end;

procedure TfrmRelatoriosView.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
end;

procedure TfrmRelatoriosView.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

end;

procedure TfrmRelatoriosView.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

end;

end.


