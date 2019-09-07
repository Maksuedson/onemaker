unit lista_fornecedor2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton, AdvReflectionImage, Vcl.Imaging.jpeg,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExControls,
  JvAnimatedImage, JvGIFCtrl, dxGDIPlusClasses;

type
  Tfrmlista_fornecedor2 = class(TForm)
    Panel1: TPanel;
    fxdesenhar: TfrxDesigner;
    fxfornecedor: TfrxReport;
    fsfornecedor: TfrxDBDataset;
    qrfornecedor: TZQuery;
    qrfornecedorpessoa: TStringField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrfornecedorCODIGO: TWideStringField;
    qrfornecedorNOME: TWideStringField;
    qrfornecedorFANTASIA: TWideStringField;
    qrfornecedorENDERECO: TWideStringField;
    qrfornecedorBAIRRO: TWideStringField;
    qrfornecedorCIDADE: TWideStringField;
    qrfornecedorUF: TWideStringField;
    qrfornecedorCEP: TWideStringField;
    qrfornecedorCOMPLEMENTO: TWideStringField;
    qrfornecedorTELEFONE1: TWideStringField;
    qrfornecedorTELEFONE2: TWideStringField;
    qrfornecedorFAX: TWideStringField;
    qrfornecedorCONTATO1: TWideStringField;
    qrfornecedorCONTATO2: TWideStringField;
    qrfornecedorCELULAR1: TWideStringField;
    qrfornecedorCELULAR2: TWideStringField;
    qrfornecedorEMAIL: TWideStringField;
    qrfornecedorHOMEPAGE: TWideStringField;
    qrfornecedorCNPJ: TWideStringField;
    qrfornecedorIE: TWideStringField;
    qrfornecedorBANCO: TWideStringField;
    qrfornecedorAGENCIA: TWideStringField;
    qrfornecedorCONTA: TWideStringField;
    qrfornecedorOBS1: TWideStringField;
    qrfornecedorOBS2: TWideStringField;
    qrfornecedorOBS3: TWideStringField;
    dtfldDATA: TDateField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorASSISTENCIA_TECNICA: TIntegerField;
    qrfornecedorNUMERO: TWideStringField;
    qrfornecedorIM: TWideStringField;
    qrfornecedorREP_NOME: TWideStringField;
    qrfornecedorREP_TELEFONE: TWideStringField;
    qrfornecedorREP_ENDERECO: TWideStringField;
    qrfornecedorREP_BAIRRO: TWideStringField;
    qrfornecedorREP_COMPLEMENTO: TWideStringField;
    qrfornecedorREP_CIDADE: TWideStringField;
    qrfornecedorREP_UF: TWideStringField;
    qrfornecedorREP_CEP: TWideStringField;
    qrfornecedorREP_TELEFONE1: TWideStringField;
    qrfornecedorREP_TELEFONE2: TWideStringField;
    qrfornecedorREP_TELEFONE3: TWideStringField;
    qrfornecedorREP_FAX: TWideStringField;
    qrfornecedorREP_CNPJ: TWideStringField;
    qrfornecedorREP_IE: TWideStringField;
    qrfornecedorREP_HOME_PAGE: TWideStringField;
    qrfornecedorREP_EMAIL: TWideStringField;
    qrfornecedorCNAE: TWideStringField;
    qrfornecedorCOD_MUNICIPIO_IBGE: TWideStringField;
    qrfornecedorIBGE: TWideStringField;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Label1: TLabel;
    lcliente: TLabel;
    Label6: TLabel;
    combo_ordem: TComboBox;
    combo_FORNECEDOR: TComboBox;
    combo_relatorio: TComboBox;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_FORNECEDORChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrfornecedorCalcFields(DataSet: TDataSet);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_fornecedor2: Tfrmlista_fornecedor2;
    const
   sc_DragMove = $f012;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor;

{$R *.dfm}

procedure Tfrmlista_fornecedor2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_fornecedor2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_FORNECEDOR.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;




end;

procedure Tfrmlista_fornecedor2.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_fornecedor2.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_fornecedor2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_fornecedor2.bimprimirClick(Sender: TObject);
var FORNECEDOR, ordem: string;
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

  if combo_FORNECEDOR.Text = 'TODOS' then FORNECEDOR := '' else begin FORNECEDOR := ' and codIGO = ''' + copy(combo_FORNECEDOR.text, 1, 6) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'FORNECEDOR: ' + COMBO_FORNECEDOR.TEXT; end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    qrFORNECEDOR.close;
    qrFORNECEDOR.sql.clear;
    qrFORNECEDOR.sql.add('select * from c000009 where NOME IS NOT NULL ' + FORNECEDOR + ' order by ' + COMBO_ORDEM.TEXT);
    qrFORNECEDOR.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE FORNECEDORES';
    FXFORNECEDOR.LoadFromFile('\OneMaker\server\rel\f000009.fr3');
    FXFORNECEDOR.ShowReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    qrFORNECEDOR.close;
    qrFORNECEDOR.sql.clear;
    qrFORNECEDOR.sql.add('select * from c000009 where NOME IS NOT NULL ' + FORNECEDOR + ' order by ' + COMBO_ORDEM.TEXT);
    qrFORNECEDOR.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'FICHA CADASTRAL DE FORNECEDORES';
    FXFORNECEDOR.LoadFromFile('\OneMaker\server\rel\f000010.fr3');
    FXFORNECEDOR.ShowReport;
  end;
  frmPrincipal.logUC('Abriu Relatorio Fornecedor - ' + frmPrincipal.RemoveAcentos(combo_relatorio.Text), 0);

end;

procedure Tfrmlista_fornecedor2.combo_FORNECEDORChange(Sender: TObject);
begin
  if combo_Fornecedor.Text = 'SELECIONAR' then
  begin
    frmxloc_Fornecedor := tfrmxloc_Fornecedor.create(self);
    frmxloc_Fornecedor.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_Fornecedor.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_Fornecedor.ItemIndex := combo_Fornecedor.Items.Count - 1;
    end
    else
      COMBO_Fornecedor.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_fornecedor2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXFORNECEDOR.LoadFromFile('\OneMaker\server\rel\f000009.fr3');
    FXFORNECEDOR.DesignReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    FXFORNECEDOR.LoadFromFile('\OneMaker\server\rel\f000010.fr3');
    FXFORNECEDOR.DesignReport;
  end;

end;

procedure Tfrmlista_fornecedor2.qrfornecedorCalcFields(DataSet: TDataSet);
begin
  if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

end.
