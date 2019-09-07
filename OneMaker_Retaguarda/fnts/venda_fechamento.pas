unit venda_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Mask,
  TFlatPanelUnit, Buttons, Menus, wwdbedit, Wwdotdot, Wwdbcomb, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvShapeButton,
  AdvGlowButton, DBAccess, RzEdit, RzSpnEdt, frxDesgn, frxClass, frxDBSet, ACBrBase,ACBrBoleto, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvMemoryDataset, JvExMask, JvToolEdit, JvBaseEdits;

type
  Tfrmvenda_fechamento = class(TForm)
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Observaes1: TMenuItem;
    pconvenio: TFlatPanel;
    HeaderView3: THeaderView;
    Label16: TLabel;
    FlatPanel7: TFlatPanel;
    Label17: TLabel;
    Label18: TLabel;
    econvenio_codcliente: TEdit;
    bconvenio_cliente: TBitBtn;
    econvenio_cliente: TEdit;
    convenio_combo: TwwDBComboBox;
    FlatPanel4: TFlatPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    econvenio_codconvenio: TEdit;
    econvenio_convenio: TEdit;
    rconvenio_desconto: TJvCalcEdit;
    rconvenio_liquido: TJvCalcEdit;
    Button1: TButton;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    rdesconto2: TJvCalcEdit;
    racrescimo2: TJvCalcEdit;
    rdesconto1: TJvCalcEdit;
    racrescimo1: TJvCalcEdit;
    Panel1: TPanel;
    rsubtotal: TJvCalcEdit;
    Panel2: TPanel;
    rtotal: TJvCalcEdit;
    Shape6: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edinheiro: TShape;
    echequeav: TShape;
    echequeap: TShape;
    ecartaocred: TShape;
    ecartaodeb: TShape;
    ecrediario: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Shape7: TShape;
    Label15: TLabel;
    econvenio: TShape;
    rdinheiro: TJvCalcEdit;
    rchequeav: TJvCalcEdit;
    rchequeap: TJvCalcEdit;
    rcartaocred: TJvCalcEdit;
    rcartaodeb: TJvCalcEdit;
    rcrediario: TJvCalcEdit;
    rconvenio: TJvCalcEdit;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    AdvShapeButton1: TAdvShapeButton;
    Bevel3: TBevel;
    Panel5: TPanel;
    Shape15: TShape;
    Shape16: TShape;
    Label13: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label14: TLabel;
    rsoma: TJvCalcEdit;
    rdiferenca: TJvCalcEdit;
    bgrava_fiscal: TButton;
    query: TzQuery;
    qrcaixa_mov: TzQuery;
    IBQuery1: TzQuery;
    query1: TzQuery;
    Query2: TzQuery;
    query3: TzQuery;
    Shape8: TShape;
    Label22: TLabel;
    efinanceira: TShape;
    rfinanceira: TJvCalcEdit;
    PTEF1: TFlatPanel;
    ptef2: TFlatPanel;
    BCH_TECBAN: TButton;
    BCH_REDECARD: TButton;
    bcartao: TButton;
    bpgto: TButton;
    lb_credito: TLabel;
    cb_credito: TComboBox;
    spin_credito: TRzSpinEdit;
    cb_debito: TComboBox;
    lb_debito: TLabel;
    spin_debito: TRzSpinEdit;
    Gravar1: TMenuItem;
    bduplicata: TButton;
    qrduplicata: TJvMemoryData;
    qrduplicataemitente_fantasia: TStringField;
    qrduplicataemitente_razao: TStringField;
    qrduplicataemitente_slogan: TStringField;
    qrduplicataemitente_telefone: TStringField;
    qrduplicataemitente_endereco: TStringField;
    qrduplicataemitente_cnpj: TStringField;
    qrduplicataemitente_ie: TStringField;
    qrduplicatadata_emissao: TStringField;
    qrduplicatafatura_numero: TStringField;
    qrduplicatafatura_valor: TStringField;
    qrduplicataduplicata_numero: TStringField;
    qrduplicataduplicata_valor: TStringField;
    qrduplicatadata_vencimento: TStringField;
    qrduplicatadesconto: TStringField;
    qrduplicatadesconto_ate: TStringField;
    qrduplicatacondicoes_especiais: TStringField;
    qrduplicatasacado_nome: TStringField;
    qrduplicatasacado_endereco: TStringField;
    qrduplicatasacado_municipio: TStringField;
    qrduplicatasacado_uf: TStringField;
    qrduplicatasacado_cep: TStringField;
    qrduplicatasacado_praca: TStringField;
    qrduplicatasacado_cnpj: TStringField;
    qrduplicatasacado_ie: TStringField;
    qrduplicatanotas_ficais: TStringField;
    qrduplicataextenso: TStringField;
    fsduplicata: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    qrcliente: TzQuery;
    fxvenda: TfrxReport;
    CondiesdePgto1: TMenuItem;
    qrcontasreceber: TzQuery;
    qrcontasrecebercliente: TStringField;
    qrproduto_mov: TzQuery;
    qrproduto_movproduto: TStringField;
    frxDBDataset1: TfrxDBDataset;
    fscontasreceber: TfrxDBDataset;
    fsvenda: TfrxDBDataset;
    FSCLIENTE: TfrxDBDataset;
    ZQuery1: TzQuery;
    StringField12: TStringField;
    qrcartao: TzQuery;
    qrcontasreceberCODIGO: TWideStringField;
    qrcontasreceberCODVENDA: TWideStringField;
    qrcontasreceberCODVENDEDOR: TWideStringField;
    qrcontasreceberCODCAIXA: TWideStringField;
    qrcontasreceberCODCLIENTE: TWideStringField;
    qrinventarioDATA_EMISSAO: TDateField;
    qrinventarioDATA_VENCIMENTO: TDateField;
    qrinventarioDATA_PAGAMENTO: TDateField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TWideStringField;
    qrcontasreceberTIPO: TWideStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TWideStringField;
    qrcontasreceberCODREGIAO: TWideStringField;
    qrcontasreceberCODCEDENTE: TWideStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TWideStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberHISTORICO: TWideStringField;
    qrproduto_movCODIGO: TWideStringField;
    qrproduto_movCODNOTA: TWideStringField;
    qrproduto_movCODPRODUTO: TWideStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TWideStringField;
    qrinventario_movDATA: TDateField;
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
    qrinventario_movVENCIMENTO: TDateField;
    qrproduto_movCODBARRA: TWideStringField;
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
    qrproduto_movCODFILIAL: TWideStringField;
    ZQuery1CODIGO: TWideStringField;
    ZQuery1CODNOTA: TWideStringField;
    ZQuery1CODPRODUTO: TWideStringField;
    ZQuery1UNITARIO: TFloatField;
    ZQuery1TOTAL: TFloatField;
    ZQuery1ICMS: TFloatField;
    ZQuery1IPI: TFloatField;
    ZQuery1CFOP: TWideStringField;
    qrinventarioZQuery1DATA: TDateField;
    ZQuery1NUMERONOTA: TWideStringField;
    ZQuery1CODCLIENTE: TWideStringField;
    ZQuery1DESCONTO: TFloatField;
    ZQuery1ACRESCIMO: TFloatField;
    ZQuery1MOVIMENTO: TIntegerField;
    ZQuery1CODVENDEDOR: TWideStringField;
    ZQuery1CODGRADE: TWideStringField;
    ZQuery1SERIAL: TWideStringField;
    ZQuery1UNIDADE: TWideStringField;
    ZQuery1QTDE: TFloatField;
    ZQuery1VALOR_ICMS: TFloatField;
    ZQuery1ICMS_REDUZIDO: TFloatField;
    ZQuery1BASE_CALCULO: TFloatField;
    ZQuery1VALOR_IPI: TFloatField;
    ZQuery1SITUACAO: TIntegerField;
    ZQuery1ECF_SERIE: TWideStringField;
    ZQuery1ECF_CAIXA: TWideStringField;
    ZQuery1CODALIQUOTA: TWideStringField;
    ZQuery1CUPOM_NUMERO: TWideStringField;
    ZQuery1CUPOM_MODELO: TWideStringField;
    ZQuery1CUPOM_ITEM: TWideStringField;
    ZQuery1ALIQUOTA: TFloatField;
    ZQuery1CST: TWideStringField;
    ZQuery1LOTE_FABRICACAO: TWideStringField;
    ZQuery1MOVIMENTO_ESTOQUE: TFloatField;
    ZQuery1LANCADO: TIntegerField;
    qrinventarioZQuery1VENCIMENTO: TDateField;
    ZQuery1CODBARRA: TWideStringField;
    ZQuery1MARGEM_DESCONTO: TFloatField;
    ZQuery1CREDITO_ICMS: TFloatField;
    ZQuery1PIS: TFloatField;
    ZQuery1COFINS: TFloatField;
    ZQuery1LOJA: TWideStringField;
    ZQuery1CODSUBGRUPO: TWideStringField;
    ZQuery1TIPO: TWideStringField;
    ZQuery1CODUSUARIO: TWideStringField;
    ZQuery1ORIGEM: TWideStringField;
    ZQuery1DESTINO: TWideStringField;
    ZQuery1CODFILIAL: TWideStringField;
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure racrescimo2KeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimo2Exit(Sender: TObject);
    procedure rdinheiroExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdinheiroEnter(Sender: TObject);
    procedure rchequeavEnter(Sender: TObject);
    procedure rchequeapEnter(Sender: TObject);
    procedure rcartaocredEnter(Sender: TObject);
    procedure rcartaodebEnter(Sender: TObject);
    procedure rcrediarioEnter(Sender: TObject);
    procedure rcrediarioKeyPress(Sender: TObject; var Key: Char);
    procedure Cancelar1Click(Sender: TObject);
    procedure rchequeavExit(Sender: TObject);
    procedure rchequeapExit(Sender: TObject);
    procedure rcartaocredExit(Sender: TObject);
    procedure rcartaodebExit(Sender: TObject);
    procedure rcrediarioExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure rconvenioEnter(Sender: TObject);
    procedure rconvenioExit(Sender: TObject);
    procedure rconvenioKeyPress(Sender: TObject; var Key: Char);
    procedure econvenio_codclienteEnter(Sender: TObject);
    procedure econvenio_codclienteExit(Sender: TObject);
    procedure econvenio_codclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bconvenio_clienteClick(Sender: TObject);
    procedure convenio_comboExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rfinanceiraEnter(Sender: TObject);
    procedure rfinanceiraExit(Sender: TObject);
    procedure rfinanceiraKeyPress(Sender: TObject; var Key: Char);
    procedure BCH_TECBANClick(Sender: TObject);
    procedure BCH_REDECARDClick(Sender: TObject);
    procedure bcartaoClick(Sender: TObject);
    procedure bpgtoClick(Sender: TObject);
    procedure cb_creditoKeyPress(Sender: TObject; var Key: Char);
    procedure spin_creditoKeyPress(Sender: TObject; var Key: Char);
    procedure cb_debitoKeyPress(Sender: TObject; var Key: Char);
    procedure spin_debitoKeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure bduplicataClick(Sender: TObject);
  private
    function retorna_letra(numero: Integer): string;
    { Private declarations }
  public
    iOrdem: Integer;
    sNumero: string;
    rValor: real;
    rboleto: real;
    { Public declarations }
  end;

var
  frmvenda_fechamento: Tfrmvenda_fechamento;
  porta_impressora: string;
  cons_cheque: boolean;
  JA_ABERTO: boolean;
  CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO,
    CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF,
    CLIENTE_CODIGO: string;
  parcela_credito, parcela_debito: Integer;

implementation

uses venda, modulo, principal, venda_contasreceber, troco, venda_impressao,
  extenso1, venda_obs, cheque, ecf, xloc_cliente, venda_inicio,
  cheque_avulso, venda_impressaoCP, venda_entrega, venda_financeira,
  consulta_cheque, unFuncoesTEF, duplicata_impressao, entrada,
  cartao_ficha, OpNatureza, UFuncoes, venda_impressao2, notas_venda_impressao;

{$R *.dfm}

function Tfrmvenda_fechamento.retorna_letra(numero: Integer): string;
begin
  case numero of
    1:
      result := 'A';
    2:
      result := 'B';
    3:
      result := 'C';
    4:
      result := 'D';
    5:
      result := 'E';
    6:
      result := 'F';
    7:
      result := 'G';
    8:
      result := 'H';
    9:
      result := 'I';
    10:
      result := 'J';
    11:
      result := 'K';
    12:
      result := 'L';
    13:
      result := 'M';
    14:
      result := 'N';
    15:
      result := 'O';
    16:
      result := 'P';
    17:
      result := 'Q';
    18:
      result := 'R';
    19:
      result := 'S';
    20:
      result := 'T';
    21:
      result := 'U';
    22:
      result := 'V';
    23:
      result := 'W';
    24:
      result := 'X';
    25:
      result := 'Y';
    26:
      result := 'Z';
  end;
end;

procedure Tfrmvenda_fechamento.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_fechamento.racrescimo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    rdinheiro.SetFocus;
end;

procedure Tfrmvenda_fechamento.rdesconto1Enter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rdesconto1Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if rdesconto1.value <> 0 then
  begin
    rdesconto2.value := rsubtotal.value * (rdesconto1.value / 100);
  end
  else
    rdesconto2.value := 0;
  rtotal.value := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento.rdesconto2Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    rdesconto1.value := (rdesconto2.value * 100) / rsubtotal.value;
  end
  else
    rdesconto1.value := 0;
  rtotal.value := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento.racrescimo1Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if racrescimo1.value <> 0 then
  begin
    racrescimo2.value := rsubtotal.value * (racrescimo1.value / 100);
  end
  else
    racrescimo2.value := 0;
  rtotal.value := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento.racrescimo2Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    racrescimo1.value := (racrescimo2.value * 100) / rsubtotal.value;
  end
  else
    racrescimo1.value := 0;
  rtotal.value := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento.rdinheiroExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  edinheiro.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmvenda_fechamento.bgravarClick(Sender: TObject);
var
  texto: PWideChar;
  desconto_acrescimo: real;
  tp_desconto_acrescimo, formasp: string;
  v_dinheiro: real;
  // forma_pgto : string;
  // FTEF
  y, teste, parcela: Integer;
  ecf_ok: boolean;
  qtef: Integer;
  cvinc: boolean;
  //
  iparcela, itotal_parcela, crt: Integer;
  vpis, vcofins: Double;

  sano: string;
  sOrdem: string;
  d, m, a: word;
  Titulo : TACBrTitulo;
begin

  if frmmodulo.natoperacao = 'venda' then
  begin
    if (rdinheiro.value = 0.00) and (rchequeav.value = 0.00) and
      (rchequeap.value = 0.00) and (rcartaocred.value = 0.00) and
      (rcartaodeb.value = 0.00) and (rcrediario.value = 0.00) and
      (rconvenio.value = 0.00) and (rfinanceira.value = 0.00) and
      (rsoma.value = 0.00) and (rdiferenca.value = 0.00) then
    begin
      Exit;
    end;
  end;

  frmmodulo.qrFilial.Open;
  vpis := frmmodulo.qrFilial.FieldByName('pis').AsFloat;
  vcofins := frmmodulo.qrFilial.FieldByName('cofins').AsFloat;
  crt := frmmodulo.qrFilial.FieldByName('CRT').AsInteger;

  if frmmodulo.natoperacao = 'venda' then
  begin
    if rsoma.value = 0 then
      Exit;
  end;

  if frmvenda.qrvenda_contasreceber.State = dsedit then
  begin

    frmvenda.qrvenda_contasreceber.post;
    lancando_contasreceber := false;
  end;

  try

    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.FieldByName('VENDA_CADASTRO_CARTAO').AsInteger = 1
    then
    begin
      if rcartaocred.value > 0 then
      begin
        if cb_credito.ItemIndex < 0 then
        begin
          application.messagebox
            ('Favor selecionar a bandeira do cartão de Crédito!', 'Atenção',
            mb_ok + mb_iconerror);
          cb_credito.SetFocus;
          Exit;
        end;
      end;

      if rcartaodeb.value > 0 then
      begin
        if cb_debito.ItemIndex < 0 then
        begin
          application.messagebox
            ('Favor selecionar a bandeira do cartão de Débito!', 'Atenção',
            mb_ok + mb_iconerror);
          cb_debito.SetFocus;
          Exit;
        end;
      end;
    end;

    cons_cheque := false;
    if USA_TEF then
    begin

      TEFFINAL := false;
      elcheque := false;

      if (rchequeap.value + rchequeav.value) > 0 then
      begin
        if application.messagebox('Deseja consultar o Cheque?',
          'Consulta Cheque', mb_yesno + mb_iconquestion + MB_DEFBUTTON2) = idyes
        then
        begin
          qtef := 0;
          if rcartaocred.value > 0 then
            qtef := 1;
          if rcartaodeb.value > 0 then
            qtef := qtef + 1;
          if rchequeav.value > 0 then
            qtef := qtef + 1;
          if rchequeap.value > 0 then
            qtef := qtef + 1;
          if qtef > 1 then
          begin
            application.messagebox
              ('Não é possível prosseguir com duas ou mais formas de pagamento que utilizam TEF!',
              'Erro', mb_ok + mb_iconerror);
            Exit;
          end
          else
          begin
            cons_cheque := TRUE;
          end;
        end
        else
        begin
          if (rcartaocred.value > 0) and (rcartaodeb.value > 0) then
          begin
            application.messagebox
              ('Não é possível prosseguir com duas ou mais formas de pagamento que utilizam TEF!',
              'Erro', mb_ok + mb_iconerror);
            Exit;
          end;
        end;
      end
      else
      begin
        if (rcartaocred.value > 0) and (rcartaodeb.value > 0) then
        begin
          application.messagebox
            ('Não é possível prosseguir com duas ou mais formas de pagamento que utilizam TEF!',
            'Erro', mb_ok + mb_iconerror);
          Exit;
        end;
      end;
    end;

    TEFFINAL := false;
    elcheque := false;

    FI_LANCTO := '';
    FI_CODIGO := '';
    FI_BORDERO := '';
    FI_PROPOSTA := '';
    FI_VENCIMENTO := '';
    FI_NOME := '';

    if (rconvenio.value + rcrediario.value) > (rtotal.value + (0.10)) then
    begin
      application.messagebox
        ('Os lançamentos em crediário/convênio não pode ultrapassar o valor total da venda! Favor verificar!',
        'Atenção', mb_ok + MB_ICONWARNING);
      rcrediario.SetFocus;
      Exit;
    end;

    if rdiferenca.value > 0.001 then
    begin
      application.messagebox
        ('O Somatório dos valores pagos é inferior ao total da venda!', 'Erro',
        mb_ok + mb_iconerror);
      Exit;
    end;

    if rdesconto1.value > 0 then
    begin
      frmmodulo.qrconfig.Open;
      if frmmodulo.qrconfig.FieldByName('DESCONTO_TOTALNOTA').AsFloat > 0 then
      begin
        if rdesconto1.value > frmmodulo.qrconfig.FieldByName
          ('DESCONTO_TOTALNOTA').AsFloat then
        begin
          if frmprincipal.autentica('Desconto Nota', 3) then
          begin

          end
          else
          begin
            application.messagebox('Acesso não permitido!', 'Erro!',
              mb_ok + mb_iconerror);
          end;
        end;
      end;
    end;

    if rcrediario.value > 0 then
    begin
      if rconvenio.value > 0 then
      begin
        application.messagebox
          ('Não é possível efetuar pagamento de convênio em conjunto com crediário! Favor verificar',
          'Erro', mb_ok + mb_iconerror);
        rconvenio.SetFocus;
        Exit;
      end;

      frmmodulo.qrconfig.Open;
      if frmmodulo.qrconfig.FieldByName('VENDA_LIMITE_CLIENTE').AsInteger = 1
      then
      begin

        {
          if frmvenda.qrcliente.FieldByName('situacao').asinteger = 3 then
          begin
          application.messagebox('Cliente com crédito bloqueado! Não será possível prosseguir com o fechamento!','Atenção',mb_ok+mb_iconerror);
          rcrediario.setfocus;
          exit;
          end;
        }

        if frmvenda.qrcliente.FieldByName('situacao').AsInteger = 2 then
        begin
          texto := PWideChar('Cliente está com cadastro em observação: ' + #13 +
            frmvenda.qrcliente.FieldByName('obs1').asstring + #13 +
            frmvenda.qrcliente.FieldByName('obs2').asstring + #13 +
            frmvenda.qrcliente.FieldByName('obs3').asstring + #13 +
            frmvenda.qrcliente.FieldByName('obs4').asstring + #13 + '' + #13 +
            'Deseja prosseguir com a venda?');

          if application.messagebox(texto, 'Crédito em Observação',
            mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
          begin
            rcrediario.SetFocus;
            Exit;
          end;
        end;

        if frmvenda.qrcliente.FieldByName('LIMITE').AsFloat <> 0 then
        begin
          if rcrediario.value > limite_disponivel then
          begin
            texto := PWideChar('Este cliente possue um limite disponível de:' +
              #13 + ' ---> R$ ' + frmvenda.lcliente_limite.caption + '  <--- ' +
              #13 + 'É necessário autorização para prosseguir! ' + #13 +
              'Deseja continuar?');
            if application.messagebox(texto, 'Atenção',
              mb_yesno + MB_ICONWARNING) = idyes then
            begin
              if not frmprincipal.autentica('Liberar venda', 3) then
              begin
                application.messagebox
                  ('Desculpe! Seu acesso não foi autorizado!', 'Aviso',
                  mb_ok + mb_iconerror);
                rcrediario.SetFocus;
                Exit;
              end;
            end
            else
            begin
              rcrediario.SetFocus;
              Exit;
            end;
          end;
        end;
      end;
    end;

    v_dinheiro := rdinheiro.value;

    if rdiferenca.value <> 0 then
    begin
      if rdinheiro.value > rdiferenca.value then
      begin
        frmvenda_troco := tfrmvenda_troco.create(self);
        frmvenda_troco.ltroco.caption := FORMATFLOAT('###,###,##0.00',
          (rdiferenca.value) * (-1));
        frmvenda_troco.showmodal;

        rdinheiro.value := rdinheiro.value + rdiferenca.value;
        rdiferenca.value := 0;
      end
      else
      begin
        application.messagebox
          ('Os valores informados nas formas de pagamento não confere com o valor total desta venda! Favor verificar!',
          'Atenção', mb_ok + MB_ICONWARNING);
        rdinheiro.SetFocus;
        Exit;
      end;
    end;

    CONTINUAR := TRUE;
     //*********LANÇAMENTOS *****************
    if rchequeav.value <> 0 then               //CHEQUE AVISTA
    begin
      frmmodulo.qrconfig.Open;
      if frmmodulo.qrconfig.FieldByName('VENDA_CADASTRO_CHEQUE').AsInteger = 1
      then
      begin
        CHEQUE_CODCLIENTE := frmvenda.lcliente_codigo.caption;
        CHEQUE_VENDA := frmvenda.lvenda_codigo.caption;
        frmcheque_avulso := Tfrmcheque_avulso.create(self);
        // frmcheque_avulso.rsoma.value := frmvenda_fechamento.rchequeav.value;
        // frmcheque_avulso.rdiferenca.value := 0.00;
        frmcheque_avulso.showmodal;
      end;
    end;

    if rchequeap.value <> 0 then //CHEQUE PRE
    begin
      frmmodulo.qrconfig.Open;
      if frmmodulo.qrconfig.FieldByName('VENDA_CADASTRO_CHEQUE').AsInteger = 1
      then
      begin
        CHEQUE_CODCLIENTE := frmvenda.lcliente_codigo.caption;
        CHEQUE_VENDA := frmvenda.lvenda_codigo.caption;
        frmcheque_avulso := Tfrmcheque_avulso.create(self);
        // frmcheque_avulso.rsoma.value := frmvenda_fechamento.rchequeap.value;
        // frmcheque_avulso.rdiferenca.value := 0.00;
        frmcheque_avulso.showmodal;
      end;
    end;

    if not CONTINUAR then
      Exit;

    if rfinanceira.value <> 0 then          //FINANCEIRA
    begin
      FI_CODIGO := '';
      FRMVENDA_FINANCEIRA := TFRMVENDA_FINANCEIRA.create(self);
      FRMVENDA_FINANCEIRA.showmodal;
      if FI_CODIGO = '' then
      begin
        application.messagebox
          ('É necessário informar a Instituição Financeira para prosseguir com esta forma de pagamento!',
          'Erro', mb_ok + mb_iconerror);
        Exit;
      end;
    end;

    if not CONTINUAR then
      Exit;

    // antes chamava aki o frmvenda_contasreceber

    if not CONTINUAR then
      Exit;

    bgravar.enabled := false;

    /// /  LANCAMENTOS CAIXA ESPECIFICOS DE CADA FORMA DE PAGAMENTO

    if rdinheiro.value <> 0 then       // DINHEIRO
    begin

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.sql.add
        ('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.sql.add
        ('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring :=
        frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('codoperador').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('data').asdatetime :=
        frmmodulo.qrcaixa_operador.FieldByName('DATA').asdatetime;
      qrcaixa_mov.parambyname('saida').AsFloat := 0;
      qrcaixa_mov.parambyname('entrada').AsFloat := rdinheiro.value;
      qrcaixa_mov.parambyname('valor').AsFloat := rdinheiro.value;

      frmmodulo.qrconfig.Open;
      qrcaixa_mov.parambyname('codconta').asstring :=
        frmmodulo.qrconfig.FieldByName('PLANO_VENDA_AV').asstring;
      qrcaixa_mov.parambyname('movimento').AsInteger := 3; // venda em dinheiro
      qrcaixa_mov.parambyname('historico').asstring :=
        copy('Venda No. ' + frmvenda.lvenda_codigo.caption + ' - ' +
        frmvenda.lcliente_nome.caption, 1, 60);

      qrcaixa_mov.ExecSQL;

    end;

    if rchequeav.value <> 0 then             // CHEQUE Avista
    begin

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.sql.add
        ('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.sql.add
        ('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring :=
        frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('codoperador').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('data').asdatetime :=
        frmmodulo.qrcaixa_operador.FieldByName('DATA').asdatetime;
      qrcaixa_mov.parambyname('saida').AsFloat := 0;
      qrcaixa_mov.parambyname('entrada').AsFloat := 0;
      qrcaixa_mov.parambyname('valor').AsFloat := rchequeav.value;
      frmmodulo.qrconfig.Open;
      qrcaixa_mov.parambyname('codconta').asstring :=
        frmmodulo.qrconfig.FieldByName('PLANO_VENDA_AV').asstring;
      qrcaixa_mov.parambyname('movimento').AsInteger := 5;
      // venda em cheque a vista
      qrcaixa_mov.parambyname('historico').asstring :=
        copy('Venda No. ' + frmvenda.lvenda_codigo.caption + ' - ' +
        frmvenda.lcliente_nome.caption, 1, 60);

      qrcaixa_mov.ExecSQL;

    end;

    if rchequeap.value <> 0 then              //CHEQUE PRE
    begin

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.sql.add
        ('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.sql.add
        ('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring :=
        frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('codoperador').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('data').asdatetime :=
        frmmodulo.qrcaixa_operador.FieldByName('DATA').asdatetime;
      qrcaixa_mov.parambyname('saida').AsFloat := 0;
      qrcaixa_mov.parambyname('entrada').AsFloat := 0;
      qrcaixa_mov.parambyname('valor').AsFloat := rchequeap.value;
      frmmodulo.qrconfig.Open;
      qrcaixa_mov.parambyname('codconta').asstring :=
        frmmodulo.qrconfig.FieldByName('PLANO_VENDA_AP').asstring;
      qrcaixa_mov.parambyname('movimento').AsInteger := 6;
      // venda em cheque a prazo
      qrcaixa_mov.parambyname('historico').asstring :=
        copy('Venda No. ' + frmvenda.lvenda_codigo.caption + ' - ' +
        frmvenda.lcliente_nome.caption, 1, 60);

      qrcaixa_mov.ExecSQL;
    end;

    if rcartaocred.value <> 0 then          // CARTAO CREDITO
    begin

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.sql.add
        ('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.sql.add
        ('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring :=
        frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('codoperador').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('data').asdatetime :=
        frmmodulo.qrcaixa_operador.FieldByName('DATA').asdatetime;
      qrcaixa_mov.parambyname('saida').AsFloat := 0;
      qrcaixa_mov.parambyname('entrada').AsFloat := 0;
      qrcaixa_mov.parambyname('valor').AsFloat := rcartaocred.value;
      frmmodulo.qrconfig.Open;
      qrcaixa_mov.parambyname('codconta').asstring :=
        frmmodulo.qrconfig.FieldByName('PLANO_VENDA_AP').asstring;
      qrcaixa_mov.parambyname('movimento').AsInteger := 7;
      // venda em cartao de credito
      qrcaixa_mov.parambyname('historico').asstring :=
        copy('Venda No. ' + frmvenda.lvenda_codigo.caption + ' - ' +
        frmvenda.lcliente_nome.caption, 1, 60);

      qrcaixa_mov.ExecSQL;

    end;

    // cadastrar cartoes
    frmvenda.qrvenda_contasreceber.Open;
    frmvenda.qrvenda_contasreceber.First;
    parcela := 1;

    if rcartaodeb.value <> 0 then              // CARTÃO DEBITO
    begin

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.sql.add
        ('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.sql.add
        ('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring :=
        frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('codoperador').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('data').asdatetime :=
        frmmodulo.qrcaixa_operador.FieldByName('DATA').asdatetime;
      qrcaixa_mov.parambyname('saida').AsFloat := 0;
      qrcaixa_mov.parambyname('entrada').AsFloat := 0;
      qrcaixa_mov.parambyname('valor').AsFloat := rcartaodeb.value;
      frmmodulo.qrconfig.Open;
      qrcaixa_mov.parambyname('codconta').asstring :=
        frmmodulo.qrconfig.FieldByName('PLANO_VENDA_AP').asstring;
      qrcaixa_mov.parambyname('movimento').AsInteger := 8;
      // venda em cartao de debito
      qrcaixa_mov.parambyname('historico').asstring :=
        copy('Venda No. ' + frmvenda.lvenda_codigo.caption + ' - ' +
        frmvenda.lcliente_nome.caption, 1, 60);

      qrcaixa_mov.ExecSQL;

    end;

    if rcrediario.value <> 0 then    // CREDIARIO
    begin
      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.sql.add
        ('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.sql.add
        ('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring :=
        frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('codoperador').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('data').asdatetime :=
        frmmodulo.qrcaixa_operador.FieldByName('DATA').asdatetime;
      qrcaixa_mov.parambyname('saida').AsFloat := 0;
      qrcaixa_mov.parambyname('entrada').AsFloat := 0;
      qrcaixa_mov.parambyname('valor').AsFloat := rcrediario.value;
      frmmodulo.qrconfig.Open;
      qrcaixa_mov.parambyname('codconta').asstring :=
        frmmodulo.qrconfig.FieldByName('PLANO_VENDA_AP').asstring;
      qrcaixa_mov.parambyname('movimento').AsInteger := 4; // venda crediario
      qrcaixa_mov.parambyname('historico').asstring :=
        copy('Venda Crediario No. ' + frmvenda.lvenda_codigo.caption + ' - ' +
        frmvenda.lcliente_nome.caption, 1, 60);

      qrcaixa_mov.ExecSQL;

    end;

    if rboleto <> 0 then         //BOLETO
    begin
      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.sql.add
        ('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.sql.add
        ('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring :=
        frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('codoperador').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
      qrcaixa_mov.parambyname('data').asdatetime :=
        frmmodulo.qrcaixa_operador.FieldByName('DATA').asdatetime;
      qrcaixa_mov.parambyname('saida').AsFloat := 0;
      qrcaixa_mov.parambyname('entrada').AsFloat := 0;
      qrcaixa_mov.parambyname('valor').AsFloat := rboleto;
      frmmodulo.qrconfig.Open;
      qrcaixa_mov.parambyname('codconta').asstring :=
        frmmodulo.qrconfig.FieldByName('PLANO_VENDA_AP').asstring;
      qrcaixa_mov.parambyname('movimento').AsInteger := 4; // venda crediario
      qrcaixa_mov.parambyname('historico').asstring :=
        copy('Venda BOLETO No. ' + frmvenda.lvenda_codigo.caption + ' - ' +
        frmvenda.lcliente_nome.caption, 1, 60);

      qrcaixa_mov.ExecSQL;

    end;

    // lancamento do contas a receber so gerar para venda

    if frmmodulo.natoperacao = 'venda' then
    begin
      if rdinheiro.value <> 0 then
      begin
        IBQuery1.close;
        IBQuery1.sql.clear;
        IBQuery1.sql.add('insert into c000049');
        IBQuery1.sql.add
          ('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
        IBQuery1.sql.add
          (' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
        IBQuery1.sql.add(' documento, tipo, situacao, filtro, numero_cupom)');
        IBQuery1.sql.add('values');
        IBQuery1.sql.add
          ('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
        IBQuery1.sql.add
          (' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
        IBQuery1.sql.add
          (' :documento, :tipo, :situacao, :filtro, :numero_cupom)');

        IBQuery1.parambyname('codigo').asstring :=
          frmvenda.lvenda_codigo.caption + '/00';
        IBQuery1.parambyname('codvenda').asstring :=
          frmvenda.lvenda_codigo.caption;
        IBQuery1.parambyname('codcliente').asstring :=
          frmvenda.lcliente_codigo.caption;
        IBQuery1.parambyname('codregiao').asstring :=
          frmvenda.qrcliente.FieldByName('codregiao').asstring;
        IBQuery1.parambyname('codvendedor').asstring :=
          frmvenda.lvendedor_codigo.caption;
        IBQuery1.parambyname('codcaixa').asstring :=
          frmvenda.lcaixa_codigo.caption;
        IBQuery1.parambyname('data_emissao').asdatetime :=
          STRTODATE(frmvenda.lvenda_data.caption);
        IBQuery1.parambyname('data_vencimento').asdatetime :=
          STRTODATE(frmvenda.lvenda_data.caption);
        IBQuery1.parambyname('valor_original').AsFloat := rdinheiro.value;
        IBQuery1.parambyname('valor_pago').AsFloat := rdinheiro.value;
        IBQuery1.parambyname('valor_atual').AsFloat := 0;
        IBQuery1.parambyname('documento').asstring := 'ENTRADA';
        IBQuery1.parambyname('tipo').asstring :=
          frmvenda.qrvenda_contasreceber.FieldByName('tipo').asstring;
        IBQuery1.parambyname('situacao').AsInteger := 2;
        IBQuery1.parambyname('filtro').AsInteger := 0;
        IBQuery1.parambyname('numero_cupom').asstring :=
          frmprincipal.zerarcodigo(frmmodulo.qrFilial.FieldByName('notafiscal')
          .asstring, 6);
        IBQuery1.ExecSQL;
      end;

      frmvenda.qrvenda_contasreceber.Open;
      frmvenda.qrvenda_contasreceber.First;
      parcela := 1;
      while not frmvenda.qrvenda_contasreceber.eof do
      begin
        if frmvenda.qrvenda_contasreceber.FieldByName('TIPO').asstring = 'CARTEIRA'
        then
        begin
          IBQuery1.close;
          IBQuery1.sql.clear;
          IBQuery1.sql.add('insert into c000049');
          IBQuery1.sql.add
            ('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          IBQuery1.sql.add
            (' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          IBQuery1.sql.add(' documento, tipo, situacao, filtro, numero_cupom)');
          IBQuery1.sql.add('values');
          IBQuery1.sql.add
            ('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          IBQuery1.sql.add
            (' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          IBQuery1.sql.add
            (' :documento, :tipo, :situacao, :filtro, :numero_cupom)');

          IBQuery1.parambyname('codigo').asstring :=
            frmvenda.lvenda_codigo.caption + '/' +
            frmprincipal.zerarcodigo(IntToStr(parcela), 2);
          IBQuery1.parambyname('codvenda').asstring :=
            frmvenda.lvenda_codigo.caption;
          IBQuery1.parambyname('codcliente').asstring :=
            frmvenda.lcliente_codigo.caption;
          IBQuery1.parambyname('codregiao').asstring :=
            frmvenda.qrcliente.FieldByName('codregiao').asstring;
          IBQuery1.parambyname('codvendedor').asstring :=
            frmvenda.lvendedor_codigo.caption;
          IBQuery1.parambyname('codcaixa').asstring :=
            frmvenda.lcaixa_codigo.caption;
          IBQuery1.parambyname('data_emissao').asdatetime :=
            STRTODATE(frmvenda.lvenda_data.caption);
          IBQuery1.parambyname('data_vencimento').asdatetime :=
            frmvenda.qrvenda_contasreceber.FieldByName('vencimento').asdatetime;
          IBQuery1.parambyname('valor_original').AsFloat :=
            frmvenda.qrvenda_contasreceber.FieldByName('valor').AsFloat;
          IBQuery1.parambyname('valor_atual').AsFloat :=
            frmvenda.qrvenda_contasreceber.FieldByName('valor').AsFloat;
          IBQuery1.parambyname('documento').asstring :=
            'CR' + frmvenda.lvenda_codigo.caption + '/' +
            frmprincipal.zerarcodigo(IntToStr(parcela), 2);
          IBQuery1.parambyname('tipo').asstring :=
            frmvenda.qrvenda_contasreceber.FieldByName('tipo').asstring;
          IBQuery1.parambyname('situacao').AsInteger := 1;
          IBQuery1.parambyname('filtro').AsInteger := 0;
          IBQuery1.parambyname('numero_cupom').asstring :=
            frmprincipal.zerarcodigo
            (frmmodulo.qrFilial.FieldByName('notafiscal').asstring, 6);
          IBQuery1.ExecSQL;

          frmvenda.qrvenda_contasreceber.next;
          parcela := parcela + 1;
        end
        else
          frmvenda.qrvenda_contasreceber.next
      end;

      frmvenda.qrvenda_contasreceber.Open;
      frmvenda.qrvenda_contasreceber.First;
      parcela := 1;
      while not frmvenda.qrvenda_contasreceber.eof do
      begin
        if frmvenda.qrvenda_contasreceber.FieldByName('TIPO').asstring = 'BOLETO BANCARIO'
        then
        begin
          IBQuery1.close;
          IBQuery1.sql.clear;
          IBQuery1.sql.add('insert into c000049');
          IBQuery1.sql.add
            ('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          IBQuery1.sql.add
            (' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          IBQuery1.sql.add(' documento, tipo, situacao, filtro, numero_cupom)');
          IBQuery1.sql.add('values');
          IBQuery1.sql.add
            ('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          IBQuery1.sql.add
            (' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          IBQuery1.sql.add
            (' :documento, :tipo, :situacao, :filtro, :numero_cupom)');

          IBQuery1.parambyname('codigo').asstring :=
           frmvenda.lvenda_codigo.caption + '/' +
            frmprincipal.zerarcodigo(IntToStr(parcela), 2);
          IBQuery1.parambyname('codvenda').asstring :=
            frmvenda.lvenda_codigo.caption;
          IBQuery1.parambyname('codcliente').asstring :=
            frmvenda.lcliente_codigo.caption;
          IBQuery1.parambyname('codregiao').asstring :=
            frmvenda.qrcliente.FieldByName('codregiao').asstring;
          IBQuery1.parambyname('codvendedor').asstring :=
            frmvenda.lvendedor_codigo.caption;
          IBQuery1.parambyname('codcaixa').asstring :=
            frmvenda.lcaixa_codigo.caption;
          IBQuery1.parambyname('data_emissao').asdatetime :=
            STRTODATE(frmvenda.lvenda_data.caption);
          IBQuery1.parambyname('data_vencimento').asdatetime :=
            frmvenda.qrvenda_contasreceber.FieldByName('vencimento').asdatetime;
          IBQuery1.parambyname('valor_original').AsFloat :=
            frmvenda.qrvenda_contasreceber.FieldByName('valor').AsFloat;
          IBQuery1.parambyname('valor_atual').AsFloat :=
            frmvenda.qrvenda_contasreceber.FieldByName('valor').AsFloat;
          IBQuery1.parambyname('documento').asstring :=
            'BL' + frmvenda.lvenda_codigo.caption + '/' +
            frmprincipal.zerarcodigo(IntToStr(parcela), 2);
          IBQuery1.parambyname('tipo').asstring :=
            frmvenda.qrvenda_contasreceber.FieldByName('tipo').asstring;
          IBQuery1.parambyname('situacao').AsInteger := 1;
          IBQuery1.parambyname('filtro').AsInteger := 0;
          IBQuery1.parambyname('numero_cupom').asstring :=
            frmprincipal.zerarcodigo
            (frmmodulo.qrFilial.FieldByName('notafiscal').asstring, 6);
          IBQuery1.ExecSQL;   // FIM DA EXECUÇÃO DA CONTAS A RECEBER

          //PREPARAR BOLETOS

           frmmodulo.titulo(parcela,frmvenda.lvenda_codigo.caption + '/' +
            frmprincipal.zerarcodigo(IntToStr(parcela), 2));

          showmessage(frmvenda.lvenda_codigo.caption + '/' +
            frmprincipal.zerarcodigo(IntToStr(parcela), 2));

          frmvenda.qrvenda_contasreceber.next;
          parcela := parcela + 1;
        end
        else
          frmvenda.qrvenda_contasreceber.next
      end;

      { if rconvenio.value <> 0 then
        begin

        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into c000044');
        qrcaixa_mov.sql.add
        ('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.sql.add
        ('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

        qrcaixa_mov.parambyname('codigo').asstring :=
        frmprincipal.codifica('000044');
        qrcaixa_mov.parambyname('codcaixa').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
        qrcaixa_mov.parambyname('codoperador').asstring :=
        frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
        qrcaixa_mov.parambyname('data').asdatetime :=
        frmmodulo.qrcaixa_operador.FieldByName('DATA').asdatetime;
        qrcaixa_mov.parambyname('saida').AsFloat := 0;
        qrcaixa_mov.parambyname('entrada').AsFloat := 0;
        qrcaixa_mov.parambyname('valor').AsFloat := rconvenio.value;
        frmmodulo.qrconfig.Open;
        qrcaixa_mov.parambyname('codconta').asstring :=
        frmmodulo.qrconfig.FieldByName('PLANO_VENDA_AP').asstring;
        qrcaixa_mov.parambyname('movimento').AsInteger := 40; // venda convenio
        qrcaixa_mov.parambyname('historico').asstring := 'Venda Convenio No. ' +
        frmvenda.lvenda_codigo.caption + ' - ' +
        frmvenda.lcliente_nome.caption;

        qrcaixa_mov.ExecSQL;

        end; }
      if rconvenio.value <> 0 then
      begin

        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into c000044');
        qrcaixa_mov.sql.add
          ('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.sql.add
          ('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

        qrcaixa_mov.parambyname('codigo').asstring :=
          frmprincipal.codifica('000044');
        qrcaixa_mov.parambyname('codcaixa').asstring :=
          frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
        qrcaixa_mov.parambyname('codoperador').asstring :=
          frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
        qrcaixa_mov.parambyname('data').asdatetime :=
          frmmodulo.qrcaixa_operador.FieldByName('DATA').asdatetime;
        qrcaixa_mov.parambyname('saida').AsFloat := 0;
        qrcaixa_mov.parambyname('entrada').AsFloat := 0;
        qrcaixa_mov.parambyname('valor').AsFloat := rconvenio.value;
        frmmodulo.qrconfig.Open;
        qrcaixa_mov.parambyname('codconta').asstring :=
          frmmodulo.qrconfig.FieldByName('PLANO_VENDA_AP').asstring;

        qrcaixa_mov.parambyname('movimento').AsInteger := 40; // venda convenio
        qrcaixa_mov.parambyname('historico').asstring := 'Venda Convenio No. ' +
          frmvenda.lvenda_codigo.caption + ' - ' +
          frmvenda.lcliente_nome.caption;

        qrcaixa_mov.ExecSQL;


        // lancamento do contas a receber

        if rdinheiro.value <> 0 then
        begin

          IBQuery1.close;
          IBQuery1.sql.clear;
          IBQuery1.sql.add('insert into c000049');
          IBQuery1.sql.add
            ('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          IBQuery1.sql.add
            (' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          IBQuery1.sql.add(' documento, tipo, situacao, filtro, numero_cupom)');
          IBQuery1.sql.add('values');
          IBQuery1.sql.add
            ('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          IBQuery1.sql.add
            (' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          IBQuery1.sql.add
            (' :documento, :tipo, :situacao, :filtro,:numero_cupom)');

          IBQuery1.parambyname('codigo').asstring :=
            frmvenda.lvenda_codigo.caption + '/00';
          IBQuery1.parambyname('codvenda').asstring :=
            frmvenda.lvenda_codigo.caption;
          IBQuery1.parambyname('codcliente').asstring :=
            frmvenda.lcliente_codigo.caption;
          IBQuery1.parambyname('codregiao').asstring :=
            frmvenda.qrcliente.FieldByName('codregiao').asstring;
          IBQuery1.parambyname('codvendedor').asstring :=
            frmvenda.lvendedor_codigo.caption;
          IBQuery1.parambyname('codcaixa').asstring :=
            frmvenda.lcaixa_codigo.caption;
          IBQuery1.parambyname('data_emissao').asstring :=
            frmvenda.lvenda_data.caption;
          IBQuery1.parambyname('data_vencimento').asstring :=
            frmvenda.lvenda_data.caption;
          IBQuery1.parambyname('valor_original').AsFloat := rdinheiro.value;
          IBQuery1.parambyname('valor_pago').AsFloat := rdinheiro.value;
          IBQuery1.parambyname('valor_atual').AsFloat := 0;
          IBQuery1.parambyname('documento').asstring := 'ENTRADA';
          IBQuery1.parambyname('tipo').asstring :=
            frmvenda.qrvenda_contasreceber.FieldByName('tipo').asstring;
          IBQuery1.parambyname('situacao').AsInteger := 2;
          IBQuery1.parambyname('filtro').AsInteger := 0;
          IBQuery1.parambyname('numero_cupom').asstring :=
            frmvenda.lvenda_cupom.caption;

          IBQuery1.ExecSQL;
        end;

        frmvenda.qrvenda_contasreceber.First;
        while not frmvenda.qrvenda_contasreceber.eof do
        begin
          IBQuery1.close;
          IBQuery1.sql.clear;
          IBQuery1.sql.add('insert into c000049');
          IBQuery1.sql.add
            ('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          IBQuery1.sql.add
            (' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          IBQuery1.sql.add(' documento, tipo, situacao, filtro, numero_cupom)');
          IBQuery1.sql.add('values');
          IBQuery1.sql.add
            ('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          IBQuery1.sql.add
            (' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          IBQuery1.sql.add
            (' :documento, :tipo, :situacao, :filtro, :numero_cupom)');
          IBQuery1.parambyname('codigo').asstring :=
           frmvenda.lvenda_codigo.caption + '/' +
            frmprincipal.zerarcodigo(IntToStr(parcela), 2);
          IBQuery1.parambyname('codvenda').asstring :=
            frmvenda.lvenda_codigo.caption;
          IBQuery1.parambyname('codcliente').asstring :=
            frmvenda.lcliente_codigo.caption;
          IBQuery1.parambyname('codregiao').asstring :=
            frmvenda.qrcliente.FieldByName('codregiao').asstring;
          IBQuery1.parambyname('codvendedor').asstring :=
            frmvenda.lvendedor_codigo.caption;
          IBQuery1.parambyname('codcaixa').asstring :=
            frmvenda.lcaixa_codigo.caption;
          IBQuery1.parambyname('data_emissao').asdatetime :=
            STRTODATE(frmvenda.lvenda_data.caption);
          IBQuery1.parambyname('data_vencimento').asdatetime :=
            frmvenda.qrvenda_contasreceber.FieldByName('vencimento').asdatetime;
          IBQuery1.parambyname('valor_original').AsFloat :=
            frmvenda.qrvenda_contasreceber.FieldByName('valor').AsFloat;
          IBQuery1.parambyname('valor_atual').AsFloat :=
            frmvenda.qrvenda_contasreceber.FieldByName('valor').AsFloat;
          IBQuery1.parambyname('documento').asstring :=
            frmvenda.qrvenda_contasreceber.FieldByName('documento').asstring;
          IBQuery1.parambyname('tipo').asstring :=
            frmvenda.qrvenda_contasreceber.FieldByName('tipo').asstring;
          IBQuery1.parambyname('situacao').AsInteger := 1;
          IBQuery1.parambyname('filtro').AsInteger := 0;
          IBQuery1.parambyname('numero_cupom').asstring :=
            frmvenda.lvenda_cupom.caption;
          IBQuery1.ExecSQL;

          frmvenda.qrvenda_contasreceber.next;
        end;
        //

      end;

      if rfinanceira.value <> 0 then
      begin
        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into c000044');
        qrcaixa_mov.sql.add
          ('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.sql.add
          ('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

        qrcaixa_mov.parambyname('codigo').asstring :=
          frmprincipal.codifica('000044');
        qrcaixa_mov.parambyname('codcaixa').asstring :=
          frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
        qrcaixa_mov.parambyname('codoperador').asstring :=
          frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
        qrcaixa_mov.parambyname('data').asdatetime :=
          frmmodulo.qrcaixa_operador.FieldByName('DATA').asdatetime;
        qrcaixa_mov.parambyname('saida').AsFloat := 0;
        qrcaixa_mov.parambyname('entrada').AsFloat := 0;
        qrcaixa_mov.parambyname('valor').AsFloat := rfinanceira.value;
        frmmodulo.qrconfig.Open;
        qrcaixa_mov.parambyname('codconta').asstring :=
          frmmodulo.qrconfig.FieldByName('PLANO_VENDA_AP').asstring;
        qrcaixa_mov.parambyname('movimento').AsInteger := 42;
        // VENDA NA FINANCEIRA
        qrcaixa_mov.parambyname('historico').asstring :=
          copy('Venda Financeira ' + FI_NOME + ' No. ' +
          frmvenda.lvenda_codigo.caption + ' - ' +
          frmvenda.lcliente_nome.caption, 1, 60);

        qrcaixa_mov.ExecSQL;

        // lancamento de financeira
        FI_LANCTO := frmprincipal.codifica('000123');

        IBQuery1.close;
        IBQuery1.sql.clear;
        IBQuery1.sql.add('insert into c000123');
        IBQuery1.sql.add
          ('(CODIGO, CODBANCO, DATA, CODCLIENTE, VALOR, SITUACAO, DATA_PGTO, VALOR_PAGO, BORDERO, PROPOSTA, OBS, CODVENDA)');
        IBQuery1.sql.add('values');
        IBQuery1.sql.add
          ('(:CODIGO, :CODBANCO, :DATA, :CODCLIENTE, :VALOR, :SITUACAO, :DATA_PGTO, :VALOR_PAGO, :BORDERO, :PROPOSTA, :OBS, :CODVENDA)');

        IBQuery1.parambyname('CODIGO').asstring := FI_LANCTO;
        IBQuery1.parambyname('CODbanco').asstring := FI_CODIGO;
        IBQuery1.parambyname('DATA').asdatetime :=
          STRTODATE(frmvenda.lvenda_data.caption);
        IBQuery1.parambyname('CODCLIENTE').asstring :=
          frmvenda.lcliente_codigo.caption;
        IBQuery1.parambyname('VALOR').AsFloat := rfinanceira.value;
        IBQuery1.parambyname('SITUACAO').asstring := '1';
        IBQuery1.parambyname('DATA_PGTO').asdatetime :=
          STRTODATE(FI_VENCIMENTO);
        IBQuery1.parambyname('VALOR_PAGO').AsFloat := 0;
        IBQuery1.parambyname('BORDERO').asstring := FI_BORDERO;
        IBQuery1.parambyname('PROPOSTA').asstring := FI_PROPOSTA;
        IBQuery1.parambyname('OBS').asstring := '';
        IBQuery1.parambyname('CODVENDA').asstring :=
          frmvenda.lvenda_codigo.caption;
        IBQuery1.ExecSQL;
      end;
    end;

    // lancamento da venda
    // if frmmodulo.natoperacao = 'venda' then
    begin
      IBQuery1.close;
      IBQuery1.sql.clear;
      IBQuery1.sql.add('insert into c000048');
      IBQuery1.sql.add('(codigo,data,codcliente,codvendedor,codcaixa,');
      IBQuery1.sql.add
        (' total,subtotal,meio_dinheiro,meio_chequeav,meio_chequeap,');
      IBQuery1.sql.add
        (' meio_cartaocred,meio_cartaodeb,meio_crediario,meio_convenio,meio_financeira,');
      IBQuery1.sql.add
        (' desconto,acrescimo,obs,NUMERO_CUPOM_FISCAL,cupom_fiscal,retirado,cod_financeira,cod_financeira_lancto,nrvenda)');
      IBQuery1.sql.add('values');
      IBQuery1.sql.add('(:codigo,:data,:codcliente,:codvendedor,:codcaixa,');
      IBQuery1.sql.add
        (' :total,:subtotal,:meio_dinheiro,:meio_chequeav,:meio_chequeap,');
      IBQuery1.sql.add
        (' :meio_cartaocred,:meio_cartaodeb,:meio_crediario,:meio_convenio,:meio_financeira,');
      IBQuery1.sql.add
        (' :desconto,:acrescimo,:obs,:NUMERO_CUPOM_FISCAL,:cupom_fiscal,:retirado,:cod_financeira,:cod_financeira_lancto,:nrvenda)');

      IBQuery1.parambyname('codigo').asstring := frmvenda.lvenda_codigo.caption;
      IBQuery1.parambyname('data').asdatetime :=
        STRTODATE(frmvenda.lvenda_data.caption);
      IBQuery1.parambyname('codcliente').asstring :=
        frmvenda.lcliente_codigo.caption;
      IBQuery1.parambyname('codvendedor').asstring :=
        frmvenda.lvendedor_codigo.caption;
      IBQuery1.parambyname('codcaixa').asstring :=
        frmvenda.lcaixa_codigo.caption;
      IBQuery1.parambyname('TOTAL').AsFloat := rtotal.value;
      IBQuery1.parambyname('SUBTOTAL').AsFloat := rsubtotal.value;
      IBQuery1.parambyname('meio_dinheiro').AsFloat := rdinheiro.value;
      IBQuery1.parambyname('meio_chequeav').AsFloat := rchequeav.value;
      IBQuery1.parambyname('meio_chequeap').AsFloat := rchequeap.value;
      IBQuery1.parambyname('meio_cartaocred').AsFloat := rcartaocred.value;
      IBQuery1.parambyname('meio_cartaodeb').AsFloat := rcartaodeb.value;
      IBQuery1.parambyname('meio_crediario').AsFloat := rcrediario.value
        + rboleto;
      IBQuery1.parambyname('meio_convenio').AsFloat := rconvenio.value;
      IBQuery1.parambyname('meio_financeira').AsFloat := rconvenio.value;
      IBQuery1.parambyname('nrvenda').asstring :=
        frmvenda.lvenda_codigo.caption;
      IBQuery1.parambyname('desconto').AsFloat := rdesconto2.value;
      IBQuery1.parambyname('acrescimo').AsFloat := racrescimo2.value;
      IBQuery1.parambyname('OBS').asstring := observ;
      IBQuery1.parambyname('COD_FINANCEIRA').asstring := FI_CODIGO;
      IBQuery1.parambyname('COD_FINANCEIRA_LANCTO').asstring := FI_LANCTO;
      IBQuery1.parambyname('NUMERO_CUPOM_FISCAL').asstring :=
        frmprincipal.zerarcodigo(frmmodulo.qrFilial.FieldByName('notafiscal')
        .asstring, 6);

      // esqueci onde configuro para funcionar
      if numero_cupomx <> '' then
        IBQuery1.parambyname('cupom_fiscal').AsInteger := 1
      else
        IBQuery1.parambyname('cupom_fiscal').AsInteger := 0;

      IBQuery1.ExecSQL;
    end;




    // cadastro de cartoes

    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.FieldByName('VENDA_CADASTRO_CARTAO').AsInteger = 1
    then
    begin
      if rcartaocred.value > 0 then
      begin
        query.close;
        query.sql.clear;
        query.sql.add('select * from c000013');
        query.sql.add('where numero = ''' + copy(cb_credito.Text, 1, 3) + '''');
        query.Open;
        if query.RecordCount > 0 then
        begin
          itotal_parcela := spin_credito.IntValue;
          for iparcela := 1 to itotal_parcela do
          begin
            IBQuery1.close;
            IBQuery1.sql.clear;
            IBQuery1.sql.add('insert into c000124');
            IBQuery1.sql.add
              ('(codigo, cod_venda, banco, cod_cliente, data_venda, valor, comissao,');
            IBQuery1.sql.add
              ('liquido, data_recebimento, situacao, tipo, parcela, valor_total)');
            IBQuery1.sql.add('values');
            IBQuery1.sql.add
              ('(:codigo, :cod_venda, :banco, :cod_cliente, :data_venda, :valor, :comissao,');
            IBQuery1.sql.add
              (':liquido, :data_recebimento, :situacao, :tipo, :parcela, :valor_total)');
            IBQuery1.parambyname('codigo').asstring :=
              frmprincipal.codifica('000124');
            IBQuery1.parambyname('cod_venda').asstring :=
              frmvenda.lvenda_codigo.caption;
            IBQuery1.parambyname('banco').asstring :=
              copy(cb_credito.Text, 1, 3);
            IBQuery1.parambyname('cod_cliente').asstring :=
              frmvenda.lcliente_codigo.caption;
            IBQuery1.parambyname('data_venda').asdatetime :=
              STRTODATE(frmvenda.lvenda_data.caption);
            // valor da parcela
            IBQuery1.parambyname('valor').AsFloat := rcartaocred.value /
              itotal_parcela;
            if query.FieldByName('comissao_CREDITO').AsFloat > 0 then
            begin
              IBQuery1.parambyname('comissao').AsFloat :=
                (rcartaocred.value / itotal_parcela) *
                (query.FieldByName('comissao_CREDITO').AsFloat / 100);
              IBQuery1.parambyname('liquido').AsFloat :=
                (rcartaocred.value / itotal_parcela) -
                ((rcartaocred.value / itotal_parcela) *
                (query.FieldByName('comissao_CREDITO').AsFloat / 100));
            end
            else
            begin
              IBQuery1.parambyname('comissao').AsFloat := 0;
              IBQuery1.parambyname('liquido').AsFloat :=
                (rcartaocred.value / itotal_parcela);
            end;
            //
            IBQuery1.parambyname('data_recebimento').asdatetime :=
              STRTODATE(frmvenda.lvenda_data.caption) +
            // (query.FieldByName('rec_CREDITO').AsInteger * iparcela);
              (query.FieldByName('rec_CREDITO').AsInteger);
            // cair todas no mesmo dia quem fica devendo é o cliente
            IBQuery1.parambyname('situacao').asstring := 'ABERTO';
            IBQuery1.parambyname('tipo').asstring := 'CREDITO';
            IBQuery1.parambyname('parcela').AsInteger := iparcela;
            IBQuery1.parambyname('valor_total').AsFloat := rcartaocred.value;
            IBQuery1.ExecSQL;
          end;
        end;
      end;

      if rcartaodeb.value > 0 then
      begin
        query.close;
        query.sql.clear;
        query.sql.add('select * from c000013');
        query.sql.add('where numero = ''' + copy(cb_debito.Text, 1, 3) + '''');
        query.Open;
        if query.RecordCount > 0 then
        begin

          itotal_parcela := spin_debito.IntValue;

          for iparcela := 1 to itotal_parcela do
          // while itotal_parcela <> 0 do
          begin
            IBQuery1.close;
            IBQuery1.sql.clear;
            IBQuery1.sql.add('insert into c000124');
            IBQuery1.sql.add
              ('(codigo, cod_venda, banco, cod_cliente, data_venda, valor, comissao,');
            IBQuery1.sql.add
              ('liquido, data_recebimento, situacao, tipo, parcela, valor_total)');
            IBQuery1.sql.add('values');
            IBQuery1.sql.add
              ('(:codigo, :cod_venda, :banco, :cod_cliente, :data_venda, :valor, :comissao,');
            IBQuery1.sql.add
              (':liquido, :data_recebimento, :situacao, :tipo, :parcela, :valor_total)');
            IBQuery1.parambyname('codigo').asstring :=
              frmprincipal.codifica('000124');
            IBQuery1.parambyname('cod_venda').asstring :=
              frmvenda.lvenda_codigo.caption;
            IBQuery1.parambyname('banco').asstring :=
              copy(cb_debito.Text, 1, 3);
            IBQuery1.parambyname('cod_cliente').asstring :=
              frmvenda.lcliente_codigo.caption;
            IBQuery1.parambyname('data_venda').asdatetime :=
              STRTODATE(frmvenda.lvenda_data.caption);
            // valor da parcela
            IBQuery1.parambyname('valor').AsFloat := rcartaodeb.value /
              itotal_parcela;
            if query.FieldByName('comissao_DEBITO').AsFloat > 0 then
            begin
              IBQuery1.parambyname('comissao').AsFloat :=
                (rcartaodeb.value / itotal_parcela) *
                (query.FieldByName('comissao_DEBITO').AsFloat / 100);
              IBQuery1.parambyname('liquido').AsFloat :=
                (rcartaodeb.value / itotal_parcela) -
                ((rcartaodeb.value / itotal_parcela) *
                (query.FieldByName('comissao_DEBITO').AsFloat / 100));
            end
            else
            begin
              IBQuery1.parambyname('comissao').AsFloat := 0;
              IBQuery1.parambyname('liquido').AsFloat :=
                (rcartaodeb.value / itotal_parcela);
            end;
            //
            IBQuery1.parambyname('data_recebimento').asdatetime :=
              STRTODATE(frmvenda.lvenda_data.caption) +
            // (query.FieldByName('rec_DEBITO').AsInteger * iparcela);
              (query.FieldByName('rec_DEBITO').AsInteger);
            IBQuery1.parambyname('situacao').asstring := 'ABERTO';
            IBQuery1.parambyname('tipo').asstring := 'DEBITO';
            IBQuery1.parambyname('parcela').AsInteger := iparcela;
            IBQuery1.parambyname('valor_total').AsFloat := rcartaodeb.value;
            IBQuery1.ExecSQL;
          end;
        end;

      end;
    end;

    // final
    IBQuery1.close;
    IBQuery1.sql.clear;
    IBQuery1.sql.add('select * from c000048 where codigo = ''' +
      frmvenda.lvenda_codigo.caption + '''');
    IBQuery1.Open;
    // ecfs tratar depois
    // ecf_impressao := frmmodulo.ecf_impressao;
    // ecf_modelo := frmmodulo.qrconfig.FieldByName('ecf_modelo').asstring;

    // chamava a tela impressao
    //agora toda e qualquer venda sera gerada anfe
    frmvenda_impressao := tfrmvenda_impressao.create(self);
    frmvenda_impressao.OnShow(frmvenda_impressao);
    frmvenda_impressao.AdvGlowButton1.Click;
    frmvenda_impressao.Free;
    // if rcrediario.value > 0 then frmvenda_impressao.combo_modelo.ItemIndex := 1 else frmvenda_impressao.combo_modelo.ItemIndex := 0;
    //frmvenda_impressao.showmodal;
    //imprimir boleto


  //  frmmodulo.boleto.Imprimir;

    // inicio problema
    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.FieldByName('CONTROLA_ENTREGA').AsInteger = 1 then
    begin
      FRMVENDA_ENTREGA := TFRMVENDA_ENTREGA.create(self);
      FRMVENDA_ENTREGA.qrEntrega.Open;
      while FRMVENDA_ENTREGA.qrEntrega.RecordCount > 0 do
        FRMVENDA_ENTREGA.qrEntrega.delete;

      frmvenda.qrvenda_produto.First;
      while not frmvenda.qrvenda_produto.eof do
      begin
        if frmvenda.qrvenda_produto.FieldByName('qtde').AsFloat > 0 then
        begin
          FRMVENDA_ENTREGA.qrEntrega.Insert;
          FRMVENDA_ENTREGA.qrEntrega.FieldByName('codigo').asstring :=
            frmvenda.qrvenda_produto.FieldByName('codproduto').asstring;
          FRMVENDA_ENTREGA.qrEntrega.FieldByName('produto').asstring :=
            frmvenda.qrvenda_produto.FieldByName('produto').asstring;
          FRMVENDA_ENTREGA.qrEntrega.FieldByName('unidade').asstring :=
            frmvenda.qrvenda_produto.FieldByName('numeracao').asstring;
          FRMVENDA_ENTREGA.qrEntrega.FieldByName('qtde_vendida').AsFloat :=
            frmvenda.qrvenda_produto.FieldByName('qtde').AsFloat;
          FRMVENDA_ENTREGA.qrEntrega.FieldByName('qtde_entregue').AsFloat :=
            frmvenda.qrvenda_produto.FieldByName('qtde').AsFloat;
          FRMVENDA_ENTREGA.qrEntrega.FieldByName('qtde_saldo').AsFloat := 0;
          FRMVENDA_ENTREGA.qrEntrega.FieldByName('item').asstring :=
            frmvenda.qrvenda_produto.FieldByName('item').asstring;
          FRMVENDA_ENTREGA.qrEntrega.post;
        end;
        frmvenda.qrvenda_produto.next;
      end;
      FRMVENDA_ENTREGA.qrEntrega.IndexFieldNames := 'ITEM';
      FRMVENDA_ENTREGA.showmodal;
    end;


    // movimento de produto verificar se esta correto o estoque

    frmmodulo.qrproduto_mov.Open;
    frmvenda.qrvenda_produto.First;
    while not frmvenda.qrvenda_produto.eof do
    begin

      IBQuery1.close;
      IBQuery1.sql.clear;
      IBQuery1.sql.add('insert into c000032');
      IBQuery1.sql.add('(codigo,codnota,numeronota,');
      IBQuery1.sql.add('codproduto,qtde,unitario,');
      IBQuery1.sql.add('total,desconto,acrescimo,unidade,aliquota,cst,');
      IBQuery1.sql.add('cupom_item,cupom_numero,cupom_modelo,');
      IBQuery1.sql.add
        ('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
      IBQuery1.sql.add
        ('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop,produto)');
      IBQuery1.sql.add('values');
      IBQuery1.sql.add('(:xcodigo,:xcodnota,:xnumeronota,');
      IBQuery1.sql.add(':xcodproduto,:xqtde,:xunitario,');
      IBQuery1.sql.add
        (':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,');
      IBQuery1.sql.add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
      IBQuery1.sql.add
        (':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
      IBQuery1.sql.add
        (':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop,:xproduto)');

      IBQuery1.params.parambyname('xcodigo').asstring :=
        frmprincipal.codifica('000032');
      IBQuery1.params.parambyname('xcodnota').asstring :=
        copy(frmvenda.lvenda_codigo.caption, 1, 6);
      IBQuery1.params.parambyname('xnumeronota').asstring :=
        frmvenda.lvenda_codigo.caption;
      IBQuery1.params.parambyname('xcodproduto').asstring :=
        frmvenda.qrvenda_produto.FieldByName('codproduto').asstring;
      IBQuery1.params.parambyname('xqtde').AsFloat :=
        frmvenda.qrvenda_produto.FieldByName('qtde').AsFloat;
      IBQuery1.params.parambyname('xunitario').AsFloat :=
        frmvenda.qrvenda_produto.FieldByName('unitario').AsFloat;
      IBQuery1.params.parambyname('xtotal').AsFloat :=
        frmvenda.qrvenda_produto.FieldByName('total').AsFloat;
      IBQuery1.params.parambyname('xdesconto').AsFloat :=
        frmvenda.qrvenda_produto.FieldByName('desconto').AsFloat;
      IBQuery1.params.parambyname('xacrescimo').AsFloat :=
        frmvenda.qrvenda_produto.FieldByName('acrescimo').AsFloat;
      IBQuery1.params.parambyname('xunidade').asstring :=
        frmvenda.qrvenda_produto.FieldByName('numeracao').asstring;
      IBQuery1.params.parambyname('xALIQUOTA').AsFloat :=
        frmvenda.qrvenda_produto.FieldByName('aliquota').AsFloat;
      IBQuery1.params.parambyname('xCST').asstring :=
        frmvenda.qrvenda_produto.FieldByName('CST').asstring;
      IBQuery1.params.parambyname('xcupom_item').asstring :=
        frmprincipal.zerarcodigo(frmvenda.qrvenda_produto.FieldByName('item')
        .asstring, 3);
      IBQuery1.params.parambyname('xcfop').asstring := '5102';
      IBQuery1.params.parambyname('xcupom_numero').asstring := numero_cupomx;
      IBQuery1.params.parambyname('xcupom_modelo').asstring := '2D';
      IBQuery1.params.parambyname('xSERIAL').asstring := '';
      IBQuery1.params.parambyname('xcodgrade').asstring := '';
      IBQuery1.params.parambyname('xmovimento_estoque').AsFloat :=
        frmvenda.qrvenda_produto.FieldByName('qtde').AsFloat * (-1);
      if frmvenda.qrvenda_produtoNUMERACAO.asstring = 'OS' then
        IBQuery1.params.parambyname('xmovimento_estoque').AsFloat := 0;
      IBQuery1.params.parambyname('xcredito_icms').AsFloat := 0;
      IBQuery1.params.parambyname('xsubgrupo').asstring :=
        frmvenda.qrvenda_produto.FieldByName('codsubgrupo').asstring;
      IBQuery1.params.parambyname('xcodbarra').asstring :=
        frmvenda.qrvenda_produto.FieldByName('codbarras').asstring;

      if frmvenda.qrvenda_produtopiscofins.asstring = 'S' then
      begin
        IBQuery1.params.parambyname('xpis').AsFloat :=
          frmvenda.qrvenda_produto.FieldByName('total').AsFloat * vpis / 100;
        IBQuery1.params.parambyname('xcofins').AsFloat :=
          frmvenda.qrvenda_produto.FieldByName('total').AsFloat * vcofins / 100;
      end
      else
      begin
        IBQuery1.params.parambyname('xpis').AsFloat := 0;
        IBQuery1.params.parambyname('xcofins').AsFloat := 0;
      end;

      if ecf_modelo <> '' then
      begin
        // ibquery1.params.parambyname('xecf_serie').asstring := frmprincipal.pstatus.Panels[11].Text;
        // ibquery1.params.parambyname('xecf_caixa').asstring := frmprincipal.pstatus.Panels[9].Text;
      end;
      IBQuery1.params.parambyname('xcodcliente').asstring :=
        frmvenda.lcliente_codigo.caption;
      IBQuery1.params.parambyname('xcodvendedor').asstring :=
        frmvenda.lvendedor_codigo.caption;

      case frmvenda.qrvenda_produto.FieldByName('tipo').AsInteger of
        0:
          IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 2; // VENDA
        1:
          begin
            IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 2;
            // VENDA SERIAL
            IBQuery1.params.parambyname('xSERIAL').asstring :=
              frmvenda.qrvenda_produto.FieldByName('serial').asstring;
          end;
        2:
          begin
            IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 2;
            // VENDA grade
            IBQuery1.params.parambyname('xcodgrade').asstring :=
              frmvenda.qrvenda_produto.FieldByName('codgrade').asstring;
          end;

        4:
          IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 4;
        // devolucao de VENDA

        7:
          IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 7;
        // devolucao de VENDA

        10:
          IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 7; // VENDA
        11:
          begin
            IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 7;
            // VENDA SERIAL
            IBQuery1.params.parambyname('xSERIAL').asstring :=
              frmvenda.qrvenda_produto.FieldByName('serial').asstring;
          end;
        12:
          begin
            IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 7;
            // VENDA grade
            IBQuery1.params.parambyname('xcodgrade').asstring :=
              frmvenda.qrvenda_produto.FieldByName('codgrade').asstring;
          end;

        20:
          IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 2; // VENDA
        21:
          begin
            IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 2;
            // VENDA SERIAL
            IBQuery1.params.parambyname('xSERIAL').asstring :=
              frmvenda.qrvenda_produto.FieldByName('serial').asstring;
          end;
        22:
          begin
            IBQuery1.params.parambyname('xMOVIMENTO').AsInteger := 2;
            // VENDA grade
            IBQuery1.params.parambyname('xcodgrade').asstring :=
              frmvenda.qrvenda_produto.FieldByName('codgrade').asstring;
          end;

      end;
      IBQuery1.params.parambyname('xdata').asdatetime :=
        STRTODATE(frmvenda.lvenda_data.caption);
      IBQuery1.params.parambyname('xproduto').asstring :=
       frmvenda.qrvenda_produto.FieldByName('produto').asstring;

      IBQuery1.ExecSQL;
      frmvenda.qrvenda_produto.next;
    end;

    // atualizar compra cliente so na venda

    if frmmodulo.natoperacao = 'venda' then
    begin
      IBQuery1.close;
      IBQuery1.sql.clear;
      IBQuery1.sql.add
        ('update c000007 set data_ultimacompra = :data where codigo = ''' +
        frmvenda.lcliente_codigo.caption + '''');
      IBQuery1.parambyname('data').asdatetime :=
        STRTODATE(frmvenda.lvenda_data.caption);
      IBQuery1.ExecSQL;
    end;

    frmmodulo.Conexao.Commit;
    VALOR_NOTAZ := rtotal.value;

    // venda simples
    if frmmodulo.gera_nf = 0 then
    begin
      // nao gera nf e atualiza tabela de venda
      IBQuery1.close;
      IBQuery1.sql.clear;
      IBQuery1.sql.add
        ('update C000048 set NUMERO_CUPOM_FISCAL = :NUMERO_CUPOM_FISCAL where codigo = :codigo');
      IBQuery1.params.parambyname('codigo').asstring :=
        frmvenda.lvenda_codigo.caption;
      IBQuery1.params.parambyname('NUMERO_CUPOM_FISCAL').asstring := '';
      IBQuery1.ExecSQL;

      if frmmodulo.importando_orcamento = 1 then
      begin
        // atualiza orcamento codvenda
        frmmodulo.qrorcamento.close;
        frmmodulo.qrorcamento.sql.clear;
        frmmodulo.qrorcamento.sql.add
          ('update C000056 set CODVENDA = :CODVENDA ,GERA_NF = 1 where CODIGO = :CODIGO');
        frmmodulo.qrorcamento.params.parambyname('CODIGO').asstring :=
          frmmodulo.cod_orcamento;
        frmmodulo.qrorcamento.params.parambyname('CODVENDA').asstring :=
          frmvenda.lvenda_codigo.caption;
        frmmodulo.qrorcamento.ExecSQL;
      end;

      frmmodulo.Conexao.Commit;
    end;

    // Venda com NF
    if frmmodulo.gera_nf = 1 then
    begin
      // atualiza proxima NF
      frmmodulo.qrFilial.edit;
      frmmodulo.qrFilial.FieldByName('notafiscal').AsInteger :=
        frmmodulo.qrFilial.FieldByName('notafiscal').AsInteger + 1;
      frmmodulo.qrFilial.post;

      if frmmodulo.importando_orcamento = 1 then
      begin
        // atualiza orcamento codvenda
        frmmodulo.qrorcamento.close;
        frmmodulo.qrorcamento.sql.clear;
        frmmodulo.qrorcamento.sql.add
          ('update C000056 set CODVENDA = :CODVENDA , GERA_NF = 2 , CODNF = :CODNF where CODIGO = :CODIGO');
        frmmodulo.qrorcamento.params.parambyname('CODIGO').asstring :=
          frmmodulo.cod_orcamento;
        frmmodulo.qrorcamento.params.parambyname('CODVENDA').asstring :=
          frmvenda.lvenda_codigo.caption;
        frmmodulo.qrorcamento.params.parambyname('CODNF').asstring :=
          NUMERO_NOTAZ;
        frmmodulo.qrorcamento.ExecSQL;
      end;

      frmmodulo.Conexao.Commit;
    end;

    // variaveis p relatorio
    frmmodulo.qrvenda.close;
    frmmodulo.qrvenda.sql.clear;
    frmmodulo.qrvenda.sql.add('select * from c000048 where codigo = ''' +
      frmvenda.lvenda_codigo.caption + '''');
    frmmodulo.qrvenda.Open;
    fsvenda.close;
    fsvenda.Open;

    frmmodulo.qrcliente.close;
    frmmodulo.qrcliente.sql.clear;
    frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''' +
      frmvenda.lcliente_codigo.caption + '''');
    frmmodulo.qrcliente.Open;
    begin
      CLIENTE_NOME := frmmodulo.qrcliente.FieldByName('nome').asstring;
      CLIENTE_ENDERECO := frmmodulo.qrcliente.FieldByName('endereco').asstring;
      CLIENTE_BAIRRO := frmmodulo.qrcliente.FieldByName('bairro').asstring;
      CLIENTE_CIDADE := frmmodulo.qrcliente.FieldByName('cidade').asstring;
      CLIENTE_UF := frmmodulo.qrcliente.FieldByName('uf').asstring;
      CLIENTE_CEP := frmmodulo.qrcliente.FieldByName('cep').asstring;
      CLIENTE_TELEFONE := frmmodulo.qrcliente.FieldByName('telefone1').asstring
        + '/' + frmmodulo.qrcliente.FieldByName('celular').asstring + '/' +
        frmmodulo.qrcliente.FieldByName('telefone2').asstring;
      CLIENTE_CPF := frmmodulo.qrcliente.FieldByName('cpf').asstring;
      CLIENTE_RG := frmmodulo.qrcliente.FieldByName('rg').asstring;
      CLIENTE_CODIGO := frmmodulo.qrcliente.FieldByName('CODIGO').asstring;
    end;

    qrproduto_mov.close;
    qrproduto_mov.sql.clear;
    qrproduto_mov.sql.add('select * from c000032 where codnota = ''' +
      frmvenda.lvenda_codigo.caption + ''' and codcliente = ''' +
      frmvenda.lcliente_codigo.caption + '''');
    qrproduto_mov.Open;
    qrproduto_mov.First;

    frmmodulo.Venda_IMP(frmvenda.lvenda_codigo.caption);



    if imp_duplicata = '1' then
    begin
      if rcrediario.value <> 0 then
      begin
        if application.messagebox('Deseja imprimir Carnê?', 'Aviso',
          mb_yesno + mb_iconquestion) = idyes then
        begin

          qrcontasreceber.close;
          qrcontasreceber.sql.clear;
          qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' +
            frmvenda.lvenda_codigo.caption +
            ''' and situacao = 1 order by data_vencimento');
          qrcontasreceber.Open;
          if qrcontasreceber.RecordCount > 0 then
          begin
            frmmodulo.qrrelatorio.Open;
            frmmodulo.qrrelatorio.edit;
            frmmodulo.qrrelatorio.FieldByName('linha1').asstring :=
              emitente_cidade + FormatDateTime
              ('", "dddd", "d" de "mmmm" de "yyyy',
              frmmodulo.qrvenda.FieldByName('data').asdatetime);
            frmmodulo.qrrelatorio.FieldByName('linha2').asstring :=
              AnsiUpperCase(extenso(frmvenda_fechamento.rtotal.value));
            frmmodulo.qrrelatorio.FieldByName('linha3').asstring :=
              IntToStr(qrcontasreceber.RecordCount);
            frmmodulo.qrrelatorio.FieldByName('linha4').asstring :=
              FORMATFLOAT('###,###,##0.00',
              qrcontasreceber.FieldByName('valor_atual').AsFloat);
            frmmodulo.qrrelatorio.FieldByName('linha6').asstring :=
              IntToStr(qrproduto_mov.RecordCount);
            frmmodulo.qrrelatorio.post;
            fxvenda.LoadFromFile('c:\OneMaker\server\rel\f000074.fr3');
            fxvenda.ShowReport;
            fxvenda.LoadFromFile('c:\OneMaker\server\rel\f000153.fr3');
            fxvenda.ShowReport;

          end
          else
          begin

            frmmodulo.qrrelatorio.Open;
            frmmodulo.qrrelatorio.edit;
            frmmodulo.qrrelatorio.FieldByName('linha6').asstring :=
              IntToStr(qrproduto_mov.RecordCount);
            frmmodulo.qrrelatorio.post;
            fxvenda.LoadFromFile('c:\OneMaker\server\rel\f000050.fr3');
            fxvenda.ShowReport;
          end;
        end;
      end;
    end;
    frmmodulo.qrcliente.close;
    frmmodulo.qrcliente.sql.clear;
    frmmodulo.qrcliente.sql.add('select * from c000007');
    frmmodulo.qrcliente.Open;
  finally
    bgravar.enabled := TRUE;
  end;
  finalizou := TRUE;
  frmmodulo.finalizou_venda := TRUE;
  frmmodulo.codvenda_agenda := frmvenda.lvenda_codigo.caption;
  close;
end;

procedure Tfrmvenda_fechamento.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento.FormShow(Sender: TObject);
begin

  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.FieldByName('VENDA_CADASTRO_CARTAO').AsInteger = 1 then
  begin
    cb_debito.Visible := TRUE;
    cb_credito.Visible := TRUE;
    lb_credito.Visible := TRUE;
    lb_debito.Visible := TRUE;
    spin_credito.Visible := TRUE;
    spin_debito.Visible := TRUE;

    query.close;
    query.sql.clear;
    query.sql.add('select * from c000013');
    query.sql.add('where cartao_credito = 1');
    query.sql.add('order by banco');
    query.Open;
    query.First;
    cb_debito.Items.clear;
    cb_credito.Items.clear;
    // cb_debito.Items.add('Bandeira');
    // cb_credito.Items.add('Bandeira');
    while not query.eof do
    begin
      cb_debito.Items.add(frmprincipal.zerarcodigo(query.FieldByName('numero')
        .asstring, 3) + ' - ' + query.FieldByName('banco').asstring);
      cb_credito.Items.add(frmprincipal.zerarcodigo(query.FieldByName('numero')
        .asstring, 3) + ' - ' + query.FieldByName('banco').asstring);
      query.next;
    end;
    cb_debito.ItemIndex := 0;
    cb_credito.ItemIndex := 0;

  end
  else
  begin
    cb_debito.Visible := false;
    cb_credito.Visible := false;
    lb_credito.Visible := false;
    lb_debito.Visible := false;
    spin_credito.Visible := false;
    spin_debito.Visible := false;

  end;

  // FTEF
  if USA_TEF then
  begin
    PTEF1.Visible := TRUE;
    ptef2.Visible := TRUE;
  end;

  frmmodulo.qrconfig.Open;
  porta_impressora := frmmodulo.qrconfig.FieldByName
    ('VENDA_PORTA_IMPRESSORA').asstring;

  rsubtotal.value := frmvenda.rtotal.value;
  rtotal.value := frmvenda.rtotal.value;

  pconvenio.Visible := false;

  rdesconto1.SetFocus;

  if self.Tag = 100 then
  begin
    { // verificar movimento e nao abrir para devolucao e garantia
      // chama condiçoes de pagamento
      if frmmodulo.natoperacao = 'venda' then
      begin
      frmvenda_contasreceber := tfrmvenda_contasreceber.create(self);
      frmvenda_contasreceber.showmodal;
      parcela_credito := 0;
      parcela_debito := 0;
      while not frmvenda.qrvenda_contasreceber.eof do
      begin
      if frmvenda.qrvenda_contasreceber.FieldByName('tipo').asstring = 'CARTAO DE CREDITO'
      then
      begin
      parcela_credito:= parcela_credito+1;
      spin_credito.Value := parcela_credito;
      end;
      if frmvenda.qrvenda_contasreceber.FieldByName('tipo').asstring = 'CARTAO DE DEBITO'
      then
      begin
      parcela_debito:= parcela_debito+1;
      spin_debito.Value := parcela_debito;
      end;
      end;

      end; }
  end;

end;

procedure Tfrmvenda_fechamento.rdinheiroEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;
  edinheiro.Brush.color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rchequeavEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;
  echequeav.Brush.color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rchequeapEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;
  echequeap.Brush.color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rcartaocredEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;
  ecartaocred.Brush.color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rcartaodebEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;
  ecartaodeb.Brush.color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rcrediarioEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;
  ecrediario.Brush.color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rcrediarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmvenda_fechamento.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento.rchequeavExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  echequeav.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmvenda_fechamento.rchequeapExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  echequeap.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmvenda_fechamento.rcartaocredExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  ecartaocred.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmvenda_fechamento.rcartaodebExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  ecartaodeb.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmvenda_fechamento.rcrediarioExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  ecrediario.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmvenda_fechamento.BitBtn1Click(Sender: TObject);
begin
  frmvenda_obs := tfrmvenda_obs.create(self);
  frmvenda_obs.edit1.Text := observ;
  frmvenda_obs.showmodal;
end;

procedure Tfrmvenda_fechamento.rconvenioEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;
  econvenio.Brush.color := $00A8FFFF;;

end;

procedure Tfrmvenda_fechamento.rconvenioExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  econvenio.Brush.color := clwindow;

  /// /////////////////

  if rconvenio.value > 0 then
  begin

    if rcrediario.value > 0 then
      Exit;

    frmvenda_contasreceber := tfrmvenda_contasreceber.create(self);
    frmvenda_contasreceber.showmodal;

    Query2.close;
    Query2.sql.clear;
    Query2.sql.add('select * from c000007 where codigo = ''' +
      frmvenda.lcliente_codigo.caption + '''');
    Query2.Open;

    begin
      econvenio_codcliente.Text := Query2.FieldByName('codigo').asstring;
      econvenio_cliente.Text := Query2.FieldByName('nome').asstring;
      if Query2.FieldByName('codconvenio').asstring <> '' then
      begin
        econvenio_codconvenio.Text := Query2.FieldByName('codconvenio')
          .asstring;
        query1.close;
        query1.sql.clear;
        query1.sql.add('select * from c000071 where codigo = ''' +
          Query2.FieldByName('codconvenio').asstring + '''');
        query1.Open;
        if query1.RecNo > 0 then
          econvenio_convenio.Text := query1.FieldByName('nome').asstring
        else
        begin
          application.messagebox('Convênio não encontrado!', 'Atenção!',
            mb_ok + mb_iconerror);
          rconvenio.SetFocus;
          Exit;
        end;
      end
      else
      begin
        application.messagebox('Este cliente não pertence a nenhum convênio!',
          'Atenção!', mb_ok + mb_iconerror);
        rconvenio.SetFocus;
        Exit;
      end;
      if frmvenda_fechamento.rdesconto1.value > 0 then
      begin
        if application.messagebox
          ('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?',
          'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
          rconvenio_desconto.value := query1.FieldByName('desconto').AsFloat
        else
          rconvenio_desconto.value := 0;
      end
      else
        rconvenio_desconto.value := query1.FieldByName('desconto').AsFloat;

      if rconvenio_desconto.value <> 0 then
      begin
        rconvenio_liquido.value := frmvenda_fechamento.rsubtotal.value -
          (frmvenda_fechamento.rsubtotal.value *
          ((rconvenio_desconto.value + frmvenda_fechamento.rdesconto1.
          value) / 100));
      end
      else
        rconvenio_liquido.value := frmvenda_fechamento.rtotal.value;
    end;
  end;

  {
    query3.Close;
    query3.SQL.clear;
    query3.SQL.add('select * from c000070 where codcliente = '''+frmvenda.lcliente_codigo.Caption+''' order by nome');
    query3.open;
    query3.First;
    convenio_combo.items.Clear;
    convenio_combo.Items.Add('O MESMO');
    while not query3.eof do
    begin
    convenio_combo.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
    query3.NEXT;
    end;
    convenio_combo.ItemIndex := 0;
    convenio_combo.SetFocus;
    end
    else
    begin
    econvenio_codcliente.setfocus;
    end;
  }

  /// /////////////////

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;

end;

procedure Tfrmvenda_fechamento.rconvenioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmvenda_fechamento.econvenio_codclienteEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;

end;

procedure Tfrmvenda_fechamento.econvenio_codclienteExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  // econvenio_coDcliente.text := frmprincipal.zerarcodigo(frmvenda_inicio.ECLIENTE.Text,6);
  if econvenio_codcliente.Text <> '000000' then
  begin
    Query2.close;
    Query2.sql.clear;
    Query2.sql.add('select * from c000007 where codigo = ''' +
      econvenio_codcliente.Text + '''');
    Query2.Open;
    if Query2.RecordCount = 0 then
    begin
      application.messagebox('Cliente não encontrado!', 'Atenção!',
        mb_ok + MB_ICONWARNING);
      bconvenio_clienteClick(frmvenda_fechamento);
    end
    else
    begin
      econvenio_codcliente.Text := Query2.FieldByName('codigo').asstring;
      econvenio_cliente.Text := Query2.FieldByName('nome').asstring;
      if Query2.FieldByName('codconvenio').asstring <> '' then
      begin
        econvenio_codconvenio.Text := Query2.FieldByName('codconvenio')
          .asstring;
        query1.close;
        query1.sql.clear;
        query1.sql.add('select * from c000071 where codigo = ''' +
          Query2.FieldByName('codconvenio').asstring + '''');
        query1.Open;
        if query1.RecNo > 0 then
          econvenio_convenio.Text := query1.FieldByName('nome').asstring
        else
        begin
          application.messagebox('Convênio não encontrado!', 'Atenção!',
            mb_ok + mb_iconerror);
          econvenio_codcliente.SetFocus;
          Exit;
        end;
      end
      else
      begin
        application.messagebox('Este cliente não pertence a nenhum convênio!',
          'Atenção!', mb_ok + mb_iconerror);
        econvenio_codcliente.SetFocus;
        Exit;
      end;
      if frmvenda_fechamento.rdesconto1.value > 0 then
      begin
        if application.messagebox
          ('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?',
          'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
          rconvenio_desconto.value := query1.FieldByName('desconto').AsFloat
        else
          rconvenio_desconto.value := 0;
      end
      else
        rconvenio_desconto.value := query1.FieldByName('desconto').AsFloat;

      if rconvenio_desconto.value <> 0 then
      begin
        rconvenio_liquido.value := frmvenda_fechamento.rsubtotal.value -
          (frmvenda_fechamento.rsubtotal.value *
          ((rconvenio_desconto.value + frmvenda_fechamento.rdesconto1.
          value) / 100));
      end
      else
        rconvenio_liquido.value := frmvenda_fechamento.rtotal.value;

      convenio_combo.SetFocus;
    end;
  end
  else
  begin
    bconvenio_cliente.SetFocus;
  end;

end;

procedure Tfrmvenda_fechamento.econvenio_codclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmvenda_fechamento.bconvenio_clienteClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    econvenio_codcliente.Text := resultado_pesquisa1;
    econvenio_cliente.Text := resultado_pesquisa2;
    if resultado_pesquisa7 <> '' then
    begin
      econvenio_codconvenio.Text := resultado_pesquisa7;
      query1.close;
      query1.sql.clear;
      query1.sql.add('select * from c000071 where codigo = ''' +
        resultado_pesquisa7 + '''');
      query1.Open;

      if query1.RecNo > 0 then
        econvenio_convenio.Text := query1.FieldByName('nome').asstring
      else
      begin
        application.messagebox('Convênio não encontrado!', 'Atenção!',
          mb_ok + mb_iconerror);
        econvenio_codcliente.SetFocus;
        Exit;
      end;
    end
    else
    begin
      application.messagebox('Este cliente não pertence a nenhum convênio!',
        'Atenção!', mb_ok + mb_iconerror);
      econvenio_codcliente.SetFocus;
      Exit;
    end;
    if frmvenda_fechamento.rdesconto1.value > 0 then
    begin
      if application.messagebox
        ('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?',
        'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
        rconvenio_desconto.value := query1.FieldByName('desconto').AsFloat
      else
        rconvenio_desconto.value := 0;
    end
    else
      rconvenio_desconto.value := query1.FieldByName('desconto').AsFloat;

    if rconvenio_desconto.value <> 0 then
    begin
      rconvenio_liquido.value := frmvenda_fechamento.rsubtotal.value -
        (frmvenda_fechamento.rsubtotal.value *
        ((rconvenio_desconto.value + frmvenda_fechamento.rdesconto1.
        value) / 100));
    end
    else
      rconvenio_liquido.value := frmvenda_fechamento.rtotal.value;

    query3.close;
    query3.sql.clear;
    query3.sql.add('select * from c000070 where codcliente = ''' +
      econvenio_codcliente.Text + ''' order by nome');
    query3.Open;
    query3.First;
    convenio_combo.Items.clear;
    convenio_combo.Items.add('O MESMO');
    while not query3.eof do
    begin
      convenio_combo.Items.add(query3.FieldByName('NOME').asstring);
      query3.next;
    end;
    convenio_combo.ItemIndex := 0;
    convenio_combo.SetFocus;
  end
  else
  begin
    econvenio_codcliente.SetFocus;
  end;

end;

procedure Tfrmvenda_fechamento.convenio_comboExit(Sender: TObject);
begin
  pconvenio.Visible := TRUE;
end;

procedure Tfrmvenda_fechamento.Button1Click(Sender: TObject);
var
  F: TEXTFILE;
  DI, ME, AN, CID, texto: string;
  ITEM: Integer;
begin
  ITEM := 1;

  if frmvenda.qrvenda_contasreceber.RecordCount > 0 then
  begin
    ASSIGNFILE(F, porta_impressora);
    REWRITE(F);
    frmvenda.qrvenda_contasreceber.First;
    while not frmvenda.qrvenda_contasreceber.eof do
    begin

      writeln(F, #27 + #51);
      writeln(F, #18 + #27#72 + #20, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      DI := copy(frmvenda.lvenda_data.caption, 1, 2);
      ME := copy(frmvenda.lvenda_data.caption, 4, 2);
      AN := copy(frmvenda.lvenda_data.caption, 7, 4);
      writeln(F,
        '                                                                   ' +
        DI + '  ' + ME + '  ' + AN); // 66
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');

      writeln(F, '  ' + frmprincipal.texto_justifica
        (FORMATFLOAT('###,###,###,##0.00', VALOR_NOTAZ), 10, ' ', 'E') +
        '       ' + frmprincipal.texto_justifica(NUMERO_NOTAZ, 10, ' ', 'D') +
        '   ' + frmprincipal.texto_justifica(FORMATFLOAT('###,###,###,##0.00',
        frmvenda.qrvenda_contasreceber.FieldByName('VALOR').AsFloat), 10, ' ',
        'E') + '   ' + frmprincipal.texto_justifica(NUMERO_NOTAZ + '/' +
        frmprincipal.zerarcodigo(IntToStr(ITEM), 2), 10, ' ', 'D') + ' ' +
        frmprincipal.texto_justifica
        (datetostr(frmvenda.qrvenda_contasreceber.FieldByName('vencimento')
        .asdatetime), 10, ' ', 'D'));

      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');

      writeln(F, '');
      writeln(F, '                             ' +
        frmvenda.qrcliente.FieldByName('nome').asstring); // 31
      writeln(F, '');
      writeln(F, '                             ' +
        frmvenda.qrcliente.FieldByName('ENDERECO').asstring);
      writeln(F, '');
      writeln(F, '');
      CID := frmvenda.qrcliente.FieldByName('Cidade').asstring;
      texto := CID + frmvenda.qrcliente.FieldByName('uf').asstring;
      while length(texto) < 36 do
      begin
        CID := CID + ' ';
        texto := CID + frmvenda.qrcliente.FieldByName('uf').asstring;
      end;
      texto := texto + '    ' + frmvenda.qrcliente.FieldByName('cep').asstring;
      writeln(F, '                             ' + texto); // 31
      writeln(F, '');
      writeln(F, '                               ' + emitente_cidade); // 31
      writeln(F, '');
      writeln(F, '                               ' +
        frmvenda.qrcliente.FieldByName('cpf').asstring); // 31
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');

      texto := AnsiUpperCase
        (extenso(frmvenda.qrvenda_contasreceber.FieldByName('VALOR').AsFloat));
      if copy(texto, 1, 2) = ' E' then
        delete(texto, 1, 2);
      writeln(F, '                          ' + #15 + #27#72 + #20 + texto);
      // 28
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');

      frmvenda.qrvenda_contasreceber.next;
      ITEM := ITEM + 1;

    end;
    CLOSEFILE(F);

  end;

end;

procedure Tfrmvenda_fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmmodulo.qrvenda.close;
  Action := cafree;
end;

procedure Tfrmvenda_fechamento.rfinanceiraEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;
  efinanceira.Brush.color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rfinanceiraExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  efinanceira.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmvenda_fechamento.rfinanceiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmvenda_fechamento.BCH_TECBANClick(Sender: TObject);
var
  vlr: string;
  i: Integer;
  F: TEXTFILE;
begin
  ASSIGNFILE(F, sTEFKoneKPath + 'gp.tmp');
  REWRITE(F);
  writeln(F, 'TECBAN');
  CLOSEFILE(F);
  ITEFTECBAN := 1;
  TEFLimpaVariaveis;
  vlr := FORMATFLOAT('#############0.00', rchequeav.value + rchequeap.value);
  i := pos(',', vlr);
  if i <> 0 then
    delete(vlr, i, 1);
  sTEFValorTotal := vlr;

  TEFVendaCheque;

  if sTEFRetorno = '0' then
  begin
    elcheque := TRUE;
    TEFFINAL := TRUE;
  end;
end;

procedure Tfrmvenda_fechamento.BCH_REDECARDClick(Sender: TObject);
var
  vlr: string;
  i: Integer;
  F: TEXTFILE;
begin
  ASSIGNFILE(F, sTEFKoneKPath + 'gp.tmp');
  REWRITE(F);
  writeln(F, 'REDECARD');
  CLOSEFILE(F);
  ITEFTECBAN := 0;
  TEFLimpaVariaveis;
  vlr := FORMATFLOAT('#############0.00', rchequeav.value + rchequeap.value);
  i := pos(',', vlr);
  if i <> 0 then
    delete(vlr, i, 1);
  sTEFValorTotal := vlr;
  TEFVendaCheque;
  if sTEFRetorno = '0' then
  begin
    elcheque := TRUE;
    TEFFINAL := TRUE;
  end;

end;

procedure Tfrmvenda_fechamento.bcartaoClick(Sender: TObject);
var
  i: Integer;
  F: TEXTFILE;
  vlr: string;
  ecf_ok: boolean;
begin
  if (rcartaocred.value > 0) or (rcartaodeb.value > 0) then
  begin
    TEFFINAL := false;

    if rcartaocred.value > 0 then
    begin
      ASSIGNFILE(F, sTEFKoneKPath + 'gp.tmp');
      REWRITE(F);
      writeln(F, 'REDECARD');
      CLOSEFILE(F);
      ITEFTECBAN := 0
    end
    else
    begin
      if frmprincipal.msgcard() then
      begin
        ASSIGNFILE(F, sTEFKoneKPath + 'gp.tmp');
        REWRITE(F);
        writeln(F, 'REDECARD');
        CLOSEFILE(F);
        ITEFTECBAN := 0
      end
      else
      begin
        ASSIGNFILE(F, sTEFKoneKPath + 'gp.tmp');
        REWRITE(F);
        writeln(F, 'TECBAN');
        CLOSEFILE(F);
        ITEFTECBAN := 1;
      end;
    end;

    CONTINUA := TRUE;

    TEFLimpaVariaveis;

    ecf_ok := false;
    repeat
      sTEFDoctoVinculado := ecf_numero_cupom(ecf_modelo);
      if sTEFDoctoVinculado = 'ERRO' then
      begin
        BLOCKINPUT(false);
        if application.messagebox('Impressora não responde! Tentar novamente?',
          'Erro ECF', mb_yesno + mb_iconerror) = idno then
        begin
          CONTINUA := false;
          ecf_ok := TRUE;
        end
        else
          BLOCKINPUT(TRUE);
      end
      else
        ecf_ok := TRUE;

    until ecf_ok = TRUE;
    BLOCKINPUT(false);

    if CONTINUA then
    begin
      for i := 1 to 6 do
        sTEFDoctoVinculado := sTEFDoctoVinculado + ' ';

      for i := 1 to 14 do
        sTEFValorTotal := sTEFValorTotal + ' ';

      vlr := FORMATFLOAT('#############0.00', rcartaocred.value +
        rcartaodeb.value);
      i := pos(',', vlr);
      if i <> 0 then
        delete(vlr, i, 1);

      sTEFValorTotal := vlr;
      sTEFValorTotal := IntToStr(strtoint(sTEFValorTotal));
      sTEFMoeda := '0';

      TEFVendaCartao; // 1 passo

      if sTEFRetorno = '0' then
      begin
        TEFFINAL := TRUE;
      end;
    end;
  end;

end;

procedure Tfrmvenda_fechamento.bpgtoClick(Sender: TObject);
var
  ret: Integer;
  ecf_ok: boolean;
begin
  if not cons_cheque then
  begin

    if (rcartaocred.value > 0) or (rcartaodeb.value <> 0) then
    begin

      CONTINUA := TRUE;
      ecf_ok := false;
      repeat

        if ecf_efetua_forma_pgto(ecf_modelo, FCARTAOCR,
          rcartaocred.value + rcartaodeb.value) = 'ERRO' then
        begin
          BLOCKINPUT(false);
          if application.messagebox
            ('Impressora não responde! Tentar novamente?', 'Erro ECF',
            mb_yesno + mb_iconerror) = idno then
          begin
            CONTINUA := false;
            ecf_ok := TRUE;
          end
          else
            BLOCKINPUT(TRUE);
        end
        else
          ecf_ok := TRUE;

      until ecf_ok = TRUE;

      BLOCKINPUT(false);

    end;

  end
  else
  begin
    if (rchequeav.value > 0) or (rchequeap.value <> 0) then
    begin
      CONTINUA := TRUE;
      ecf_ok := false;
      repeat

        if ecf_efetua_forma_pgto(ecf_modelo, FCHEQUEAV,
          rchequeav.value + rchequeap.value) = 'ERRO' then
        begin
          BLOCKINPUT(false);
          if application.messagebox
            ('Impressora não responde! Tentar novamente?', 'Erro ECF',
            mb_yesno + mb_iconerror) = idno then
          begin
            CONTINUA := false;
            ecf_ok := TRUE;
          end
          else
            BLOCKINPUT(TRUE);
        end
        else
          ecf_ok := TRUE;

      until ecf_ok = TRUE;

      BLOCKINPUT(false);

    end;

  end;

end;

procedure Tfrmvenda_fechamento.cb_creditoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    spin_credito.SetFocus;
end;

procedure Tfrmvenda_fechamento.spin_creditoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_fechamento.cb_debitoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    spin_debito.SetFocus;
end;

procedure Tfrmvenda_fechamento.spin_debitoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_fechamento.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmvenda_fechamento);
end;

procedure Tfrmvenda_fechamento.bduplicataClick(Sender: TObject);
var
  sano: string;
  sOrdem: string;
  d, m, a: word;
begin
  // chama condiçoes de pagamento

  begin
    frmvenda_contasreceber := tfrmvenda_contasreceber.create(self);
    frmvenda_contasreceber.showmodal;
  end;

end;

end.
