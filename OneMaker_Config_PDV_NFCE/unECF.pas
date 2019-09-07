unit unECF;

interface

uses
  Windows, SysUtils, Controls, Messages, Forms, Dialogs, Classes,
  Shellapi;


type
  // Matrizes (Records)
  tipo_parametro = Record
    Nome : string;
    Conteudo : string;
    Tipo : integer;
  end;
  // Totalizadores Parciais (aliquotas) retornado do ECF
  TTotalizador = Record
    Nome : String[20];
    Valor: Real;
  end;
var
  (* Retorno do ECF *)
    IRetorno : Integer;
    BRetorno : Boolean;
    iACK, iST1, iST2 : Integer;
    Handle : THandle;
    ecfMSG : string;
    nporta : integer;
    sMsg : string;

    (* Arrays Diversos*)
  tbTotalizador : array[1..50] of TTotalizador;

(***************************** FUNCOES ****************************************)
// Retornos
function cECF_Analisa_Retorno(COD_ECF:Integer):string;
function cECF_Retorno_Impressora(COD_ECF:Integer):string;
// Inicializacao

function cECF_Abre(COD_ECF:Integer;Porta:string):string;
function cECF_Fecha(COD_ECF:Integer):string;
// Informacoes e Status
function cECF_Ligada(COD_ECF:Integer):string;
function cECF_Numero_Serie(COD_ECF:Integer):string;
function cECF_Numero_Caixa(COD_ECF:Integer):string;
function cECF_Grande_Total(cod_ECF:integer):string;
// Relatorios
function cECF_LeituraX(COD_ECF:Integer):string;
(******************************************************************************)

(************************** IMPRESSORAS IMPLEMENTADAS *************************
1  - Bematech - Todos os Modelos
2  - Daruma
3  - SWEDA???
4  - EPSON

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

(**************************        bematech           *************************)
// Retornos
function Bematech_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
// Informacoes e Status
function Bematech_FI_NumeroSerieMFD(NumeroSerie : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorCupomFiscalMFD(CuponsEmitidos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorRelatoriosGerenciaisMFD (Relatorios : String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorComprovantesCreditoMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRelatorioGerencialMFD(Relatorios : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaImpressoraLigada: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';
function Bematech_FI_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FormatoDadosMFD( ArquivoOrigem : String;ArquivoDestino  : String;TipoFormato : String; TipoDownload : String;ParametroInicial: String; ParametroFinal  : String; UsuarioECF : String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraGravacaoUsuarioSWBasicoMFAdicional( dataUsuario, dataSWBasico, MFAdicional:string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmwareMFD(VersaoFirmware : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducaoMFD(DadosReducao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamentoMFD(FormasPagamento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendaBruta( Valor:string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MapaResumoMFD:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumoMFD';
function Bematech_FI_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaReducaoZAutomatica( Flag:SHORT ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimento( Data: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
// Ato Cotepe
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'BEMAFI32.DLL';
function BemaGeraRegistrosTipoE( cArqMFD: string; cArqTXT: string; cDataInicial: string; cDataFinal: string; cRazao: string; cEndereco: string; cPAR1: string; cCMD: string; cPAR2: string; cPAR3: string; cPAR4: string; cPAR5: string; cPAR6: string; cPAR7: string; cPAR8: string; cPAR9: string; cPAR10: string; cPAR11: string; cPAR12: string; cPAR13: string; cPAR14: string ): Integer; StdCall; External 'BemaMFD2.dll';
function Bematech_FI_RetornoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
// Relatorios Gerenciais
function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_LeituraMemoriaFiscalDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_GeraRegistrosCAT52MFDEx(Arquivo: String; Data: String;cArqDestino:string): Integer; StdCall; External 'BEMAFI32.DLL';
// Cupom
function Bematech_FI_AbreCupomMFD(CGC: string; Nome: string; Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupomResumido( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
// Operações Não Fiscal
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria( Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL';

// Configuração / Programação
function Bematech_FI_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef: String) : Integer; StdCall; External 'BEMAFI32.DLL';


// Outros
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta';
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

(**************************        daruma             *************************)
//Inicializacao
function Daruma_FI_AbrePortaSerial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaPortaSerial: Integer; StdCall; External 'Daruma32.dll'
// Retornos
function Daruma_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaErroExtendido( ErroExtendido: String ): Integer; StdCall; External 'Daruma32.dll';
// Informacoes e Status
function Daruma_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaImpressoraLigada: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIMFD_DownloadDaMFD(CoInicial: String; CoFinal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Analitico';
function Daruma_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Mestre';
function Daruma_FI_VerificaFormasPagamentoEx( FormasEx: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_RetornaInformacao( Indice: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LerAliquotasComIndice(AliquotasComIndice: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_SaldoAPagar( SaldoAPagar: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_RetornaValor( Produto: String; Chave: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaHorarioVerao( HoraioVerao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataMovimento( Data: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_StatusCupomFiscal( StatusCupomFiscal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'Daruma32.dll';
// Relatorios Gerenciais
function Daruma_FI_LeituraX: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_MFD_LeituraMFCompleta( Valor: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_MapaResumo: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_MapaResumo';
// Cupom
function Daruma_FI_AbreCupom( CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; Valor_Unitario: String; Quantidade: String; Valor_do_Desconto: String; Valor_do_Acrescimo: String; Indice_Departamento: String; Unidade_Medida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaItemGenerico( Numero_Item: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaCupom: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IniciaFechamentoCupom( Acrescimo_ou_Desconto: String; Tipo_do_Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamento( Descricao_da_Forma_Pagamento: String; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_TerminaFechamentoCupom( Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IdentificaConsumidor( Nome_do_Consumidor: String; Endereco: String; CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaCupomResumido( Descricao_da_Forma_de_Pagamento: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
// Operações Não Fiscal
function Daruma_FI_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento: String; Valor_Pago: String; Numero_do_Cupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UsaComprovanteNaoFiscalVinculado( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Sangria( Valor_da_Sangria: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Suprimento( Valor_do_Suprimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RecebimentoNaoFiscal( Indice_do_Totalizador: String; Valor_do_Recebimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RelatorioGerencial( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';

// Configuração / Programação
function Daruma_FI_ProgramaAliquota( Valor_Aliquota: String; Tipo_Aliquota: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaHorarioVerao: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice_do_Totalizador: Integer; Nome_do_Totalizador: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_AlteraRegistry( Chave: String; ValorChave: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ZAutomatica( ZAutomatica: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgRedZAutomatico( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaFormasPagamento( Descricao_das_Formas_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';

// Outros
function Daruma_FI_AcionaGaveta: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_VerificaEstadoGaveta( Var Estado_Gaveta: Integer ): Integer; StdCall; External 'Daruma32.dll';
// RSA
function Daruma_RSA_CarregaChavePrivada_Arquivo(Arquivo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_RetornaChavePublica(N: String; E: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_CodificaInformacao(Texto: String; Codigo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_DecodificaInformacao(Codigo: String; Texto: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_CodificaInformacao_Hexa(Texto: String; Codigo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_DecodificaInformacao_Hexa(Codigo: String; Texto: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_CriarAssinatura(caminhoDoArquivo: string ; sMD5: String; sAssinaturaEletronica: string): Integer; StdCall; External 'Daruma32.dll';

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

(**************************       SWEDA               *************************)
// Inicializacao
function ECF_AbrePortaSerial: Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaPortaSerial: Integer; StdCall; External 'CONVECF.dll';
// Retornos
function ECF_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'CONVECF.DLL';
// Informacoes e Status
function ECF_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSerieMFD(NumeroSerie:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_SubTotal( SubTotal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaImpressoraLigada: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_VerificaImpressoraLigada';
function ECF_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FormatoDadosMFD( ArquivoOrigem : String;ArquivoDestino  : String;TipoFormato : String; TipoDownload : String;ParametroInicial: String; ParametroFinal  : String; UsuarioECF : String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RelatorioTipo60Analitico: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_RelatorioTipo60Analitico';
function ECF_RelatorioTipo60Mestre: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_RelatorioTipo60Mestre';
function ECF_DataMovimento(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_RetornoAliquotas(Aliquotas:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VersaoFirmwareMFD(Versao:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaFormasPagamentoEx(FormasPag:string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DataHoraGravacaoUsuarioSWBasicoMFAdicional( dataUsuario, dataSWBasico, MFAdicional:string ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_GrandeTotal(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MapaResumoMFD:Integer;StdCall; External 'CONVECF.DLL';
function ECF_ContadorCupomFiscalMFD(Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorRelatoriosGerenciaisMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRelatorioGerencialMFD(Relats : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroOperacoesNaoFiscais(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorComprovantesCreditoMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MarcaModeloTipoImpressoraMFD(Marca:String; Modelo:String; Tipo:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Registry_RetornaValor( Produto: String; Chave: String; Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaHorarioVerao( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaTotalizadoresNaoFiscaisEx(Nomes:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_StatusCupomFiscal( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'CONVECF.DLL';
// Ato copete 17/04
function ECF_ReproduzirMemoriaFiscalMFD(tipo,FxaIni,FxaFim,PatTxt,PatBin:STRING): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DownloadMF( nome: String ): Integer; StdCall; External 'CONVECF.dll';

// Informacoes da ultima reducao z
function ECF_DadosUltimaReducaoMFD(Texto:PChar): Integer;StdCall; External 'CONVECF.DLL';
function ECF_DataHoraReducao(Data:String; Hora:String): Integer;StdCall; External 'CONVECF.DLL';

// Relatorios Gerenciais
function ECF_LeituraX: Integer; StdCall; External 'CONVECF.DLL' ;
function ECF_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'CONVECF.DLL';

function ECF_LeituraMemoriaFiscalReducaoMFD( cCRZi: String; cCRZf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalDataMFD( cDatai: String; cDataf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialDataMFD( cDatai: String; cDataf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialReducaoMFD( cCRZi: String; cCRZf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'CONVECF.DLL';
// Cupom
function ECF_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AbreCupomMFD( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; Acrescimo: String; Desconto: String; IndiceDepto: String; UM:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaCupom: Integer; StdCall; External 'CONVECF.DLL';
function ECF_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaCupomResumido( FormaPagamento: String; Mensagem: String): Integer; StdCall; External 'CONVECF.dll';
// Operações Não Fiscal
function ECF_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'CONVECF.DLL';
function ECF_Sangria( Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaRelatorioGerencial: Integer; StdCall; External 'CONVECF.DLL';

// Configuração / Programação
function ECF_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ProgramaHorarioVerao: Integer; StdCall; External 'CONVECF.DLL';
function ECF_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ProgramaFormasPagamento(formas:pchar): Integer; StdCall; External 'CONVECF.DLL';
// Outros
function ECF_AcionaGaveta: Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ZAUTO(flag: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LigaDesligaJanelas(papel:string;outros:string): Integer; StdCall; External 'CONVECF.DLL';

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

//=================================================================================================
// EPSON_Serial
//=================================================================================================
function EPSON_Serial_Abrir_Porta(dwVelocidade:Integer; wPorta:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_Fechar_Porta_CMD(dwVelocidade:Integer;wPorta:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_PortaAD(pszVelocidade:Pchar;pszPorta:Pchar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_PortaEx():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Fechar_Porta ():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Obter_Estado_Com():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Fiscal
//=================================================================================================
function EPSON_Fiscal_Abrir_Cupom(pszCNPJ:PChar; pszRazaoSocial:PChar; pszEndereco1:PChar; pszEndereco2:PChar; dwPosicao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Dados_Usuario(pszCGC:PChar; pszSocialReason:PChar; pszAddress1:PChar; pszAddress2:PChar; dwPosition:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Vender_Item(pszCodigo:PChar; pszDescricao:PChar; pszQuantidade:PChar; dwQuantCasasDecimais:Integer; pszUnidade:PChar; pszPrecoUnidade:PChar; dwPrecoCasasDecimais:Integer; pszAliquotas:PChar; dwLinhas:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Obter_SubTotal(pszSubTotal:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Pagamento(pszNumeroPagamento:PChar; pszValorPagamento:PChar; dwCasasDecimais:Integer; pszDescricao1:PChar; pszDescricao2:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Desconto_Acrescimo_Item(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Desconto_Acrescimo_Subtotal(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Cupom():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Item(pszNumeroItem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Ultimo_Item():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Acrescimo_Desconto_Subtotal(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Item_Parcial(pszNumeroItem:PChar; pszQuantidade:PChar; dwQuantCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Imprimir_Mensagem(pszLinhaTexto1:PChar; pszLinhaTexto2:PChar; pszLinhaTexto3:PChar; pszLinhaTexto4:PChar; pszLinhaTexto5:PChar; pszLinhaTexto6:PChar; pszLinhaTexto7:PChar; pszLinhaTexto8:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Imprimir_MensagemEX(pszText:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Configurar_Codigo_Barras_Mensagem(dwLinha:Integer; dwTipo:Integer; dwAltura:Integer; dwLargura:Integer; dwPosicao:Integer; dwCaracter:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Fechar_CupomEx(pszTotalCupom:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Fechar_Cupom(bCortarPapel:Boolean; bAdicional:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Mensagem_Aplicacao(pszLinha01:PChar; pszLinha02:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_NaoFiscal
//=================================================================================================
function EPSON_NaoFiscal_Abrir_Comprovante(pszCNPJ:PChar; pszRazaoSocial:PChar; pszEndereco1:PChar; pszEndereco2:PChar; dwPosicao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Vender_Item(pszNumeroOperacao:PChar; pszValorOperacao:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Obter_SubTotal(pszSubTotal:PChar):Integer;StdCall;External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Desconto_Acrescimo_Item(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall;External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Desconto_Acrescimo_Subtotal(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Pagamento(pszNumeroPagamento:PChar; pszValorPagamento:PChar; dwCasasDecimais:Integer; pszDescricao1:PChar; pszDescricao2:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Item(pszItem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Ultimo_Item():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Desconto_Acrescimo_Subtotal(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Comprovante():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_Comprovante(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Abrir_CCD(pszNumeroPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszParcelas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Abrir_Relatorio_Gerencial(pszNumeroRelatorio:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_LinhaEX(pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_Linha(pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_15Linhas(pszLinha00:PChar;pszLinha01:PChar;pszLinha02:PChar;pszLinha03:PChar;pszLinha04:PChar;pszLinha05:PChar;pszLinha06:PChar;pszLinha07:PChar;pszLinha08:PChar;pszLinha09:PChar;pszLinha10:PChar;pszLinha11:PChar;pszLinha12:PChar;pszLinha13:PChar;pszLinha014:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_CCD(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_Relatorio_Gerencial(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_CCD(pszNumeroPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszParcelas:PChar; pszNumeroCupom:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Pagamento(pszFormaPagamento:PChar; pszNovaFormaPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Nova_Parcela_CCD():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Nova_Via_CCD():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Reimprimir_CCD():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Sangria(pszValor:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fundo_Troco(pszValor:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_Codigo_Barras(dwTipo:Integer; dwAltura:Integer; dwLargura:Integer; dwPosicao:Integer; dwCaracter:Integer; pszCodigo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_RelatorioFiscal
//=================================================================================================
function EPSON_RelatorioFiscal_LeituraX():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_RZ(pszData:PChar; pszHora:PChar; dwHorarioVerao:Integer; pszCRZ:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_RZEx(dwHorarioVerao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Leitura_MF(pszInicio:PChar; pszFim:PChar; dwTipoImpressao:Integer; pszBuffer:PChar; pszArquivo:PChar; pdwTamanhoBuffer:PInteger; dwTamBuffer:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Salvar_LeituraX(pszArquivo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Abrir_Dia():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Obter
//=================================================================================================
function EPSON_Obter_Dados_Usuario(pszDadosUsuario:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Aliquotas(pszTabelaAliquotas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Jornada(chOption:PChar; pszZnumber:PChar; pszData:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Pagamentos(pszTabelaPagamentos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_NaoFiscais(pszTabelaNaoFiscais:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Relatorios_Gerenciais(pszTabelaRelatoriosGerenciais:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Cancelado(pszTotalCancelado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Aliquotas(pszAliquotasTotal:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Bruto(pszVendaBruta:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Descontos(pszTotalDescontos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Troco(pszTotalTroco:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Acrescimos(pszTotalAcrescimos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Impressora(pszDadosImpressora:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Cliche_Usuario(pszDadosUsuario:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Data_Hora_Jornada(pszDataHora:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Numero_ECF_Loja(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Hora_Relogio(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Simbolo_Moeda(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Casas_Decimais(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Contadores(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Impressora(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_GT(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_RG(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_CCD(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_Vendas(pszLinhasImpressas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_Pagamentos(pszLinhasImpressas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Itens_Vendidos(pszItens:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Memoria_Fiscal(pszEstado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_MFD(pszEstado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Leituras_X_Impressas(pszLeituras:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Jornada(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Caracteres_Linha(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Operador(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Numero_Ultimo_Item(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Informacao_Item(pszNumeroItem:PChar; pszDadosItem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Cupom(pszEstado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Informacao_Ultimo_Documento(pszInfo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Corte_Papel(Var bHabilitado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Horario_Verao(Var bEstado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Venda_Bruta(pszBrutAmount:PChar; pszLastBrutAmount:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Mensagem_Erro(pszCodigoErro:PChar; pszMensagemErro:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_MF_MFD(pszInicio:PChar; pszFinal:PChar; dwTipoEntrada:Integer; dwEspelhos:Integer; dwAtoCotepe:Integer; dwSintegra:Integer; pszArquivoSaida:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Versao_DLL(pszVersao:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_JornadaEX(pszOption:Pchar;pszZnumber:PChar;pszData:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Arquivos_MF_MFD(pszInicio:PChar;pszFim:Pchar;dwTipoEntrada:Integer;dwEspelhos:Integer;dwAtoCOTEPE:Integer;dwSintegra:Integer;pszArquivoSaida:PChar;pszArquivoMF:PChar;pszArquivoMFD:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Separar_AtoCOTEPE(pszFileName:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Salvar_Binario_MF(pszArquivo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Arquivo_Binario_MFD(pszFileName:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Ultima_RZ(pszLastRZData:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Versao_SWBasicoEX(pszVersion:PChar; pszDate:PChar; pszTime:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Config
//=================================================================================================
function EPSON_Config_Aliquota(pszTaxa:PChar; bTipoISS:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Relatorio_Gerencial(pszReportDescription:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Forma_Pagamento(bVinculado:Boolean; pszNumeroMeio:PChar; pszDescricao:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Totalizador_NaoFiscal(pszDescricao:PChar; Var pdwNumeroTotalizador:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Corte_Papel(bHabilitado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Horario_Verao():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Espaco_Entre_Documentos(pszLinhas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Espaco_Entre_Linhas(pszEspacos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Logotipo(pszDados:PChar; dwTamDados:Integer; pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Habilita_Logotipo(bHabilita:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Operador(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_OperadorEX(pszDados:PChar; dwReport:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Serial_Impressora(pszVelocidade:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Dados_Sintegra(pszRazaoSocial:PChar; pszLogradouro:PChar; pszNumero:PChar; pszComplemento:PChar; pszBairro:PChar; pszMunicipio:PChar; pszCEP:PChar; pszUF:PChar; pszFax:PChar; pszFone:PChar; pszNomeContato:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Download_Segmentado_MFD(bHabilita:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Habilita_EAD(bHabilitado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Cheque
//=================================================================================================
function EPSON_Cheque_Configurar_Moeda(pszSingular:PChar; pszPlural:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Configurar_Parametros1(pszNumeroRegistro:PChar; pszValorX:PChar; pszValorY:PChar; pszDescricao1X:PChar; pszDescricao1Y:PChar; pszDescricao2X:PChar; pszDescricao2Y:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Configurar_Parametros2(pszNumeroRegistro:PChar; pszParaX:PChar; pszParaY:PChar; pszCidadeX:PChar; pszCidadeY:PChar; pszOffsetDia:PChar; pszOffsetMes:PChar; pszOffsetAno:PChar; pszAdicionalX:PChar; pszAdicionalY:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Imprimir(pszNumeroRegistro:PChar; pszValor:PChar; dwCasasDecimais:Integer; ByValpszPara:PChar; pszCidade:PChar; pszDados:PChar; pszTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_ImprimirEX(pszNumeroRegistro:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszPara:PChar; pszCidade:PChar; pszDados:PChar; pszTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Preparar_Endosso():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Endosso_Estacao_Cheque(pszToX:PChar;pszToY:PChar;dwHorizontal:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Imprimir_Endosso(pszLinhaTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Ejetar_Endosso():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Cancelar_Impressao():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Endosso_Estacao_ChequeEX(pszToX:PChar;pszToY:PChar;dwHorizontal:Integer;pszText:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Ler_MICR(pszMICR:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Impressora
//=================================================================================================
function EPSON_Impressora_Abrir_Gaveta():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Impressora_Avancar_Papel(dwLines:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Impressora_Cortar_Papel():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Autenticar
//=================================================================================================
function EPSON_Autenticar_Imprimir(pszMensagem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Autenticar_Reimprimir():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Sys
//=================================================================================================
function EPSON_Sys_Informar_Handle_Janela(HWNDHandle:THandle):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Atualizar_Janela():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Aguardar_Arquivo(pszArquivo:PChar; dwTimeout:Integer; bBloqueiaEntradas:Boolean; bSincrono:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Bloquear_Entradas(bBloqueiaEntradas:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Log(pszPath:PChar; dwAction:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Display
//=================================================================================================
function EPSON_Display_Enviar_Texto(pszTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Set_Cursor(dwAcao:Integer; dwColuna:Integer; dwLinha:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Apagar_Texto(dwLinha:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Configurar(dwBrilho:Integer; dwLampejo:Integer; dwRolagem:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Inicializar(dwAcao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// Funções diversas
function FormatarValor(peValor: Currency; piDecimais: Integer; pbRemovePonto: Boolean = True): String;
function EPSON_ECFLigada: String;
function EPSON_NumeroSerie: String;
function EPSON_NumeroCaixa: String;

(**************************        ELGIN           *************************)
// Retornos
function Elgin_RetornoImpressora( var i:integer; ErrorMsg:string):integer;StdCall; External 'Elgin.DLL';
// Estado da Impressora
function Elgin_VerificaEstadoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2:Integer; Var ST3: Integer ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ):Integer; StdCall; External 'Elgin.DLL';
// Abre porta Serial
function Elgin_AbrePortaSerial: Integer; StdCall; External 'Elgin.DLL';
// Verifica se a impressora está ligada
function Elgin_VerificaImpressoraLigada: Integer; StdCall; External 'Elgin.DLL';
// Status da Impressora
function Elgin_NumeroSerieMemoriaMFD(NumeroSerieMFD : string): Integer; StdCall; External 'Elgin.DLL';
function Elgin_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'Elgin.DLL';
// Relatórios Gerenciais
function Elgin_LeituraX: Integer; StdCall; External 'Elgin.DLL' ;
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

implementation

  uses funcoes, Constantes, Principal;


// -------------------------------------------------------------------------- //
function FormatarValor(peValor: Currency; piDecimais: Integer; pbRemovePonto: Boolean = True): String;
var
  I: Integer;
  sDecimais: String;

begin
  sDecimais := '';
  for I := 1 to piDecimais do
  begin
    sDecimais := sDecimais + '0';
  end;

  Result := FormatFloat('########0.' + sDecimais, peValor);

  if (sDecimais = '') or pbRemovePonto then
  begin
//    if Pos(DecimalSeparator, Result) > 0 then
//      Delete(Result, Pos(DecimalSeparator, Result), 1);
  end;
end;

// -------------------------------------------------------------------------- //
// Retorno de Comunicacao com ECF
function cECF_Analisa_Retorno(COD_ECF:Integer):string;
begin
  if COD_ECF = BEMATECH then
  begin
    Result := OK;
    if iRetorno =  0  THEN  Result := 'Erro de Comunicação!';
    If iRetorno = -1  THEN  Result := 'Erro de Execução na Função. Verifique!';
    if iRetorno = -2  THEN  Result := 'Parâmetro Inválido!';
    if iRetorno = -3  THEN  Result := 'Alíquota não programada!' ;
    If iRetorno = -4  THEN  Result := 'Arquivo BemaFI32.INI não encontrado. Verifique!';
    If iRetorno = -5  THEN  Result := 'Erro ao Abrir a Porta de Comunicação!';
    If iRetorno = -6  THEN  Result := 'Impressora Desligada ou Desconectada!';
    If iRetorno = -7  THEN  Result := 'Banco Não Cadastrado no Arquivo BemaFI32.ini!';
    If iRetorno = -8  THEN  Result := 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt!';
    if iRetorno = -18 THEN  Result := 'Não foi possível abrir arquivo INTPOS.001';
    if iRetorno = -19 THEN  Result := 'Parâmetro diferentes!';
    if iRetorno = -20 THEN  Result := 'Transação cancelada pelo Operador!';
    if iRetorno = -21 THEN  Result := 'A Transação não foi aprovada!';
    if iRetorno = -22 THEN  Result := 'Não foi possível terminal a Impressão!';
    if iRetorno = -23 THEN  Result := 'Não foi possível terminal a Operação!';
    if iRetorno = -24 THEN  Result := 'Forma de pagamento não programada.';
    if iRetorno = -25 THEN  Result := 'Totalizador não fiscal não programado.';
    if iRetorno = -26 THEN  Result := 'Transação já Efetuada!';
    if iRetorno = -28 THEN  Result := 'Não há Informações para serem Impressas!';
  end
  else
  if COD_ECF = DARUMA then
  begin
    if iRetorno = 1 then
      Result := OK
    else
      Result := 'Erro de Comunicação!';
  end
  else
  if COD_ECF = SWEDA then
  begin
    Result := OK;
    if iRetorno =  0  THEN  Result := 'Erro de Comunicação!';
    If iRetorno = -1  THEN  Result := 'Erro de Execução na Função. Verifique!';
    if iRetorno = -2  THEN  Result := 'Parâmetro Inválido!';
    if iRetorno = -3  THEN  Result := 'Alíquota não programada!' ;
    If iRetorno = -4  THEN  Result := 'Arquivo INI não encontrado. Verifique!';
    If iRetorno = -5  THEN  Result := 'Erro ao Abrir a Porta de Comunicação!';
    If iRetorno = -6  THEN  Result := 'Impressora Desligada ou Desconectada!';
    If iRetorno = -7  THEN  Result := 'Banco Não Cadastrado no Arquivo BemaFI32.ini!';
    If iRetorno = -8  THEN  Result := 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt!';
    if iRetorno = -18 THEN  Result := 'Não foi possível abrir arquivo INTPOS.001';
    if iRetorno = -19 THEN  Result := 'Parâmetro diferentes!';
    if iRetorno = -20 THEN  Result := 'Transação cancelada pelo Operador!';
    if iRetorno = -21 THEN  Result := 'A Transação não foi aprovada!';
    if iRetorno = -22 THEN  Result := 'Não foi possível terminal a Impressão!';
    if iRetorno = -23 THEN  Result := 'Não foi possível terminal a Operação!';
    if iRetorno = -24 THEN  Result := 'Forma de pagamento não programada.';
    if iRetorno = -25 THEN  Result := 'Totalizador não fiscal não programado.';
    if iRetorno = -26 THEN  Result := 'Transação já Efetuada!';
    if iRetorno = -28 THEN  Result := 'Não há Informações para serem Impressas!';
  end
  else
  if COD_ECF = EPSON then
  begin
    if iRetorno = 0 then
      Result := OK
    else
      Result := cECF_Retorno_Impressora(COD_ECF);
  end
  else
  if COD_ECF = ELGIN then
  begin
    Result := OK;
    if iRetorno =  0  THEN  Result := 'Erro de Comunicação!';
    If iRetorno = -1  THEN  Result := 'Erro de Execução na Função. Verifique!';
    if iRetorno = -2  THEN  Result := 'Parâmetro Inválido!';
    if iRetorno = -3  THEN  Result := 'Alíquota não programada!' ;
    If iRetorno = -4  THEN  Result := 'Arquivo INI não encontrado. Verifique!';
    If iRetorno = -5  THEN  Result := 'Erro ao Abrir a Porta de Comunicação!';
    If iRetorno = -6  THEN  Result := 'Impressora Desligada ou Desconectada!';
    If iRetorno = -7  THEN  Result := 'Banco Não Cadastrado no Arquivo BemaFI32.ini!';
    If iRetorno = -8  THEN  Result := 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt!';
    if iRetorno = -18 THEN  Result := 'Não foi possível abrir arquivo INTPOS.001';
    if iRetorno = -19 THEN  Result := 'Parâmetro diferentes!';
    if iRetorno = -20 THEN  Result := 'Transação cancelada pelo Operador!';
    if iRetorno = -21 THEN  Result := 'A Transação não foi aprovada!';
    if iRetorno = -22 THEN  Result := 'Não foi possível terminal a Impressão!';
    if iRetorno = -23 THEN  Result := 'Não foi possível terminal a Operação!';
    if iRetorno = -24 THEN  Result := 'Forma de pagamento não programada.';
    if iRetorno = -25 THEN  Result := 'Totalizador não fiscal não programado.';
    if iRetorno = -26 THEN  Result := 'Transação já Efetuada!';
    if iRetorno = -28 THEN  Result := 'Não há Informações para serem Impressas!';
  end;
{  else
  if COD_ECF = 6 then
  begin
    if iRetorno <  0 then
      Result := 'Erro de Comunicação!'
    else
      Result := OK;
  end}

end;


// -------------------------------------------------------------------------- //
// Retorno de tratamento do comando
function cECF_Retorno_Impressora(COD_ECF:Integer):String;
var
  Mensagem : string;
  sErro : string;
  ST1err, ST1field,ST2, ST3, ST4, ST5, Temp: String;
  iST3, iST4, iST5, iConta: Integer;
  flagB15, flagB14, flagB12, flagB11, flagB10, flagB09, flagB07:Boolean;
  sMensagemErro: String;
  iPos: Integer;

begin
  if COD_ECF = BEMATECH then
  begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := Bematech_FI_RetornoImpressora(iACK,iST1,iST2);
    Mensagem := '';
    If iACK = 21 Then  Result := 'A Impressora retornou NAK. O programa será abortado!';
    If iACK = 6  then
    begin
      // Verifica ST1
      IF iST1 >= 128 Then begin iST1 := iST1 - 128; Mensagem := Mensagem+' '+ 'Fim do Papel!'end;
      IF iST1 >= 64  Then begin iST1 := iST1 - 64;  end;
      IF iST1 >= 32  Then begin iST1 := iST1 - 32;  Mensagem := Mensagem+' '+ 'Erro no relógio!'end;
      IF iST1 >= 16  Then begin iST1 := iST1 - 16;  Mensagem := Mensagem+' '+ 'Impressora em ERRO!'end;
      IF iST1 >= 8   Then begin iST1 := iST1 - 8;   Mensagem := Mensagem+' '+ 'CMD não iniciado com ESC!'end;
      IF iST1 >= 4   Then begin iST1 := iST1 - 4;   Mensagem := Mensagem+' '+ 'Comando Inexistente!'end;
      IF iST1 >= 2   Then begin iST1 := iST1 - 2;   Mensagem := Mensagem+' '+ 'Cupom Aberto' end;
      IF iST1 >= 1   Then begin iST1 := iST1 - 1;   Mensagem := Mensagem+' '+ 'Nº de Parâmetros Inválidos!'end;

      // Verifica ST2
      IF iST2 >= 128 Then begin iST2 := iST2 - 128; Mensagem := Mensagem+' '+ 'Tipo de Parâmetro Inválido!'end;
      IF iST2 >= 64  Then begin iST2 := iST2 - 64;  Mensagem := Mensagem+' '+ 'Memória Fiscal Lotada.'end;
      IF iST2 >= 32  Then begin iST2 := iST2 - 32;  Mensagem := Mensagem+' '+ 'CMOS não Volátil!'end;
      IF iST2 >= 16  Then begin iST2 := iST2 - 16;  Mensagem := Mensagem+' '+ 'Alíquota Não Programada.'end;
      IF iST2 >= 8   Then begin iST2 := iST2 - 8;   Mensagem := Mensagem+' '+ 'Alíquotas lotadas.'end;
      IF iST2 >= 4   Then begin iST2 := iST2 - 4;   Mensagem := Mensagem+' '+ 'Cancelamento não Permitido.'end;
      IF iST2 >= 2   Then begin iST2 := iST2 - 2;   Mensagem := Mensagem+' '+ 'CGC/IE não Programados.'end;
      IF iST2 >= 1   Then begin iST2 := iST2 - 1;   Mensagem := Mensagem+' '+ 'Comando não Executado.'end;
    end;
    if Mensagem = '' then
      Result := OK
    else
      Result := Mensagem;
  end
  else
  if COD_ECF = DARUMA then
  begin
    iACK := 0; iST1 := 0; iST2 := 0;
    IRetorno := Daruma_FI_RetornoImpressora(iACK,iST1,iST2);
    SetLength(sErro,4);
    IRetorno := Daruma_FI_RetornaErroExtendido(sErro);

    sErro := TrimLeft(TrimRight(serro));

    Mensagem := '';
    if sErro = '00' then Mensagem :=  'IF em modo Manutenção. Foi ligada sem o Jumper de Operação.';
    if sErro = '01' then Mensagem :=  'Método disponível somente em modo Manutenção.';
    if sErro = '02' then Mensagem :=  'Erro durante a gravação da Memória Fiscal.';
    if sErro = '03' then Mensagem :=  'Memória Fiscal esgotada.';
    if sErro = '04' then Mensagem :=  'Erro no relógio interno da IF.';
    if sErro = '05' then Mensagem :=  'Falha mecânica na IF.';
    if sErro = '06' then Mensagem :=  'Erro durante a leitura da Memória Fiscal.';
    if sErro = '07' then Mensagem :=  'Metodo permitido apenas em modo fiscal (IF sem jmper).';
    if sErro = '10' then Mensagem :=  'Documento sendo emitido.';
    if sErro = '11' then Mensagem :=  'Documento não foi aberto.';
    if sErro = '12' then Mensagem :=  'Não existe documento a cancelar.';
    if sErro = '13' then Mensagem :=  'Dígito não numérico não esperado, foi encontrado nos Parâmetros do Método.';
    if sErro = '14' then Mensagem :=  'Não há mais memória disponível para esta operação.';
    if sErro = '15' then Mensagem :=  'Item a cancelar não foi encontrado.';
    if sErro = '16' then Mensagem :=  'Erro de sintaxe no método.';
    if sErro = '17' then Mensagem :=  '"Estouro" de capacidade numérica (overflow).';
    if sErro = '18' then Mensagem :=  'Selecionado totalizador tributado com alíquota de imposto não definida.';
    if sErro = '19' then Mensagem :=  'Memória Fiscal vazia.';
    if sErro = '20' then Mensagem :=  'Não existem campos que requerem atualização.';
//   if sErro = '21' then Mensagem :=  'Detectado proximidade do final da bobina de papel';
    if sErro = '22' then Mensagem :=  'Cupom de Redução Z já foi emitido. IF inoperante até 0:00h do próximo dia.';
    if sErro = '23' then Mensagem :=  'Redução Z do período anterior ainda pendente. IF inoperante.';
    if sErro = '24' then Mensagem :=  'Valor de desconto ou acréscimo inválido (limitado a 100%).';
    if sErro = '25' then Mensagem :=  'Caráctere inválido foi encontrado nos Parâmetros do Métodos.';
    if sErro = '26' then Mensagem :=  'Médoto não pode ser executado.';
    if sErro = '27' then Mensagem :=  'Nenhum periférico conectado a interface auxiliar.';
    if sErro = '28' then Mensagem :=  'Foi encontrado um campo em zero.';
    if sErro = '29' then Mensagem :=  'Documento anterior não foi Cupom Fiscal. Não pode emitir Cupom Adicional.';
    if sErro = '30' then Mensagem :=  'Acumulador Não Fiscal selecionado não é válido ou não está disponível.';
    if sErro = '31' then Mensagem :=  'Não pode autenticar. Excedeu 4 repetições ou não é permitida nesta fase.';
    if sErro = '32' then Mensagem :=  'Cupom adicional inibido por configuração.';
    if sErro = '35' then Mensagem :=  'Relógio Interno Inoperante.';
    if sErro = '36' then Mensagem :=  'Versão do firmware gravada na Memória Fiscal não é a esperada.';
    if sErro = '37' then Mensagem :=  'Alíquota de imposto informada já está carregada na memória.';
    if sErro = '38' then Mensagem :=  'Forma de pagamento selecionada não é válida.';
    if sErro = '39' then Mensagem :=  'Erro na seqüência de fechamento do Cupom Fiscal.';
    if sErro = '40' then Mensagem :=  'IF em Jornada Fiscal. Alteração da configuração não é permitida.';
    if sErro = '41' then Mensagem :=  'Data inválida. Data fornecida é inferior à última gravada na Memória Fiscal.';
    if sErro = '42' then Mensagem :=  'Leitura X inicial ainda não foi emitida.';
    if sErro = '43' then Mensagem :=  'Não pode emitir Comprovante Vinculado.';
    if sErro = '44' then Mensagem :=  'Cupom de Orçamento não permitido para este estabelecimento.';
    if sErro = '45' then Mensagem :=  'Campo obrigatório em branco.';
    if sErro = '48' then Mensagem :=  'Não pode estornar.';
    if sErro = '49' then Mensagem :=  'Forma de pagamento indicada não encontrada.';
    if sErro = '50' then Mensagem :=  'Fim da bobina de papel.';
    if sErro = '51' then Mensagem :=  'Nenhum usuário cadastrado na MF.';
    if sErro = '52' then Mensagem :=  'MF não instalada ou não inicializada.';
    if sErro = '56' then Mensagem :=  'Documento já aberto.';
    if sErro = '61' then Mensagem :=  'Queda de energia durante a emissão de Cupom Fiscal.';
    if sErro = '76' then Mensagem :=  'Desconto em ISS não permitido neste ECF (a programação deverá ser feita por meio de intervenção técnica e caso o Estado permita).';
    if sErro = '75' then Mensagem :=  'Operação com ISS não permitida (se a sua impressora for uma FS600 ou FS2100T, então será preciso ter uma inscrição municipal gravada em sua impressora para que seja possível programar/utilizar alíquota de serviço).';
    if sErro = '77' then Mensagem :=  'Acréscimo em IOF inibido.';
    if sErro = '80' then Mensagem :=  'Periférico na interface auxiliar não pode ser reconhecido.';
    if sErro = '81' then Mensagem :=  'Solicitado preenchimento de cheque de banco desconhecido.';
    if sErro = '82' then Mensagem :=  'Solicitado transmissão de mensagem nula pela interface auxiliar.';
    if sErro = '83' then Mensagem :=  'Extenso do cheque não cabe no espaço disponível.';
    if sErro = '84' then Mensagem :=  'Erro na comunicação com a interface auxiliar.';
    if sErro = '85' then Mensagem :=  'Erro no dígito verificador durante comunicação com a PertoCheck.';
    if sErro = '86' then Mensagem :=  'Falha na carga de geometria de folha de cheque.';
    if sErro = '87' then Mensagem :=  'Parâmetros do Método: invállido para o campo de data do cheque.';
    if sErro = '90' then Mensagem :=  'Sequência de validação de número de série inválida.';
    if sErro = '180' then Mensagem :=  'Mensagem do aplicativo não programada. (Esta mensagem não é opcional e sim uma exigência da legislação e deverá ser programada para que o ECF seja liberado para a emissão de documentos fiscais.';
    if sErro = '181' then Mensagem :=  'Não é possivel realizar Redução Z entre 00:00am e 02:00am (Meia Noite e Duas da Manhã) nesta versão de firmware da FS600 (está limitação existe nas versões 1.1 pra baixo.';
    if sErro = '999' then Mensagem :=  'Impressora Fiscal não responde. Verifique se está ligada ou o cabo está conectado corretamente.';

    if Mensagem = '' then
      Result := OK
    else
      Result := Mensagem;
  end
  else
  if COD_ECF = SWEDA then
  begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := ECF_RetornoImpressora(iACK,iST1,iST2);
    Mensagem := '';
    If iACK = 21 Then  Result := 'A Impressora retornou NAK. O programa será abortado!';
    If iACK = 6  then
    begin
      // Verifica ST1
      IF iST1 >= 128 Then begin iST1 := iST1 - 128; Mensagem := Mensagem+' '+ 'Fim do Papel!'end;
      IF iST1 >= 64  Then begin iST1 := iST1 - 64;  end;
      IF iST1 >= 32  Then begin iST1 := iST1 - 32;  Mensagem := Mensagem+' '+ 'Erro no relógio!'end;
      IF iST1 >= 16  Then begin iST1 := iST1 - 16;  Mensagem := Mensagem+' '+ 'Impressora em ERRO!'end;
      IF iST1 >= 8   Then begin iST1 := iST1 - 8;   Mensagem := Mensagem+' '+ 'CMD não iniciado com ESC!'end;
      IF iST1 >= 4   Then begin iST1 := iST1 - 4;   Mensagem := Mensagem+' '+ 'Comando Inexistente!'end;
      IF iST1 >= 2   Then begin iST1 := iST1 - 2;   Mensagem := Mensagem+' '+ 'Cupom Aberto'end;
      IF iST1 >= 1   Then begin iST1 := iST1 - 1;   Mensagem := Mensagem+' '+ 'Nº de Parâmetros Inválidos!'end;

      // Verifica ST2
      IF iST2 >= 128 Then begin iST2 := iST2 - 128; Mensagem := Mensagem+' '+ 'Tipo de Parâmetro Inválido!'end;
      IF iST2 >= 64  Then begin iST2 := iST2 - 64;  Mensagem := Mensagem+' '+ 'Memória Fiscal Lotada.'end;
      IF iST2 >= 32  Then begin iST2 := iST2 - 32;  Mensagem := Mensagem+' '+ 'CMOS não Volátil!'end;
      IF iST2 >= 16  Then begin iST2 := iST2 - 16;  Mensagem := Mensagem+' '+ 'Alíquota Não Programada.'end;
      IF iST2 >= 8   Then begin iST2 := iST2 - 8;   Mensagem := Mensagem+' '+ 'Alíquotas lotadas.'end;
      IF iST2 >= 4   Then begin iST2 := iST2 - 4;   Mensagem := Mensagem+' '+ 'Cancelamento não Permitido.'end;
      IF iST2 >= 2   Then begin iST2 := iST2 - 2;   Mensagem := Mensagem+' '+ 'CGC/IE não Programados.'end;
      IF iST2 >= 1   Then begin iST2 := iST2 - 1;   Mensagem := Mensagem+' '+ 'Comando não Executado.'end;
    end;
    if Mensagem = '' then
      Result := OK
    else
      Result := Mensagem;
  end
  else
  if COD_ECF = EPSON then
  begin
    Mensagem := '';
    Result := OK;

    For iConta := 1 To 2 Do
      ST1err := ST1err + ' ';

    For iConta := 1 To 2 Do
      ST1field := ST1field + ' ';

    For iConta := 1 To 4 Do
      ST2 := ST2 + ' ';

    For iConta := 1 To 4 Do
      ST3 := ST3 + ' ';

    For iConta := 1 To 4 Do
      ST4 := ST4 + ' ';

    For iConta := 1 To 4 Do
      ST5 := ST5 + ' ';

    For iConta := 1 To 20 Do
      Temp := Temp + ' ';

    iRetorno := EPSON_Obter_Estado_Impressora(PChar(Temp));

    If iRetorno <> 0 Then
      Result := ERRO
    else
    begin
      If iRetorno <> 0 Then
        Result := ERRO
      Else
        Result := OK;

      ST1err := Copy(Temp,1,2);
      ST1field := Copy(Temp,3,2);
      ST2 := Copy(Temp,5,4);
      ST3 := Copy(Temp,9,4);
      ST4 := Copy(Temp,13,4);
      ST5 := Copy(Temp,17,4);

      //==============================================================================
      //Parâmetros do último comando
      //==============================================================================
      Case StrToInt(ST1err) of
        0:  Mensagem := Mensagem + '';
        1:  Mensagem := Mensagem + 'Campo deve ser um ponteiro para string.';
        2:  Mensagem := Mensagem + 'String com data inválida.';
        3:  Mensagem := Mensagem + 'String com hora inválida.';
        4:  Mensagem := Mensagem + 'String não está vazia ou contém data inválida.';
        5:  Mensagem := Mensagem + 'String não está vazia ou contém hora inválida.';
        6:  Mensagem := Mensagem + 'String não pode ser vazia.';
      else
        // Mensagem := Mensagem + 'Erro não mapeado.';
      end;

      //==============================================================================
      //Estado da Comunicação
      //==============================================================================
      Case StrToInt('$' + ST2) of
        0:  Mensagem := Mensagem + '';
        1:  Mensagem := Mensagem + 'Porta já está aberta.';
        2:  Mensagem := Mensagem + 'Porta usada por outra aplicação.';
        4:  Mensagem := Mensagem + 'Número de porta inválido.';
        5:  Mensagem := Mensagem + 'Velocidade inválida.';
        16: Mensagem := Mensagem + 'String não está vazia ou contém hora inválida.';
      else
        Mensagem := Mensagem + 'Erro interno da biblioteca.';
      end;

      //==============================================================================
      //Estado da Impressora
      //==============================================================================
      flagB09 := false;
      flagB10 := false;
      iST3 := StrToInt('$' + ST3);
      //****************************************************************************
      //                       TRATAMENTO DO BIT 15                                *
      //****************************************************************************
      If (iST3 >= 32768) Then
        begin
          Mensagem := Mensagem + 'Impressora Desligada.';
          iST3 := iST3 - 32768;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 14                                *
      //****************************************************************************
      If (iST3 >= 16384) Then
        begin
          Mensagem := Mensagem + 'Erro de impressão.';
          iST3 := iST3 - 16384;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 13                                *
      //****************************************************************************
      If (iST3 >= 8192) Then
        begin
          Mensagem := Mensagem + 'Tampa superior aberta.';
          iST3 := iST3 - 8192;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 12                                *
      //****************************************************************************
      If (iST3 >= 4096) Then
        begin
          Mensagem := Mensagem + 'Gaveta Aberta.';
          iST3 := iST3 - 4096;
        end;

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 10 E 9                          *
      //****************************************************************************
      If (iST3 >= 1024) Then
        begin
          flagB10 := true;
          iST3 := iST3 - 1024;
        end;

      If (iST3 >= 512) Then
        begin
          flagB09 := true;
          iST3 := iST3 - 512;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 8                                 *
      //****************************************************************************
      If (iST3 >= 256) Then
        begin
          // Mensagem := Mensagem + 'Aguardando retirada do papel.';
          iST3 := iST3 - 256;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 7                                 *
      //****************************************************************************
      If (iST3 >= 128) Then
        begin
          Mensagem := Mensagem + 'Aguardando inserção do papel.';
          iST3 := iST3 - 128;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 6                                 *
      //****************************************************************************
      If (iST3 >= 64) Then
        begin
          // T4.Text := T4.Text + 'Estado do sensor inferior da estação de cheque = 1 - ';
          iST3 := iST3 - 64;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 5                                 *
      //****************************************************************************
      If (iST3 >= 32) Then
        begin
          // T4.Text := T4.Text + 'Estado do sensor superior da estação do cheque = 1 - ';
          iST3 := iST3 - 32;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 4                                 *
      //****************************************************************************
      If (iST3 >= 16) Then
        begin
          // T4.Text := T4.Text + 'Estado do sensor de autenticação = 1 - ';
          iST3 := iST3 - 16;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 3                                 *
      //****************************************************************************
      If (iST3 >= 8) Then
        begin
          Mensagem := Mensagem + 'Impressora sem papel.';
          iST3 := iST3 - 8;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 2                                 *
      //****************************************************************************
      If (iST3 >= 4) Then
        begin
          // T4.Text := T4.Text + 'Pouco papel - ';
          iST3 := iST3 - 4;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 1                                 *
      //****************************************************************************
      If (iST3 >= 2) Then
        begin
          Mensagem := Mensagem + 'Impressora sem papel.';
          iST3 := iST3 - 2;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 0                                 *
      //****************************************************************************
      If (iST3 >= 1) Then
        begin
          // T4.Text := T4.Text + 'Pouco papel - ';
        end;

      //==============================================================================
      //Estado fiscal
      //==============================================================================
      flagB15 := false;
      flagB14 := false;
      flagB11 := false;
      flagB10 := false;

      iST4 := StrToInt('$' + ST4);

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 15 E 14                         *
      //****************************************************************************
      If (iST4 >= 32768) Then
        begin
          flagB15 := true;
          iST4 := iST4 - 32768;
        end;

      If (iST4 >= 16384) Then
        begin
          flagB14 := true;
          iST4 := iST4 - 16384;
        end;

      {
      If ((flagB15 = True) And (flagB14 = True)) Then
        T5.Text := T5.Text + 'Modo Fiscalizado - '
      Else If ((flagB15 = True) And (flagB14 = False)) Then
        T5.Text := T5.Text + 'Modo manufatura (Não-Fiscalizado) - '
      Else If ((flagB15 = False) And (flagB14 = False)) Then
          T5.Text := T5.Text + 'Modo bloqueado - ';


      //****************************************************************************

      //****************************************************************************
      //                           TRATAMENTO DO BITS 12                           *
      //****************************************************************************
      If (iST4 >= 4096) Then
        begin
          T5.Text := T5.Text + 'Modo de Intervenção Técnica - ';
          iST4 := iST4 - 4096;
        END
      Else
        T5.Text := T5.Text + 'Modo de operação normal - ';
      //****************************************************************************
      }

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 11 E 10                         *
      //****************************************************************************
      If (iST4 >= 2048) Then
        begin
          flagB11 := true;
          iST4 := iST4 - 2048;
        end;

      If (iST4 >= 1024) Then
        begin
          flagB10 := true;
          iST4 := iST4 - 1024;
        end;

      If ((flagB11 = True) And (flagB10 = True)) Then
        Mensagem := Mensagem + 'Erro de leitura/escrita da Memória Fiscal.'
      Else If ((flagB11 = True) And (flagB10 = False)) Then
        Mensagem := Mensagem + 'Memória Fiscal cheia.'
      Else If ((flagB11 = False) And (flagB10 = True)) Then
        Mensagem := Mensagem + 'Memória Fiscal em esgotamento.';

      //****************************************************************************

      //****************************************************************************
      //                           TRATAMENTO DO BIT7                              *
      //****************************************************************************
      If (iST4 >= 128) Then
      begin
          // Mensagem := Mensagem + 'Período de vendas aberto.';
          iST4 := iST4 - 128;
      END
      ELSE
        Mensagem := Mensagem + 'Período de vendas fechado.';

      //****************************************************************************

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 3,2,1 E 0                       *
      //****************************************************************************
      {If iST4 = 9 Then
        Mensagem := Mensagem + 'Cheque ou autenticação (TMH6000 e TMU675).'
      Else If iST4 = 8 Then
        T5.Text := T5.Text + 'Comprovante Não-Fiscal - '
      Else If iST4 = 4 Then
        T5.Text := T5.Text + 'Relatório Gerencial - '
      Else If iST4 = 3 Then
        T5.Text := T5.Text + 'Estorno de Comprovante de Crédito ou Débito - '
      Else If iST4 = 2 Then
        T5.Text := T5.Text + 'Comprovante de Crédito ou Débito - '
      Else If iST4 = 1 Then
        T5.Text := T5.Text + 'Cupom Fiscal aberto - '
      Else If iST4 = 0 Then
        T5.Text := T5.Text + 'Documento fechado - '; }

      //****************************************************************************

      //==============================================================================
      //Estado de execução do último comando
      //==============================================================================
      ST5 := UpperCase(ST5);
      iST5 := StrToInt('$' + ST5);
      Case iST5 of
        $0000: Mensagem := Mensagem + 'Resultado sem erro.';
        $0001: Mensagem := Mensagem + 'Erro interno.';
        $0002: Mensagem := Mensagem + 'Erro de iniciação do equipamento.';
        $0003: Mensagem := Mensagem + 'Erro de processo interno.';
        $0101: Mensagem := Mensagem + 'Comando inválido para o estado atual.';
        $0102: Mensagem := Mensagem + 'Comando inválido para o documento atual.';
        $0106: Mensagem := Mensagem + 'Comando aceito apenas fora de intervenção.';
        $0107: Mensagem := Mensagem + 'Comando aceito apenas dentro de intervenção.';
        $0108: Mensagem := Mensagem + 'Comando inválido durante processo de scan.';
        $0109: Mensagem := Mensagem + 'Excesso de intervenções.';
        $0201: Mensagem := Mensagem + 'Comando com frame inválido.';
        $0202: Mensagem := Mensagem + 'Comando inválido.';
        $0203: Mensagem := Mensagem + 'Campos em excesso.';
        $0204: Mensagem := Mensagem + 'Campos em falta.';
        $0205: Mensagem := Mensagem + 'Campo não opcional.';
        $0206: Mensagem := Mensagem + 'Campo alfanumérico inválido.';
        $0207: Mensagem := Mensagem + 'Campo alfabético inválido.';
        $0208: Mensagem := Mensagem + 'Campo numérico inválido.';
        $0209: Mensagem := Mensagem + 'Campo binário inválido.';
        $020A: Mensagem := Mensagem + 'Campo imprimível inválido.';
        $020B: Mensagem := Mensagem + 'Campo hexadecimal inválido.';
        $020C: Mensagem := Mensagem + 'Campo data inválido.';
        $020D: Mensagem := Mensagem + 'Campo hora inválido.';
        $020E: Mensagem := Mensagem + 'Campo com atributos de impressão inválidos.';
        $020F: Mensagem := Mensagem + 'Campo booleano inválido.';
        $0210: Mensagem := Mensagem + 'Campo com tamanho inválido.';
        $0211: Mensagem := Mensagem + 'Extensão de comando inválida.';
        $0212: Mensagem := Mensagem + 'Código de barra não permitido.';
        $0213: Mensagem := Mensagem + 'Atributos de impressão não permitidos.';
        $0214: Mensagem := Mensagem + 'Atributos de impressão inválidos.';
        $0215: Mensagem := Mensagem + 'Código de barras incorretamente definido.';
        $0217: Mensagem := Mensagem + 'Comando invalido para a porta selecionada.';
        $0301: Mensagem := Mensagem + 'Erro de hardware.';
        $0302: Mensagem := Mensagem + 'Impressora não está pronta.';
        $0303: Mensagem := Mensagem + 'Erro de Impressão.';
        $0304: Mensagem := Mensagem + 'Falta de papel.';
        $0305: Mensagem := Mensagem + 'Pouco papel disponível.';
        $0306: Mensagem := Mensagem + 'Erro em carga ou expulsão do papel.';
        $0307: Mensagem := Mensagem + 'Característica não suportada pela impressora.';
        $0308: Mensagem := Mensagem + 'Erro de display.';
        $0309: Mensagem := Mensagem + 'Seqüência de scan inválida.';
        $300A: Mensagem := Mensagem + 'Número de área de recorte inválido.';
        $300B: Mensagem := Mensagem + 'Scanner não preparado.';
        $300C: Mensagem := Mensagem + 'Qualidade de Logotipo não suportada pela impressora.';
        $030E: Mensagem := Mensagem + 'Erro de leitura do microcódigo.';
        $0401: Mensagem := Mensagem + 'Número de série inválido.';
        $0402: Mensagem := Mensagem + 'Requer dados de fiscalização já configurados.';
        $0501: Mensagem := Mensagem + 'Data / Hora não configurada.';
        $0502: Mensagem := Mensagem + 'Data inválida.';
        $0503: Mensagem := Mensagem + 'Data em intervalo inválido.';
        $0504: Mensagem := Mensagem + 'Nome operador inválido.';
        $0505: Mensagem := Mensagem + 'Número de caixa inválido.';
        $0508: Mensagem := Mensagem + 'Dados de Cabeçalho ou rodapé inválidos.';
        $0509: Mensagem := Mensagem + 'Excesso de fiscalização.';
        $500C: Mensagem := Mensagem + 'Número máximo de meios de pagamento já definidos.';
        $050D: Mensagem := Mensagem + 'Meio de pagamento já definido.';
        $050E: Mensagem := Mensagem + 'Meio de pagamento inválido.';
        $050F: Mensagem := Mensagem + 'Descrição do meio de pagamento inválido.';
        $0510: Mensagem := Mensagem + 'Valor máximo de desconto inválido.';
        $0513: Mensagem := Mensagem + 'Logotipo do usuário inválido.';
        $0514: Mensagem := Mensagem + 'Seqüência de logotipo inválido.';
        $0515: Mensagem := Mensagem + 'Configuração de display inválida.';
        $0516: Mensagem := Mensagem + 'Dados do MICR inválidos.';
        $0517: Mensagem := Mensagem + 'Campo de endereço inválido.';
        $0518: Mensagem := Mensagem + 'Nome da loja não definido.';
        $0519: Mensagem := Mensagem + 'Dados fiscais não definidos.';
        $510A: Mensagem := Mensagem + 'Número seqüencial do ECF inválido.';
        $510B: Mensagem := Mensagem + 'Simbologia do GT inválida, devem ser todos diferentes.';
        $510C: Mensagem := Mensagem + 'Número de CNPJ inválido.';
        $051D: Mensagem := Mensagem + 'Senha de fiscalização inválida.';
        $051E: Mensagem := Mensagem + 'Último documento deve ser uma redução Z.';
        $051F: Mensagem := Mensagem + 'Símbolo da moeda igual ao atualmente cadastrado.';
        $0520: Mensagem := Mensagem + 'Identificação da alíquota não cadastrada.';
        $0521: Mensagem := Mensagem + 'Alíquota não cadastrada.';
        $0601: Mensagem := Mensagem + 'Memória de Fita-detalhe esgotada.';
        $0605: Mensagem := Mensagem + 'Número de série invalido para a Memória de Fita-detalhe.';
        $0606: Mensagem := Mensagem + 'Memória de Fita-detalhe não iniciada.';
        $0607: Mensagem := Mensagem + 'Memória de Fita-detalhe não pode estar iniciada.';
        $0608: Mensagem := Mensagem + 'Número de série da Memória de Fita-detalhe não confere.';
        $0609: Mensagem := Mensagem + 'Erro Interno na Memória de Fita-detalhe.';
        $0701: Mensagem := Mensagem + 'Valor inválido para o número do registro.';
        $0702: Mensagem := Mensagem + 'Valor inválido para o número do item.';
        $0703: Mensagem := Mensagem + 'Intervalo inválido para a leitura da MFD.';
        $0704: Mensagem := Mensagem + 'Número de usuário inválido para MFD.';
        $0801: Mensagem := Mensagem + 'Comando inválido com jornada fiscal fechada.';
        $0802: Mensagem := Mensagem + 'Comando inválido com jornada fiscal aberta.';
        $0803: Mensagem := Mensagem + 'Memória Fiscal esgotada.';
        $0804: Mensagem := Mensagem + 'Jornada fiscal deve ser fechada.';
        $0805: Mensagem := Mensagem + 'Não há meios de pagamento definidos.';
        $0806: Mensagem := Mensagem + 'Excesso de meios de pagamento utilizados na jornada fiscal.';
        $0807: Mensagem := Mensagem + 'Jornada fiscal sem movimento de vendas.';
        $0808: Mensagem := Mensagem + 'Intervalo de jornada fiscal inválido.';
        $0809: Mensagem := Mensagem + 'Existem mais dados para serem lidos.';
        $800A: Mensagem := Mensagem + 'Não existem mais dados para serem lidos.';
        $800B: Mensagem := Mensagem + 'Não pode abrir jornada fiscal.';
        $800C: Mensagem := Mensagem + 'Não pode fechar jornada fiscal.';
        $080D: Mensagem := Mensagem + 'Limite máximo do período fiscal atingido.';
        $080E: Mensagem := Mensagem + 'Limite máximo do período fiscal não atingido.';
        $080F: Mensagem := Mensagem + 'Abertura da jornada fiscal não permitida.';
        $0901: Mensagem := Mensagem + 'Valor muito grande.';
        $0902: Mensagem := Mensagem + 'Valor muito pequeno.';
        $0903: Mensagem := Mensagem + 'Itens em excesso.';
        $0904: Mensagem := Mensagem + 'Alíquotas em excesso.';
        $0905: Mensagem := Mensagem + 'Desconto ou acréscimos em excesso.';
        $0906: Mensagem := Mensagem + 'Meios de pagamento em excesso.';
        $0907: Mensagem := Mensagem + 'Item não encontrado.';
        $0908: Mensagem := Mensagem + 'Meio de pagamento não encontrado.';
        $0909: Mensagem := Mensagem + 'Total nulo.';
        $900C: Mensagem := Mensagem + 'Tipo de pagamento não definido.';
        $090F: Mensagem := Mensagem + 'Alíquota não encontrada.';
        $0910: Mensagem := Mensagem + 'Alíquota inválida.';
        $0911: Mensagem := Mensagem + 'Excesso de meios de pagamento com CDC.';
        $0912: Mensagem := Mensagem + 'Meio de pagamento com CDC já emitido.';
        $0913: Mensagem := Mensagem + 'Meio de pagamento com CDC ainda não emitido.';
        $0914: Mensagem := Mensagem + 'Leitura da Memória Fiscal – intervalo CRZ inválido.';
        $0915: Mensagem := Mensagem + 'Leitura da Memória Fiscal – intervalo de data inválido.';
        $0A01: Mensagem := Mensagem + 'Operação não permitida após desconto / acréscimo.';
        $0A02: Mensagem := Mensagem + 'Operação não permitida após registro de pagamentos.';
        $0A03: Mensagem := Mensagem + 'Tipo de item inválido.';
        $0A04: Mensagem := Mensagem + 'Linha de descrição em branco.';
        $0A05: Mensagem := Mensagem + 'Quantidade muito pequena.';
        $0A06: Mensagem := Mensagem + 'Quantidade muito grande.';
        $0A07: Mensagem := Mensagem + 'Total do item com valor muito alto.';
        $0A08: Mensagem := Mensagem + 'Operação não permitida antes do registro de pagamentos.';
        $0A09: Mensagem := Mensagem + 'Registro de pagamento incompleto.';
        $0A0A: Mensagem := Mensagem + 'Registro de pagamento finalizado.';
        $0A0B: Mensagem := Mensagem + 'Valor pago inválido.';
        $0A0C: Mensagem := Mensagem + 'Valor de desconto ou acréscimo não permitido.';
        $0A0E: Mensagem := Mensagem + 'Valor não pode ser zero.';
        $0A0F: Mensagem := Mensagem + 'Operação não permitida antes do registro de itens.';
        $0A11: Mensagem := Mensagem + 'Cancelamento de desconto e acréscimo somente para item atual.';
        $0A12: Mensagem := Mensagem + 'Não foi possível cancelar último Cupom Fiscal.';
        $0A13: Mensagem := Mensagem + 'Último Cupom Fiscal não encontrado.';
        $0A14: Mensagem := Mensagem + 'Último Comprovante Não-Fiscal não encontrado.';
        $0A15: Mensagem := Mensagem + 'Cancelamento de CDC necessária.';
        $0A16: Mensagem := Mensagem + 'Número de item em Cupom Fiscal inválido.';
        $0A17: Mensagem := Mensagem + 'Operação somente permitida após subtotalização.';
        $0A18: Mensagem := Mensagem + 'Operação somente permitida durante a venda de itens.';
        $0A19: Mensagem := Mensagem + 'Operação não permitida em item com desconto ou acréscimo.';
        $0A1A: Mensagem := Mensagem + 'Dígitos de quantidade inválidos.';
        $0A1B: Mensagem := Mensagem + 'Dígitos de valor unitário inválido.';
        $0A1C: Mensagem := Mensagem + 'Não há desconto ou acréscimo a cancelar.';
        $0A1D: Mensagem := Mensagem + 'Não há item para cancelar.';
        $0A1E: Mensagem := Mensagem + 'Desconto ou acréscimo somente no item atual.';
        $0A1F: Mensagem := Mensagem + 'Desconto ou acréscimo já efetuado.';
        $0A20: Mensagem := Mensagem + 'Desconto ou acréscimo nulo não permitido.';
        $0A21: Mensagem := Mensagem + 'Valor unitário inválido.';
        $0A22: Mensagem := Mensagem + 'Quantidade inválida.';
        $0A23: Mensagem := Mensagem + 'Código de item inválido.';
        $0A24: Mensagem := Mensagem + 'Descrição inválida.';
        $0A25: Mensagem := Mensagem + 'Operação de desconto ou acréscimo não permitida.';
        $0A26: Mensagem := Mensagem + 'Mensagem promocional já impressa.';
        $0A27: Mensagem := Mensagem + 'Linhas adicionais não podem ser impressas.';
        $0A28: Mensagem := Mensagem + 'Dados do consumidor já impresso.';
        $0A29: Mensagem := Mensagem + 'Dados do consumidor somente no fim do documento.';
        $0A2A: Mensagem := Mensagem + 'Dados do consumidor somente no inicio do documento.';
        $0A2B: Mensagem := Mensagem + 'Comando Inválido para o item.';
        $0E01: Mensagem := Mensagem + 'Número de linhas em documento excedido.';
        $0E02: Mensagem := Mensagem + 'Número do relatório inválido.';
        $0E03: Mensagem := Mensagem + 'Operação não permitida após registro de itens.';
        $0E04: Mensagem := Mensagem + 'Registro de valor nulo não permitido.';
        $0E05: Mensagem := Mensagem + 'Não há desconto a cancelar.';
        $0E06: Mensagem := Mensagem + 'Não há acréscimo a cancelar.';
        $0E07: Mensagem := Mensagem + 'Operação somente permitida após subtotalização.';
        $0E08: Mensagem := Mensagem + 'Operação somente permitida durante registro de itens.';
        $0E09: Mensagem := Mensagem + 'Operação não-fiscal inválida.';
        $0E0A: Mensagem := Mensagem + 'Último comprovante Não-Fiscal não encontrado.';
        $0E0B: Mensagem := Mensagem + 'Meio de pagamento não encontrado.';
        $0E0C: Mensagem := Mensagem + 'Não foi possível imprimir nova via.';
        $0E0D: Mensagem := Mensagem + 'Não foi possível realizar reimpressão.';
        $0E0E: Mensagem := Mensagem + 'Não foi possível imprimir nova parcela.';
        $0E0F: Mensagem := Mensagem + 'Não há mais parcelas a imprimir.';
        $0E10: Mensagem := Mensagem + 'Registro de item Não-Fiscal inválido.';
        $0E11: Mensagem := Mensagem + 'Desconto ou acréscimo já efetuado.';
        $0E12: Mensagem := Mensagem + 'Valor de desconto ou acréscimo inválido.';
        $0E13: Mensagem := Mensagem + 'Não foi possível cancelar o item.';
        $0E14: Mensagem := Mensagem + 'Itens em excesso.';
        $0E15: Mensagem := Mensagem + 'Operação Não-Fiscal não cadastrada.';
        $0E16: Mensagem := Mensagem + 'Excesso de relatórios / operações não-fiscais cadastradas.';
        $0E17: Mensagem := Mensagem + 'Relatório não encontrado.';
        $0E18: Mensagem := Mensagem + 'Comando não permitido.';
        $0E19: Mensagem := Mensagem + 'Comando não permitido em operações não-fiscais para movimento de monetário.';
        $0E1A: Mensagem := Mensagem + 'Comando permitido apenas em operações não-fiscais para movimento de monetário.';
        $0E1B: Mensagem := Mensagem + 'Número de parcelas inválido para a emissão de CCD.';
        $0E1C: Mensagem := Mensagem + 'Operação não fiscal já cadastrada.';
        $0E1D: Mensagem := Mensagem + 'Relatório gerencial já cadastrado.';
        $0E1E: Mensagem := Mensagem + 'Relatório Gerencial Inválido.';
        $3001: Mensagem := Mensagem + 'Configuração de cheque não registrada.';
        $3002: Mensagem := Mensagem + 'Configuração de cheque não encontrada.';
        $3003: Mensagem := Mensagem + 'Valor do cheque já impresso.';
        $3004: Mensagem := Mensagem + 'Nominal ao cheque já impresso.';
        $3005: Mensagem := Mensagem + 'Linhas adicionais no cheque já impresso.';
        $3006: Mensagem := Mensagem + 'Autenticação já impressa.';
        $3007: Mensagem := Mensagem + 'Número máximo de autenticações já impresso.';
      else
        Mensagem := Mensagem + 'Erro desconhecido.';
      end;
    end;

    if Mensagem <> '' then
      Result := Mensagem;
  end
  else
  if COD_ECF = ELGIN then
  begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno :=  ELGIN_VerificaEstadoImpressora(iACK, iST1, iST2);
    Mensagem := '';
    If iACK = 21 Then  Result := 'A Impressora retornou NAK. O programa será abortado!';
    If iACK = 6  then
    begin
          // Verifica ST1
      IF iST1 >= 128 Then begin iST1 := iST1 - 128; Mensagem := Mensagem+' '+ 'Fim do Papel!'end;
      IF iST1 >= 64 Then begin  iST1 := iST1 - 64; Mensagem := Mensagem+' '+ 'Pouco Papel!'end;
      IF iST1 >= 32 Then begin iST1 := iST1 - 32; Mensagem := Mensagem+' '+ 'Erro no relógio!'end;
      IF iST1 >= 16  Then begin iST1 := iST1 - 16;  Mensagem := Mensagem+' '+ 'Impressora em ERRO!'end;
      IF iST1 >= 8   Then begin iST1 := iST1 - 8;   Mensagem := Mensagem+' '+ 'CMD não iniciado com ESC!'end;
      IF iST1 >= 4   Then begin iST1 := iST1 - 4;   Mensagem := Mensagem+' '+ 'Comando Inexistente!'end;
      IF iST1 >= 2   Then begin iST1 := iST1 - 2;   Mensagem := Mensagem+' '+ 'Cupom Aberto'end;
      IF iST1 >= 1   Then begin iST1 := iST1 - 1;   Mensagem := Mensagem+' '+ 'Nº de Parâmetros Inválidos!'end;
          // Verifica ST2
      IF iST2 >= 128 Then begin iST2 := iST2 - 128; Mensagem := Mensagem+' '+ 'Tipo de Parâmetro Inválido!'end;
      IF iST2 >= 64  Then begin iST2 := iST2 - 64;  Mensagem := Mensagem+' '+ 'Memória Fiscal Lotada.'end;
      IF iST2 >= 32  Then begin iST2 := iST2 - 32;  Mensagem := Mensagem+' '+ 'CMOS não Volátil!'end;
      IF iST2 >= 16  Then begin iST2 := iST2 - 16;  Mensagem := Mensagem+' '+ 'Alíquota Não Programada.'end;
      IF iST2 >= 8   Then begin iST2 := iST2 - 8;   Mensagem := Mensagem+' '+ 'Alíquotas lotadas.'end;
      IF iST2 >= 4   Then begin iST2 := iST2 - 4;   Mensagem := Mensagem+' '+ 'Cancelamento não Permitido.'end;
      IF iST2 >= 2   Then begin iST2 := iST2 - 2;   Mensagem := Mensagem+' '+ 'CGC/IE não Programados.'end;
      IF iST2 >= 1   Then begin iST2 := iST2 - 1;   Mensagem := Mensagem+' '+ 'Comando não Executado.'end;
    end;
    if Mensagem = '' then
      Result := OK
    else
      Result := Mensagem;

  end;
end;

// -------------------------------------------------------------------------- //
// Abrir porta Serial do ECF
function cECF_Abre(COD_ECF:Integer;Porta:string):string;
var
 sVelocidade: String;
 sPorta: String;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
    Result := OK
  else
  if COD_ECF = DARUMA then
    Result := OK
  else
  if COD_ECF = SWEDA then
    Result := OK
  else
  if COD_ECF = EPSON then
  begin
    Result := OK;

    SetLength(sVelocidade, 8);
    SetLength(sPorta, 4);
    iRetorno := EPSON_Serial_Abrir_PortaAD(pchar(sVelocidade), pchar(sPorta));

    if iRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON);
  end
  else
  if COD_ECF = ELGIN then
  begin
//    iRetorno := Elgin_AbrePortaSerial();
//    Result := cECF_Analisa_Retorno(EPSON);
    Result := OK;
  end;
end;

// -------------------------------------------------------------------------- //
// Fechar porta Serial do ECF
function cECF_Fecha(COD_ECF:Integer):string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
    Result := OK
  else
  if COD_ECF = DARUMA then
    Result := OK
  else
  if COD_ECF = SWEDA then
    iRetorno := ECF_FechaPortaSerial()
  else
  if COD_ECF = EPSON then
  begin
    iRetorno := EPSON_Serial_Fechar_Porta;
    Result := cECF_Analisa_Retorno(EPSON);
  end
  else
  if COD_ECF = EPSON then
  begin
    iRetorno := EPSON_Serial_Fechar_Porta;

    if iRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;
  end;
end;

// -------------------------------------------------------------------------- //
// INFORMACAOES
// Verificar Impressora Ligada
function cECF_Ligada(COD_ECF:Integer):string;
begin
  Result := ERRO;
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = EPSON then
  begin
    Result := EPSON_ECFLigada;
  end
  else
  if COD_ECF = ELGIN then
  begin
    iRetorno := ELGIN_VerificaImpressoraligada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;
 end;

end;

// -------------------------------------------------------------------------- //
// Retornar o numero de Serie do ECF
function cECF_Numero_Serie(COD_ECF:Integer):string;
var
  sRet : string;
  i: integer;
  Numero : string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    // no arquivo bemafi.ini mude a chave da impressora para 1
    For i := 1 To 20 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_NumeroSerieMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);

    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = DARUMA then
  begin
    For i := 1 To 20 Do Numero := Numero + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao('78',numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    For i := 1 To 20 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroSerieMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = EPSON then
  begin
    Result := EPSON_NumeroSerie;
  end
  else
  if COD_ECF = ELGIN then
  begin
    For i := 1 To 20 Do Numero := Numero + ' ';
    iRetorno:= Elgin_NumeroSerieMemoriaMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;

  end;
end;

// -------------------------------------------------------------------------- //
// Verificar Numero do Caixa
function cECF_Numero_Caixa(COD_ECF:Integer):string;
var
  sRet: string;
  i: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := copy(Numero,2,3)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = DARUMA then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := Daruma_FI_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := copy(Numero,2,3)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := copy(Numero,2,3)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = EPSON then
  begin
    Result := EPSON_NumeroCaixa;
  end
  else
  if COD_ECF = ELGIN then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := ELGIN_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := copy(Numero,2,3)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end;

end;

// -------------------------------------------------------------------------- //
// Retorna o totalizador geral
function cECF_Grande_Total(cod_ECF:integer):string;
var
  sContador, sRet: string;
  i: integer;
  rvalor: real;

begin
  if COD_ECF = BEMATECH then
  begin
    For i := 1 To 18 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
      begin

        rvalor :=  strtofloat(scontador) ;
        if rvalor > 0 then
          Result := floattostr( rvalor/100)
        else
          Result := '0';

      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = DARUMA then
  begin
    For i := 1 To 18 Do sContador := sContador + ' ';
    iRetorno := Daruma_FI_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
      begin
        rvalor :=  strtofloat(sContador) ;
        if rvalor > 0 then
          Result := floattostr( rvalor/100)
        else
          Result := '0';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    For i := 1 To 18 Do sContador := sContador + ' ';
    iRetorno := ECF_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
      begin

        rvalor :=  strtofloat(scontador) ;
        if rvalor > 0 then
          Result := floattostr( rvalor/100)
        else
          Result := '0';

      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = EPSON then
  begin
    SetLength(sContador, 18);

    iRetorno := EPSON_Obter_GT(pchar(sContador));

    if iRetorno = 0 then
    begin
      rValor := StrToFloat(sContador);
      if rValor > 0 then
        Result := FloatToStr(rValor/100)
      else
        Result := '0';
    end
    else
      Result := ERRO;
  end
  else
  if COD_ECF = ELGIN then
  begin
    For i := 1 To 18 Do sContador := sContador + ' ';
    iRetorno := ELGIN_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
      begin

        rvalor :=  strtofloat(scontador) ;
        if rvalor > 0 then
          Result := floattostr( rvalor/100)
        else
          Result := '0';

      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// LEITURA X
function cECF_LeituraX(COD_ECF:Integer):string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf) // retorna OK ou a Mensagem de Erro;
    ELSE
      Result := ecfMSG;  // retorna o Erro de falha de comunicação com o ECF
  end
  else
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;

  end
  else
  if COD_ECF = EPSON then
  begin
    iRetorno := EPSON_RelatorioFiscal_Abrir_Dia();

    // CGT: Se houve falha na abertura do dia, executa apenas a leitura X
    if iRetorno <> 0 then
      iRetorno := EPSON_RelatorioFiscal_LeituraX();

    if iRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;
  end
  else
  if COD_ECF = ELGIN then
  begin
    iRetorno := ELGIN_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;
  end;

end;

// -------------------------------------------------------------------------- //
function EPSON_ECFLigada: String;
var
  ST3: String;
  iST3: Integer;
  sDados: String;
  I: Integer;

begin
  Result := OK;

  for I := 1 to 20 do
    sDados := sDados + ' ';

  iRetorno := EPSON_Obter_Estado_Impressora(PChar(sDados));

  ST3 := Copy(sDados, 9, 4);
  iST3 := StrToInt('$' + ST3);

  if (iST3 >= 32768) Then
    Result := 'Impressora Desligada!'
  else
  if iRetorno <> 0 then
    Result := cECF_Analisa_Retorno(EPSON);

end;

// -------------------------------------------------------------------------- //
function EPSON_NumeroSerie: String;
var
  sDados: String;

begin
  SetLength(sDados, 108);

  iRetorno := EPSON_Obter_Dados_Impressora(pchar(sDados));

  if iRetorno = 0 then
    Result := copy(sDados, 1, 20)
  else
    Result := cECF_Analisa_Retorno(EPSON);

end;

// -------------------------------------------------------------------------- //
function EPSON_NumeroCaixa: String;
var
  sDados: String;

begin
  SetLength(sDados, 8);

  iRetorno := EPSON_Obter_Numero_ECF_Loja(pchar(sDados));

  if iRetorno = 0 then
    Result := copy(sDados, 1, 3)
  else
    Result := cECF_Analisa_Retorno(EPSON);

end;

end.


