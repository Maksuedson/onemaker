unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ComCtrls, ExtCtrls, StdCtrls, RzPanel, Mask,
  RzEdit, DB, MemDS, DBAccess, NxColumns, NxColumnClasses,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, ACBrBase, ACBrBAL,
  Menus, registry, ACBrDevice, WinXP,
  AdvOfficeImage, AdvOfficeStatusBar, sSkinManager, AdvPanel,
  AdvSmoothTouchKeyBoard, AdvTouchKeyboard, AdvReflectionImage,
  Datasnap.DBClient, AdvSmoothPanel, AdvSmoothExpanderPanel,
  AdvSmoothExpanderButtonPanel,
  AdvFocusHelper, AdvMetroButton, dxGDIPlusClasses, TFlatHintUnit, Vcl.Buttons, cyBaseSpeedButton, cySpeedButton, Uni,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, CurvyControls,
  Vcl.Grids, Vcl.DBGrids, acPNG, ResizeKit, AdvReflectionLabel;

type
  TfrmPrincipal = class(TForm)
    PopupMenu1: TPopupMenu;
    Comanda1: TMenuItem;
    N1: TMenuItem;
    Consumo1: TMenuItem;
    N2: TMenuItem;
    Balana1: TMenuItem;
    N3: TMenuItem;
    Mess1: TMenuItem;
    timer_mesa_aberta: TTimer;
    wnxp1: TWinXP;
    SaveDialog1: TSaveDialog;
    AdvPanel1: TAdvPanel;
    AdvPanel5: TAdvPanel;
    AdvPanel6: TAdvPanel;
    Panel19: TPanel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    imgVerde: TAdvOfficeImage;
    imgLar: TAdvOfficeImage;
    imgVerm: TAdvOfficeImage;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    C1: TMenuItem;
    Label5: TLabel;
    S1: TMenuItem;
    bt_comanda: TAdvGlowButton;
    AdvSmoothExpanderPanel3: TAdvSmoothExpanderPanel;
    grid: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    NxTextColumn11: TNxTextColumn;
    NxTextColumn12: TNxTextColumn;
    NxTextColumn13: TNxTextColumn;
    NxTextColumn14: TNxTextColumn;
    NxTextColumn15: TNxTextColumn;
    NxTextColumn16: TNxTextColumn;
    NxTextColumn17: TNxTextColumn;
    NxTextColumn18: TNxTextColumn;
    NxTextColumn19: TNxTextColumn;
    NxTextColumn20: TNxTextColumn;
    NxTextColumn21: TNxTextColumn;
    NxTextColumn22: TNxTextColumn;
    NxTextColumn23: TNxTextColumn;
    NxTextColumn24: TNxTextColumn;
    NxTextColumn25: TNxTextColumn;
    NxTextColumn26: TNxTextColumn;
    NxTextColumn27: TNxTextColumn;
    NxTextColumn28: TNxTextColumn;
    NxTextColumn29: TNxTextColumn;
    FlatHint1: TFlatHint;
    query: TUniQuery;
    qrmesa_aberta: TUniQuery;
    qrbuffer: TUniQuery;
    qrapoio: TUniQuery;
    qrConsumo: TUniQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    bt_mesa_001: TAdvGlowButton;
    AdvGlowButton239: TAdvGlowButton;
    AdvGlowButton238: TAdvGlowButton;
    AdvGlowButton237: TAdvGlowButton;
    AdvGlowButton236: TAdvGlowButton;
    AdvGlowButton235: TAdvGlowButton;
    AdvGlowButton234: TAdvGlowButton;
    AdvGlowButton233: TAdvGlowButton;
    AdvGlowButton232: TAdvGlowButton;
    AdvGlowButton231: TAdvGlowButton;
    AdvGlowButton230: TAdvGlowButton;
    AdvGlowButton229: TAdvGlowButton;
    AdvGlowButton228: TAdvGlowButton;
    AdvGlowButton227: TAdvGlowButton;
    AdvGlowButton226: TAdvGlowButton;
    AdvGlowButton210: TAdvGlowButton;
    AdvGlowButton209: TAdvGlowButton;
    AdvGlowButton208: TAdvGlowButton;
    AdvGlowButton207: TAdvGlowButton;
    AdvGlowButton206: TAdvGlowButton;
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
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton15: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton18: TAdvGlowButton;
    AdvGlowButton19: TAdvGlowButton;
    AdvGlowButton20: TAdvGlowButton;
    AdvSmoothPanel2: TAdvSmoothPanel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    AdvSmoothExpanderPanel11: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel12: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel13: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel14: TAdvSmoothExpanderPanel;
    lb_mesa: TLabel;
    AdvSmoothExpanderPanel15: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel16: TAdvSmoothExpanderPanel;
    lb_funci: TLabel;
    AdvSmoothExpanderPanel23: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel24: TAdvSmoothExpanderPanel;
    AdvSmoothExpanderPanel25: TAdvSmoothExpanderPanel;
    lb_data: TLabel;
    AdvSmoothExpanderPanel26: TAdvSmoothExpanderPanel;
    lb_hora: TLabel;
    pn_consumo: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    ed_produto_codigo: TEdit;
    ed_produto_nome: TEdit;
    ed_qtde: TRzNumericEdit;
    ed_unidade: TEdit;
    ed_unitario: TRzNumericEdit;
    ed_total: TRzNumericEdit;
    bt_gravar_consumo: TAdvGlowButton;
    Image1: TImage;
    Image3: TImage;
    pn_mesa: TRzPanel;
    bt_consumo: TAdvGlowButton;
    bt_cancelar: TAdvGlowButton;
    Label6: TLabel;
    Label7: TLabel;
    ResizeKit1: TResizeKit;
    bt_balanca: TAdvGlowButton;
    AdvGlowButton21: TAdvGlowButton;
    AdvGlowButton22: TAdvGlowButton;
    AdvGlowButton23: TAdvGlowButton;
    AdvGlowButton24: TAdvGlowButton;
    AdvGlowButton25: TAdvGlowButton;
    AdvGlowButton26: TAdvGlowButton;
    AdvGlowButton27: TAdvGlowButton;
    AdvGlowButton28: TAdvGlowButton;
    AdvGlowButton29: TAdvGlowButton;
    AdvGlowButton30: TAdvGlowButton;
    AdvGlowButton31: TAdvGlowButton;
    AdvGlowButton32: TAdvGlowButton;
    AdvGlowButton33: TAdvGlowButton;
    AdvGlowButton34: TAdvGlowButton;
    AdvGlowButton35: TAdvGlowButton;
    AdvGlowButton36: TAdvGlowButton;
    AdvGlowButton37: TAdvGlowButton;
    AdvGlowButton38: TAdvGlowButton;
    AdvGlowButton39: TAdvGlowButton;
    AdvGlowButton40: TAdvGlowButton;
    AdvGlowButton41: TAdvGlowButton;
    AdvGlowButton42: TAdvGlowButton;
    AdvGlowButton43: TAdvGlowButton;
    AdvGlowButton44: TAdvGlowButton;
    AdvGlowButton45: TAdvGlowButton;
    AdvGlowButton46: TAdvGlowButton;
    AdvGlowButton47: TAdvGlowButton;
    AdvGlowButton48: TAdvGlowButton;
    AdvGlowButton49: TAdvGlowButton;
    AdvGlowButton50: TAdvGlowButton;
    AdvGlowButton51: TAdvGlowButton;
    AdvGlowButton52: TAdvGlowButton;
    AdvGlowButton53: TAdvGlowButton;
    AdvGlowButton54: TAdvGlowButton;
    AdvGlowButton55: TAdvGlowButton;
    AdvGlowButton56: TAdvGlowButton;
    AdvGlowButton57: TAdvGlowButton;
    AdvGlowButton58: TAdvGlowButton;
    AdvGlowButton59: TAdvGlowButton;
    AdvGlowButton60: TAdvGlowButton;
    AdvGlowButton61: TAdvGlowButton;
    AdvGlowButton62: TAdvGlowButton;
    AdvGlowButton63: TAdvGlowButton;
    AdvGlowButton64: TAdvGlowButton;
    AdvGlowButton65: TAdvGlowButton;
    AdvGlowButton66: TAdvGlowButton;
    AdvGlowButton67: TAdvGlowButton;
    AdvGlowButton68: TAdvGlowButton;
    AdvGlowButton69: TAdvGlowButton;
    AdvGlowButton70: TAdvGlowButton;
    AdvGlowButton71: TAdvGlowButton;
    AdvGlowButton72: TAdvGlowButton;
    AdvGlowButton73: TAdvGlowButton;
    AdvGlowButton74: TAdvGlowButton;
    AdvGlowButton75: TAdvGlowButton;
    AdvGlowButton76: TAdvGlowButton;
    AdvGlowButton77: TAdvGlowButton;
    AdvGlowButton78: TAdvGlowButton;
    AdvGlowButton80: TAdvGlowButton;
    AdvGlowButton81: TAdvGlowButton;
    AdvGlowButton82: TAdvGlowButton;
    AdvGlowButton83: TAdvGlowButton;
    AdvGlowButton84: TAdvGlowButton;
    AdvGlowButton85: TAdvGlowButton;
    AdvGlowButton86: TAdvGlowButton;
    AdvGlowButton87: TAdvGlowButton;
    AdvGlowButton88: TAdvGlowButton;
    AdvGlowButton89: TAdvGlowButton;
    AdvGlowButton90: TAdvGlowButton;
    AdvGlowButton91: TAdvGlowButton;
    AdvGlowButton92: TAdvGlowButton;
    AdvGlowButton93: TAdvGlowButton;
    AdvGlowButton94: TAdvGlowButton;
    AdvGlowButton95: TAdvGlowButton;
    AdvGlowButton96: TAdvGlowButton;
    AdvGlowButton97: TAdvGlowButton;
    AdvGlowButton98: TAdvGlowButton;
    AdvGlowButton99: TAdvGlowButton;
    AdvGlowButton100: TAdvGlowButton;
    AdvGlowButton79: TAdvGlowButton;
    AdvGlowButton102: TAdvGlowButton;
    AdvGlowButton103: TAdvGlowButton;
    AdvGlowButton104: TAdvGlowButton;
    AdvGlowButton105: TAdvGlowButton;
    AdvGlowButton106: TAdvGlowButton;
    AdvGlowButton107: TAdvGlowButton;
    AdvGlowButton108: TAdvGlowButton;
    AdvGlowButton109: TAdvGlowButton;
    AdvGlowButton110: TAdvGlowButton;
    AdvGlowButton111: TAdvGlowButton;
    AdvGlowButton112: TAdvGlowButton;
    AdvGlowButton113: TAdvGlowButton;
    AdvGlowButton114: TAdvGlowButton;
    AdvGlowButton115: TAdvGlowButton;
    AdvGlowButton116: TAdvGlowButton;
    AdvGlowButton117: TAdvGlowButton;
    AdvGlowButton118: TAdvGlowButton;
    AdvGlowButton119: TAdvGlowButton;
    AdvGlowButton120: TAdvGlowButton;
    AdvGlowButton121: TAdvGlowButton;
    AdvGlowButton122: TAdvGlowButton;
    AdvGlowButton123: TAdvGlowButton;
    AdvGlowButton124: TAdvGlowButton;
    AdvGlowButton125: TAdvGlowButton;
    AdvGlowButton126: TAdvGlowButton;
    AdvGlowButton127: TAdvGlowButton;
    AdvGlowButton128: TAdvGlowButton;
    AdvGlowButton129: TAdvGlowButton;
    AdvGlowButton130: TAdvGlowButton;
    AdvGlowButton131: TAdvGlowButton;
    AdvGlowButton132: TAdvGlowButton;
    AdvGlowButton133: TAdvGlowButton;
    AdvGlowButton134: TAdvGlowButton;
    AdvGlowButton135: TAdvGlowButton;
    AdvGlowButton136: TAdvGlowButton;
    AdvGlowButton137: TAdvGlowButton;
    AdvGlowButton138: TAdvGlowButton;
    AdvGlowButton139: TAdvGlowButton;
    AdvGlowButton140: TAdvGlowButton;
    AdvGlowButton141: TAdvGlowButton;
    AdvGlowButton142: TAdvGlowButton;
    AdvGlowButton143: TAdvGlowButton;
    AdvGlowButton144: TAdvGlowButton;
    AdvGlowButton145: TAdvGlowButton;
    AdvGlowButton146: TAdvGlowButton;
    AdvGlowButton147: TAdvGlowButton;
    AdvGlowButton148: TAdvGlowButton;
    AdvGlowButton149: TAdvGlowButton;
    AdvGlowButton150: TAdvGlowButton;
    AdvGlowButton151: TAdvGlowButton;
    AdvGlowButton152: TAdvGlowButton;
    AdvGlowButton153: TAdvGlowButton;
    AdvGlowButton154: TAdvGlowButton;
    AdvGlowButton155: TAdvGlowButton;
    AdvGlowButton156: TAdvGlowButton;
    AdvGlowButton157: TAdvGlowButton;
    AdvGlowButton158: TAdvGlowButton;
    AdvGlowButton159: TAdvGlowButton;
    AdvGlowButton160: TAdvGlowButton;
    AdvGlowButton161: TAdvGlowButton;
    AdvGlowButton101: TAdvGlowButton;
    AdvGlowButton162: TAdvGlowButton;
    AdvGlowButton163: TAdvGlowButton;
    AdvGlowButton164: TAdvGlowButton;
    AdvGlowButton165: TAdvGlowButton;
    AdvGlowButton166: TAdvGlowButton;
    AdvGlowButton167: TAdvGlowButton;
    AdvGlowButton168: TAdvGlowButton;
    AdvGlowButton169: TAdvGlowButton;
    AdvGlowButton170: TAdvGlowButton;
    AdvGlowButton171: TAdvGlowButton;
    AdvGlowButton172: TAdvGlowButton;
    AdvGlowButton173: TAdvGlowButton;
    AdvGlowButton174: TAdvGlowButton;
    AdvGlowButton175: TAdvGlowButton;
    AdvGlowButton176: TAdvGlowButton;
    AdvGlowButton177: TAdvGlowButton;
    AdvGlowButton178: TAdvGlowButton;
    AdvGlowButton179: TAdvGlowButton;
    AdvGlowButton180: TAdvGlowButton;
    AdvGlowButton181: TAdvGlowButton;
    AdvGlowButton182: TAdvGlowButton;
    AdvGlowButton183: TAdvGlowButton;
    AdvGlowButton184: TAdvGlowButton;
    AdvGlowButton185: TAdvGlowButton;
    AdvGlowButton186: TAdvGlowButton;
    AdvGlowButton187: TAdvGlowButton;
    AdvGlowButton188: TAdvGlowButton;
    AdvGlowButton189: TAdvGlowButton;
    AdvGlowButton190: TAdvGlowButton;
    AdvGlowButton191: TAdvGlowButton;
    AdvGlowButton192: TAdvGlowButton;
    AdvGlowButton193: TAdvGlowButton;
    AdvGlowButton194: TAdvGlowButton;
    AdvGlowButton195: TAdvGlowButton;
    AdvGlowButton196: TAdvGlowButton;
    AdvGlowButton197: TAdvGlowButton;
    AdvGlowButton198: TAdvGlowButton;
    AdvGlowButton199: TAdvGlowButton;
    AdvGlowButton200: TAdvGlowButton;
    AdvGlowButton201: TAdvGlowButton;
    AdvGlowButton202: TAdvGlowButton;
    AdvGlowButton203: TAdvGlowButton;
    AdvGlowButton204: TAdvGlowButton;
    AdvGlowButton205: TAdvGlowButton;
    AdvGlowButton211: TAdvGlowButton;
    AdvGlowButton212: TAdvGlowButton;
    AdvGlowButton213: TAdvGlowButton;
    AdvGlowButton214: TAdvGlowButton;
    AdvGlowButton215: TAdvGlowButton;
    AdvGlowButton216: TAdvGlowButton;
    AdvGlowButton217: TAdvGlowButton;
    AdvGlowButton218: TAdvGlowButton;
    AdvGlowButton219: TAdvGlowButton;
    AdvGlowButton220: TAdvGlowButton;
    AdvGlowButton221: TAdvGlowButton;
    AdvGlowButton222: TAdvGlowButton;
    AdvGlowButton223: TAdvGlowButton;
    AdvGlowButton224: TAdvGlowButton;
    AdvGlowButton225: TAdvGlowButton;
    Label2: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    ed_total_comanda: TRzNumericEdit;
    Image2: TImage;
    procedure bt_comandaClick(Sender: TObject);
    procedure bt_mesa_001Click(Sender: TObject);
    procedure pg_principalChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure bt_consumoClick(Sender: TObject);
    procedure ed_produto_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeExit(Sender: TObject);
    procedure bt_gravar_consumoClick(Sender: TObject);
    procedure Mess1Click(Sender: TObject);
    procedure Consumo1Click(Sender: TObject);
    procedure bt_balancaClick(Sender: TObject);
    procedure Balana1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure ed_produto_codigoEnter(Sender: TObject);
    procedure ed_qtdeEnter(Sender: TObject);
    procedure timer_mesa_abertaTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure cySpeedButton1Click(Sender: TObject);
    procedure bt_impressaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure desmarca();
    procedure localiza_mesa(mesa: Integer);
    function somenteNumero(sNum: string): string;
    function zerarcodigo(codigo: string; Qtde: Integer): string;

  end;

var
  frmPrincipal: TfrmPrincipal;
  resultado_pesquisa: string;
  sFunci, snome_funci: string;

  bContinua_mesa: boolean;
  // flag para verificar se foi efetivado o lancado da mesa
  sMesa_Numero: string;

implementation

uses comanda, Modulo, mesa_consumo, loc_produto, balanca, mesa_abertura,
  Unit_ativar;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.desmarca();
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TAdvGlowButton) then
    begin
      if TAdvGlowButton(Components[i]).Down then
      begin
        TAdvGlowButton(Components[i]).Picture := imgVerde.Picture;
        TAdvGlowButton(Components[i]).Refresh;
      end;
    end;

  pn_consumo.Enabled := false;
  lb_data.Caption := '';
  lb_hora.Caption := '';
  lb_mesa.Caption := '';
  ed_total_comanda.value := 0;
  pn_mesa.Enabled := false;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.localiza_mesa(mesa: Integer);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TAdvGlowButton) then
    begin
      if TAdvGlowButton(Components[i]).Tag = mesa then
      begin
        TAdvGlowButton(Components[i]).Appearance.ColorCheckedTo := $0078C7FE;
        TAdvGlowButton(Components[i]).Appearance.ColorChecked := $00B5DBFB;
        TAdvGlowButton(Components[i]).Appearance.ColorMirrorChecked :=
          $009FEBFD;
        TAdvGlowButton(Components[i]).Appearance.ColorMirrorCheckedTo :=
          $0056B4FE;
        TAdvGlowButton(Components[i]).Down := true;
        TAdvGlowButton(Components[i]).Refresh;
        break;
      end;
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_comandaClick(Sender: TObject);
var
  bparar: boolean;
  i, x: Integer;

  sMesa: string;
begin
  desmarca;
  bContinua_mesa := false;
  frmComanda := tfrmComanda.create(self);
  frmComanda.showmodal;
  if bContinua_mesa then
  begin
    if strtoint(lb_mesa.Caption) < 117 then
    begin
      sMesa := lb_mesa.Caption;
      desmarca;
      lb_mesa.Caption := sMesa;

      // verificar se a mesa já estah aberta
      query.close;
      query.sql.clear;
      query.sql.add('select * from r000001');
      query.sql.add('where codigo = ' + inttostr(strtoint(lb_mesa.Caption)));
      query.open;
      if query.RecordCount > 0 then
      begin
        lb_data.Caption := query.fieldbyname('data').asstring;
        lb_hora.Caption := query.fieldbyname('hora').asstring;

        qrConsumo.close;
        qrConsumo.sql.clear;
        qrConsumo.sql.add('select sum(total) as soma from r000002');
        qrConsumo.sql.add('where cod_mesa = ' +
          inttostr(strtoint(lb_mesa.Caption)));
        qrConsumo.sql.add('and cancelado = 0');
        qrConsumo.open;
        ed_total_comanda.value := qrConsumo.fieldbyname('soma').asfloat;
      end
      else
      begin
        bContinua_mesa := false;
        sFunci := '';
        snome_funci := '';
        frmmesa_abertura := tfrmmesa_abertura.create(self);
        frmmesa_abertura.lb_mesa.Caption := TAdvGlowButton(Sender).Caption;
        frmmesa_abertura.showmodal;

        if bContinua_mesa then
        begin
          // lancar a data e hora
          lb_funci.Caption := snome_funci;
          lb_mesa.Caption := TAdvGlowButton(Sender).Caption;
          lb_data.Caption := DateToStr(date);
          lb_hora.Caption := TimeToStr(time);
          ed_total_comanda.value := 0;
          frmmodulo.st_Mesa_Abertura.close;
          frmmodulo.st_Mesa_Abertura.ParamByName('codigo').asinteger :=
            strtoint(sMesa);
          frmmodulo.st_Mesa_Abertura.ParamByName('data').asdatetime := date;
          frmmodulo.st_Mesa_Abertura.ParamByName('hora').asstring :=
            TimeToStr(time);
          frmmodulo.st_Mesa_Abertura.ParamByName('cod_funcionario').asstring
            := sFunci;
          frmmodulo.st_Mesa_Abertura.Prepare;
          frmmodulo.st_Mesa_Abertura.Execute;
        end
        else
        begin
          desmarca;
          TAdvGlowButton(Sender).Down := false;
          exit;
        end;
      end;
      localiza_mesa(strtoint(lb_mesa.Caption));

    end
    else
    begin
      bparar := false;

      for i := 0 to 9 do
      begin
        for x := 0 to 12 do
        begin
          if grid.Cell[x, i].asstring <> '' then
          begin
            if grid.Cell[x, i].asstring = lb_mesa.Caption then
            begin
              bparar := true;
              break;
            end;
          end
          else
          begin
            bparar := true;
            grid.Cell[x, i].asstring := lb_mesa.Caption;
            break;
          end;
        end;
        if bparar then
          break;
      end;
    end;
    pn_consumo.Enabled := true;
    pn_mesa.Enabled := true;
    ed_produto_codigo.setfocus;
  end
  else
  begin
    lb_funci.Caption := '';
    lb_mesa.Caption := '';
    lb_data.Caption := '';
    lb_hora.Caption := '';
    ed_total_comanda.value := 0;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_mesa_001Click(Sender: TObject);
begin
  desmarca;
  TAdvGlowButton(Sender).Picture := imgVerm.Picture;
  TAdvGlowButton(Sender).Refresh;

  lb_funci.caption := '';
  lb_mesa.caption := '';
  lb_data.Caption := '';
  lb_hora.caption := '';
  ed_total_comanda.value := 0;


  // verificar se a mesa já estah aberta
  query.close;
  query.sql.clear;
  query.sql.add('select * from r000001');
  query.sql.add('where codigo = '+inttostr(strtoint(TAdvGlowButton(sender).Caption)));
  query.open;
  if query.RecordCount > 0 then
  begin
    lb_mesa.caption := TAdvGlowButton(sender).Caption;
    lb_data.Caption := query.fieldbyname('data').asstring;
    lb_hora.caption := query.fieldbyname('hora').asstring;

    qrapoio.close;
    qrapoio.sql.clear;
    qrapoio.sql.add('select nome from c000008 where codigo = '''+query.fieldbyname('cod_funcionario').asstring+'''');
    qrapoio.open;

    lb_funci.Caption := qrapoio.fieldbyname('nome').asstring;

    qrconsumo.close;
    qrconsumo.sql.clear;
    qrconsumo.sql.add('select sum(total) as soma from r000002');
    qrconsumo.sql.add('where cod_mesa = '+inttostr(strtoint(TAdvGlowButton(sender).Caption)));
    qrconsumo.sql.add('and cancelado = 0');
    qrconsumo.open;
    ed_total_comanda.value := qrconsumo.fieldbyname('soma').asfloat;
  end
  else
  begin

    bContinua_mesa := false;
    sFunci := '';
    snome_funci := '';
    frmmesa_abertura := tfrmmesa_abertura.create(self);
    frmmesa_abertura.lb_mesa.Caption := TAdvGlowButton(sender).Caption;
    frmmesa_abertura.showmodal;

    if bContinua_mesa then
    begin
     // lancar a data e hora
      lb_funci.caption := snome_funci;
      lb_mesa.caption := TAdvGlowButton(sender).Caption;
      lb_data.Caption := DateToStr(date);
      lb_hora.caption := TimeToStr(time);
      ed_total_comanda.value := 0;
      frmmodulo.st_Mesa_Abertura.close;
      frmmodulo.st_Mesa_Abertura.ParamByName('codigo').asinteger := strtoint(TAdvGlowButton(sender).Caption);
      frmmodulo.st_Mesa_Abertura.parambyname('data').asdatetime := date;
      frmmodulo.st_Mesa_Abertura.parambyname('hora').asstring := timetostr(time);
      frmmodulo.st_mesa_abertura.parambyname('cod_funcionario').asstring := sFunci;
      frmmodulo.st_Mesa_Abertura.Prepare;
      frmmodulo.st_Mesa_Abertura.Execute;
    end
    else
    begin
      desmarca;
      TAdvGlowButton(sender).Down := false;
      exit;
    end;
  end;

  TAdvGlowButton(sender).Down := true;
  ed_produto_codigo.Text := '';
  ed_produto_nome.text := '';
  ed_qtde.value := 0;
  ed_unitario.value := 0;
  ed_total.value := 0;
  ed_unidade.text := '';
  pn_consumo.Enabled := true;
  pn_mesa.Enabled := true;


  ed_produto_codigo.setfocus;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  DataHora: TDateTime;
  str: string;
  SR: TSearchRec;
  i: Integer;
  Origem, Destino: string;

begin

  // comanda integrada
  // nova
  If Not frmmodulo.cdsComandas.Active Then
    // Verifica se o DataSet está ativo
    frmmodulo.cdsComandas.open // Caso esteja fechado
  else
  begin
    frmmodulo.cdsComandas.Insert; // Cria um novo registro

  end;

  begin
    try
      frmmodulo.cdsComandas.fieldbyname('ID_COMANDA').asstring :=
        'W0' + lb_mesa.Caption;
      frmmodulo.cdsComandas.fieldbyname('EVENTO').asstring := 'C';
      // Pega a data atual da maquina
      frmmodulo.cdsComandas.MergeChangeLog;

      // Atualiza o ParamsLog e a linha de dados, não cria uma nova.
      frmmodulo.cdsComandas.Post; // Confirma as modificações no DatSet

    except // Caso Aconteça algum erro exibe mensagem ao usuário

    end;
  end;

  DataHora := time; // armazena a data e hora corrente
  str := somenteNumero(FormatDateTime('ddddd', date));
  // salva no servisdor
  // \\25.3.49.50\OneMaker\PDV\XML
  if (frmmodulo.Conexao.Server <> 'localhost') and
    (frmmodulo.Conexao.Server <> '') and
    (frmmodulo.Conexao.Server <> '127.0.0.1') then
  begin
    showmessage('É estacao');
    frmmodulo.cdsComandas.SaveToFile('\\' + frmmodulo.Conexao.Server +
      '\OneMaker\PDV\XML\W0' + lb_mesa.Caption + str + '.xml');
  end;
  // copia de backup teste de um mes
  frmmodulo.cdsComandas.SaveToFile('C:\OneMaker\PDV\XML\W0' + lb_mesa.Caption +
    str + '.xml');
  // copia de backup teste de um mes
  if DirectoryExists('C:\Arquivos de programas\Emulador EC\XML\') then
    frmmodulo.cdsComandas.SaveToFile
      ('C:\Arquivos de programas\Emulador EC\XML\W0' + lb_mesa.Caption + str +
      '.xml'); // tava faltando aki q mancada

  frmmodulo.cdsComandas.close;
  frmmodulo.cdsComandas.CreateDataSet;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.pg_principalChange(Sender: TObject);
begin
  desmarca;
end;

procedure TfrmPrincipal.S1Click(Sender: TObject);
begin
  close
end;

function TfrmPrincipal.somenteNumero(sNum: string): string;
var
  S1, S2: string;
  i: Integer;
begin
  S1 := sNum;
  S2 := '';
  for i := 1 to Length(S1) do
    if S1[i] in ['0' .. '9'] then
      S2 := S2 + S1[i];
  result := S2;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  i, x: Integer;
  bparar: boolean;
  Registro: TRegistry;
begin

  //Image1.Picture.LoadFromFile('c:\OneMaker\server\img\fundocomanda.jpg');
  // Abrindo Registro do Windows para buscar configuracoes
  Registro := TRegistry.create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;

  if Registro.OpenKey('SOFTWARE', false) then
  begin
    if Registro.OpenKey('S7', false) then
    begin
      if Registro.OpenKey('PDV', false) then
      begin
        (* ************* BANCO DE DADOS ************ *)
        if Registro.OpenKey('Dados', false) then
        begin
          // criando o forumulario de dados
          frmmodulo := TfrmModulo.create(self);
          try

            frmmodulo.Conexao.Connected := false;
            frmmodulo.Conexao.Server := Registro.ReadString('Servidor_Host');
            frmmodulo.Conexao.Database := Registro.ReadString('Servidor_Base');
            frmmodulo.Conexao.Connected := true;
          except
            application.messagebox
              (PWideChar('Não foi possível conectar ao banco de dados!' + #13 +
              'Caminho: ' + Registro.ReadString('Local_Base') + #13 +
              ' O sistema será finalizado!'), 'Erro', mb_ok + mb_iconerror);
            application.Terminate;
            exit;
          end;

        end
        else
        begin
          application.messagebox
            ('Houve falha na leitura do resgistro do banco de dados!' +
            ' O sistema será finalizado!', 'Erro', mb_ok + mb_iconerror);
          application.Terminate;
          exit;
        end;
        Registro.CloseKey;
        Registro.OpenKey('SOFTWARE', false);
        Registro.OpenKey('S7', false);
        Registro.OpenKey('PDV', false);
        (* ************** BALANCA ***************** *)
        if Registro.OpenKey('Balanca', false) then
        begin
          frmmodulo.balanca.Desativar;
          frmmodulo.balanca.Ativo := false;
          // Modelos --> 0 --> Nenhum , 1 --> Filizola, 2 --> Toledo
          IF strtoint(Registro.ReadString('Modelo')) <> 0 THEN
          BEGIN

            frmmodulo.balanca.Modelo :=
              TACBrBALModelo(strtoint(Registro.ReadString('Modelo')));
            frmmodulo.balanca.Device.HandShake :=
              TACBrHandShake(strtoint(Registro.ReadString('Handshaking')));
            frmmodulo.balanca.Device.Parity :=
              TACBrSerialParity(strtoint(Registro.ReadString('Parity')));
            frmmodulo.balanca.Device.Stop :=
              TACBrSerialStop(strtoint(Registro.ReadString('Stopbits')));
            frmmodulo.balanca.Device.Porta := Registro.ReadString('Porta');
            frmmodulo.balanca.Device.data :=
              strtoint(Registro.ReadString('Databits'));
            frmmodulo.balanca.Device.Baud :=
              strtoint(Registro.ReadString('Baudrate'));
            ibal_time := strtoint(Registro.ReadString('Timeout'));

          END;
        end
        else
        begin
          application.messagebox
            ('Houve falha na leitura do resgistro da Balança!' +
            ' Favor contactar o suporte!', 'Erro', mb_ok + mb_iconerror);
        end;
        Registro.CloseKey;
        (* ************ Final balanca *********** *)
      end
      else
      begin
        application.messagebox('Houve falha na leitura do resgistro do PDV!' +
          ' Favor contactar o suporte!', 'Erro', mb_ok + mb_iconerror);
      end;

    end
    else
    begin
      application.messagebox
        ('Houve falha na leitura do registro de configurações!' +
        ' Favor contactar o suporte!', 'Erro', mb_ok + mb_iconerror);
      application.Terminate;
    end;
  end
  else
  begin
    application.messagebox
      ('Houve falha na leitura do registro de configurações!' +
      ' Favor contactar o suporte!', 'Erro', mb_ok + mb_iconerror);
    application.Terminate;
  end;

  Caption := Caption + '   Servidor: ' + frmmodulo.Conexao.Server;

  grid.ClearRows;
  grid.AddRow(10);

  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TAdvGlowButton) then
    begin
      TAdvGlowButton(Components[i]).Down := false;
    end;

  // limpar o buffer de mesas jah encerradas
  query.close;
  query.sql.clear;
  query.sql.add('delete from r000003');
  query.execsql;

  // lancando as mesas em aberto
  query.close;
  query.sql.clear;
  query.sql.add('select * from r000001');
  query.sql.add('order by codigo');
  query.open;
  query.first;

  while not query.eof do
  begin
    if query.fieldbyname('codigo').asinteger < 117 then
    begin
      for i := 0 to ComponentCount - 1 do
        if (Components[i] is TAdvGlowButton) then
        begin
          if TAdvGlowButton(Components[i]).Tag = query.fieldbyname('codigo').asinteger
          then
          begin
            // TAdvGlowButton(Components[i]).Down := true;
            TAdvGlowButton(Components[i]).Picture := imgVerm.Picture;
          end;
        end;
    end
    else
    begin
      bparar := false;
      for i := 0 to 9 do
      begin
        for x := 0 to 12 do
        begin
          if grid.Cell[x, i].asstring = '' then
          begin
            grid.Cell[x, i].asstring := query.fieldbyname('codigo').asstring;
            bparar := true;
            break;
          end;
        end;
        if bparar then
          break;
      end;
    end;
    query.next;
  END;

  timer_mesa_aberta.Enabled := true;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.gridCellClick(Sender: TObject; ACol, ARow: Integer);
begin
  desmarca;

  if grid.Cell[ACol, ARow].asstring <> '' then
  begin
    lb_mesa.Caption := grid.Cell[ACol, ARow].asstring;
    // verificar se a mesa já estah aberta
    query.close;
    query.sql.clear;
    query.sql.add('select * from r000001');
    query.sql.add('where codigo = ' + inttostr(strtoint(grid.Cell[ACol,
      ARow].asstring)));
    query.open;
    if query.RecordCount > 0 then
    begin
      lb_data.Caption := query.fieldbyname('data').asstring;
      lb_hora.Caption := query.fieldbyname('hora').asstring;

      qrConsumo.close;
      qrConsumo.sql.clear;
      qrConsumo.sql.add('select sum(total) as soma from r000002');
      qrConsumo.sql.add('where cod_mesa = ' + inttostr(strtoint(grid.Cell[ACol,
        ARow].asstring)));
      qrConsumo.sql.add('and cancelado = 0');
      qrConsumo.open;
      ed_total_comanda.value := qrConsumo.fieldbyname('soma').asfloat;
      ed_produto_codigo.Text := '';
      pn_consumo.Enabled := true;
      pn_mesa.Enabled := true;
      ed_produto_codigo.setfocus;
    END;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_consumoClick(Sender: TObject);
var
  i: Integer;
begin
  timer_mesa_aberta.Enabled := false;

  qrConsumo.close;
  qrConsumo.sql.clear;
  qrConsumo.sql.add('select R000002.*, C000025.produto, C000025.unidade');
  qrConsumo.sql.add('from r000002, c000025');
  qrConsumo.sql.add('where r000002.cod_produto = c000025.codigo');
  qrConsumo.sql.add('and R000002.cod_mesa = ' +
    inttostr(strtoint(lb_mesa.Caption)));
  qrConsumo.sql.add('order by codigo');
  qrConsumo.open;
  qrConsumo.first;

  frmMesa_consumo := tfrmMesa_consumo.create(self);
  frmMesa_consumo.grid_consumo.ClearRows;

  while not qrConsumo.eof do
  begin
    i := frmMesa_consumo.grid_consumo.AddRow(1);
    frmMesa_consumo.grid_consumo.Cell[0, i].asinteger :=
      qrConsumo.fieldbyname('codigo').asinteger;
    frmMesa_consumo.grid_consumo.Cell[2, i].asstring :=
      qrConsumo.fieldbyname('cod_produto').asstring;
    frmMesa_consumo.grid_consumo.Cell[3, i].asstring :=
      qrConsumo.fieldbyname('produto').asstring;
    frmMesa_consumo.grid_consumo.Cell[4, i].asfloat :=
      qrConsumo.fieldbyname('qtde').asfloat;
    frmMesa_consumo.grid_consumo.Cell[5, i].asfloat :=
      qrConsumo.fieldbyname('unitario').asfloat;
    frmMesa_consumo.grid_consumo.Cell[6, i].asfloat :=
      qrConsumo.fieldbyname('total').asfloat;
    frmMesa_consumo.grid_consumo.Cell[7, i].asstring :=
      qrConsumo.fieldbyname('complemento').asstring;
    frmMesa_consumo.grid_consumo.Cell[8, i].asinteger :=
      qrConsumo.fieldbyname('cancelado').asinteger;
    qrConsumo.next;
  end;

  frmMesa_consumo.lb_mesa.Caption := lb_mesa.Caption;
  frmMesa_consumo.lb_data.Caption := lb_data.Caption;
  frmMesa_consumo.lb_hora.Caption := lb_hora.Caption;
  frmMesa_consumo.ed_total_comanda.value := ed_total_comanda.value;

  frmMesa_consumo.showmodal;

  timer_mesa_aberta.Enabled := true;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_produto_codigoKeyPress(Sender: TObject;
  var Key: Char);
var
  iloc: Integer;
  i: Integer;
  s: string;

begin
  if Key = #13 then
  begin
    if ed_produto_codigo.Text <> '' then
    begin
      iloc := 1;
      // localizar por codigo
      s := ed_produto_codigo.Text;

      while Length(s) < 6 do
        s := '0' + s;
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000025 where codigo = ''' + s + '''');
      query.open;
      if query.RecordCount = 0 then
      begin
        // codigo de barras
        query.close;
        query.sql.clear;
        query.sql.add('select * from c000025 where codbarra = ''' +
          ed_produto_codigo.Text + '''');
        query.open;
        if query.RecordCount = 0 then
        begin
          query.close;
          query.sql.clear;
          query.sql.add('select * from c000025 where upper(produto) like ''' +
            ansiuppercase(ed_produto_codigo.Text) + '%''');
          query.open;
          if query.RecordCount > 1 then
            iloc := 0;
        end
        else
          iloc := 2;
      end;

      if query.RecordCount = 0 then
      begin
        application.messagebox('Produto não encontrado!', 'Erro',
          mb_ok + mb_iconerror);
        ed_produto_codigo.Text := '';
        ed_produto_nome.Text := '';
        ed_qtde.value := 0.00;
        ed_unitario.value := 0.00;
        ed_total.value := 0.00;
        ed_unidade.Text := 'UN';
        ed_produto_codigo.setfocus;
        exit;
      end
      else
      begin
        if query.RecordCount = 1 then
        begin
          ed_produto_codigo.Text := query.fieldbyname('codigo').asstring;
          ed_produto_nome.Text := query.fieldbyname('produto').asstring;
          ed_qtde.value := 1;
          ed_unitario.value := query.fieldbyname('precovenda').asfloat;
          ed_total.value := query.fieldbyname('precovenda').asfloat;
          ed_unidade.Text := query.fieldbyname('unidade').asstring;
          //gp_qtde.Enabled := true;
          bt_gravar_consumo.Enabled := true;
          ed_qtde.setfocus;

        end
        else
        begin
          // localizar
          resultado_pesquisa := '';
          frmLoc_produto := tfrmLoc_produto.create(self);
          frmLoc_produto.cb_loc.ItemIndex := iloc;
          frmLoc_produto.grid.ClearRows;
          query.first;
          while not query.eof do
          begin
            i := frmLoc_produto.grid.AddRow(1);
            frmLoc_produto.grid.Cell[0, i].asstring :=
              query.fieldbyname('codigo').asstring;
            frmLoc_produto.grid.Cell[1, i].asstring :=
              query.fieldbyname('codbarra').asstring;
            frmLoc_produto.grid.Cell[2, i].asstring :=
              query.fieldbyname('produto').asstring;
            frmLoc_produto.grid.Cell[3, i].asstring :=
              query.fieldbyname('unidade').asstring;
            frmLoc_produto.grid.Cell[4, i].asfloat :=
              query.fieldbyname('precovenda').asfloat;
            query.next;
          end;
          frmLoc_produto.showmodal;

          if resultado_pesquisa <> '' then
          begin
            ed_produto_codigo.Text := resultado_pesquisa;
            query.close;
            query.sql.clear;
            query.sql.add('select * from c000025 where codigo = ''' +
              ed_produto_codigo.Text + '''');
            query.open;
            ed_produto_nome.Text := query.fieldbyname('produto').asstring;
            ed_qtde.value := 1;
            ed_unitario.value := query.fieldbyname('precovenda').asfloat;
            ed_total.value := query.fieldbyname('precovenda').asfloat;
            ed_unidade.Text := query.fieldbyname('unidade').asstring;
            //gp_qtde.Enabled := true;
            bt_gravar_consumo.Enabled := true;
            ed_qtde.setfocus;
          end
          else
          begin
            ed_produto_codigo.Text := '';
            ed_produto_nome.Text := '';
            ed_qtde.value := 0.00;
            ed_unitario.value := 0.00;
            ed_total.value := 0.00;
            ed_unidade.Text := 'UN';
            ed_produto_codigo.setfocus;
          end;
        end;
      end;
    end
    else
    begin
      // localizar
      resultado_pesquisa := '';
      frmLoc_produto := tfrmLoc_produto.create(self);
      frmLoc_produto.grid.ClearRows;
      frmLoc_produto.showmodal;

      if resultado_pesquisa <> '' then
      begin
        ed_produto_codigo.Text := resultado_pesquisa;
        query.close;
        query.sql.clear;
        query.sql.add('select * from c000025 where codigo = ''' +
          ed_produto_codigo.Text + '''');
        query.open;
        ed_produto_nome.Text := query.fieldbyname('produto').asstring;
        ed_qtde.value := 1;
        ed_unitario.value := query.fieldbyname('precovenda').asfloat;
        ed_total.value := query.fieldbyname('precovenda').asfloat;
        ed_unidade.Text := query.fieldbyname('unidade').asstring;
        //gp_qtde.Enabled := true;
        bt_gravar_consumo.Enabled := true;
        ed_qtde.setfocus;
      end
      else
      begin
        ed_produto_codigo.Text := '';
        ed_produto_nome.Text := '';
        ed_qtde.value := 0.00;
        ed_unitario.value := 0.00;
        ed_total.value := 0.00;
        ed_unidade.Text := 'UN';
        ed_produto_codigo.setfocus;
      end;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_qtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    bt_gravar_consumo.setfocus;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_qtdeExit(Sender: TObject);
begin
  bt_balanca.Enabled := false;

  ed_total.value := ed_qtde.value * ed_unitario.value;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_gravar_consumoClick(Sender: TObject);
begin

  if ed_produto_codigo.Text = '' then
    exit;
  if ed_qtde.value <= 0 then
    exit;


  // lancar no banco de dados

  frmmodulo.st_consumo.close;
  frmmodulo.st_consumo.ParamByName('cod_mesa').asinteger :=
    strtoint(lb_mesa.Caption);
  frmmodulo.st_consumo.ParamByName('cod_produto').asstring :=
    ed_produto_codigo.Text;
  frmmodulo.st_consumo.ParamByName('qtde').asfloat := ed_qtde.value;
  frmmodulo.st_consumo.ParamByName('unitario').asfloat := ed_unitario.value;
  frmmodulo.st_consumo.ParamByName('total').asfloat := ed_total.value;
  frmmodulo.st_consumo.Prepare;
  frmmodulo.st_consumo.Execute;

  ed_total_comanda.value := ed_total_comanda.value + ed_total.value;

  ed_produto_codigo.Text := '';
  ed_produto_nome.Text := '';
  ed_qtde.value := 0;
  ed_unitario.value := 0;
  ed_total.value := 0;

  //gp_qtde.Enabled := false;
  bt_gravar_consumo.Enabled := false;
  ed_produto_codigo.setfocus;

  Button1Click(self);

end;

procedure TfrmPrincipal.bt_impressaoClick(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Mess1Click(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.C1Click(Sender: TObject);
begin
  // localizar
  resultado_pesquisa := '';
  frmLoc_produto := tfrmLoc_produto.create(self);
  frmLoc_produto.grid.ClearRows;
  frmLoc_produto.showmodal;
  resultado_pesquisa := '';
end;

procedure TfrmPrincipal.Consumo1Click(Sender: TObject);
begin
  if bt_consumo.Enabled then
    bt_consumoClick(frmPrincipal);
end;

procedure TfrmPrincipal.cySpeedButton1Click(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_balancaClick(Sender: TObject);
begin
  frmBalanca := tfrmBalanca.create(self);
  frmBalanca.showmodal;

  ed_qtdeExit(frmPrincipal);

  bt_gravar_consumo.setfocus;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvMetroButton1Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmPrincipal.AdvMetroButton2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.Balana1Click(Sender: TObject);
begin
  if bt_balanca.Enabled then
    bt_balancaClick(frmPrincipal);
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Confirma o encerramento do sistema?', 'Aviso',
    mb_yesno + MB_ICONWARNING) = idNo then
  begin
    abort;
  end
  else
  begin
    action := cafree;
  end;
    frmmodulo.Destroy;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.bt_cancelarClick(Sender: TObject);
var
  DataHora: TDateTime;
  str: string;
  SR: TSearchRec;
  i: Integer;
  Origem, Destino: string;
begin

  qrConsumo.close;
  qrConsumo.sql.clear;
  qrConsumo.sql.add('select R000002.*, C000025.produto, C000025.unidade');
  qrConsumo.sql.add('from r000002, c000025');
  qrConsumo.sql.add('where r000002.cod_produto = c000025.codigo');
  qrConsumo.sql.add('and R000002.cod_mesa = ' +
    inttostr(strtoint(lb_mesa.Caption)));
  qrConsumo.sql.add('order by codigo');
  qrConsumo.open;
  qrConsumo.first;

  if qrConsumo.RecordCount > 0 then
  begin
    application.messagebox('Esta mesa possue consumo!' + #13 +
      'Faça o cancelamento dos itens e posteriormente emita o seu cupom fiscal!',
      'Atenção', mb_ok + mb_iconerror);
    exit;
  end;

  if application.messagebox('Confirma o cancelamento desta mesa?', 'Atenção',
    mb_yesno + mb_iconwarning) = idYes then
  begin
    query.close;
    query.sql.clear;
    query.sql.add('delete from r000001 where codigo = ' +
      inttostr(strtoint(lb_mesa.Caption)));
    query.execsql;

    // comanda integrada
    // nova
    If Not frmmodulo.cdsComandas.Active Then
      // Verifica se o DataSet está ativo
      frmmodulo.cdsComandas.open // Caso esteja fechado
    else
    begin
      frmmodulo.cdsComandas.Insert; // Cria um novo registro

    end;

    begin
      try
        frmmodulo.cdsComandas.fieldbyname('ID_COMANDA').asstring :=
          'W0' + lb_mesa.Caption;
        frmmodulo.cdsComandas.fieldbyname('EVENTO').asstring := 'L';
        // Pega a data atual da maquina
        frmmodulo.cdsComandas.MergeChangeLog;

        // Atualiza o ParamsLog e a linha de dados, não cria uma nova.
        frmmodulo.cdsComandas.Post; // Confirma as modificações no DatSet

      except // Caso Aconteça algum erro exibe mensagem ao usuário

      end;
    end;

    DataHora := time; // armazena a data e hora corrente
    str := somenteNumero(FormatDateTime('ddddd', date));
    // salva no servisdor
    // \\25.3.49.50\OneMaker\PDV\XML
    if (frmmodulo.Conexao.Server <> 'localhost') and
      (frmmodulo.Conexao.Server <> '') and
      (frmmodulo.Conexao.Server <> '127.0.0.1') then
    begin
      showmessage('É estacao');
      frmmodulo.cdsComandas.SaveToFile('\\' + frmmodulo.Conexao.Server +
        '\OneMaker\PDV\XML\W0' + lb_mesa.Caption + str + '.xml');
    end;
    // copia de backup teste de um mes
    frmmodulo.cdsComandas.SaveToFile('C:\OneMaker\PDV\XML\W0' + lb_mesa.Caption +
      str + '.xml');
    if DirectoryExists('C:\Arquivos de programas\Emulador EC\XML\') then
      frmmodulo.cdsComandas.SaveToFile
        ('C:\Arquivos de programas\Emulador EC\XML\W0' + lb_mesa.Caption + str
        + '.xml');
    frmmodulo.cdsComandas.close;
    frmmodulo.cdsComandas.CreateDataSet;

    desmarca;

    frmPrincipal.FormShow(frmPrincipal);

  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_produto_codigoEnter(Sender: TObject);
begin
  bt_balanca.Enabled := false;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_qtdeEnter(Sender: TObject);
begin
  bt_balanca.Enabled := true;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.timer_mesa_abertaTimer(Sender: TObject);
var
  i, x: Integer;
  bparar: boolean;

begin
  grid.ClearRows;
  grid.ClearRows;
  grid.AddRow(10);

  timer_mesa_aberta.Enabled := false;

  // lancando as mesas em aberto
  qrmesa_aberta.close;
  qrmesa_aberta.sql.clear;
  qrmesa_aberta.sql.add('select * from r000001');
  qrmesa_aberta.sql.add('order by codigo');
  qrmesa_aberta.open;
  qrmesa_aberta.first;

  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TAdvGlowButton) then
    begin
      // TAdvGlowButton(Components[i]).Down := false;
      if TAdvGlowButton(Components[i]).Tag <> 99 then
        TAdvGlowButton(Components[i]).Picture := imgVerde.Picture;
    end;

  while not qrmesa_aberta.eof do
  begin
    if qrmesa_aberta.fieldbyname('codigo').asinteger < 117 then
    begin
      for i := 0 to ComponentCount - 1 do
        if (Components[i] is TAdvGlowButton) then
        begin
          if TAdvGlowButton(Components[i]).Tag = qrmesa_aberta.fieldbyname
            ('codigo').asinteger then
          begin
            if TAdvGlowButton(Components[i]).Tag <> 99 then
              TAdvGlowButton(Components[i]).Picture := imgVerm.Picture;
          end;
        end;
    end
    else
    begin
      bparar := false;

      for i := 0 to 9 do
      begin
        for x := 0 to 12 do
        begin
          if grid.Cell[x, i].asstring = '' then
          begin
            grid.Cell[x, i].asstring := qrmesa_aberta.fieldbyname
              ('codigo').asstring;
            bparar := true;
            break;
          end;
        end;
        if bparar then
          break;
      end;
    end;

    qrmesa_aberta.next;
  end;

  timer_mesa_aberta.Enabled := true;

end;

function TfrmPrincipal.zerarcodigo(codigo: string; Qtde: Integer): string;
begin
  while Length(codigo) < Qtde do
    codigo := '0' + codigo;
  result := codigo;
end;

end.
