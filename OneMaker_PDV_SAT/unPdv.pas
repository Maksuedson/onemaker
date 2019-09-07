unit unPdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, ACBrBase, ACBrSAT, pcnConversao,
  Vcl.StdCtrls, ACBrUtil, Vcl.Buttons, IniFiles, ACBrSATExtratoClass,
  ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr, ModuleLoader, MemDS,
  DBAccess,  Vcl.ActnList, AdvGlowButton, RxToolEdit, Vcl.Grids, Wwdbigrd,
  Wwdbgrid, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw, Vcl.ComCtrls, Vcl.Mask,
  sEdit, sSpinEdit, ACBrSATExtratoESCPOS, System.Actions, Uni;

type
  TfrmPdv = class(TForm)
    ACBrSAT: TACBrSAT;
    Conexao: TZConnection;
    btnEnviar: TButton;
    mSat: TMemo;
    qTempSat: TZQuery;
    qRetornoSat: TZQuery;
    qLimpaRetorno: TZQuery;
    qRetornoSatCONTROLE: TIntegerField;
    qRetornoSatXML_TEMP: TMemoField;
    qRetornoSatXML_CFE: TMemoField;
    qRetornoSatTERMINAL: TIntegerField;
    qRetornoSatSTATUS: TIntegerField;
    qRetornoSatDATA: TDateField;
    qRetornoSatHORA: TTimeField;
    qRetornoSatCHAVE: TStringField;
    qRetornoSatARQ_XML: TStringField;
    qRetornoSatULT_SESSAO: TIntegerField;
    qRetornoSatRETORNO: TStringField;
    btnParametros: TButton;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    btnOperacoes: TButton;
    RBindFPG: TComboBox;
    EditCPF: TMaskEdit;
    PageControl1: TPageControl;
    tsLog: TTabSheet;
    mLog: TMemo;
    tsGerado: TTabSheet;
    mVendaEnviar: TMemo;
    tsRecebido: TTabSheet;
    mRecebido: TWebBrowser;
    tsCancelamento: TTabSheet;
    mCancelamentoEnviar: TMemo;
    Panel2: TPanel;
    Label18: TLabel;
    edChaveCancelamento: TEdit;
    tsRedeXML: TTabSheet;
    mRede: TWebBrowser;
    TabSheet2: TTabSheet;
    Label36: TLabel;
    Label37: TLabel;
    wwDBGrid1: TwwDBGrid;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btfiltrar: TAdvGlowButton;
    ActionList1: TActionList;
    Sair: TAction;
    dscupom: TDataSource;
    EditNomeCL: TEdit;
    RBOperadora: TComboBox;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Panel1: TPanel;
    Label1: TLabel;
    AdvGlowButton4: TAdvGlowButton;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label8: TLabel;
    lImpressora: TLabel;
    bImpressora1: TButton;
    cbUsarFortes: TRadioButton;
    cbPreview: TCheckBox;
    bImpressora: TAdvGlowButton;
    seLargura: TsSpinEdit;
    seMargemTopo: TsSpinEdit;
    seMargemFundo: TsSpinEdit;
    seMargemEsquerda: TsSpinEdit;
    seMargemDireita: TsSpinEdit;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    qr_cupom: TUniQuery;
    qrcli: TUniQuery;
    Query1: TUniQuery;
    procedure AjustaACBrSAT;
    procedure btnEnviarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ACBrSATGetsignAC(var Chave: AnsiString);
    procedure btnParametrosClick(Sender: TObject);
    procedure btnOperacoesClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure btfiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure SairExecute(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);

  private
    { Private declarations }
    procedure PrepararImpressao;
  public
    { Public declarations }
    nPdv: Integer;
    Cnpj, IEst, CnpjSH, Versao, Assinatura, PathFdb: String;
  end;

var
  frmPdv: TfrmPdv;

implementation

{$R *.dfm}

uses unConfig1, unVendasSat, modulo;

procedure TfrmPdv.ACBrSATGetsignAC(var Chave: AnsiString);
begin
  Chave := Assinatura;
end;

procedure TfrmPdv.AdvGlowButton1Click(Sender: TObject);
begin
   // ACBrSAT.ConsultarStatusOperacional;

  with ACBrSAT.Status do
  begin
    mLog.Lines.Add('NSERIE.........: ' + NSERIE);
    mLog.Lines.Add('LAN_MAC........: ' + LAN_MAC);
    mLog.Lines.Add('STATUS_LAN.....: ' + StatusLanToStr(STATUS_LAN));
    mLog.Lines.Add('NIVEL_BATERIA..: ' + NivelBateriaToStr(NIVEL_BATERIA));
    mLog.Lines.Add('MT_TOTAL.......: ' + MT_TOTAL);
    mLog.Lines.Add('MT_USADA.......: ' + MT_USADA);
    mLog.Lines.Add('DH_ATUAL.......: ' + DateTimeToStr(DH_ATUAL));
    mLog.Lines.Add('VER_SB.........: ' + VER_SB);
    mLog.Lines.Add('VER_LAYOUT.....: ' + VER_LAYOUT);
    mLog.Lines.Add('ULTIMO_CFe.....: ' + ULTIMO_CFe);
    mLog.Lines.Add('LISTA_INICIAL..: ' + LISTA_INICIAL);
    mLog.Lines.Add('LISTA_FINAL....: ' + LISTA_FINAL);
    mLog.Lines.Add('DH_CFe.........: ' + DateTimeToStr(DH_CFe));
    mLog.Lines.Add('DH_ULTIMA......: ' + DateTimeToStr(DH_CFe));
    mLog.Lines.Add('CERT_EMISSAO...: ' + DateToStr(CERT_EMISSAO));
    mLog.Lines.Add('CERT_VENCIMENTO: ' + DateToStr(CERT_VENCIMENTO));
    mLog.Lines.Add('ESTADO_OPERACAO: ' + EstadoOperacaoToStr(ESTADO_OPERACAO));
  end;

end;

procedure TfrmPdv.AdvGlowButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPdv.AjustaACBrSAT;
begin
  with ACBrSAT do
  begin
    Config.ide_numeroCaixa := nPdv;
    Config.ide_tpAmb := TpcnTipoAmbiente(1);
    Config.ide_CNPJ := CnpjSH;
    Config.emit_CNPJ := Cnpj;
    Config.emit_IE := IEst;
    Config.emit_IM := '';
    Config.emit_cRegTrib := RTSimplesNacional;
    Config.emit_cRegTribISSQN := RTISSMicroempresaMunicipal;
    Config.emit_indRatISSQN := irNao;
    Config.PaginaDeCodigo := 0;
    Config.EhUTF8 := True;
    Config.infCFe_versaoDadosEnt := StringToFloat(Versao);
  end;
end;

procedure TfrmPdv.btfiltrarClick(Sender: TObject);
begin
  qr_cupom.Close;
  qr_cupom.SQL.Clear;
  qr_cupom.SQL.Add
    (' select numero, hora, valor_desconto, valor_acrescimo, valor_pago, valor_troco, cpf_consumidor, nome_consumidor, sat, codigo, data,(qtde_item)ITENS, (cpf_consumidor)CPF,');
  qr_cupom.SQL.Add('(valor_total)TOTAL, sat from cupom  where sat = 0');
  qr_cupom.SQL.Add('and data between :datai and :dataf');
  qr_cupom.ParamByName('datai').AsDate := DateEdit1.Date;
  qr_cupom.ParamByName('dataf').AsDate := DateEdit2.Date;
  qr_cupom.Open;
end;

procedure TfrmPdv.btnEnviarClick(Sender: TObject);
var
  i, NumControle: Integer;
  Emitiu: Boolean;
  cpf, teste: string;
  TotalItem: Double;
  tGeralCup: Currency;
  ctItem: Integer;
  ST: string;
  cfOP: string;
  Origem: string;
  noPro: string;
  Ncm: string;
  TributosEST: Currency;
  TributosFED: Currency;
  itTributosEST: Currency;
  itTributosFED: Currency;
  desctotal: Currency;
  cMsg, forma: string;
  UMprod: string;
  edtPathCFe: string;
  // Variaveis para checar o CPF e o CNPJ
  Tm: array [1 .. 14] of Integer;
  Tn: array [1 .. 14] of Integer;

  Dgt1, Dgt2: Integer;
  Soma1, Soma2: Integer;
  EditCPFCNPJ, Nome: string;
  numero_cupom: string;
  erroenvio: string;
begin
  begin
    Emitiu := False;
    i := 0;
    mSat.Lines.Clear;

    ACBrSAT.CFe.IdentarXML := True;
    ACBrSAT.CFe.TamanhoIdentacao := 3;
    ACBrSAT.InicializaCFe;
    with frmModulo do
    begin
      // CdsTabPedDetalhe.First;
      // qrCupom.Open;
      with ACBrSAT.CFe do
      begin
        ide.numeroCaixa := nPdv;

        QrCupom_Item.Close;
        QrCupom_Item.SQL.Clear;
        QrCupom_Item.SQL.Add('select * from cupom_item                 ');
        QrCupom_Item.SQL.Add
          ('inner join estoque on estoque.codigo=cupom_item.cod_produto');
        QrCupom_Item.SQL.Add
          ('inner join cupom  on cupom.codigo=cupom_item.cod_cupom     ');
        QrCupom_Item.SQL.Add
          ('where ccf = numero                                         ');
        QrCupom_Item.SQL.Add
          ('and sat = 0                                                ');
        QrCupom_Item.SQL.Add
          ('and cupom_item.cancelado <> 1                              ');
        QrCupom_Item.SQL.Add('and cod_cupom=' +
          QuotedStr(qr_cupom.fieldbyname('codigo').asstring) + '');
        QrCupom_Item.Open;

        qrCli.Close;
        qrCli.SQL.Clear;
        qrCli.SQL.Add('select nome from cliente where cpf =''' +
          QrCupom_Item.fieldbyname('cpf_consumidor').asstring + '''');
        qrCli.Open;

        teste := QrCupom_Item.fieldbyname('cpf_consumidor').asstring;

        if teste = '' then
        begin
          if application.MessageBox('Deseja colocar o CPF ou CNPJ?', 'Atenção',
            mb_yesno + MB_ICONQUESTION) = ID_YES then
          begin
            cpf := inputbox('CPF', 'CPF/CNPJ', '');
            Dest.CNPJCPF := cpf;
          end;
        end
        else
          Dest.CNPJCPF := teste;

        if qrCli.fieldbyname('nome').asstring <> '' then
          Dest.xNome := qrCli.fieldbyname('nome').asstring
        else
          Dest.xNome := '';

        ctItem := QrCupom_Item.fieldbyname('item').AsInteger;
        tGeralCup := 0;

        QrCupom_Item.First;
        while not QrCupom_Item.Eof do
        begin
          if QrCupom_Item.fieldbyname('sat').AsInteger = 0 then
          begin
            with Det.Add do
            begin
              noPro := QrCupom_Item.fieldbyname('NOME').asstring;
              UMprod := QrCupom_Item.fieldbyname('Unidade').asstring;
              Ncm := QrCupom_Item.fieldbyname('NCM').asstring;

              if QrCupom_Item.fieldbyname('ORIGEM').AsInteger > 0 then
                Origem := IntToStr(QrCupom_Item.fieldbyname('ORIGEM').AsInteger)
              else
                Origem := '0';

              if (QrCupom_Item.fieldbyname('csosn').asstring = '') then
                ST := '102';

              if qrfilial.fieldbyname('optante_simples').asstring = 'S' then
              begin
                if (QrCupom_Item.fieldbyname('csosn').asstring = '201') or
                  (QrCupom_Item.fieldbyname('csosn').asstring = '202') or
                  (QrCupom_Item.fieldbyname('csosn').asstring = '203') or
                  (QrCupom_Item.fieldbyname('csosn').asstring = '500') then
                begin
                  ST := '500';
                  cfOP := '5405';
                end
                else
                begin
                  if (QrCupom_Item.fieldbyname('csosn').asstring = '400') then
                  begin
                    ST := '400';
                    cfOP := '5102';
                  end
                  else
                  begin
                    ST := '102';
                    cfOP := '5102';
                  end;

                end;
              end;

              if qrfilial.fieldbyname('optante_simples').asstring = 'N' then
              begin
                if (QrCupom_Item.fieldbyname('cst').asstring = '010') or
                  (QrCupom_Item.fieldbyname('cst').asstring = '030') or
                  (QrCupom_Item.fieldbyname('cst').asstring = '060') or
                  (QrCupom_Item.fieldbyname('cst').asstring = '070') then
                begin
                  ST := '060';
                  cfOP := '5405';
                end
                else
                begin
                  ST := '000';
                  cfOP := '5102';
                end
              end;

              nItem := ctItem;
              Prod.cProd := frmModulo.QrCupom_Item.fieldbyname
                ('cod_produto').asstring;
              Prod.cEAN := ' ';
              Prod.xProd := noPro;
              Prod.Ncm := Ncm;
              Prod.cfOP := cfOP;
              Prod.uCom := UMprod;
              Prod.qCom := QrCupom_Item.fieldbyname('qtde').AsFloat;
              Prod.vUnCom := QrCupom_Item.fieldbyname('valor_Unitario').AsFloat;
              Prod.indRegra := irTruncamento;

              // Prod.vDesc           := QrCupom_Item.fieldbyname('valor_desconto').AsFloat;

              TotalItem := Prod.qCom * Prod.vUnCom;
              tGeralCup := tGeralCup + TotalItem;

              if Ncm <> '' then
              begin
                if (Origem = '0') or (Origem = '3') or (Origem = '4') or
                  (Origem = '5') or (Origem = '8') then
                begin
                  if (QrCupom_Item.RecordCount > 0) and
                    (QrCupom_Item.fieldbyname('ALIQNACIONAL').AsFloat > 0) then
                  begin
                    TributosFED :=
                      RoundABNT(TributosFED +
                      (TotalItem * QrCupom_Item.fieldbyname('ALIQNACIONAL')
                      .AsFloat / 100), 2);
                    itTributosFED :=
                      RoundABNT((TotalItem * QrCupom_Item.fieldbyname
                      ('ALIQNACIONAL').AsFloat / 100), 2);
                  end;
                end
                else
                begin
                  if (QrCupom_Item.RecordCount > 0) and
                    (QrCupom_Item.fieldbyname('ALIQIMPOTADO').AsFloat > 0) then
                  begin
                    TributosFED :=
                      RoundABNT(TributosFED +
                      (TotalItem * QrCupom_Item.fieldbyname('ALIQIMPOTADO')
                      .AsFloat / 100), 2);
                    itTributosFED :=
                      RoundABNT((TotalItem * QrCupom_Item.fieldbyname
                      ('ALIQIMPOTADO').AsFloat / 100), 2);
                  end;
                end;
                TributosEST :=
                  RoundABNT(TributosEST +
                  (TotalItem * QrCupom_Item.fieldbyname('ALIQEST').AsFloat
                  / 100), 2);
                itTributosEST :=
                  RoundABNT((TotalItem * QrCupom_Item.fieldbyname('ALIQEST')
                  .AsFloat / 100), 2);
              end
              else
              begin
                // ShowMessage('Produto sem Ncm, favor verificar');
                // Exit;
              end;

              Imposto.vItem12741 := itTributosEST + itTributosFED;

              if Origem = '0' then
                Imposto.ICMS.orig := oeNacional;

              if Origem = '1' then
                Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;

              if Origem = '2' then
                Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;

              if Origem = '3' then
                Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;

              if Origem = '4' then
                Imposto.ICMS.orig := oeNacionalProcessosBasicos;

              if Origem = '5' then
                Imposto.ICMS.orig :=
                  oeNacionalConteudoImportacaoInferiorIgual40;

              if Origem = '6' then
                Imposto.ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;

              if Origem = '7' then
                Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;

              if Origem = '8' then
                Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;

              // Localiza informações sobre a ST
              qrfilial.Locate('optante_simples', ST, []);

              // CST ou CSOSN
              if qrfilial.fieldbyname('optante_simples').asstring = 'N' then
              // Regime normal
              begin
                if ST = '000' then
                begin
                  Imposto.ICMS.CST := cst00;
                  Imposto.ICMS.pICMS := 18;
                end;

                if ST = '020' then
                  Imposto.ICMS.CST := cst20;

                if ST = '090' then
                begin
                  Imposto.ICMS.CST := cst90;
                  Imposto.ICMS.pICMS := 18;
                end;

                if ST = '040' then
                  Imposto.ICMS.CST := cst40;

                if ST = '041' then
                  Imposto.ICMS.CST := cst41;

                if ST = '050' then
                  Imposto.ICMS.CST := cst50;

                if ST = '060' then
                  Imposto.ICMS.CST := cst60;
              end
              else if qrfilial.fieldbyname('optante_simples').asstring = 'S'
              then
              // Regime simples nacional
              begin

                if ST = '102' then
                  Imposto.ICMS.CSOSN := csosn102;

                if ST = '300' then
                  Imposto.ICMS.CSOSN := csosn300;

                if ST = '400' then
                  Imposto.ICMS.CSOSN := csosn400;

                if ST = '500' then
                  Imposto.ICMS.CSOSN := csosn500;

                if ST = '900' then
                begin
                  Imposto.ICMS.CSOSN := csosn900;
                  Imposto.ICMS.pICMS := QrCupom_Item.fieldbyname
                    ('ALIQUOTA').AsFloat;
                end;
              end;
              // PIS
              if qrfilial.fieldbyname('optante_simples').asstring = 'N' then
                Imposto.PIS.CST := pis99
              else if qrfilial.fieldbyname('optante_simples').asstring = 'S'
              then
                Imposto.PIS.CST := pis49;

              // Imposto.PIS.vBC := TotalItem;
              // Imposto.PIS.pPIS := 0.0065;
              // COFINS
              if qrfilial.fieldbyname('optante_simples').asstring = 'N' then
                Imposto.COFINS.CST := cof99
              else if qrfilial.fieldbyname('optante_simples').asstring = 'S'
              then
                Imposto.COFINS.CST := cof49;

            end;
            QrCupom_Item.Next;
            ctItem := ctItem + 1;
          end;
        end;

        Total.DescAcrEntr.vDescSubtot :=
          qr_cupom.fieldbyname('VALOR_DESCONTO').AsFloat;
        Total.DescAcrEntr.vAcresSubtot :=
          qr_cupom.fieldbyname('VALOR_ACRESCIMO').AsFloat;
        // frmmodulo.Query1.fieldbyname('valor_acrescimo').AsFloat;
        Total.vCFeLei12741 := TributosEST + TributosFED;

        frmModulo.qrcupom_forma.Close;
        frmModulo.qrcupom_forma.SQL.Clear;
        frmModulo.qrcupom_forma.SQL.Add('select forma, valor from cupom_forma');
        frmModulo.qrcupom_forma.SQL.Add('where cod_cupom =''' +
          qr_cupom.fieldbyname('codigo').asstring + '''');
        frmModulo.qrcupom_forma.Open;
        frmModulo.qrcupom_forma.First;

        while not frmModulo.qrcupom_forma.Eof do
        begin
          forma := frmModulo.qrcupom_forma.fieldbyname('forma').asstring;

          if forma = 'Dinheiro' then
            RBindFPG.ItemIndex := 0;

          if forma = 'Cartão Crédito' then
          begin
            RBindFPG.ItemIndex := 2;
            RBOperadora.ItemIndex := 11;
          end;
          if forma = 'Cartão Débito' then
          begin
            RBindFPG.ItemIndex := 3;
            RBOperadora.ItemIndex := 11;
          end;
          if forma = ('Cheque') then
          begin
            RBindFPG.ItemIndex := 1;
          end;

          if RBindFPG.Text = '01-DINHEIRO' then
          begin
            with Pagto.Add do
            begin
              cMP := mpDinheiro;
              vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
            end;
          end;
          if RBindFPG.Text = '02-CHEQUE' then
          begin
            with Pagto.Add do
            begin
              cMP := mpCheque;
              vMP := tGeralCup;
            end;
          end;
          if RBindFPG.Text = '03-CARTAO DE CREDITO' then
          begin
            with Pagto.Add do
            begin
              cMP := mpCartaodeCredito;
              vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
              // tGeralCup;
              cAdmC := StrToInt(Copy(RBOperadora.Text, 1, 3));
            end;
          end;
          if RBindFPG.Text = '04-CARTAO DE DEBITO' then
          begin
            with Pagto.Add do
            begin
              cMP := mpCartaodeDebito;
              vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
              // tGeralCup;
              cAdmC := StrToInt(Copy(RBOperadora.Text, 1, 3));
            end;
          end;
          if RBindFPG.Text = '05-CREDITO LOJA' then
          begin
            with Pagto.Add do
            begin
              cMP := mpCreditoLoja;
              vMP := tGeralCup;
            end;
          end;
          if RBindFPG.Text = '10-VALE ALIMENTACAO' then
          begin
            with Pagto.Add do
            begin
              cMP := mpValeAlimentacao;
              vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
              // tGeralCup;
            end;
          end;
          if RBindFPG.Text = '11-VALE REFEICAO' then
          begin
            with Pagto.Add do
            begin
              cMP := mpValeAlimentacao;
              vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
              // tGeralCup;
            end;
          end;
          if RBindFPG.Text = '12-VALE PRESENTE' then
          begin
            with Pagto.Add do
            begin
              cMP := mpValePresente;
              vMP := tGeralCup;
            end;
          end;
          if RBindFPG.Text = '13-VALE COMBUSTIVEL' then
          begin
            with Pagto.Add do
            begin
              cMP := mpValeCombustivel;
              vMP := tGeralCup;
            end;
          end;
          if RBindFPG.Text = '99-OUTROS' then
          begin
            with Pagto.Add do
            begin
              cMP := mpOutros;
              vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
              // tGeralCup;
            end;
          end;
          frmModulo.qrcupom_forma.Next;
        end;
        cMsg := 'Obrigado Volte Sempre!!!';

        if qrfilial.fieldbyname('optante_simples').asstring = 'S' then
          cMsg := cMsg + ' Optante pelo simples nacional';

        InfAdic.infCpl := 'Valor Aproximado dos Impostos R$' +
          FormatFloat('0.00', TributosEST) + ' ( EST )' + ' R$ ' +
          FormatFloat('0.00', TributosFED) + ' ( FED )' +
          '                                                 ' + cMsg;
        mSat.Lines.Text := ACBrSAT.CFe.GerarXML(True);

        Randomize;
        NumControle := nPdv * Round(Random(9999));
        qTempSat.ParamByName('CONTROLE').AsInteger := NumControle;
        qTempSat.ParamByName('XML_TEMP').asstring := mSat.Lines.Text;
        qTempSat.ParamByName('TERMINAL').AsInteger := nPdv;
        qTempSat.ParamByName('STATUS').AsInteger := 0;
        qTempSat.ExecSQL;

        while i < 6 do
        begin
          Sleep(1000);
          qRetornoSat.Close;
          qRetornoSat.SQL.Clear;
          qRetornoSat.SQL.Text :=
            'select * from TEMP_SAT where CONTROLE = :vNum and STATUS = 1';
          qRetornoSat.ParamByName('vNum').AsInteger := NumControle;
          qRetornoSat.Open;
          if not(qRetornoSat.IsEmpty) then
          begin
            if qRetornoSatRETORNO.asstring = '.' then
            begin
              ACBrSAT.CFe.Clear;
              ACBrSAT.CFe.AsXMLString := qRetornoSatXML_CFE.asstring;
              Emitiu := True;
              ACBrSAT.ImprimirExtrato;
              QrCupom_Item.Close;
              QrCupom_Item.SQL.Clear;
              QrCupom_Item.SQL.Add('update cupom set sat = 1,');
              QrCupom_Item.SQL.Add('cod_cliente =''' + '000001' + ''',');
              QrCupom_Item.SQL.Add('numero= ''' + numero_cupom + '''');
              QrCupom_Item.SQL.Add('where codigo=' +
               QuotedStr(qr_cupom.fieldbyname('codigo').asstring) + '');
              QrCupom_Item.ExecSQL;
              btfiltrar.Click;

              AdvGlowButton5.Enabled:= False;

              Abort;
            end
            else
            begin
              Emitiu := False;
              ShowMessage(qRetornoSatRETORNO.asstring);
              qRetornoSat.Delete;
              Abort;
            end;
          end
          else
            Inc(i);
        end;

        if not(Emitiu) then
        begin
          ShowMessage('HOUVE UM ERRO NA EMISSÃO DO CUPOM SAT !');
          qLimpaRetorno.ParamByName('vPdv').AsInteger := nPdv;
          qLimpaRetorno.ExecSQL;
        end;
      end;
    end;
  end;
end;

procedure TfrmPdv.btnOperacoesClick(Sender: TObject);
begin
  application.CreateForm(TfrmVendasSat, frmVendasSat);
  frmVendasSat.ShowModal;
end;

procedure TfrmPdv.btnParametrosClick(Sender: TObject);
begin
  application.CreateForm(TfrmConfig1, frmConfig1);
  frmConfig1.ShowModal;
end;

procedure TfrmPdv.FormCreate(Sender: TObject);
var
  Arquivo: TIniFile;
begin
    DateEdit1.Date := Now;
    DateEdit2.Date := Now;

  Arquivo := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'PDV.INI');
  nPdv := Arquivo.ReadInteger('GERAL', 'NUM_CAIXA', 1);
  Cnpj := Arquivo.ReadString('GERAL', 'CNPJ', '');
  IEst := Arquivo.ReadString('GERAL', 'INSC_ESTADUAL', '');
  PathFdb := Arquivo.ReadString('GERAL', 'BANCO_DADOS', '');
  Versao := Arquivo.ReadString('SAT', 'VERSAO', '0.07');
  CnpjSH := Arquivo.ReadString('SAT', 'SH_CNPJ', '');
  Assinatura := Arquivo.ReadString('SAT', 'ASSINATURA', '');

  seLargura.Value := Arquivo.ReadInteger('Fortes', 'Largura',
     ACBrSATExtratoFortes1.LarguraBobina);
  seMargemTopo.Value := Arquivo.ReadInteger('Fortes', 'MargemTopo',
    ACBrSATExtratoFortes1.Margens.Topo);
  seMargemFundo.Value := Arquivo.ReadInteger('Fortes', 'MargemFundo',
    ACBrSATExtratoFortes1.Margens.Fundo);
  seMargemEsquerda.Value := Arquivo.ReadInteger('Fortes', 'MargemEsquerda',
   ACBrSATExtratoFortes1.Margens.Esquerda);
  seMargemDireita.Value := Arquivo.ReadInteger('Fortes', 'MargemDireita',
    ACBrSATExtratoFortes1.Margens.Direita);

  lImpressora.Caption := Arquivo.ReadString('Printer', 'Name', '');
  cbPreview.Checked := Arquivo.ReadBool('Fortes', 'Preview', True);
  Arquivo.Free;

  try
    Conexao.Database := PathFdb;
    Conexao.Connect;
    AjustaACBrSAT;
    btnEnviar.Enabled := True;
  except
    ShowMessage('ERRO NA CONEXÃO COM O BANCO DE DADOS !');
    btnEnviar.Enabled := False;
  end;

end;


procedure TfrmPdv.FormShow(Sender: TObject);
begin
   tsLog.TabVisible          := False;
   tsGerado.TabVisible       := false;
   tsRecebido.TabVisible     := False;
   tsCancelamento.TabVisible := False;
   tsRedeXML.TabVisible      := False;
   AdvGlowButton5.Enabled    := False;

   btfiltrar.Click;

end;

procedure TfrmPdv.PrepararImpressao;
begin
  if ACBrSAT.Extrato = ACBrSATExtratoESCPOS1 then
  begin
    ACBrSATExtratoFortes1.LarguraBobina := seLargura.Value;
    ACBrSATExtratoFortes1.Margens.Topo := seMargemTopo.Value;
    ACBrSATExtratoFortes1.Margens.Fundo := seMargemFundo.Value;
    ACBrSATExtratoFortes1.Margens.Esquerda := seMargemEsquerda.Value;
    ACBrSATExtratoFortes1.Margens.Direita := seMargemDireita.Value;
    ACBrSATExtratoFortes1.MostrarPreview := cbPreview.Checked;

    try
      if lImpressora.Caption <> '' then
        ACBrSATExtratoFortes1.PrinterName := lImpressora.Caption;
    except
    end;
  end;
end;

procedure TfrmPdv.SairExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPdv.wwDBGrid1DblClick(Sender: TObject);
begin
    AdvGlowButton5.Enabled := True;
    AdvGlowButton5.setfocus;
end;

end.
