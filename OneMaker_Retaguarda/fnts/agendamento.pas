unit agendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScrollView, CustomGridViewControl, CustomGridView,
  GridView, ImgList, DB, Grids, DBGrids, DBGridView, Buttons, Collection,
  ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, Wwdbigrd,
  Wwdbgrid, Menus, DBCtrls, Mask, shellapi, AdvGlowButton, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit,
  cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxSchedulerPainter, cxSchedulerDBStorage, cxLocalization,
  cxClasses, AdvReflectionLabel, RzPanel, cxSchedulerTreeListBrowser, dxSkinOffice2013White,
  cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, dxPScxSchedulerLnk, dxPSActions, cxSchedulerActions,
  dxBar, dxRibbon, System.Actions, Vcl.ActnList, dxActions,
  cxSchedulerAgendaView, dxBarBuiltInMenu, cxImageList, dxPrinting;

type
  Tfrmagendamento = class(TForm)
    dsagenda: TDataSource;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    cxScheduler1: TcxScheduler;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    qrAgenda: TZQuery;
    dsagenda2: TDataSource;
    QRFUNC: TZQuery;
    dsfucnionarios: TDataSource;
    cxLocalizer1: TcxLocalizer;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    T1: TMenuItem;
    D1: TMenuItem;
    P1: TMenuItem;
    F1: TMenuItem;
    A1: TMenuItem;
    RzPanel2: TRzPanel;
    btneee14545: TAdvGlowButton;
    btn55dd: TAdvGlowButton;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    dxSchedulerNewEvent: TdxSchedulerNewEvent;
    dxRibbonTabHome: TdxRibbonTab;
    dxBarEvent: TdxBar;
    dxBarLargeButtonNewEvent: TdxBarLargeButton;
    dxSchedulerNewRecurringEvent: TdxSchedulerNewRecurringEvent;
    dxBarLargeButtonNewRecurringEvent: TdxBarLargeButton;
    dxSchedulerGoBackward: TdxSchedulerGoBackward;
    dxBarNavigation: TdxBar;
    dxBarLargeButtonGoBackward: TdxBarLargeButton;
    dxSchedulerGoForward: TdxSchedulerGoForward;
    dxBarLargeButtonGoForward: TdxBarLargeButton;
    dxSchedulerGoToToday: TdxSchedulerGoToToday;
    dxBarLargeButtonGotoToday: TdxBarLargeButton;
    dxSchedulerGoToDate: TdxSchedulerGoToDate;
    dxBarLargeButtonGotoDate: TdxBarLargeButton;
    dxSchedulerNextSevenDays: TdxSchedulerNextSevenDays;
    dxBarLargeButtonNext7Days: TdxBarLargeButton;
    dxSchedulerDayView: TdxSchedulerDayView;
    dxBarArrange: TdxBar;
    dxBarLargeButtonDay: TdxBarLargeButton;
    dxSchedulerWorkWeekView: TdxSchedulerWorkWeekView;
    dxBarLargeButtonWorkWeek: TdxBarLargeButton;
    dxSchedulerWeekView: TdxSchedulerWeekView;
    dxBarLargeButtonWeek: TdxBarLargeButton;
    dxSchedulerMonthView: TdxSchedulerMonthView;
    dxBarLargeButtonMonth: TdxBarLargeButton;
    dxSchedulerTimeGridView: TdxSchedulerTimeGridView;
    dxBarLargeButtonTimeline: TdxBarLargeButton;
    dxSchedulerYearView: TdxSchedulerYearView;
    dxBarLargeButtonYear: TdxBarLargeButton;
    dxSchedulerGanttView: TdxSchedulerGanttView;
    dxBarLargeButtonGanttView: TdxBarLargeButton;
    dxSchedulerGroupByNone: TdxSchedulerGroupByNone;
    dxBarGroupBy: TdxBar;
    dxBarLargeButtonGroupByNone: TdxBarLargeButton;
    dxSchedulerGroupByDate: TdxSchedulerGroupByDate;
    dxBarLargeButtonGroupByDate: TdxBarLargeButton;
    dxSchedulerGroupByResource: TdxSchedulerGroupByResource;
    dxBarLargeButtonGroupByResource: TdxBarLargeButton;
    dxRibbonTabView: TdxRibbonTab;
    dxBarTimeScale: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxSchedulerTimeScale60Minutes: TdxSchedulerTimeScale60Minutes;
    dxBarLargeButton60Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale30Minutes: TdxSchedulerTimeScale30Minutes;
    dxBarLargeButton30Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale15Minutes: TdxSchedulerTimeScale15Minutes;
    dxBarLargeButton15Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale10Minutes: TdxSchedulerTimeScale10Minutes;
    dxBarLargeButton10Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale6Minutes: TdxSchedulerTimeScale6Minutes;
    dxBarLargeButton6Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale5Minutes: TdxSchedulerTimeScale5Minutes;
    dxBarLargeButton5Minutes: TdxBarLargeButton;
    dxSchedulerCompressWeekends: TdxSchedulerCompressWeekends;
    dxBarLayout: TdxBar;
    dxBarLargeButtonCompressWeekends: TdxBarLargeButton;
    dxSchedulerWorkTimeOnly: TdxSchedulerWorkTimeOnly;
    dxBarLargeButtonWorkingHours: TdxBarLargeButton;
    dxSchedulerSnapEventsToTimeSlots: TdxSchedulerSnapEventsToTimeSlots;
    dxBarLargeButtonSnapEventsToTimeSlots: TdxBarLargeButton;
    dxSchedulerDateNavigator: TdxSchedulerDateNavigator;
    dxBarLargeButtonDateNavigator: TdxBarLargeButton;
    dxSchedulerResourcesLayoutEditor: TdxSchedulerResourcesLayoutEditor;
    dxBarLargeButtonResourcesLayoutEditor: TdxBarLargeButton;
    dxSchedulerShowPrintForm: TdxSchedulerShowPrintForm;
    dxRibbonTabFile: TdxRibbonTab;
    dxBarPrint: TdxBar;
    dxBarLargeButtonPrint: TdxBarLargeButton;
    dxSchedulerShowPrintPreviewForm: TdxSchedulerShowPrintPreviewForm;
    dxBarLargeButtonPrintPreview: TdxBarLargeButton;
    dxSchedulerShowPageSetupForm: TdxSchedulerShowPageSetupForm;
    dxBarLargeButtonPageSetup: TdxBarLargeButton;
    qrAgendaID: TIntegerField;
    qrAgendaRESOURCEID: TIntegerField;
    qrAgendaPARENTID: TIntegerField;
    qrAgendaCAPTION: TWideStringField;
    qrAgendaSTART_AGE: TDateField;
    qrAgendaFINISH: TDateField;
    qrAgendaSTATE: TIntegerField;
    qrAgendaACTUALFINISH: TIntegerField;
    qrAgendaACTUALSTART: TIntegerField;
    qrAgendaEVENTTYPE: TIntegerField;
    qrAgendaLABELCOLOR: TIntegerField;
    qrAgendaLOCATION: TWideStringField;
    qrAgendaMESSAGEM: TWideStringField;
    qrAgendaOPTIONS: TIntegerField;
    qrAgendaRECURRENCEINDEX: TIntegerField;
    qrAgendaRECURRENCEINFO: TWideMemoField;
    qrAgendaREMINDERDATE: TDateField;
    qrAgendaREMINDERMINUTESBEFORESTART: TIntegerField;
    qrAgendaREMINDERRESOURCESDATA: TWideMemoField;
    qrAgendaTASKCOMPLETEFIELD: TIntegerField;
    qrAgendaTASKINDEXFIELD: TIntegerField;
    qrAgendaTASKLINKSFIELD: TWideMemoField;
    qrAgendaTASKSTATUSFIELD: TIntegerField;
    qrAgendaGROUPID: TIntegerField;
    QRFUNCCODIGO: TWideStringField;
    QRFUNCNOME: TWideStringField;
    QRFUNCENDERECO: TWideStringField;
    QRFUNCBAIRRO: TWideStringField;
    QRFUNCCIDADE: TWideStringField;
    QRFUNCUF: TWideStringField;
    QRFUNCCEP: TWideStringField;
    QRFUNCTELEFONE: TWideStringField;
    QRFUNCCELULAR: TWideStringField;
    QRFUNCEMAIL: TWideStringField;
    QRFUNCCPF: TWideStringField;
    QRFUNCRG: TWideStringField;
    QRFUNCCTPS: TWideStringField;
    QRFUNCFUNCAO: TWideStringField;
    QRFUNCDATA_ADMISSAO: TDateField;
    QRFUNCDATA_DEMISSAO: TDateField;
    QRFUNCSITUACAO: TIntegerField;
    QRFUNCSALARIO: TFloatField;
    QRFUNCCOMISSAO: TFloatField;
    QRFUNCOBS1: TWideStringField;
    QRFUNCOBS2: TWideStringField;
    QRFUNCOBS3: TWideStringField;
    QRFUNCNASCIMENTO: TDateField;
    QRFUNCF_CAIXA: TIntegerField;
    QRFUNCF_VENDEDOR: TIntegerField;
    QRFUNCF_TECNICO: TIntegerField;
    QRFUNCNUMERO: TWideStringField;
    QRFUNCSENHA: TWideStringField;
    QRFUNCATIVA: TWideStringField;
    QRFUNCCODFILIAL: TWideStringField;
    QRFUNCCODLOCAL: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure T1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmagendamento: Tfrmagendamento;

implementation

uses modulo, agenda_ficha, principal;

{$R *.dfm}

procedure Tfrmagendamento.FormShow(Sender: TObject);
begin

  frmmodulo.qrAgenda.close;
  frmmodulo.qrAgenda.sql.clear;
  frmmodulo.qrAgenda.sql.add('select * from c000034 order by nome');
  frmmodulo.qrAgenda.open;
  frmmodulo.qrAgenda.first;
  qrAgenda.open;
  // Nao mostrar o usuario Producao
  QRFUNC.close;
  QRFUNC.sql.clear;
  //QRFUNC.sql.add('select * from C000008 where codigo <> ''000001''');
  QRFUNC.sql.add('select * from C000008 order by nome');
  QRFUNC.open;
end;

procedure Tfrmagendamento.P1Click(Sender: TObject);
begin
  frmmodulo.qrAgenda.close;
  frmmodulo.qrAgenda.sql.clear;
  frmmodulo.qrAgenda.sql.add('select * from c000034 order by nome');
  frmmodulo.qrAgenda.open;
  frmmodulo.qrAgenda.first;
  qrAgenda.open;

  QRFUNC.close;
  QRFUNC.sql.clear;
  QRFUNC.sql.add('select * from C000008 where codigo = :codigo');
  QRFUNC.ParamByName('codigo').AsString:= frmPrincipal.zerarcodigo(IntToStr(frmPrincipal.iCloud.CurrentUser.UserID),6);
  QRFUNC.open;
end;

procedure Tfrmagendamento.T1Click(Sender: TObject);
begin
  cxScheduler1.ViewGantt.Active := True;
end;

procedure Tfrmagendamento.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmagendamento.D1Click(Sender: TObject);
begin
  cxScheduler1.ViewDay.Active := True;
  cxScheduler1.SelectDays(now, now, True);
end;

procedure Tfrmagendamento.F1Click(Sender: TObject);
begin
  QRFUNC.close;
  QRFUNC.sql.clear;
  QRFUNC.sql.add('select * from C000008');
  QRFUNC.open;
end;

procedure Tfrmagendamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with frmmodulo do
  begin
    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from C000007');
    qrcliente.open;
  end;
  frmmodulo.Conexao.Commit;
  //Action := caFree;
  //frmagenda := freeandnil;
end;

procedure Tfrmagendamento.A1Click(Sender: TObject);
begin
  cxScheduler1.CreateEventUsingDialog();
end;

end.
