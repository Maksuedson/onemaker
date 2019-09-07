unit prevenda_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton,
  AdvReflectionImage;

type
  Tfrmprevenda_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    TPBobina: TMenuItem;
    tpa4logo: TMenuItem;
    tprazao: TMenuItem;
    tpcarta: TMenuItem;
    fsprevenda: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    fsitemprevenda: TfrxDBDataset;
    fsorcamento_cliente: TfrxDBDataset;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Label1: TLabel;
    evias: TSpinEdit;
    combo_modelo: TComboBox;
    fxorcamento: TfrxReport;
    qrcontasreceber: TZQuery;
    qrorcamento: TZQuery;
    qrorcamentocliente: TStringField;
    qrorcamentovendedor: TStringField;
    qrorcamento_produto: TZQuery;
    qrcliente: TZQuery;
    BobinasemFormatao1: TMenuItem;
    fscontasreceber: TfrxDBDataset;
    qrorcamentoorcamento_prevenda: TStringField;
    qrclienteCODIGO: TWideStringField;
    qrclienteNOME: TWideStringField;
    qrclienteAPELIDO: TWideStringField;
    qrclienteENDERECO: TWideStringField;
    qrclienteBAIRRO: TWideStringField;
    qrclienteCIDADE: TWideStringField;
    qrclienteUF: TWideStringField;
    qrclienteCEP: TWideStringField;
    qrclienteCOMPLEMENTO: TWideStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TWideStringField;
    qrclienteTELEFONE2: TWideStringField;
    qrclienteTELEFONE3: TWideStringField;
    qrclienteCELULAR: TWideStringField;
    qrclienteEMAIL: TWideStringField;
    qrclienteRG: TWideStringField;
    qrclienteCPF: TWideStringField;
    qrclienteFILIACAO: TWideStringField;
    qrclienteESTADOCIVIL: TWideStringField;
    qrclienteCONJUGE: TWideStringField;
    qrclientePROFISSAO: TWideStringField;
    qrclienteEMPRESA: TWideStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TWideStringField;
    qrclienteREF2: TWideStringField;
    qrclienteCODVENDEDOR: TWideStringField;
    qrclienteDATA_CADASTRO: TDateField;
    qrclienteDATA_ULTIMACOMPRA: TDateField;
    qrclienteOBS1: TWideStringField;
    qrclienteOBS2: TWideStringField;
    qrclienteOBS3: TWideStringField;
    qrclienteOBS4: TWideStringField;
    qrclienteOBS5: TWideStringField;
    qrclienteOBS6: TWideStringField;
    qrclienteNASCIMENTO: TWideStringField;
    qrclienteCODREGIAO: TWideStringField;
    qrclienteCODCONVENIO: TWideStringField;
    qrclienteCODUSUARIO: TWideStringField;
    qrclienteNUMERO: TWideStringField;
    qrclienteRG_ORGAO: TWideStringField;
    qrclienteRG_ESTADO: TWideStringField;
    qrclienteRG_EMISSAO: TDateField;
    qrclienteSEXO: TWideStringField;
    qrclienteHISTORICO: TBlobField;
    qrclientePREVISAO: TDateField;
    qrclienteCNAE: TWideStringField;
    qrclienteCOD_MUNICIPIO_IBGE: TWideStringField;
    qrclienteIBGE: TWideStringField;
    qrclienteTAMANHO_CALCA: TWideStringField;
    qrclienteTAMANHO_BLUSA: TWideStringField;
    qrclienteTAMANHO_SAPATO: TWideStringField;
    qrclienteCORRESP_ENDERECO: TWideStringField;
    qrclienteCORRESP_BAIRRO: TWideStringField;
    qrclienteCORRESP_CIDADE: TWideStringField;
    qrclienteCORRESP_UF: TWideStringField;
    qrclienteCORRESP_CEP: TWideStringField;
    qrclienteCORRESP_COMPLEMENTO: TWideStringField;
    qrclienteRG_PRODUTOR: TWideStringField;
    qrclienteRESP1_NOME: TWideStringField;
    qrclienteRESP1_CPF: TWideStringField;
    qrclienteRESP1_RG: TWideStringField;
    qrclienteRESP1_PROFISSAO: TWideStringField;
    qrclienteRESP1_ESTADO_CIVIL: TWideStringField;
    qrclienteRESP1_ENDERECO: TWideStringField;
    qrclienteRESP1_BAIRRO: TWideStringField;
    qrclienteRESP1_CIDADE: TWideStringField;
    qrclienteRESP1_UF: TWideStringField;
    qrclienteRESP1_CEP: TWideStringField;
    qrclienteRESP2_NOME: TWideStringField;
    qrclienteRESP2_CPF: TWideStringField;
    qrclienteRESP2_RG: TWideStringField;
    qrclienteRESP2_PROFISSAO: TWideStringField;
    qrclienteRESP2_ESTADO_CIVIL: TWideStringField;
    qrclienteRESP2_ENDERECO: TWideStringField;
    qrclienteRESP2_BAIRRO: TWideStringField;
    qrclienteRESP2_CIDADE: TWideStringField;
    qrclienteRESP2_UF: TWideStringField;
    qrclienteRESP2_CEP: TWideStringField;
    qrclienteFOTO: TWideStringField;
    qrclienteCONDPGTO: TWideStringField;
    qrclienteTOTALGERAL: TWideStringField;
    qrclienteFOTO2: TWideMemoField;
    qrorcamentoCODIGO: TWideStringField;
    qrorcamentoCODCAIXA: TWideStringField;
    qrorcamentoCODVENDEDOR: TWideStringField;
    qrorcamentoDATA: TDateField;
    qrorcamentoCODCLIENTE: TWideStringField;
    qrorcamentoOBS: TWideStringField;
    qrorcamentoMEIO_DINHEIRO: TFloatField;
    qrorcamentoMEIO_CHEQUEAV: TFloatField;
    qrorcamentoMEIO_CHEQUEAP: TFloatField;
    qrorcamentoMEIO_CARTAOCRED: TFloatField;
    qrorcamentoMEIO_CARTAODEB: TFloatField;
    qrorcamentoMEIO_CREDIARIO: TFloatField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoCUPOM_FISCAL: TIntegerField;
    qrorcamentoNUMERO_CUPOM_FISCAL: TWideStringField;
    qrorcamentoRETIRADO: TWideStringField;
    qrorcamentoTIPO: TIntegerField;
    qrorcamentoMEIO_CONVENIO: TFloatField;
    qrorcamentoDAV: TWideStringField;
    qrorcamentoSITUACAO: TIntegerField;
    qrorcamentoDAV_ANTERIOR: TWideStringField;
    qrorcamentoATACADO_VAREJO: TSmallintField;
    qrorcamento_produtoCODIGO: TWideStringField;
    qrorcamento_produtoCODNOTA: TWideStringField;
    qrorcamento_produtoCODPRODUTO: TWideStringField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoICMS: TFloatField;
    qrorcamento_produtoIPI: TFloatField;
    qrorcamento_produtoCFOP: TWideStringField;
    qrorcamento_produtoDATA: TDateField;
    qrorcamento_produtoNUMERONOTA: TWideStringField;
    qrorcamento_produtoCODCLIENTE: TWideStringField;
    qrorcamento_produtoDESCONTO: TFloatField;
    qrorcamento_produtoACRESCIMO: TFloatField;
    qrorcamento_produtoMOVIMENTO: TIntegerField;
    qrorcamento_produtoCODVENDEDOR: TWideStringField;
    qrorcamento_produtoCODGRADE: TWideStringField;
    qrorcamento_produtoSERIAL: TWideStringField;
    qrorcamento_produtoUNIDADE: TWideStringField;
    qrorcamento_produtoQTDE: TFloatField;
    qrorcamento_produtoVALOR_ICMS: TFloatField;
    qrorcamento_produtoICMS_REDUZIDO: TFloatField;
    qrorcamento_produtoBASE_CALCULO: TFloatField;
    qrorcamento_produtoVALOR_IPI: TFloatField;
    qrorcamento_produtoSITUACAO: TIntegerField;
    qrorcamento_produtoSERIAL_CODINT: TWideStringField;
    qrorcamento_produtoCOD_BARRAS: TWideStringField;
    qrorcamento_produtoPRODUTO: TWideStringField;
    qrorcamento_produtoCODBARRA: TWideStringField;
    qrorcamento_produtoCST: TWideStringField;
    qrorcamento_produtoALIQUOTA: TFloatField;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure tpa4logoClick(Sender: TObject);
    procedure tpa4Click(Sender: TObject);
    procedure tprazaoClick(Sender: TObject);
    procedure tpcartaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TPBobinaClick(Sender: TObject);
    procedure BobinasemFormatao1Click(Sender: TObject);
    procedure qrorcamentoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    codigo : string;
    { Public declarations }
  end;

var
  frmprevenda_impressao: Tfrmprevenda_impressao;
  porta_impressora,movimento : string;
  CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo, principal, venda, venda_fechamento, orcamento,
  orcamento_impressao, baixa_estoque, prevenda;

{$R *.dfm}

procedure Tfrmprevenda_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmprevenda_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmprevenda_impressao.bgravarClick(Sender: TObject);
begin
  case combo_modelo.ItemIndex of
  0 : TPa4logoClick(Self);
  1 : TPrazaoClick(Self);
  2 : TPcartaClick(Self);
  3 : TPBobinaClick(Self);
  4 : BobinasemFormatao1Click(self);
  END;
  close;
end;

procedure Tfrmprevenda_impressao.FormShow(Sender: TObject);
begin
qrorcamento.Close;
qrorcamento.SQL.Clear;
qrorcamento.SQL.Add('select * from c000074 where codigo = '''+codigo+'''');
qrorcamento.Open;
movimento := frmprincipal.RemoveAcentos(qrorcamentoorcamento_prevenda.AsString);
qrcontasreceber.Close;
qrcontasreceber.SQL.Clear;
qrcontasreceber.sql.add('select * from c000076 where codvenda = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
qrcontasreceber.open;
qrcontasreceber.First;
qrorcamento_produto.Close;
qrorcamento_produto.SQL.Clear;
qrorcamento_produto.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.aliquota from c000075 orc,');
qrorcamento_produto.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
qrorcamento_produto.SQL.Add('and data = :vdat');
qrorcamento_produto.params.ParamByName('vdat').AsDateTime := qrorcamento.fieldbyname('data').AsDateTime;
qrorcamento_produto.Open;
IF qrorcamento.FIELDBYNAME('CODCLIENTE').ASSTRING = 'S/CLIE' THEN
  BEGIN
  CLIENTE_NOME := 'CLIENTE ESPECIAL' ;
  CLIENTE_ENDERECO := '';
  CLIENTE_BAIRRO := '';
  CLIENTE_CIDADE := '';
  CLIENTE_UF := '';
  CLIENTE_CEP := '';
  CLIENTE_TELEFONE := '';
  CLIENTE_CPF := '';
  CLIENTE_RG := '';
  CLIENTE_CODIGO := 'S/CLIE';
  END
ELSE
  BEGIN
  qrcliente.Close;
  qrcliente.SQL.Clear;
  qrcliente.SQL.Add('select * from c000007 where codigo = '''+qrorcamento.FIELDBYNAME('CODCLIENTE').ASSTRING+'''');
  qrcliente.Open;
  CLIENTE_NOME := qrcliente.fieldbyname('nome').asstring;
  CLIENTE_ENDERECO := qrcliente.fieldbyname('endereco').asstring;
  CLIENTE_BAIRRO := qrcliente.fieldbyname('bairro').asstring;
  CLIENTE_CIDADE := qrcliente.fieldbyname('cidade').asstring;
  CLIENTE_UF := qrcliente.fieldbyname('uf').asstring;
  CLIENTE_CEP := qrcliente.fieldbyname('cep').asstring;
  CLIENTE_TELEFONE := qrcliente.fieldbyname('telefone1').asstring+'/'+qrcliente.fieldbyname('celular').asstring+'/'+qrcliente.fieldbyname('telefone2').asstring;
  CLIENTE_CPF := qrcliente.fieldbyname('cpf').asstring;
  CLIENTE_RG := qrcliente.fieldbyname('rg').asstring;
  CLIENTE_CODIGO := qrcliente.fieldbyname('CODIGO').asstring;
  END;
frmmodulo.qrconfig.open;
combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('orcamento_TIPONOTA').asinteger;
evias.Value := frmmodulo.qrconfig.FieldByName('orcamento_QTDE_VIAS_NOTA').asinteger;
porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;
end;

procedure Tfrmprevenda_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmprevenda_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmprevenda_impressao.TPNota_FiscalClick(Sender: TObject);
begin
//
end;

procedure Tfrmprevenda_impressao.tpa4logoClick(Sender: TObject);
begin
      frmmodulo.qrrelatorio.open;
      frmmodulo.qrrelatorio.edit;
      if qrorcamento_produto.RecordCount > 28 then
      frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '2'
      else
      frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '1';
      frmmodulo.qrrelatorio.post;

      fxorcamento.LoadFromFile('c:\OneMaker\server\rel\f000131.fr3');
      fxorcamento.ShowReport;
      //fxorcamento.DesignReport;
end;

procedure Tfrmprevenda_impressao.tpa4Click(Sender: TObject);
begin
//
end;

procedure Tfrmprevenda_impressao.tprazaoClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, k : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao,vias : integer;
formapgto, v1, v2 : string;
PG : integer;
y : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80
   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   PG := 1;
   k := 1;
vias := evias.Value;
WHILE VIAS <> 0 DO
  BEGIN
  writeln(arquivo,#27#80+#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_fantasia+' - SISCOM',45,' ','D'));
  writeln(arquivo,#27#80+#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco+' - '+emitente_cep+' - '+emitente_cidade,70,' ','D')+frmprincipal.Texto_Justifica('PAG: '+IntToStr(PG),10,' ','E'));
  writeln(arquivo,#27#80+#18+#27#72+#20,frmprincipal.Texto_Justifica('Telenfone : '+emitente_telefone,70,' ','D')+' VIA: '+inttostr(k));
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
  writeln(arquivo,#18+#27#72+#20,movimento+'.: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('codigo').asstring,6,'0','E')
                                 +'   DATA: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica('HORARIO: '+timetostr(time),20,' ','E')
                                 +' VD: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('vendedor').asstring,16,' ','D'));
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
//  writeln(arquivo,#18+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(consumidor_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(consumidor_nome,32,' ','D'));
//  writeln(arquivo,#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(consumidor_endereco+' '+consumidor_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(consumidor_cidade+'/'+consumidor_uf+' CEP: '+consumidor_cep,30,' ','D'));
//  writeln(arquivo,#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(consumidor_telefone,15,' ','D')+' CPF: '+frmprincipal.Texto_Justifica(consumidor_cpf,21,' ','D')+'RG: '+frmprincipal.Texto_Justifica(consumidor_rg,18,' ','D'));
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
  writeln(arquivo,#18+#27#72+#20,'CODIGO PRODUTO                          QTDE UN X UNITARIO - DESCONTO = TOTAL-R$');
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
  I := 0;
  qrorcamento_produto.first;
  while not qrorcamento_produto.eof do
    begin
    texto1 := qrorcamento_produto.fieldbyname('serial').asstring;
    writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
            frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('produto').asstring,29-length(texto1),' ','D')+
            frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrorcamento_produto.fieldbyname('qtde').asfloat),8,' ','E')+' '+
            ' X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('unitario').asfloat),9,' ','E')+
            ' - '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('desconto').asfloat),9,' ','E')+
            ' = '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('total').asfloat),10,' ','E'));
    qrorcamento_produto.Next;
    I := I + 1;
    if i = 16 then
      begin
      inc(pg);
      writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
      writeln(arquivo,#18+#27#72+#20,'                                           **** Continua na proxima pagina ****');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_fantasia+' - SISCOM',45,' ','D'));
      writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco+' - '+emitente_cep+' - '+emitente_cidade,70,' ','D')+frmprincipal.Texto_Justifica('PAG: '+IntToStr(PG),10,' ','E'));
      writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica('Telenfone : '+emitente_telefone,70,' ','D')+' VIA: '+inttostr(evias.value));
      writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
      writeln(arquivo,#18+#27#72+#20,movimento+'.: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('codigo').asstring,6,'0','E')
                                     +'   DATA: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica('HORARIO: '+timetostr(time),20,' ','E')
                                     +' VD: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('vendedor').asstring,16,' ','D'));
      writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
//      writeln(arquivo,#18+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(consumidor_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(consumidor_nome,32,' ','D'));
//      writeln(arquivo,#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(consumidor_endereco+' '+consumidor_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(consumidor_cidade+'/'+consumidor_uf+' CEP: '+consumidor_cep,33,' ','D'));
//      writeln(arquivo,#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(consumidor_telefone,15,' ','D')+' CPF: '+frmprincipal.Texto_Justifica(consumidor_cpf,21,' ','D')+'RG: '+frmprincipal.Texto_Justifica(consumidor_rg,18,' ','D'));
      writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
      writeln(arquivo,#18+#27#72+#20,'CODIGO PRODUTO                          QTDE UN X UNITARIO - DESCONTO = TOTAL-R$');
      writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
      I := 0;
      end;
    end;
  WHILE I <> 16 DO
    BEGIN
    WRITELN(ARQUIVO,'');
    I := I + 1;
    END;
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
  writeln(arquivo,#18+#27#72+#20,'SUBTOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('subtotal').asfloat),9,' ','E')+
                               '  DESCONTO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('desconto').asfloat),9,' ','E')+
                              '  ACRESCIMO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('acrescimo').asfloat),8,' ','E')+
                                  '  TOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('total').asfloat),9,' ','E'));
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
  formapgto := '';
  if qrorcamento.fieldbyname('meio_dinheiro').asfloat <> 0 then formapgto := 'À Vista/';
  if qrorcamento.fieldbyname('meio_chequeav').asfloat <> 0 then formapgto := formapgto + 'Cheque à Vista/';
  if qrorcamento.fieldbyname('meio_chequeap').asfloat <> 0 then formapgto := formapgto +'Cheque à Prazo/';
  if qrorcamento.fieldbyname('meio_cartaocred').asfloat <> 0 then formapgto := formapgto +'Cartão Crédito/';
  if qrorcamento.fieldbyname('meio_cartaodeb').asfloat <> 0 then formapgto := formapgto +'Cartão Débito/';
  if qrorcamento.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
    formapgto := formapgto +'Crediário/';
    end;
  y := length(formapgto);
  if copy(formapgto,y,1) = '/'then delete(formapgto,y,1);
  y := 0;
  v1 := '';
  v2 := '';
  if qrorcamento.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
    qrcontasreceber.first;
    while not qrcontasreceber.Eof do
      begin
      if y > 5 then
        begin
        v2 := v2 + qrcontasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat)+' | ';
        end
      else
        begin
        v1 := v1 + qrcontasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat)+' | ';
        y := y + 1;
        end;
      qrcontasreceber.next;
      end;
    end;
  writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(FORMAPGTO,25,' ','D')+'  '+V1);
  writeln(arquivo,'');
  writeln(arquivo,#18+#27#72+#20,'                                               ----------- Assinatura ----------');
  VIAS := VIAS -1;
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  k := k + 1;
  END;
closefile(arquivo);
end;

procedure Tfrmprevenda_impressao.tpcartaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, k : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao,vias : integer;
formapgto, v1, v2 : string;
PG : integer;
y : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80
   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   PG := 1;
   k := 1;
vias := evias.Value;
WHILE VIAS <> 0 DO
  BEGIN
  writeln(arquivo,#27#80+#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_fantasia+' - SISCOM',45,' ','D'));
  writeln(arquivo,#27#80+#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco+' - '+emitente_cep+' - '+emitente_cidade,70,' ','D')+frmprincipal.Texto_Justifica('PAG: '+IntToStr(PG),10,' ','E'));
  writeln(arquivo,#27#80+#18+#27#72+#20,frmprincipal.Texto_Justifica('Telenfone : '+emitente_telefone,70,' ','D')+' VIA: '+inttostr(k));
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
  writeln(arquivo,#18+#27#72+#20,movimento+'.: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('codigo').asstring,6,'0','E')
                                 +'   DATA: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica('HORARIO: '+timetostr(time),20,' ','E')
                                 +' VD: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('vendedor').asstring,16,' ','D'));
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
//  writeln(arquivo,#18+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(consumidor_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(consumidor_nome,32,' ','D'));
//  writeln(arquivo,#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(consumidor_endereco+' '+consumidor_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(consumidor_cidade+'/'+consumidor_uf+' CEP: '+consumidor_cep,30,' ','D'));
//  writeln(arquivo,#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(consumidor_telefone,15,' ','D')+' CPF: '+frmprincipal.Texto_Justifica(consumidor_cpf,21,' ','D')+'RG: '+frmprincipal.Texto_Justifica(consumidor_rg,18,' ','D'));
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
  writeln(arquivo,#18+#27#72+#20,'CODIGO PRODUTO                          QTDE UN X UNITARIO - DESCONTO = TOTAL-R$');
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
  I := 0;
  qrorcamento_produto.first;
  while not qrorcamento_produto.eof do
    begin
    texto1 := qrorcamento_produto.fieldbyname('serial').asstring;
    writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
            frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('produto').asstring,29-length(texto1),' ','D')+
            frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrorcamento_produto.fieldbyname('qtde').asfloat),8,' ','E')+' '+
            ' X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('unitario').asfloat),9,' ','E')+
            ' - '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('desconto').asfloat),9,' ','E')+
            ' = '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('total').asfloat),10,' ','E'));
    qrorcamento_produto.Next;
    I := I + 1;
    if i = 40 then
      begin
      inc(pg);
      writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
      writeln(arquivo,#18+#27#72+#20,'                                           **** Continua na proxima pagina ****');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,'');
      writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_fantasia+' - SISCOM',45,' ','D'));
      writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco+' - '+emitente_cep+' - '+emitente_cidade,70,' ','D')+frmprincipal.Texto_Justifica('PAG: '+IntToStr(PG),10,' ','E'));
      writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica('Telenfone : '+emitente_telefone,70,' ','D')+' VIA: '+inttostr(evias.value));
      writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
      writeln(arquivo,#18+#27#72+#20,movimento+'.: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('codigo').asstring,6,'0','E')
                                     +'   DATA: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica('HORARIO: '+timetostr(time),20,' ','E')
                                     +' VD: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('vendedor').asstring,16,' ','D'));
      writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
//      writeln(arquivo,#18+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(consumidor_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(consumidor_nome,32,' ','D'));
///      writeln(arquivo,#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(consumidor_endereco+' '+consumidor_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(consumidor_cidade+'/'+consumidor_uf+' CEP: '+consumidor_cep,33,' ','D'));
//      writeln(arquivo,#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(consumidor_telefone,15,' ','D')+' CPF: '+frmprincipal.Texto_Justifica(consumidor_cpf,21,' ','D')+'RG: '+frmprincipal.Texto_Justifica(consumidor_rg,18,' ','D'));
      writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
      writeln(arquivo,#18+#27#72+#20,'CODIGO PRODUTO                          QTDE UN X UNITARIO - DESCONTO = TOTAL-R$');
      writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
      I := 0;
      end;
    end;
  WHILE I <> 40 DO
    BEGIN
    WRITELN(ARQUIVO,'');
    I := I + 1;
    END;
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
  writeln(arquivo,#18+#27#72+#20,'SUBTOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('subtotal').asfloat),9,' ','E')+
                               '  DESCONTO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('desconto').asfloat),9,' ','E')+
                              '  ACRESCIMO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('acrescimo').asfloat),8,' ','E')+
                                  '  TOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('total').asfloat),9,' ','E'));
  writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
  formapgto := '';
  if qrorcamento.fieldbyname('meio_dinheiro').asfloat <> 0 then formapgto := 'À Vista/';
  if qrorcamento.fieldbyname('meio_chequeav').asfloat <> 0 then formapgto := formapgto + 'Cheque à Vista/';
  if qrorcamento.fieldbyname('meio_chequeap').asfloat <> 0 then formapgto := formapgto +'Cheque à Prazo/';
  if qrorcamento.fieldbyname('meio_cartaocred').asfloat <> 0 then formapgto := formapgto +'Cartão Crédito/';
  if qrorcamento.fieldbyname('meio_cartaodeb').asfloat <> 0 then formapgto := formapgto +'Cartão Débito/';
  if qrorcamento.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
    formapgto := formapgto +'Crediário/';
    end;
  y := length(formapgto);
  if copy(formapgto,y,1) = '/'then delete(formapgto,y,1);
  y := 0;
  v1 := '';
  v2 := '';
  if qrorcamento.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
    qrcontasreceber.first;
    while not qrcontasreceber.Eof do
      begin
      if y > 5 then
        begin
        v2 := v2 + qrcontasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat)+' | ';
        end
      else
        begin
        v1 := v1 + qrcontasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat)+' | ';
        y := y + 1;
        end;
      qrcontasreceber.next;
      end;
    end;
  writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(FORMAPGTO,25,' ','D')+'  '+V1);
  writeln(arquivo,'');
  writeln(arquivo,#18+#27#72+#20,'                                               ----------- Assinatura ----------');
  VIAS := VIAS -1;
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  k := k + 1;
  END;
closefile(arquivo);
end;


procedure Tfrmprevenda_impressao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;
  if combo_modelo.ItemIndex = 0 then
  begin
    fxorcamento.LoadFromFile('c:\OneMaker\server\rel\f000131.fr3');
    fxorcamento.designreport;
  end;
end;

procedure Tfrmprevenda_impressao.TPBobinaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas,prestacao : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario, crediario2,desconto,acrescimo : real;
    XV,k,AVANCO,vias : INTEGER;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
   dinheiro   := qrorcamento.fieldbyname('meio_dinheiro').asfloat;
   chequeav   := qrorcamento.fieldbyname('meio_chequeav').asfloat;
   chequeap   := qrorcamento.fieldbyname('meio_chequeap').asfloat;
   cartaocred := qrorcamento.fieldbyname('meio_cartaocred').asfloat;
   cartaodeb  := qrorcamento.fieldbyname('meio_cartaodeb').asfloat;
   crediario  := qrorcamento.fieldbyname('meio_crediario').asfloat;
   crediario2 := qrorcamento.fieldbyname('meio_crediario').asfloat;
assignfile(arquivo,porta_impressora);
rewrite(arquivo);
k := 1;
vias := evias.Value;
WHILE VIAS <> 0 DO
  BEGIN
  AVANCO := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;
  if (Length(emitente_fantasia) <= 25) then
  writeln(arquivo,#27#72+#14,frmprincipal.Texto_Justifica(emitente_fantasia,25,' ','C'))
  else if Length(emitente_fantasia) > 25 then
  writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_fantasia,42,' ','C'));
  writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,42,' ','C'));
  writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,42,' ','C'));
  writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,42,' ','C'));
  writeln(arquivo,#18+#27#72+#20,'------------------------------------------------');
  writeln(arquivo,#15+#27#72+#20,movimento+'.: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('codigo').AsString,6,'0','E')+
                               '  Via: '+inttostr(k));
  writeln(arquivo,#15+#27#72+#20,'  Emis: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('data').AsString,10,' ','E')+
                               ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E'));
  writeln(arquivo,#15+#27#72+#20,'  Vd: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('vendedor').AsString,35,' ','D'));
     // informacoes do cliente
  writeln(arquivo,#18+#27#72+#20,'------------------------------------------------');
//  writeln(arquivo,#18+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(consumidor_codigo,6,'0','E')+' '+copy(consumidor_nome,1,21));
//  if Length(consumidor_nome) > 21 then
//  writeln(arquivo,#18+#27#72+#20,copy(consumidor_nome,22,67));
//  if consumidor_ENDERECO <> '' then
{  writeln(arquivo,#18+#27#72+#20,'Endereco..: '+copy(consumidor_ENDERECO+' '+consumidor_bairro,1,27));
  if Length(consumidor_ENDERECO+' '+consumidor_bairro) > 28 then
  writeln(arquivo,#18+#27#72+#20,copy(consumidor_ENDERECO+' '+consumidor_bairro,28,73));
  if consumidor_CIDADE <> '' then
  writeln(arquivo,#18+#27#72+#20,'Cid/UF/CEP: '+copy(consumidor_CIDADE+'/'+consumidor_uf+' '+consumidor_cep,1,28));
  if (Length(consumidor_CIDADE+'/'+consumidor_uf+' '+consumidor_cep) > 28) and (consumidor_cidade <> '') then
  writeln(arquivo,#18+#27#72+#20,'Cid/UF/CEP: '+copy(consumidor_CIDADE+'/'+consumidor_uf+' '+consumidor_cep,29,78));
  If consumidor_TELEFONE <> '' then
  writeln(arquivo,#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(consumidor_TELEFONE,39,' ','D'));
  if consumidor_CPF <> '' then
  writeln(arquivo,#18+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(consumidor_CPF,25,' ','D'));
  if consumidor_RG <> '' then}
//  writeln(arquivo,#18+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(consumidor_RG,25,' ','D'));
  writeln(arquivo,#18+#27#72+#20,'------------------------------------------------');
  writeln(arquivo,#18+#27#72+#20,'PRODUTO       QTDE.   X   UNITARIO  =  VLR.TOTAL');
  writeln(arquivo,#18+#27#72+#20,'------------------------------------------------');
  //qrvenda_produto.Refresh;
  qrorcamento_produto.first;
  while not qrorcamento_produto.eof do
    begin
    texto1 := qrorcamento_produto.fieldbyname('serial').asstring;
    writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                   frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('produto').asstring,37,' ','D')+' '+texto1);
    writeln(arquivo,#18+#27#72+#20,'     '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrorcamento_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                   frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('unidade').asstring,2,' ','D')+
                                   '   X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('unitario').asfloat),10,' ','E')+'  = '+
                                   frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('total').asfloat),10,' ','E'));
    qrorcamento_produto.Next;
    end;
  writeln(arquivo,#18+#27#72+#20,'------------------------------------------------');
  writeln(arquivo,#18+#27#72+#20,'                 |       SUBTOTAL |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('subtotal').AsFloat),12,' ','E'));
  if qrorcamento.fieldbyname('desconto').AsFloat <> 0  then
  writeln(arquivo,#18+#27#72+#20,'                 |       DESCONTO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('desconto').AsFloat),12,' ','E'));
  if qrorcamento.fieldbyname('ACRESCIMO').AsFloat <> 0  then
  writeln(arquivo,#18+#27#72+#20,'                 |   ACRESCIMO    |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('ACRESCIMO').AsFloat),12,' ','E'));
  if dinheiro <> 0  then
  writeln(arquivo,#18+#27#72+#20,'                 |       DINHEIRO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,dinheiro),12,' ','E'));
  if chequeav <> 0  then
  writeln(arquivo,#18+#27#72+#20,'                 | CHEQUE A VISTA |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,chequeav),12,' ','E'));
  if chequeap <> 0  then
  writeln(arquivo,#18+#27#72+#20,'                 | CHEQUE A PRAZO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,chequeap),12,' ','E'));
  if cartaocred <> 0  then
  writeln(arquivo,#18+#27#72+#20,'                 | CARTAO CREDITO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaocred),12,' ','E'));
  if cartaodeb <> 0  then
  writeln(arquivo,#18+#27#72+#20,'                 |  CARTAO DEDITO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaodeb),12,' ','E'));
  if crediario <> 0  then
  writeln(arquivo,#18+#27#72+#20,'                 |      CREDIARIO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,crediario),12,' ','E'));
  writeln(arquivo,#18+#27#72+#20,'                 |          TOTAL |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('total').AsFloat),12,' ','E'));
  if crediario <> 0 then
    begin
    Writeln(arquivo,#18+#27#72+#20,'------------------------------------------------');
    Writeln(arquivo,#18+#27#72+#20,'                   PRESTACOES                   ');
    Writeln(arquivo,#18+#27#72+#20,'------------------------------------------------');
    Writeln(arquivo,#18+#27#72+#20,'No.  Vencimento Documento   Tipo        Valor-R$');
    Writeln(arquivo,#18+#27#72+#20,'------------------------------------------------');
    qrcontasreceber.First;
    prestacao := 0;
    while not qrcontasreceber.eof do
      begin
      inc(prestacao);
      writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(IntToStr(prestacao),3,'0','E')+'  '+
      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('data_vencimento').asstring,10,' ','D')+' '+
      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('documento').asstring,10,' ','D')+' '+
      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
      frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor_atual').asfloat),10,' ','E'));
      qrcontasreceber.next;
      end;
    end;
  Writeln(arquivo,#18+#27#72+#20,'------------------------------------------------');
  Writeln(arquivo,#18+#27#72+#20,'');
  Writeln(arquivo,#18+#27#72+#20,'');
  Writeln(arquivo,#18+#27#72+#20,'');
  Writeln(arquivo,#18+#27#72+#20,'------------------------------------------------');
//  WRiteln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(consumidor_nome,45,' ','C'));
//  WRiteln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(consumidor_cpf,45,' ','C'));
  while AVANCO <> 0 do
    begin
    Writeln(arquivo,#18+#27#72+#20,'');
    AVANCO := AVANCO - 1;
    end;
  VIAS := (VIAS -1);
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  k := K + 1;
  END;
closefile(arquivo);
end;

procedure Tfrmprevenda_impressao.BobinasemFormatao1Click(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas,prestacao : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario, crediario2,desconto,acrescimo : real;
    XV,k,AVANCO,vias : INTEGER;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
   dinheiro   := qrorcamento.fieldbyname('meio_dinheiro').asfloat;
   chequeav   := qrorcamento.fieldbyname('meio_chequeav').asfloat;
   chequeap   := qrorcamento.fieldbyname('meio_chequeap').asfloat;
   cartaocred := qrorcamento.fieldbyname('meio_cartaocred').asfloat;
   cartaodeb  := qrorcamento.fieldbyname('meio_cartaodeb').asfloat;
   crediario  := qrorcamento.fieldbyname('meio_crediario').asfloat;
   crediario2 := qrorcamento.fieldbyname('meio_crediario').asfloat;
   frmmodulo.qrconfig.open;
   AVANCO := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;
assignfile(arquivo,porta_impressora);
rewrite(arquivo);
k := 1;
vias := evias.Value;
WHILE VIAS <> 0 DO
  BEGIN
  if (Length(emitente_fantasia) <= 25) then
  writeln(arquivo,#27#72+#14,frmprincipal.Texto_Justifica(emitente_fantasia,25,' ','C'))
  else if Length(emitente_fantasia) > 25 then
  writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(copy(emitente_fantasia,1,35),35,' ','C'));
  writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,42,' ','C'));
  writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,42,' ','C'));
  writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,42,' ','C'));
  writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
  writeln(arquivo,#15+#27#72+#20,movimento+'.: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('codigo').AsString,6,'0','E')+
                               '  Via: '+inttostr(k));
  writeln(arquivo,#15+#27#72+#20,'  Emis: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('data').AsString,10,' ','E')+
                               ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E'));
  writeln(arquivo,#15+#27#72+#20,'  Vd: '+frmprincipal.Texto_Justifica(qrorcamento.fieldbyname('vendedor').AsString,35,' ','D'));
     // informacoes do cliente
  writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
{  writeln(arquivo,#15+#27#71+#20,'Cliente...: '+frmprincipal.Texto_Justifica(consumidor_codigo,6,'0','E')+' '+copy(consumidor_nome,1,35));
  if Length(consumidor_nome) > 35 then
  writeln(arquivo,#15+#27#71+#20,copy(consumidor_nome,36,70));
  if consumidor_ENDERECO <> '' then
  writeln(arquivo,#15+#27#72+#20,'Endereco..: '+copy(consumidor_ENDERECO+' '+consumidor_bairro,1,27));
  if Length(consumidor_ENDERECO+' '+consumidor_bairro) > 28 then
  writeln(arquivo,#15+#27#72+#20,copy(consumidor_ENDERECO+' '+consumidor_bairro,28,73));
  if consumidor_CIDADE <> '' then
  writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+copy(consumidor_CIDADE+'/'+consumidor_uf+' '+consumidor_cep,1,28));
  if (Length(consumidor_CIDADE+'/'+consumidor_uf+' '+consumidor_cep) > 28) and (consumidor_cidade <> '') then
  writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+copy(consumidor_CIDADE+'/'+consumidor_uf+' '+consumidor_cep,29,78));
  If consumidor_TELEFONE <> '' then
  writeln(arquivo,#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(consumidor_TELEFONE,39,' ','D'));
  if consumidor_CPF <> '' then
  writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(consumidor_CPF,25,' ','D'));
  if consumidor_RG <> '' then}
//  writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(consumidor_RG,25,' ','D'));
  writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
  writeln(arquivo,#15+#27#72+#20,'PRODUTO       QTDE.   X   UNITARIO  =  VLR.TOTAL');
  writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
  //qrvenda_produto.Refresh;
  qrorcamento_produto.first;
  while not qrorcamento_produto.eof do
    begin
    texto1 := qrorcamento_produto.fieldbyname('serial').asstring;
    writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                   frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('produto').asstring,37,' ','D')+' '+texto1);
    writeln(arquivo,#15+#27#72+#20,'     '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrorcamento_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                   frmprincipal.Texto_Justifica(qrorcamento_produto.fieldbyname('unidade').asstring,2,' ','D')+
                                   '   X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('unitario').asfloat),10,' ','E')+'  = '+
                                   frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento_produto.fieldbyname('total').asfloat),10,' ','E'));
    qrorcamento_produto.Next;
    end;
  writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
  writeln(arquivo,#15+#27#72+#20,'                 |       SUBTOTAL |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('subtotal').AsFloat),12,' ','E'));
  if qrorcamento.fieldbyname('desconto').AsFloat <> 0  then
  writeln(arquivo,#15+#27#72+#20,'                 |       DESCONTO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('desconto').AsFloat),12,' ','E'));
  if acrescimo <> 0  then
  writeln(arquivo,#15+#27#72+#20,'                 |   ACRESCIMO    |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,acrescimo),12,' ','E'));
  if dinheiro <> 0  then
  writeln(arquivo,#15+#27#72+#20,'                 |       DINHEIRO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,dinheiro),12,' ','E'));
  if chequeav <> 0  then
  writeln(arquivo,#15+#27#72+#20,'                 | CHEQUE A VISTA |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,chequeav),12,' ','E'));
  if chequeap <> 0  then
  writeln(arquivo,#15+#27#72+#20,'                 | CHEQUE A PRAZO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,chequeap),12,' ','E'));
  if cartaocred <> 0  then
  writeln(arquivo,#15+#27#72+#20,'                 | CARTAO CREDITO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaocred),12,' ','E'));
  if cartaodeb <> 0  then
  writeln(arquivo,#15+#27#72+#20,'                 |  CARTAO DEDITO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaodeb),12,' ','E'));
  if crediario <> 0  then
  writeln(arquivo,#15+#27#72+#20,'                 |      CREDIARIO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,crediario),12,' ','E'));
  writeln(arquivo,#15+#27#72+#20,'                 |          TOTAL |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrorcamento.fieldbyname('total').AsFloat),12,' ','E'));
  if crediario <> 0 then
    begin
    Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
    Writeln(arquivo,#15+#27#72+#20,'                   PRESTACOES                   ');
    Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
    Writeln(arquivo,#15+#27#72+#20,'No.  Vencimento Documento   Tipo        Valor-R$');
    Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
    qrcontasreceber.First;
    prestacao := 0;
    while not qrcontasreceber.eof do
      begin
      inc(prestacao);
      writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(IntToStr(prestacao),3,'0','E')+'  '+
      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('data_vencimento').asstring,10,' ','D')+' '+
      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('documento').asstring,10,' ','D')+' '+
      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
      frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor_atual').asfloat),10,' ','E'));
      qrcontasreceber.next;
      end;
    end;
  Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
  Writeln(arquivo,#15+#27#72+#20,'');
  Writeln(arquivo,#15+#27#72+#20,'');
  Writeln(arquivo,#15+#27#72+#20,'');
  Writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
//  WRiteln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(consumidor_nome,45,' ','C'));
//  WRiteln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(consumidor_cpf,45,' ','C'));
  while AVANCO <> 0 do
    begin
    Writeln(arquivo,#15+#27#72+#20,'');
    AVANCO := AVANCO - 1;
    end;
  VIAS := VIAS -1;
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  k := K + 1;
  END;
closefile(arquivo);
end;
procedure Tfrmprevenda_impressao.qrorcamentoCalcFields(DataSet: TDataSet);
begin
if qrorcamentoTIPO.AsInteger =  9 then
  qrorcamentoorcamento_prevenda.AsString := 'Orçamento'
else qrorcamentoorcamento_prevenda.AsString := 'Pre-venda';
end;

end.







