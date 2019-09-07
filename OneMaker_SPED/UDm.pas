unit UDm;

interface

uses
  Windows, Forms, System.SysUtils, System.Classes, ACBrSpedFiscal, Data.DB,
  ACBrEFDBlocos,
  Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait,
  FireDAC.VCLUI.Error, FireDAC.VCLUI.Async,
  FireDAC.VCLUI.Script, FireDAC.Comp.UI, FireDAC.Phys.IB,
  FireDAC.Comp.ScriptCommands, FireDAC.Comp.Script, ACBrBase, ACBrValidador, Data.SqlExpr,
  Data.DBXDataSnap, IndyPeerImpl,
  Data.DBXCommon, FireDAC.Phys.TDBXBase, FireDAC.Phys.DS,
  ACBrEFDBloco_C, ACBrEFDBloco_C_Class, FireDAC.Stan.Util, FireDAC.Phys.IBBase,
  FireDAC.Phys.IBDef, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TDm = class(TDataModule)
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    FDConexao: TFDConnection;
    qrEmpresa: TFDQuery;
    qrUnidades: TFDQuery;
    qrUnidadesCODIGO: TStringField;
    qrUnidadesUNIDADE: TStringField;
    qrUnidadesDESCRICAO: TStringField;
    qrC400_ECF: TFDQuery;
    qrC460_CUPONS: TFDQuery;
    qrC470_ITENSCUPOM: TFDQuery;
    qrC400_ECFCODIGO: TStringField;
    qrC400_ECFREG: TStringField;
    qrC400_ECFCOD_MOD: TStringField;
    qrC400_ECFECF_MOD: TStringField;
    qrC400_ECFECF_FAB_SN: TStringField;
    qrC400_ECFECF_CX: TIntegerField;
    qrC460_CUPONSCODIGO: TStringField;
    qrC460_CUPONSCODC405: TStringField;
    qrC460_CUPONSREG: TStringField;
    qrC460_CUPONSCOD_MOD: TStringField;
    qrC460_CUPONSCOD_SIT: TIntegerField;
    qrC460_CUPONSNUM_DOC: TIntegerField;
    qrC460_CUPONSVL_DOC: TSingleField;
    qrC460_CUPONSVL_PIS: TSingleField;
    qrC460_CUPONSVL_COFINS: TSingleField;
    qrC460_CUPONSCPF_CNPJ: TStringField;
    qrC460_CUPONSNOM_ADQ: TStringField;
    qrC470_ITENSCUPOMCODIGO: TStringField;
    qrC470_ITENSCUPOMCODC460: TStringField;
    qrC470_ITENSCUPOMREG: TStringField;
    qrC470_ITENSCUPOMCOD_ITEM: TStringField;
    qrC470_ITENSCUPOMQTD: TSingleField;
    qrC470_ITENSCUPOMQTD_CANC: TSingleField;
    qrC470_ITENSCUPOMUNID: TStringField;
    qrC470_ITENSCUPOMVL_ITEM: TSingleField;
    qrC470_ITENSCUPOMCST_ICMS: TIntegerField;
    qrC470_ITENSCUPOMCFOP: TIntegerField;
    qrC470_ITENSCUPOMALIQ_ICMS: TSingleField;
    qrC470_ITENSCUPOMVL_PIS: TSingleField;
    qrC470_ITENSCUPOMVL_COFINS: TSingleField;
    qrC405_REDUCOES: TFDQuery;
    qrC420_TOTAISRED: TFDQuery;
    qrC490_ECFMOVDIA: TFDQuery;
    qrC405_REDUCOESCODIGO: TStringField;
    qrC405_REDUCOESCODECF: TStringField;
    qrC405_REDUCOESREG: TStringField;
    qrC405_REDUCOESCRO: TIntegerField;
    qrC405_REDUCOESCRZ: TIntegerField;
    qrC405_REDUCOESNUM_COO_FIN: TIntegerField;
    qrC405_REDUCOESGT_FFIN: TSingleField;
    qrC405_REDUCOESVL_BRT: TSingleField;
    qrC420_TOTAISREDCODIGO: TStringField;
    qrC420_TOTAISREDCODC405: TStringField;
    qrC420_TOTAISREDREG: TStringField;
    qrC420_TOTAISREDCOD_TOT_PAR: TStringField;
    qrC420_TOTAISREDVLR_ACUM_TOT: TSingleField;
    qrC420_TOTAISREDNR_TOT: TIntegerField;
    qrC420_TOTAISREDDESCR_NR_TOT: TStringField;
    qrC490_ECFMOVDIACODIGO: TStringField;
    qrC490_ECFMOVDIACODC405: TStringField;
    qrC490_ECFMOVDIAREG: TStringField;
    qrC490_ECFMOVDIACST_ICMS: TStringField;
    qrC490_ECFMOVDIACFOP: TStringField;
    qrC490_ECFMOVDIAALIQ_ICMS: TSingleField;
    qrC490_ECFMOVDIAVL_OPR: TSingleField;
    qrC490_ECFMOVDIAVL_BC_ICMS: TSingleField;
    qrC490_ECFMOVDIAVL_ICMS: TSingleField;
    qrC490_ECFMOVDIACOD_OBS: TStringField;
    qrCMD: TFDQuery;
    qrItensMov: TFDQuery;
    qrInventarioTotal: TFDQuery;
    qrC190_Analitico: TFDQuery;
    qrInventario: TFDQuery;
    qrNotasEntradaSaida: TFDQuery;
    qrItensNotas: TFDQuery;
    qrContaContabil: TFDQuery;
    qrContaContabilCODIGO: TIntegerField;
    qrContaContabilCONTA: TStringField;
    qrContaContabilDESCRICAO: TStringField;
    qrContaContabilNIVEL: TIntegerField;
    qrContaContabilCTAANALITICA: TIntegerField;
    qrContaContabilCODCTASUP: TIntegerField;
    qrContaContabilGRUPO: TIntegerField;
    qrParticipantes: TFDQuery;
    qrProdutos: TFDQuery;
    qrProdutosAlterados: TFDQuery;
    qrProdutosAlteradosCODIGO: TStringField;
    qrProdutosAlteradosDESCR_ANT_ITEM: TStringField;
    qrProdutosAlteradosCOD_ANT_ITEM: TStringField;
    qrProdutosAlteradosENVIADO: TIntegerField;
    qrParticipantesTIPO: TStringField;
    qrParticipantesCOD_PART: TStringField;
    qrParticipantesNOME: TStringField;
    qrParticipantesCOD_PAIS: TStringField;
    qrParticipantesCNPJ: TStringField;
    qrParticipantesCPF: TStringField;
    qrParticipantesIE: TStringField;
    qrParticipantesCOD_MUN: TStringField;
    qrParticipantesSUFRAMA: TStringField;
    qrParticipantesSEND: TStringField;
    qrParticipantesNUM: TStringField;
    qrParticipantesCOMPL: TStringField;
    qrParticipantesBAIRRO: TStringField;
    qrItensNotasTIPO: TStringField;
    qrItensNotasNUM_ITEM: TStringField;
    qrItensNotasCOD_ITEM: TStringField;
    qrItensNotasCBARRA: TStringField;
    qrItensNotasQTD: TFloatField;
    qrItensNotasUNID: TStringField;
    qrItensNotasVL_ITEM: TFloatField;
    qrItensNotasVL_DESC: TFloatField;
    qrItensNotasCST_ICMS: TStringField;
    qrItensNotasCFOP: TStringField;
    qrItensNotasVL_BC_ICMS: TFloatField;
    qrItensNotasALIQ_ICMS: TFloatField;
    qrItensNotasVL_ICMS: TFloatField;
    qrItensNotasVL_BC_ICMS_ST: TFloatField;
    qrItensNotasALIQ_ST: TStringField;
    qrItensNotasVL_ICMS_ST: TFloatField;
    qrItensNotasCST_IPI: TStringField;
    qrItensNotasVL_BC_IPI: TStringField;
    qrItensNotasALIQ_IPI: TFloatField;
    qrItensNotasVL_IPI: TFloatField;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
    FDScript1: TFDScript;
    ACBrValidador1: TACBrValidador;
    qrReg1600: TFDQuery;
    qrProdutosUsados: TFDMemTable;
    qrProdutosUsadosCOD_ITEM: TStringField;
    qrUnidadesUsadas: TFDMemTable;
    qrUnidadesUsadasUNIDADE: TStringField;
    qrEmpresaCODIGO: TStringField;
    qrEmpresaFILIAL: TStringField;
    qrEmpresaNOTAFISCAL: TIntegerField;
    qrEmpresaENDERECO: TStringField;
    qrEmpresaCIDADE: TStringField;
    qrEmpresaUF: TStringField;
    qrEmpresaCEP: TStringField;
    qrEmpresaTELEFONE: TStringField;
    qrEmpresaCNPJ: TStringField;
    qrEmpresaIE: TStringField;
    qrEmpresaSEQNF: TIntegerField;
    qrEmpresaFAX: TStringField;
    qrEmpresaOBS1: TStringField;
    qrEmpresaOBS2: TStringField;
    qrEmpresaCONTRIBUINTE_IPI: TStringField;
    qrEmpresaSUBSTITUTO_TRIBUTARIO: TStringField;
    qrEmpresaEMPRESA_ESTADUAL: TStringField;
    qrEmpresaOPTANTE_SIMPLES: TStringField;
    qrEmpresaOPTANTE_SUPER_SIMPLES: TStringField;
    qrEmpresaECF: TStringField;
    qrEmpresaTIPO: TIntegerField;
    qrEmpresaIPI: TCurrencyField;
    qrEmpresaISS: TCurrencyField;
    qrEmpresaNUMERO: TStringField;
    qrEmpresaRESPONSAVEL: TStringField;
    qrEmpresaCOMPLEMENTO: TStringField;
    qrEmpresaBAIRRO: TStringField;
    qrEmpresaFARMACIA_RESP_TECNICO: TStringField;
    qrEmpresaFARMACIA_CRF: TStringField;
    qrEmpresaFARMACIA_CPF: TStringField;
    qrEmpresaFARMCIA_DATA: TDateField;
    qrEmpresaFARMACIA_UF: TStringField;
    qrEmpresaFARMACIA_SENHA: TStringField;
    qrEmpresaFARMACIA_EMAIL: TStringField;
    qrEmpresaFARMACIA_LOGIN: TStringField;
    qrEmpresaFARMACIA_ENVIO: TStringField;
    qrEmpresaCONHECIMENTO: TIntegerField;
    qrEmpresaINDUSTRIA: TStringField;
    qrEmpresaFARMACIA_NUMEROLICENCA: TStringField;
    qrEmpresaCOD_MUNICIPIO_IBGE: TStringField;
    qrEmpresaIBGE: TStringField;
    qrEmpresaPIS: TBCDField;
    qrEmpresaCOFINS: TBCDField;
    qrEmpresaEMAIL: TStringField;
    qrEmpresaATIVIDADE: TStringField;
    qrEmpresaCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    qrEmpresaCONTADOR_NOME: TStringField;
    qrEmpresaCONTADOR_CPF: TStringField;
    qrEmpresaCONTADOR_CRC: TStringField;
    qrEmpresaCONTADOR_CNPJ: TStringField;
    qrEmpresaCONTADOR_CEP: TStringField;
    qrEmpresaCONTADOR_ENDERECO: TStringField;
    qrEmpresaCONTADOR_NUMERO: TStringField;
    qrEmpresaCONTADOR_COMPLEMENTO: TStringField;
    qrEmpresaCONTADOR_BAIRRO: TStringField;
    qrEmpresaCONTADOR_FONE: TStringField;
    qrEmpresaCONTADOR_FAX: TStringField;
    qrEmpresaCONTADOR_EMAIL: TStringField;
    qrEmpresaINSC_MUNICIPAL: TStringField;
    qrEmpresaDATA_ABERTURA: TDateField;
    qrEmpresaCNAE: TStringField;
    qrEmpresaCRT: TStringField;
    qrEmpresaCONTADOR_CIDADE: TStringField;
    qrEmpresaCONTADOR_COD_MUNICIPIO: TStringField;
    qrEmpresaCONTADOR_UF: TStringField;
    qrEmpresaPERMITE_CREDITO: TIntegerField;
    qrEmpresaFANTASIA: TStringField;
    qrEmpresaDFIXAS: TSingleField;
    qrEmpresaTIPOCALCULO: TIntegerField;
    qrEmpresaSERIE_CTE: TStringField;
    qrEmpresaSEQ_CTE: TStringField;
    qrEmpresaCOD_PAIS: TStringField;
    qrEmpresaPAIS: TStringField;
    qrEmpresaHOMEPAGE: TStringField;
    qrUnidadesDT_INI: TDateField;
    qrUnidadesDT_FIM: TDateField;
    qrC400_ECFDT_INI: TDateField;
    qrC400_ECFDT_FIM: TDateField;
    qrC460_CUPONSDT_DOC: TDateField;
    qrProdutosCODIGO: TStringField;
    qrProdutosDT_INI: TDateField;
    qrProdutosDT_FIM: TDateField;
    qrProdutosREG: TStringField;
    qrProdutosCOD_ITEM: TStringField;
    qrProdutosDESCR_ITEM: TStringField;
    qrProdutosCOD_BARRA: TStringField;
    qrProdutosCOD_ANT_ITEM: TStringField;
    qrProdutosUNID_INV: TStringField;
    qrProdutosTIPO_ITEM: TIntegerField;
    qrProdutosCOD_NCM: TStringField;
    qrProdutosEX_IPI: TStringField;
    qrProdutosCOD_GEN: TIntegerField;
    qrProdutosCOD_LST: TIntegerField;
    qrProdutosALIQ_ICMS: TSingleField;
    qrProdutosAlteradosDT_INI: TDateField;
    qrProdutosAlteradosDT_FIM: TDateField;
    qrC405_REDUCOESDT_DOC: TDateField;
    qrInventarioCODIGO: TStringField;
    qrInventarioCODBARRA: TStringField;
    qrInventarioPRODUTO: TStringField;
    qrInventarioUNIDADE: TStringField;
    qrInventarioNCM: TStringField;
    qrInventarioPRECOCUSTO: TBCDField;
    qrInventarioESTOQUE: TBCDField;
    qrInventarioVL_ITEM: TFMTBCDField;
    qrInventarioALIQUOTA: TBCDField;
    qrInventarioCODFORNECEDOR: TStringField;
    qrNotasEntradaSaidaTIPO: TStringField;
    qrNotasEntradaSaidaSTATUS: TStringField;
    qrNotasEntradaSaidaCODIGO: TStringField;
    qrNotasEntradaSaidaNUMERO: TStringField;
    qrNotasEntradaSaidaCODFORNECEDOR: TStringField;
    qrNotasEntradaSaidaCODCLIENTE: TStringField;
    qrNotasEntradaSaidaMODELO: TStringField;
    qrNotasEntradaSaidaSERIE: TStringField;
    qrNotasEntradaSaidaCFOP: TStringField;
    qrNotasEntradaSaidaDATA_EMISSAO: TDateField;
    qrNotasEntradaSaidaCHAVE: TStringField;
    qrNotasEntradaSaidaVALOR_NOTA: TBCDField;
    qrNotasEntradaSaidaDESCONTO: TBCDField;
    qrNotasEntradaSaidaTOTAL_PRODUTOS: TBCDField;
    qrNotasEntradaSaidaFRETE_CONTA: TStringField;
    qrNotasEntradaSaidaFRETE: TBCDField;
    qrNotasEntradaSaidaSEGURO: TBCDField;
    qrNotasEntradaSaidaOUTRAS: TBCDField;
    qrNotasEntradaSaidaBASE_ICMS: TBCDField;
    qrNotasEntradaSaidaVALOR_ICMS: TBCDField;
    qrNotasEntradaSaidaBASE_SUB: TBCDField;
    qrNotasEntradaSaidaVALOR_SUB: TBCDField;
    qrNotasEntradaSaidaIPI: TBCDField;
    qrNotasEntradaSaidaPAGAMENTO: TStringField;
    qrInventarioTotalVALOR_ESTOQUE: TFMTBCDField;
    qrItensMovTIPO: TStringField;
    qrItensMovCOD_ITEM: TStringField;
    qrItensMovDESC_ITEM: TStringField;
    qrItensMovCOD_BARRA: TStringField;
    qrItensMovUNID_INV: TStringField;
    qrItensMovCOD_NCM: TStringField;
    qrItensMovALIQ_ICMS: TBCDField;
    qrC190_AnaliticoTIPO: TStringField;
    qrC190_AnaliticoCST: TStringField;
    qrC190_AnaliticoCFOP: TStringField;
    qrC190_AnaliticoICMS_ALIQUOTA: TBCDField;
    qrC190_AnaliticoVL_BC_ICMS: TBCDField;
    qrC190_AnaliticoVL_ICMS: TBCDField;
    qrC190_AnaliticoVL_BC_ICMS_ST: TBCDField;
    qrC190_AnaliticoVL_ICMS_ST: TBCDField;
    qrC190_AnaliticoVL_RED_BC: TBCDField;
    qrC190_AnaliticoVL_IPI: TBCDField;
    qrReg1600CREDITO: TBCDField;
    qrReg1600DEBITO: TBCDField;

    procedure DataModuleCreate(Sender: TObject);
  private

    iCOD_VER, iCOD_VERPC, iCOD_FIN, iPERFIL, iINDICADOR: Integer;
    { Private declarations }

    procedure CarregaConfiguracoes;
    procedure Filtrar_Notas_Entrada_Saida(dtINI, dtFIM: tdateTime);
    procedure FiltraITensNota(sCodNota, sTipo: String);
  public
    procedure FiltraAnalitico(dti, dtf: tdateTime; sCodigo: string);
    { Public declarations }

    { carregar produtos movimentados no periodo }
    procedure Carregar_Produtos(DT_INI, DT_FIM: TDate);
    procedure Carregar_Unidades(DT_INI, DT_FIM: TDate);
    procedure Carregar_Participantes(DT_INI, DT_FIM: TDate);

    procedure Limpar_Sobras(DT_INI, DT_FIM: TDate);

    procedure AtualizaMemo;

    procedure DadosBloco_0;
    procedure DadosBloco_C;
    procedure DadosBloco_G;
    procedure DadosBloco_H;
    procedure DadosBloco_E;
    procedure DadosBloco_1;
    procedure Verifica_Registros;
    procedure Verifica_Registros_0200;
    procedure Insere_Usados(sCodItem: string);
    procedure Insere_UnidadesUsados(sUN: string);

  end;

var
  Dm: TDm;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

uses UPrincipal, UFuncoes, UEFDImporta;

{$R *.dfm}
{ TDm }

{ TDm }

procedure TDm.AtualizaMemo;
begin
  FPrincipal.MemoLog.Lines.Clear;
  if FileExists(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo) then
    FPrincipal.MemoLog.Lines.LoadFromFile(ACBrSPEDFiscal1.Path +
      ACBrSPEDFiscal1.Arquivo);

end;

procedure TDm.CarregaConfiguracoes;
var
  txt: textfile;
  entrada, caminho: string;
  sBanco, sHostname: string;
begin

  caminho := ExtractFilePath(Application.ExeName) + '\ini\com.ini';
  try
    assignfile(txt, caminho);
    reset(txt);

    while not eof(txt) do
    begin
      readln(txt, entrada);

      if Copy(entrada, 1, 7) = '999-001' then
        sBanco := trim(Copy(entrada, 9, 50));
      if Copy(entrada, 1, 7) = '999-002' then
        sHostname := trim(Copy(entrada, 9, 50));
    end;

    FDConexao.Params.Clear;
    FDConexao.Params.Add('Database=' + sBanco);
    FDConexao.Params.Add('User_Name=SYSDBA');
    FDConexao.Params.Add('Password=masterkey');
    FDConexao.Params.Add('Server=' + sHostname);
    FDConexao.Params.Add('DriverID=FB');
    FDConexao.Connected := True;

  finally
    CloseFile(txt);
  end;

end;

procedure TDm.Carregar_Participantes(DT_INI, DT_FIM: TDate);
begin
  qrParticipantes.close;
  qrParticipantes.Params.ParamByName('DATAi').Value :=
    StrToDate(DateToStr(DT_INI));
  qrParticipantes.Params.ParamByName('DATAf').Value :=
    StrToDate(DateToStr(DT_FIM));
  qrParticipantes.Open;
  qrParticipantes.RecordCount;
end;

procedure TDm.Carregar_Produtos(DT_INI, DT_FIM: TDate);
begin
  qrItensMov.close;
  qrItensMov.Params.ParamByName('DATAi').Value := StrToDate(DateToStr(DT_INI));
  qrItensMov.Params.ParamByName('DATAf').Value := StrToDate(DateToStr(DT_FIM));
  qrItensMov.Open;

  qrProdutos.close;
  qrProdutos.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
  qrProdutos.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
  qrProdutos.Open;

  if not FPrincipal.CheckInventario.Checked then
    FPrincipal.Progresso.MaxValue := qrProdutos.RecordCount +
      qrItensMov.RecordCount
  else
  begin
    qrInventario.close;
    qrInventario.Open;
    FPrincipal.Progresso.MaxValue := qrProdutos.RecordCount +
      qrItensMov.RecordCount + qrInventario.RecordCount;
  end;

  FPrincipal.Progresso.Progress := 0;

  if FPrincipal.RadioPerfil.ItemIndex = 0 then
  begin

    qrItensMov.First;
    while not qrItensMov.eof do
    begin
      if (not qrProdutos.Locate('COD_ITEM', qrItensMovCOD_ITEM.AsString,
        [loCaseInsensitive])) then
      begin
        qrProdutos.Insert;
        qrProdutosCODIGO.Value := inc('SPED_0200', 'CODIGO', '');
        qrProdutosDT_INI.AsDateTime := StrToDate(DateToStr(DT_INI));
        qrProdutosDT_FIM.AsDateTime := StrToDate(DateToStr(DT_FIM));
        qrProdutosREG.Value := '0200';
        qrProdutosCOD_ITEM.Value := qrItensMovCOD_ITEM.AsString;
        qrProdutosDESCR_ITEM.Value := AllTrim(qrItensMovDESC_ITEM.AsString);
        qrProdutosCOD_BARRA.Value := qrItensMovCOD_BARRA.AsString;
        // qrProdutosCOD_ANT_ITEM.Value := '';

        if Copy(qrItensMovUNID_INV.AsString, 1, 2) > ' ' then
          qrProdutosUNID_INV.Value := Copy(qrItensMovUNID_INV.AsString, 1, 2)
        else
          qrProdutosUNID_INV.Value := 'UN';

        qrProdutosTIPO_ITEM.Value := 99;
        qrProdutosCOD_NCM.Value := qrItensMovCOD_NCM.AsString;
        // qrProdutosEX_IPI.Value := qrItensMov;
        qrProdutosCOD_GEN.Value := 0;
        qrProdutosCOD_LST.Value := 0;
        qrProdutosALIQ_ICMS.Value := qrItensMovALIQ_ICMS.AsFloat;
        qrProdutos.Post;
      end;

      qrItensMov.Next;
      FPrincipal.Progresso.Progress := FPrincipal.Progresso.Progress + 1;
      Application.ProcessMessages;
    end;

  end;

  { informar os itens do inventario no 0200 }
  if FPrincipal.CheckInventario.Checked then
  begin
    qrInventario.close;
    qrInventario.Open;

    qrInventario.First;
    while not qrInventario.eof do
    begin
      if (not qrProdutos.Locate('COD_ITEM', qrInventarioCODIGO.AsString,
        [loCaseInsensitive])) then
      begin
        qrProdutos.Insert;
        qrProdutosCODIGO.Value := inc('SPED_0200', 'CODIGO', '');
        qrProdutosDT_INI.AsDateTime := StrToDate(DateToStr(DT_INI));
        qrProdutosDT_FIM.AsDateTime := StrToDate(DateToStr(DT_FIM));
        qrProdutosREG.Value := '0200';
        qrProdutosCOD_ITEM.Value := qrInventarioCODIGO.AsString;
        qrProdutosDESCR_ITEM.Value := AllTrim(qrInventarioPRODUTO.AsString);
        qrProdutosCOD_BARRA.Value := qrInventarioCODBARRA.AsString;
        // qrProdutosCOD_ANT_ITEM.Value := '';
        qrProdutosUNID_INV.Value := Copy(qrInventarioUNIDADE.AsString, 1, 2);

        if Copy(qrInventarioUNIDADE.AsString, 1, 2) > ' ' then
          qrProdutosUNID_INV.Value := Copy(qrInventarioUNIDADE.AsString, 1, 2)
        else
          qrProdutosUNID_INV.Value := 'UN';

        qrProdutosTIPO_ITEM.Value := 99;
        qrProdutosCOD_NCM.Value := qrInventarioNCM.AsString;
        qrProdutosCOD_GEN.Value := 0;
        qrProdutosCOD_LST.Value := 0;
        qrProdutosALIQ_ICMS.Value := qrInventarioALIQUOTA.AsFloat;
        qrProdutos.Post;
      end;

      qrInventario.Next;
      Application.ProcessMessages;
      FPrincipal.Progresso.Progress := FPrincipal.Progresso.Progress + 1;
    end;

  end;

end;

procedure TDm.Carregar_Unidades(DT_INI, DT_FIM: TDate);
begin
  // DESABILITEI DAQUI
  qrProdutos.close;
  qrProdutos.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
  qrProdutos.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
  qrProdutos.Open;

  qrUnidades.close;
  qrUnidades.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
  qrUnidades.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
  qrUnidades.Open;

  qrProdutos.First;

  while not qrProdutos.eof do
  begin
    if (not qrUnidades.Locate('UNIDADE', Copy(qrProdutosUNID_INV.AsString, 1,
      2), [loCaseInsensitive])) then
    begin
      qrUnidades.Insert;
      qrUnidadesCODIGO.Value := inc('SPED_0190', 'CODIGO', '');
      qrUnidadesDT_INI.AsDateTime := StrToDate(DateToStr(DT_INI));
      qrUnidadesDT_FIM.AsDateTime := StrToDate(DateToStr(DT_FIM));

      //
      if Copy(qrProdutosUNID_INV.AsString, 1, 2) > ' ' then
      begin
        qrUnidadesUNIDADE.Value := Copy(qrProdutosUNID_INV.AsString, 1, 2)
      end;

      if qrUnidadesUNIDADE.Value = 'UN' then
      begin
        qrUnidadesDESCRICAO.Value := 'Unidade';
      end;

      if qrUnidadesUNIDADE.Value = 'PC' then
      begin
        qrUnidadesDESCRICAO.Value := 'Pacote';
      end;

      if qrUnidadesUNIDADE.Value = 'CX' then
      begin
        qrUnidadesDESCRICAO.Value := 'Caixa';
      end;

      if qrUnidadesUNIDADE.Value = 'KG' then
      begin
        qrUnidadesDESCRICAO.Value := 'Kilograma';
      end;

      if qrUnidadesUNIDADE.Value = 'DZ' then
      begin
        qrUnidadesDESCRICAO.Value := 'Duzia';
      end;

      if qrUnidadesUNIDADE.Value = 'DY' then
      begin
        qrUnidadesDESCRICAO.Value := 'Display';
      end;

      if qrUnidadesUNIDADE.Value = 'FD' then
      begin
        qrUnidadesDESCRICAO.Value := 'Fardo';
      end;

      if qrUnidadesUNIDADE.Value = 'FA' then
      begin
        qrUnidadesDESCRICAO.Value := 'Fardo';
      end;

      if qrUnidadesUNIDADE.Value = 'LT' then
      begin
        qrUnidadesDESCRICAO.Value := 'Litro';
      end;

      if qrUnidadesUNIDADE.Value = 'PA' then
      begin
        qrUnidadesDESCRICAO.Value := 'Par';
      end;

      if qrUnidadesUNIDADE.Value = 'PR' then
      begin
        qrUnidadesDESCRICAO.Value := 'Par';
      end;

      if qrUnidadesUNIDADE.Value = 'DZ' then
      begin
        qrUnidadesDESCRICAO.Value := 'Duzia';
      end;

      if qrUnidadesUNIDADE.Value = 'SC' then
      begin
        qrUnidadesDESCRICAO.Value := 'Saco';
      end;

      if qrUnidadesUNIDADE.Value = 'MT' then
      begin
        qrUnidadesDESCRICAO.Value := 'Metro';
      end;

      if qrUnidadesUNIDADE.Value = 'PT' then
      begin
        qrUnidadesDESCRICAO.Value := 'Pote';
      end;

      if qrUnidadesUNIDADE.Value = 'CT' then
      begin
        qrUnidadesDESCRICAO.Value := 'Cartela';
      end;

      if qrUnidadesUNIDADE.Value = 'CJ' then
      begin
        qrUnidadesDESCRICAO.Value := 'Conjunto';
      end;

      if qrUnidadesUNIDADE.Value = 'RS' then
      begin
        qrUnidadesDESCRICAO.Value := 'Resma';
      end;

      if qrUnidadesUNIDADE.Value = 'CR' then
      begin
        qrUnidadesDESCRICAO.Value := 'Cartela';
      end;

      if qrUnidadesUNIDADE.Value = 'CJ' then
      begin
        qrUnidadesDESCRICAO.Value := 'Conjunto';
      end;

      if qrUnidadesUNIDADE.Value = 'GP' then
      begin
        qrUnidadesDESCRICAO.Value := 'Jogo';
      end;

      qrUnidades.Post

      //
    end;

    qrProdutos.Next;
    Application.ProcessMessages;
  end;

  qrItensMov.close;
  qrItensMov.Params.ParamByName('DATAi').Value := StrToDate(DateToStr(DT_INI));
  qrItensMov.Params.ParamByName('DATAf').Value := StrToDate(DateToStr(DT_FIM));
  qrItensMov.Open;

  qrItensMov.First;
  while not qrItensMov.eof do
  begin
    if (not qrUnidades.Locate('UNIDADE', Copy(qrItensMovUNID_INV.AsString, 1,
      2), [loCaseInsensitive])) then
    begin
      qrUnidades.Insert;
      qrUnidadesCODIGO.Value := inc('SPED_0190', 'CODIGO', '');
      qrUnidadesDT_INI.AsDateTime := StrToDate(DateToStr(DT_INI));
      qrUnidadesDT_FIM.AsDateTime := StrToDate(DateToStr(DT_FIM));
      if Copy(qrItensMovUNID_INV.AsString, 1, 2) > ' ' then
        qrUnidadesUNIDADE.Value := Copy(qrItensMovUNID_INV.AsString, 1, 2)
      else
        qrUnidadesUNIDADE.Value := 'UN';
      qrUnidadesDESCRICAO.Value := 'Sem Descrição';
      qrUnidades.Post
    end;

    qrItensMov.Next;
    Application.ProcessMessages;
  end;
  // ATE AQUI

  // AddItemListView('0190 - Carregando Unidades', icProcessa);
  // dm.Carregar_Unidades(Datai.Date, Dataf.Date);

  qrUnidades.close;
  qrUnidades.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
  qrUnidades.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
  qrUnidades.Open;

  qrCMD.close;
  qrCMD.SQL.Clear;
  qrCMD.SQL.Add('select UNID_INV from SPED_0200 ');
  qrCMD.SQL.Add('Where  DT_INI >= :DT_INI and DT_FIM <= :DT_FIM ');
  qrCMD.SQL.Add('group by UNID_INV ');
  qrCMD.Params[0].AsDateTime := StrToDate(DateToStr(DT_INI));
  qrCMD.Params[1].AsDateTime := StrToDate(DateToStr(DT_FIM));
  qrCMD.Open;
  qrCMD.First;

  while not qrCMD.eof do
  begin
    if not qrUnidades.Locate('UNIDADE', Copy(qrCMD.Fields[0].AsString, 1, 2),
      [loCaseInsensitive]) then
    begin
      qrUnidades.Insert;
      qrUnidadesCODIGO.Value := inc('SPED_0190', 'CODIGO', '');
      if Copy(trim(qrCMD.Fields[0].AsString), 1, 2) > ' ' then
        qrUnidadesUNIDADE.Value := Copy(trim(qrCMD.Fields[0].AsString), 1, 2)
        // UN
      else
        qrUnidadesUNIDADE.Value := 'UN';
      qrUnidadesDESCRICAO.Value := 'Sem Descricao'; // DESCRICAO
      qrUnidadesDT_INI.AsDateTime := StrToDate(DateToStr(DT_INI));
      qrUnidadesDT_FIM.AsDateTime := StrToDate(DateToStr(DT_FIM));
      qrUnidades.Post;
      // FPrincipal.Msg('0190 - ' + qrUnidadesUNIDADE.AsString + ' - ' + qrUnidadesDESCRICAO.AsString, 10, clBlack);
      Application.ProcessMessages;
    end;
    qrCMD.Next;
    Application.ProcessMessages;
  end;

  { except
    FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icErro);
    end;
  }
end;

procedure TDm.DadosBloco_0;
var
  aCodVersao: TACBrVersaoLeiaute;
  aPerfil: TACBrPerfil;
  aIndicador: TACBrAtividade;
  aCodFin: TACBrCodFinalidade;

  int0150: Integer; { participantes }
  int0175: Integer; { alterações participantes }
  int0200: Integer; { identificação dos produtos }
  int0300: Integer;
  int0190: Integer;
  int0500: Integer;
  int0600: Integer;
begin

  FPrincipal.Progresso.Progress := 0;
  FPrincipal.LbMensagem.Caption := 'BLOCO 0';
  qrEmpresa.close;
  qrEmpresa.Open;

  // qrClientes.close;
  // qrClientes.Open;

  // qrFornecedores.close;
  // qrFornecedores.Open;

  { qrParticipantes.close;
    qrParticipantes.Params.ParamByName('DATAi').Value := StrToDate(DateToStr(FPrincipal.Datai.Date));
    qrParticipantes.Params.ParamByName('DATAf').Value := StrToDate(DateToStr(FPrincipal.Dataf.Date));
    qrParticipantes.Open;
  }
  qrContaContabil.close;
  qrContaContabil.Open;

  qrProdutos.close;
  qrProdutos.Params.ParamByName('DT_INI').Value :=
    StrToDate(DateToStr(FPrincipal.Datai.Date));
  qrProdutos.Params.ParamByName('DT_FIM').Value :=
    StrToDate(DateToStr(FPrincipal.Dataf.Date));
  qrProdutos.Open;

  qrUnidades.close;
  qrUnidades.Params.ParamByName('DT_INI').Value :=
    StrToDate(DateToStr(FPrincipal.Datai.Date));
  qrUnidades.Params.ParamByName('DT_FIM').Value :=
    StrToDate(DateToStr(FPrincipal.Dataf.Date));
  qrUnidades.Open;


  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco 0.

  { versao arquivo }
  // case FPrincipal.ComboVersao.ItemIndex of
  // 0:
  // aCodVersao := vlVersao100;
  // 1:
  // aCodVersao := vlVersao101;
  // 2:
  // aCodVersao := vlVersao101;
  // 3:
  // aCodVersao := vlVersao103;
  // 4:
  // aCodVersao := vlVersao104;
  // 5:
  // aCodVersao := vlVersao105;
  // 6:
  // aCodVersao := vlVersao106;
  // 7:
  // aCodVersao := vlVersao107;
  // 8:
  // aCodVersao := vlVersao108;
  // //  9:
  // //    aCodVersao := vlVersao109;
  //
  // end;

  { finalidade }
  case FPrincipal.RadioFinalidade.ItemIndex of
    0:
      aCodFin := raOriginal;
    1:
      aCodFin := raSubstituto;
  end;

  { indicador }
  case FPrincipal.RadioIndicador.ItemIndex of
    0:
      aIndicador := atIndustrial;
    1:
      aIndicador := atOutros;
  end;

  { perfil empresa }
  case FPrincipal.RadioPerfil.ItemIndex of
    0:
      aPerfil := pfPerfilA;
    1:
      aPerfil := pfPerfilB;
    2:
      aPerfil := pfPerfilC;
  end;

  // Definindo
  with ACBrSPEDFiscal1 do
  begin
    DT_INI := FPrincipal.Datai.Date;
    DT_FIN := FPrincipal.Dataf.Date;
  end;

  with ACBrSPEDFiscal1 do
  begin
    IniciaGeracao;
    AtualizaMemo;
  end;

  { geração do BLOCO 0 }
  with ACBrSPEDFiscal1.Bloco_0 do
  begin
    // Dados da Empresa
    with Registro0000New do
    begin
      // COD_VER := aCodVersao;
      COD_VER := vlVersao108;
      COD_FIN := aCodFin;
      NOME := qrEmpresaFILIAL.AsString;
      CNPJ := sn(qrEmpresaCNPJ.AsString);
      CPF := '';
      UF := qrEmpresaUF.AsString;
      IE := sn(qrEmpresaIE.AsString);
      COD_MUN := isInteger(qrEmpresaCOD_MUNICIPIO_IBGE.AsString);
      IM := '';
      SUFRAMA := '';
      IND_PERFIL := aPerfil;
      IND_ATIV := aIndicador;
    end;

    with Registro0001New do
    begin
      IND_MOV := imComDados;

      // FILHO - Dados complementares da Empresa
      with Registro0005New do
      begin
        FANTASIA := AllTrim(qrEmpresaFANTASIA.AsString);
        CEP := sn(qrEmpresaCEP.AsString);
        ENDERECO := qrEmpresaENDERECO.AsString;
        NUM := qrEmpresaNUMERO.AsString;
        COMPL := qrEmpresaCOMPLEMENTO.AsString;
        BAIRRO := qrEmpresaBAIRRO.AsString;
        FONE := sn(qrEmpresaTELEFONE.AsString);
        FAX := sn(qrEmpresaFAX.AsString);
        EMAIL := qrEmpresaEMAIL.AsString;
      end;
      //
      // with Registro0015New do
      // begin
      // UF_ST := 'SC';
      // IE_ST := '254504230';
      // end;
      //
      // FILHO - Dados do contador.
      with Registro0100New do
      begin
        NOME := AllTrim(qrEmpresaCONTADOR_NOME.AsString);
        CPF := sn(qrEmpresaCONTADOR_CPF.AsString);
        CRC := sn(qrEmpresaCONTADOR_CRC.AsString);
        CNPJ := sn(qrEmpresaCONTADOR_CNPJ.AsString);
        CEP := sn(qrEmpresaCONTADOR_CEP.AsString);
        ENDERECO := qrEmpresaCONTADOR_ENDERECO.AsString;
        NUM := qrEmpresaCONTADOR_NUMERO.AsString;
        COMPL := qrEmpresaCONTADOR_COMPLEMENTO.AsString;
        BAIRRO := qrEmpresaCONTADOR_BAIRRO.AsString;
        FONE := sn(qrEmpresaCONTADOR_FONE.AsString);
        FAX := sn(qrEmpresaCONTADOR_FAX.AsString);
        EMAIL := qrEmpresaCONTADOR_EMAIL.AsString;
        COD_MUN := isInteger(qrEmpresaCONTADOR_COD_MUNICIPIO.AsString);
      end;

      // FILHO - participantes

      FPrincipal.Progresso.MaxValue := qrParticipantes.RecordCount;
      qrParticipantes.First;
      while not qrParticipantes.eof do
      begin
        // 10 Clientes
        with Registro0150New do
        begin
          COD_PART := qrParticipantesTIPO.AsString +
            qrParticipantesCOD_PART.AsString;
          // TIPO + CODIGO ex: F000001 OU C000001
          NOME := AllTrim(qrParticipantesNOME.AsString);
          COD_PAIS := '1058';

          if Length(sn(qrParticipantesCNPJ.AsString)) > 11 then
            CNPJ := sn(qrParticipantesCNPJ.AsString)
          else
            CPF := sn(qrParticipantesCNPJ.AsString);

          IE := sn(qrParticipantesIE.AsString);
          COD_MUN := isInteger(qrParticipantesCOD_MUN.AsString);
          SUFRAMA := qrParticipantesSUFRAMA.AsString;
          ENDERECO := AllTrim(qrParticipantesSEND.AsString);
          NUM := qrParticipantesNUM.AsString;
          COMPL := qrParticipantesCOMPL.AsString;
          BAIRRO := AllTrim(qrParticipantesBAIRRO.AsString);
          //
          // FILHO - 1 Alteração para cada cliente de 2 a 3
          {
            if (int0150 = 2) or (int0150 = 3) then
            begin
            with Registro0175New do
            begin
            DT_ALT := DT_INI + 1;
            NR_CAMPO := '1';
            CONT_ANT := 'CAMPO ANTERIOR ' + '1';
            end;
            end;
          }

        end;
        qrParticipantes.Next;
        FPrincipal.LbMensagem.Caption := 'BLOCO 0 - 150 > Participantes';
        FPrincipal.Progresso.Progress := FPrincipal.Progresso.Progress + 1;
        FPrincipal.Progresso.Progress := FPrincipal.Progresso.Progress + 1;
        Application.ProcessMessages;
      end;

      // INFORMA PARTICIPANTE FIXO PARA OS CARTOES
      if FPrincipal.Check_Bloco1600.Checked then
      begin
        with Registro0150New do
        begin
          COD_PART := 'CR1';
          NOME := 'CARTÃO DÉBITO/CRÉDITO';
          COD_PAIS := '1058';
        end;
      end;

      // FILHO
      // 4 Unidades de medida
      // if Registro0000.IND_PERFIL = pfPerfilA then
      begin
        FPrincipal.Progresso.MaxValue := qrUnidades.RecordCount;
        qrUnidades.First;
        while not qrUnidades.eof do
        begin
          if not Registro0190.LocalizaRegistro(qrUnidadesUNIDADE.AsString) then
          begin
            with Registro0190New do
            begin
              UNID := Copy(qrUnidadesUNIDADE.AsString, 1, 2);
              DESCR := qrUnidadesDESCRICAO.AsString;
            end;
          end;
          qrUnidades.Next;
          FPrincipal.LbMensagem.Caption :=
            'BLOCO 0 - 190 > Unidades de Medidas';
          FPrincipal.Progresso.Progress := FPrincipal.Progresso.Progress + 1;
          Application.ProcessMessages;
        end;
      end;

      { identificação dos produtos }
      if (FPrincipal.RadioPerfil.ItemIndex = 0) or
        (FPrincipal.CheckInventario.Checked) then
      begin

        FPrincipal.Progresso.MaxValue := qrProdutos.RecordCount;
        qrProdutos.First;
        while not qrProdutos.eof do
        begin
          if not Registro0200.LocalizaRegistro(qrProdutosCOD_ITEM.AsString) then
          begin
            with Registro0200New do
            begin
              COD_ITEM := qrProdutosCOD_ITEM.AsString;
              DESCR_ITEM := AllTrim(qrProdutosDESCR_ITEM.AsString);
              COD_BARRA := qrProdutosCOD_BARRA.AsString;
              UNID_INV := Copy(qrProdutosUNID_INV.AsString, 1, 2);

              // if qrProdutosTIPO.AsString = 'VENDA' then
              TIPO_ITEM := tiMercadoriaRevenda;
              // else
              // TIPO_ITEM := tiMaterialConsumo;

              COD_NCM := qrProdutosCOD_NCM.AsString;
              COD_GEN := qrProdutosCOD_GEN.AsString;
              ALIQ_ICMS := qrProdutosALIQ_ICMS.AsFloat;

              // REGISTRO 0206: CÓDIGO DE PRODUTO CONFORME TABELA PUBLICADA PELA ANP (COMBUSTÍVEIS)
              // With Registro0206New do
              // begin
              // COD_COMB := '910101001';
              // end;

            end;
          end;
          qrProdutos.Next;
          FPrincipal.LbMensagem.Caption :=
            'BLOCO 0 - 200 > Identificação dos produtos';
          FPrincipal.Progresso.Progress := FPrincipal.Progresso.Progress + 1;
          Application.ProcessMessages;
        end;

      end;


      // FILHO
      {
        for int0300 := 1 to 10 do
        begin
        // 10 Bens Imobilizados
        with Registro0300New do
        begin
        COD_IND_BEM := FormatFloat('000000', int0300);
        IDENT_MERC := 1;
        DESCR_ITEM := 'DESCRIÇÃO DO ITEM';
        COD_PRNC := '';
        COD_CTA := '';
        NR_PARC := 10;
        // FILHO
        with Registro0305New do
        begin
        COD_CCUS := '1';
        // FUNC := 'BREVE DESCRIÇÃO DA FUNÇÃO DO IMOBILIZADO ' +FormatFloat('000000', int0300);;
        VIDA_UTIL := 60;
        end;
        end;
        end;
      }
      {
        with Registro0400New do
        begin
        COD_NAT := '12020';
        DESCR_NAT := 'DESCRIÇÃO DA NATUREZA DE OPERAÇÃO 12020';
        end;

        with Registro0450New do
        begin
        COD_INF := '000001';
        TXT := 'INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL';
        end;

        with Registro0460New do
        begin
        COD_OBS := '000001';
        TXT := 'TEXTO DE OBSERVAÇÃO DO DOCUMENTO FISCAL ';
        end;
      }

      { plano de conta contabil }
      // if FPrincipal.RadioPerfil.ItemIndex = 0 then
      // begin
      // FPrincipal.Progresso.MaxValue := qrContaContabil.RecordCount;
      // qrContaContabil.First;
      // while not qrContaContabil.eof do
      // begin
      // with Registro0500New do
      // begin
      // DT_ALT := DT_INI;
      //
      // COD_NAT_CC := zerarcodigo(Copy(qrContaContabilCONTA.AsString, 1, 1), 2);
      //
      // if qrContaContabilCTAANALITICA.AsInteger = 1 then
      // IND_CTA := 'A'
      // else
      // IND_CTA := 'S';
      //
      // NIVEL := qrContaContabilNIVEL.AsString;
      // COD_CTA := qrContaContabilCONTA.AsString;
      // NOME_CTA := Copy(qrContaContabilDESCRICAO.AsString, 1, 59);
      // end;
      // qrContaContabil.Next;
      // FPrincipal.LbMensagem.Caption := 'BLOCO 0 - 500 > Planos de Contas';
      // FPrincipal.Progresso.Progress := FPrincipal.Progresso.Progress + 1;
      // Application.ProcessMessages;
      // end;
      //
      // end;
      { centro de custos }
      {
        for int0600 := 1 to 10 do
        begin
        with Registro0600New do
        begin
        DT_ALT := StrToDate('30/11/2011');
        COD_CCUS := IntToStr(int0600);
        CCUS := 'CENTRO DE CUSTOS ' + IntToStr(int0600);
        end;
        end;
      }
    end;

  end;

  // if cbConcomitante.Checked then
  begin
    // ACBrSPEDFiscal1.WriteBloco_0;
    // AtualizaMemo;
  end;

end;

procedure TDm.DadosBloco_1;
begin

  with ACBrSPEDFiscal1.Bloco_1 do
  begin
    with Registro1001New do
    begin
      if FPrincipal.Check_Bloco1600.Checked then
        IND_MOV := imComDados
      else
        IND_MOV := imSemDados;
    end;

    // Registro de Obrigatoriedades
    with Registro1010New do
    begin
      IND_EXP := 'N';
      IND_CCRF := 'N';
      IND_COMB := 'N';
      IND_USINA := 'N';
      IND_VA := 'N';
      IND_EE := 'N';

{      Registro1100new := 'N';
      Registro1200new := 'N';
      Registro1300new := 'N';
      Registro1390new := 'N';
      Registro1400new := 'N';
      Registro1500new := 'N';
      Registro1600new := 'N';
      Registro1700new := 'N';
      Registro1800new := 'N';}



      if FPrincipal.Check_Bloco1600.Checked then
        IND_CART := 'S'
      else
        IND_CART := 'N';

      IND_FORM := 'N';
      IND_AER := 'N';

    end;

    if FPrincipal.Check_Bloco1600.Checked then
    begin
      Dm.qrReg1600.close;
      Dm.qrReg1600.ParamByName('DATAi').AsDateTime := FPrincipal.Datai.Date;
      Dm.qrReg1600.ParamByName('DATAf').AsDateTime := FPrincipal.Dataf.Date;
      Dm.qrReg1600.Open;

      Dm.qrReg1600.First;
      while not Dm.qrReg1600.eof do
      begin
        with Registro1600New do
        begin
          COD_PART := 'CR1';
          TOT_CREDITO := Dm.qrReg1600CREDITO.AsFloat;
          TOT_DEBITO := Dm.qrReg1600DEBITO.AsFloat;
        end;
        Dm.qrReg1600.Next;
        Application.ProcessMessages;
      end;

    end;

  end;

  ACBrSPEDFiscal1.WriteBloco_1;
  AtualizaMemo;

end;

procedure TDm.DadosBloco_C;
var
  INotas: Integer;
  IItens: Integer;
  NNotas: Integer;
  BNotas: Integer;
  dVL_OPR, dVL_IPI, dVL_SEG, dVL_OUT_DA, dVL_BC_ICMS, dVL_ICMS, dVL_BC_ICMS_ST,
    dVL_ICMS_ST: double;
begin

  Filtrar_Notas_Entrada_Saida(FPrincipal.Datai.Date, FPrincipal.Dataf.Date);

  // qrItensNotas.close;
  // qrItensNotas.Params.ParamByName('CODNOTA').Value := qrNotasEntradaSaidaCODIGO.AsString;
  // qrItensNotas.Params.ParamByName('TIPO').Value := qrNotasEntradaSaidaTIPO.AsString;
  // qrItensNotas.Open;

  // Bloco C.
  with ACBrSPEDFiscal1.Bloco_C do
  begin

    with RegistroC001New do
    begin
      IND_MOV := imComDados;
      //

      FPrincipal.Progresso.MaxValue := qrNotasEntradaSaida.RecordCount;
      FPrincipal.Progresso.Progress := 0;
      qrNotasEntradaSaida.First;
      while not qrNotasEntradaSaida.eof do
      begin
        dVL_SEG := 0;
        dVL_OUT_DA := 0;
        dVL_BC_ICMS := 0;
        dVL_ICMS := 0;
        dVL_BC_ICMS_ST := 0;
        dVL_ICMS_ST := 0;
        dVL_OPR := 0;
        dVL_IPI := 0;

        with RegistroC100New do
        begin
          if qrNotasEntradaSaidaTIPO.AsString = 'E' then
            IND_OPER := tpEntradaAquisicao
          else
            IND_OPER := tpSaidaPrestacao;

          if qrNotasEntradaSaidaTIPO.AsString = 'S' then
            IND_EMIT := edEmissaoPropria
          else
            IND_EMIT := edTerceiros; { * observar quando for entrada propria }

          if qrNotasEntradaSaidaTIPO.AsString = 'E' then
            COD_PART := 'F' + qrNotasEntradaSaidaCODFORNECEDOR.AsString
          else
            COD_PART := 'C' + qrNotasEntradaSaidaCODCLIENTE.AsString;

          COD_MOD := qrNotasEntradaSaidaMODELO.AsString;

          if qrNotasEntradaSaidaTIPO.AsString = 'E' then
            IND_PGTO := tpPrazo
          else
            IND_PGTO := tpVista;

          case isInteger(qrNotasEntradaSaidaSTATUS.AsString) of
            6:
              COD_SIT := sdRegular;
            8:
              COD_SIT := sdCancelado;
          else
            COD_SIT := sdRegular;
          end;

          SER := qrNotasEntradaSaidaSERIE.AsString;

          NUM_DOC := qrNotasEntradaSaidaNUMERO.AsString;
          CHV_NFE := qrNotasEntradaSaidaCHAVE.AsString;

          DT_DOC := qrNotasEntradaSaidaDATA_EMISSAO.AsDateTime;
          DT_E_S := qrNotasEntradaSaidaDATA_EMISSAO.AsDateTime;

//          VL_DOC := qrNotasEntradaSaidaVALOR_NOTA.AsFloat;


          VL_DOC := qrNotasEntradaSaidaBASE_ICMS.AsFloat;


          dVL_OPR := dVL_OPR + qrNotasEntradaSaidaVALOR_NOTA.AsFloat;

          if qrNotasEntradaSaidaPAGAMENTO.AsString = 'P' then
            IND_PGTO := tpPrazo
          else if qrNotasEntradaSaidaPAGAMENTO.AsString = 'V' then
            IND_PGTO := tpVista
          else
            IND_PGTO := tpSemPagamento;

          VL_DESC := qrNotasEntradaSaidaDESCONTO.AsFloat;
          VL_ABAT_NT := 0;
          VL_MERC := qrNotasEntradaSaidaTOTAL_PRODUTOS.AsFloat;

          if Length(qrNotasEntradaSaidaFRETE_CONTA.AsString) > 0 then
            case isInteger(qrNotasEntradaSaidaFRETE_CONTA.AsString) of
              0:
                IND_FRT := tfPorContaEmitente;
              1:
                IND_FRT := tfPorContaDestinatario;
            else
              IND_FRT := tfSemCobrancaFrete;
            end
          else
            IND_FRT := tfSemCobrancaFrete;

          VL_SEG := qrNotasEntradaSaidaSEGURO.AsFloat;
          dVL_SEG := dVL_SEG + qrNotasEntradaSaidaSEGURO.AsFloat;

          VL_OUT_DA := qrNotasEntradaSaidaOUTRAS.AsFloat;
          dVL_OUT_DA := dVL_OUT_DA + qrNotasEntradaSaidaOUTRAS.AsFloat;

          if FPrincipal.RadioPerfil.ItemIndex = 2 then // se for simples zera
          begin
            VL_BC_ICMS := 0;
            dVL_BC_ICMS := dVL_BC_ICMS + 0;
          end
          else
          begin
            VL_BC_ICMS := qrNotasEntradaSaidaBASE_ICMS.AsFloat;
            dVL_BC_ICMS := dVL_BC_ICMS + qrNotasEntradaSaidaBASE_ICMS.AsFloat;
          end;

          if FPrincipal.RadioPerfil.ItemIndex = 2 then // se for simples zera
          begin
            VL_ICMS := 0;
            dVL_ICMS := dVL_ICMS + 0;

            VL_BC_ICMS_ST := 0;
            dVL_BC_ICMS_ST := dVL_BC_ICMS_ST + 0;

            VL_ICMS_ST := 0;
            dVL_ICMS_ST := dVL_ICMS_ST + 0;
          end
          else
          begin
            VL_ICMS := qrNotasEntradaSaidaVALOR_ICMS.AsFloat;
            dVL_ICMS := dVL_ICMS + qrNotasEntradaSaidaVALOR_ICMS.AsFloat;

            VL_BC_ICMS_ST := qrNotasEntradaSaidaBASE_SUB.AsFloat;
            dVL_BC_ICMS_ST := dVL_BC_ICMS_ST +
              qrNotasEntradaSaidaBASE_SUB.AsFloat;

            VL_ICMS_ST := qrNotasEntradaSaidaVALOR_SUB.AsFloat;
            dVL_ICMS_ST := dVL_ICMS_ST + qrNotasEntradaSaidaVALOR_SUB.AsFloat;
          end;


          if FPrincipal.RadioPerfil.ItemIndex = 2 then // se for simples zera
          begin
          VL_IPI := 0;
          dVL_IPI := 0;
          end
          else
          begin
          VL_IPI := qrNotasEntradaSaidaIPI.AsFloat;
          dVL_IPI := dVL_IPI + qrNotasEntradaSaidaIPI.AsFloat;
          end;


          VL_PIS := 0;
          VL_COFINS := 0;
          VL_PIS_ST := 0;
          VL_COFINS_ST := 0;

          { Gera registros específicos para notas emitidas por terceiros }
          { if IND_EMIT = edTerceiros then
            begin
            With RegistroC110New do
            begin
            COD_INF := '000001';
            TXT_COMPL := '';
            end;
            end;
          }
          { Gera o registro de importação apenas para notas de entrada }
          {
            if IND_OPER = tpEntradaAquisicao then
            begin
            with RegistroC120New do
            begin
            COD_DOC_IMP := diSimplificadaImport;
            NUM_DOC__IMP := '1024879531';
            PIS_IMP := 0.00;
            COFINS_IMP := 0.00;
            NUM_ACDRAW := '';
            end;
            end;
          }

          { Gera registros específicos para notas emitidas por terceiros e de prestação }
          if (IND_EMIT = edTerceiros) and (IND_OPER = tpSaidaPrestacao) then
          begin
            with RegistroC130New do
            begin
              VL_SERV_NT := 10.12;
              VL_BC_ISSQN := 10.12;
              VL_ISSQN := 10.12;
              VL_BC_IRRF := 10.12;
              VL_IRRF := 10.12;
              VL_BC_PREV := 10.12;
              VL_PREV := 10.12;
            end;
          end;

          if FPrincipal.RadioPerfil.ItemIndex = 0 then
          begin

            // REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).

            FiltraITensNota(qrNotasEntradaSaidaCODIGO.AsString,
              qrNotasEntradaSaidaTIPO.AsString);

            qrItensNotas.First;
            while not qrItensNotas.eof do
            begin

              { informar o item conforme a nota tipo E ou S }
              if IND_EMIT <> edEmissaoPropria
              then { só informar os registro 176 se nao for emissao propria }
                if qrNotasEntradaSaidaTIPO.AsString = qrItensNotasTIPO.AsString
                then
                begin

                  with RegistroC170New do // Inicio FDicionar os Itens:
                  begin
                    Insere_Usados(qrItensNotasCOD_ITEM.AsString);
                    NUM_ITEM := qrItensNotasNUM_ITEM.AsString;
                    COD_ITEM := qrItensNotasCOD_ITEM.AsString;
                    DESCR_COMPL := '';
                    QTD := qrItensNotasQTD.AsFloat;
                    UNID := Copy(qrItensNotasUNID.AsString, 1, 2);
                    // VL_ITEM := (qrItensNotasQTD.AsFloat * qrItensNotasVL_ITEM.AsFloat);
                    VL_ITEM := qrItensNotasVL_ITEM.AsFloat;
                    VL_DESC := qrItensNotasVL_DESC.AsFloat;
                    IND_MOV := mfNao;
                    CST_ICMS := qrItensNotasCST_ICMS.AsString;
                    CFOP := qrItensNotasCFOP.AsString;
                    COD_NAT := '';

                    if FPrincipal.RadioPerfil.ItemIndex = 2 then
                    // se for simples zera
                    begin
                      VL_BC_ICMS := 0;
                      ALIQ_ICMS := 0;
                      VL_ICMS := 0;
                    end
                    else
                    begin
                      VL_BC_ICMS := qrItensNotasVL_BC_ICMS.AsFloat;
                      ALIQ_ICMS := qrItensNotasALIQ_ICMS.AsFloat;
                      VL_ICMS := qrItensNotasVL_ICMS.AsFloat;

                    end;

                    VL_BC_ICMS_ST := qrItensNotasVL_BC_ICMS_ST.AsFloat;
                    ALIQ_ST := qrItensNotasALIQ_ST.AsFloat;
                    VL_ICMS_ST := qrItensNotasVL_ICMS_ST.AsFloat;
                    IND_APUR := iaMensal;

                    // *****************************************************
                    // Para as operações de entrada, CFOP iniciando por 1, 2 ou 3, o CST_IPI deve ser menor que 50.
                    // Para as operações de saída, CFOP iniciando por 5, 6 ou 7, o CST_IPI deve ser maior ou igual a 50.
                    // *****************************************************
                    if qrItensNotasTIPO.AsString = 'E' then
                    begin
                      CST_IPI := CstIpiToStr(stipiEntradaIsenta);

                      case isInteger(Copy(qrItensNotasCFOP.AsString, 1, 1)) of
                        1, 2, 3:
                          CST_IPI := CstIpiToStr(stipiEntradaIsenta);
                        5, 6, 7:
                          CST_IPI := CstIpiToStr(stipiEntradaIsenta);
                      end;

                    end
                    else
                    begin
                      CST_IPI := CstIpiToStr(stipiSaidaIsenta);
                      case isInteger(Copy(qrItensNotasCFOP.AsString, 1, 1)) of
                        1, 2, 3:
                          CST_IPI := CstIpiToStr(stipiSaidaIsenta);
                        5, 6, 7:
                          CST_IPI := CstIpiToStr(stipiSaidaIsenta);
                      end;
                    end;

                    // **********************************************
                    // CFOP inválido. Utilizar CFOP com primeiro caracter = 1, 2 ou 3, quando for operação de entrada,
                    // e CFOP com primeiro caracter = 5, 6 ou 7, quando for operação de saída.
                    // **********************************************
                    if qrNotasEntradaSaidaTIPO.AsString = 'E' then
                    begin
                      case isInteger(Copy(qrItensNotasCFOP.AsString, 1, 1)) of
                        5, 6, 7:
                          CFOP := '1102';
                      end;
                    end
                    else
                    begin
                      case isInteger(Copy(qrItensNotasCFOP.AsString, 1, 1)) of
                        1, 2, 3:
                          CFOP := '5102';
                      end;
                    end;

                    COD_ENQ := '';
                    VL_BC_IPI := isFloat(qrItensNotasVL_BC_IPI.AsString);
                    ALIQ_IPI := isFloat(qrItensNotasALIQ_IPI.AsString);
                    VL_IPI := isFloat(qrItensNotasVL_IPI.AsString);

                    CST_PIS :=  CstPisToStr(stpisOutrasOperacoes); ;

                    VL_BC_PIS := 0;
                    ALIQ_PIS_PERC := 0;
                    QUANT_BC_PIS := 0;
                    ALIQ_PIS_R := 0;
                    VL_PIS := 0;
                    CST_COFINS := CstCofinsToStr(stcofinsOutrasOperacoes);
                    VL_BC_COFINS := 0;
                    ALIQ_COFINS_PERC := 0;
                    QUANT_BC_COFINS := 0;
                    ALIQ_COFINS_R := 0;
                    VL_COFINS := 0;
                    COD_CTA := '';

                    // REGISTRO C171: ARMAZENAMENTO DE COMBUSTIVEIS (código 01, 55)
                    { Só gera para operações de aquisição }
                    // if IND_OPER = tpEntradaAquisicao then
                    // begin
                    // with RegistroC171New do
                    // begin
                    // NUM_TANQUE := '115';
                    // QTDE := 1.00;
                    // end;
                    // end;

                    // REGISTRO C176: RESSARCIMENTO DE ICMS EM OPERAÇÕES COM
                    // SUBSTITUIÇÃO TRIBUTÁRIA (CÓDIGO 01, 55).
                    // with RegistroC176New do
                    // begin
                    // COD_MOD_ULT_E := '55';
                    // NUM_DOC_ULT_E := '124567';
                    // SER_ULT_E := '1';
                    // DT_ULT_E := Now;
                    // COD_PART_ULT_E := '000001';
                    // QUANT_ULT_E := 10.00;
                    // VL_UNIT_ULT_E := 1.00;
                    // VL_UNIT_BC_ST := 5.00;
                    // end;
                  end; // Fim dos Itens;

                end;

              qrItensNotas.Next;
              FPrincipal.LbMensagem.Caption :=
                'BLOCO C - 170 - Informando os itens das notas: ' +
                qrItensNotasCBARRA.AsString;
              Application.ProcessMessages;
            end;

          end;

        end;

        // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
        FiltrarTabela(tbC190, qrNotasEntradaSaidaCODIGO.AsString,
          FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
        qrC190_Analitico.First;
        while not qrC190_Analitico.eof do
        begin
          // if qrC190_AnaliticoTIPO.AsString = qrNotasEntradaSaidaTIPO.AsString then
          begin

            with RegistroC190New do
            begin
              CST_ICMS := qrC190_AnaliticoCST.AsString;
              CFOP := qrC190_AnaliticoCFOP.AsString;;


              VL_OPR := qrC190_AnaliticoVL_BC_ICMS.AsFloat;

              { VL_BC_ICMS := dVL_BC_ICMS;
                VL_ICMS := dVL_ICMS;
                VL_BC_ICMS_ST := dVL_BC_ICMS_ST;
                VL_ICMS_ST := dVL_ICMS_ST; }
              if FPrincipal.RadioPerfil.ItemIndex = 2 then
              // se for simples zera
              begin
                ALIQ_ICMS := 0;
                VL_BC_ICMS := 0;
                VL_ICMS := 0;
              end
              else
              begin
                ALIQ_ICMS := qrC190_AnaliticoICMS_ALIQUOTA.AsFloat;
                VL_BC_ICMS := qrC190_AnaliticoVL_BC_ICMS.AsFloat;
                VL_ICMS := qrC190_AnaliticoVL_ICMS.AsFloat;;
              end;

              // valtenci 16102015
              if FPrincipal.RadioPerfil.ItemIndex = 2 then
              // se for simples zera
              begin
                VL_BC_ICMS_ST := 0;
                VL_ICMS_ST := 0;
                VL_RED_BC := 0;
                VL_IPI := 0;

              end
              else
              begin
                VL_BC_ICMS_ST := qrC190_AnaliticoVL_BC_ICMS_ST.AsFloat;
                VL_ICMS_ST := qrC190_AnaliticoVL_ICMS_ST.AsFloat;
                VL_RED_BC := qrC190_AnaliticoVL_RED_BC.AsFloat;
                VL_IPI := dVL_IPI;
              end;

              COD_OBS := '';
            end; // Fim dos Itens;

          end;
          qrC190_Analitico.Next;
        end;

        qrNotasEntradaSaida.Next;
        FPrincipal.Progresso.Progress := FPrincipal.Progresso.Progress + 1;
        // FPrincipal.LbBlocos.Caption := 'BLOCO C - C100 - NOTAS FISCAIS';
        Application.ProcessMessages;
      end;

      // if cbConcomitante.Checked then
      begin
        // if (INotas mod BNotas) = 0 then // Gravar a cada N notas
        begin
          // Grava registros na memoria para o TXT, e limpa memoria
          ACBrSPEDFiscal1.WriteBloco_C(false); // False, NAO fecha o Bloco

          Application.ProcessMessages;
        end;
      end;

      // REGISTRO C400 - EQUIPAMENTO ECF (CÓDIGO 02 e 2D).

      qrC400_ECF.close;
      qrC400_ECF.Params.ParamByName('DT_INI').Value :=
        StrToDate(DateToStr(DT_INI));
      qrC400_ECF.Params.ParamByName('DT_FIM').Value :=
        StrToDate(DateToStr(DT_FIN));
      qrC400_ECF.Open;
      qrC400_ECF.First;

      FPrincipal.LbMensagem.Caption := 'BLOCO C - C400 - CUPOM FISCAL';
      while not qrC400_ECF.eof do
      begin
        With RegistroC400New do
        begin
          COD_MOD := qrC400_ECFCOD_MOD.AsString;
          ECF_MOD := qrC400_ECFECF_MOD.AsString;
          ECF_FAB := qrC400_ECFECF_FAB_SN.AsString;
          ECF_CX := zerarcodigo(qrC400_ECFECF_CX.AsString, 3);

          FiltrarTabela(TBc405, qrC400_ECFCODIGO.AsString,
            FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
          qrC405_REDUCOES.First;
          while not qrC405_REDUCOES.eof do
          begin
            With RegistroC405New do
            begin
              DT_DOC := qrC405_REDUCOESDT_DOC.AsDateTime;
              CRO := isInteger(qrC405_REDUCOESCRO.AsString);
              CRZ := isInteger(qrC405_REDUCOESCRZ.AsString);
              NUM_COO_FIN := isInteger(qrC405_REDUCOESNUM_COO_FIN.AsString);;
              GT_FIN := isFloat(qrC405_REDUCOESGT_FFIN.AsString);;
              VL_BRT := isFloat(qrC405_REDUCOESVL_BRT.AsString);;;

              if FPrincipal.RadioPerfil.ItemIndex = 0 then
              begin
                With RegistroC410New do
                begin
                  VL_PIS := 0.00;
                  VL_COFINS := 0.00;
                end;
              end;

              FiltrarTabela(tbC420, qrC405_REDUCOESCODIGO.AsString,
                FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
              qrC420_TOTAISRED.First;
              while not qrC420_TOTAISRED.eof do
              begin
                With RegistroC420New do
                begin
                  COD_TOT_PAR := qrC420_TOTAISREDCOD_TOT_PAR.AsString;
                  VLR_ACUM_TOT :=
                    isFloat(qrC420_TOTAISREDVLR_ACUM_TOT.AsString);
                  NR_TOT := isInteger(qrC420_TOTAISREDNR_TOT.AsString);
                  DESCR_NR_TOT := qrC420_TOTAISREDDESCR_NR_TOT.AsString;

                  { Gera este registro somente para empresas do pergil B de apresentação }

                  if Bloco_0.Registro0000.IND_PERFIL = pfPerfilB then
                  begin
                    With RegistroC425New do
                    begin
                      COD_ITEM := '000001';
                      QTD := 1;
                      UNID := 'PC';
                      VL_ITEM := 100.00;
                      VL_PIS := 0.00;
                      VL_COFINS := 0.00;
                    end;
                  end;
                  //
                end;
                qrC420_TOTAISRED.Next;
                Application.ProcessMessages;
              end;

              if FPrincipal.RadioPerfil.ItemIndex = 0 then
              begin

                FiltrarTabela(tbC460, qrC405_REDUCOESCODIGO.AsString,
                  FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
                qrC460_CUPONS.First;
                while not qrC460_CUPONS.eof do
                begin
                  with REgistroC460New do
                  begin
                    case qrC460_CUPONSCOD_SIT.AsInteger of
                      0: // regular
                        begin
                          COD_MOD := qrC460_CUPONSCOD_MOD.AsString;
                          COD_SIT := sdRegular;
                          NUM_DOC := qrC460_CUPONSNUM_DOC.AsString;
                          DT_DOC := qrC460_CUPONSDT_DOC.AsDateTime;
                          VL_DOC := isFloat(qrC460_CUPONSVL_DOC.AsString);
                          VL_PIS := isFloat(qrC460_CUPONSVL_PIS.AsString);
                          VL_COFINS := isFloat(qrC460_CUPONSVL_COFINS.AsString);

                          if Length(sn(qrC460_CUPONSCPF_CNPJ.AsString)) = 11
                          then
                            ACBrValidador1.TipoDocto := docCPF;
                          if Length(sn(qrC460_CUPONSCPF_CNPJ.AsString)) = 14
                          then
                            ACBrValidador1.TipoDocto := docCNPJ;
                          ACBrValidador1.Documento :=
                            sn(qrC460_CUPONSCPF_CNPJ.AsString);

                          if ACBrValidador1.Validar then
                            CPF_CNPJ := sn(qrC460_CUPONSCPF_CNPJ.AsString);

                          NOM_ADQ := qrC460_CUPONSNOM_ADQ.AsString;
                        end;
                      2: // se for cancelado
                        begin { REG + COD_MOD+COD_SIT+NUM_DOC }
                          COD_MOD := qrC460_CUPONSCOD_MOD.AsString;
                          COD_SIT := sdCancelado;
                          NUM_DOC := qrC460_CUPONSNUM_DOC.AsString;
                        end;
                    end;

                    FiltrarTabela(tbC470, qrC460_CUPONSCODIGO.AsString,
                      FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
                    qrC470_ITENSCUPOM.First;
                    while not qrC470_ITENSCUPOM.eof do
                    begin
                      with RegistroC470New do
                      begin
                        Insere_Usados(qrC470_ITENSCUPOMCOD_ITEM.AsString);
                        COD_ITEM := qrC470_ITENSCUPOMCOD_ITEM.AsString;
                        QTD := isFloat(qrC470_ITENSCUPOMQTD.AsString);
                        QTD_CANC := isFloat(qrC470_ITENSCUPOMQTD_CANC.AsString);
                        UNID := Copy(qrC470_ITENSCUPOMUNID.AsString, 1, 2);
                        VL_ITEM := isFloat(qrC470_ITENSCUPOMVL_ITEM.AsString);
                        CST_ICMS := qrC470_ITENSCUPOMCST_ICMS.AsString;
                        CFOP := qrC470_ITENSCUPOMCFOP.AsString;
                        ALIQ_ICMS :=
                          isFloat(qrC470_ITENSCUPOMALIQ_ICMS.AsString);
                        VL_PIS := isFloat(qrC470_ITENSCUPOMVL_PIS.AsString);
                        VL_COFINS :=
                          isFloat(qrC470_ITENSCUPOMVL_COFINS.AsString);
                      end;
                      qrC470_ITENSCUPOM.Next;
                      FPrincipal.LbMensagem.Caption :=
                        'C470 - ITENS CUPOM FISCAL: ' +
                        qrC470_ITENSCUPOMCOD_ITEM.AsString + ' - ' +
                        Copy(qrC470_ITENSCUPOMUNID.AsString, 1, 2);
                      Application.ProcessMessages;
                    end;
                  end;
                  qrC460_CUPONS.Next;
                  Application.ProcessMessages;
                end;
              end;

              FiltrarTabela(tbC490, qrC405_REDUCOESCODIGO.AsString,
                FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
              qrC490_ECFMOVDIA.First;
              while not qrC490_ECFMOVDIA.eof do
              begin
                with RegistroC490New do
                begin
                  CST_ICMS := qrC490_ECFMOVDIACST_ICMS.AsString;
                  CFOP := qrC490_ECFMOVDIACFOP.AsString;
                  ALIQ_ICMS := isFloat(qrC490_ECFMOVDIAALIQ_ICMS.AsString);

                  if FPrincipal.RadioPerfil.ItemIndex = 2 then
                  // se for simples zera
                  begin
                    VL_BC_ICMS := 0;
                    VL_ICMS := 0;
                  end
                  else
                  begin
                    VL_BC_ICMS := isFloat(qrC490_ECFMOVDIAVL_BC_ICMS.AsString);
                    VL_ICMS := isFloat(qrC490_ECFMOVDIAVL_ICMS.AsString);
                  end;

                  VL_OPR := isFloat(qrC490_ECFMOVDIAVL_OPR.AsString);;
                  COD_OBS := qrC490_ECFMOVDIACOD_OBS.AsString;
                end;
                qrC490_ECFMOVDIA.Next;
              end;

              // Só envia este registro se o contribuinte for da BA
              if Bloco_0.Registro0000.UF = 'BA' then
              begin
                with RegistroC495New do
                begin
                  ALIQ_ICMS := 17.00;
                  COD_ITEM := '000001';
                  QTD := 1.00;
                  QTD_CANC := 0.00;
                  UNID := 'UN';
                  VL_ITEM := 100.00;
                  VL_DESC := 0.00;
                  VL_CANC := 0.00;
                  VL_ACMO := 0.00;
                  VL_BC_ICMS := 100.00;
                  VL_ICMS := 17.00;
                  VL_ISEN := 0.00;
                  VL_ICMS_ST := 0.00;
                end;
              end;

            end;
            qrC405_REDUCOES.Next;
            FPrincipal.LbMensagem.Caption := 'C405 - REDUÇÕES Z';
            Application.ProcessMessages;
          end;

        end;

        qrC400_ECF.Next;
        FPrincipal.LbMensagem.Caption := 'C400 - EMISSOR DE CUPOM FISCAL';
        Application.ProcessMessages;
      end; // fim ECF

    end;

  end;

  // if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_C(True); // True, fecha o Bloco
    AtualizaMemo;
  end;

end;

procedure TDm.DadosBloco_E;
var
  I: Integer;
begin

  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE001New do
    begin
      IND_MOV := imComDados;

      with RegistroE100New do
      begin
        DT_INI := FPrincipal.Datai.Date;
        DT_FIN := FPrincipal.Dataf.Date;

        with RegistroE110New do
        begin
          VL_TOT_DEBITOS := 0;
          VL_AJ_DEBITOS := 0;
          VL_TOT_AJ_DEBITOS := 0;
          VL_ESTORNOS_CRED := 0;
          VL_TOT_CREDITOS := 0;
          VL_AJ_CREDITOS := 0;
          VL_TOT_AJ_CREDITOS := 0;
          VL_ESTORNOS_DEB := 0;
          VL_SLD_CREDOR_ANT := 0;
          VL_SLD_APURADO := 0;
          VL_TOT_DED := 0;
          VL_ICMS_RECOLHER := 0;
          VL_SLD_CREDOR_TRANSPORTAR := 0;
          DEB_ESP := 0;

          // with RegistroE111New do begin
          // COD_AJ_APUR    := 'RS009999';
          // DESCR_COMPL_AJ := '';
          // VL_AJ_APUR     := 1.00;
          //
          // with RegistroE112New do begin
          // NUM_DA    := '123';
          // NUM_PROC  := '123';
          // IND_PROC  := opOutros;
          // PROC      := 'DESCRIÇÃO RESUMIDA';
          // TXT_COMPL := 'COMPLEMENTO';
          // end;
          //
          // with RegistroE113New do begin
          // COD_PART := '000001';
          // COD_MOD  := '01';
          // SER      := 'SERI';
          // SUB      := '';
          // NUM_DOC  := '123456789';
          // DT_DOC   := Now;
          // COD_ITEM := '000001';
          // VL_AJ_ITEM := 0;
          // end;
          // end;

          { Rio Grande do Sul não possui as tabelas do registro E115, então este não precisa ser gerado }
          // with RegistroE115New do begin
          // COD_INF_ADIC   := 'RS000001';
          // VL_INF_ADIC    := 0;
          // DESCR_COMPL_AJ := '';
          // end;

          with RegistroE116New do
          begin
            COD_OR := '000';
            VL_OR := 0;
            DT_VCTO := Now;
            COD_REC := '123';
            NUM_PROC := '10';
            IND_PROC := opSefaz;
            PROC := 'DESCRIÇÃO DO PROCESSO';
            TXT_COMPL := '';
            MES_REF := '112011';
          end;
        end;
      end;

      { Gera um registro E200 e filhos para cada estado onde o contribuinte possui inscrição estadual }
      // for I := Low(ESTADOS) to High(ESTADOS) do
      { begin
        with RegistroE200New do
        begin
        DT_INI := StrToDate('01/11/2011');
        DT_FIN := StrToDate('30/11/2011');
        // UF := ESTADOS[I];

        with RegistroE210New do
        begin
        IND_MOV_ST := mstSemOperacaoST;
        VL_SLD_CRED_ANT_ST := 0;
        VL_DEVOL_ST := 0;
        VL_RESSARC_ST := 0;
        VL_OUT_CRED_ST := 0;
        VL_AJ_CREDITOS_ST := 0;
        VL_SLD_DEV_ANT_ST := 0.00;
        VL_DEDUCOES_ST := 0;
        VL_ICMS_RECOL_ST := 0.00;
        VL_SLD_CRED_ST_TRANSPORTAR := 0;
        VL_OUT_DEB_ST := 0.00;
        DEB_ESP_ST := 0;

        // with RegistroE220New do begin
        // COD_AJ_APUR    := 'RS109999';
        // DESCR_COMPL_AJ := '';
        // VL_AJ_APUR     := 0.00;
        //
        // with RegistroE230New do begin
        // NUM_DA    := '123';
        // NUM_PROC  := '123';
        // IND_PROC  := opOutros;
        // PROC      := 'DESCRIÇÃO RESUMIDA';
        // TXT_COMPL := 'COMPLEMENTO';
        // end;
        //
        // with RegistroE240New do begin
        // COD_PART   := '000001';
        // COD_MOD    := '01';
        // SER        := 'SERI';
        // SUB        := '';
        // NUM_DOC    := '123456789';
        // DT_DOC     := Now;
        // COD_ITEM   := '000001';
        // VL_AJ_ITEM := 0;
        // end;
        // end;

        with RegistroE250New do
        begin
        COD_OR := '000';
        VL_OR := 0;
        DT_VCTO := Now;
        COD_REC := '123';
        NUM_PROC := '1020304050';
        IND_PROC := opOutros;
        PROC := 'DESCRIÇÃO RESUMIDA';
        TXT_COMPL := '';
        MES_REF := '112011';
        end;
        end;
        end;
        end;
      }
      { with RegistroE500New do
        begin
        IND_APUR := iaMensal;
        DT_INI := StrToDate('01/11/2011');
        DT_FIN := StrToDate('30/11/2011');

        with RegistroE510New do
        begin
        CFOP := '5120';
        CST_IPI := '50';
        VL_CONT_IPI := 0;
        VL_BC_IPI := 0;
        VL_IPI := 0;
        end;

        with RegistroE520New do
        begin
        VL_SD_ANT_IPI := 0;
        VL_DEB_IPI := 0;
        VL_CRED_IPI := 0;
        VL_OD_IPI := 10.00;
        VL_OC_IPI := 0;
        VL_SC_IPI := 0;
        VL_SD_IPI := 10.00;

        with RegistroE530New do
        begin
        IND_AJ := ajDebito;
        VL_AJ := 10;
        COD_AJ := '001';
        IND_DOC := odOutros;
        NUM_DOC := '123';
        DESCR_AJ := 'DESCRIÇÃO DETALHADA';
        end;
        end;
        // fim registro E500
        end; }
    end;
  end;

  begin
    ACBrSPEDFiscal1.WriteBloco_E;
    AtualizaMemo;
  end;

end;

procedure TDm.DadosBloco_G;
begin
  // Bloco C.
  with ACBrSPEDFiscal1.Bloco_G do
  begin

    with RegistroG001New do
    begin
      IND_MOV := imSemDados;
    end;

  end;

  ACBrSPEDFiscal1.WriteBloco_G;

end;

procedure TDm.DadosBloco_H;
begin

  with Dm do
  begin
    qrInventario.close;
    qrInventario.Open;
    qrInventario.First;
    qrInventarioTotal.close;
    qrInventarioTotal.Open;

    // Bloco H.
    with ACBrSPEDFiscal1.Bloco_H do
    begin
      with RegistroH001New do
      begin
        if qrInventario.RecordCount > 0 then
          IND_MOV := imComDados
        else
          IND_MOV := imSemDados;

        with RegistroH005New do
        begin
          DT_INV := FPrincipal.Datai.Date;
          // o valor informado no campo deve ser menor ou igual ao valor no campo DT_FIN do registro 0000
          VL_INV := qrInventarioTotalVALOR_ESTOQUE.AsFloat;

          // Itens do inventario
          while not qrInventario.eof do
          begin
            with RegistroH010New do
            begin
              Insere_Usados(qrInventarioCODIGO.AsString);
              COD_ITEM := qrInventarioCODIGO.AsString;

              if qrProdutos.Locate('COD_ITEM', qrInventarioCODIGO.AsString,
                [loCaseInsensitive]) then
                UNID := Copy(qrProdutosUNID_INV.AsString, 1, 2)
              else
                UNID := Copy(qrInventarioUNIDADE.AsString, 1, 2);

              QTD := qrInventarioESTOQUE.AsFloat;
              VL_UNIT := qrInventarioPRECOCUSTO.AsFloat;
              VL_ITEM := qrInventarioVL_ITEM.AsFloat;
              IND_PROP := piInformante;
              COD_PART := '';
              TXT_COMPL := '';
              COD_CTA := '1.01.03.01.01';
            end;
            qrInventario.Next;
            Application.ProcessMessages;
            FPrincipal.LbMensagem.Caption := 'Informando inventário';
          end;
        end;
      end;
    end;

    begin
      ACBrSPEDFiscal1.WriteBloco_H;
      AtualizaMemo;
    end;
  end;

end;

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  CarregaConfiguracoes;
end;

procedure TDm.FiltraAnalitico(dti, dtf: tdateTime; sCodigo: string);
var
  sDataI, sDataF: string;
begin
  sDataI := QuotedStr(FormatDateTime('mm/dd/yyyy', dti));
  sDataF := QuotedStr(FormatDateTime('mm/dd/yyyy', dtf));

  qrC190_Analitico.close;
  qrC190_Analitico.SQL.Clear;
  qrC190_Analitico.SQL.Add('');
  qrC190_Analitico.SQL.Add('  select');
  qrC190_Analitico.SQL.Add(' ' + QuotedStr('E') + ' AS TIPO,');
  qrC190_Analitico.SQL.Add('ent.cst, ent.CFOP,');
  qrC190_Analitico.SQL.Add('ent.ICMS_ALIQUOTA,');
  qrC190_Analitico.SQL.Add('sum(ent.ICMS_BASE) as VL_BC_ICMS,');
  qrC190_Analitico.SQL.Add('sum(ent.ICMS_VALOR) as VL_ICMS,');
  qrC190_Analitico.SQL.Add('sum(ent.SUB_BASE) as VL_BC_ICMS_ST,');
  qrC190_Analitico.SQL.Add('sum(ent.SUB_VALOR) as VL_ICMS_ST,');
  qrC190_Analitico.SQL.Add('sum(ent.ICMS_REDUCAO) as VL_RED_BC,');
  qrC190_Analitico.SQL.Add('sum(ent.IPI_VALOR) as VL_IPI');
  qrC190_Analitico.SQL.Add('FROM C000088 ent');
  qrC190_Analitico.SQL.Add
    ('WHERE (select DATA_EMISSAO from c000087 where CODIGO = ent.CODNOTA) >= ' +
    sDataI + ' and');
  qrC190_Analitico.SQL.Add
    ('(select DATA_EMISSAO from c000087 where CODIGO = ent.CODNOTA)  <= ' +
    sDataF + ' ');
  qrC190_Analitico.SQL.Add('and ent.CODNOTA = ' + QuotedStr(sCodigo));
  qrC190_Analitico.SQL.Add
    ('group by TIPO, ent.cst, ent.CFOP, ent.ICMS_ALIQUOTA');
  qrC190_Analitico.SQL.Add('');
  qrC190_Analitico.SQL.Add('UNION');
  qrC190_Analitico.SQL.Add('');
  qrC190_Analitico.SQL.Add('select ' + QuotedStr('S') + ' AS TIPO,');
  qrC190_Analitico.SQL.Add('sai.CST,');
  qrC190_Analitico.SQL.Add('sai.CFOP,');
  qrC190_Analitico.SQL.Add('sai.ICMS,');
  qrC190_Analitico.SQL.Add('sum(sai.BASE_CALCULO) as VL_BC_ICMS,');
  qrC190_Analitico.SQL.Add('sum(sai.VALOR_ICMS) as VL_ICMS,');
  qrC190_Analitico.SQL.Add('sum(sai.BASE_SUB) as VL_BC_ICMS_ST,');
  qrC190_Analitico.SQL.Add('sum(sai.ICMS_SUB) as VL_ICMS_ST,');
  qrC190_Analitico.SQL.Add('sum(sai.ICMS_REDUZIDO) as VL_RED_BC,');
  qrC190_Analitico.SQL.Add('sum(sai.VALOR_IPI) as VL_IPI');
  qrC190_Analitico.SQL.Add('FROM C000062 sai');
  qrC190_Analitico.SQL.Add
    ('WHERE (select DATA_SAIDA from c000061 where CODIGO = sai.CODNOTA) >= ' +
    sDataI + ' and');
  qrC190_Analitico.SQL.Add
    ('(select DATA_SAIDA from c000061 where CODIGO = sai.CODNOTA)  <= ' +
    sDataF + ' ');
  qrC190_Analitico.SQL.Add('and sai.codnota = ' + QuotedStr(sCodigo));
  qrC190_Analitico.SQL.Add('group by TIPO, sai.cst, sai.CFOP, sai.ICMS');
  qrC190_Analitico.Prepare;
  qrC190_Analitico.Open;

end;

procedure TDm.FiltraITensNota(sCodNota, sTipo: String);
begin
  qrItensNotas.close;
  qrItensNotas.SQL.Clear;
  qrItensNotas.SQL.Add('');

  qrItensNotas.SQL.Add
    ('select TIPO, NUM_ITEM, COD_ITEM, CBARRA, QTD, UNID, VL_ITEM, VL_DESC,');
  qrItensNotas.SQL.Add
    ('CST_ICMS, CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST,');
  qrItensNotas.SQL.Add('ALIQ_ST, VL_ICMS_ST, CST_IPI, VL_BC_IPI, ALIQ_IPI,');
  qrItensNotas.SQL.Add('VL_IPI from');
  qrItensNotas.SQL.Add('(');
  qrItensNotas.SQL.Add('select ' + QuotedStr('E') +
    ' AS TIPO, ITEM AS NUM_ITEM, CODPRODUTO AS COD_ITEM,');
  qrItensNotas.SQL.Add
    ('(select CODBARRA from c000025 where codigo = C000088.CODPRODUTO) AS CBARRA,');
  qrItensNotas.SQL.Add
    (' QTD_fracionada AS QTD, UN_COMPRA AS UNID, SUBTOTAL AS VL_ITEM, DESCONTO AS VL_DESC,');
  qrItensNotas.SQL.Add
    ('CST AS CST_ICMS, CFOP, ICMS_BASE AS VL_BC_ICMS, ICMS_ALIQUOTA AS ALIQ_ICMS, ICMS_VALOR AS VL_ICMS, SUB_BASE AS VL_BC_ICMS_ST,');
  qrItensNotas.SQL.Add
    (' ''0'' AS ALIQ_ST, SUB_VALOR AS VL_ICMS_ST, IPI_TIPO AS CST_IPI,  ''0''  AS VL_BC_IPI, IPI_ALIQUOTA AS ALIQ_IPI,');
  qrItensNotas.SQL.Add('IPI_VALOR AS VL_IPI FROM C000088');
  qrItensNotas.SQL.Add('WHERE CODNOTA = ' + QuotedStr(sCodNota));
  qrItensNotas.SQL.Add('');
  qrItensNotas.SQL.Add('UNION');
  qrItensNotas.SQL.Add('');
  qrItensNotas.SQL.Add('select ' + QuotedStr('S') +
    ' AS TIPO, ITEM AS NUM_ITEM, CODPRODUTO AS COD_ITEM,');
  qrItensNotas.SQL.Add
    ('(select CODBARRA from c000025 where codigo = C000062.CODPRODUTO) AS CBARRA,');
  qrItensNotas.SQL.Add('QTDE AS QTD,');
  qrItensNotas.SQL.Add
    ('(SELECT UNIDADE FROM C000025 WHERE CODIGO = C000062.CODPRODUTO) AS UNID,');
  qrItensNotas.SQL.Add('UNITARIO AS VL_ITEM, DESCONTO AS VL_DESC,');
  qrItensNotas.SQL.Add
    ('CST AS CST_ICMS, CFOP, BASE_CALCULO AS VL_BC_ICMS, ICMS AS ALIQ_ICMS, VALOR_ICMS AS VL_ICMS, BASE_SUB AS VL_BC_ICMS_ST,');
  qrItensNotas.SQL.Add
    (' ''0''  AS ALIQ_ST, ICMS_SUB AS VL_ICMS_ST, '''''''' AS CST_IPI, '''''''' AS VL_BC_IPI, IPI AS ALIQ_IPI,');
  qrItensNotas.SQL.Add('VALOR_IPI AS VL_IPI FROM C000062');
  qrItensNotas.SQL.Add('WHERE CODNOTA = ' + QuotedStr(sCodNota));

  qrItensNotas.SQL.Add(')');

  qrItensNotas.SQL.Add('WHERE TIPO = ' + QuotedStr(sTipo));
  qrItensNotas.SQL.Add('');

  qrItensNotas.Prepare;
  qrItensNotas.Open;

end;

procedure TDm.Filtrar_Notas_Entrada_Saida(dtINI, dtFIM: tdateTime);
begin
  qrNotasEntradaSaida.close;
  qrNotasEntradaSaida.SQL.Clear;
  qrNotasEntradaSaida.SQL.Add
    ('SELECT TIPO, STATUS, CODIGO, NUMERO, CODFORNECEDOR, CODCLIENTE, MODELO, SERIE, CFOP, DATA_EMISSAO, CHAVE, VALOR_NOTA, DESCONTO, TOTAL_PRODUTOS, FRETE_CONTA, FRETE, SEGURO, OUTRAS, BASE_ICMS, VALOR_ICMS, BASE_SUB, VALOR_SUB, IPI, PAGAMENTO   FROM');
  qrNotasEntradaSaida.SQL.Add
    ('( SELECT ''E'' AS TIPO, ''6'' AS STATUS, CODIGO, NUMERO, CODFORNECEDOR, '''' AS CODCLIENTE, MODELO, SERIE, CFOP, DATA_EMISSAO, CHAVE, TOTAL_NOTA AS VALOR_NOTA, DESCONTO, TOTAL_PRODUTOS, TRANSP_FRETE AS FRETE_CONTA, FRETE, SEGURO, OUTRAS, BASE_ICMS, ');
  qrNotasEntradaSaida.SQL.Add
    (' VALOR_ICMS, BASE_SUB, VALOR_SUB, IPI, OPERACAO AS PAGAMENTO  FROM C000087');

  if FPrincipal.RadioDataInfo.ItemIndex = 0 then
    qrNotasEntradaSaida.SQL.Add
      ('   WHERE DATA_EMISSAO >= :DATAi AND DATA_EMISSAO <= :DATAf')
  else
    qrNotasEntradaSaida.SQL.Add
      ('   WHERE DATA_LANCAMENTO >= :DATAi AND DATA_LANCAMENTO <= :DATAf');

  qrNotasEntradaSaida.SQL.Add('UNION');
  qrNotasEntradaSaida.SQL.Add
    (' SELECT ''S'' AS TIPO,NFE_SITUACAO AS STATUS, CODIGO, NUMERO, '''' AS CODFORNECEDOR, CODCLIENTE, MODELO_NF AS MODELO,');
  qrNotasEntradaSaida.SQL.Add
    (' SERIE_NF AS SERIE, CFOP, DATA_SAIDA AS DATA_EMISSAO, CHAVE, TOTAL_NOTA AS VALOR_NOTA, DESCONTO, ');
  qrNotasEntradaSaida.SQL.Add
    (' VALOR_PRODUTOS AS TOTAL_PRODUTOS, FRETE_CONTA, FRETE, SEGURO, OUTRAS_DESPESAS AS OUTRAS, BASE_CALCULO AS BASE_ICMS, VALOR_ICMS, BASE_SUB, ICMS_SUB AS VALOR_SUB, VALOR_TOTAL_IPI AS IPI, ''V'' AS PAGAMENTO  FROM C000061');
  qrNotasEntradaSaida.SQL.Add
    ('   WHERE DATA_SAIDA >= :DATAi AND DATA_SAIDA <= :DATAf )');
  qrNotasEntradaSaida.Prepare;

  qrNotasEntradaSaida.Params.ParamByName('DATAi').Value :=
    StrToDate(DateToStr(dtINI));
  qrNotasEntradaSaida.Params.ParamByName('DATAf').Value :=
    StrToDate(DateToStr(dtFIM));
  qrNotasEntradaSaida.Open;
end;

procedure TDm.Insere_UnidadesUsados(sUN: string);
begin
  qrUnidadesUsadas.Append;
  qrUnidadesUsadasUNIDADE.Value := sUN;
  qrUnidadesUsadas.Post;
end;

procedure TDm.Insere_Usados(sCodItem: string);
begin

  if not qrProdutosUsados.Locate('COD_ITEM', sCodItem) then
  begin
    qrProdutosUsados.Append;
    qrProdutosUsadosCOD_ITEM.Value := sCodItem;
    qrProdutosUsados.Post;
  end;

end;

procedure TDm.Limpar_Sobras(DT_INI, DT_FIM: TDate);
var
  I: Integer;
begin
  I := 0;
  qrProdutos.close;
  qrProdutos.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
  qrProdutos.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
  qrProdutos.Open;
  qrProdutos.First;

  qrCMD.Open('select * from Sped_c470');

  qrItensMov.close;
  qrItensMov.Params.ParamByName('DATAi').Value := StrToDate(DateToStr(DT_INI));
  qrItensMov.Params.ParamByName('DATAf').Value := StrToDate(DateToStr(DT_FIM));
  qrItensMov.Open;
  qrItensMov.First;

  while not qrProdutos.eof do
  begin

    if (not qrItensMov.Locate('COD_ITEM', qrProdutosCOD_ITEM.AsString, [])) and
      (not qrCMD.Locate('COD_ITEM', qrProdutosCOD_ITEM.AsString, [])) and
      (not qrInventario.Locate('CODIGO', qrProdutosCOD_ITEM.AsString, [])) then
    begin
      qrProdutos.Delete;
      I := I + 1;
      FPrincipal.Caption := IntToStr(I);
    end
    else
      qrProdutos.Next;

    Application.ProcessMessages;

  end;

end;

procedure TDm.Verifica_Registros;
begin
  Verifica_Registros_0200;
end;

procedure TDm.Verifica_Registros_0200;
var
  I, e, r: Integer;
begin
  e := 0;
  r := 0;

  for I := 0 to ACBrSPEDFiscal1.Bloco_0.Registro0200Count - 1 do
  begin

    try
      if not qrProdutosUsados.Locate('COD_ITEM',
        ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0200.Items[I].COD_ITEM)
      then
      begin
        if Assigned(ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0200.Items[I])
        then
        begin
          ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0200.Items[I].Destroy;
          e := e + 1;
        end;
        Application.ProcessMessages;
      end;
    except
      r := r + 1;
    end;

  end;

  FPrincipal.Mensagem(FPrincipal.MemoSped, 'Verificados: ' +
    IntToStr(e), 12, 0);
  FPrincipal.Mensagem(FPrincipal.MemoSped, 'Nao Verificados: ' +
    IntToStr(r), 12, 0);

end;

end.
