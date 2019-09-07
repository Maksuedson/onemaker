unit contasreceber_cedente;

{$IFDEF VER140}
{$DEFINE USAVARIANTS}
{$ENDIF}
{$IFDEF VER150}
{$DEFINE USAVARIANTS}
{$ENDIF}

interface

uses
  Windows, Messages, SysUtils, {$IFDEF USAVARIANTS}Variants, {$ENDIF}ComObj,
  Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, wwdblook,
  Buttons, Menus, DB, AdvGlowButton;

type
  Tfrmcontasreceber_cedente = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    COMBOCONTA: TwwDBLookupCombo;
    ebanco: TEdit;
    eagencia: TEdit;
    econta: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    DataSource1: TDataSource;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bcobrebem: TButton;
    BMATRICIAL: TButton;
    procedure BCANCELARClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure COMBOCONTAEnter(Sender: TObject);
    procedure COMBOCONTAExit(Sender: TObject);
    procedure COMBOCONTAKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure bcobrebemClick(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure BMATRICIALClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_cedente: Tfrmcontasreceber_cedente;

implementation

uses contasreceber, modulo, principal;

{$R *.dfm}

procedure Tfrmcontasreceber_cedente.BCANCELARClick(Sender: TObject);
begin
  frmcontasreceber.continua := False;
  close;
end;

procedure Tfrmcontasreceber_cedente.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_cedente.FormShow(Sender: TObject);
begin
  frmmodulo.qrcontacorrente.close;
  frmmodulo.qrcontacorrente.SQL.clear;
  frmmodulo.qrcontacorrente.SQL.add('select * from c000041 order by TITULAR');
  frmmodulo.qrcontacorrente.Open;

  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.SQL.clear;
  frmmodulo.qrbanco.SQL.add('select * from c000013 order by banco');
  frmmodulo.qrbanco.Open;



  // frmmodulo.qrCLIENTE.close;
  // frmmodulo.qrCLIENTE.SQL.clear;
  // frmmodulo.qrCLIENTE.sql.add('select * from c000007 order by NOME');
  // frmmodulo.qrCLIENTE.Open;

  frmmodulo.qrconfig_cobrebem.close;
  frmmodulo.qrconfig_cobrebem.SQL.clear;
  frmmodulo.qrconfig_cobrebem.SQL.add
    ('select * from c000064 order by descricao');
  frmmodulo.qrconfig_cobrebem.Open;
end;

procedure Tfrmcontasreceber_cedente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcontasreceber_cedente.COMBOCONTAEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_cedente.COMBOCONTAExit(Sender: TObject);
begin
  TEdit(Sender).Color := CLWINDOW;
  if COMBOCONTA.TEXT <> '' then
  begin
    if frmmodulo.qrconfig_cobrebem.Locate('descricao', COMBOCONTA.TEXT,
      [loCaseInsensitive]) then
    begin
      eagencia.TEXT := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('AGENCIA').ASSTRING;
      ebanco.TEXT := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('BANCO').ASSTRING;
      econta.TEXT := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('codconta').ASSTRING;

      Edit1.TEXT := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('INSTRUCOES_1').ASSTRING;
      Edit2.TEXT := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('INSTRUCOES_2').ASSTRING;
      Edit3.TEXT := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('INSTRUCOES_3').ASSTRING;

    end
    else
    begin
      APPLICATION.MESSAGEBOX('Cedente/Conta não localizado!', 'Atenção',
        mb_ok + MB_ICONERROR);
      COMBOCONTA.setfocus;

    end;
  end;
end;

procedure Tfrmcontasreceber_cedente.COMBOCONTAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontasreceber_cedente.Edit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := CLWINDOW;
end;

procedure Tfrmcontasreceber_cedente.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcontasreceber_cedente.bcobrebemClick(Sender: TObject);
var
  CobreBemX: Variant;
  Boleto: Variant;
  texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8, texto9,
    texto10, texto11, texto12, texto13, texto14, texto15, texto16: string;
  proximonumero, arquivoremessa: integer;
begin

  frmmodulo.QRCONFIG.Open;

  CobreBemX := CreateOleObject('CobreBemX.ContaCorrente');
  CobreBemX.ArquivoLicenca := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
    ('ARQUIVO_CONFIGURACAO').ASSTRING;

  // ----------------------------------- ARQUIVO DE REMESSA ---------------------\\
  if frmmodulo.qrconfig_cobrebem.FIELDBYNAME('REMESSA_UTILIZA').Asinteger = 1
  then
  begin
    CobreBemX.arquivoremessa.Layout := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
      ('remessa_layout').ASSTRING;
    CobreBemX.arquivoremessa.Arquivo := 'R_' + copy(datetostr(date), 1, 2) +
      copy(datetostr(date), 4, 2) + copy(datetostr(date), 7, 4) + '_' +
      copy(timetostr(time), 1, 2) + copy(timetostr(time), 4, 2) + '.txt';
    CobreBemX.arquivoremessa.Diretorio :=
      frmmodulo.qrconfig_cobrebem.FIELDBYNAME('remessa_local').ASSTRING;;
    CobreBemX.arquivoremessa.Sequencia := frmprincipal.zerarcodigo
      (inttostr(frmmodulo.qrconfig_cobrebem.FIELDBYNAME('REMEsSA_SEQUENCIA')
      .Asinteger), 5); // '00015';
    arquivoremessa := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
      ('remessa_sequencia').Asinteger;
  end;
  // -----------------------------------------------------------------------------\\

  // ----------------------------------- INFORMACOES DA CONTA -------------------------------\\
  CobreBemX.CodigoAgencia := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
    ('agencia').ASSTRING;
  CobreBemX.NumeroContaCorrente := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
    ('codconta').ASSTRING;
  CobreBemX.CodigoCedente := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
    ('codigo_cedente').ASSTRING;
  CobreBemX.InicioNossoNumero := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
    ('NOSSONUMERO_INICIO').ASSTRING;
  CobreBemX.FimNossoNumero := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
    ('NOSSONUMERO_FIM').ASSTRING;
  CobreBemX.ProximoNossoNumero := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
    ('NOSSONUMERO_PROXIMO').ASSTRING;
  proximonumero := strtoint(frmmodulo.qrconfig_cobrebem.FIELDBYNAME
    ('NOSSONUMERO_PROXIMO').ASSTRING);

  if frmmodulo.qrconfig_cobrebem.FIELDBYNAME('VARIACAO_MODALIDADE').ASSTRING <> ''
  then
  begin
    CobreBemX.OutroDadoConfiguracao1 := frmmodulo.qrconfig_cobrebem.FIELDBYNAME
      ('VARIACAO_MODALIDADE').ASSTRING;
  end;

  // ----------------------------------- CONFIGURACOES DO BOLETO -----------------------------\\
  CobreBemX.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo :=
    frmmodulo.qrconfig_cobrebem.FIELDBYNAME('ARQUIVO_LOGOMARCA').ASSTRING;
  CobreBemX.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras :=
    'c:\OneMaker\server\cob\CobreBemX\Imagens\';

  if frmmodulo.qrconfig_cobrebem.FIELDBYNAME('TIPO_BOLETO').ASSTRING = 'Padrao'
  then
  begin
    //

  end
  else
  begin
    CobreBemX.PadroesBoleto.PadroesBoletoImpresso.LayoutBoleto :=
      frmmodulo.qrconfig_cobrebem.FIELDBYNAME('TIPO_BOLETO').ASSTRING;
    // 'CarnetReciboLateralEsquerda';
  end;
  if frmmodulo.qrconfig_cobrebem.FIELDBYNAME('MARGEM_SUPERIOR').Asinteger > 0
  then
    CobreBemX.PadroesBoleto.PadroesBoletoImpresso.MargemSuperior :=
      frmmodulo.qrconfig_cobrebem.FIELDBYNAME('MARGEM_SUPERIOR').Asinteger;
  // 4;

  texto := '<font face="Courier New" size = "">' + Edit1.TEXT + '<br> ' +
    Edit2.TEXT + '<br> ' + Edit3.TEXT + '<br> ' + '' + '<br> ' + '' + '<br> ' +
    '' + '<br> ' + '' + '</font>';

  frmcontasreceber.qrcr.First;
  while not frmcontasreceber.qrcr.Eof do
  begin
    if frmcontasreceber.qrcr.FIELDBYNAME('filtro').Asinteger = 1 then
    begin
      Boleto := CobreBemX.DocumentosCobranca.add;
      Boleto.NumeroDocumento := frmcontasreceber.qrcr.FIELDBYNAME
        ('codigo').ASSTRING;
      Boleto.NomeSacado := frmmodulo.qrcliente.FIELDBYNAME('nome').ASSTRING;
      Boleto.CPFSacado := frmmodulo.qrcliente.FIELDBYNAME('cpf').ASSTRING;
      Boleto.EnderecoSacado := frmmodulo.qrcliente.FIELDBYNAME
        ('endereco').ASSTRING;
      Boleto.BairroSacado := frmmodulo.qrcliente.FIELDBYNAME('bairro').ASSTRING;
      Boleto.CidadeSacado := frmmodulo.qrcliente.FIELDBYNAME('cidade').ASSTRING;
      Boleto.EstadoSacado := frmmodulo.qrcliente.FIELDBYNAME('uf').ASSTRING;
      Boleto.CepSacado := frmprincipal.somenteNumero
        (frmmodulo.qrcliente.FIELDBYNAME('cep').ASSTRING);
      Boleto.DataDocumento := frmcontasreceber.qrcr.FIELDBYNAME
        ('data_emissao').ASSTRING;
      Boleto.DataVencimento := frmcontasreceber.qrcr.FIELDBYNAME
        ('data_vencimento').ASSTRING;
      Boleto.ValorDocumento := frmcontasreceber.qrcr.FIELDBYNAME
        ('valor_atual').asfloat;
      // Boleto.BancoEmiteBoleto := true;
      Boleto.PadroesBoleto.Demonstrativo := texto;
      Boleto.PadroesBoleto.InstrucoesCaixa := '<br>' + Edit1.TEXT + '<br>' +
        Edit2.TEXT + '<br>' + Edit3.TEXT;
      CobreBemX.CalcularDadosBoletos;
      proximonumero := proximonumero + 1;

      // inputbox('','',Boleto.LinhaDigitavel);

      frmcontasreceber.qrcontasreceber.close;
      frmcontasreceber.qrcontasreceber.SQL.clear;
      frmcontasreceber.qrcontasreceber.SQL.add
        ('select * from c000049 where codigo = ''' +
        frmcontasreceber.qrcr.FIELDBYNAME('codigo').ASSTRING + '''');
      frmcontasreceber.qrcontasreceber.Open;

      frmcontasreceber.qrcontasreceber.Edit;
      frmcontasreceber.qrcontasreceber.FIELDBYNAME('nossonumero').ASSTRING :=
        Boleto.nossonumero;
      frmcontasreceber.qrcontasreceber.FIELDBYNAME('CODCEDENTE').ASSTRING :=
        frmmodulo.qrconfig_cobrebem.FIELDBYNAME('CODIGO').ASSTRING;
      frmcontasreceber.qrcontasreceber.FIELDBYNAME('TIPO').ASSTRING :=
        frmmodulo.QRCONFIG.FIELDBYNAME('BOLETO_FORMAPGTO').ASSTRING;
      frmcontasreceber.qrcontasreceber.post;

    end;
    frmcontasreceber.qrcr.next;
  end;
  // ------- IMPRIMIR BOLETOS -------\\\
  CobreBemX.ImprimeBoletos;

  if frmmodulo.qrconfig_cobrebem.FIELDBYNAME('REMESSA_UTILIZA').Asinteger = 1
  then
  begin
    if APPLICATION.MESSAGEBOX('Deseja gerar remessa?', 'Aviso',
      mb_yesno + mb_iconquestion) = idyes then
    begin
      arquivoremessa := arquivoremessa + 1;
      CobreBemX.GravaArquivoRemessa;
    end;
  end;


  // CobreBemX := Unassigned;

  texto := inttostr(proximonumero);
  while length(texto) < 4 do
    texto := '0' + texto;

  frmmodulo.qrconfig_cobrebem.Edit;
  frmmodulo.qrconfig_cobrebem.FIELDBYNAME('NOSSONUMERO_PROXIMO')
    .ASSTRING := texto;
  frmmodulo.qrconfig_cobrebem.FIELDBYNAME('remessa_sequencia').Asinteger :=
    arquivoremessa;
  frmmodulo.qrconfig_cobrebem.post;
  frmmodulo.Conexao.Commit;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.Open;

end;

procedure Tfrmcontasreceber_cedente.BGRAVARClick(Sender: TObject);
begin
  if frmmodulo.qrconfig_cobrebem.FIELDBYNAME('TIPO').Asinteger = 1 then
  // BOLETO COBREBEM
  begin
    bcobrebemClick(frmcontasreceber_cedente);
  end
  else
  begin // BOLETO NORMAL
    // BMATRICIALclick(frmcontasreceber_cedente);
    frmcontasreceber.continua := True;
  end;
 // frmcontasreceber.bfiltrarClick(frmcontasreceber);

  close;

end;

procedure Tfrmcontasreceber_cedente.BMATRICIALClick(Sender: TObject);
var
  f: textfile;
  vencimento, data_doc, numero_doc, especie_doc, aceite, especie, qtde, valor,
    valor_doc, desconto, outras, mora, outros, valor_cobrado, inst1, inst2,
    inst3, inst4, inst5, inst6, cedente, cedente_ender: string;
  LINHAS: array [1 .. 50] of string;
  texto: string;

  I, x, Y, LINHA_ACERTO: integer;
begin
  // NORMAL               --> #18+#27#72+#20
  // NORMAL NEGRITO       --> #18+#27#71+#20
  // FONTE GRANDE         --> #27#72+#14
  // FONTE GRANDE NEGRITO --> #27#71+#14
  // CONDENSADO           --> #15+#27#72+#20
  // CONDENSADO NEGRITO   --> #15+#27#71+#20

  LINHA_ACERTO := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('ACERTO_ENTRE_LINHAS')
    .Asinteger;
  assignfile(f, impressora_venda);
  rewrite(f);
  // frmmodulo.qrcliente.close;
  // frmmodulo.qrcliente.sql.Clear;
  // frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+frmcontasreceber.qrcr.fieldbyname('codcliente').asstring+'''');
  // frmmodulo.qrcliente.open;
  // if frmmodulo.qrcliente.RecordCount > 0 then
  // begin
  while not frmcontasreceber.qrcr.Eof do
  begin
    if frmcontasreceber.qrcr.FIELDBYNAME('filtro').ASSTRING = '1' then
    begin
      vencimento := frmprincipal.texto_justifica
        (frmcontasreceber.qrcr.FIELDBYNAME('data_vencimento').ASSTRING, 10,
        ' ', 'E');
      data_doc := frmprincipal.texto_justifica
        (frmcontasreceber.qrcr.FIELDBYNAME('data_EMISSAO').ASSTRING, 10,
        ' ', 'E');
      numero_doc := frmprincipal.texto_justifica
        (frmcontasreceber.qrcr.FIELDBYNAME('CODIGO').ASSTRING, 20, ' ', 'E');
      especie_doc := frmprincipal.texto_justifica('DUPLIC.', 7, ' ', 'D');
      aceite := frmprincipal.texto_justifica('', 6, ' ', 'D');
      especie := frmprincipal.texto_justifica('', 10, ' ', 'D');
      qtde := frmprincipal.texto_justifica('', 10, ' ', 'E');
      valor := frmprincipal.texto_justifica('', 10, ' ', 'E');
      valor_doc := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',
        frmcontasreceber.qrcr.FIELDBYNAME('VALOR_ATUAL').asfloat), 10,
        ' ', 'E');
      desconto := frmprincipal.texto_justifica('', 10, ' ', 'E');
      outras := frmprincipal.texto_justifica('', 10, ' ', 'E');
      mora := frmprincipal.texto_justifica('', 10, ' ', 'E');
      outros := frmprincipal.texto_justifica('', 10, ' ', 'E');
      valor_cobrado := frmprincipal.texto_justifica('', 10, ' ', 'E');

      inst1 := frmprincipal.texto_justifica(Edit1.TEXT, 80, ' ', 'D');
      inst2 := frmprincipal.texto_justifica(Edit2.TEXT, 80, ' ', 'D');
      inst3 := frmprincipal.texto_justifica(Edit3.TEXT, 80, ' ', 'D');
      inst4 := frmprincipal.texto_justifica('', 80, ' ', 'D');
      inst5 := frmprincipal.texto_justifica('', 80, ' ', 'D');
      inst6 := frmprincipal.texto_justifica('', 80, ' ', 'D');

      cedente := frmprincipal.texto_justifica
        (frmmodulo.qrcliente.FIELDBYNAME('NOME').ASSTRING + '  CPF/CNPJ: ' +
        frmmodulo.qrcliente.FIELDBYNAME('CPF').ASSTRING, 90, ' ', 'D');
      cedente_ender := frmprincipal.texto_justifica
        (frmmodulo.qrcliente.FIELDBYNAME('ENDERECO').ASSTRING + ', ' +
        frmmodulo.qrcliente.FIELDBYNAME('BAIRRO').ASSTRING + ' - ' +
        frmmodulo.qrcliente.FIELDBYNAME('CIDADE').ASSTRING + '/' +
        frmmodulo.qrcliente.FIELDBYNAME('UF').ASSTRING + '  CEP ' +
        frmmodulo.qrcliente.FIELDBYNAME('CEP').ASSTRING, 90, ' ', 'D');

      for Y := 1 to 50 do
      begin
        LINHAS[Y] :=
          '                                                                                                               ';
      end;
      // vencimento
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_VENCIMENTO').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_VENCIMENTO')
        .Asinteger, 10);
      insert(vencimento, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_VENCIMENTO').Asinteger);
      LINHAS[Y] := texto;
      // data do documento
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_DATADOC').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_DATADOC')
        .Asinteger, 10);
      insert(data_doc, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_DATADOC').Asinteger);
      LINHAS[Y] := texto;
      // numero do documento
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_numero').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_numero')
        .Asinteger, 20);
      insert(numero_doc, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_numero').Asinteger);
      LINHAS[Y] := texto;
      // especie do documento
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_espdoc').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_espdoc')
        .Asinteger, 7);
      insert(especie_doc, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_espdoc').Asinteger);
      LINHAS[Y] := texto;
      // aceite
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_aceite').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_aceite')
        .Asinteger, 6);
      insert(aceite, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_aceite').Asinteger);
      LINHAS[Y] := texto;
      // especie
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_esp').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_esp')
        .Asinteger, 10);
      insert(especie, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_esp')
        .Asinteger);
      LINHAS[Y] := texto;
      // quantidade
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_qtde').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_qtde')
        .Asinteger, 10);
      insert(qtde, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_qtde')
        .Asinteger);
      LINHAS[Y] := texto;
      // valor
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_valor').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valor')
        .Asinteger, 10);
      insert(valor, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valor')
        .Asinteger);
      LINHAS[Y] := texto;
      // valor do documento
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_valordoc').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valordoc')
        .Asinteger, 10);
      insert(valor_doc, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_valordoc').Asinteger);
      LINHAS[Y] := texto;
      // desconto
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_desconto').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_desconto')
        .Asinteger, 10);
      insert(desconto, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_desconto').Asinteger);
      LINHAS[Y] := texto;
      // outras
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_outras').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outras')
        .Asinteger, 10);
      insert(outras, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_outras').Asinteger);
      LINHAS[Y] := texto;
      // mora
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_mora').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_mora')
        .Asinteger, 10);
      insert(mora, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_mora')
        .Asinteger);
      LINHAS[Y] := texto;
      // outros
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_outros').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outros')
        .Asinteger, 10);
      insert(outros, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_outros').Asinteger);
      LINHAS[Y] := texto;
      // valor
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cobrado').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cobrado')
        .Asinteger, 10);
      insert(valor_cobrado, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_cobrado').Asinteger);
      LINHAS[Y] := texto;
      // sacado
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cedente').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedente')
        .Asinteger, 90);
      insert(cedente, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_cedente').Asinteger);
      LINHAS[Y] := texto;
      // sacado endereco
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cedenteender')
        .Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedenteender')
        .Asinteger, 90);
      insert(cedente_ender, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_cedenteender').Asinteger);
      LINHAS[Y] := texto;
      // instrucoes
      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst1').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes')
        .Asinteger, 80);
      insert(inst1, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_instrucoes').Asinteger);
      LINHAS[Y] := texto;

      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst2').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes')
        .Asinteger, 80);
      insert(inst2, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_instrucoes').Asinteger);
      LINHAS[Y] := texto;

      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst3').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes')
        .Asinteger, 80);
      insert(inst3, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_instrucoes').Asinteger);
      LINHAS[Y] := texto;

      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst4').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes')
        .Asinteger, 80);
      insert(inst4, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_instrucoes').Asinteger);
      LINHAS[Y] := texto;

      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst5').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes')
        .Asinteger, 80);
      insert(inst5, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_instrucoes').Asinteger);
      LINHAS[Y] := texto;

      Y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst6').Asinteger;
      texto := LINHAS[Y];
      delete(texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes')
        .Asinteger, 80);
      insert(inst6, texto, frmmodulo.qrconfig_cobrebem.FIELDBYNAME
        ('COL_instrucoes').Asinteger);
      LINHAS[Y] := texto;

      for Y := 1 to 50 do
      begin
        writeln(f, #27 + #51 + #15 + #27#72, LINHAS[Y]);
      end;
      if LINHA_ACERTO <> 0 then
      begin
        x := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('entre_linhas').Asinteger +
          LINHA_ACERTO;
        LINHA_ACERTO := 0;
      end
      else
      begin
        x := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('entre_linhas').Asinteger;
      end;
      while x <> 0 do
      begin
        writeln(f, #27 + #51 + #15 + #27#72,
          '                                                                                                               ');
        x := x - 1;
      end;

      frmcontasreceber.qrcontasreceber.close;
      frmcontasreceber.qrcontasreceber.SQL.clear;
      frmcontasreceber.qrcontasreceber.SQL.add
        ('select * from c000049 where codigo = ''' +
        frmcontasreceber.qrcr.FIELDBYNAME('codigo').ASSTRING + '''');
      frmcontasreceber.qrcontasreceber.Open;

      frmcontasreceber.qrcontasreceber.Edit;
      frmcontasreceber.qrcontasreceber.FIELDBYNAME('CODCEDENTE').ASSTRING :=
        frmmodulo.qrconfig_cobrebem.FIELDBYNAME('CODIGO').ASSTRING;
      frmcontasreceber.qrcontasreceber.post;

    end; // se estiver marcado
    frmcontasreceber.qrcr.next;
  end;

  writeln(f, #12);
  closefile(f);

  frmmodulo.Conexao.Commit;

end;

end.
