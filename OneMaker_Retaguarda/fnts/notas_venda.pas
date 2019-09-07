unit notas_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, ImgList, StdCtrls, Mask,
  ExtCtrls, TFlatPanelUnit, Collection, Buttons, Wwkeycb, Menus,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBGrids, Wwdatsrc,
  DBCtrls, PageView, AdvToolBar, AdvGlowButton, RzEdit, RzBtnEdt, RzDBEdit,
  AdvMenus, AdvMenuStylers, UCBase, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, System.ImageList, JvToolEdit,
  JvExMask, JvBaseEdits;

type
  Tfrmnotas_venda = class(TForm)
    dsvenda: TDataSource;
    PopupMenu1: TPopupMenu;
    N2aVia1: TMenuItem;
    CancelarVenda1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    Filtro1: TMenuItem;
    QUERY: TZQuery;
    dsproduto_mov: TwwDataSource;
    qrproduto_mov: TZQuery;
    qrproduto: TZQuery;
    qrproduto_movcodbarra: TStringField;
    Query1: TZQuery;
    Visualizar1: TMenuItem;
    Panel1: TPanel;
    bcancelar: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    bcupomfiscal: TAdvGlowMenuButton;
    tab_principal: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    BFILTRO: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    ecliente: TRzButtonEdit;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    ENUMERO: TEdit;
    Label21: TLabel;
    wwDBGrid2: TwwDBGrid;
    Panel2: TPanel;
    Bevel5: TBevel;
    Bevel4: TBevel;
    Label4: TLabel;
    Bevel3: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Bevel6: TBevel;
    Panel5: TPanel;
    Bevel8: TBevel;
    AdvGlowButton1: TAdvGlowButton;
    Label12: TLabel;
    lqtde_cupom: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    qrcliente2: TZQuery;
    DBText1: TDBText;
    FlatPanel1: TFlatPanel;
    Label9: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    menu_tabelas_fiscais: TAdvPopupMenu;
    ModelosdeNotasFiscais1: TMenuItem;
    CFOP1: TMenuItem;
    ClassesdeRecolhimento1: TMenuItem;
    N1: TMenuItem;
    MemorandodeExportao1: TMenuItem;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    N2: TMenuItem;
    Suprimento1: TMenuItem;
    Sangria1: TMenuItem;
    Bevel13: TBevel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    Label8: TLabel;
    Label11: TLabel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    Label13: TLabel;
    RzDBNumericEdit3: TRzDBNumericEdit;
    Label14: TLabel;
    RzDBNumericEdit4: TRzDBNumericEdit;
    Label16: TLabel;
    RzDBNumericEdit5: TRzDBNumericEdit;
    Label7: TLabel;
    RzDBNumericEdit6: TRzDBNumericEdit;
    Label19: TLabel;
    RzDBNumericEdit7: TRzDBNumericEdit;
    Bevel7: TBevel;
    FlatPanel2: TFlatPanel;
    Bevel14: TBevel;
    ltotal: TJvCalcEdit;
    lqtde: TJvCalcEdit;
    Label32: TLabel;
    RzDBNumericEdit15: TRzDBNumericEdit;
    RzDBNumericEdit16: TRzDBNumericEdit;
    RzDBNumericEdit17: TRzDBNumericEdit;
    RzDBNumericEdit18: TRzDBNumericEdit;
    Label33: TLabel;
    Cliente1: TMenuItem;
    N3: TMenuItem;
    BaixarInformaesdaECFDownloadMFD1: TMenuItem;
    Panel6: TPanel;
    Label34: TLabel;
    DBText2: TDBText;
    Bevel9: TBevel;
    Panel7: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    RzDBNumericEdit19: TRzDBNumericEdit;
    RzDBNumericEdit20: TRzDBNumericEdit;
    RzDBNumericEdit21: TRzDBNumericEdit;
    RzDBNumericEdit22: TRzDBNumericEdit;
    RzDBNumericEdit23: TRzDBNumericEdit;
    RzDBNumericEdit24: TRzDBNumericEdit;
    RzDBNumericEdit25: TRzDBNumericEdit;
    RzDBNumericEdit26: TRzDBNumericEdit;
    N4: TMenuItem;
    ProgramaTotalizardeRecebimento1: TMenuItem;
    Label25: TLabel;
    combo_situacao: TComboBox;
    ImageList1: TImageList;
    bcancel: TButton;
    FecharCNFV1: TMenuItem;
    AdvGlowButton2: TAdvGlowButton;
    Imprimir1: TMenuItem;
    E1: TMenuItem;
    qrproduto_movCODPRODUTO: TWideStringField;
    UCControls1: TUCControls;
    qrcliente2CODIGO: TWideStringField;
    qrcliente2NOME: TWideStringField;
    qrcliente2APELIDO: TWideStringField;
    qrcliente2ENDERECO: TWideStringField;
    qrcliente2BAIRRO: TWideStringField;
    qrcliente2CIDADE: TWideStringField;
    qrcliente2UF: TWideStringField;
    qrcliente2CEP: TWideStringField;
    qrcliente2COMPLEMENTO: TWideStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TWideStringField;
    qrcliente2TELEFONE2: TWideStringField;
    qrcliente2TELEFONE3: TWideStringField;
    qrcliente2CELULAR: TWideStringField;
    qrcliente2EMAIL: TWideStringField;
    qrcliente2RG: TWideStringField;
    qrcliente2CPF: TWideStringField;
    qrcliente2FILIACAO: TWideStringField;
    qrcliente2ESTADOCIVIL: TWideStringField;
    qrcliente2CONJUGE: TWideStringField;
    qrcliente2PROFISSAO: TWideStringField;
    qrcliente2EMPRESA: TWideStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TWideStringField;
    qrcliente2REF2: TWideStringField;
    qrcliente2CODVENDEDOR: TWideStringField;
    dtfldqrcliente2DATA_CADASTRO: TDateField;
    dtfldqrcliente2DATA_ULTIMACOMPRA: TDateField;
    qrcliente2OBS1: TWideStringField;
    qrcliente2OBS2: TWideStringField;
    qrcliente2OBS3: TWideStringField;
    qrcliente2OBS4: TWideStringField;
    qrcliente2OBS5: TWideStringField;
    qrcliente2OBS6: TWideStringField;
    qrcliente2NASCIMENTO: TWideStringField;
    qrcliente2CODREGIAO: TWideStringField;
    qrcliente2CODCONVENIO: TWideStringField;
    qrcliente2CODUSUARIO: TWideStringField;
    qrcliente2NUMERO: TWideStringField;
    qrcliente2RG_ORGAO: TWideStringField;
    qrcliente2RG_ESTADO: TWideStringField;
    dtfldqrcliente2RG_EMISSAO: TDateField;
    qrcliente2SEXO: TWideStringField;
    qrcliente2HISTORICO: TBlobField;
    dtfldqrcliente2PREVISAO: TDateField;
    qrcliente2CNAE: TWideStringField;
    qrcliente2COD_MUNICIPIO_IBGE: TWideStringField;
    qrcliente2IBGE: TWideStringField;
    qrcliente2TAMANHO_CALCA: TWideStringField;
    qrcliente2TAMANHO_BLUSA: TWideStringField;
    qrcliente2TAMANHO_SAPATO: TWideStringField;
    qrcliente2CORRESP_ENDERECO: TWideStringField;
    qrcliente2CORRESP_BAIRRO: TWideStringField;
    qrcliente2CORRESP_CIDADE: TWideStringField;
    qrcliente2CORRESP_UF: TWideStringField;
    qrcliente2CORRESP_CEP: TWideStringField;
    qrcliente2CORRESP_COMPLEMENTO: TWideStringField;
    qrcliente2RG_PRODUTOR: TWideStringField;
    qrcliente2RESP1_NOME: TWideStringField;
    qrcliente2RESP1_CPF: TWideStringField;
    qrcliente2RESP1_RG: TWideStringField;
    qrcliente2RESP1_PROFISSAO: TWideStringField;
    qrcliente2RESP1_ESTADO_CIVIL: TWideStringField;
    qrcliente2RESP1_ENDERECO: TWideStringField;
    qrcliente2RESP1_BAIRRO: TWideStringField;
    qrcliente2RESP1_CIDADE: TWideStringField;
    qrcliente2RESP1_UF: TWideStringField;
    qrcliente2RESP1_CEP: TWideStringField;
    qrcliente2RESP2_NOME: TWideStringField;
    qrcliente2RESP2_CPF: TWideStringField;
    qrcliente2RESP2_RG: TWideStringField;
    qrcliente2RESP2_PROFISSAO: TWideStringField;
    qrcliente2RESP2_ESTADO_CIVIL: TWideStringField;
    qrcliente2RESP2_ENDERECO: TWideStringField;
    qrcliente2RESP2_BAIRRO: TWideStringField;
    qrcliente2RESP2_CIDADE: TWideStringField;
    qrcliente2RESP2_UF: TWideStringField;
    qrcliente2RESP2_CEP: TWideStringField;
    qrcliente2FOTO: TWideStringField;
    qrcliente2CONDPGTO: TWideStringField;
    qrproduto_movCODIGO: TWideStringField;
    qrproduto_movCODNOTA: TWideStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TWideStringField;
    dtfld_movDATA: TDateField;
    qrproduto_movNUMERONOTA: TWideStringField;
    qrproduto_movCODCLIENTE: TWideStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODVENDEDOR: TWideStringField;
    qrproduto_movCODGRADE: TWideStringField;
    qrproduto_movSERIAL: TWideStringField;
    qrproduto_movUNIDADE: TWideStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TWideStringField;
    qrproduto_movECF_CAIXA: TWideStringField;
    qrproduto_movCODALIQUOTA: TWideStringField;
    qrproduto_movCUPOM_NUMERO: TWideStringField;
    qrproduto_movCUPOM_MODELO: TWideStringField;
    qrproduto_movCUPOM_ITEM: TWideStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TWideStringField;
    qrproduto_movLOTE_FABRICACAO: TWideStringField;
    qrproduto_movMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto_movLANCADO: TIntegerField;
    dtfld_movVENCIMENTO: TDateField;
    qrproduto_movMARGEM_DESCONTO: TFloatField;
    qrproduto_movCREDITO_ICMS: TFloatField;
    qrproduto_movPIS: TFloatField;
    qrproduto_movCOFINS: TFloatField;
    qrproduto_movLOJA: TWideStringField;
    qrproduto_movCODSUBGRUPO: TWideStringField;
    qrproduto_movTIPO: TWideStringField;
    qrproduto_movCODUSUARIO: TWideStringField;
    qrproduto_movORIGEM: TWideStringField;
    qrproduto_movDESTINO: TWideStringField;
    qrproduto_movPRODUTO: TWideStringField;
    qrproduto_movCODFILIAL: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure BFILTROClick(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure eclienteEnter(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure ENUMEROExit(Sender: TObject);
    procedure tab_principalChange(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ModelosdeNotasFiscais1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure ClassesdeRecolhimento1Click(Sender: TObject);
    procedure MemorandodeExportao1Click(Sender: TObject);
    procedure Suprimento1Click(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure N2aVia1Click(Sender: TObject);
    procedure BaixarInformaesdaECFDownloadMFD1Click(Sender: TObject);
    procedure ProgramaTotalizardeRecebimento1Click(Sender: TObject);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelClick(Sender: TObject);
    procedure FecharCNFV1Click(Sender: TObject);
    procedure bcontratoClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotas_venda: Tfrmnotas_venda;
  forma_pgto: string;
     const
   sc_DragMove = $f012;
implementation

uses modulo, principal, loc_cliente, notas_venda_impressao,
  notas_venda_ecf, lista_venda2, xloc_cliente, ecf,
  notas_venda_ecf_leituraMemoria, suprimentocaixa, sangriacaixa,
  ecf_download, contrato_reserva, venda_reimpressao, notafiscal_menu;

{$R *.dfm}

procedure Tfrmnotas_venda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrproduto_mov.Close;
  qrproduto.Close;

  Action := CAFREE;
end;

procedure Tfrmnotas_venda.FormShow(Sender: TObject);
begin
  frmmodulo.qrproduto.Close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025');
  frmmodulo.qrproduto.open;

  frmmodulo.qrcliente.Close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007');
  frmmodulo.qrcliente.open;

  frmmodulo.qrfunci.Close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008');
  frmmodulo.qrfunci.open;

  frmmodulo.qrcaixa_operador.open;
  frmmodulo.qrcaixa_operador.Locate('CODIGO', '000099', [loCaseInsensitive]);

  DateEdit1.DATE := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASDATETIME;
  DateEdit2.DATE := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASDATETIME;
  ecliente.Text := '';
  ecliente.Text := '';

  combo_situacao.ITEMINDEX := 1;

  BFILTROClick(frmnotas_venda);
end;

procedure Tfrmnotas_venda.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmnotas_venda.BFILTROClick(Sender: TObject);
var
  cod_venda, cliente, nao_fis: string;
  SITUACAO: string;

begin
  nao_fis := ' and substring(NUMERO_CUPOM_FISCAL from 1 for 1) <> ''9''';
  if (ENUMERO.Text = '000000') or (ENUMERO.Text = '') then
    cod_venda := ''
  else
    cod_venda := ' and NUMERO_CUPOM_FISCAL = ''' + ENUMERO.Text + '''';
  if ecliente.Text = '' then
    cliente := ''
  else
    cliente := ' and codcliente = ''' + copy(ecliente.Text, 1, 6) + '''';

  if combo_situacao.ITEMINDEX = 0 then
    SITUACAO := '';
  if combo_situacao.ITEMINDEX = 1 then
    SITUACAO := ' and situacao = 1';
  if combo_situacao.ITEMINDEX = 2 then
    SITUACAO := ' and situacao = 2';

  QUERY.Close;
  QUERY.sql.clear;
  QUERY.sql.add
    ('SELECT SUM(TOTAL) TOTAL, COUNT(CODIGO) QTDE FROM C000048 WHERE DATA >= :DATAI AND DATA <= :DATAF'
    + nao_fis + cod_venda + cliente + SITUACAO);
  QUERY.Params.ParamByName('datai').ASDATETIME := DateEdit1.DATE;
  QUERY.Params.ParamByName('dataf').ASDATETIME := DateEdit2.DATE;
  QUERY.open;

  lqtde.value := QUERY.FIELDBYNAME('QTDE').ASinteger;
  ltotal.value := QUERY.FIELDBYNAME('TOTAL').ASFLOAT;

  frmmodulo.QRVENDA.Close;
  frmmodulo.QRVENDA.sql.clear;
  frmmodulo.QRVENDA.sql.add
    ('SELECT * FROM C000048 WHERE DATA >= :DATAI AND DATA <= :DATAF ' + nao_fis
    + cod_venda + cliente + SITUACAO + 'ORDER BY DATA, codigo');
  frmmodulo.QRVENDA.Params.ParamByName('datai').ASDATETIME := DateEdit1.DATE;
  frmmodulo.QRVENDA.Params.ParamByName('dataf').ASDATETIME := DateEdit2.DATE;
  frmmodulo.QRVENDA.open;
  frmmodulo.QRVENDA.INDEXFIELDNAMES := 'CODIGO';

end;

procedure Tfrmnotas_venda.DateEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmnotas_venda.DateEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmnotas_venda.BitBtn2Click(Sender: TObject);
begin
  DateEdit1.SETFOCUS;
end;

procedure Tfrmnotas_venda.bcancelarClick(Sender: TObject);
var
  caixa: boolean;
  XESTOQUE: INTEGER;

begin

  if frmmodulo.QRVENDA.FIELDBYNAME('SITUACAO').ASinteger = 2 then
  begin
    APPLICATION.MESSAGEBOX('Esta venda já foi cancelada!', 'Erro',
      mb_ok + mb_iconerror);
    exit;
  end;

  // cancelamento da tela de nfs
  if frmmodulo.cancelou_venda_nf then
  begin
    begin
      frmPrincipal.logUC('Cancelou Venda Nr: ' + frmmodulo.QRVENDA.FIELDBYNAME
        ('nrvenda').AsString, 3);

      caixa := true;
      frmmodulo.qrcaixa_operador.open;
      frmmodulo.qrcaixa_operador.Locate('codigo',
        frmmodulo.QRVENDA.FIELDBYNAME('codcaixa').AsString,
        [loCaseInsensitive]);
      if frmmodulo.QRVENDA.FIELDBYNAME('data').AsString <>
        frmmodulo.qrcaixa_operador.FIELDBYNAME('data').AsString then
      begin
        if APPLICATION.MESSAGEBOX
          ('Esta venda não foi feita nesta data! Deseja continuar?', 'Atenção',
          MB_YESNO + mb_iconwarning + MB_DEFBUTTON2) = idYes then
        begin
          caixa := true;
        end
        else
          exit;
      end
      else
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').ASinteger <> 1
        then
        begin
          APPLICATION.MESSAGEBOX
            ('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!',
            'Atenção', mb_ok + mb_iconerror);
          exit;
        end;
      end;

      (* ------lançamento no caixa------ *)

      /// /  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('saida').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 3;
        // venda em dinheiro
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;

      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;

        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 5;
        // venda CHEQUE AV
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 6;
        // venda CHEQUE AP
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 7;
        // VENDA CARTAO CRED
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 8;
        // venda CARTAO DEB
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 4;
        // venda CREDIARIO
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;

      (* ------final lancto  caixa------ *)

      frmmodulo.qrcontasreceber.Close;
      frmmodulo.qrcontasreceber.sql.clear;
      frmmodulo.qrcontasreceber.sql.add
        ('select * from c000049 where codvenda = ''' +
        frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
      frmmodulo.qrcontasreceber.open;
      frmmodulo.qrcontasreceber.First;

      while frmmodulo.qrcontasreceber.recordcount <> 0 do
      begin
        frmmodulo.qrcontasreceber.delete;
      end;

      frmmodulo.qrproduto_mov.Close;
      frmmodulo.qrproduto_mov.sql.clear;
      frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = '''
        + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString +
        ''' and codcliente = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codcliente')
        .AsString + ''' and movimento <> 9');
      frmmodulo.qrproduto_mov.open;
      frmmodulo.qrproduto_mov.First;
      frmmodulo.qrproduto.open;
      frmmodulo.qrgrade_produto.open;
      frmmodulo.qrserial_produto.open;
      while frmmodulo.qrproduto_mov.recordcount <> 0 do
      begin
        if frmmodulo.qrproduto.Locate('codigo',
          frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString,
          [loCaseInsensitive]) then
        begin
          // DEVOLVER LOTE
          if frmmodulo.qrproduto.FIELDBYNAME('USA_LOTE').ASinteger = 1 then
          begin
            frmmodulo.qrloteproduto.Close;
            frmmodulo.qrloteproduto.sql.clear;
            frmmodulo.qrloteproduto.sql.add
              ('SELECT * FROM  C000131 WHERE CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
            frmmodulo.qrloteproduto.ParamByName('CODPRODUTO').AsString :=
              frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString;
            frmmodulo.qrloteproduto.ParamByName('LOTE').AsString :=
              frmmodulo.qrproduto_mov.FIELDBYNAME('LOTE_FABRICACAO').AsString;
            frmmodulo.qrloteproduto.open;
            XESTOQUE := frmmodulo.qrloteproduto.FIELDBYNAME('ESTOQUE').value;

            frmmodulo.qrloteproduto.Close;
            frmmodulo.qrloteproduto.sql.clear;
            frmmodulo.qrloteproduto.sql.add
              ('UPDATE C000131 SET ESTOQUE = :XESTOQUE  WHERE CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
            frmmodulo.qrloteproduto.ParamByName('CODPRODUTO').AsString :=
              frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString;
            frmmodulo.qrloteproduto.ParamByName('LOTE').AsString :=
              frmmodulo.qrproduto_mov.FIELDBYNAME('LOTE_FABRICACAO').AsString;
            frmmodulo.qrloteproduto.ParamByName('XESTOQUE').ASFLOAT :=
              XESTOQUE + frmmodulo.qrproduto_mov.FIELDBYNAME('QTDE').ASFLOAT;
            frmmodulo.qrloteproduto.ExecSQL;
          end;

          case frmmodulo.qrproduto_mov.FIELDBYNAME('movimento').ASinteger of
            2:
              begin // venda normal
                // grade
                if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> ''
                then
                begin
                  frmmodulo.qrgrade_produto.Close;
                  frmmodulo.qrgrade_produto.sql.clear;
                  frmmodulo.qrgrade_produto.sql.add
                    ('select * from c000021 where codigo = ''' +
                    frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade')
                    .AsString + '''');
                  frmmodulo.qrgrade_produto.open;
                  if frmmodulo.qrgrade_produto.RecNo = 1 then
                  begin
                    frmmodulo.qrgrade_produto.edit;
                    frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT :=
                      frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT +
                      frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                    frmmodulo.qrgrade_produto.post;
                  end;
                end
                else
                begin // serial
                  if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> ''
                  then
                  begin
                    frmmodulo.qrserial_produto.Close;
                    frmmodulo.qrserial_produto.sql.clear;
                    frmmodulo.qrserial_produto.sql.add
                      ('select * from c000022 where serial = ''' +
                      frmmodulo.qrproduto_mov.FIELDBYNAME('serial')
                      .AsString + '''');
                    frmmodulo.qrserial_produto.sql.add('and codcliente = ''' +
                      frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente')
                      .AsString + '''');
                    frmmodulo.qrserial_produto.open;
                    if frmmodulo.qrserial_produto.RecNo = 1 then
                    begin
                      frmmodulo.qrserial_produto.edit;
                      frmmodulo.qrserial_produto.FIELDBYNAME('situacao')
                        .ASFLOAT := 1;
                      frmmodulo.qrserial_produto.FIELDBYNAME('cliente')
                        .AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('codcliente')
                        .AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('DATAVENDA')
                        .AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('codvenda')
                        .AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('precovenda')
                        .AsString := '';
                      frmmodulo.qrserial_produto.post;
                    end;
                  end;
                end;
              end;
            7:
              begin // devolucao do produto

                // grade
                if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> ''
                then
                begin
                  frmmodulo.qrgrade_produto.Close;
                  frmmodulo.qrgrade_produto.sql.clear;
                  frmmodulo.qrgrade_produto.sql.add
                    ('select * from c000021 where codigo = ''' +
                    frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade')
                    .AsString + '''');
                  frmmodulo.qrgrade_produto.open;
                  if frmmodulo.qrgrade_produto.RecNo = 1 then
                  begin
                    frmmodulo.qrgrade_produto.edit;
                    frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT :=
                      frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT -
                      frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                    frmmodulo.qrgrade_produto.post;
                  end;
                end
                else
                begin // serial
                  if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> ''
                  then
                  begin
                    frmmodulo.qrserial_produto.Close;
                    frmmodulo.qrserial_produto.sql.clear;
                    frmmodulo.qrserial_produto.sql.add
                      ('select * from c000022 where serial = ''' +
                      frmmodulo.qrproduto_mov.FIELDBYNAME('serial')
                      .AsString + '''');
                    frmmodulo.qrserial_produto.sql.add('and codcliente = ''' +
                      frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente')
                      .AsString + '''');
                    frmmodulo.qrserial_produto.open;
                    if frmmodulo.qrserial_produto.RecNo = 1 then
                    begin
                      frmmodulo.qrserial_produto.edit;
                      frmmodulo.qrserial_produto.FIELDBYNAME('situacao')
                        .ASFLOAT := 2;
                      frmmodulo.qrserial_produto.post;
                    end;
                  end;
                end;
              end;
          end;
        end;
        frmmodulo.qrproduto_mov.delete;
      end;


      if frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString <> ''
      then
      begin
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.sql.add('delete from c000123 where codigo = ''' +
          frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto')
          .AsString + '''');
        QUERY.ExecSQL;
      end;

      // cartao de credito
      QUERY.Close;
      QUERY.sql.clear;
      QUERY.sql.add('delete from c000124 where cod_venda = ''' +
        frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString + '''');
      QUERY.ExecSQL;

      frmPrincipal.log(codigo_usuario, 'VENDA',
        frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString, 'EXCLUIU',
        frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString);
      frmmodulo.QRVENDA.edit;
      frmmodulo.QRVENDA.FIELDBYNAME('situacao').ASinteger := 2;
      frmmodulo.QRVENDA.post;

      frmmodulo.Conexao.Commit;
    end;
    frmmodulo.cancelou_venda_nf := false;
    Exit;
  end;

  if frmmodulo.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').AsString <> '' then
  begin
    if not frmPrincipal.autentica('Cancelar Venda', nivel_exclusao) then
    begin
      APPLICATION.MESSAGEBOX('Desculpe! Seu acesso não foi autorizado!',
        'Aviso', mb_ok + mb_iconerror);
      exit;
    end
    else
    begin
      if APPLICATION.MESSAGEBOX('Esta venda possui Nota fiscal!' + #13 +
        'Deseja abrir a tela de Notas Fiscais para seu cancelamento?', 'Aviso',
        MB_YESNO + mb_iconwarning) = idYes then
      begin
        frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
        frmmodulo.NUMERO_CUPOM_FISCAL := frmmodulo.QRVENDA.FIELDBYNAME
          ('NUMERO_CUPOM_FISCAL').AsString;
        frmnotafiscal_menu.tag := 100;
        frmnotafiscal_menu.showmodal;

        if frmmodulo.cancelou_venda_nf then
        begin
          begin
            frmPrincipal.logUC('Cancelou Venda Nr: ' +
              frmmodulo.QRVENDA.FIELDBYNAME('nrvenda').AsString, 3);

            caixa := true;
            frmmodulo.qrcaixa_operador.open;
            frmmodulo.qrcaixa_operador.Locate('codigo',
              frmmodulo.QRVENDA.FIELDBYNAME('codcaixa').AsString,
              [loCaseInsensitive]);
            if frmmodulo.QRVENDA.FIELDBYNAME('data').AsString <>
              frmmodulo.qrcaixa_operador.FIELDBYNAME('data').AsString then
            begin
              if APPLICATION.MESSAGEBOX
                ('Esta venda não foi feita nesta data! Deseja continuar?',
                'Atenção', MB_YESNO + mb_iconwarning + MB_DEFBUTTON2) = idYes
              then
              begin
                caixa := true;
              end
              else
                exit;
            end
            else
            begin
              if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').ASinteger <> 1
              then
              begin
                APPLICATION.MESSAGEBOX
                  ('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!',
                  'Atenção', mb_ok + mb_iconerror);
                exit;
              end;
            end;

            (* ------lançamento no caixa------ *)

            /// /  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
            frmmodulo.qrcaixa_mov.open;
            if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
            begin
              frmmodulo.qrcaixa_mov.insert;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
                frmPrincipal.codifica('000044');
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
                frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('saida').ASFLOAT :=
                frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
                frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT * (-1);
              frmmodulo.qrconfig.open;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
                frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 3;
              // venda em dinheiro
              frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
                'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CLIENTE').AsString;
              frmmodulo.qrcaixa_mov.post;
            end;

            frmmodulo.qrcaixa_mov.open;
            if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
            begin
              frmmodulo.qrcaixa_mov.insert;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
                frmPrincipal.codifica('000044');
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
                frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
                frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
              frmmodulo.qrconfig.open;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
                frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;

              frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 5;
              // venda CHEQUE AV
              frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
                'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CLIENTE').AsString;
              frmmodulo.qrcaixa_mov.post;
            end;
            frmmodulo.qrcaixa_mov.open;
            if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
            begin
              frmmodulo.qrcaixa_mov.insert;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
                frmPrincipal.codifica('000044');
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
                frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
                frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
              frmmodulo.qrconfig.open;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
                frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

              frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 6;
              // venda CHEQUE AP
              frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
                'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CLIENTE').AsString;
              frmmodulo.qrcaixa_mov.post;
            end;
            frmmodulo.qrcaixa_mov.open;
            if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0
            then
            begin
              frmmodulo.qrcaixa_mov.insert;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
                frmPrincipal.codifica('000044');
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
                frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
                frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
              frmmodulo.qrconfig.open;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
                frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

              frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 7;
              // VENDA CARTAO CRED
              frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
                'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CLIENTE').AsString;
              frmmodulo.qrcaixa_mov.post;
            end;
            frmmodulo.qrcaixa_mov.open;
            if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
            begin
              frmmodulo.qrcaixa_mov.insert;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
                frmPrincipal.codifica('000044');
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
                frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
                frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
              frmmodulo.qrconfig.open;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
                frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 8;
              // venda CARTAO DEB
              frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
                'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CLIENTE').AsString;
              frmmodulo.qrcaixa_mov.post;
            end;
            frmmodulo.qrcaixa_mov.open;
            if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
            begin
              frmmodulo.qrcaixa_mov.insert;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
                frmPrincipal.codifica('000044');
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
                frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
                frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
                frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
              frmmodulo.qrconfig.open;
              frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
                frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

              frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 4;
              // venda CREDIARIO
              frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
                'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CODIGO').AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME
                ('CLIENTE').AsString;
              frmmodulo.qrcaixa_mov.post;
            end;

            (* ------final lancto  caixa------ *)

            frmmodulo.qrcontasreceber.Close;
            frmmodulo.qrcontasreceber.sql.clear;
            frmmodulo.qrcontasreceber.sql.add
              ('select * from c000049 where codvenda = ''' +
              frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
            frmmodulo.qrcontasreceber.open;
            frmmodulo.qrcontasreceber.First;

            while frmmodulo.qrcontasreceber.recordcount <> 0 do
            begin
              frmmodulo.qrcontasreceber.delete;
            end;

            frmmodulo.qrproduto_mov.Close;
            frmmodulo.qrproduto_mov.sql.clear;
            frmmodulo.qrproduto_mov.sql.add
              ('select * from c000032 where codnota = ''' +
              frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString +
              ''' and codcliente = ''' + frmmodulo.QRVENDA.FIELDBYNAME
              ('codcliente').AsString + ''' and movimento <> 9');
            frmmodulo.qrproduto_mov.open;
            frmmodulo.qrproduto_mov.First;
            frmmodulo.qrproduto.open;
            frmmodulo.qrgrade_produto.open;
            frmmodulo.qrserial_produto.open;
            while frmmodulo.qrproduto_mov.recordcount <> 0 do
            begin
              if frmmodulo.qrproduto.Locate('codigo',
                frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString,
                [loCaseInsensitive]) then
              begin
                // DEVOLVER LOTE
                if frmmodulo.qrproduto.FIELDBYNAME('USA_LOTE').ASinteger = 1
                then
                begin
                  frmmodulo.qrloteproduto.Close;
                  frmmodulo.qrloteproduto.sql.clear;
                  frmmodulo.qrloteproduto.sql.add
                    ('SELECT * FROM  C000131 WHERE CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
                  frmmodulo.qrloteproduto.ParamByName('CODPRODUTO').AsString :=
                    frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString;
                  frmmodulo.qrloteproduto.ParamByName('LOTE').AsString :=
                    frmmodulo.qrproduto_mov.FIELDBYNAME
                    ('LOTE_FABRICACAO').AsString;
                  frmmodulo.qrloteproduto.open;
                  XESTOQUE := frmmodulo.qrloteproduto.FIELDBYNAME
                    ('ESTOQUE').value;

                  frmmodulo.qrloteproduto.Close;
                  frmmodulo.qrloteproduto.sql.clear;
                  frmmodulo.qrloteproduto.sql.add
                    ('UPDATE C000131 SET ESTOQUE = :XESTOQUE  WHERE CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
                  frmmodulo.qrloteproduto.ParamByName('CODPRODUTO').AsString :=
                    frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString;
                  frmmodulo.qrloteproduto.ParamByName('LOTE').AsString :=
                    frmmodulo.qrproduto_mov.FIELDBYNAME
                    ('LOTE_FABRICACAO').AsString;
                  frmmodulo.qrloteproduto.ParamByName('XESTOQUE').ASFLOAT :=
                    XESTOQUE + frmmodulo.qrproduto_mov.FIELDBYNAME
                    ('QTDE').ASFLOAT;
                  frmmodulo.qrloteproduto.ExecSQL;
                end;

                case frmmodulo.qrproduto_mov.FIELDBYNAME('movimento')
                  .ASinteger of
                  2:
                    begin // venda normal
                      // grade
                      if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade')
                        .AsString <> '' then
                      begin
                        frmmodulo.qrgrade_produto.Close;
                        frmmodulo.qrgrade_produto.sql.clear;
                        frmmodulo.qrgrade_produto.sql.add
                          ('select * from c000021 where codigo = ''' +
                          frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade')
                          .AsString + '''');
                        frmmodulo.qrgrade_produto.open;
                        if frmmodulo.qrgrade_produto.RecNo = 1 then
                        begin
                          frmmodulo.qrgrade_produto.edit;
                          frmmodulo.qrgrade_produto.FIELDBYNAME('estoque')
                            .ASFLOAT := frmmodulo.qrgrade_produto.FIELDBYNAME
                            ('estoque').ASFLOAT +
                            frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                          frmmodulo.qrgrade_produto.post;
                        end;
                      end
                      else
                      begin // serial
                        if frmmodulo.qrproduto_mov.FIELDBYNAME('serial')
                          .AsString <> '' then
                        begin
                          frmmodulo.qrserial_produto.Close;
                          frmmodulo.qrserial_produto.sql.clear;
                          frmmodulo.qrserial_produto.sql.add
                            ('select * from c000022 where serial = ''' +
                            frmmodulo.qrproduto_mov.FIELDBYNAME('serial')
                            .AsString + '''');
                          frmmodulo.qrserial_produto.sql.add
                            ('and codcliente = ''' +
                            frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente')
                            .AsString + '''');
                          frmmodulo.qrserial_produto.open;
                          if frmmodulo.qrserial_produto.RecNo = 1 then
                          begin
                            frmmodulo.qrserial_produto.edit;
                            frmmodulo.qrserial_produto.FIELDBYNAME('situacao')
                              .ASFLOAT := 1;
                            frmmodulo.qrserial_produto.FIELDBYNAME('cliente')
                              .AsString := '';
                            frmmodulo.qrserial_produto.FIELDBYNAME('codcliente')
                              .AsString := '';
                            frmmodulo.qrserial_produto.FIELDBYNAME('DATAVENDA')
                              .AsString := '';
                            frmmodulo.qrserial_produto.FIELDBYNAME('codvenda')
                              .AsString := '';
                            frmmodulo.qrserial_produto.FIELDBYNAME('precovenda')
                              .AsString := '';
                            frmmodulo.qrserial_produto.post;
                          end;
                        end;
                      end;
                    end;
                  7:
                    begin // devolucao do produto

                      // grade
                      if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade')
                        .AsString <> '' then
                      begin
                        frmmodulo.qrgrade_produto.Close;
                        frmmodulo.qrgrade_produto.sql.clear;
                        frmmodulo.qrgrade_produto.sql.add
                          ('select * from c000021 where codigo = ''' +
                          frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade')
                          .AsString + '''');
                        frmmodulo.qrgrade_produto.open;
                        if frmmodulo.qrgrade_produto.RecNo = 1 then
                        begin
                          frmmodulo.qrgrade_produto.edit;
                          frmmodulo.qrgrade_produto.FIELDBYNAME('estoque')
                            .ASFLOAT := frmmodulo.qrgrade_produto.FIELDBYNAME
                            ('estoque').ASFLOAT -
                            frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                          frmmodulo.qrgrade_produto.post;
                        end;
                      end
                      else
                      begin // serial
                        if frmmodulo.qrproduto_mov.FIELDBYNAME('serial')
                          .AsString <> '' then
                        begin
                          frmmodulo.qrserial_produto.Close;
                          frmmodulo.qrserial_produto.sql.clear;
                          frmmodulo.qrserial_produto.sql.add
                            ('select * from c000022 where serial = ''' +
                            frmmodulo.qrproduto_mov.FIELDBYNAME('serial')
                            .AsString + '''');
                          frmmodulo.qrserial_produto.sql.add
                            ('and codcliente = ''' +
                            frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente')
                            .AsString + '''');
                          frmmodulo.qrserial_produto.open;
                          if frmmodulo.qrserial_produto.RecNo = 1 then
                          begin
                            frmmodulo.qrserial_produto.edit;
                            frmmodulo.qrserial_produto.FIELDBYNAME('situacao')
                              .ASFLOAT := 2;
                            frmmodulo.qrserial_produto.post;
                          end;
                        end;
                      end;
                    end;
                end;
              end;
              frmmodulo.qrproduto_mov.delete;
            end;

            ltotal.value := ltotal.value - frmmodulo.QRVENDA.FIELDBYNAME
              ('total').ASFLOAT;
            lqtde.value := lqtde.value - 1;

            if frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString
              <> '' then
            begin
              QUERY.Close;
              QUERY.sql.clear;
              QUERY.sql.add('delete from c000123 where codigo = ''' +
                frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto')
                .AsString + '''');
              QUERY.ExecSQL;
            end;

            // cartao de credito
            QUERY.Close;
            QUERY.sql.clear;
            QUERY.sql.add('delete from c000124 where cod_venda = ''' +
              frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto')
              .AsString + '''');
            QUERY.ExecSQL;

            frmPrincipal.log(codigo_usuario, 'VENDA',
              frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString, 'EXCLUIU',
              frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString);
            frmmodulo.QRVENDA.edit;
            frmmodulo.QRVENDA.FIELDBYNAME('situacao').ASinteger := 2;
            frmmodulo.QRVENDA.post;

            { //devolver lote

              frmmodulo.qrproduto_mov.close;
              frmmodulo.qrproduto_mov.SQL.Clear;
              frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = ''' + frmmodulo.qrvenda.fieldbyname('codigo').asstring + ''' and codcliente = ''' + frmmodulo.qrvenda.fieldbyname('codcliente').asstring + ''' and movimento <> 9');
              frmmodulo.qrproduto_mov.Open;
              frmmodulo.qrproduto_mov.First;
              frmmodulo.qrproduto.open;

              while frmmodulo.qrproduto_mov.recordcount <> 0 do
              begin
              if frmmodulo.qrproduto.Locate('codigo', frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring, [loCaseInsensitive]) then
              begin
              if frmmodulo.qrproduto.FieldByName('USA_LOTE').AsInteger = 1 then
              begin
              frmmodulo.qrloteproduto.Close;
              frmmodulo.qrloteproduto.SQL.Clear;
              frmmodulo.qrloteproduto.SQL.Add('UPDATE C000131 SET ESTOQUE = :XESTOQUE  WHERE CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
              frmmodulo.qrloteproduto.ParamByName('CODPRODUTO').AsString =frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring;
              frmmodulo.qrloteproduto.ParamByName('LOTE').AsString:= qrproduto_mov.fieldbyname('LOTE_FABRICACAO').asstring;
              frmmodulo.qrloteproduto.ParamByName('XESTOQUE').Value:= frmmodulo.qrloteproduto.ParamByName('ESTOQUE').Value + qrproduto_mov.fieldbyname('QTDE').Value;
              frmmodulo.qrloteproduto.ExecSQL;
              end;



              end;
              end; }

            frmmodulo.Conexao.Commit;
          end;
        end
        else
          exit;
      end;

    end
  end
  else
  begin
    // try

    if not frmPrincipal.autentica('Cancelar Venda', nivel_exclusao) then
    begin
      APPLICATION.MESSAGEBOX('Desculpe! Seu acesso não foi autorizado!',
        'Aviso', mb_ok + mb_iconerror);
      exit;
    end
    else
    begin
      frmPrincipal.logUC('Cancelou Venda Nr: ' + frmmodulo.QRVENDA.FIELDBYNAME
        ('nrvenda').AsString, 3);

      caixa := true;
      frmmodulo.qrcaixa_operador.open;
      frmmodulo.qrcaixa_operador.Locate('codigo',
        frmmodulo.QRVENDA.FIELDBYNAME('codcaixa').AsString,
        [loCaseInsensitive]);
      if frmmodulo.QRVENDA.FIELDBYNAME('data').AsString <>
        frmmodulo.qrcaixa_operador.FIELDBYNAME('data').AsString then
      begin
        if APPLICATION.MESSAGEBOX
          ('Esta venda não foi feita nesta data! Deseja continuar?', 'Atenção',
          MB_YESNO + mb_iconwarning + MB_DEFBUTTON2) = idYes then
        begin
          caixa := true;
        end
        else
          exit;
      end
      else
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').ASinteger <> 1
        then
        begin
          APPLICATION.MESSAGEBOX
            ('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!',
            'Atenção', mb_ok + mb_iconerror);
          exit;
        end;
      end;

      (* ------lançamento no caixa------ *)

      /// /  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('saida').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 3;
        // venda em dinheiro
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;

      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;

        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 5;
        // venda CHEQUE AV
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 6;
        // venda CHEQUE AP
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 7;
        // VENDA CARTAO CRED
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 8;
        // venda CARTAO DEB
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;
      frmmodulo.qrcaixa_mov.open;
      if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
      begin
        frmmodulo.qrcaixa_mov.insert;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
          frmPrincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
          frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
          frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
          frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
        frmmodulo.qrconfig.open;
        frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
          frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

        frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 4;
        // venda CREDIARIO
        frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
          'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
          .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
        frmmodulo.qrcaixa_mov.post;
      end;

      (* ------final lancto  caixa------ *)

      frmmodulo.qrcontasreceber.Close;
      frmmodulo.qrcontasreceber.sql.clear;
      frmmodulo.qrcontasreceber.sql.add
        ('select * from c000049 where codvenda = ''' +
        frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
      frmmodulo.qrcontasreceber.open;
      frmmodulo.qrcontasreceber.First;

      while frmmodulo.qrcontasreceber.recordcount <> 0 do
      begin
        frmmodulo.qrcontasreceber.delete;
      end;

      frmmodulo.qrproduto_mov.Close;
      frmmodulo.qrproduto_mov.sql.clear;
      frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = '''
        + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString +
        ''' and codcliente = ''' + frmmodulo.QRVENDA.FIELDBYNAME('codcliente')
        .AsString + ''' and movimento <> 9');
      frmmodulo.qrproduto_mov.open;
      frmmodulo.qrproduto_mov.First;
      frmmodulo.qrproduto.open;
      frmmodulo.qrgrade_produto.open;
      frmmodulo.qrserial_produto.open;
      while frmmodulo.qrproduto_mov.recordcount <> 0 do
      begin
        if frmmodulo.qrproduto.Locate('codigo',
          frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString,
          [loCaseInsensitive]) then
        begin
          // DEVOLVER LOTE
          if frmmodulo.qrproduto.FIELDBYNAME('USA_LOTE').ASinteger = 1 then
          begin
            frmmodulo.qrloteproduto.Close;
            frmmodulo.qrloteproduto.sql.clear;
            frmmodulo.qrloteproduto.sql.add
              ('SELECT * FROM  C000131 WHERE CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
            frmmodulo.qrloteproduto.ParamByName('CODPRODUTO').AsString :=
              frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString;
            frmmodulo.qrloteproduto.ParamByName('LOTE').AsString :=
              frmmodulo.qrproduto_mov.FIELDBYNAME('LOTE_FABRICACAO').AsString;
            frmmodulo.qrloteproduto.open;
            XESTOQUE := frmmodulo.qrloteproduto.FIELDBYNAME('ESTOQUE').value;

            frmmodulo.qrloteproduto.Close;
            frmmodulo.qrloteproduto.sql.clear;
            frmmodulo.qrloteproduto.sql.add
              ('UPDATE C000131 SET ESTOQUE = :XESTOQUE  WHERE CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
            frmmodulo.qrloteproduto.ParamByName('CODPRODUTO').AsString :=
              frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString;
            frmmodulo.qrloteproduto.ParamByName('LOTE').AsString :=
              frmmodulo.qrproduto_mov.FIELDBYNAME('LOTE_FABRICACAO').AsString;
            frmmodulo.qrloteproduto.ParamByName('XESTOQUE').ASFLOAT :=
              XESTOQUE + frmmodulo.qrproduto_mov.FIELDBYNAME('QTDE').ASFLOAT;
            frmmodulo.qrloteproduto.ExecSQL;
          end;

          case frmmodulo.qrproduto_mov.FIELDBYNAME('movimento').ASinteger of
            2:
              begin // venda normal
                // grade
                if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> ''
                then
                begin
                  frmmodulo.qrgrade_produto.Close;
                  frmmodulo.qrgrade_produto.sql.clear;
                  frmmodulo.qrgrade_produto.sql.add
                    ('select * from c000021 where codigo = ''' +
                    frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade')
                    .AsString + '''');
                  frmmodulo.qrgrade_produto.open;
                  if frmmodulo.qrgrade_produto.RecNo = 1 then
                  begin
                    frmmodulo.qrgrade_produto.edit;
                    frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT :=
                      frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT +
                      frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                    frmmodulo.qrgrade_produto.post;
                  end;
                end
                else
                begin // serial
                  if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> ''
                  then
                  begin
                    frmmodulo.qrserial_produto.Close;
                    frmmodulo.qrserial_produto.sql.clear;
                    frmmodulo.qrserial_produto.sql.add
                      ('select * from c000022 where serial = ''' +
                      frmmodulo.qrproduto_mov.FIELDBYNAME('serial')
                      .AsString + '''');
                    frmmodulo.qrserial_produto.sql.add('and codcliente = ''' +
                      frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente')
                      .AsString + '''');
                    frmmodulo.qrserial_produto.open;
                    if frmmodulo.qrserial_produto.RecNo = 1 then
                    begin
                      frmmodulo.qrserial_produto.edit;
                      frmmodulo.qrserial_produto.FIELDBYNAME('situacao')
                        .ASFLOAT := 1;
                      frmmodulo.qrserial_produto.FIELDBYNAME('cliente')
                        .AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('codcliente')
                        .AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('DATAVENDA')
                        .AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('codvenda')
                        .AsString := '';
                      frmmodulo.qrserial_produto.FIELDBYNAME('precovenda')
                        .AsString := '';
                      frmmodulo.qrserial_produto.post;
                    end;
                  end;
                end;
              end;
            7:
              begin // devolucao do produto

                // grade
                if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> ''
                then
                begin
                  frmmodulo.qrgrade_produto.Close;
                  frmmodulo.qrgrade_produto.sql.clear;
                  frmmodulo.qrgrade_produto.sql.add
                    ('select * from c000021 where codigo = ''' +
                    frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade')
                    .AsString + '''');
                  frmmodulo.qrgrade_produto.open;
                  if frmmodulo.qrgrade_produto.RecNo = 1 then
                  begin
                    frmmodulo.qrgrade_produto.edit;
                    frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT :=
                      frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT -
                      frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                    frmmodulo.qrgrade_produto.post;
                  end;
                end
                else
                begin // serial
                  if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> ''
                  then
                  begin
                    frmmodulo.qrserial_produto.Close;
                    frmmodulo.qrserial_produto.sql.clear;
                    frmmodulo.qrserial_produto.sql.add
                      ('select * from c000022 where serial = ''' +
                      frmmodulo.qrproduto_mov.FIELDBYNAME('serial')
                      .AsString + '''');
                    frmmodulo.qrserial_produto.sql.add('and codcliente = ''' +
                      frmmodulo.qrproduto_mov.FIELDBYNAME('codcliente')
                      .AsString + '''');
                    frmmodulo.qrserial_produto.open;
                    if frmmodulo.qrserial_produto.RecNo = 1 then
                    begin
                      frmmodulo.qrserial_produto.edit;
                      frmmodulo.qrserial_produto.FIELDBYNAME('situacao')
                        .ASFLOAT := 2;
                      frmmodulo.qrserial_produto.post;
                    end;
                  end;
                end;
              end;
          end;
        end;
        frmmodulo.qrproduto_mov.delete;
      end;

      ltotal.value := ltotal.value - frmmodulo.QRVENDA.FIELDBYNAME
        ('total').ASFLOAT;
      lqtde.value := lqtde.value - 1;

      if frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString <> ''
      then
      begin
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.sql.add('delete from c000123 where codigo = ''' +
          frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto')
          .AsString + '''');
        QUERY.ExecSQL;
      end;

      // cartao de credito
      QUERY.Close;
      QUERY.sql.clear;
      QUERY.sql.add('delete from c000124 where cod_venda = ''' +
        frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString + '''');
      QUERY.ExecSQL;

      frmPrincipal.log(codigo_usuario, 'VENDA',
        frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString, 'EXCLUIU',
        frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString);
      frmmodulo.QRVENDA.edit;
      frmmodulo.QRVENDA.FIELDBYNAME('situacao').ASinteger := 2;
      frmmodulo.QRVENDA.post;

      { //devolver lote

        frmmodulo.qrproduto_mov.close;
        frmmodulo.qrproduto_mov.SQL.Clear;
        frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = ''' + frmmodulo.qrvenda.fieldbyname('codigo').asstring + ''' and codcliente = ''' + frmmodulo.qrvenda.fieldbyname('codcliente').asstring + ''' and movimento <> 9');
        frmmodulo.qrproduto_mov.Open;
        frmmodulo.qrproduto_mov.First;
        frmmodulo.qrproduto.open;

        while frmmodulo.qrproduto_mov.recordcount <> 0 do
        begin
        if frmmodulo.qrproduto.Locate('codigo', frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring, [loCaseInsensitive]) then
        begin
        if frmmodulo.qrproduto.FieldByName('USA_LOTE').AsInteger = 1 then
        begin
        frmmodulo.qrloteproduto.Close;
        frmmodulo.qrloteproduto.SQL.Clear;
        frmmodulo.qrloteproduto.SQL.Add('UPDATE C000131 SET ESTOQUE = :XESTOQUE  WHERE CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
        frmmodulo.qrloteproduto.ParamByName('CODPRODUTO').AsString =frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring;
        frmmodulo.qrloteproduto.ParamByName('LOTE').AsString:= qrproduto_mov.fieldbyname('LOTE_FABRICACAO').asstring;
        frmmodulo.qrloteproduto.ParamByName('XESTOQUE').Value:= frmmodulo.qrloteproduto.ParamByName('ESTOQUE').Value + qrproduto_mov.fieldbyname('QTDE').Value;
        frmmodulo.qrloteproduto.ExecSQL;
        end;



        end;
        end; }

      frmmodulo.Conexao.Commit;
    end;
    // except
    // showmessage('A operação gerou erros! O processamento foi interrompido.');
    // frmmodulo.Conexao.Rollback;
    // end;
  end;

end;

procedure Tfrmnotas_venda.brelatorioClick(Sender: TObject);
begin
  frmlista_venda2 := tfrmlista_venda2.create(self);
  frmlista_venda2.showmodal;

end;

procedure Tfrmnotas_venda.BitBtn1Click(Sender: TObject);
begin

  {
    if application.messagebox('Deseja Ré-imprimir segunda via (Comprovante Não Fiscal Vinculado)?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
    // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE VENDA --------------------------\\

    application.ProcessMessages;
    if ecf_abre_CNFV(ecf_modelo,'','','') <> 'ERRO' then
    BEGIN
    if ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+frmmodulo.qrvendaNUMERO_CUPOM_FISCAL.AsString) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
    qrproduto_mov.First;
    while not qrproduto_mov.Eof do
    begin
    if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(qrproduto_mov.fieldbyname('codproduto').asstring,6,'0','E')+' '+
    frmPrincipal.texto_justifica(qrproduto_mov.fieldbyname('produto').asstring,19,' ','D')+
    frmPrincipal.texto_justifica(formatfloat('######0',qrproduto_mov.fieldbyname('qtde').asfloat),4,' ','E')+
    frmPrincipal.texto_justifica(formatfloat('######0.00',qrproduto_mov.fieldbyname('unitario').asfloat),9,' ','E')+
    frmPrincipal.texto_justifica(formatfloat('######0.00',qrproduto_mov.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
    qrproduto_mov.Next;
    end;
    if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',QUERY1.FIELDBYNAME('TOTAL').ASFLOAT-QUERY1.FIELDBYNAME('DESCONTO').ASFLOAT),9,' ','E')) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',QUERY1.FIELDBYNAME('DESCONTO').ASFLOAT),9,' ','E')) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',QUERY1.FIELDBYNAME('TOTAL').ASFLOAT),9,' ','E')) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrvendaCODCLIENTE.AsString+'-'+frmmodulo.qrvendacliente.AsString,48,' ','D')) = 'ERRO' then exit;
    //if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrvendacliente.deilsonAsStringendereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
    //if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmmodulo.qrvendaCODVENDEDOR.AsString+'-'+frmmodulo.qrvendavendedor.AsString,42,' ','D')) = 'ERRO' then exit;

    if frmmodulo.qrvenda.FieldByName('MEIO_CONVENIO').AsFloat > 0 then
    begin
    if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO: ',48,' ','D')) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'Autorizo descontar em folha o valor da compra.' ) = 'ERRO' then exit;
    end
    else
    begin
    if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
    if ecf_usa_CNFV(ecf_modelo,'Reconheço e pagarei a divida aqui apresentada.  ' ) = 'ERRO' then exit;
    end;
    if ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;
    end;
    end;
  }
end;

procedure Tfrmnotas_venda.eclienteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ecliente.Text;
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;

  end;
end;

procedure Tfrmnotas_venda.eclienteEnter(Sender: TObject);
begin
  ecliente.Text := '';
end;

procedure Tfrmnotas_venda.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ecliente.Text <> '' then
    begin
      qrcliente2.Close;
      qrcliente2.sql.clear;
      qrcliente2.sql.add('select * from c000007 where codigo = ''' +
        frmPrincipal.zerarcodigo(copy(ecliente.Text, 1, 6), 6) + '''');
      qrcliente2.open;
      if qrcliente2.recordcount > 0 then
      begin
        if qrcliente2.recordcount = 1 then
        begin
          ecliente.Text := qrcliente2.FIELDBYNAME('codigo').AsString + ' ' +
            qrcliente2.FIELDBYNAME('nome').AsString;
          ENUMERO.SETFOCUS;
        end
        else
        begin
          resultado_pesquisa1 := '';
          parametro_pesquisa :=
            'select * from c000007 where upper(nome) like ''' +
            ansiuppercase(ecliente.Text) + '%'' order by nome';
          frmxloc_cliente := tfrmxloc_cliente.create(self);
          frmxloc_cliente.showmodal;
          if resultado_pesquisa1 <> '' then
          begin
            ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
            ENUMERO.SETFOCUS;

          end;
        end;
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Cliente não encontrado!', 'Atenção',
          mb_ok + mb_iconerror);
        resultado_pesquisa1 := '';
        parametro_pesquisa := '';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
          ENUMERO.SETFOCUS;

        end;

      end;
    end;

  end;

end;

procedure Tfrmnotas_venda.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmnotas_venda.ENUMEROExit(Sender: TObject);
begin
  ENUMERO.Text := frmPrincipal.zerarcodigo(ENUMERO.Text, 6);
end;

procedure Tfrmnotas_venda.tab_principalChange(Sender: TObject);
var
  i: INTEGER;
begin
  { for i := 0 to frmnotas_venda.ComponentCount - 1 do
    begin
    if frmnotas_venda.Components[i] is tzquery then
    begin
    tzquery(frmnotas_venda.Components[i]).Connection := frmmodulo.Conexao;
    end;
    end; }

  if tab_principal.ActivePageIndex = 1 then
  begin
    // QUERY1.Close;
    // QUERY1.SQL.CLEAR;
    // QUERY1.SQL.ADD('SELECT SUM(TOTAL) TOTAL,SUM(DESCONTO) DESCONTO, COUNT(CODIGO) QTDE FROM C000032 WHERE numeronota = '''+frmmodulo.qrvenda.fieldbyname('codigo').asstring+'''');
    // QUERY1.SQL.ADD('and data = :vdat');
    // QUERY1.params.ParamByName('vdat').AsDateTime := frmmodulo.qrvenda.fieldbyname('data').AsDateTime;
    // QUERY1.open;
    qrproduto_mov.Connection := frmmodulo.Conexao;
    qrproduto.Connection := frmmodulo.Conexao;
    qrproduto_mov.Close;
    qrproduto_mov.sql.clear;
    qrproduto_mov.sql.add('select * from c000032 where CODnota = ''' +
      frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
    qrproduto_mov.sql.add('and data = :vdat');
    qrproduto_mov.Params.ParamByName('vdat').ASDATETIME :=
      frmmodulo.QRVENDA.FIELDBYNAME('data').ASDATETIME;

    qrproduto_mov.open;
    { frmmodulo.qrservico.Open;
      while not qrproduto_mov.Eof do
      begin
      if qrproduto_movUNIDADE.AsString = 'OS' then
      begin
      if frmmodulo.qrservico.Locate('codigo', qrproduto_movCODPRODUTO.AsString, [loCaseInsensitive]) then
      begin
      qrproduto_mov.Edit;
      qrproduto_movproduto.AsString := frmmodulo.qrservicoSERVICO.AsString;
      qrproduto_mov.Post;
      end;
      end;
      qrproduto_mov.Next;
      end; }

    lqtde_cupom.Caption := inttostr(qrproduto_mov.recordcount);

  end;

end;

procedure Tfrmnotas_venda.Visualizar1Click(Sender: TObject);
begin
  tab_principal.ActivePageIndex := 1;
end;

procedure Tfrmnotas_venda.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmnotas_venda.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmnotas_venda.ModelosdeNotasFiscais1Click(Sender: TObject);
begin
  ecf_leitura_x(ecf_modelo);
end;

procedure Tfrmnotas_venda.CFOP1Click(Sender: TObject);
begin
  frmnotas_venda_ecf_leituramemoria :=
    tfrmnotas_venda_ecf_leituramemoria.create(self);
  frmnotas_venda_ecf_leituramemoria.showmodal;
end;

procedure Tfrmnotas_venda.ClassesdeRecolhimento1Click(Sender: TObject);
var
  texto: PWideChar;
  TXT: TEXTFILE;
  cnpj_cpf, ie_rg, TEXTOS: string;
  i: INTEGER;
begin
  if frmPrincipal.autentica('Redução Z', nivel_exclusao) then
  begin
    texto := PWideChar
      ('Este procedimento fechará o Caixa da ECF, permitindo efetuar novas vendas após as 00:00 hs!'
      + #13 + 'Confirma a emissão da REDUÇÃO Z?');
    if APPLICATION.MESSAGEBOX(texto, 'Atenção - Redução Z',
      MB_YESNO + mb_iconwarning + MB_DEFBUTTON2) = idYes then
    begin
      ecf_reducao_z(ecf_modelo);
      frmPrincipal.GravaReducaoZ;
    end;

  end
  else
  begin
    APPLICATION.MESSAGEBOX('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

end;

procedure Tfrmnotas_venda.MemorandodeExportao1Click(Sender: TObject);
var
  texto: PWideChar;
  cp: string;
  i: INTEGER;
begin
  if frmPrincipal.autentica('Cancel.Cupom', nivel_exclusao) then
  begin
    try
      i := strtoint(ecf_numero_cupom(ecf_modelo));
      texto := PWideChar(frmPrincipal.zerarcodigo(inttostr(i - 1), 6));
      texto := PWideChar('Confirma o Cancelamento do Cupom Nº ' + texto + '?');
      APPLICATION.ProcessMessages;
    except
      texto := 'Confirma o Cancelamento do Cupom?';
    end;
    if APPLICATION.MESSAGEBOX(texto, 'Cancelamento de Cupom',
      MB_YESNO + mb_iconwarning + MB_DEFBUTTON2) = idYes then
    begin
      if ecf_cancela_cupom(ecf_modelo, '') = 'OK' then
      begin
        cp := frmPrincipal.zerarcodigo(inttostr(i - 1), 6);
        if frmmodulo.QRVENDA.Locate('numero_cupom_fiscal', cp,
          [loCaseInsensitive]) then
        begin
          bcancelClick(frmnotas_venda);
        end;
      end;
    end;
  end
  else
  begin
    APPLICATION.MESSAGEBOX('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmnotas_venda.Suprimento1Click(Sender: TObject);
begin
  if frmPrincipal.autentica_caixa('Suprimento', 0) then
  begin
    frmsuprimentocaixa := tfrmsuprimentocaixa.create(self);
    frmsuprimentocaixa.Edit1.Text := frmmodulo.qrcaixa_operador.FIELDBYNAME
      ('codigo').AsString;
    frmsuprimentocaixa.showmodal;
  end
  else
  begin
    APPLICATION.MESSAGEBOX('Não autorizado!', 'Atenção', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmnotas_venda.Sangria1Click(Sender: TObject);
begin
  if frmPrincipal.autentica_caixa('Sangria', 0) then
  begin
    frmsangriacaixa := tfrmsangriacaixa.create(self);
    frmsangriacaixa.Edit1.Text := frmmodulo.qrcaixa_operador.FIELDBYNAME
      ('DATA').AsString;
    frmsangriacaixa.showmodal;
  end
  else
  begin
    APPLICATION.MESSAGEBOX('Não autorizado!', 'Atenção', mb_ok + mb_iconerror);
  end;

end;

procedure Tfrmnotas_venda.AdvGlowButton1Click(Sender: TObject);
begin
  frmmodulo.qrcontasreceber.Close;
  frmmodulo.qrcontasreceber.sql.clear;
  frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''
    + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
  frmmodulo.qrcontasreceber.open;
  frmmodulo.qrcontasreceber.First;

  if (frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString <> 'S/CLIE') and
    (frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString <> '') then
  begin
    frmmodulo.qrcliente.Close;
    frmmodulo.qrcliente.sql.clear;
    frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''' +
      frmmodulo.QRVENDA.FIELDBYNAME('CODCLIENTE').AsString + '''');
    frmmodulo.qrcliente.open;
    if frmmodulo.qrcliente.recordcount > 0 then
    begin
      frmnotas_venda_impressao := tfrmnotas_venda_impressao.create(self);
      frmnotas_venda_impressao.showmodal;
    end
    else
    begin
      APPLICATION.MESSAGEBOX
        ('Houve erro na procura do cliente! Impossível prosseguir!', 'Atenção',
        mb_ok + mb_iconerror);
      exit;
    end;
  end
  else
  begin
    frmnotas_venda_impressao := tfrmnotas_venda_impressao.create(self);
    frmnotas_venda_impressao.showmodal;
  end;
  frmmodulo.qrcliente.Close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007');
  frmmodulo.qrcliente.open;
end;

procedure Tfrmnotas_venda.Cliente1Click(Sender: TObject);
begin
  ecliente.SETFOCUS;
end;

procedure Tfrmnotas_venda.N2aVia1Click(Sender: TObject);
begin
  tab_principal.ActivePageIndex := 0;
end;

procedure Tfrmnotas_venda.BaixarInformaesdaECFDownloadMFD1Click
  (Sender: TObject);
begin
  frmecf_download := tfrmecf_download.create(self);
  frmecf_download.showmodal;
end;

procedure Tfrmnotas_venda.ProgramaTotalizardeRecebimento1Click(Sender: TObject);
var
  totalizador: string;
begin
  totalizador := INPUTBOX('Totalizador', 'Informe o nº do totalizador:', '3');
  ecf_programa_totalizador(ecf_modelo, totalizador);
end;

procedure Tfrmnotas_venda.combo_situacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    BFILTRO.SETFOCUS;
end;

procedure Tfrmnotas_venda.bcancelClick(Sender: TObject);
var
  caixa: boolean;
begin
  if frmmodulo.QRVENDA.FIELDBYNAME('SITUACAO').ASinteger = 2 then
  begin
    exit;
  end;
  // try

  caixa := true;
  frmmodulo.qrcaixa_operador.open;
  frmmodulo.qrcaixa_operador.Locate('codigo',
    frmmodulo.QRVENDA.FIELDBYNAME('codcaixa').AsString, [loCaseInsensitive]);
  if frmmodulo.QRVENDA.FIELDBYNAME('data').AsString <>
    frmmodulo.qrcaixa_operador.FIELDBYNAME('data').AsString then
  begin
    if APPLICATION.MESSAGEBOX
      ('Esta venda não foi feita nesta data! Deseja continuar?', 'Atenção',
      MB_YESNO + mb_iconwarning + MB_DEFBUTTON2) = idYes then
    begin
      caixa := true;
    end
    else
      exit;
  end
  else
  begin
    if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').ASinteger <> 1 then
    begin
      APPLICATION.MESSAGEBOX
        ('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!',
        'Atenção', mb_ok + mb_iconerror);
      exit;
    end;
  end;

  (* ------lançamento no caixa------ *)

  /// /  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
  frmmodulo.qrcaixa_mov.open;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
      frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
      frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('saida').ASFLOAT :=
      frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
      frmmodulo.QRVENDA.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT * (-1);
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
      frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 3;
    // venda em dinheiro
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
      'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
      .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;

  frmmodulo.qrcaixa_mov.open;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
      frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
      frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
      frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT * (-1);
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
      frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AV').AsString;

    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 5;
    // venda CHEQUE AV
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
      'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
      .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;
  frmmodulo.qrcaixa_mov.open;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
      frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
      frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
      frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT * (-1);
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
      frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 6;
    // venda CHEQUE AP
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
      'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
      .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;
  frmmodulo.qrcaixa_mov.open;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
      frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
      frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
      frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT * (-1);
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
      frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 7;
    // VENDA CARTAO CRED
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
      'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
      .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;
  frmmodulo.qrcaixa_mov.open;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
      frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
      frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
      frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT * (-1);
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
      frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 8;
    // venda CARTAO DEB
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
      'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
      .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;
  frmmodulo.qrcaixa_mov.open;
  if frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codigo').AsString :=
      frmPrincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codcaixa').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codoperador').AsString :=
      frmmodulo.QRVENDA.FIELDBYNAME('CODCAIXA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('data').AsString :=
      frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('valor').ASFLOAT :=
      frmmodulo.QRVENDA.FIELDBYNAME('MEIO_CREDIARIO').ASFLOAT * (-1);
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.FIELDBYNAME('codconta').AsString :=
      frmmodulo.qrconfig.FIELDBYNAME('PLANO_VENDA_AP').AsString;

    frmmodulo.qrcaixa_mov.FIELDBYNAME('movimento').ASinteger := 4;
    // venda CREDIARIO
    frmmodulo.qrcaixa_mov.FIELDBYNAME('historico').AsString :=
      'CANCELAMENTO Venda No. ' + frmmodulo.QRVENDA.FIELDBYNAME('CODIGO')
      .AsString + ' - ' + frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString;
    frmmodulo.qrcaixa_mov.post;
  end;

  (* ------final lancto  caixa------ *)

  frmmodulo.qrcontasreceber.Close;
  frmmodulo.qrcontasreceber.sql.clear;
  frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''
    + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
  frmmodulo.qrcontasreceber.open;
  frmmodulo.qrcontasreceber.First;

  while frmmodulo.qrcontasreceber.recordcount <> 0 do
  begin
    frmmodulo.qrcontasreceber.delete;
  end;

  frmmodulo.qrproduto_mov.Close;
  frmmodulo.qrproduto_mov.sql.clear;
  frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codnota = ''' +
    frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + ''' and codcliente = '''
    + frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString +
    ''' and movimento <> 9');
  frmmodulo.qrproduto_mov.open;
  frmmodulo.qrproduto_mov.First;
  frmmodulo.qrproduto.open;
  frmmodulo.qrgrade_produto.open;
  frmmodulo.qrserial_produto.open;
  while frmmodulo.qrproduto_mov.recordcount <> 0 do
  begin
    if frmmodulo.qrproduto.Locate('codigo',
      frmmodulo.qrproduto_mov.FIELDBYNAME('codproduto').AsString,
      [loCaseInsensitive]) then
    begin
      case frmmodulo.qrproduto_mov.FIELDBYNAME('movimento').ASinteger of
        2:
          begin // venda normal
            // grade
            if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> ''
            then
            begin
              frmmodulo.qrgrade_produto.Close;
              frmmodulo.qrgrade_produto.sql.clear;
              frmmodulo.qrgrade_produto.sql.add
                ('select * from c000021 where codigo = ''' +
                frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade')
                .AsString + '''');
              frmmodulo.qrgrade_produto.open;
              if frmmodulo.qrgrade_produto.RecNo = 1 then
              begin
                frmmodulo.qrgrade_produto.edit;
                frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT :=
                  frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT +
                  frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                frmmodulo.qrgrade_produto.post;
              end;
            end
            else
            begin // serial
              if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> ''
              then
              begin
                frmmodulo.qrserial_produto.Close;
                frmmodulo.qrserial_produto.sql.clear;
                frmmodulo.qrserial_produto.sql.add
                  ('select * from c000022 where serial = ''' +
                  frmmodulo.qrproduto_mov.FIELDBYNAME('serial')
                  .AsString + '''');
                frmmodulo.qrserial_produto.open;
                if frmmodulo.qrserial_produto.RecNo = 1 then
                begin
                  frmmodulo.qrserial_produto.edit;
                  frmmodulo.qrserial_produto.FIELDBYNAME('situacao')
                    .ASFLOAT := 1;
                  frmmodulo.qrserial_produto.FIELDBYNAME('cliente')
                    .AsString := '';
                  frmmodulo.qrserial_produto.FIELDBYNAME('codcliente')
                    .AsString := '';
                  frmmodulo.qrserial_produto.FIELDBYNAME('DATAVENDA')
                    .AsString := '';
                  frmmodulo.qrserial_produto.FIELDBYNAME('codvenda')
                    .AsString := '';
                  frmmodulo.qrserial_produto.FIELDBYNAME('precovenda')
                    .AsString := '';
                  frmmodulo.qrserial_produto.post;
                end;
              end;
            end;
          end;
        7:
          begin // devolucao do produto

            // grade
            if frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade').AsString <> ''
            then
            begin
              frmmodulo.qrgrade_produto.Close;
              frmmodulo.qrgrade_produto.sql.clear;
              frmmodulo.qrgrade_produto.sql.add
                ('select * from c000021 where codigo = ''' +
                frmmodulo.qrproduto_mov.FIELDBYNAME('codgrade')
                .AsString + '''');
              frmmodulo.qrgrade_produto.open;
              if frmmodulo.qrgrade_produto.RecNo = 1 then
              begin
                frmmodulo.qrgrade_produto.edit;
                frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT :=
                  frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').ASFLOAT -
                  frmmodulo.qrproduto_mov.FIELDBYNAME('qtde').ASFLOAT;
                frmmodulo.qrgrade_produto.post;
              end;
            end
            else
            begin // serial
              if frmmodulo.qrproduto_mov.FIELDBYNAME('serial').AsString <> ''
              then
              begin
                frmmodulo.qrserial_produto.Close;
                frmmodulo.qrserial_produto.sql.clear;
                frmmodulo.qrserial_produto.sql.add
                  ('select * from c000022 where serial = ''' +
                  frmmodulo.qrproduto_mov.FIELDBYNAME('serial')
                  .AsString + '''');
                frmmodulo.qrserial_produto.open;
                if frmmodulo.qrserial_produto.RecNo = 1 then
                begin
                  frmmodulo.qrserial_produto.edit;
                  frmmodulo.qrserial_produto.FIELDBYNAME('situacao')
                    .ASFLOAT := 2;
                  frmmodulo.qrserial_produto.post;
                end;
              end;
            end;
          end;
      end;
    end;
    frmmodulo.qrproduto_mov.delete;
  end;

  ltotal.value := ltotal.value - frmmodulo.QRVENDA.FIELDBYNAME('total').ASFLOAT;
  lqtde.value := lqtde.value - 1;

  if frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString <> '' then
  begin
    QUERY.Close;
    QUERY.sql.clear;
    QUERY.sql.add('delete from c000123 where codigo = ''' +
      frmmodulo.QRVENDA.FIELDBYNAME('cod_financeira_lancto').AsString + '''');
    QUERY.ExecSQL;
  end;

  frmPrincipal.log(codigo_usuario, 'VENDA',
    frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString, 'EXCLUIU',
    frmmodulo.QRVENDA.FIELDBYNAME('CLIENTE').AsString);
  frmmodulo.QRVENDA.edit;
  frmmodulo.QRVENDA.FIELDBYNAME('situacao').ASinteger := 2;
  frmmodulo.QRVENDA.post;

  frmmodulo.Conexao.Commit;

end;

procedure Tfrmnotas_venda.FecharCNFV1Click(Sender: TObject);
begin
  ecf_fecha_CNFV(ecf_modelo);
end;

procedure Tfrmnotas_venda.bcontratoClick(Sender: TObject);
begin
  frmcontrato_reserva := tfrmcontrato_reserva.create(self);
  // aqui
  // filtrar cliente
  frmcontrato_reserva.qrcliente.Close;
  frmcontrato_reserva.qrcliente.sql.clear;
  frmcontrato_reserva.qrcliente.sql.add('select * from c000007');
  frmcontrato_reserva.qrcliente.sql.add('where codigo = ''' +
    frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString + '''');
  frmcontrato_reserva.qrcliente.open;

  // produtos
  frmcontrato_reserva.qrproduto.Close;
  frmcontrato_reserva.qrproduto.sql.clear;
  frmcontrato_reserva.qrproduto.sql.add
    ('select c000032.*, c000025.produto from c000032, c000025');
  frmcontrato_reserva.qrproduto.sql.add
    ('where c000032.codproduto = c000025.codigo and CODnota = ''' +
    frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
  frmcontrato_reserva.qrproduto.sql.add('and data = :vdat');
  frmcontrato_reserva.qrproduto.Params.ParamByName('vdat').ASDATETIME :=
    frmmodulo.QRVENDA.FIELDBYNAME('data').ASDATETIME;
  frmcontrato_reserva.qrproduto.open;

  // prestacao
  frmcontrato_reserva.qrprestacao.Close;
  frmcontrato_reserva.qrprestacao.sql.clear;
  frmcontrato_reserva.qrprestacao.sql.add
    ('select * from c000049 where codvenda = ''' + frmmodulo.QRVENDA.FIELDBYNAME
    ('codigo').AsString + ''' and situacao = 1');
  frmcontrato_reserva.qrprestacao.open;

  // venda

  frmcontrato_reserva.QRVENDA.Close;
  frmcontrato_reserva.QRVENDA.sql.clear;
  frmcontrato_reserva.QRVENDA.sql.add('select * from c000048 where codigo = '''
    + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
  frmcontrato_reserva.QRVENDA.open;

  frmcontrato_reserva.showmodal;
end;

procedure Tfrmnotas_venda.AdvGlowButton2Click(Sender: TObject);
begin
  frmmodulo.qrcontasreceber.Close;
  frmmodulo.qrcontasreceber.sql.clear;
  frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = '''
    + frmmodulo.QRVENDA.FIELDBYNAME('codigo').AsString + '''');
  frmmodulo.qrcontasreceber.open;
  frmmodulo.qrcontasreceber.First;

  if (frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString <> 'S/CLIE') and
    (frmmodulo.QRVENDA.FIELDBYNAME('codcliente').AsString <> '') then
  begin
    frmmodulo.qrcliente.Close;
    frmmodulo.qrcliente.sql.clear;
    frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''' +
      frmmodulo.QRVENDA.FIELDBYNAME('CODCLIENTE').AsString + '''');
    frmmodulo.qrcliente.open;
    if frmmodulo.qrcliente.recordcount > 0 then
    begin
      frmnotas_venda_impressao := tfrmnotas_venda_impressao.create(self);
      frmnotas_venda_impressao.showmodal;
    end
    else
    begin
      APPLICATION.MESSAGEBOX
        ('Houve erro na procura do cliente! Impossível prosseguir!', 'Atenção',
        mb_ok + mb_iconerror);
      exit;
    end;
  end
  else
  begin
    frmnotas_venda_impressao := tfrmnotas_venda_impressao.create(self);
    frmnotas_venda_impressao.showmodal;
  end;
  frmmodulo.qrcliente.Close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007');
  frmmodulo.qrcliente.open;
end;

procedure Tfrmnotas_venda.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotas_venda.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmnotas_venda.E1Click(Sender: TObject);
var
  cod_venda, cliente, nao_fis: string;
  SITUACAO: string;

begin
  nao_fis := ' and substring(NUMERO_CUPOM_FISCAL from 1 for 1) = ''9''';
  if (ENUMERO.Text = '000000') or (ENUMERO.Text = '') then
    cod_venda := ''
  else
    cod_venda := ' and codigo = ''' + ENUMERO.Text + '''';
  if ecliente.Text = '' then
    cliente := ''
  else
    cliente := ' and codcliente = ''' + copy(ecliente.Text, 1, 6) + '''';

  if combo_situacao.ITEMINDEX = 0 then
    SITUACAO := '';
  if combo_situacao.ITEMINDEX = 1 then
    SITUACAO := ' and situacao = 1';
  if combo_situacao.ITEMINDEX = 2 then
    SITUACAO := ' and situacao = 2';

  QUERY.Close;
  QUERY.sql.clear;
  QUERY.sql.add
    ('SELECT SUM(TOTAL) TOTAL, COUNT(CODIGO) QTDE FROM C000048 WHERE DATA >= :DATAI AND DATA <= :DATAF'
    + nao_fis + cod_venda + cliente + SITUACAO);
  QUERY.Params.ParamByName('datai').ASDATETIME := DateEdit1.DATE;
  QUERY.Params.ParamByName('dataf').ASDATETIME := DateEdit2.DATE;
  QUERY.open;

  lqtde.value := QUERY.FIELDBYNAME('QTDE').ASinteger;
  ltotal.value := QUERY.FIELDBYNAME('TOTAL').ASFLOAT;

  frmmodulo.QRVENDA.Close;
  frmmodulo.QRVENDA.sql.clear;
  frmmodulo.QRVENDA.sql.add
    ('SELECT * FROM C000048 WHERE DATA >= :DATAI AND DATA <= :DATAF ' + nao_fis
    + cod_venda + cliente + SITUACAO + 'ORDER BY DATA, codigo');
  frmmodulo.QRVENDA.Params.ParamByName('datai').ASDATETIME := DateEdit1.DATE;
  frmmodulo.QRVENDA.Params.ParamByName('dataf').ASDATETIME := DateEdit2.DATE;
  frmmodulo.QRVENDA.open;
  frmmodulo.QRVENDA.INDEXFIELDNAMES := 'CODIGO';

  // parametro para procurar NF do PDV

  if frmmodulo.QRVENDA.recordcount = 0 then
  begin
    cod_venda := ' and NUMERO_CUPOM_FISCAL = ''' + ENUMERO.Text + '''';
    frmmodulo.QRVENDA.Close;
    frmmodulo.QRVENDA.sql.clear;
    frmmodulo.QRVENDA.sql.add
      ('SELECT * FROM C000048 WHERE DATA >= :DATAI AND DATA <= :DATAF ' +
      nao_fis + cod_venda + cliente + SITUACAO + 'ORDER BY DATA, codigo');
    frmmodulo.QRVENDA.Params.ParamByName('datai').ASDATETIME :=
      StrToDate('01/01/1960');
    frmmodulo.QRVENDA.Params.ParamByName('dataf').ASDATETIME :=
      StrToDate('31/12/2300');
    frmmodulo.QRVENDA.open;
    frmmodulo.QRVENDA.INDEXFIELDNAMES := 'CODIGO';
  end;

end;

end.
