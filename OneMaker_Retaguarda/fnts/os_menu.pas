unit os_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Buttons, Mask, TFlatPanelUnit, Wwkeycb, Menus, Grids, Wwdbigrd, Wwdbgrid, ImgList, DB,
  AdvGlowButton, RzEdit, RzBtnEdt, AdvMenus, AdvMenuStylers, AdvToolBar,
  AdvShapeButton, ZAbstractRODataset, ZAbstractDataset, ZDataset, UCBase,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, System.ImageList,
  JvExMask, JvToolEdit, frxClass, frxDBSet, frxExportPDF, ACBrBase, ACBrMail,inifiles;

type
  TfrmOs_menu = class(TForm)
    dsos: TDataSource;
    ImageList1: TImageList;
    wwDBGrid1: TwwDBGrid;
    PopupMenu1: TPopupMenu;
    N2aVia1: TMenuItem;
    CancelarVenda1: TMenuItem;
    CupomFiscal1: TMenuItem;
    Fechar1: TMenuItem;
    Filtro1: TMenuItem;
    LocalizarNmero1: TMenuItem;
    Relatrios2: TMenuItem;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ecliente: TRzButtonEdit;
    dateedit1: TJvDateEdit;
    dateedit2: TJvDateEdit;
    bfiltrar: TAdvGlowButton;
    combosituacao: TComboBox;
    Panel1: TPanel;
    Label8: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    AdvShapeButton2: TAdvShapeButton;
    AdvShapeButton3: TAdvShapeButton;
    Label6: TLabel;
    Label7: TLabel;
    loc: TwwIncrementalSearch;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Label1: TLabel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    menu_tabelas_fiscais: TAdvPopupMenu;
    ModelosdeNotasFiscais1: TMenuItem;
    CFOP1: TMenuItem;
    ClassesdeRecolhimento1: TMenuItem;
    N1: TMenuItem;
    MemorandodeExportao1: TMenuItem;
    N2: TMenuItem;
    Suprimento1: TMenuItem;
    Sangria1: TMenuItem;
    qrcliente2: TZQuery;
    bperiodico: TAdvGlowButton;
    qros_servico: TZQuery;
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
    qros_servicoCODSERVICO: TWideStringField;
    qros_servicoCODTECNICO: TWideStringField;
    qros_servicoDATA: TDateField;
    qros_servicoVALOR: TFloatField;
    qros_servicoCOMPLEMENTO: TWideStringField;
    qros_servicoSERVICO: TWideStringField;
    qros_servicoCODOS: TWideStringField;
    qros_servicoCODCLIENTE: TWideStringField;
    qros_servicoQTDE: TSingleField;
    qros_servicoUNITARIO: TSingleField;
    osenviar: TAdvGlowButton;
    qrapoio3: TZQuery;
    fsos: TfrxDBDataset;
    fsos_servico: TfrxDBDataset;
    fxos: TfrxReport;
    qros: TZQuery;
    qrosCODIGO: TWideStringField;
    dtfldDATA: TDateField;
    qrosCODATENDENTE: TWideStringField;
    qrosTIPO: TWideStringField;
    qrosCODCLIENTE: TWideStringField;
    qrosSOLICITANTE: TWideStringField;
    qrosMARCA: TWideStringField;
    qrosMODELO: TWideStringField;
    qrosSERIAL: TWideStringField;
    qrosATENDIMENTO: TWideStringField;
    qrosDEFEITO: TBlobField;
    qrosOBS: TBlobField;
    qrosDETECTADO: TBlobField;
    dtfldDETECTADO_DATA: TDateField;
    qrosDETECTADO_CODTECNICO: TWideStringField;
    qrosSITUACAO: TWideStringField;
    dtfldCONCLUSAO_DATA: TDateField;
    dtfldCONCLUSAO_ENTREGUE: TDateField;
    qrosRETIRADO_POR: TWideStringField;
    qrosSERVICO_SUBTOTAL: TFloatField;
    qrosSERVICO_DESCONTO: TFloatField;
    qrosSERVICO_TOTAL: TFloatField;
    qrosPRODUTO_SUBTOTAL: TFloatField;
    qrosPRODUTO_DESCONTO: TFloatField;
    qrosPRODUTO_TOTAL: TFloatField;
    qrosCODVEICULO: TWideStringField;
    qrosKM_INICIAL: TIntegerField;
    qrosKM_FINAL: TIntegerField;
    qrosDESLOC_COMBUSTIVEL: TFloatField;
    qrosDESLOC_REFEICAO: TFloatField;
    qrosDESLOC_HOSPEDAGEM: TFloatField;
    qrosDESLOC_TOTAL: TFloatField;
    qrosCODTERCEIRO: TWideStringField;
    qrosTERCEIRO_CONTATO: TWideStringField;
    qrosTERCEIRO_VALOR: TFloatField;
    qrosTERCEIRO_COMISSAO: TFloatField;
    qrosTERCEIRO_TOTAL: TFloatField;
    qrosTERCEIRO_OBS: TBlobField;
    qrosSUBTOTAL: TFloatField;
    qrosDESCONTO: TFloatField;
    qrosACRESCIMO: TFloatField;
    qrosTOTAL: TFloatField;
    qrosMEIO_DINHEIRO: TFloatField;
    qrosMEIO_CHEQUEAV: TFloatField;
    qrosMEIO_CHEQUEAP: TFloatField;
    qrosMEIO_CARTAOCRED: TFloatField;
    qrosMEIO_CARTAODEB: TFloatField;
    qrosMEIO_CREDIARIO: TFloatField;
    qrosCODSETOR: TWideStringField;
    qrosCUPOMFISCAL: TIntegerField;
    qrosST: TIntegerField;
    qrosCHASSI: TWideStringField;
    qrosCOR: TWideStringField;
    qrosCOMBUSTIVEL: TWideStringField;
    qrosCOMBUSTIVEL_NIVEL: TFloatField;
    qrosNUMERO_CUPOM_FISCAL: TIntegerField;
    qrosCODCAIXA: TWideStringField;
    qrosDETECTADO_HORA: TWideStringField;
    qrosHORA: TWideStringField;
    qrosINTERVENCOES: TBlobField;
    qrosDAV: TWideStringField;
    qrosDAV_IMPRESSO: TIntegerField;
    qrosDAV_ATUAL: TWideStringField;
    qrosCODFUN: TWideStringField;
    QrOS_Email: TZQuery;
    exp_PDF: TfrxPDFExport;
    ACBrMail1: TACBrMail;
    qros_produto: TZQuery;
    qros_produtoCODNOTA: TWideStringField;
    qros_produtoCODPRODUTO: TWideStringField;
    qros_produtoUNITARIO: TFloatField;
    qros_produtoTOTAL: TFloatField;
    qros_produtoUNIDADE: TWideStringField;
    qros_produtoSERIAL: TWideStringField;
    qros_produtoQTDE: TFloatField;
    qros_produtoPRODUTO: TWideStringField;
    fsos_produto: TfrxDBDataset;
    fsos_receber: TfrxDBDataset;
    fsos_servico_AUTO: TfrxDBDataset;
    qroscliente: TStringField;
    qroscliente_endereco: TStringField;
    qroscliente_bairro: TStringField;
    qroscliente_cidade: TStringField;
    qroscliente_uf: TStringField;
    qroscliente_cep: TStringField;
    qroscliente_telefone: TStringField;
    qroscliente_cpf: TStringField;
    qroscliente_rg: TStringField;
    qrosatendente: TStringField;
    qrosdetectado_tecnico: TStringField;
    qrossetor: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure combosituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure ECLIENTEKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure LocalizarNmero1Click(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure Filtro1Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure brelatorioClick(Sender: TObject);
    procedure locEnter(Sender: TObject);
    procedure wwIncrementalSearch1Enter(Sender: TObject);
    procedure dateedit2KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteButtonClick(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure LMDButton1Click(Sender: TObject);
    procedure ModelosdeNotasFiscais1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure ClassesdeRecolhimento1Click(Sender: TObject);
    procedure MemorandodeExportao1Click(Sender: TObject);
    procedure Suprimento1Click(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure dateedit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure bperiodicoClick(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure osenviarClick(Sender: TObject);
  private
    { Private declarations }
    function LeInistr(arquivo, sessao, chave, padrao: string): string;
  public
    { Public declarations }
   procedure  AjustarParametrosdeEnvioEmail(Destinatario: String);
  end;

var
  frmOs_menu: TfrmOs_menu;
    const
   sc_DragMove = $f012;
implementation

uses modulo, principal, loc_cliente, os, os_auto, os_ecf, lista_os,
  xloc_cliente, os_servicosperiodicos, notas_venda_ecf_leituraMemoria,
  suprimentocaixa, sangriacaixa, ecf, mensagem;

{$R *.dfm}

procedure TfrmOs_menu.FormShow(Sender: TObject);
begin



  FRMMODULO.QRCLIENTE.CLOSE;
  FRMMODULO.QRCLIENTE.SQL.CLEAR;
  FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 ORDER BY NOME');
  FRMMODULO.QRCLIENTE.OPEN;

  FRMMODULO.QRSERVICO.CLOSE;
  FRMMODULO.QRSERVICO.SQL.CLEAR;
  FRMMODULO.QRSERVICO.SQL.ADD('select * from c000011');
  FRMMODULO.QRSERVICO.OPEN;

  dateedit1.TEXT := '01/01/0001';
  dateedit2.TEXT := '01/01/9999';

  ecliente.TEXT := '';
  combosituacao.ItemIndex := 0;

  FRMMODULO.cdsos.CLOSE;
  //FRMMODULO.sdsos.CommandText.add
  FRMMODULO.sdsos.CommandText :=
    'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''
    + combosituacao.TEXT + '%'' ORDER BY CODIGO';
    FRMMODULO.cdsos.FetchParams;
  FRMMODULO.cdsos.Params.ParamByName('DATAI').asdatetime := dateedit1.date;
  FRMMODULO.cdsos.Params.ParamByName('DATAF').asdatetime := dateedit2.date;

  FRMMODULO.cdsos.OPEN;

end;

procedure TfrmOs_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmOs_menu.combosituacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dateedit1.SETFOCUS;
end;

procedure TfrmOs_menu.ECLIENTEKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ecliente.TEXT <> '' then
    begin
      qrcliente2.CLOSE;
      qrcliente2.SQL.CLEAR;
      qrcliente2.SQL.ADD('select * from c000007 where codigo = ''' +
        frmprincipal.zerarcodigo(copy(ecliente.TEXT, 1, 6), 6) + '''');
      qrcliente2.OPEN;
      if qrcliente2.RecordCount > 0 then
      begin
        if qrcliente2.RecordCount = 1 then
        begin
          ecliente.TEXT := qrcliente2.fieldbyname('codigo').asstring + ' ' +
            qrcliente2.fieldbyname('nome').asstring;
          combosituacao.SETFOCUS;
        end
        else
        begin
          resultado_pesquisa1 := '';
          parametro_pesquisa :=
            'select * from c000007 where upper(nome) like ''' +
            ansiuppercase(ecliente.TEXT) + '%'' order by nome';
          frmxloc_cliente := tfrmxloc_cliente.create(self);
          frmxloc_cliente.showmodal;
          if resultado_pesquisa1 <> '' then
          begin
            ecliente.TEXT := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
            combosituacao.SETFOCUS;

          end;
        end;
      end
      else
      begin
        application.messagebox('Cliente não encontrado!', 'Atenção',
          mb_ok + mb_iconerror);
        resultado_pesquisa1 := '';
        parametro_pesquisa := '';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.TEXT := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
          combosituacao.SETFOCUS;

        end;

      end;
    end
    else
      eclienteButtonClick(frmOs_menu);

  end;
end;

procedure TfrmOs_menu.DateEdit1Enter(Sender: TObject);
begin
  TEDIT(Sender).COLOR := $00A0FAF8;
  if dateedit1.TEXT = '  /  /    ' then
    dateedit1.date := date;
end;

procedure TfrmOs_menu.DateEdit2Enter(Sender: TObject);
begin
  TEDIT(Sender).COLOR := $00A0FAF8;
  if dateedit2.TEXT = '  /  /    ' then
    dateedit2.date := date;
end;

procedure TfrmOs_menu.DateEdit1Exit(Sender: TObject);
begin
  TEDIT(Sender).COLOR := CLWINDOW;
end;

procedure TfrmOs_menu.DateEdit2Exit(Sender: TObject);
begin
  TEDIT(Sender).COLOR := CLWINDOW;
end;

procedure TfrmOs_menu.bfecharClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmOs_menu.bincluirClick(Sender: TObject);
begin
  {FRMMODULO.cdsos..append;
  FRMMODULO.cdsos..fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000051');
  FRMMODULO.cdsos..fieldbyname('data').asdatetime := date;
  FRMMODULO.cdsos..fieldbyname('situacao').asstring :=
    'ABERTA - Aguardando Confirmação';
  FRMMODULO.cdsos..fieldbyname('cupomfiscal').asinteger := 0;
  FRMMODULO.cdsos..fieldbyname('TIPO').asstring := 'INTERNA';
  FRMMODULO.cdsos..fieldbyname('ATENDIMENTO').asstring := 'AVULSO'; }

  FRMMODULO.cdsos.Append ;
    FRMMODULO.cdsos.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000051');
  FRMMODULO.cdsos.fieldbyname('data').asdatetime := date;
  FRMMODULO.cdsos.fieldbyname('situacao').asstring :=
    'ABERTA - Aguardando Confirmação';
  FRMMODULO.cdsos.fieldbyname('cupomfiscal').asinteger := 0;
  FRMMODULO.cdsos.fieldbyname('TIPO').asstring := 'INTERNA';
  FRMMODULO.cdsos.fieldbyname('ATENDIMENTO').asstring := 'AVULSO';
  cupom_fiscal := false;
  lancando_contasreceber := false;

 // frmprincipal.logUC('Incluiu OS', 1);

 // if ramo = 1 then
   frmos := tfrmos.create(self);
//  if ramo = 1 then
    frmos.showmodal;
 // if ramo = 3 then
  //  frmos_auto := tfrmos_auto.create(self);
 // if ramo = 3 then
 //   frmos_auto.showmodal;



end;

procedure TfrmOs_menu.locKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    wwDBGrid1.SETFOCUS;
end;

procedure TfrmOs_menu.LocalizarNmero1Click(Sender: TObject);
begin
  loc.SETFOCUS;
end;

procedure TfrmOs_menu.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmOs_menu.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmOs_menu.AjustarParametrosdeEnvioEmail(Destinatario: String);
var
   // mudanca pra salvar na pasta dll
  caminho :string;
begin
 // mudanca pra salvar na pasta dll
  caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini';
  self.ACBrMail1.Host     := LeInistr(caminho, 'Email', 'HostOrc', '');
  self.ACBrMail1.Username := LeInistr(caminho, 'Email', 'UserOrc', '');
  self.ACBrMail1.Password := LeInistr(caminho, 'Email', 'PassOrc', '');
  self.ACBrMail1.Port     := LeInistr(caminho, 'Email', 'PortOrc', ''); // troque pela porta do seu servidor smtp
  self.ACBrMail1.SetTLS   := true ;  // Verifique se o seu servidor necessita SSL
  self.ACBrMail1.SetSSL   :=  True;  // Verifique se o seu servidor necessita SSL
  self.aCBrMail1.From     :=  LeInistr(caminho, 'Email', 'PadraoOrc', '');
  self.ACBrMail1.FromName :=  LeInistr(caminho, 'Email', 'PadraoOrc', '');
  self.ACBrMail1.AddAddress(Destinatario);
  self.ACBrMail1.UseThread := False;

end;

procedure TfrmOs_menu.balterarClick(Sender: TObject);
begin
  if FRMMODULO.cdsos.fieldbyname('situacao').asstring = 'FECHADA' then
  begin
    application.messagebox
      ('Esta Ordem de Serviço está fechada! Impossível alterá-la', 'Atenção',
      mb_ok + MB_ICONWARNING);
    wwDBGrid1.SETFOCUS;
    exit;
  end
  else
  begin
    cupom_fiscal := false;
    if ramo = 1 then
    begin

     try
  frmos:= Tfrmos.Create(nil);
   FRMMODULO.cdsos.edit;
   frmos.Showmodal;

 finally
   FreeAndNil(frmos);
 end;
    //  frmos := tfrmos.create(self);
    //  FRMMODULO.cdsos..edit;
    //  frmos.showmodal;
    end;

    if ramo = 3 then
    begin
      frmos_auto := tfrmos_auto.create(self);
      FRMMODULO.cdsos.edit;
      frmos_auto.showmodal;
    end;

    frmprincipal.logUC('Alterou OS Nr: ' + FRMMODULO.cdsos.fieldbyname('codigo')
      .asstring + ' Cliente: ' + FRMMODULO.cdsos.fieldbyname('cliente')
      .asstring, 2);


  end;

end;

procedure TfrmOs_menu.bexcluirClick(Sender: TObject);
var
  caixa: boolean;
begin

  try

    if not frmprincipal.autentica('Excluir O.S.', 4) then
    begin
      application.messagebox('Desculpe! Seu acesso não foi autorizado!',
        'Aviso', mb_ok + mb_iconerror);
      exit;
    end
    else
    begin
      caixa := true;
      FRMMODULO.qrcaixa_operador.OPEN;
      FRMMODULO.qrcaixa_operador.Locate('codigo',
        FRMMODULO.cdsos.fieldbyname('codcaixa').asstring, [loCaseInsensitive]);
      if FRMMODULO.cdsos.fieldbyname('st').asinteger = 4 then
      begin
        if FRMMODULO.cdsos.fieldbyname('CONCLUSAO_DATA').asstring <>
          FRMMODULO.qrcaixa_operador.fieldbyname('data').asstring then
        begin
          if application.messagebox
            ('Esta O.S. não foi feita nesta data! Não será possível fazer lançamento no caixa. Deseja continuar?',
            'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
          begin
            caixa := false;
          end
          else
            exit;
        end;
      end;

      if FRMMODULO.cdsos.fieldbyname('COMBUSTIVEL').asstring <> 'CAIXA_NAO' then
      begin
        if FRMMODULO.qrcaixa_operador.fieldbyname('situacao').asinteger = 4 then
        begin
          application.messagebox
            ('O caixa que efetuou esta venda está fechado! Impossível efetuar o cancelamento!',
            'Atenção', mb_ok + mb_iconerror);
          exit;
        end;

        if caixa then
        begin

          (* ------lançamento no caixa------ *)

          /// /  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
          FRMMODULO.qrcaixa_mov.OPEN;
          if FRMMODULO.cdsos.fieldbyname('MEIO_DINHEIRO').ASFLOAT <> 0 then
          begin
            FRMMODULO.qrcaixa_mov.insert;
            FRMMODULO.qrcaixa_mov.fieldbyname('codigo').asstring :=
              frmprincipal.codifica('000044');
            FRMMODULO.qrcaixa_mov.fieldbyname('codcaixa').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('codoperador').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('data').asstring :=
              FRMMODULO.qrcaixa_operador.fieldbyname('DATA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('saida').ASFLOAT :=
              FRMMODULO.cdsos.fieldbyname('MEIO_DINHEIRO').ASFLOAT;
            FRMMODULO.qrcaixa_mov.fieldbyname('valor').ASFLOAT :=
              FRMMODULO.cdsos.fieldbyname('MEIO_DINHEIRO').ASFLOAT * (-1);
            FRMMODULO.qrconfig.OPEN;
            FRMMODULO.qrcaixa_mov.fieldbyname('codconta').asstring :=
              FRMMODULO.qrconfig.fieldbyname('PLANO_OS_AV').asstring;

            FRMMODULO.qrcaixa_mov.fieldbyname('movimento').asinteger := 18;
            // venda em dinheiro
            FRMMODULO.qrcaixa_mov.fieldbyname('historico').asstring :=
              'CANCELAMENTO O.S. No. ' + FRMMODULO.cdsos.fieldbyname('CODIGO')
              .asstring + ' - ' + FRMMODULO.cdsos.fieldbyname('CLIENTE')
              .asstring;
            FRMMODULO.qrcaixa_mov.post;
          end;

          FRMMODULO.qrcaixa_mov.OPEN;
          if FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEAV').ASFLOAT <> 0 then
          begin
            FRMMODULO.qrcaixa_mov.insert;
            FRMMODULO.qrcaixa_mov.fieldbyname('codigo').asstring :=
              frmprincipal.codifica('000044');
            FRMMODULO.qrcaixa_mov.fieldbyname('codcaixa').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('codoperador').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('data').asstring :=
              FRMMODULO.qrcaixa_operador.fieldbyname('DATA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('valor').ASFLOAT :=
              FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEAV').ASFLOAT * (-1);
            FRMMODULO.qrconfig.OPEN;
            FRMMODULO.qrcaixa_mov.fieldbyname('codconta').asstring :=
              FRMMODULO.qrconfig.fieldbyname('PLANO_OS_AV').asstring;

            FRMMODULO.qrcaixa_mov.fieldbyname('movimento').asinteger := 20;
            // venda CHEQUE AV
            FRMMODULO.qrcaixa_mov.fieldbyname('historico').asstring :=
              'CANCELAMENTO O.S. No. ' + FRMMODULO.cdsos.fieldbyname('CODIGO')
              .asstring + ' - ' + FRMMODULO.cdsos.fieldbyname('CLIENTE')
              .asstring;
            FRMMODULO.qrcaixa_mov.post;
          end;
          FRMMODULO.qrcaixa_mov.OPEN;
          if FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEAP').ASFLOAT <> 0 then
          begin
            FRMMODULO.qrcaixa_mov.insert;
            FRMMODULO.qrcaixa_mov.fieldbyname('codigo').asstring :=
              frmprincipal.codifica('000044');
            FRMMODULO.qrcaixa_mov.fieldbyname('codcaixa').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('codoperador').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('data').asstring :=
              FRMMODULO.qrcaixa_operador.fieldbyname('DATA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('valor').ASFLOAT :=
              FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEAP').ASFLOAT * (-1);
            FRMMODULO.qrconfig.OPEN;
            FRMMODULO.qrcaixa_mov.fieldbyname('codconta').asstring :=
              FRMMODULO.qrconfig.fieldbyname('PLANO_OS_AP').asstring;

            FRMMODULO.qrcaixa_mov.fieldbyname('movimento').asinteger := 21;
            // venda CHEQUE AP
            FRMMODULO.qrcaixa_mov.fieldbyname('historico').asstring :=
              'CANCELAMENTO O.S. No. ' + FRMMODULO.cdsos.fieldbyname('CODIGO')
              .asstring + ' - ' + FRMMODULO.cdsos.fieldbyname('CLIENTE')
              .asstring;
            FRMMODULO.qrcaixa_mov.post;
          end;
          FRMMODULO.qrcaixa_mov.OPEN;
          if FRMMODULO.cdsos.fieldbyname('MEIO_CARTAOCRED').ASFLOAT <> 0 then
          begin
            FRMMODULO.qrcaixa_mov.insert;
            FRMMODULO.qrcaixa_mov.fieldbyname('codigo').asstring :=
              frmprincipal.codifica('000044');
            FRMMODULO.qrcaixa_mov.fieldbyname('codcaixa').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('codoperador').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('data').asstring :=
              FRMMODULO.qrcaixa_operador.fieldbyname('DATA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('valor').ASFLOAT :=
              FRMMODULO.cdsos.fieldbyname('MEIO_CARTAOCRED').ASFLOAT * (-1);
            FRMMODULO.qrconfig.OPEN;
            FRMMODULO.qrcaixa_mov.fieldbyname('codconta').asstring :=
              FRMMODULO.qrconfig.fieldbyname('PLANO_OS_AP').asstring;

            FRMMODULO.qrcaixa_mov.fieldbyname('movimento').asinteger := 22;
            // VENDA CARTAO CRED
            FRMMODULO.qrcaixa_mov.fieldbyname('historico').asstring :=
              'CANCELAMENTO O.S. No. ' + FRMMODULO.cdsos.fieldbyname('CODIGO')
              .asstring + ' - ' + FRMMODULO.cdsos.fieldbyname('CLIENTE')
              .asstring;
            FRMMODULO.qrcaixa_mov.post;
          end;
          FRMMODULO.qrcaixa_mov.OPEN;
          if FRMMODULO.cdsos.fieldbyname('MEIO_CARTAODEB').ASFLOAT <> 0 then
          begin
            FRMMODULO.qrcaixa_mov.insert;
            FRMMODULO.qrcaixa_mov.fieldbyname('codigo').asstring :=
              frmprincipal.codifica('000044');
            FRMMODULO.qrcaixa_mov.fieldbyname('codcaixa').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('codoperador').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('data').asstring :=
              FRMMODULO.qrcaixa_operador.fieldbyname('DATA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('valor').ASFLOAT :=
              FRMMODULO.cdsos.fieldbyname('MEIO_CARTAODEB').ASFLOAT * (-1);
            FRMMODULO.qrconfig.OPEN;
            FRMMODULO.qrcaixa_mov.fieldbyname('codconta').asstring :=
              FRMMODULO.qrconfig.fieldbyname('PLANO_OS_AP').asstring;

            FRMMODULO.qrcaixa_mov.fieldbyname('movimento').asinteger := 23;
            // venda CARTAO DEB
            FRMMODULO.qrcaixa_mov.fieldbyname('historico').asstring :=
              'CANCELAMENTO O.S. No. ' + FRMMODULO.cdsos.fieldbyname('CODIGO')
              .asstring + ' - ' + FRMMODULO.cdsos.fieldbyname('CLIENTE')
              .asstring;
            FRMMODULO.qrcaixa_mov.post;
          end;
          FRMMODULO.qrcaixa_mov.OPEN;
          if FRMMODULO.cdsos.fieldbyname('MEIO_CREDIARIO').ASFLOAT <> 0 then
          begin
            FRMMODULO.qrcaixa_mov.insert;
            FRMMODULO.qrcaixa_mov.fieldbyname('codigo').asstring :=
              frmprincipal.codifica('000044');
            FRMMODULO.qrcaixa_mov.fieldbyname('codcaixa').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('codoperador').asstring :=
              FRMMODULO.cdsos.fieldbyname('CODCAIXA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('data').asstring :=
              FRMMODULO.qrcaixa_operador.fieldbyname('DATA').asstring;
            FRMMODULO.qrcaixa_mov.fieldbyname('valor').ASFLOAT :=
              FRMMODULO.cdsos.fieldbyname('MEIO_CREDIARIO').ASFLOAT * (-1);
            FRMMODULO.qrconfig.OPEN;
            FRMMODULO.qrcaixa_mov.fieldbyname('codconta').asstring :=
              FRMMODULO.qrconfig.fieldbyname('PLANO_OS_AP').asstring;

            FRMMODULO.qrcaixa_mov.fieldbyname('movimento').asinteger := 19;
            // venda CREDIARIO
            FRMMODULO.qrcaixa_mov.fieldbyname('historico').asstring :=
              'CANCELAMENTO O.S. No. ' + FRMMODULO.cdsos.fieldbyname('CODIGO')
              .asstring + ' - ' + FRMMODULO.cdsos.fieldbyname('CLIENTE')
              .asstring;
            FRMMODULO.qrcaixa_mov.post;
          end;
        end;
      end;

      (* ------final lancto  caixa------ *)

      FRMMODULO.qrcontasreceber.CLOSE;
      FRMMODULO.qrcontasreceber.SQL.CLEAR;
      FRMMODULO.qrcontasreceber.SQL.ADD
        ('select * from c000049 where codvenda = ''' +
        FRMMODULO.cdsos.fieldbyname('codigo').asstring + 's''');
      FRMMODULO.qrcontasreceber.OPEN;
      FRMMODULO.qrcontasreceber.First;
      while FRMMODULO.qrcontasreceber.RecordCount <> 0 do
      begin
        FRMMODULO.qrcontasreceber_pgto.CLOSE;
        FRMMODULO.qrcontasreceber_pgto.SQL.CLEAR;
        FRMMODULO.qrcontasreceber_pgto.SQL.ADD
          ('select * from c000050 where codconta = ''' +
          FRMMODULO.qrcontasreceber.fieldbyname('codigo').asstring + '''');
        FRMMODULO.qrcontasreceber_pgto.OPEN;
        if FRMMODULO.qrcontasreceber_pgto.RecordCount > 0 then
        begin
          application.messagebox
            ('Esta venda possue prestações que foram efetuados recebimentos! Impossível continuar com o cancelamento!',
            'Atenção', mb_ok + mb_iconerror);
          FRMMODULO.Conexao.Rollback;
          exit;
        end;
        FRMMODULO.qrcontasreceber.delete;
      end;

      FRMMODULO.qrproduto_mov.CLOSE;
      FRMMODULO.qrproduto_mov.SQL.CLEAR;
      FRMMODULO.qrproduto_mov.SQL.ADD('select * from c000032 where codnota = '''
        + FRMMODULO.cdsos.fieldbyname('codigo').asstring +
        ''' and codcliente = ''' + FRMMODULO.cdsos.fieldbyname('codcliente')
        .asstring + ''' and movimento = 9');
      FRMMODULO.qrproduto_mov.OPEN;
      FRMMODULO.qrproduto_mov.First;
      FRMMODULO.qrproduto.OPEN;
      FRMMODULO.qrgrade_produto.OPEN;
      FRMMODULO.qrserial_produto.OPEN;
      while FRMMODULO.qrproduto_mov.RecordCount <> 0 do
      begin
        if FRMMODULO.qrproduto.Locate('codigo',
          FRMMODULO.qrproduto_mov.fieldbyname('codproduto').asstring,
          [loCaseInsensitive]) then
        begin

          // grade
          if FRMMODULO.qrproduto_mov.fieldbyname('codgrade').asstring <> '' then
          begin
            if FRMMODULO.qrgrade_produto.Locate('codigo',
              FRMMODULO.qrproduto_mov.fieldbyname('codgrade').asstring,
              [loCaseInsensitive]) then
            begin
              FRMMODULO.qrgrade_produto.edit;
              FRMMODULO.qrgrade_produto.fieldbyname('estoque').ASFLOAT :=
                FRMMODULO.qrgrade_produto.fieldbyname('estoque').ASFLOAT +
                FRMMODULO.qrproduto_mov.fieldbyname('qtde').ASFLOAT;
              FRMMODULO.qrgrade_produto.post;
            end;
          end
          else
          begin // serial
            if FRMMODULO.qrproduto_mov.fieldbyname('serial').asstring <> '' then
            begin
              if FRMMODULO.qrserial_produto.Locate('serial',
                FRMMODULO.qrproduto_mov.fieldbyname('serial').asstring,
                [loCaseInsensitive]) then
              begin
                FRMMODULO.qrserial_produto.edit;
                FRMMODULO.qrserial_produto.fieldbyname('situacao').ASFLOAT := 1;
                FRMMODULO.qrserial_produto.fieldbyname('cliente')
                  .asstring := '';
                FRMMODULO.qrserial_produto.fieldbyname('codcliente')
                  .asstring := '';
                FRMMODULO.qrserial_produto.fieldbyname('DATAVENDA')
                  .asstring := '';
                FRMMODULO.qrserial_produto.fieldbyname('codvenda')
                  .asstring := '';
                FRMMODULO.qrserial_produto.fieldbyname('precovenda')
                  .asstring := '';
                FRMMODULO.qrserial_produto.post;
              end;
            end;
          end;

        end;
        FRMMODULO.qrproduto_mov.delete;
      end;

      frmprincipal.logUC('Excluiu OS Nr: ' + FRMMODULO.cdsos.fieldbyname
        ('codigo').asstring + ' Cliente: ' + FRMMODULO.cdsos.fieldbyname
        ('cliente').asstring, 3);

      FRMMODULO.cdsos.delete;
      FRMMODULO.Conexao.Commit;
    end;
  except
    showmessage('A operação gerou erros! O processamento foi interrompido.');
    FRMMODULO.Conexao.Rollback;
  end;

end;

procedure TfrmOs_menu.Filtro1Click(Sender: TObject);
begin
  dateedit1.SETFOCUS;
end;

procedure TfrmOs_menu.wwDBGrid1DblClick(Sender: TObject);
begin
  if FRMMODULO.cdsos.fieldbyname('situacao').asstring = 'FECHADA' then
  begin
    if ramo = 1 then
    begin
      FRMMODULO.cdsos.edit;
      frmos := tfrmos.create(self);
      frmos.BGRAVAR.VISIBLE := false;
      frmos.BCANCELAR.CAPTION := 'Fechar';
      frmos.showmodal;
    end;

    if ramo = 3 then
    begin
      FRMMODULO.cdsos.edit;
      frmos_auto := tfrmos_auto.create(self);
      frmos_auto.BGRAVAR.VISIBLE := false;
      frmos_auto.BCANCELAR.CAPTION := 'Fechar';
      frmos_auto.showmodal;
    end;

  end
  else
  begin
    if ramo = 1 then
    begin
      frmos := tfrmos.create(self);
      FRMMODULO.cdsos.edit;
      frmos.showmodal;
    end;

    if ramo = 3 then
    begin
      frmos_auto := tfrmos_auto.create(self);
      FRMMODULO.cdsos.edit;
      frmos_auto.showmodal;
    end;

  end;
end;

procedure TfrmOs_menu.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    wwDBGrid1DblClick(frmOs_menu);
end;

procedure TfrmOs_menu.brelatorioClick(Sender: TObject);
begin
  frmlista_os := tfrmlista_os.create(self);
  frmlista_os.show;
end;

procedure TfrmOs_menu.locEnter(Sender: TObject);
begin
  FRMMODULO.cdsos.INDEXFIELDNAMES := 'CODIGO';
end;

procedure TfrmOs_menu.wwIncrementalSearch1Enter(Sender: TObject);
begin
  FRMMODULO.cdsos.INDEXFIELDNAMES := 'SERIAL';
end;

procedure TfrmOs_menu.dateedit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltrar.SETFOCUS;
end;

procedure TfrmOs_menu.eclienteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := '';
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ecliente.TEXT := resultado_pesquisa1 + ' ' + resultado_pesquisa2;

  end;
  combosituacao.SETFOCUS;
end;

procedure TfrmOs_menu.bfiltrarClick(Sender: TObject);
begin
  FRMMODULO.cdsos.CLOSE;
  //FRMMODULO.cdsos.SQL.CLEAR;
  if combosituacao.TEXT = 'TODAS' then
  begin
    if ecliente.TEXT = '' then
        FRMMODULO.sdsos.CommandText:=
        'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF ORDER BY CODIGO'
    else
       FRMMODULO.sdsos.CommandText:=
        'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and codcliente = '''
        + copy(ecliente.TEXT, 1, 6) + ''' ORDER BY CODIGO';
  end
  else
  begin
    if ecliente.TEXT = '' then
        FRMMODULO.sdsos.CommandText:=
        'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''
        + combosituacao.TEXT + '%'' ORDER BY CODIGO'
    else
        FRMMODULO.sdsos.CommandText:=
        'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''
        + combosituacao.TEXT + '%'' and codcliente = ''' + copy(ecliente.TEXT,
        1, 6) + ''' ORDER BY CODIGO';
  end;
      FRMMODULO.cdsos.FetchParams;
  FRMMODULO.cdsos.Params.ParamByName('datai').asdatetime := dateedit1.date;
  FRMMODULO.cdsos.Params.ParamByName('dataf').asdatetime := dateedit2.date;

  FRMMODULO.cdsos.OPEN;

  wwDBGrid1.SETFOCUS;
end;

function TfrmOs_menu.LeInistr(arquivo, sessao, chave, padrao: string): string;
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.create(arquivo);
  try
    RESULT := ArqIni.ReadString(sessao, chave, padrao);
  finally
    ArqIni.Free;
  end;
end;

procedure TfrmOs_menu.LMDButton1Click(Sender: TObject);
begin
  frmos_servicosperiodicos := tfrmos_servicosperiodicos.create(self);
  frmos_servicosperiodicos.showmodal;
end;

procedure TfrmOs_menu.ModelosdeNotasFiscais1Click(Sender: TObject);
begin
  ecf_leitura_x(ecf_modelo);
end;

procedure TfrmOs_menu.osenviarClick(Sender: TObject);
var
caminho,sXML,edtSmtpHost,Para :string;
mensagem : TStringList;
begin
  frmmodulo.qrcontasreceber.close;
  frmmodulo.qrcontasreceber.sql.clear;
  frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' + FRMMODULO.cdsos.FIELDBYNAME('CODIGO').ASSTRING + 's'' ');
  frmmodulo.qrcontasreceber.open;

  qros_produto.Close;
  qros_produto.sql.clear;
  qros_produto.SQL.Add('select c.CODNOTA,  c.CODPRODUTO, c.UNITARIO, c.TOTAL, c.UNIDADE , c.SERIAL, c.QTDE , p.produto from c000032 c ');
  qros_produto.SQL.Add('inner join C000025 p on (c.CODPRODUTO = p.CODIGO) where c.CODNOTA = :CODNOTA');
  qros_produto.Params.ParamByName('CODNOTA').AsString := FRMMODULO.cdsos.FIELDBYNAME('CODIGO').ASSTRING;
  qros_produto.Open;

  if RAMO = 1 then
  begin
    fxos.LoadFromFile('\OneMaker\server\rel\f000065.fr3');
     fxos.ShowReport;
  end;
  if RAMO = 3 then
  begin

    fxos.LoadFromFile('\OneMaker\server\rel\f000067.fr3');
     fxos.ShowReport;
  end;

   caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini';

  // se nao existir caminho do PDF cria
  if not DirectoryExists('c:\OneMaker\Server\PDF') then
  begin
    ForceDirectories('c:\OneMaker\server\PDF');
  end;

  exp_PDF.FileName := frmmodulo.CDSosCODIGO.asstring + 'os.pdf';
  exp_PDF.DefaultPath := 'C:\OneMaker\Server\PDF\';
  exp_PDF.ShowDialog := FALSE;
  exp_PDF.ShowProgress := FALSE;
  exp_PDF.OverwritePrompt := FALSE;
  fxos.Export(exp_PDF);

  sXML := exp_PDF.DefaultPath + exp_PDF.FileName;

  application.ProcessMessages;



  frmmodulo.qrconfig.Open;
  edtSmtpHost:= LeInistr(caminho, 'Email', 'HostOrc', ''); // 'smtp.gmail.com'; // troque pelo seu servidor smtp
  if edtSmtpHost = '' then
  begin
    application.messagebox('Favor configurar a conta de email!', 'Erro',
      mb_ok + mb_iconerror);
    exit;
  end;

  qrapoio3.close;
  qrapoio3.sql.Clear;
  qrapoio3.sql.Add('select email from c000007');
  qrapoio3.sql.Add('where codigo = ''' + frmmodulo.CDSosCODCLIENTE.text + '''');
  qrapoio3.Open;

  Para := qrapoio3.fieldbyname('email').asstring;

  if Para = '' then
  begin
    Para := InputBox('Email', 'Email do Cliente', '');
  end;

  if Para = '' then
    exit;
   AjustarParametrosdeEnvioEmail(Para);
  // criar componentes
   mensagem := TStringList.Create;
   mensagem.add('Ordem de Serviço '+frmmodulo.CDSoscodigo.text);
   Mensagem.Add('Segue em anexo o PDF');
   ACBrMail1.AddAttachment( Tfilename('C:\OneMaker\Server\PDF\' + frmmodulo.CDSoscodigo.text + 'os.pdf'));

  try
    ACBrMail1.Send;
    ShowMessage('Email enviado com sucesso');
  except

    try
       ACBrMail1.Send;
      ShowMessage('Email enviado com sucesso');
    except
      on E: exception do
      begin
        application.messagebox(PWideChar('Erro ao Enviar Email!' + #13 +
          'Mensagem: ' + E.message), 'Erro', mb_ok + mb_iconerror);
      end;
    end;

  end;
end;

procedure TfrmOs_menu.CFOP1Click(Sender: TObject);
begin
  frmnotas_venda_ecf_leituramemoria :=
    tfrmnotas_venda_ecf_leituramemoria.create(self);
  frmnotas_venda_ecf_leituramemoria.showmodal;
end;

procedure TfrmOs_menu.ClassesdeRecolhimento1Click(Sender: TObject);
var
  texto: PWideChar;
  TXT: TEXTFILE;
  cnpj_cpf, ie_rg, TEXTOS: string;
  i: integer;
begin
  if frmprincipal.autentica('Redução Z', nivel_exclusao) then
  begin
    texto := PWideChar
      ('Este procedimento fechará o Caixa da ECF, permitindo efetuar novas vendas após as 00:00 hs!'
      + #13 + 'Confirma a emissão da REDUÇÃO Z?');
    if application.messagebox(texto, 'Atenção - Redução Z',
      mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
    begin
      ecf_reducao_z(ecf_modelo);
      frmprincipal.GravaReducaoZ;
    end;

  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

end;

procedure TfrmOs_menu.MemorandodeExportao1Click(Sender: TObject);
var
  texto: PWideChar;
  i: integer;
begin
  if frmprincipal.autentica('Cancel.Cupom', 4) then
  begin
    try
      i := strtoint(ecf_numero_cupom(ecf_modelo));
      if (ecf_modelo = 'URANO') then
        //
      else
        i := i - 1;
      texto := PWideChar(frmprincipal.zerarcodigo(inttostr(i), 6));
      texto := PWideChar('Confirma o Cancelamento do Cupom Nº ' + texto + '?');
    except
      texto := 'Confirma o Cancelamento do Cupom?';
    end;
    if application.messagebox(texto, 'Cancelamento de Cupom',
      mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
    begin
      ecf_cancela_cupom(ecf_modelo, '');
    end;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

end;

procedure TfrmOs_menu.Suprimento1Click(Sender: TObject);
begin
  if frmprincipal.autentica_caixa('Suprimento', 0) then
  begin
    frmsuprimentocaixa := tfrmsuprimentocaixa.create(self);
    frmsuprimentocaixa.Edit1.TEXT := FRMMODULO.qrcaixa_operador.fieldbyname
      ('codigo').asstring;
    frmsuprimentocaixa.showmodal;
  end
  else
  begin
    application.messagebox('Não autorizado!', 'Atenção', mb_ok + mb_iconerror);
  end;
end;

procedure TfrmOs_menu.Sangria1Click(Sender: TObject);
begin
  if frmprincipal.autentica_caixa('Sangria', 0) then
  begin
    frmsangriacaixa := tfrmsangriacaixa.create(self);
    frmsangriacaixa.Edit1.TEXT := FRMMODULO.qrcaixa_operador.fieldbyname
      ('DATA').asstring;
    frmsangriacaixa.showmodal;
  end
  else
  begin
    application.messagebox('Não autorizado!', 'Atenção', mb_ok + mb_iconerror);
  end;
end;

procedure TfrmOs_menu.dateedit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmOs_menu.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
var
  fornecedor, nota: string;
begin

  if (ansiuppercase(AFieldName) = ansiuppercase('codigo')) or
    (ansiuppercase(AFieldName) = ansiuppercase('numero_cupom_fiscal')) or
    (ansiuppercase(AFieldName) = ansiuppercase('data')) or
    (ansiuppercase(AFieldName) = ansiuppercase('conclusao_data')) or
    (ansiuppercase(AFieldName) = ansiuppercase('total')) or
    (ansiuppercase(AFieldName) = ansiuppercase('serial')) then

  begin
    FRMMODULO.cdsos.CLOSE;
   // FRMMODULO.cdsos.SQL.CLEAR;
    if combosituacao.TEXT = 'TODAS' then
    begin
      if ecliente.TEXT = '' then
          FRMMODULO.sdsos.CommandText:=
          'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF ORDER BY CODIGO'
      else
          FRMMODULO.sdsos.CommandText:=
          'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and codcliente = '''
          + copy(ecliente.TEXT, 1, 6) + ''' ORDER by ' + AFieldName;
    end
    else
    begin
      if ecliente.TEXT = '' then
       FRMMODULO.sdsos.CommandText:=
          'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''
          + combosituacao.TEXT + '%'' ORDER BY ' + AFieldName
      else
          FRMMODULO.sdsos.CommandText:=
          'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''
          + combosituacao.TEXT + '%'' and codcliente = ''' + copy(ecliente.TEXT,
          1, 6) + ''' ORDER BY ' + AFieldName;
    end;
        FRMMODULO.cdsos.FetchParams;
    FRMMODULO.cdsos.Params.ParamByName('DATAI').asdatetime := dateedit1.date;
    FRMMODULO.cdsos.Params.ParamByName('DATAF').asdatetime := dateedit2.date;

  FRMMODULO.cdsos.OPEN;
  end;

  if ansiuppercase(AFieldName) = 'CLIENTE' then
  begin
    FRMMODULO.cdsos.CLOSE;
  //  FRMMODULO.cdsos.SQL.CLEAR;
    if combosituacao.TEXT = 'TODAS' then
    begin
      if ecliente.TEXT = '' then
           FRMMODULO.sdsos.CommandText:=
          'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF ORDER BY CODIGO'
      else
          FRMMODULO.sdsos.CommandText:=
          'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and codcliente = '''
          + copy(ecliente.TEXT, 1, 6) + ''' ORDER by CODCLIENTE';
    end
    else
    begin
      if ecliente.TEXT = '' then
        FRMMODULO.sdsos.CommandText:=
          'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''
          + combosituacao.TEXT + '%'' ORDER BY CODCLIENTE'
      else
        FRMMODULO.sdsos.CommandText:=
          'SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''
          + combosituacao.TEXT + '%'' and codcliente = ''' + copy(ecliente.TEXT,
          1, 6) + ''' ORDER BY CODCLIENTE';
    end;
         FRMMODULO.cdsos.FetchParams;
    FRMMODULO.cdsos.Params.ParamByName('datai').asdatetime := dateedit1.date;
    FRMMODULO.cdsos.Params.ParamByName('dataf').asdatetime := dateedit2.date;

  FRMMODULO.cdsos.OPEN;
  end;
end;

procedure TfrmOs_menu.bperiodicoClick(Sender: TObject);
var
  vstatus: string;
begin

  qros_servico.CLOSE;
  qros_servico.SQL.CLEAR;
  qros_servico.SQL.ADD('select * from c000053 where codos = ''' +
    FRMMODULO.cdsos.fieldbyname('codigo').asstring + '''');
  qros_servico.OPEN;

  FRMMODULO.qrservicos_periodicos.CLOSE;
  FRMMODULO.qrservicos_periodicos.SQL.CLEAR;
  FRMMODULO.qrservicos_periodicos.SQL.ADD
    ('select * from servicos_periodicos where codcliente = ''' +
    FRMMODULO.cdsos.fieldbyname('codcliente').asstring + ''' and ');
  FRMMODULO.qrservicos_periodicos.SQL.ADD('codcliente = ''' +
    FRMMODULO.cdsos.fieldbyname('codcliente').asstring + ''' and ');
  FRMMODULO.qrservicos_periodicos.SQL.ADD('serie      = ''' +
    FRMMODULO.cdsos.fieldbyname('serial').asstring + '''');
  FRMMODULO.qrservicos_periodicos.OPEN;
  FRMMODULO.qrservicos_periodicos.Last;

  if FRMMODULO.qrservicos_periodicos.RecordCount > 0 then
    vstatus := inttostr(strtoint(FRMMODULO.qrservicos_periodicos.fieldbyname
      ('status').asstring) + 1)
  else
    vstatus := '1';

  FRMMODULO.qrservicos_periodicos.insert;
  FRMMODULO.qrservicos_periodicos.fieldbyname('codcliente').asstring :=
    FRMMODULO.cdsosCODCLIENTE.asstring;
  FRMMODULO.qrservicos_periodicos.fieldbyname('codservico').asstring :=
    qros_servicoCODSERVICO.asstring;
  FRMMODULO.qrservicos_periodicos.fieldbyname('codtecnico').asstring :=
    qros_servicoCODTECNICO.asstring;
  FRMMODULO.qrservicos_periodicos.fieldbyname('marca').asstring :=
    FRMMODULO.cdsosMARCA.asstring;
  FRMMODULO.qrservicos_periodicos.fieldbyname('modelo').asstring :=
    FRMMODULO.cdsosMODELO.asstring;
  FRMMODULO.qrservicos_periodicos.fieldbyname('serie').asstring :=
    FRMMODULO.cdsosSERIAL.asstring;
  FRMMODULO.qrservicos_periodicos.fieldbyname('primeira_manutencao').asdatetime
    := FRMMODULO.cdsosDATA.asdatetime;
  FRMMODULO.qrservicos_periodicos.fieldbyname('ultima_manutencao').asdatetime :=
    FRMMODULO.cdsosDATA.asdatetime;
  FRMMODULO.qrservicos_periodicos.fieldbyname('periodo').asinteger :=
    strtoint(inputbox('Serviços Periódicos', 'Quantidade de Dias:', '30'));

  FRMMODULO.qrservicos_periodicos.fieldbyname('status').asstring := vstatus;
  // primeira manutenção
  FRMMODULO.qrservicos_periodicos.post;

  FRMMODULO.Conexao.Commit;

  showmessage('Lançado com sucesso!');
end;

procedure TfrmOs_menu.wwDBGrid1RowChanged(Sender: TObject);
begin
  if FRMMODULO.cdsos.fieldbyname('st').asinteger = 4 then
    bperiodico.VISIBLE := true
  else
    bperiodico.VISIBLE := false;
end;

end.
