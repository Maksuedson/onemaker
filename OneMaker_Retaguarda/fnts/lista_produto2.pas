unit lista_produto2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Grids, DBGrids, frxCross, Menus, ComCtrls,
  AdvGlowButton, RzPrgres, DBAccess, RzEdit, AdvReflectionImage, frxChart, fs_ichartrtti, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvMemoryDataset, JvExMask, JvToolEdit;

type
  Tfrmlista_produto2 = class(TForm)
    bar: TRzProgressBar;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lcst: TLabel;
    Label10: TLabel;
    ltext_remarcado: TLabel;
    Label12: TLabel;
    combo_relatorio: TComboBox;
    combo_grupo: TComboBox;
    combo_subgrupo: TComboBox;
    combo_marca: TComboBox;
    combo_estoque: TComboBox;
    combo_inventario: TComboBox;
    combo_fornecedor: TComboBox;
    COMBO_ORDEM: TComboBox;
    combo_tipo: TComboBox;
    combo_cst: TComboBox;
    grem: TGroupBox;
    lfim_remarcado: TLabel;
    ldataini_remarcado: TJvDateEdit;
    ldatafim_remarcado: TJvDateEdit;
    combo_situacao: TComboBox;
    pdesconto: THeaderView;
    HeaderView5: THeaderView;
    Label11: TLabel;
    bdesconto: TAdvGlowButton;
    edesconto: TRzNumericEdit;
    combo_produto: TComboBox;
    qrproduto: TZQuery;
    qrprodutoFORNECEDOR: TStringField;
    qrprodutoMARCA: TStringField;
    qrprodutoGRUPO: TStringField;
    qrprodutoSUBGRUPO: TStringField;
    qrprodutosituacaotributaria: TStringField;
    qrprodutosugestao: TFloatField;
    qrprodutovendas: TFloatField;
    fsproduto: TfrxDBDataset;
    qrproduto_grade: TZQuery;
    fsproduto_grade: TfrxDBDataset;
    qrgrupo: TZQuery;
    qrsubgrupo: TZQuery;
    dsgrupo: TDataSource;
    dssubgrupo: TDataSource;
    fsgrupo: TfrxDBDataset;
    fssubgrupo: TfrxDBDataset;
    fxproduto: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxCrossObject1: TfrxCrossObject;
    qrproduto_serial: TZQuery;
    qrproduto_serialfornecedor: TStringField;
    fsproduto_serial: TfrxDBDataset;
    qrfornecedor: TZQuery;
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    QRMOVIMENTO: TZQuery;
    fsmovimento: TfrxDBDataset;
    qrsugestao_compra: TZQuery;
    qrsugestao_compramarca: TStringField;
    qrsugestao_comprafornecedor: TStringField;
    fssugestao_compra: TfrxDBDataset;
    QUERY: TZQuery;
    QUERY_TIPO: TZQuery;
    fstotal_TIPO: TfrxDBDataset;
    fstotal: TfrxDBDataset;
    dsproduto2: TDataSource;
    qrposicao: TZQuery;
    fsposicao: TfrxDBDataset;
    query_pis_entrada: TZQuery;
    query_pis_entradasubgrupo: TStringField;
    query_pis_entradapis: TFloatField;
    query_pis_entradacofins: TFloatField;
    query_pis_saida: TZQuery;
    query_pis_saidasubgrupo: TStringField;
    query_pis_saidapis: TFloatField;
    query_pis_saidacofins: TFloatField;
    fspis_saida: TfrxDBDataset;
    fspis_entrada: TfrxDBDataset;
    qrproduto_preco: TZQuery;
    fs_produto_preco: TfrxDBDataset;
    qrprecos: TZQuery;
    fxprecos: TfrxDBDataset;
    qrnota_entrada: TZQuery;
    qrnota_entradafornecedor: TStringField;
    qrnota_entradacnpj: TStringField;
    qrnota_entradaColumn: TFloatField;
    fscredito_icms: TfrxDBDataset;
    qricms1: TZQuery;
    fsicms: TfrxDBDataset;
    FSimposto_vendas: TfrxDBDataset;
    qrimposto_vendas: TZQuery;
    qricms: TJvMemoryData;
    qricmsaliquota: TFloatField;
    qricmstotal: TFloatField;
    qricmsimposto: TFloatField;
    query_pis_entrada_resumo: TZQuery;
    query_pis_entrada_resumopis: TFloatField;
    query_pis_entrada_resumocofins: TFloatField;
    query_pis_saida_resumo: TZQuery;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    fspis_saida_resumo: TfrxDBDataset;
    fspis_entrada_resumo: TfrxDBDataset;
    qrproducao: TZQuery;
    fsproducao: TfrxDBDataset;
    fsChartRTTI1: TfsChartRTTI;
    qricms1ID: TIntegerField;
    qricms1MOVIMENTO: TWideStringField;
    qricms1CODIGO_EMPRESA: TIntegerField;
    qricms1OBS1: TWideStringField;
    qricms1CNPJ: TWideStringField;
    qricms1IE: TWideStringField;
    qricms1UF: TWideStringField;
    qricms1CODIGO_CLIENTE: TIntegerField;
    qricms1CNPJ_CLIENTE: TWideStringField;
    qricms1IE_CLIENTE: TWideStringField;
    qricms1UF_CLIENTE: TWideStringField;
    qricms1CFOP: TWideStringField;
    qricms1COD_SINTEGRA_R60: TWideStringField;
    qricms1NRO_SERIE_EQP: TWideStringField;
    qricms1NRO_ORDEM_EQP: TIntegerField;
    qricms1MODELO_DOC: TWideStringField;
    qricms1NRO_CONTADOR_INICIO: TIntegerField;
    qricms1NRO_CONTADOR_FIM: TIntegerField;
    qricms1NRO_CONTADOR_Z: TIntegerField;
    qricms1NRO_DOC_FISCAL: TIntegerField;
    qricms1NRO_ITENS: TIntegerField;
    qricms1CONTADOR_REINICIO: TIntegerField;
    qricms1VALOR_VENDA_BRUTA: TFloatField;
    qricms1VALOR_TOTAL_GERAL: TFloatField;
    qricms1BRANCOS: TWideStringField;
    qricms1MODELO_NF: TWideStringField;
    qricms1CANCELAMENTO: TFloatField;
    qricms1DESCONTO: TFloatField;
    qricms1ISSQN: TFloatField;
    qricms1SUBSTITUICAO_TRIBUTARIA: TFloatField;
    qricms1ISENTO: TFloatField;
    qricms1NAO_INCIDENCIA: TFloatField;
    qricms1ACRESCIMO_IOF: TFloatField;
    qricms1ALIQUOTA01: TFloatField;
    qricms1ALIQUOTA02: TFloatField;
    qricms1ALIQUOTA03: TFloatField;
    qricms1ALIQUOTA04: TFloatField;
    qricms1ALIQUOTA05: TFloatField;
    qricms1BASE01: TFloatField;
    qricms1BASE02: TFloatField;
    qricms1BASE03: TFloatField;
    qricms1BASE04: TFloatField;
    qricms1BASE05: TFloatField;
    qricms1VALOR_TPARCIAL01: TFloatField;
    qricms1VALOR_TPARCIAL02: TFloatField;
    qricms1VALOR_TPARCIAL03: TFloatField;
    qricms1VALOR_TPARCIAL04: TFloatField;
    qricms1VALOR_TPARCIAL05: TFloatField;
    qricms1BRANCOS_60A01: TWideStringField;
    qricms1BRANCOS_60A02: TWideStringField;
    qricms1BRANCOS_60A03: TWideStringField;
    qricms1BRANCOS_60A04: TWideStringField;
    qricms1BRANCOS_60A05: TWideStringField;
    qricms1TOTAL_INICIO_DIA: TFloatField;
    qricms1TOTAL_FINAL_DIA: TFloatField;
    qricms1TOTAL_DIA: TFloatField;
    qricms1OBSERVACAO: TWideStringField;
    qricms1VALOR_VENDA_LIQUIDA: TFloatField;
    qricms1NRO_CONTADOR_CANCELAMENTO: TIntegerField;
    qrproduto_precoCODIGO: TWideStringField;
    qrproduto_precoCODBARRA: TWideStringField;
    qrproduto_precoPRODUTO: TWideStringField;
    qrproduto_precoPRECOVENDA: TFloatField;
    qrproduto_precoUNIDADE: TWideStringField;
    qrproduto_precoCODPRODUTO: TWideStringField;
    qrproduto_precoLUCRO: TFloatField;
    qrproduto_precoSUGERIDO: TFloatField;
    qrproduto_serialCODIGO: TWideStringField;
    qrproduto_serialCODPRODUTO: TWideStringField;
    qrproduto_serialSERIAL: TWideStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialCODCLIENTE: TWideStringField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCLIENTE: TWideStringField;
    qrproduto_serialCODNOTA: TWideStringField;
    qrproduto_serialCODITEM: TWideStringField;
    qrproduto_serialNUMERONOTA: TWideStringField;
    qrproduto_serialCODFORNECEDOR: TWideStringField;
    qrproduto_serialCODVENDA_ITEM: TWideStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TWideStringField;
    qrproducaoCODIGO: TWideStringField;
    qrproducaoPRODUTO: TWideStringField;
    qrproducaoUNIDADE: TWideStringField;
    qrproducaoCLASSIFICACAO_FISCAL: TWideStringField;
    qrproducaoCODNOTA: TWideStringField;
    qrproducaoCODPRODUTO: TWideStringField;
    qrproducaoQTDE: TFloatField;
    qrproducaoUNITARIO: TFloatField;
    qrproducaoTOTAL: TFloatField;
    qrproducaoIPI: TFloatField;
    qrproducaoCODIGO_1: TWideStringField;
    qrproducaoNUMERO: TWideStringField;
    qrproducaoCODIGO_2: TWideStringField;
    qrproducaoNUMERO_1: TWideStringField;
    qrproducaoCODNOTA_1: TWideStringField;
    qrproducaoCODPRODUTO_1: TWideStringField;
    qrproducaoQTDE_1: TFloatField;
    qrproducaoUNITARIO_1: TFloatField;
    qrproducaoTOTAL_1: TFloatField;
    qrproducaoIPI_1: TFloatField;
    ff: TFloatField;
    qrnota_entradacolumn2: TStringField;
    qrproducaosaldo: TStringField;
    qrproducaoESPECIE: TStringField;
    qrproducaoQUANTIDADE: TStringField;
    qrproducaoTIPO: TStringField;
    qrproducaoSERIE: TStringField;
    CDSosqricms1DATA_EMISSAO: TDateField;
    CDSosqricms1DATAHORA_RECEBIMENTO: TDateField;
    CDSosqricms1DATAHORA_INI: TDateField;
    CDSosqricms1DATAHORA_FIM: TDateField;
    QRMOVIMENTOCODIGO: TWideStringField;
    QRMOVIMENTOCODNOTA: TWideStringField;
    QRMOVIMENTOCODPRODUTO: TWideStringField;
    QRMOVIMENTOUNITARIO: TFloatField;
    QRMOVIMENTOTOTAL: TFloatField;
    QRMOVIMENTOICMS: TFloatField;
    QRMOVIMENTOIPI: TFloatField;
    QRMOVIMENTOCFOP: TWideStringField;
    CDSosQRMOVIMENTODATA: TDateField;
    QRMOVIMENTONUMERONOTA: TWideStringField;
    QRMOVIMENTOCODCLIENTE: TWideStringField;
    QRMOVIMENTODESCONTO: TFloatField;
    QRMOVIMENTOACRESCIMO: TFloatField;
    QRMOVIMENTOMOVIMENTO: TIntegerField;
    QRMOVIMENTOCODVENDEDOR: TWideStringField;
    QRMOVIMENTOCODGRADE: TWideStringField;
    QRMOVIMENTOSERIAL: TWideStringField;
    QRMOVIMENTOUNIDADE: TWideStringField;
    QRMOVIMENTOQTDE: TFloatField;
    QRMOVIMENTOVALOR_ICMS: TFloatField;
    QRMOVIMENTOICMS_REDUZIDO: TFloatField;
    QRMOVIMENTOBASE_CALCULO: TFloatField;
    QRMOVIMENTOVALOR_IPI: TFloatField;
    QRMOVIMENTOSITUACAO: TIntegerField;
    QRMOVIMENTOECF_SERIE: TWideStringField;
    QRMOVIMENTOECF_CAIXA: TWideStringField;
    QRMOVIMENTOCODALIQUOTA: TWideStringField;
    QRMOVIMENTOCUPOM_NUMERO: TWideStringField;
    QRMOVIMENTOCUPOM_MODELO: TWideStringField;
    QRMOVIMENTOCUPOM_ITEM: TWideStringField;
    QRMOVIMENTOALIQUOTA: TFloatField;
    QRMOVIMENTOCST: TWideStringField;
    QRMOVIMENTOLOTE_FABRICACAO: TWideStringField;
    QRMOVIMENTOMOVIMENTO_ESTOQUE: TFloatField;
    QRMOVIMENTOLANCADO: TIntegerField;
    CDSosQRMOVIMENTOVENCIMENTO: TDateField;
    QRMOVIMENTOCODBARRA: TWideStringField;
    QRMOVIMENTOMARGEM_DESCONTO: TFloatField;
    QRMOVIMENTOCREDITO_ICMS: TFloatField;
    QRMOVIMENTOPIS: TFloatField;
    QRMOVIMENTOCOFINS: TFloatField;
    QRMOVIMENTOLOJA: TWideStringField;
    QRMOVIMENTOCODSUBGRUPO: TWideStringField;
    QRMOVIMENTOTIPO: TWideStringField;
    QRMOVIMENTOCODUSUARIO: TWideStringField;
    QRMOVIMENTOORIGEM: TWideStringField;
    QRMOVIMENTODESTINO: TWideStringField;
    QRMOVIMENTOPRODUTO: TWideStringField;
    QRMOVIMENTOCODFILIAL: TWideStringField;
    CDSosDATA_EMISSAO: TDateField;
    CDSosDATA_LANCAMENTO: TDateField;
    CDSosDATA: TDateField;
    CDSos_serialDATAVENDA: TDateField;
    CDSos_serialDATACOMPRA: TDateField;
    qrimposto_vendasTOTAL: TExtendedField;
    qrimposto_vendasCREDITO_ICMS: TExtendedField;
    qrimposto_vendasPIS: TExtendedField;
    qrimposto_vendasCOFINS: TExtendedField;
    qrnota_entradaCODIGO: TWideStringField;
    qrnota_entradaCODEMPRESA: TWideStringField;
    qrnota_entradaCODFORNECEDOR: TWideStringField;
    qrnota_entradaNUMERO: TWideStringField;
    qrnota_entradaTOTAL_NOTA: TFloatField;
    qrnota_entradaBASE_ICMS: TFloatField;
    qrnota_entradaVALOR_ICMS: TFloatField;
    qrnota_entradaCREDITO_ICMS: TFloatField;
    qrnota_entradaPIS: TFloatField;
    qrnota_entradaCOFINS: TFloatField;
    qrnota_entradaDATA_LANCAMENTO: TDateField;
    qrnota_entradaDATA_EMISSAO: TDateField;
    qrnota_entradaSUBTOTAL: TExtendedField;
    qrposicaoCODIGO: TWideStringField;
    qrposicaoPRODUTO: TWideStringField;
    qrposicaoUNIDADE: TWideStringField;
    qrposicaoESTOQUE_INICIAL: TFloatField;
    qrposicaoSALDO_ANTERIOR: TExtendedField;
    qrposicaoMOVIMENTO: TExtendedField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoDATA_CADASTRO: TDateField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TWideStringField;
    qrprodutoAPLICACAO: TWideMemoField;
    qrprodutoLOCALICAZAO: TWideStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TWideStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TWideStringField;
    qrprodutoFOTO: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateField;
    qrprodutoFIM_PROMOCAO: TDateField;
    qrprodutoCST: TWideStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TWideStringField;
    qrprodutoNBM: TWideStringField;
    qrprodutoNCM: TWideStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoTIPO: TWideStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateField;
    qrprodutoULTIMA_CARGA: TDateField;
    qrprodutoDATA_INVENTARIO: TDateField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrprodutoAPRESENTACAO: TWideStringField;
    qrprodutoSITUACAO: TIntegerField;
    qrprodutoPRECOVENDA1: TFloatField;
    qrprodutoPRECOVENDA2: TFloatField;
    qrprodutoPRECOVENDA3: TFloatField;
    qrprodutoPRECOVENDA4: TFloatField;
    qrprodutoPRECOVENDA5: TFloatField;
    qrprodutoDESCONTO_PRECOVENDA: TFloatField;
    qrprodutoDATA_INVENTARIO_ATUAL: TDateField;
    qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrprodutoMARGEM_MINIMA: TFloatField;
    qrprodutoPISCOFINS: TWideStringField;
    qrprodutoREFERENCIA_FORNECEDOR: TWideStringField;
    qrprodutoCOMISSAO1: TFloatField;
    qrprodutoMARGEM_DESCONTO: TFloatField;
    qrprodutoTAMANHO: TWideStringField;
    qrprodutoCOR: TWideStringField;
    qrprodutoINCIDENCIA_PISCOFINS: TWideStringField;
    qrprodutoVEIC_CHASSI: TWideStringField;
    qrprodutoVEIC_SERIE: TWideStringField;
    qrprodutoVEIC_POTENCIA: TWideStringField;
    qrprodutoVEIC_PESO_LIQUIDO: TWideStringField;
    qrprodutoVEIC_PESO_BRUTO: TWideStringField;
    qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    qrprodutoVEIC_RENAVAM: TWideStringField;
    qrprodutoVEIC_ANO_FABRICACAO: TIntegerField;
    qrprodutoVEIC_ANO_MODELO: TIntegerField;
    qrprodutoVEIC_TIPO: TWideStringField;
    qrprodutoVEIC_TIPO_PINTURA: TWideStringField;
    qrprodutoVEIC_COD_COR: TWideStringField;
    qrprodutoVEIC_COR: TWideStringField;
    qrprodutoVEIC_VIN: TWideStringField;
    qrprodutoVEIC_NUMERO_MOTOR: TWideStringField;
    qrprodutoVEIC_CMKG: TWideStringField;
    qrprodutoVEIC_CM3: TWideStringField;
    qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField;
    qrprodutoVEIC_COD_MARCA: TWideStringField;
    qrprodutoVEIC_ESPECIE: TWideStringField;
    qrprodutoVEIC_CONDICAO: TWideStringField;
    qrprodutoLOTE_FABRICACAO: TWideStringField;
    qrprodutoLOTE_VALIDADE: TDateField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TWideStringField;
    qrprodutoFARMACIA_DCB: TWideStringField;
    qrprodutoFARMACIA_ABCFARMA: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrprodutoULTIMA_COMPRA: TDateField;
    qrprodutoFARMACIA_DATAVIGENCIA: TDateField;
    qrprodutoFARMACIA_TIPO: TWideStringField;
    qrprodutoUSA_COMBUSTIVEL: TWideStringField;
    qrprodutoREFERENCIA: TWideStringField;
    qrprodutoPERDA: TFloatField;
    qrprodutoCOMPOSICAO1: TWideStringField;
    qrprodutoCOMPOSICAO2: TWideStringField;
    qrprodutoIAT: TWideStringField;
    qrprodutoIPPT: TWideStringField;
    qrprodutoSITUACAO_TRIBUTARIA: TWideStringField;
    qrprodutoFLAG_SIS: TWideStringField;
    qrprodutoFLAG_ACEITO: TWideStringField;
    qrprodutoFLAG_EST: TWideStringField;
    qrprodutoCSOSN: TWideStringField;
    qrprodutoCODORIGINAL: TWideStringField;
    qrprodutoCUSTO_ATACADO: TSingleField;
    qrprodutoUNIDADE_ATACADO: TWideStringField;
    qrprodutoQTDE_EMBALAGEMATACADO: TSingleField;
    qrprodutoPMARGEM1: TSingleField;
    qrprodutoPMARGEM2: TSingleField;
    qrprodutoPMARGEM3: TSingleField;
    qrprodutoPMARGEM4: TSingleField;
    qrprodutoPMARGEM5: TSingleField;
    qrprodutoPMARGEMATACADO1: TSingleField;
    qrprodutoPMARGEMATACADO2: TSingleField;
    qrprodutoPMARGEMATACADO3: TSingleField;
    qrprodutoPMARGEMATACADO4: TSingleField;
    qrprodutoPMARGEMATACADO5: TSingleField;
    qrprodutoPMARGEMATACADO6: TSingleField;
    qrprodutoPRECOATACADO1: TSingleField;
    qrprodutoPRECOATACADO2: TSingleField;
    qrprodutoPRECOATACADO3: TSingleField;
    qrprodutoPRECOATACADO4: TSingleField;
    qrprodutoPRECOATACADO5: TSingleField;
    qrprodutoIND_CFOP: TWideStringField;
    qrprodutoCFOP_DESC: TWideStringField;
    qrprodutoUSA_LOTE: TIntegerField;
    qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrprodutoCODCONTA: TWideStringField;
    qrprodutoIND_CFOP_VENDA_FORA: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrprodutoUSA_TB_PC: TWideStringField;
    qrprodutoATIVA: TWideStringField;
    qrprodutoCEST: TWideStringField;
    qrprodutoCODPRODUTO: TWideStringField;
    qrprodutoCODFILIAL: TWideStringField;
    qrprodutoESTOQUE_INICIAL: TFloatField;
    qrprodutoENTRADAS: TFloatField;
    qrprodutoSAIDAS: TFloatField;
    qrprodutoESTOQUE_ATUAL: TFloatField;
    qrprodutoULTIMA_ENTRADA: TDateField;
    qrprodutoULTIMA_SAIDA: TDateField;
    qrprodutoNOTA_FISCAL: TWideStringField;
    qrsugestao_compraCODIGO: TWideStringField;
    qrsugestao_compraPRODUTO: TWideStringField;
    qrsugestao_compraCODFORNECEDOR: TWideStringField;
    qrsugestao_compraCODMARCA: TWideStringField;
    qrsugestao_compraESTOQUE: TFloatField;
    qrsugestao_compraPRECOCUSTO: TFloatField;
    qrsugestao_compraDATA_ULTIMACOMPRA: TDateField;
    qrsugestao_compraDATA_ULTIMAVENDA: TDateField;
    qrsugestao_compraVENDAS: TExtendedField;
    qrsugestao_compraSUGESTAO: TExtendedField;
    query_pis_entradaQTDE: TExtendedField;
    query_pis_entradaMOVIMENTO: TIntegerField;
    query_pis_entradaCODPRODUTO: TWideStringField;
    query_pis_entradaUNITARIO: TFloatField;
    query_pis_entradaCODIGO: TWideStringField;
    query_pis_entradaPRODUTO: TWideStringField;
    query_pis_entradaCODSUBGRUPO: TWideStringField;
    query_pis_entradaPRECOCUSTO: TFloatField;
    query_pis_entradaPISCOFINS: TWideStringField;
    query_pis_entradaCST: TWideStringField;
    query_pis_entradaALIQUOTA: TFloatField;
    query_pis_entrada_resumoTOTAL: TExtendedField;
    query_pis_entrada_resumoMOVIMENTO: TIntegerField;
    query_pis_entrada_resumoDATA: TDateField;
    query_pis_saidaTOTAL: TExtendedField;
    query_pis_saidaDESCONTO: TExtendedField;
    query_pis_saidaQTDE: TExtendedField;
    query_pis_saidaMOVIMENTO: TIntegerField;
    query_pis_saidaCODPRODUTO: TWideStringField;
    query_pis_saidaUNITARIO: TFloatField;
    query_pis_saidaCODIGO: TWideStringField;
    query_pis_saidaPRODUTO: TWideStringField;
    query_pis_saidaCODSUBGRUPO: TWideStringField;
    query_pis_saidaPRECOCUSTO: TFloatField;
    query_pis_saidaPISCOFINS: TWideStringField;
    query_pis_saidaCST: TWideStringField;
    query_pis_saidaALIQUOTA: TFloatField;
    qrprodutonome_aliquota: TStringField;
    qrprodutopreco: TStringField;
    qrprodutototal: TFloatField;
    QRMOVIMENTOcliente: TStringField;
    QRMOVIMENTOMOV: TStringField;
    fsfrete: TfrxDBDataset;
    qrfrete: TZQuery;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_subgrupoChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_grupoChange(Sender: TObject);
    procedure combo_fornecedorChange(Sender: TObject);
    procedure combo_marcaChange(Sender: TObject);
    procedure combo_relatorioChange(Sender: TObject);
    procedure qrprodutoCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRMOVIMENTOCalcFields(DataSet: TDataSet);
    procedure ldataini_remarcadoKeyPress(Sender: TObject; var Key: Char);
    procedure ldatafim_remarcadoKeyPress(Sender: TObject; var Key: Char);
    procedure ldatafim_remarcadoExit(Sender: TObject);
    procedure combo_cstChange(Sender: TObject);
    procedure query_pis_entradaCalcFields(DataSet: TDataSet);
    procedure query_pis_saidaCalcFields(DataSet: TDataSet);
    procedure bdescontoClick(Sender: TObject);
    procedure query_pis_entrada_resumoCalcFields(DataSet: TDataSet);
    procedure query_pis_saida_resumoCalcFields(DataSet: TDataSet);
    procedure qricmsCalcFields(DataSet: TDataSet);
    procedure qricms1CalcFields(DataSet: TDataSet);
    procedure combo_produtoChange(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_produto2: Tfrmlista_produto2;
  vpis, vcofins: double;
  vvista, vprazo, vdesconto, vjuros: double;
  data_caixa: tdatetime;
   const
   sc_DragMove = $f012;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, xloc_subgrupo,
  xloc_grupo, xloc_fornecedor, xloc_marca, principal, xloc_cst,
  dados_inventario, xloc_produto, grupo, fornecedor, marca;

{$R *.dfm}

procedure Tfrmlista_produto2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := cafree;
end;

procedure Tfrmlista_produto2.FormShow(Sender: TObject);
begin

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO', '000099', [LOCASEINSENSITIVE]);
  data_caixa := FRMMODULO.QRCAIXA_OPERADOR.fieldbyname('data').asdatetime;

  FRMMODULO.qrfornecedor.CLOSE;
  FRMMODULO.qrfornecedor.SQL.CLEAR;
  FRMMODULO.qrfornecedor.SQL.ADD('SELECT * FROM C000009');
  FRMMODULO.qrfornecedor.OPEN;

  combo_relatorio.ItemIndex := 0;
  combo_produto.ItemIndex := 0;
  combo_grupo.ItemIndex := 0;
  combo_subgrupo.ItemIndex := 0;
  combo_fornecedor.ItemIndex := 0;
  combo_marca.ItemIndex := 0;
  combo_estoque.ItemIndex := 0;
  combo_inventario.ItemIndex := 0;

  ldataini_remarcado.Date := data_caixa;
  ldatafim_remarcado.Date := data_caixa;

end;

procedure Tfrmlista_produto2.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_produto2.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_produto2.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmlista_produto2.combo_subgrupoChange(Sender: TObject);
begin
  if combo_subgrupo.Text = 'SELECIONAR' then
  begin
    frmXloc_SUBGRUPO := tfrmXloc_SUBGRUPO.create(self);
    if combo_grupo.Text = 'TODOS' then
    begin
      parametro_pesquisa := '';
      frmXloc_SUBGRUPO.PGRUPO.Caption := 'TODOS OS GRUPOS';
    end
    else
    begin
      frmXloc_SUBGRUPO.PGRUPO.Caption := 'GRUPO: ' + combo_grupo.Text;
      parametro_pesquisa := ' and codgrupo = ''' + copy(combo_grupo.Text, 1,
        6) + '''';
    end;

    frmXloc_SUBGRUPO.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_subgrupo.Items.ADD(resultado_pesquisa1 + ' ' + RESULTADO_PESQUISA2);
      combo_subgrupo.ItemIndex := combo_subgrupo.Items.Count - 1;
    end
    else
      combo_subgrupo.ItemIndex := 0;
  end;
end;

procedure Tfrmlista_produto2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmlista_produto2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bimprimir.SetFocus;
end;

procedure Tfrmlista_produto2.bimprimirClick(Sender: TObject);
var
  situacao, PRODUTO, grupo, SUBGRUPO, fornecedor, marca, ESTOQUE, ESTOQUE1,
    INVENTARIO, CST, tipo, ordem, GRUPO2, SUBGRUPO2: string;
  v01, v07, v12, v17, v25, v27: double;

begin

  // qrproduto.LinkedFields := '';

  FRMMODULO.qrFilial.OPEN;
  vpis := FRMMODULO.qrFilial.fieldbyname('pis').AsFloat;
  vcofins := FRMMODULO.qrFilial.fieldbyname('cofins').AsFloat;

  FRMMODULO.qrrelatorio.OPEN;
  FRMMODULO.qrrelatorio.edit;

  FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA2').ASSTRING := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA3').ASSTRING := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA4').ASSTRING := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA5').ASSTRING := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA6').ASSTRING := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA7').ASSTRING := '';

  if combo_produto.Text = 'TODOS' then
    PRODUTO := ''
  else
  begin
    PRODUTO := ' and codproduto = ''' + copy(combo_produto.Text, 1, 6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA3').ASSTRING := 'PRODUTO: ' +
      combo_produto.Text;
  end;
  if combo_grupo.Text = 'TODOS' then
    grupo := ''
  else
  begin
    grupo := ' and codgrupo = ''' + copy(combo_grupo.Text, 1, 6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA3').ASSTRING := 'GRUPO: ' +
      combo_grupo.Text;
  end;
  if combo_subgrupo.Text = 'TODOS' then
    SUBGRUPO := ''
  else
  begin
    SUBGRUPO := ' and CODSUBGRUPO = ''' + copy(combo_subgrupo.Text, 1,
      6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA4').ASSTRING := 'SUBGRUPO: ' +
      combo_subgrupo.Text;
  end;
  if combo_fornecedor.Text = 'TODOS' then
    fornecedor := ''
  else
  begin
    fornecedor := ' and codfornecedor = ''' + copy(combo_fornecedor.Text, 1,
      6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA5').ASSTRING := 'FORNECEDOR: ' +
      combo_fornecedor.Text + '   ';
  end;
  if combo_marca.Text = 'TODOS' then
    marca := ''
  else
  begin
    marca := ' and codMARCA = ''' + copy(combo_marca.Text, 1, 6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA6').ASSTRING := 'MARCA: ' +
      combo_marca.Text + '   ';
  end;
  if combo_cst.Text = 'TODOS' then
    CST := ''
  else
  begin
    CST := ' and CST = ''' + copy(combo_cst.Text, 1, 3) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA6').ASSTRING := 'CST: ' +
      combo_cst.Text + '   ';
  end;

  if combo_estoque.Text = 'TODOS' then
  begin
    ESTOQUE := '';
    ESTOQUE1 := '';
  end;
  if combo_estoque.Text = 'COM ESTOQUE' then
  begin
    ESTOQUE := ' AND ESTQ.ESTOQUE_ATUAL > 0 ';
    ESTOQUE1 := ' AND ESTOQUE_INVENTARIO > 0 ';
  end;
  if combo_estoque.Text = 'ESTOQUE NEGATIVO' then
  begin
    ESTOQUE := ' AND ESTQ.ESTOQUE_ATUAL < 0 ';
    ESTOQUE1 := ' AND ESTOQUE_INVENTARIO < 0 ';
  end;
  if combo_estoque.Text = 'SEM ESTOQUE' then
  begin
    ESTOQUE := ' AND ESTQ.ESTOQUE_ATUAL < 1 ';
    ESTOQUE1 := ' AND ESTOQUE_INVENTARIO < 1 ';
  end;

  if combo_situacao.ItemIndex = 0 then
    situacao := ' and situacao <> 1';
  if combo_situacao.ItemIndex = 1 then
    situacao := ' and situacao = 1';
  if combo_situacao.ItemIndex = 2 then
    situacao := '';

  if combo_tipo.Text = 'TODOS' then
    tipo := ''
  else
    tipo := ' and tipo = ''' + combo_tipo.Text + '''';

  if COMBO_ORDEM.Text = 'PRODUTO' then
    ordem := ' PRODUTO';
  if COMBO_ORDEM.Text = 'CÓDIGO' then
    ordem := ' CODIGO';
  if COMBO_ORDEM.Text = 'CÓDIGO DE BARRAS' then
    ordem := ' CODBARRA';

  // qrproduto.LinkedFields := '';
  qrproduto.MasterFields := '';
  qrproduto.SortedFields := '';
  qrproduto.MasterSource := nil;

  if combo_relatorio.Text = 'POSIÇÃO DE ESTOQUE' then
  begin

    FRMMODULO.qrrelatorio.fieldbyname('linha2').ASSTRING := 'PERÍODO: ' +
      ldataini_remarcado.Text + ' a ' + ldatafim_remarcado.Text;

    qrposicao.CLOSE;
    qrposicao.SQL.CLEAR;
    qrposicao.SQL.ADD('select');
    qrposicao.SQL.ADD('c000025.codigo,');
    qrposicao.SQL.ADD('c000025.produto,');
    qrposicao.SQL.ADD('c000025.UNIDADE,');
    qrposicao.SQL.ADD('c000100.ESTOQUE_INiCIAL,');
    qrposicao.SQL.ADD
      ('(select sum(c000032.movimento_estoque) from c000032 where c000032.codproduto = c000025.codigo and data < :datai) saldo_anterior,');
    qrposicao.SQL.ADD
      ('(select sum(c000032.movimento_estoque) from c000032 where c000032.codproduto = c000025.codigo and data >= :datai and data <= :dataf) movimento');
    qrposicao.SQL.ADD
      ('from c000025, c000100 where c000025.codigo = c000100.codproduto');
    qrposicao.SQL.ADD(grupo + SUBGRUPO + fornecedor + marca + tipo + situacao);
    qrposicao.SQL.ADD('and c000025.data_cadastro <= :dataf');
    // qrposicao.sql.add('group by c000025.codigo,');
    // qrposicao.sql.add('c000025.produto,');
    // qrposicao.sql.add('c000025.UNIDADE,');
    // qrposicao.sql.add('c000100.ESTOQUE_INiCIAL');
    // qrposicao.sql.add('having');
    // qrposicao.sql.add('(select sum(c000032.movimento_estoque) from c000032 where c000032.codproduto = c000025.codigo and data < :datai) <> 0 or');
    // qrposicao.sql.add('(select sum(c000032.movimento_estoque) from c000032 where c000032.codproduto = c000025.codigo and data >= :datai and data <= :dataf) <> 0');
    // qrposicao.SQL.add('or (c000100.estoque_inicial > 0 )');
    qrposicao.SQL.ADD('order by c000025.produto');
    qrposicao.params.parambyname('datai').asdatetime := ldataini_remarcado.Date;
    qrposicao.params.parambyname('dataf').asdatetime := ldatafim_remarcado.Date;
    qrposicao.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'POSIÇÃO DE ESTOQUE';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000184.fr3');
    fxproduto.ShowReport;

  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - SINTÉTICA' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + CST + ' order by ' + ordem);
    qrproduto.OPEN;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELAÇÃO DE PRODUTOS - SINTÉTICA';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000025.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'ETIQUETAS' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(PRODUTO + ESTOQUE + grupo + SUBGRUPO + fornecedor + marca
      + tipo + situacao + ' order by ' + ordem);
    qrproduto.OPEN;

    {
      if qrproduto.FIELDBYNAME('precovenda').ASFLOAT > 0 then
      begin
      vvista := qrproduto.FIELDBYNAME('precovenda').ASFLOAT-(qrproduto.FIELDBYNAME('precovenda').ASFLOAT*vdesconto);
      vprazo := qrproduto.FIELDBYNAME('precovenda').ASFLOAT;
      vjuros := (((vprazo/vvista)-1)*100);
      end
      else
      vjuros := 11.11;
    }

    vvista := 10 - (10 * vdesconto);
    vprazo := 10;
    vjuros := (((vprazo / vvista) - 1) * 100);

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELAÇÃO DE PRODUTOS - ETIQUETAS';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA2').ASSTRING := 'Taxa de Juros ' +
      FORMATFLOAT('###,###,##0.00', vjuros) + '% a.m.';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000076.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ATUAL' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by ' + ordem);
    qrproduto.OPEN;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'INVENTÁRIO DE ESTOQUE ATUAL';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000026.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS DE BALANÇA' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD('and USA_BALANCA = 1 ' + grupo + SUBGRUPO + fornecedor +
      marca + ESTOQUE + tipo + situacao + ' order by ' + ordem);
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELATÓRIO DE PRODUTOS PESADOS';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000075.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - COM GRADE' then
  begin
    if combo_grupo.Text = 'TODOS' then
      grupo := ''
    else
    begin
      grupo := ' and PROD.codgrupo = ''' + copy(combo_grupo.Text, 1, 6) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA3').ASSTRING := 'GRUPO: ' +
        combo_grupo.Text;
    END;
    if combo_subgrupo.Text = 'TODOS' then
      SUBGRUPO := ''
    else
    begin
      SUBGRUPO := ' and PROD.CODSUBGRUPO = ''' + copy(combo_subgrupo.Text, 1,
        6) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA4').ASSTRING := 'SUBGRUPO: ' +
        combo_subgrupo.Text;
    end;
    if combo_fornecedor.Text = 'TODOS' then
      fornecedor := ''
    else
    begin
      fornecedor := ' and PROD.codfornecedor = ''' + copy(combo_fornecedor.Text,
        1, 6) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA5').ASSTRING := 'FORNECEDOR: ' +
        combo_fornecedor.Text + '   ';
    end;
    if combo_marca.Text = 'TODOS' then
      marca := ''
    else
    begin
      marca := ' and PROD.codMARCA = ''' + copy(combo_marca.Text, 1, 6) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA6').ASSTRING := 'MARCA: ' +
        combo_marca.Text + '   ';
    end;

    IF COMBO_ORDEM.Text = 'PRODUTO' THEN
      ordem := ' PROD.PRODUTO';
    IF COMBO_ORDEM.Text = 'CÓDIGO' THEN
      ordem := ' PROD.CODIGO';
    IF COMBO_ORDEM.Text = 'CÓDIGO DE BARRAS' THEN
      ordem := ' PROD.CODBARRA';

    qrgrupo.CLOSE;
    qrgrupo.SQL.CLEAR;
    qrgrupo.SQL.ADD
      ('SELECT * FROM C000017 INNER JOIN C000018 ON C000017.codigo = C000018.codgrupo'
      + ' INNER JOIN c000020 ON c000018.codigo = c000020.codsubgrupo');
    qrgrupo.OPEN;

    { qrgrupo.CLOSE;
      qrgrupo.SQL.CLEAR;
      qrgrupo.SQL.ADD
      ('SELECT * FROM C000017 INNER JOIN C000018 ON C000017.codigo = C000018.codgrupo');
      qrgrupo.OPEN; }

    qrproduto_grade.CLOSE;
    qrproduto_grade.SQL.CLEAR;
    qrproduto_grade.SQL.ADD
      ('select PROD.*, GRADE.*, estq.* from c000025 PROD, C000021 GRADE, c000100 estq where prod.codigo = estq.codproduto');
    qrproduto_grade.SQL.ADD('and PROD.CODIGO = GRADE.CODPRODUTO ' + grupo +
      SUBGRUPO + fornecedor + marca + ESTOQUE + tipo + situacao +
      ' and prod.usa_grade = 1 order by ' + ordem);
    qrproduto_grade.OPEN;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'PRODUTOS - ESTOQUE COM GRADE';

    fxproduto.LoadFromFile('\OneMaker\server\rel\f000027.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - COM SERIAIS' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by ' + ordem);
    qrproduto.OPEN;

    if combo_estoque.Text = 'TODOS' then
      ESTOQUE := ''
    else
    begin
      if combo_estoque.Text = 'COM ESTOQUE' then
        ESTOQUE := ' and situacao = 1 '
      else
        ESTOQUE := ' and situacao = 2 '
    end;

    qrproduto_serial.CLOSE;
    qrproduto_serial.SQL.CLEAR;
    qrproduto_serial.SQL.ADD('select * from c000022 where codigo is not null ' +
      ESTOQUE + ' order by serial');
    qrproduto_serial.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'PRODUTOS - ESTOQUE COM SERIAIS';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000028.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR FORNECEDOR' then
  begin

    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by codfornecedor, produto');
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'PRODUTOS - ESTOQUE POR FORNECEDOR';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000029.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR FORNECEDOR' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by codfornecedor, produto');
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'PRODUTOS - PREÇOS POR FORNECEDOR';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000030.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR MARCA' then
  begin

    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by codmarca, produto');
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'PRODUTOS - ESTOQUE POR FABRICANTE';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000017.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR MARCA' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by codmarca, produto');
    qrproduto.OPEN;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'PRODUTOS - PREÇOS POR FABRICANTE';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000016.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - SINTÉTICA' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by ' + ordem);
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'PRODUTOS - TABELA DE PREÇOS';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000031.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - A PRAZO' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by ' + ordem);
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'TABELA DE PREÇOS - A PRAZO';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000128.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS COM MOVIMENTAÇÃO' then
  begin
    QRMOVIMENTO.CLOSE;
    QRMOVIMENTO.SQL.CLEAR;
    QRMOVIMENTO.SQL.ADD('select * from c000032');
    QRMOVIMENTO.SQL.ADD('where');
    QRMOVIMENTO.SQL.ADD('DATA >= :data_ini and');
    QRMOVIMENTO.SQL.ADD('DATA <= :data_fim');
    QRMOVIMENTO.SQL.ADD('order by data');
    QRMOVIMENTO.parambyname('data_ini').asdatetime := ldataini_remarcado.Date;
    QRMOVIMENTO.parambyname('data_fim').asdatetime := ldatafim_remarcado.Date;
    QRMOVIMENTO.OPEN;

    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by ' + ordem);
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELAÇÃO DE PRODUTOS / MOVIMENTO';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000020.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE COMPRAS' then
  begin
    QRMOVIMENTO.CLOSE;
    QRMOVIMENTO.SQL.CLEAR;
    QRMOVIMENTO.SQL.ADD('select * from c000032 ');
    QRMOVIMENTO.SQL.ADD('where MOVIMENTO = ''1'' AND ');
    QRMOVIMENTO.SQL.ADD('DATA >= :data_ini and');
    QRMOVIMENTO.SQL.ADD('DATA <= :data_fim');
    QRMOVIMENTO.parambyname('data_ini').asdatetime := ldataini_remarcado.Date;
    QRMOVIMENTO.parambyname('data_fim').asdatetime := ldatafim_remarcado.Date;
    QRMOVIMENTO.OPEN;

    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by ' + ordem);
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELAÇÃO DE COMPRAS';
    FRMMODULO.qrrelatorio.fieldbyname('linha2').ASSTRING := 'PERÍODO: ' +
      ldataini_remarcado.Text + ' a ' + ldatafim_remarcado.Text;

    fxproduto.LoadFromFile('\OneMaker\server\rel\f000020.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'SUGESTÃO DE COMPRAS' then
  begin

    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' ORDER by codfornecedor,produto');
    qrproduto.OPEN;

    bar.PartsComplete := 0;
    bar.TotalParts := qrproduto.RecordCount;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'SUGESTÃO DE COMPRAS';
    FRMMODULO.qrrelatorio.fieldbyname('linha3').ASSTRING := 'PERÍODO: ' +
      ldataini_remarcado.Text + ' a ' + ldatafim_remarcado.Text;
    FRMMODULO.qrrelatorio.fieldbyname('linha4').ASSTRING :=
      'REFERENTE AS VENDAS DOS ULTIMOS ' +
      inttostr(TRUNC(ldatafim_remarcado.Date - ldataini_remarcado.Date))
      + ' DIAS';

    fxproduto.LoadFromFile('\OneMaker\server\rel\f000130.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR GRUPO/SUBGRUPO' then
  begin
    qrproduto.MasterSource := dssubgrupo;
    qrproduto.MasterFields := 'codigo';
    qrproduto.IndexFieldNames := 'codsubgrupo';
    // qrproduto.LinkedFields := 'codsubgrupo';

    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by prod.codgrupo, prod.codsubgrupo, prod.produto');
    qrproduto.OPEN;

    qrproduto.SortedFields := 'produto';

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELAÇÃO DE ESTOQUE - GRUPO/SUBGRUPO';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000018.fr3');
    fxproduto.ShowReport;
    qrproduto.MasterSource := nil;
    qrproduto.MasterFields := '';
    qrproduto.IndexFieldNames := '';
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - ESTOQUE MINIMO' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and estoqueminimo > 0 and ((estoqueminimo-estq.estoque_atual) > 0)');
    qrproduto.SQL.ADD(grupo + SUBGRUPO + fornecedor + marca + tipo + situacao +
      ' order by ' + ordem);
    qrproduto.OPEN;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELAÇÃO DE ESTOQUE - ESTOQUE MINIMO';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000101.fr3');
    fxproduto.ShowReport;
    qrproduto.MasterSource := nil;
    qrproduto.MasterFields := '';
    qrproduto.IndexFieldNames := '';
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS POR ALÍQUOTA' then
  begin

    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by aliquota,produto');
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELAÇÃO DE PRODUTOS POR ALÍQUOTA';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000102.fr3');
    fxproduto.ShowReport;
    qrproduto.MasterSource := nil;
    qrproduto.MasterFields := '';
    qrproduto.IndexFieldNames := '';
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR GRUPO/SUBGRUPO' then
  begin

    qrproduto.MasterSource := dssubgrupo;
    qrproduto.MasterFields := 'codigo';
    qrproduto.IndexFieldNames := 'codsubgrupo';
    // qrproduto.LinkedFields := 'codsubgrupo';

    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by prod.codgrupo, prod.codsubgrupo, prod.produto');
    qrproduto.OPEN;

    qrproduto.SortedFields := 'produto';

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'TABELA DE PREÇOS - GRUPO/SUBGRUPO';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000019.fr3');
    fxproduto.ShowReport;
    qrproduto.MasterSource := nil;
    qrproduto.MasterFields := '';
    qrproduto.IndexFieldNames := '';
  end;

  if combo_relatorio.Text = 'PRODUTOS REMARCADOS' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and ');
    qrproduto.SQL.ADD('DATA_REMARCACAO_VENDA >= :data_ini and');
    qrproduto.SQL.ADD('DATA_REMARCACAO_VENDA <= :data_fim');
    qrproduto.SQL.ADD('order by ' + ordem);
    qrproduto.parambyname('data_ini').asdatetime := ldataini_remarcado.Date;
    qrproduto.parambyname('data_fim').asdatetime := ldatafim_remarcado.Date;
    qrproduto.OPEN;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'PRODUTOS REMARCADOS';
    FRMMODULO.qrrelatorio.fieldbyname('linha2').ASSTRING := 'PERÍODO: ' +
      ldataini_remarcado.Text + ' a ' + ldatafim_remarcado.Text;
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000025.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS SEM PIS/COFINS' then
  begin

    if combo_subgrupo.Text = 'TODOS' then
      SUBGRUPO := ''
    else
    begin
      SUBGRUPO := ' and p.codsubgrupo = ''' + copy(combo_subgrupo.Text, 1,
        6) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA4').ASSTRING := 'SUBGRUPO: ' +
        combo_subgrupo.Text;
    end;
    if combo_cst.Text = 'TODOS' then
      CST := ''
    else
    begin
      CST := ' and p.cst = ''' + copy(combo_cst.Text, 1, 3) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA6').ASSTRING := 'CST: ' +
        combo_cst.Text + '   ';
    end;

    query_pis_entrada.CLOSE;
    query_pis_entrada.SQL.CLEAR;
    query_pis_entrada.SQL.ADD
      ('select sum(m.qtde) qtde,m.movimento,  m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_entrada.SQL.ADD
      ('from c000032 m, c000025 p where m.movimento in (1) and p.codigo = m.codproduto');
    query_pis_entrada.SQL.ADD
      ('and p.piscofins = ''N'' and m.DATA >= :data_ini and m.DATA <= :data_fim '
      + SUBGRUPO + CST);
    query_pis_entrada.parambyname('data_ini').asdatetime :=
      ldataini_remarcado.Date;
    query_pis_entrada.parambyname('data_fim').asdatetime :=
      ldatafim_remarcado.Date;
    query_pis_entrada.SQL.ADD
      ('group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_entrada.SQL.ADD('order by m.movimento, p.codsubgrupo,p.produto');
    query_pis_entrada.OPEN;
    {
      query_pis_saida.close;
      query_pis_saida.sql.clear;
      query_pis_saida.sql.add('select sum(m.qtde) qtde,m.movimento,  m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
      query_pis_saida.sql.add('from c000032 m, c000025 p where m.movimento in (2) and p.codigo = m.codproduto');
      query_pis_saida.sql.add('and p.piscofins = ''N'' and m.DATA >= :data_ini and m.DATA <= :data_fim');
      query_pis_saida.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
      query_pis_saida.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
      query_pis_saida.sql.add('group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
      query_pis_saida.sql.add('order by m.movimento, p.codsubgrupo,p.produto');
      query_pis_saida.open;
    }

    query_pis_saida.CLOSE;
    query_pis_saida.SQL.CLEAR;
    query_pis_saida.SQL.ADD
      ('select sum(m.total-m.desconto) total,sum(m.desconto) desconto,sum(m.qtde) qtde,m.movimento, m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_saida.SQL.ADD
      ('from c000032 m, c000025 p where m.movimento = 2 and p.codigo = m.codproduto');
    query_pis_saida.SQL.ADD
      ('and p.piscofins = ''N'' and m.DATA >= :data_ini and m.DATA <= :data_fim '
      + SUBGRUPO + CST);
    query_pis_saida.parambyname('data_ini').asdatetime :=
      ldataini_remarcado.Date;
    query_pis_saida.parambyname('data_fim').asdatetime :=
      ldatafim_remarcado.Date;
    query_pis_saida.SQL.ADD
      ('group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_saida.SQL.ADD('order by m.movimento, p.codsubgrupo,p.produto');
    query_pis_saida.OPEN;

    bar.PartsComplete := 0;
    bar.TotalParts := query_pis_saida.RecordCount;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELAÇÃO DE COMPRAS/VENDAS DE MERCADORIAS SEM PIS/COFINS';
    FRMMODULO.qrrelatorio.fieldbyname('linha3').ASSTRING := 'PERÍODO: ' +
      ldataini_remarcado.Text + ' a ' + ldatafim_remarcado.Text;

    fxproduto.LoadFromFile('\OneMaker\server\rel\f000142_1.fr3');
    fxproduto.ShowReport;

  end;

  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS COM PIS/COFINS' then
  begin

    if combo_subgrupo.Text = 'TODOS' then
      SUBGRUPO := ''
    else
    begin
      SUBGRUPO := ' and p.codsubgrupo = ''' + copy(combo_subgrupo.Text, 1,
        6) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA4').ASSTRING := 'SUBGRUPO: ' +
        combo_subgrupo.Text;
    end;
    if combo_cst.Text = 'TODOS' then
      CST := ''
    else
    begin
      CST := ' and p.cst = ''' + copy(combo_cst.Text, 1, 3) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA6').ASSTRING := 'CST: ' +
        combo_cst.Text + '   ';
    end;

    query_pis_entrada.CLOSE;
    query_pis_entrada.SQL.CLEAR;
    query_pis_entrada.SQL.ADD
      ('select sum(m.qtde) qtde,m.movimento,  m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_entrada.SQL.ADD
      ('from c000032 m, c000025 p where m.movimento in (1) and p.codigo = m.codproduto');
    query_pis_entrada.SQL.ADD
      ('and p.piscofins = ''S'' and m.DATA >= :data_ini and m.DATA <= :data_fim '
      + SUBGRUPO + CST);
    query_pis_entrada.parambyname('data_ini').asdatetime :=
      ldataini_remarcado.Date;
    query_pis_entrada.parambyname('data_fim').asdatetime :=
      ldatafim_remarcado.Date;
    query_pis_entrada.SQL.ADD
      ('group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_entrada.SQL.ADD('order by m.movimento, p.codsubgrupo,p.produto');
    query_pis_entrada.OPEN;

    query_pis_saida.CLOSE;
    query_pis_saida.SQL.CLEAR;
    query_pis_saida.SQL.ADD
      ('select sum(m.total-m.desconto) total,sum(m.desconto) desconto,sum(m.qtde) qtde,m.movimento, m.codproduto,m.unitario,');
    query_pis_saida.SQL.ADD
      ('p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_saida.SQL.ADD
      ('from c000032 m, c000025 p where m.movimento = 2 and p.codigo = m.codproduto');
    query_pis_saida.SQL.ADD
      ('and p.piscofins = ''S'' and m.DATA >= :data_ini and m.DATA <= :data_fim '
      + SUBGRUPO + CST);
    query_pis_saida.parambyname('data_ini').asdatetime :=
      ldataini_remarcado.Date;
    query_pis_saida.parambyname('data_fim').asdatetime :=
      ldatafim_remarcado.Date;
    query_pis_saida.SQL.ADD
      ('group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_saida.SQL.ADD('order by m.movimento, p.codsubgrupo,p.produto');
    query_pis_saida.OPEN;

    bar.PartsComplete := 0;
    bar.TotalParts := query_pis_saida.RecordCount;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELAÇÃO DE COMPRAS/VENDAS DE MERCADORIAS COM PIS/COFINS';
    FRMMODULO.qrrelatorio.fieldbyname('linha3').ASSTRING := 'PERÍODO: ' +
      ldataini_remarcado.Text + ' a ' + ldatafim_remarcado.Text;

    fxproduto.LoadFromFile('\OneMaker\server\rel\f000142.fr3');
    fxproduto.ShowReport;

  end;

  if combo_relatorio.Text = 'RESUMO DE PRODUTOS SEM PIS/COFINS' then
  begin

    query_pis_entrada_resumo.CLOSE;
    query_pis_entrada_resumo.SQL.CLEAR;
    query_pis_entrada_resumo.SQL.ADD
      ('select sum(m.qtde*p.precocusto) TOTAL,m.movimento,  m.DATA');
    query_pis_entrada_resumo.SQL.ADD
      ('from c000032 m, c000025 p where m.movimento in (1) and p.codigo = m.codproduto');
    query_pis_entrada_resumo.SQL.ADD
      ('and p.piscofins = ''N'' and m.DATA >= :data_ini and m.DATA <= :data_fim');
    query_pis_entrada_resumo.parambyname('data_ini').asdatetime :=
      ldataini_remarcado.Date;
    query_pis_entrada_resumo.parambyname('data_fim').asdatetime :=
      ldatafim_remarcado.Date;
    query_pis_entrada_resumo.SQL.ADD('group by m.movimento,M.DATA');
    query_pis_entrada_resumo.SQL.ADD('order by m.movimento,M.DATA');
    query_pis_entrada_resumo.OPEN;

    query_pis_saida_resumo.CLOSE;
    query_pis_saida_resumo.SQL.CLEAR;
    query_pis_saida_resumo.SQL.ADD
      ('select sum(m.qtde*p.precocusto) TOTAL,m.movimento,  m.DATA');
    query_pis_saida_resumo.SQL.ADD
      ('from c000032 m, c000025 p where m.movimento in (2) and p.codigo = m.codproduto');
    query_pis_saida_resumo.SQL.ADD
      ('and p.piscofins = ''N'' and m.DATA >= :data_ini and m.DATA <= :data_fim');
    query_pis_saida_resumo.parambyname('data_ini').asdatetime :=
      ldataini_remarcado.Date;
    query_pis_saida_resumo.parambyname('data_fim').asdatetime :=
      ldatafim_remarcado.Date;
    query_pis_saida_resumo.SQL.ADD('group by m.movimento,M.DATA');
    query_pis_saida_resumo.SQL.ADD('order by m.movimento,M.DATA');
    query_pis_saida_resumo.OPEN;

    bar.PartsComplete := 0;
    bar.TotalParts := query_pis_saida_resumo.RecordCount;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RESUMO DE COMPRAS/VENDAS DE MERCADORIAS SEM PIS/COFINS';
    FRMMODULO.qrrelatorio.fieldbyname('linha3').ASSTRING := 'PERÍODO: ' +
      ldataini_remarcado.Text + ' a ' + ldatafim_remarcado.Text;

    fxproduto.LoadFromFile('\OneMaker\server\rel\f000142_3.fr3');
    fxproduto.ShowReport;

  end;

  if combo_relatorio.Text = 'RESUMO DE PRODUTOS COM PIS/COFINS' then
  begin

    query_pis_entrada_resumo.CLOSE;
    query_pis_entrada_resumo.SQL.CLEAR;
    query_pis_entrada_resumo.SQL.ADD
      ('select sum(m.total-m.desconto) TOTAL,m.movimento,  m.DATA');
    query_pis_entrada_resumo.SQL.ADD
      ('from c000032 m, c000025 p where m.movimento in (1) and p.codigo = m.codproduto');
    query_pis_entrada_resumo.SQL.ADD
      ('and p.piscofins = ''S'' and m.DATA >= :data_ini and m.DATA <= :data_fim');
    query_pis_entrada_resumo.parambyname('data_ini').asdatetime :=
      ldataini_remarcado.Date;
    query_pis_entrada_resumo.parambyname('data_fim').asdatetime :=
      ldatafim_remarcado.Date;
    query_pis_entrada_resumo.SQL.ADD('group by m.movimento,M.DATA');
    query_pis_entrada_resumo.SQL.ADD('order by m.movimento,M.DATA');
    query_pis_entrada_resumo.OPEN;

    query_pis_saida_resumo.CLOSE;
    query_pis_saida_resumo.SQL.CLEAR;
    // query_pis_saida_resumo.sql.add('select sum(m.qtde*p.precocusto) TOTAL,m.movimento,  m.DATA');
    query_pis_saida_resumo.SQL.ADD
      ('select sum(m.total-m.desconto) TOTAL,m.movimento,  m.DATA');
    query_pis_saida_resumo.SQL.ADD
      ('from c000032 m, c000025 p where m.movimento in (2) and p.codigo = m.codproduto');
    query_pis_saida_resumo.SQL.ADD
      ('and p.piscofins = ''S'' and m.DATA >= :data_ini and m.DATA <= :data_fim');
    query_pis_saida_resumo.parambyname('data_ini').asdatetime :=
      ldataini_remarcado.Date;
    query_pis_saida_resumo.parambyname('data_fim').asdatetime :=
      ldatafim_remarcado.Date;
    query_pis_saida_resumo.SQL.ADD('group by m.movimento,M.DATA');
    query_pis_saida_resumo.SQL.ADD('order by m.movimento,M.DATA');
    query_pis_saida_resumo.OPEN;

    bar.PartsComplete := 0;
    bar.TotalParts := query_pis_saida_resumo.RecordCount;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'RELAÇÃO DE COMPRAS/VENDAS DE MERCADORIAS COM PIS/COFINS';
    FRMMODULO.qrrelatorio.fieldbyname('linha3').ASSTRING := 'PERÍODO: ' +
      ldataini_remarcado.Text + ' a ' + ldatafim_remarcado.Text;

    fxproduto.LoadFromFile('\OneMaker\server\rel\f000142_2.fr3');
    fxproduto.ShowReport;

  end;

  (* INVENTARIO *)

  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ANTERIOR' then
  begin
    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE1 + grupo + SUBGRUPO + fornecedor + marca + tipo +
      situacao + ' order by ' + ordem);
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'INVENTÁRIO DE ESTOQUE ANTERIOR';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000098.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ANTERIOR POR CST' then
  begin

    qrproduto.CLOSE;
    qrproduto.SQL.CLEAR;
    qrproduto.SQL.ADD
      ('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.SQL.ADD(ESTOQUE1 + grupo + SUBGRUPO + CST + fornecedor + marca +
      tipo + situacao + ' order by CST, produto');
    qrproduto.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'INVENTÁRIO DE ESTOQUE ANTERIOR POR CST';
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000103.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO COM PREÇOS (VENDA/SUGERIDO/LUCRO 0)' then
  begin
    qrproduto_preco.CLOSE;
    qrproduto_preco.SQL.CLEAR;
    qrproduto_preco.SQL.ADD
      ('select prod.codigo,prod.codbarra,prod.produto, prod.precovenda, prod.unidade, nf.codproduto, prec.LUCRO, PREC.PRECO_VENDA SUGERIDO from');
    qrproduto_preco.SQL.ADD('c000025 prod,');
    qrproduto_preco.SQL.ADD('c000026 prec,');
    qrproduto_preco.SQL.ADD('c000088 nf');
    qrproduto_preco.SQL.ADD('where');
    qrproduto_preco.SQL.ADD('prod.codigo = prec.codproduto');
    qrproduto_preco.SQL.ADD('and prod.codigo = nf.codproduto');
    qrproduto_preco.SQL.ADD('and nf.data between :datai and :dataf');
    qrproduto_preco.SQL.ADD
      ('and prec.data_alteracao between :datai and :dataf');
    qrproduto_preco.SQL.ADD(ESTOQUE + grupo + SUBGRUPO + fornecedor + marca +
      tipo + situacao);
    qrproduto_preco.SQL.ADD
      ('group by prod.codigo,prod.codbarra,prod.produto, prod.precovenda, prod.unidade, nf.codproduto, prec.LUCRO , sugerido');
    qrproduto_preco.SQL.ADD('order by ' + ordem);
    qrproduto_preco.parambyname('datai').asdatetime := ldataini_remarcado.Date;
    qrproduto_preco.parambyname('dataf').asdatetime := ldatafim_remarcado.Date;
    qrproduto_preco.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING :=
      'PRODUTOS - TABELA DE PREÇOS';
    FRMMODULO.qrrelatorio.fieldbyname('linha3').ASSTRING := 'PERÍODO: ' +
      ldataini_remarcado.Text + ' a ' + ldatafim_remarcado.Text;
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000190.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RESUMO FISCAL' then

  begin

    {
      qrnota_entrada.close;
      qrnota_entrada.sql.clear;
      qrnota_entrada.SQL.add('select codigo,codempresa,codfornecedor,numero,total_nota,credito_icms,');
      qrnota_entrada.SQL.add('pis,cofins,data_lancamento,data_emissao,');
      qrnota_entrada.SQL.add('( select sum(subtotal) subtotal from c000088 where codnota = n.codigo and (pis+cofins) > 0 )');
      qrnota_entrada.SQL.add('from c000087 n');
      qrnota_entrada.SQL.add('where data_lancamento BETWEEN :datai and :dataf order by DATA_LANCAMENTO');
      qrnota_entrada.params.ParamByName('datai').asdatetime := ldataini_remarcado.date;
      qrnota_entrada.params.ParamByName('dataf').asdatetime := ldatafim_remarcado.date;
      qrnota_entrada.open;
    }

    qrnota_entrada.CLOSE;
    qrnota_entrada.SQL.CLEAR;
    qrnota_entrada.SQL.ADD
      ('select codigo,codempresa,codfornecedor,numero,total_nota,base_icms,valor_icms,');
    qrnota_entrada.SQL.ADD
      ('credito_icms,pis,cofins,data_lancamento,data_emissao,');
    qrnota_entrada.SQL.ADD
      ('( select sum(total) subtotal from c000088 where codnota = n.codigo and (pis+cofins) > 0 )');
    qrnota_entrada.SQL.ADD('from c000087 n');
    qrnota_entrada.SQL.ADD
      ('where data_lancamento BETWEEN :datai and :dataf order by DATA_LANCAMENTO');
    qrnota_entrada.params.parambyname('datai').asdatetime :=
      ldataini_remarcado.Date;
    qrnota_entrada.params.parambyname('dataf').asdatetime :=
      ldatafim_remarcado.Date;
    qrnota_entrada.OPEN;

    /// //////////////////////////////////////////////// calcula imposto

    qricms1.CLOSE;
    qricms1.SQL.CLEAR;
    qricms1.SQL.ADD('SELECT * FROM sintegra_rEG60');
    qricms1.SQL.ADD
      ('where (data_emissao BETWEEN :datahora_ini AND :datahora_fim)');
    qricms1.SQL.ADD('ORDER BY data_emissao,nro_serie_eqp ');
    qricms1.parambyname('datahora_ini').asdatetime := ldataini_remarcado.Date;
    qricms1.parambyname('datahora_fim').asdatetime := ldatafim_remarcado.Date;
    qricms1.OPEN;

    if qricms1.RecordCount > 0 then
    begin
      bar.Visible := Enabled;
      bar.PartsComplete := 0;
      bar.TotalParts := qricms1.RecordCount;

      v01 := 0;
      v07 := 0;
      v12 := 0;
      v17 := 0;
      v25 := 0;
      v27 := 0;

      while not qricms1.Eof do
      begin

        // base01
        if qricms1ALIQUOTA01.AsFloat = 7 then
        begin
          v07 := v07 + qricms1BASE01.AsFloat
        end
        else if qricms1ALIQUOTA01.AsFloat = 12 then
        begin
          v12 := v12 + qricms1BASE01.AsFloat
        end
        else if qricms1ALIQUOTA01.AsFloat = 17 then
        begin
          v17 := v17 + qricms1BASE01.AsFloat
        end
        else if qricms1ALIQUOTA01.AsFloat = 25 then
        begin
          v25 := v25 + qricms1BASE01.AsFloat
        end
        else if qricms1ALIQUOTA01.AsFloat = 27 then
        begin
          v27 := v27 + qricms1BASE01.AsFloat
        end;
        // base02
        if qricms1ALIQUOTA02.AsFloat = 7 then
        begin
          v07 := v07 + qricms1BASE02.AsFloat
        end
        else if qricms1ALIQUOTA02.AsFloat = 12 then
        begin
          v12 := v12 + qricms1BASE02.AsFloat
        end
        else if qricms1ALIQUOTA02.AsFloat = 17 then
        begin
          v17 := v17 + qricms1BASE02.AsFloat
        end
        else if qricms1ALIQUOTA02.AsFloat = 25 then
        begin
          v25 := v25 + qricms1BASE02.AsFloat
        end
        else if qricms1ALIQUOTA02.AsFloat = 27 then
        begin
          v27 := v27 + qricms1BASE02.AsFloat
        end;
        // base03
        if qricms1ALIQUOTA03.AsFloat = 7 then
        begin
          v07 := v07 + qricms1BASE03.AsFloat
        end
        else if qricms1ALIQUOTA03.AsFloat = 12 then
        begin
          v12 := v12 + qricms1BASE03.AsFloat
        end
        else if qricms1ALIQUOTA03.AsFloat = 17 then
        begin
          v17 := v17 + qricms1BASE03.AsFloat
        end
        else if qricms1ALIQUOTA03.AsFloat = 25 then
        begin
          v25 := v25 + qricms1BASE03.AsFloat
        end
        else if qricms1ALIQUOTA03.AsFloat = 27 then
        begin
          v27 := v27 + qricms1BASE03.AsFloat
        end;
        // base04
        if qricms1ALIQUOTA04.AsFloat = 7 then
        begin
          v07 := v07 + qricms1BASE04.AsFloat
        end
        else if qricms1ALIQUOTA04.AsFloat = 12 then
        begin
          v12 := v12 + qricms1BASE04.AsFloat
        end
        else if qricms1ALIQUOTA04.AsFloat = 17 then
        begin
          v17 := v17 + qricms1BASE04.AsFloat
        end
        else if qricms1ALIQUOTA04.AsFloat = 25 then
        begin
          v25 := v25 + qricms1BASE04.AsFloat
        end
        else if qricms1ALIQUOTA04.AsFloat = 27 then
        begin
          v27 := v27 + qricms1BASE04.AsFloat
        end;
        // base05
        if qricms1ALIQUOTA05.AsFloat = 7 then
        begin
          v07 := v07 + qricms1BASE05.AsFloat
        end
        else if qricms1ALIQUOTA05.AsFloat = 12 then
        begin
          v12 := v12 + qricms1BASE05.AsFloat
        end
        else if qricms1ALIQUOTA05.AsFloat = 17 then
        begin
          v17 := v17 + qricms1BASE05.AsFloat
        end
        else if qricms1ALIQUOTA05.AsFloat = 25 then
        begin
          v25 := v25 + qricms1BASE05.AsFloat
        end
        else if qricms1ALIQUOTA05.AsFloat = 27 then
        begin
          v27 := v27 + qricms1BASE05.AsFloat
        end;
        qricms1.Next;
        bar.PartsComplete := bar.PartsComplete + 1;
      end;
      Application.ProcessMessages;

      bar.PartsComplete := 0;
      bar.Visible := False;

      if v07 > 0 then
      begin
        qricms.OPEN;
        qricms.Append;
        qricmsaliquota.AsFloat := 7;
        qricmstotal.AsFloat := v07;
        // qricmsimposto.AsFloat := v07 * 7 / 100;
        qricms.Post;
      end;
      if v12 > 0 then
      begin
        qricms.OPEN;
        qricms.Append;
        qricmsaliquota.AsFloat := 12;
        qricmstotal.AsFloat := v12;
        // qricmsimposto.AsFloat := v12 * 12 / 100;
        qricms.Post;
      end;
      if v17 > 0 then
      begin
        qricms.OPEN;
        qricms.Append;
        qricmsaliquota.AsFloat := 17;
        qricmstotal.AsFloat := v17;
        // qricmsimposto.AsFloat := v17 * 17 / 100;
        qricms.Post;
      end;
      if v25 > 0 then
      begin
        qricms.OPEN;
        qricms.Append;
        qricmsaliquota.AsFloat := 25;
        qricmstotal.AsFloat := v25;
        // qricmsimposto.AsFloat := v25 * 25 / 100;
        qricms.Post;
      end;
      if v27 > 0 then
      begin
        qricms.OPEN;
        qricms.Append;
        qricmsaliquota.AsFloat := 27;
        qricmstotal.AsFloat := v27;
        // qricmsimposto.AsFloat := v27 * 27 / 100;
        qricms.Post;
      end;
    end;

    /// ////////////////////////////////////////////////

    qrimposto_vendas.CLOSE;
    qrimposto_vendas.SQL.CLEAR;
    qrimposto_vendas.SQL.ADD
      ('SELECT SUM(TOTAL) TOTAL, SUM(CREDITO_ICMS) CREDITO_ICMS, SUM(PIS) PIS , SUM(COFINS) COFINS');
    qrimposto_vendas.SQL.ADD
      ('from c000032 where data BETWEEN :datai and :dataf AND MOVIMENTO = 2');
    // qrimposto_vendas.SQL.add('and cupom_modelo = ''2D''');
    qrimposto_vendas.params.parambyname('datai').asdatetime :=
      ldataini_remarcado.Date;
    qrimposto_vendas.params.parambyname('dataf').asdatetime :=
      ldatafim_remarcado.Date;
    qrimposto_vendas.OPEN;

    QUERY.CLOSE;
    QUERY.SQL.CLEAR;
    QUERY.SQL.ADD
      ('select sum(credito_icms) credito_icms,sum(pis) pis,sum(cofins) cofins from c000087');
    QUERY.SQL.ADD('where data_lancamento BETWEEN :datai and :dataf');
    QUERY.params.parambyname('datai').asdatetime := ldataini_remarcado.Date;
    QUERY.params.parambyname('dataf').asdatetime := ldatafim_remarcado.Date;
    QUERY.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('VALOR1').AsFloat :=
      QUERY.fieldbyname('credito_icms').AsFloat;
    FRMMODULO.qrrelatorio.fieldbyname('VALOR2').AsFloat :=
      QUERY.fieldbyname('pis').AsFloat;
    FRMMODULO.qrrelatorio.fieldbyname('VALOR3').AsFloat :=
      QUERY.fieldbyname('cofins').AsFloat;

    qricms.First;
    while not qricms.Eof do
    begin
      FRMMODULO.qrrelatorio.fieldbyname('VALOR4').AsFloat :=
        FRMMODULO.qrrelatorio.fieldbyname('VALOR4').AsFloat +
        qricmsimposto.AsFloat;
      qricms.Next;
    end;
    qricms.First;

    FRMMODULO.qrrelatorio.fieldbyname('VALOR5').AsFloat :=
      qrimposto_vendasPIS.AsFloat;
    FRMMODULO.qrrelatorio.fieldbyname('VALOR6').AsFloat :=
      qrimposto_vendasCOFINS.AsFloat;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').ASSTRING := 'RESUMO FISCAL';
    FRMMODULO.qrrelatorio.fieldbyname('linha2').ASSTRING := 'PERÍODO: ' +
      ldataini_remarcado.Text + ' a ' + ldatafim_remarcado.Text;

    fxproduto.LoadFromFile('\OneMaker\server\rel\f000143.fr3');
    fxproduto.ShowReport;

    {
      vcredito_icms := frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat;
      vpis := frmmodulo.qrpreco.fieldbyname('PIS').asfloat;
      vcofins := frmmodulo.qrpreco.fieldbyname('COFINS').asfloat;
    }
    qricms.First;
    while not qricms.Eof do
    begin
      qricms.Delete;
    end;
  end;

  if combo_relatorio.Text = 'REGISTRO DE CONTROLE DA PRODUÇÃO E DO ESTOQUE' then
  begin

    qrproducao.CLOSE;
    qrproducao.SQL.CLEAR;
    qrproducao.SQL.ADD
      ('select p.codigo,p.produto,p.unidade,p.classificacao_fiscal,');
    qrproducao.SQL.ADD
      ('m.codnota,m.codproduto, m.qtde, m.unitario,m.total,m.ipi_valor as ipi,');
    qrproducao.SQL.ADD('n.codigo,n.numero,n.data_emissao,n.data_lancamento,');
    qrproducao.SQL.ADD('s.codigo, s.numero, s.data,');
    qrproducao.SQL.ADD
      ('i.codnota, i.codproduto, i.qtde, i.unitario, i.total, i.ipi as ipi');
    qrproducao.SQL.ADD
      ('from c000025 p , c000088 m, c000087 n, c000061 s, c000062 i');
    qrproducao.SQL.ADD('where m.codproduto = p.codigo');
    qrproducao.SQL.ADD('and i.codproduto = p.codigo');
    qrproducao.SQL.ADD('and m.codnota = n.codigo');
    qrproducao.SQL.ADD('and s.codigo = i.codnota');
    qrproducao.SQL.ADD('order by m.codproduto, n.data_lancamento');
    qrproducao.OPEN;

    fxproduto.LoadFromFile('\OneMaker\server\rel\f000196.fr3');
    fxproduto.ShowReport;
  end;
  frmPrincipal.logUC('Abriu Relatorio Produtos - ' + frmPrincipal.RemoveAcentos
    (combo_relatorio.Text), 0);

end;

procedure Tfrmlista_produto2.combo_grupoChange(Sender: TObject);
begin
  if combo_grupo.Text = 'SELECIONAR' then
  begin

    frmXloc_GRUPO := tfrmXloc_GRUPO.create(self);
    frmXloc_GRUPO.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_grupo.Items.ADD(resultado_pesquisa1 + ' ' + RESULTADO_PESQUISA2);
      combo_grupo.ItemIndex := combo_grupo.Items.Count - 1;
    end
    else
      combo_grupo.ItemIndex := 0;
  end;
end;

procedure Tfrmlista_produto2.combo_fornecedorChange(Sender: TObject);
begin
  if combo_fornecedor.Text = 'SELECIONAR' then
  begin
    parametro_pesquisa := '';
    frmxloc_Fornecedor := tfrmxloc_Fornecedor.create(self);
    frmxloc_Fornecedor.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_fornecedor.Items.ADD(resultado_pesquisa1 + ' ' +
        RESULTADO_PESQUISA2);
      combo_fornecedor.ItemIndex := combo_fornecedor.Items.Count - 1;
    end
    else
      combo_fornecedor.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_produto2.combo_marcaChange(Sender: TObject);
begin
  if combo_marca.Text = 'SELECIONAR' then
  begin
    frmxloc_marca := tfrmxloc_marca.create(self);
    frmxloc_marca.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_marca.Items.ADD(resultado_pesquisa1 + ' ' + RESULTADO_PESQUISA2);
      combo_marca.ItemIndex := combo_marca.Items.Count - 1;
    end
    else
      combo_marca.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_produto2.combo_relatorioChange(Sender: TObject);
begin

  if (combo_relatorio.ItemIndex = 1) or (combo_relatorio.ItemIndex = 3) or
    (combo_relatorio.ItemIndex = 4) then
  begin
    combo_inventario.Enabled := TRUE;
  end
  else
  begin
    combo_inventario.Enabled := False;
  end;

  if (combo_relatorio.ItemIndex = 2) or (combo_relatorio.ItemIndex = 0) then
  begin
    combo_cst.Enabled := TRUE;
  end
  else
  begin
    combo_cst.Enabled := False;
  end;

  if (combo_relatorio.ItemIndex = 20) or (combo_relatorio.ItemIndex = 21) or
    (combo_relatorio.ItemIndex = 22) or (combo_relatorio.ItemIndex = 11) or
    (combo_relatorio.ItemIndex = 17) or (combo_relatorio.ItemIndex = 18)  then
  begin
    grem.Visible := TRUE;
    grem.Enabled := TRUE;
    if (combo_relatorio.ItemIndex = 21) or (combo_relatorio.ItemIndex = 22) then
    begin
      combo_cst.Enabled := TRUE;
      combo_grupo.Enabled := False;
      combo_fornecedor.Enabled := False;
      combo_marca.Enabled := False;
    end
    else
    begin
      combo_cst.Enabled := False;
      combo_grupo.Enabled := TRUE;
      combo_fornecedor.Enabled := TRUE;
      combo_marca.Enabled := TRUE;
    end;
  end
  else
  begin
    grem.Visible := False;
    combo_grupo.Enabled := TRUE;
    combo_fornecedor.Enabled := TRUE;
    combo_marca.Enabled := TRUE;
  end;

  if (combo_relatorio.Text = 'POSIÇÃO DE ESTOQUE') or
    (combo_relatorio.Text = 'RELAÇÃO COM PREÇOS (VENDA/SUGERIDO/LUCRO 0)') or
    (combo_relatorio.Text = 'SUGESTÃO DE COMPRAS') then
  begin
    grem.Visible := TRUE;
    grem.Enabled := TRUE;
  end;

  if (combo_relatorio.Text = 'RESUMO FISCAL') then
  begin
    grem.Visible := TRUE;
    grem.Enabled := TRUE;

    ltext_remarcado.Visible := TRUE;
    ltext_remarcado.Top := 293;
    ltext_remarcado.Caption := 'Resumo Fiscal:';
  end
  else
  begin
    ltext_remarcado.Visible := False;
  end;

  if (combo_relatorio.Text = 'REGISTRO DE CONTROLE DA PRODUÇÃO E DO ESTOQUE')
  then
    combo_produto.Enabled := TRUE
  else
    combo_produto.Enabled := False;

  if combo_relatorio.ItemIndex = 16 then
  begin
    combo_produto.Enabled := TRUE
    { pdesconto.Visible := true;
      pdesconto.Top := 29;
      pdesconto.Left := 132; }

  end
  else
    pdesconto.Visible := False;

end;

procedure Tfrmlista_produto2.qrprodutoCalcFields(DataSet: TDataSet);
begin
  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ATUAL' then
  begin
    if combo_inventario.Text = 'PREÇO DE CUSTO' then
      qrproduto.fieldbyname('preco').AsFloat :=
        qrproduto.fieldbyname('precocusto').AsFloat;
    if combo_inventario.Text = 'PREÇO DE VENDA' then
      qrproduto.fieldbyname('preco').AsFloat :=
        qrproduto.fieldbyname('precovenda').AsFloat;

    qrproduto.fieldbyname('TOTAL').AsFloat :=
      qrproduto.fieldbyname('ESTOQUE_atual').AsFloat * qrproduto.fieldbyname
      ('PREco').AsFloat;

  end
  else if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ANTERIOR' then
  begin
    if combo_inventario.Text = 'PREÇO DE CUSTO' then
      qrproduto.fieldbyname('preco').AsFloat :=
        qrproduto.fieldbyname('CUSTO_INVENTARIO').AsFloat;
    if combo_inventario.Text = 'PREÇO DE VENDA' then
      qrproduto.fieldbyname('preco').AsFloat :=
        qrproduto.fieldbyname('precovenda').AsFloat;

    qrproduto.fieldbyname('TOTAL').AsFloat :=
      qrproduto.fieldbyname('ESTOQUE_INVENTARIO').AsFloat *
      qrproduto.fieldbyname('PREco').AsFloat;

  end
  else if combo_relatorio.Text = 'LIVRO REGISTRO DE INVENTARIO - CONTABIL' then
  begin
    if combo_inventario.Text = 'PREÇO DE CUSTO' then
      qrproduto.fieldbyname('preco').AsFloat :=
        qrproduto.fieldbyname('CUSTO_INVENTARIO').AsFloat;
    if combo_inventario.Text = 'PREÇO DE VENDA' then
      qrproduto.fieldbyname('preco').AsFloat :=
        qrproduto.fieldbyname('precovenda').AsFloat;

    qrproduto.fieldbyname('TOTAL').AsFloat :=
      qrproduto.fieldbyname('ESTOQUE_INVENTARIO').AsFloat *
      qrproduto.fieldbyname('PREco').AsFloat;

  end
  else if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ANTERIOR POR CST' then
  begin
    if combo_inventario.Text = 'PREÇO DE CUSTO' then
      qrproduto.fieldbyname('preco').AsFloat :=
        qrproduto.fieldbyname('CUSTO_INVENTARIO').AsFloat;
    if combo_inventario.Text = 'PREÇO DE VENDA' then
      qrproduto.fieldbyname('preco').AsFloat :=
        qrproduto.fieldbyname('precovenda').AsFloat;

    qrproduto.fieldbyname('TOTAL').AsFloat :=
      qrproduto.fieldbyname('ESTOQUE_INVENTARIO').AsFloat *
      qrproduto.fieldbyname('PREco').AsFloat;

  end
  else if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS POR ALÍQUOTA' then
  begin
    if combo_inventario.Text = 'PREÇO DE CUSTO' then
      qrproduto.fieldbyname('preco').AsFloat :=
        qrproduto.fieldbyname('CUSTO_INVENTARIO').AsFloat;
    if combo_inventario.Text = 'PREÇO DE VENDA' then
      qrproduto.fieldbyname('preco').AsFloat :=
        qrproduto.fieldbyname('precovenda').AsFloat;

    qrproduto.fieldbyname('TOTAL').AsFloat :=
      qrproduto.fieldbyname('ESTOQUE_atual').AsFloat * qrproduto.fieldbyname
      ('PREco').AsFloat;

  end
  else if combo_relatorio.Text = 'SUGESTÃO DE COMPRAS' then
  begin

    QUERY.CLOSE;
    QUERY.SQL.CLEAR;
    QUERY.SQL.ADD('select sum(qtde) vendas from c000032');
    QUERY.SQL.ADD('where codproduto = ''' + qrprodutoCODIGO.ASSTRING + '''');
    QUERY.SQL.ADD('and movimento = ''2''');
    QUERY.SQL.ADD('and data >= :data_ini and data <= :data_fim');
    QUERY.parambyname('data_ini').asdatetime := ldataini_remarcado.Date;
    QUERY.parambyname('data_fim').asdatetime := ldatafim_remarcado.Date;
    QUERY.OPEN;
    if QUERY.RecordCount > 0 then
      qrproduto.fieldbyname('vendas').AsFloat :=
        QUERY.fieldbyname('vendas').AsFloat
    else
      qrproduto.fieldbyname('vendas').AsFloat := 0;

    qrproduto.fieldbyname('SUGESTAO').AsFloat := qrproduto.fieldbyname('VENDAS')
      .AsFloat - qrproduto.fieldbyname('ESTOQUE_atual').AsFloat;

    bar.IncPartsByOne;

  end

  else if combo_relatorio.Text = 'TABELA DE PREÇOS - A PRAZO' then
  begin

    FRMMODULO.qrconfig.OPEN;

    qrproduto.fieldbyname('preco').AsFloat :=
      qrproduto.fieldbyname('PRECOVENDA').AsFloat -
      (qrproduto.fieldbyname('PRECOVENDA').AsFloat *
      FRMMODULO.qrconfigDESCONTO_AVISTA.AsFloat / 100);

  end
  else if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - ESTOQUE MINIMO' then
  begin

    qrproduto.fieldbyname('REPOSICAO').AsFloat :=
      qrproduto.fieldbyname('ESTOQUEMINIMO').AsFloat - qrproduto.fieldbyname
      ('ESTOQUE_atual').AsFloat;

  end;

  qrproduto.fieldbyname('NOME_ALIQUOTA').ASSTRING :=
    qrproduto.fieldbyname('CST').ASSTRING + FORMATFLOAT('##0.00%',
    qrproduto.fieldbyname('ALIQUOTA').AsFloat);

end;

procedure Tfrmlista_produto2.BitBtn1Click(Sender: TObject);
begin
  if not frmPrincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
    exit;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - SINTÉTICA' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000025.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = '  TABELA DE PREÇOS - A PRAZO' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000128.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ATUAL' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000026.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ANTERIOR' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000098.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ANTERIOR POR CST' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000103.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - COM GRADE' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000027.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - COM SERIAIS' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000028.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'ETIQUETAS' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000076.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS DE BALANÇA' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000075.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR FORNECEDOR' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000029.fr3');
    fxproduto.designreport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - ESTOQUE MINIMO' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000101.fr3');
    fxproduto.designreport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS POR ALÍQUOTA' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000102.fr3');
    fxproduto.designreport;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR FORNECEDOR' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000030.fr3');
    fxproduto.designreport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR MARCA' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000017.fr3');
    fxproduto.designreport;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR MARCA' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000016.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'TABELA DE PREÇOS - SINTÉTICA' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000031.fr3');
    fxproduto.designreport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS COM MOVIMENTAÇÃO' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000020.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE COMPRAS' then
  begin
  qrproduto.Open;
  QRMOVIMENTO.Open;
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000020.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR GRUPO/SUBGRUPO' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000018.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR GRUPO/SUBGRUPO' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000019.fr3');
    fxproduto.designreport;
  end;

  if combo_relatorio.Text = 'PRODUTOS REMARCADOS' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000025.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO COM PREÇOS (VENDA/SUGERIDO/LUCRO 0)' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000190.fr3');
    fxproduto.designreport;
  end;

  if combo_relatorio.Text = 'RESUMO FISCAL' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000143.fr3');
    fxproduto.designreport;
  end;

  if combo_relatorio.Text = 'REGISTRO DE CONTROLE DE PRODUÇÃO E DO ESTOQUE' then
  begin
    fxproduto.LoadFromFile('\OneMaker\server\rel\f000196.fr3');
    fxproduto.designreport;
  end;

end;

procedure Tfrmlista_produto2.QRMOVIMENTOCalcFields(DataSet: TDataSet);
begin
  case QRMOVIMENTO.fieldbyname('MOVIMENTO').ASINTEGER of
    0:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'IMPLANTAÇÃO DE SALDO';
    1:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'COMPRA';
    2:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'VENDA';
    3:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'DEVOLUÇÃO DE COMPRA';
    4:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'OUTRAS SAÍDAS';
    5:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'BAIXA DE SERIAL';
    6:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'EXCLUSÃO SERIAL';
    7:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'DEVOLUÇÃO DE VENDA';
    8:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'RETORNO SERIAL';
    9:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'VENDA EM O.S';
    10:
      QRMOVIMENTO.fieldbyname('MOV').ASSTRING := 'ACERTO ESTOQUE';
  end;
end;

procedure Tfrmlista_produto2.ldataini_remarcadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmlista_produto2.ldatafim_remarcadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bimprimir.SetFocus;

end;

procedure Tfrmlista_produto2.ldatafim_remarcadoExit(Sender: TObject);
begin
  bimprimir.SetFocus;
end;

procedure Tfrmlista_produto2.combo_cstChange(Sender: TObject);
begin
  if combo_cst.Text = 'SELECIONAR' then
  begin

    frmXloc_cst := tfrmXloc_cst.create(self);
    frmXloc_cst.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_cst.Items.ADD(resultado_pesquisa1 + ' ' + RESULTADO_PESQUISA2);
      combo_cst.ItemIndex := combo_cst.Items.Count - 1;
    end
    else
      combo_cst.ItemIndex := 0;
  end;

end;

procedure Tfrmlista_produto2.query_pis_entradaCalcFields(DataSet: TDataSet);
begin
  query_pis_entrada.fieldbyname('pis').AsFloat :=
    (query_pis_entrada.fieldbyname('unitario').AsFloat *
    query_pis_entrada.fieldbyname('qtde').AsFloat) * vpis / 100;
  // ( query_pis_entrada.FieldByName('precocusto').AsFloat*query_pis_entrada.FieldByName('qtde').AsFloat)*vpis/100;
  query_pis_entrada.fieldbyname('cofins').AsFloat :=
    (query_pis_entrada.fieldbyname('unitario').AsFloat *
    query_pis_entrada.fieldbyname('qtde').AsFloat) * vcofins / 100;
  // ( query_pis_entrada.FieldByName('precocusto').AsFloat*query_pis_entrada.FieldByName('qtde').AsFloat)*vcofins/100;

end;

procedure Tfrmlista_produto2.query_pis_saidaCalcFields(DataSet: TDataSet);
begin
  query_pis_saida.fieldbyname('pis').AsFloat :=
    query_pis_saida.fieldbyname('total').AsFloat * vpis / 100;
  query_pis_saida.fieldbyname('cofins').AsFloat :=
    query_pis_saida.fieldbyname('total').AsFloat * vcofins / 100;
end;

procedure Tfrmlista_produto2.bdescontoClick(Sender: TObject);
begin
  vdesconto := edesconto.Value / 100;
  pdesconto.Visible := False;
  bimprimir.SetFocus;
end;

procedure Tfrmlista_produto2.query_pis_entrada_resumoCalcFields
  (DataSet: TDataSet);
begin
  query_pis_entrada_resumo.fieldbyname('pis').AsFloat :=
    query_pis_entrada_resumo.fieldbyname('TOTAL').AsFloat * vpis / 100;
  query_pis_entrada_resumo.fieldbyname('cofins').AsFloat :=
    query_pis_entrada_resumo.fieldbyname('TOTAL').AsFloat * vcofins / 100;

end;

procedure Tfrmlista_produto2.query_pis_saida_resumoCalcFields
  (DataSet: TDataSet);
begin
  query_pis_saida_resumo.fieldbyname('pis').AsFloat :=
    query_pis_saida_resumo.fieldbyname('TOTAL').AsFloat * vpis / 100;
  query_pis_saida_resumo.fieldbyname('cofins').AsFloat :=
    query_pis_saida_resumo.fieldbyname('TOTAL').AsFloat * vcofins / 100;

end;

procedure Tfrmlista_produto2.qricmsCalcFields(DataSet: TDataSet);
begin
  qricmsimposto.AsFloat := qricmstotal.AsFloat * qricmsaliquota.AsFloat / 100;
end;

procedure Tfrmlista_produto2.qricms1CalcFields(DataSet: TDataSet);
begin
  qricms.fieldbyname('imposto').AsFloat := qricms.fieldbyname('total').AsFloat *
    qricms.fieldbyname('aliquota').AsFloat / 100;

end;

procedure Tfrmlista_produto2.combo_produtoChange(Sender: TObject);
begin
  if combo_produto.Text = 'SELECIONAR' then
  begin

    frmXloc_produto := tfrmXloc_produto.create(self);
    frmXloc_produto.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_produto.Items.ADD(resultado_pesquisa1 + ' ' + RESULTADO_PESQUISA2);
      combo_produto.ItemIndex := combo_produto.Items.Count - 1;
    end
    else
      combo_produto.ItemIndex := 0;
  end;

end;

end.
