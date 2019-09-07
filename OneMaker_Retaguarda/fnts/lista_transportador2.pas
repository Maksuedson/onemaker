unit lista_transportador2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton, AdvReflectionImage, Vcl.Imaging.jpeg, dxGDIPlusClasses,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmlista_transportador2 = class(TForm)
    Panel1: TPanel;
    pnl1: TPanel;
    Label1: TLabel;
    lcliente: TLabel;
    Label6: TLabel;
    combo_relatorio: TComboBox;
    combo_transportador: TComboBox;
    combo_ordem: TComboBox;
    fxdesenhar: TfrxDesigner;
    fxtransportador: TfrxReport;
    fstransportador: TfrxDBDataset;
    qrtransportador: TZQuery;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrtransportadorCODIGO: TWideStringField;
    qrtransportadorNOME: TWideStringField;
    qrtransportadorENDERECO: TWideStringField;
    qrtransportadorBAIRRO: TWideStringField;
    qrtransportadorCIDADE: TWideStringField;
    qrtransportadorUF: TWideStringField;
    qrtransportadorCEP: TWideStringField;
    qrtransportadorCPF: TWideStringField;
    qrtransportadorRG: TWideStringField;
    qrtransportadorTELEFONE: TWideStringField;
    qrtransportadorCELULAR: TWideStringField;
    qrtransportadorPLACA: TWideStringField;
    qrtransportadorUFPLACA: TWideStringField;
    qrtransportadorOBS1: TWideStringField;
    qrtransportadorOBS2: TWideStringField;
    qrtransportadorOBS3: TWideStringField;
    dtfldDATA: TDateField;
    qrtransportadorTIPO: TIntegerField;
    qrtransportadorNUMERO: TWideStringField;
    qrtransportadorCOD_MUNICIPIO_IBGE: TWideStringField;
    qrtransportadorIBGE: TWideStringField;
    qrtransportadorANTT: TWideStringField;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_transportadorChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_transportador2: Tfrmlista_transportador2;
     const
   sc_DragMove = $f012;

implementation

uses modulo, principal, xloc_transportador;

{$R *.dfm}

procedure Tfrmlista_transportador2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_transportador2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_transportador.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;




end;

procedure Tfrmlista_transportador2.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_transportador2.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_transportador2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_transportador2.bimprimirClick(Sender: TObject);
var transportador, ordem: string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_transportador.Text = 'TODOS' then transportador := '' else begin transportador := ' and codIGO = ''' + copy(combo_transportador.text, 1, 6) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'TRANSPORTADOR: ' + COMBO_transportador.TEXT; end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    qrtransportador.close;
    qrtransportador.sql.clear;
    qrtransportador.sql.add('select * from c000010 where NOME IS NOT NULL ' + transportador + ' order by ' + COMBO_ORDEM.TEXT);
    qrtransportador.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE TRANSPORTADORES';
    FXtransportador.LoadFromFile('\OneMaker\server\rel\f000011.fr3');
    FXtransportador.ShowReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    qrtransportador.close;
    qrtransportador.sql.clear;
    qrtransportador.sql.add('select * from c000010 where NOME IS NOT NULL ' + transportador + ' order by ' + COMBO_ORDEM.TEXT);
    qrtransportador.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'FICHA CADASTRAL DE TRANSPORTADORES';
    FXtransportador.LoadFromFile('\OneMaker\server\rel\f000012.fr3');
    FXtransportador.ShowReport;
  end;

end;

procedure Tfrmlista_transportador2.combo_transportadorChange(Sender: TObject);
begin
  if combo_transportador.Text = 'SELECIONAR' then
  begin
    frmxloc_transportador := tfrmxloc_transportador.create(self);
    frmxloc_transportador.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_transportador.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_transportador.ItemIndex := combo_transportador.Items.Count - 1;
    end
    else
      COMBO_transportador.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_transportador2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXtransportador.LoadFromFile('\OneMaker\server\rel\f000011.fr3');
    FXtransportador.DesignReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    FXtransportador.LoadFromFile('\OneMaker\server\rel\f000012.fr3');
    FXtransportador.DesignReport;
  end;

end;

end.
