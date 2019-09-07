unit Unit_Excel_Principal;

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
  dxSkinXmas2008Blue, dxSpreadSheetCore, dxSpreadSheetReportDesigner,
  dxRibbonSkins, dxRibbonCustomizationForm, cxFontNameComboBox, cxDropDownEdit,
  dxSpreadSheetReportDesignerActions, dxPrinting, dxSpreadSheetActions,
  dxSpreadSheetConditionalFormattingRulesActions, dxBar, dxRibbonColorGallery,
  cxBarEditItem, cxClasses, dxRibbon, System.Actions, Vcl.ActnList, dxActions,
  System.ImageList, Vcl.ImgList, cxImageList, Vcl.ExtCtrls, AdvGlowButton,
  cxColorComboBox, cxLocalization, dxGDIPlusClasses;

type
  TExcel_Principal = class(TForm)
    dxSpreadSheetReportDesigner1: TdxSpreadSheetReportDesigner;
    Panel1: TPanel;
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    dxSpreadSheetNewDocument: TdxSpreadSheetNewDocument;
    dxBarButtonNew: TdxBarButton;
    dxSpreadSheetOpenDocument: TdxSpreadSheetOpenDocument;
    dxBarButtonOpen: TdxBarButton;
    dxSpreadSheetSaveDocumentAs: TdxSpreadSheetSaveDocumentAs;
    dxBarButtonSaveAs: TdxBarButton;
    dxSpreadSheetChangeFontName: TdxSpreadSheetChangeFontName;
    dxBarFont: TdxBar;
    cxBarEditItemFontName: TcxBarEditItem;
    dxSpreadSheetChangeFontSize: TdxSpreadSheetChangeFontSize;
    cxBarEditItemFontSize: TcxBarEditItem;
    dxSpreadSheetIncreaseFontSize: TdxSpreadSheetIncreaseFontSize;
    dxBarButtonIncreaseFontSize: TdxBarButton;
    dxSpreadSheetDecreaseFontSize: TdxSpreadSheetDecreaseFontSize;
    dxBarButtonDecreaseFontSize: TdxBarButton;
    dxSpreadSheetToggleFontBold: TdxSpreadSheetToggleFontBold;
    dxBarButtonBold: TdxBarButton;
    dxSpreadSheetToggleFontItalic: TdxSpreadSheetToggleFontItalic;
    dxBarButtonItalic: TdxBarButton;
    dxSpreadSheetToggleFontUnderline: TdxSpreadSheetToggleFontUnderline;
    dxBarButtonUnderline: TdxBarButton;
    dxSpreadSheetToggleFontStrikeout: TdxSpreadSheetToggleFontStrikeout;
    dxBarButtonStrikeout: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxSpreadSheetBordersBottom: TdxSpreadSheetBordersBottom;
    dxBarButtonBottomBorder: TdxBarButton;
    dxSpreadSheetBordersTop: TdxSpreadSheetBordersTop;
    dxBarButtonTopBorder: TdxBarButton;
    dxSpreadSheetBordersLeft: TdxSpreadSheetBordersLeft;
    dxBarButtonLeftBorder: TdxBarButton;
    dxSpreadSheetBordersRight: TdxSpreadSheetBordersRight;
    dxBarButtonRightBorder: TdxBarButton;
    dxSpreadSheetBordersNone: TdxSpreadSheetBordersNone;
    dxBarButtonNoBorder: TdxBarButton;
    dxSpreadSheetBordersAll: TdxSpreadSheetBordersAll;
    dxBarButtonAllBorders: TdxBarButton;
    dxSpreadSheetBordersOutside: TdxSpreadSheetBordersOutside;
    dxBarButtonOutsideBorders: TdxBarButton;
    dxSpreadSheetBordersOutsideThick: TdxSpreadSheetBordersOutsideThick;
    dxBarButtonThickBoxBorder: TdxBarButton;
    dxSpreadSheetBordersBottomDouble: TdxSpreadSheetBordersBottomDouble;
    dxBarButtonBottomDoubleBorder: TdxBarButton;
    dxSpreadSheetBordersBottomThick: TdxSpreadSheetBordersBottomThick;
    dxBarButtonThickBottomBorder: TdxBarButton;
    dxSpreadSheetBordersTopAndBottom: TdxSpreadSheetBordersTopAndBottom;
    dxBarButtonTopandBottomBorder: TdxBarButton;
    dxSpreadSheetBordersTopAndBottomThick: TdxSpreadSheetBordersTopAndBottomThick;
    dxBarButtonTopandThickBottomBorder: TdxBarButton;
    dxSpreadSheetBordersTopAndBottomDouble: TdxSpreadSheetBordersTopAndBottomDouble;
    dxBarButtonTopandDoubleBottomBorder: TdxBarButton;
    dxSpreadSheetBordersMore: TdxSpreadSheetBordersMore;
    dxBarButtonMore: TdxBarButton;
    dxSpreadSheetChangeFillColor: TdxSpreadSheetChangeFillColor;
    cxBarEditItemFillColor: TcxBarEditItem;
    dxSpreadSheetChangeFontColor: TdxSpreadSheetChangeFontColor;
    cxBarEditItemFontColor: TcxBarEditItem;
    dxSpreadSheetAlignVerticalTop: TdxSpreadSheetAlignVerticalTop;
    dxBarButtonTopAlign: TdxBarButton;
    dxSpreadSheetAlignVerticalCenter: TdxSpreadSheetAlignVerticalCenter;
    dxBarButtonMiddleAlign: TdxBarButton;
    dxSpreadSheetAlignVerticalBottom: TdxSpreadSheetAlignVerticalBottom;
    dxBarButtonBottomAlign: TdxBarButton;
    dxSpreadSheetAlignHorizontalLeft: TdxSpreadSheetAlignHorizontalLeft;
    dxBarButtonAlignTextLeft: TdxBarButton;
    dxSpreadSheetAlignHorizontalCenter: TdxSpreadSheetAlignHorizontalCenter;
    dxBarButtonAlignTextCenter: TdxBarButton;
    dxSpreadSheetAlignHorizontalRight: TdxSpreadSheetAlignHorizontalRight;
    dxBarButtonAlignTextRight: TdxBarButton;
    dxSpreadSheetTextIndentDecrease: TdxSpreadSheetTextIndentDecrease;
    dxBarButtonDecreaseIndent: TdxBarButton;
    dxSpreadSheetTextIndentIncrease: TdxSpreadSheetTextIndentIncrease;
    dxBarButtonIncreaseIndent: TdxBarButton;
    dxSpreadSheetTextWrap: TdxSpreadSheetTextWrap;
    dxBarButtonWrapText: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxSpreadSheetMergeCellsAndCenter: TdxSpreadSheetMergeCellsAndCenter;
    dxBarButtonMergeandCenter: TdxBarButton;
    dxSpreadSheetMergeCellsAcross: TdxSpreadSheetMergeCellsAcross;
    dxBarButtonMergeAcross: TdxBarButton;
    dxSpreadSheetMergeCells: TdxSpreadSheetMergeCells;
    dxBarButtonMergeCells: TdxBarButton;
    dxSpreadSheetUnmergeCells: TdxSpreadSheetUnmergeCells;
    dxBarButtonUnmergeCells: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxSpreadSheetInsertRows: TdxSpreadSheetInsertRows;
    dxBarButtonInsertSheetRows: TdxBarButton;
    dxSpreadSheetInsertColumns: TdxSpreadSheetInsertColumns;
    dxBarButtonInsertSheetColumns: TdxBarButton;
    dxSpreadSheetInsertSheet: TdxSpreadSheetInsertSheet;
    dxBarButtonInsertSheet: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxSpreadSheetDeleteRows: TdxSpreadSheetDeleteRows;
    dxBarButtonDeleteSheetRows: TdxBarButton;
    dxSpreadSheetDeleteColumns: TdxSpreadSheetDeleteColumns;
    dxBarButtonDeleteSheetColumns: TdxBarButton;
    dxSpreadSheetDeleteSheet: TdxSpreadSheetDeleteSheet;
    dxBarButtonDeleteSheet: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxSpreadSheetAutoFitRowHeight: TdxSpreadSheetAutoFitRowHeight;
    dxBarButtonAutoFitRowHeight: TdxBarButton;
    dxSpreadSheetAutoFitColumnWidth: TdxSpreadSheetAutoFitColumnWidth;
    dxBarButtonAutoFitColumnWidth: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxSpreadSheetHideRows: TdxSpreadSheetHideRows;
    dxBarButtonHideRows: TdxBarButton;
    dxSpreadSheetHideColumns: TdxSpreadSheetHideColumns;
    dxBarButtonHideColumns: TdxBarButton;
    dxSpreadSheetHideSheet: TdxSpreadSheetHideSheet;
    dxBarButtonHideSheet: TdxBarButton;
    dxSpreadSheetUnhideRows: TdxSpreadSheetUnhideRows;
    dxBarButtonUnhideRows: TdxBarButton;
    dxSpreadSheetUnhideColumns: TdxSpreadSheetUnhideColumns;
    dxBarButtonUnhideColumns: TdxBarButton;
    dxSpreadSheetUnhideSheet: TdxSpreadSheetUnhideSheet;
    dxBarButtonUnhideSheet: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxSpreadSheetClearAll: TdxSpreadSheetClearAll;
    dxBarButtonClearAll: TdxBarButton;
    dxSpreadSheetClearFormats: TdxSpreadSheetClearFormats;
    dxBarButtonClearFormats: TdxBarButton;
    dxSpreadSheetClearContents: TdxSpreadSheetClearContents;
    dxBarButtonClearContents: TdxBarButton;
    dxSpreadSheetUndo: TdxSpreadSheetUndo;
    dxBarButtonUndo: TdxBarButton;
    dxSpreadSheetRedo: TdxSpreadSheetRedo;
    dxBarButtonRedo: TdxBarButton;
    dxSpreadSheetFindAndReplace: TdxSpreadSheetFindAndReplace;
    dxBarButtonFindReplace: TdxBarButton;
    dxSpreadSheetZoomOut: TdxSpreadSheetZoomOut;
    dxBarButtonZoomOut: TdxBarButton;
    dxSpreadSheetZoomIn: TdxSpreadSheetZoomIn;
    dxBarButtonZoomIn: TdxBarButton;
    dxSpreadSheetZoomDefault: TdxSpreadSheetZoomDefault;
    dxBarButton100: TdxBarButton;
    Panel2: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    Panel3: TPanel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Excel_Principal: TExcel_Principal;

implementation

{$R *.dfm}
end.
