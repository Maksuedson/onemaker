unit Unit_Principal_PDF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxPDFDocument, dxBarBuiltInMenu, dxRibbonSkins,
  dxRibbonCustomizationForm, dxPDFViewerActions, dxBar, dxPrinting, cxClasses,
  dxRibbon, System.Actions, Vcl.ActnList, dxActions, System.ImageList,
  Vcl.ImgList, cxImageList, dxCustomPreview, dxPDFViewer, AdvGlowButton,
  Vcl.ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, cxLocalization, dxGDIPlusClasses;

type
  TPrincipal_PDF = class(TForm)
    dxPDFViewer1: TdxPDFViewer;
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    dxPDFViewerOpenDocument: TdxPDFViewerOpenDocument;
    dxBarButtonOpen: TdxBarButton;
    dxPDFViewerCloseDocument: TdxPDFViewerCloseDocument;
    dxBarButtonClose: TdxBarButton;
    dxPDFViewerShowPrintForm: TdxPDFViewerShowPrintForm;
    dxBarButtonPrint: TdxBarButton;
    dxPDFViewerFind: TdxPDFViewerFind;
    dxBarButtonFind: TdxBarButton;
    dxPDFViewerSelectTool: TdxPDFViewerSelectTool;
    dxBarButtonSelectTool: TdxBarButton;
    dxPDFViewerHandTool: TdxPDFViewerHandTool;
    dxBarButtonHandTool: TdxBarButton;
    dxPDFViewerSelectAll: TdxPDFViewerSelectAll;
    dxBarButtonSelectAll: TdxBarButton;
    dxPDFViewerZoomOut: TdxPDFViewerZoomOut;
    dxBarButtonZoomOut: TdxBarButton;
    dxPDFViewerZoomIn: TdxPDFViewerZoomIn;
    dxBarButtonZoomIn: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxPDFViewerZoom10: TdxPDFViewerZoom10;
    dxBarButton10: TdxBarButton;
    dxPDFViewerZoom25: TdxPDFViewerZoom25;
    dxBarButton25: TdxBarButton;
    dxPDFViewerZoom50: TdxPDFViewerZoom50;
    dxBarButton50: TdxBarButton;
    dxPDFViewerZoom75: TdxPDFViewerZoom75;
    dxBarButton75: TdxBarButton;
    dxPDFViewerZoom100: TdxPDFViewerZoom100;
    dxBarButton100: TdxBarButton;
    dxPDFViewerZoom125: TdxPDFViewerZoom125;
    dxBarButton125: TdxBarButton;
    dxPDFViewerZoom150: TdxPDFViewerZoom150;
    dxBarButton150: TdxBarButton;
    dxPDFViewerZoom200: TdxPDFViewerZoom200;
    dxBarButton200: TdxBarButton;
    dxPDFViewerZoom400: TdxPDFViewerZoom400;
    dxBarButton400: TdxBarButton;
    dxPDFViewerZoom500: TdxPDFViewerZoom500;
    dxBarButton500: TdxBarButton;
    dxPDFViewerZoomActualSize: TdxPDFViewerZoomActualSize;
    dxBarButtonActualSize: TdxBarButton;
    dxPDFViewerZoomToPageLevel: TdxPDFViewerZoomToPageLevel;
    dxBarButtonZoomtoPageLevel: TdxBarButton;
    dxPDFViewerZoomFitWidth: TdxPDFViewerZoomFitWidth;
    dxBarButtonFitWidth: TdxBarButton;
    Panel1: TPanel;
    Panel2: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    dxComponentPrinter1: TdxComponentPrinter;
    Panel3: TPanel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal_PDF: TPrincipal_PDF;

implementation

{$R *.dfm}

end.
