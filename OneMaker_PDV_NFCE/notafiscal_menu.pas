unit notafiscal_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBAccess, frxClass, Menus, AdvMenus,
  ImgList, AdvMenuStylers, RzDBEdit, RzEdit,  Mask, RzBtnEdt,
  AdvGlowButton, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, System.ImageList, Uni,
  JvExMask, JvToolEdit, MemDS;

type
  Tfrmnotafiscal_menu = class(TForm)
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    ImageList1: TImageList;
    dsnota: TDataSource;
    pop: TAdvPopupMenu;
    Incluir2: TMenuItem;
    Alterar2: TMenuItem;
    LocalizarFiltro2: TMenuItem;
    Sair2: TMenuItem;
    espelho: TfrxReport;
    ImageList2: TImageList;
    grid: TwwDBGrid;
    Panel3: TPanel;
    Label10: TLabel;
    bfiltrar: TAdvGlowButton;
    Bevel1: TBevel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    ecliente: TRzButtonEdit;
    ENUMERO: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    rtotal: TRzNumericEdit;
    rqde: TRzNumericEdit;
    RzDBEdit1: TRzDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    Bevel7: TBevel;
    Bevel4: TBevel;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
  //  query: TIBCQuery;
   // qrnota: TIBCQuery;
   { qrnotaSITUACAO: TIntegerField;
    qrnotaDATA: TDateTimeField;
    qrnotaDATA_SAIDA: TDateTimeField;
    qrnotacliente: TStringField;
    qrnotaNUMERO: TStringField;
    qrnotaMODELO_NF: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaCFOP: TStringField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaBASE_CALCULO: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaempresa: TStringField;
    qrnotaCODIGO: TStringField;
    qrnotaCODCLIENTE: TStringField;
    qrnotaVALOR_PRODUTOS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaICMS_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS_DESPESAS: TFloatField;
    qrnotaVALOR_TOTAL_IPI: TFloatField;
    qrnotaITENS: TIntegerField;
    qrnotaDESCONTO: TFloatField;
    qrnotaCODTRANSPORTADOR: TStringField;
    qrnotaFRETE_CONTA: TIntegerField;
    qrnotaPLACA: TStringField;
    qrnotaPLACA_UF: TStringField;
    qrnotaVOL_QTDE: TFloatField;
    qrnotaVOL_ESPECIE: TStringField;
    qrnotaVOL_MARCA: TStringField;
    qrnotaVOL_NUMERO: TStringField;
    qrnotaPESO_LIQUIDO: TFloatField;
    qrnotaPESO_BRUTO: TFloatField;
    qrnotaMOTIVO: TStringField;
    qrnotaFATURAMENTO_DATA1: TDateTimeField;
    qrnotaFATURAMENTO_DATA2: TDateTimeField;
    qrnotaFATURAMENTO_DATA3: TDateTimeField;
    qrnotaFATURAMENTO_DATA4: TDateTimeField;
    qrnotaFATURAMENTO_NUMERO1: TStringField;
    qrnotaFATURAMENTO_NUMERO2: TStringField;
    qrnotaFATURAMENTO_NUMERO3: TStringField;
    qrnotaFATURAMENTO_NUMERO4: TStringField;
    qrnotaFATURAMENTO_VALOR1: TFloatField;
    qrnotaFATURAMENTO_VALOR2: TFloatField;
    qrnotaFATURAMENTO_VALOR3: TFloatField;
    qrnotaFATURAMENTO_VALOR4: TFloatField;
    qrnotaCODFILIAL: TStringField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaOBS3: TStringField;
    qrnotaINF1: TStringField;
    qrnotaINF2: TStringField;
    qrnotaINF3: TStringField;
    qrnotaINF4: TStringField;
    qrnotaINF5: TStringField;
    qrnotaHORA: TStringField;
    qrnotaSITUACAO_A: TStringField;
    qrnotaVALOR_ISENTO_ICMS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaSIT: TStringField;
    qrnotaCODLANCAMENTO: TStringField;
    qrnotaMOVIMENTO: TStringField;
    qrnotaendereco: TStringField;
    qrnotacpf: TStringField;
    qrnotarg: TStringField;
    qrnotanatureza: TStringField;
    qrnotafilial: TStringField;
    qrnotaESPECIE: TStringField;
    qrnotaBAIXA_ESTOQUE: TStringField;
    qrnotaTIPO: TStringField;
    qrnotaOS_COD1: TStringField;
    qrnotaOS_COD2: TStringField;
    qrnotaOS_COD3: TStringField;
    qrnotaOS_COD4: TStringField;
    qrnotaOS_COD5: TStringField;
    qrnotaOS_COD6: TStringField;
    qrnotaOS_SERV1: TStringField;
    qrnotaOS_SERV2: TStringField;
    qrnotaOS_SERV3: TStringField;
    qrnotaOS_SERV4: TStringField;
    qrnotaOS_SERV5: TStringField;
    qrnotaOS_SERV6: TStringField;
    qrnotaOS_COMP1: TStringField;
    qrnotaOS_COMP2: TStringField;
    qrnotaOS_COMP3: TStringField;
    qrnotaOS_COMP4: TStringField;
    qrnotaOS_COMP5: TStringField;
    qrnotaOS_COMP6: TStringField;
    qrnotaOS_QTDE1: TFloatField;
    qrnotaOS_QTDE2: TFloatField;
    qrnotaOS_QTDE3: TFloatField;
    qrnotaOS_QTDE4: TFloatField;
    qrnotaOS_QTDE5: TFloatField;
    qrnotaOS_QTDE6: TFloatField;
    qrnotaOS_UNIT1: TFloatField;
    qrnotaOS_UNIT2: TFloatField;
    qrnotaOS_UNIT3: TFloatField;
    qrnotaOS_UNIT4: TFloatField;
    qrnotaOS_UNIT5: TFloatField;
    qrnotaOS_UNIT6: TFloatField;
    qrnotaOS_TOTAL1: TFloatField;
    qrnotaOS_TOTAL2: TFloatField;
    qrnotaOS_TOTAL3: TFloatField;
    qrnotaOS_TOTAL4: TFloatField;
    qrnotaOS_TOTAL5: TFloatField;
    qrnotaOS_TOTAL6: TFloatField;
    qrnotaOS_ISS: TFloatField;
    qrnotaOS_TOTAL_GERAL: TFloatField;
    qrnotaOS_TOTAL_ISS: TFloatField;
    qrnotaFAT_FORMA_PGTO: TStringField;
    qrnotaFAT_QTDE_PRESTACAO: TIntegerField;
    qrnotaFAT_GERAR_RECEBER: TIntegerField;
    qrnotaFAT_GERAR_DUPLICATA: TIntegerField;  }
   // qrproduto2: TIBCQuery;
 //   qrcliente2: TIBCQuery;
   { qrcliente2CODIGO: TStringField;
    qrcliente2NOME: TStringField;
    qrcliente2APELIDO: TStringField;
    qrcliente2ENDERECO: TStringField;
    qrcliente2BAIRRO: TStringField;
    qrcliente2CIDADE: TStringField;
    qrcliente2UF: TStringField;
    qrcliente2CEP: TStringField;
    qrcliente2COMPLEMENTO: TStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TStringField;
    qrcliente2TELEFONE2: TStringField;
    qrcliente2TELEFONE3: TStringField;
    qrcliente2CELULAR: TStringField;
    qrcliente2EMAIL: TStringField;
    qrcliente2RG: TStringField;
    qrcliente2CPF: TStringField;
    qrcliente2FILIACAO: TStringField;
    qrcliente2ESTADOCIVIL: TStringField;
    qrcliente2CONJUGE: TStringField;
    qrcliente2PROFISSAO: TStringField;
    qrcliente2EMPRESA: TStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TStringField;
    qrcliente2REF2: TStringField;
    qrcliente2CODVENDEDOR: TStringField;
    qrcliente2DATA_CADASTRO: TDateTimeField;
    qrcliente2DATA_ULTIMACOMPRA: TDateTimeField;
    qrcliente2OBS1: TStringField;
    qrcliente2OBS2: TStringField;
    qrcliente2OBS3: TStringField;
    qrcliente2OBS4: TStringField;
    qrcliente2OBS5: TStringField;
    qrcliente2OBS6: TStringField;
    qrcliente2NASCIMENTO: TStringField;
    qrcliente2CODREGIAO: TStringField;
    qrcliente2CODCONVENIO: TStringField;
    qrcliente2CODUSUARIO: TStringField;   }
 //   qrempresa: TIBCQuery;
  {  qrempresaCODIGO: TStringField;
    qrempresaFILIAL: TStringField;
    qrempresaNOTAFISCAL: TIntegerField;
    qrempresaENDERECO: TStringField;
    qrempresaCIDADE: TStringField;
    qrempresaUF: TStringField;
    qrempresaCEP: TStringField;
    qrempresaTELEFONE: TStringField;
    qrempresaCNPJ: TStringField;
    qrempresaIE: TStringField;
    qrempresaSEQNF: TIntegerField;
    qrempresaFAX: TStringField;
    qrempresaOBS1: TStringField;
    qrempresaOBS2: TStringField;
    qrempresaCONTRIBUINTE_IPI: TStringField;
    qrempresaSUBSTITUTO_TRIBUTARIO: TStringField;
    qrempresaEMPRESA_ESTADUAL: TStringField;
    qrempresaOPTANTE_SIMPLES: TStringField;
    qrempresaOPTANTE_SUPER_SIMPLES: TStringField;
    qrempresaECF: TStringField;
    qrempresaTIPO: TIntegerField;
    qrempresaIPI: TFloatField;
    qrempresaISS: TFloatField;
    qrempresaNUMERO: TStringField;
    qrempresaRESPONSAVEL: TStringField;
    qrempresaCOMPLEMENTO: TStringField;
    qrempresaBAIRRO: TStringField;   }
   //qrmodelo: TIBCQuery;
   // qrmodeloSINTEGRA: TStringField;
   // qrmodeloMODELO: TStringField;
  //  qrmodeloCODIGO: TStringField;
  //  qrmodeloSIGLA: TStringField;
  //  qrmodeloTIPO_REGISTRO: TStringField;
   // qrcliente: TIBCQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
  //  qrnota_item: TIBCQuery;
  //  qrnota_total: TIBCQuery;
  //  qrnota_antes: TIBCQuery;
  //  qritem_antes: TIBCQuery;
 //   qrgrade_entrada: TIBCQuery;
   // query2: TIBCQuery;
 //   qrclienteCOD_MUNICIPIO_IBGE: TStringField;
   // qrnotaPIS: TFloatField;
   // qrnotaCOFINS: TFloatField;
   // qrnotaFAT_TIPO: TIntegerField;
   // qrnotaCODVENDEDOR: TStringField;
    qrnota: TUniQuery;
    query: TUniQuery;
    qrproduto2: TUniQuery;
    qrcliente2: TUniQuery;
    qrempresa: TUniQuery;
    qrmodelo: TUniQuery;
    qrcliente: TUniQuery;
    qrnota_item: TUniQuery;
    qrnota_total: TUniQuery;
    qrnota_antes: TUniQuery;
    qritem_antes: TUniQuery;
    qrgrade_entrada: TUniQuery;
    query2: TUniQuery;
    qrnotaCODIGO: TStringField;
    qrnotaNUMERO: TStringField;
    qrnotaCFOP: TStringField;
    qrnotaDATA: TDateTimeField;
    qrnotaCODCLIENTE: TStringField;
    qrnotaVALOR_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaBASE_CALCULO: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaICMS_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS_DESPESAS: TFloatField;
    qrnotaVALOR_TOTAL_IPI: TFloatField;
    qrnotaITENS: TIntegerField;
    qrnotaDESCONTO: TFloatField;
    qrnotaCODTRANSPORTADOR: TStringField;
    qrnotaFRETE_CONTA: TIntegerField;
    qrnotaPLACA: TStringField;
    qrnotaPLACA_UF: TStringField;
    qrnotaVOL_QTDE: TFloatField;
    qrnotaVOL_ESPECIE: TStringField;
    qrnotaVOL_MARCA: TStringField;
    qrnotaVOL_NUMERO: TStringField;
    qrnotaPESO_LIQUIDO: TFloatField;
    qrnotaPESO_BRUTO: TFloatField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaMOTIVO: TStringField;
    qrnotaFATURAMENTO_DATA1: TDateTimeField;
    qrnotaFATURAMENTO_DATA2: TDateTimeField;
    qrnotaFATURAMENTO_DATA3: TDateTimeField;
    qrnotaFATURAMENTO_DATA4: TDateTimeField;
    qrnotaFATURAMENTO_NUMERO1: TStringField;
    qrnotaFATURAMENTO_NUMERO2: TStringField;
    qrnotaFATURAMENTO_NUMERO3: TStringField;
    qrnotaFATURAMENTO_NUMERO4: TStringField;
    qrnotaFATURAMENTO_VALOR1: TFloatField;
    qrnotaFATURAMENTO_VALOR2: TFloatField;
    qrnotaFATURAMENTO_VALOR3: TFloatField;
    qrnotaFATURAMENTO_VALOR4: TFloatField;
    qrnotaCODFILIAL: TStringField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaOBS3: TStringField;
    qrnotaINF1: TStringField;
    qrnotaINF2: TStringField;
    qrnotaINF3: TStringField;
    qrnotaINF4: TStringField;
    qrnotaINF5: TStringField;
    qrnotaDATA_SAIDA: TDateTimeField;
    qrnotaHORA: TStringField;
    qrnotaSITUACAO_A: TStringField;
    qrnotaMODELO_NF: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaVALOR_ISENTO_ICMS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaSIT: TStringField;
    qrnotaCODLANCAMENTO: TStringField;
    qrnotaMOVIMENTO: TStringField;
    qrnotaBAIXA_ESTOQUE: TStringField;
    qrnotaTIPO: TStringField;
    qrnotaOS_COD1: TStringField;
    qrnotaOS_COD2: TStringField;
    qrnotaOS_COD3: TStringField;
    qrnotaOS_COD4: TStringField;
    qrnotaOS_COD5: TStringField;
    qrnotaOS_COD6: TStringField;
    qrnotaOS_SERV1: TStringField;
    qrnotaOS_SERV2: TStringField;
    qrnotaOS_SERV3: TStringField;
    qrnotaOS_SERV4: TStringField;
    qrnotaOS_SERV5: TStringField;
    qrnotaOS_SERV6: TStringField;
    qrnotaOS_COMP1: TStringField;
    qrnotaOS_COMP2: TStringField;
    qrnotaOS_COMP3: TStringField;
    qrnotaOS_COMP4: TStringField;
    qrnotaOS_COMP5: TStringField;
    qrnotaOS_COMP6: TStringField;
    qrnotaOS_QTDE1: TFloatField;
    qrnotaOS_QTDE2: TFloatField;
    qrnotaOS_QTDE3: TFloatField;
    qrnotaOS_QTDE4: TFloatField;
    qrnotaOS_QTDE5: TFloatField;
    qrnotaOS_QTDE6: TFloatField;
    qrnotaOS_UNIT1: TFloatField;
    qrnotaOS_UNIT2: TFloatField;
    qrnotaOS_UNIT3: TFloatField;
    qrnotaOS_UNIT4: TFloatField;
    qrnotaOS_UNIT5: TFloatField;
    qrnotaOS_UNIT6: TFloatField;
    qrnotaOS_TOTAL1: TFloatField;
    qrnotaOS_TOTAL2: TFloatField;
    qrnotaOS_TOTAL3: TFloatField;
    qrnotaOS_TOTAL4: TFloatField;
    qrnotaOS_TOTAL5: TFloatField;
    qrnotaOS_TOTAL6: TFloatField;
    qrnotaOS_ISS: TFloatField;
    qrnotaOS_TOTAL_GERAL: TFloatField;
    qrnotaOS_TOTAL_ISS: TFloatField;
    qrnotaDESCONTO_ITEM: TFloatField;
    qrnotaOBS4: TStringField;
    qrnotaOBS5: TStringField;
    qrnotaCODIGOMODELO: TStringField;
    qrnotaCUSTO_VENDA: TStringField;
    qrnotaFAT_FORMA_PGTO: TStringField;
    qrnotaFAT_CONDI_PGTO: TStringField;
    qrnotaFAT_QTDE_PRESTACAO: TIntegerField;
    qrnotaFAT_GERAR_RECEBER: TIntegerField;
    qrnotaFAT_GERAR_DUPLICATA: TIntegerField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    qrnotaFAT_TIPO: TIntegerField;
    qrnotaCODVENDEDOR: TStringField;
    qrnotaOPERACAO: TStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaNFE_SITUACAO: TIntegerField;
    qrnotaNFE_XML: TStringField;
    qrnotaVAREJO_ATACADO: TStringField;
    qrnotaINDUSTRIALIZACAO: TStringField;
    qrnotaPERDA: TStringField;
    qrnotaFATURAMENTO_DATA5: TDateTimeField;
    qrnotaFATURAMENTO_DATA6: TDateTimeField;
    qrnotaFATURAMENTO_NUMERO5: TStringField;
    qrnotaFATURAMENTO_NUMERO6: TStringField;
    qrnotaFATURAMENTO_VALOR5: TFloatField;
    qrnotaFATURAMENTO_VALOR6: TFloatField;
    qrnotaFATURAMENTO_DATA7: TDateTimeField;
    qrnotaFATURAMENTO_DATA8: TDateTimeField;
    qrnotaFATURAMENTO_DATA9: TDateTimeField;
    qrnotaFATURAMENTO_NUMERO7: TStringField;
    qrnotaFATURAMENTO_NUMERO8: TStringField;
    qrnotaFATURAMENTO_NUMERO9: TStringField;
    qrnotaFATURAMENTO_VALOR7: TFloatField;
    qrnotaFATURAMENTO_VALOR8: TFloatField;
    qrnotaFATURAMENTO_VALOR9: TFloatField;
    qrnotaCHAVE: TStringField;
    qrnotaNATUREZA: TStringField;
    queryCODIGO: TStringField;
    queryCODBARRA: TStringField;
    queryPRODUTO: TStringField;
    queryUNIDADE: TStringField;
    queryDATA_CADASTRO: TDateTimeField;
    queryCODGRUPO: TStringField;
    queryCODSUBGRUPO: TStringField;
    queryCODFORNECEDOR: TStringField;
    queryCODMARCA: TStringField;
    queryDATA_ULTIMACOMPRA: TDateTimeField;
    queryNOTAFISCAL: TStringField;
    queryPRECOCUSTO: TFloatField;
    queryPRECOVENDA: TFloatField;
    queryDATA_ULTIMAVENDA: TDateTimeField;
    queryESTOQUE: TFloatField;
    queryESTOQUEMINIMO: TFloatField;
    queryCODALIQUOTA: TStringField;
    queryAPLICACAO: TMemoField;
    queryLOCALICAZAO: TStringField;
    queryPESO: TFloatField;
    queryVALIDADE: TStringField;
    queryCOMISSAO: TFloatField;
    queryUSA_BALANCA: TIntegerField;
    queryUSA_SERIAL: TIntegerField;
    queryUSA_GRADE: TIntegerField;
    queryCODRECEITA: TStringField;
    queryFOTO: TStringField;
    queryDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    queryNOTAFISCAL_ANTERIOR: TStringField;
    queryCODFORNECEDOR_ANTERIOR: TStringField;
    queryPRECOCUSTO_ANTERIOR: TFloatField;
    queryPRECOVENDA_ANTERIOR: TFloatField;
    queryCUSTOMEDIO: TFloatField;
    queryAUTO_APLICACAO: TStringField;
    queryAUTO_COMPLEMENTO: TStringField;
    queryDATA_REMARCACAO_CUSTO: TDateTimeField;
    queryDATA_REMARCACAO_VENDA: TDateTimeField;
    queryPRECO_PROMOCAO: TFloatField;
    queryDATA_PROMOCAO: TDateTimeField;
    queryFIM_PROMOCAO: TDateTimeField;
    queryCST: TStringField;
    queryCLASSIFICACAO_FISCAL: TStringField;
    queryNBM: TStringField;
    queryNCM: TStringField;
    queryALIQUOTA: TFloatField;
    queryIPI: TFloatField;
    queryREDUCAO: TFloatField;
    queryQTDE_EMBALAGEM: TFloatField;
    queryTIPO: TStringField;
    queryPESO_LIQUIDO: TFloatField;
    queryFARMACIA_CONTROLADO: TStringField;
    queryFARMACIA_APRESENTACAO: TIntegerField;
    queryFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    queryFARMACIA_PMC: TFloatField;
    queryULTIMA_ALTERACAO: TDateTimeField;
    queryULTIMA_CARGA: TDateTimeField;
    queryDATA_INVENTARIO: TDateTimeField;
    queryCUSTO_INVENTARIO: TFloatField;
    queryESTOQUE_INVENTARIO: TFloatField;
    queryESTOQUE_ANTERIOR: TFloatField;
    queryPRECOVENDA_NOVO: TFloatField;
    queryUSA_RENTABILIDADE: TIntegerField;
    queryQUANTIDADE_MINIMA_FAB: TFloatField;
    queryAPRESENTACAO: TStringField;
    querySITUACAO: TIntegerField;
    queryPRECOVENDA1: TFloatField;
    queryPRECOVENDA2: TFloatField;
    queryPRECOVENDA3: TFloatField;
    queryPRECOVENDA4: TFloatField;
    queryPRECOVENDA5: TFloatField;
    queryDESCONTO_PRECOVENDA: TFloatField;
    queryDATA_INVENTARIO_ATUAL: TDateTimeField;
    queryCUSTO_INVENTARIO_ATUAL: TFloatField;
    queryESTOQUE_INVENTARIO_ATUAL: TFloatField;
    queryMARGEM_MINIMA: TFloatField;
    queryPISCOFINS: TStringField;
    queryREFERENCIA_FORNECEDOR: TStringField;
    queryCOMISSAO1: TFloatField;
    queryMARGEM_DESCONTO: TFloatField;
    queryTAMANHO: TStringField;
    queryCOR: TStringField;
    queryINCIDENCIA_PISCOFINS: TStringField;
    queryVEIC_CHASSI: TStringField;
    queryVEIC_SERIE: TStringField;
    queryVEIC_POTENCIA: TStringField;
    queryVEIC_PESO_LIQUIDO: TStringField;
    queryVEIC_PESO_BRUTO: TStringField;
    queryVEIC_TIPO_COMBUSTIVEL: TStringField;
    queryVEIC_RENAVAM: TStringField;
    queryVEIC_ANO_FABRICACAO: TIntegerField;
    queryVEIC_ANO_MODELO: TIntegerField;
    queryVEIC_TIPO: TStringField;
    queryVEIC_TIPO_PINTURA: TStringField;
    queryVEIC_COD_COR: TStringField;
    queryVEIC_COR: TStringField;
    queryVEIC_VIN: TStringField;
    queryVEIC_NUMERO_MOTOR: TStringField;
    queryVEIC_CMKG: TStringField;
    queryVEIC_CM3: TStringField;
    queryVEIC_DISTANCIA_EIXO: TStringField;
    queryVEIC_COD_MARCA: TStringField;
    queryVEIC_ESPECIE: TStringField;
    queryVEIC_CONDICAO: TStringField;
    queryLOTE_FABRICACAO: TStringField;
    queryLOTE_VALIDADE: TDateTimeField;
    queryMARGEM_AGREGADA: TFloatField;
    queryCODBARRA_NOVARTIS: TStringField;
    queryFARMACIA_DCB: TStringField;
    queryFARMACIA_ABCFARMA: TStringField;
    queryFARMACIA_APRESENTACAO_CAIXA: TStringField;
    queryFARMACIA_PRINCIPIOATIVO: TStringField;
    queryULTIMA_COMPRA: TDateTimeField;
    queryFARMACIA_DATAVIGENCIA: TDateTimeField;
    queryFARMACIA_TIPO: TStringField;
    queryUSA_COMBUSTIVEL: TStringField;
    queryREFERENCIA: TStringField;
    queryPERDA: TFloatField;
    queryCOMPOSICAO1: TStringField;
    queryCOMPOSICAO2: TStringField;
    queryIAT: TStringField;
    queryIPPT: TStringField;
    querySITUACAO_TRIBUTARIA: TStringField;
    queryFLAG_SIS: TStringField;
    queryFLAG_ACEITO: TStringField;
    queryFLAG_EST: TStringField;
    queryCSOSN: TStringField;
    queryCODORIGINAL: TStringField;
    queryCUSTO_ATACADO: TFloatField;
    queryUNIDADE_ATACADO: TStringField;
    queryQTDE_EMBALAGEMATACADO: TFloatField;
    queryPMARGEM1: TFloatField;
    queryPMARGEM2: TFloatField;
    queryPMARGEM3: TFloatField;
    queryPMARGEM4: TFloatField;
    queryPMARGEM5: TFloatField;
    queryPMARGEMATACADO1: TFloatField;
    queryPMARGEMATACADO2: TFloatField;
    queryPMARGEMATACADO3: TFloatField;
    queryPMARGEMATACADO4: TFloatField;
    queryPMARGEMATACADO5: TFloatField;
    queryPMARGEMATACADO6: TFloatField;
    queryPRECOATACADO1: TFloatField;
    queryPRECOATACADO2: TFloatField;
    queryPRECOATACADO3: TFloatField;
    queryPRECOATACADO4: TFloatField;
    queryPRECOATACADO5: TFloatField;
    queryIND_CFOP: TStringField;
    queryCFOP_DESC: TStringField;
    queryUSA_LOTE: TIntegerField;
    queryIND_CFOP_VENDA_DENTRO: TStringField;
    queryCODCONTA: TStringField;
    queryIND_CFOP_VENDA_FORA: TStringField;
    queryIND_CFOP_DEVOLUCAO_DENTRO: TStringField;
    queryIND_CFOP_DEVOLUCAO_FORA: TStringField;
    queryIND_CFOP_GARANTIA_DENTRO: TStringField;
    queryIND_CFOP_GARANTIA_FORA: TStringField;
    queryUSA_TB_PC: TStringField;
    qrproduto2CODIGO: TStringField;
    qrproduto2CODBARRA: TStringField;
    qrproduto2PRODUTO: TStringField;
    qrproduto2UNIDADE: TStringField;
    qrproduto2DATA_CADASTRO: TDateTimeField;
    qrproduto2CODGRUPO: TStringField;
    qrproduto2CODSUBGRUPO: TStringField;
    qrproduto2CODFORNECEDOR: TStringField;
    qrproduto2CODMARCA: TStringField;
    qrproduto2DATA_ULTIMACOMPRA: TDateTimeField;
    qrproduto2NOTAFISCAL: TStringField;
    qrproduto2PRECOCUSTO: TFloatField;
    qrproduto2PRECOVENDA: TFloatField;
    qrproduto2DATA_ULTIMAVENDA: TDateTimeField;
    qrproduto2ESTOQUE: TFloatField;
    qrproduto2ESTOQUEMINIMO: TFloatField;
    qrproduto2CODALIQUOTA: TStringField;
    qrproduto2APLICACAO: TMemoField;
    qrproduto2LOCALICAZAO: TStringField;
    qrproduto2PESO: TFloatField;
    qrproduto2VALIDADE: TStringField;
    qrproduto2COMISSAO: TFloatField;
    qrproduto2USA_BALANCA: TIntegerField;
    qrproduto2USA_SERIAL: TIntegerField;
    qrproduto2USA_GRADE: TIntegerField;
    qrproduto2CODRECEITA: TStringField;
    qrproduto2FOTO: TStringField;
    qrproduto2DATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrproduto2NOTAFISCAL_ANTERIOR: TStringField;
    qrproduto2CODFORNECEDOR_ANTERIOR: TStringField;
    qrproduto2PRECOCUSTO_ANTERIOR: TFloatField;
    qrproduto2PRECOVENDA_ANTERIOR: TFloatField;
    qrproduto2CUSTOMEDIO: TFloatField;
    qrproduto2AUTO_APLICACAO: TStringField;
    qrproduto2AUTO_COMPLEMENTO: TStringField;
    qrproduto2DATA_REMARCACAO_CUSTO: TDateTimeField;
    qrproduto2DATA_REMARCACAO_VENDA: TDateTimeField;
    qrproduto2PRECO_PROMOCAO: TFloatField;
    qrproduto2DATA_PROMOCAO: TDateTimeField;
    qrproduto2FIM_PROMOCAO: TDateTimeField;
    qrproduto2CST: TStringField;
    qrproduto2CLASSIFICACAO_FISCAL: TStringField;
    qrproduto2NBM: TStringField;
    qrproduto2NCM: TStringField;
    qrproduto2ALIQUOTA: TFloatField;
    qrproduto2IPI: TFloatField;
    qrproduto2REDUCAO: TFloatField;
    qrproduto2QTDE_EMBALAGEM: TFloatField;
    qrproduto2TIPO: TStringField;
    qrproduto2PESO_LIQUIDO: TFloatField;
    qrproduto2FARMACIA_CONTROLADO: TStringField;
    qrproduto2FARMACIA_APRESENTACAO: TIntegerField;
    qrproduto2FARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrproduto2FARMACIA_PMC: TFloatField;
    qrproduto2ULTIMA_ALTERACAO: TDateTimeField;
    qrproduto2ULTIMA_CARGA: TDateTimeField;
    qrproduto2DATA_INVENTARIO: TDateTimeField;
    qrproduto2CUSTO_INVENTARIO: TFloatField;
    qrproduto2ESTOQUE_INVENTARIO: TFloatField;
    qrproduto2ESTOQUE_ANTERIOR: TFloatField;
    qrproduto2PRECOVENDA_NOVO: TFloatField;
    qrproduto2USA_RENTABILIDADE: TIntegerField;
    qrproduto2QUANTIDADE_MINIMA_FAB: TFloatField;
    qrproduto2APRESENTACAO: TStringField;
    qrproduto2SITUACAO: TIntegerField;
    qrproduto2PRECOVENDA1: TFloatField;
    qrproduto2PRECOVENDA2: TFloatField;
    qrproduto2PRECOVENDA3: TFloatField;
    qrproduto2PRECOVENDA4: TFloatField;
    qrproduto2PRECOVENDA5: TFloatField;
    qrproduto2DESCONTO_PRECOVENDA: TFloatField;
    qrproduto2DATA_INVENTARIO_ATUAL: TDateTimeField;
    qrproduto2CUSTO_INVENTARIO_ATUAL: TFloatField;
    qrproduto2ESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrproduto2MARGEM_MINIMA: TFloatField;
    qrproduto2PISCOFINS: TStringField;
    qrproduto2REFERENCIA_FORNECEDOR: TStringField;
    qrproduto2COMISSAO1: TFloatField;
    qrproduto2MARGEM_DESCONTO: TFloatField;
    qrproduto2TAMANHO: TStringField;
    qrproduto2COR: TStringField;
    qrproduto2INCIDENCIA_PISCOFINS: TStringField;
    qrproduto2VEIC_CHASSI: TStringField;
    qrproduto2VEIC_SERIE: TStringField;
    qrproduto2VEIC_POTENCIA: TStringField;
    qrproduto2VEIC_PESO_LIQUIDO: TStringField;
    qrproduto2VEIC_PESO_BRUTO: TStringField;
    qrproduto2VEIC_TIPO_COMBUSTIVEL: TStringField;
    qrproduto2VEIC_RENAVAM: TStringField;
    qrproduto2VEIC_ANO_FABRICACAO: TIntegerField;
    qrproduto2VEIC_ANO_MODELO: TIntegerField;
    qrproduto2VEIC_TIPO: TStringField;
    qrproduto2VEIC_TIPO_PINTURA: TStringField;
    qrproduto2VEIC_COD_COR: TStringField;
    qrproduto2VEIC_COR: TStringField;
    qrproduto2VEIC_VIN: TStringField;
    qrproduto2VEIC_NUMERO_MOTOR: TStringField;
    qrproduto2VEIC_CMKG: TStringField;
    qrproduto2VEIC_CM3: TStringField;
    qrproduto2VEIC_DISTANCIA_EIXO: TStringField;
    qrproduto2VEIC_COD_MARCA: TStringField;
    qrproduto2VEIC_ESPECIE: TStringField;
    qrproduto2VEIC_CONDICAO: TStringField;
    qrproduto2LOTE_FABRICACAO: TStringField;
    qrproduto2LOTE_VALIDADE: TDateTimeField;
    qrproduto2MARGEM_AGREGADA: TFloatField;
    qrproduto2CODBARRA_NOVARTIS: TStringField;
    qrproduto2FARMACIA_DCB: TStringField;
    qrproduto2FARMACIA_ABCFARMA: TStringField;
    qrproduto2FARMACIA_APRESENTACAO_CAIXA: TStringField;
    qrproduto2FARMACIA_PRINCIPIOATIVO: TStringField;
    qrproduto2ULTIMA_COMPRA: TDateTimeField;
    qrproduto2FARMACIA_DATAVIGENCIA: TDateTimeField;
    qrproduto2FARMACIA_TIPO: TStringField;
    qrproduto2USA_COMBUSTIVEL: TStringField;
    qrproduto2REFERENCIA: TStringField;
    qrproduto2PERDA: TFloatField;
    qrproduto2COMPOSICAO1: TStringField;
    qrproduto2COMPOSICAO2: TStringField;
    qrproduto2IAT: TStringField;
    qrproduto2IPPT: TStringField;
    qrproduto2SITUACAO_TRIBUTARIA: TStringField;
    qrproduto2FLAG_SIS: TStringField;
    qrproduto2FLAG_ACEITO: TStringField;
    qrproduto2FLAG_EST: TStringField;
    qrproduto2CSOSN: TStringField;
    qrproduto2CODORIGINAL: TStringField;
    qrproduto2CUSTO_ATACADO: TFloatField;
    qrproduto2UNIDADE_ATACADO: TStringField;
    qrproduto2QTDE_EMBALAGEMATACADO: TFloatField;
    qrproduto2PMARGEM1: TFloatField;
    qrproduto2PMARGEM2: TFloatField;
    qrproduto2PMARGEM3: TFloatField;
    qrproduto2PMARGEM4: TFloatField;
    qrproduto2PMARGEM5: TFloatField;
    qrproduto2PMARGEMATACADO1: TFloatField;
    qrproduto2PMARGEMATACADO2: TFloatField;
    qrproduto2PMARGEMATACADO3: TFloatField;
    qrproduto2PMARGEMATACADO4: TFloatField;
    qrproduto2PMARGEMATACADO5: TFloatField;
    qrproduto2PMARGEMATACADO6: TFloatField;
    qrproduto2PRECOATACADO1: TFloatField;
    qrproduto2PRECOATACADO2: TFloatField;
    qrproduto2PRECOATACADO3: TFloatField;
    qrproduto2PRECOATACADO4: TFloatField;
    qrproduto2PRECOATACADO5: TFloatField;
    qrproduto2IND_CFOP: TStringField;
    qrproduto2CFOP_DESC: TStringField;
    qrproduto2USA_LOTE: TIntegerField;
    qrproduto2IND_CFOP_VENDA_DENTRO: TStringField;
    qrproduto2CODCONTA: TStringField;
    qrproduto2IND_CFOP_VENDA_FORA: TStringField;
    qrproduto2IND_CFOP_DEVOLUCAO_DENTRO: TStringField;
    qrproduto2IND_CFOP_DEVOLUCAO_FORA: TStringField;
    qrproduto2IND_CFOP_GARANTIA_DENTRO: TStringField;
    qrproduto2IND_CFOP_GARANTIA_FORA: TStringField;
    qrproduto2USA_TB_PC: TStringField;
    qrcliente2CODIGO: TStringField;
    qrcliente2NOME: TStringField;
    qrcliente2APELIDO: TStringField;
    qrcliente2ENDERECO: TStringField;
    qrcliente2BAIRRO: TStringField;
    qrcliente2CIDADE: TStringField;
    qrcliente2UF: TStringField;
    qrcliente2CEP: TStringField;
    qrcliente2COMPLEMENTO: TStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TStringField;
    qrcliente2TELEFONE2: TStringField;
    qrcliente2TELEFONE3: TStringField;
    qrcliente2CELULAR: TStringField;
    qrcliente2EMAIL: TStringField;
    qrcliente2RG: TStringField;
    qrcliente2CPF: TStringField;
    qrcliente2FILIACAO: TStringField;
    qrcliente2ESTADOCIVIL: TStringField;
    qrcliente2CONJUGE: TStringField;
    qrcliente2PROFISSAO: TStringField;
    qrcliente2EMPRESA: TStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TStringField;
    qrcliente2REF2: TStringField;
    qrcliente2CODVENDEDOR: TStringField;
    qrcliente2DATA_CADASTRO: TDateTimeField;
    qrcliente2DATA_ULTIMACOMPRA: TDateTimeField;
    qrcliente2OBS1: TStringField;
    qrcliente2OBS2: TStringField;
    qrcliente2OBS3: TStringField;
    qrcliente2OBS4: TStringField;
    qrcliente2OBS5: TStringField;
    qrcliente2OBS6: TStringField;
    qrcliente2NASCIMENTO: TStringField;
    qrcliente2CODREGIAO: TStringField;
    qrcliente2CODCONVENIO: TStringField;
    qrcliente2CODUSUARIO: TStringField;
    qrcliente2NUMERO: TStringField;
    qrcliente2RG_ORGAO: TStringField;
    qrcliente2RG_ESTADO: TStringField;
    qrcliente2RG_EMISSAO: TDateTimeField;
    qrcliente2SEXO: TStringField;
    qrcliente2HISTORICO: TBlobField;
    qrcliente2PREVISAO: TDateTimeField;
    qrcliente2CNAE: TStringField;
    qrcliente2COD_MUNICIPIO_IBGE: TStringField;
    qrcliente2IBGE: TStringField;
    qrcliente2TAMANHO_CALCA: TStringField;
    qrcliente2TAMANHO_BLUSA: TStringField;
    qrcliente2TAMANHO_SAPATO: TStringField;
    qrcliente2CORRESP_ENDERECO: TStringField;
    qrcliente2CORRESP_BAIRRO: TStringField;
    qrcliente2CORRESP_CIDADE: TStringField;
    qrcliente2CORRESP_UF: TStringField;
    qrcliente2CORRESP_CEP: TStringField;
    qrcliente2CORRESP_COMPLEMENTO: TStringField;
    qrcliente2RG_PRODUTOR: TStringField;
    qrcliente2RESP1_NOME: TStringField;
    qrcliente2RESP1_CPF: TStringField;
    qrcliente2RESP1_RG: TStringField;
    qrcliente2RESP1_PROFISSAO: TStringField;
    qrcliente2RESP1_ESTADO_CIVIL: TStringField;
    qrcliente2RESP1_ENDERECO: TStringField;
    qrcliente2RESP1_BAIRRO: TStringField;
    qrcliente2RESP1_CIDADE: TStringField;
    qrcliente2RESP1_UF: TStringField;
    qrcliente2RESP1_CEP: TStringField;
    qrcliente2RESP2_NOME: TStringField;
    qrcliente2RESP2_CPF: TStringField;
    qrcliente2RESP2_RG: TStringField;
    qrcliente2RESP2_PROFISSAO: TStringField;
    qrcliente2RESP2_ESTADO_CIVIL: TStringField;
    qrcliente2RESP2_ENDERECO: TStringField;
    qrcliente2RESP2_BAIRRO: TStringField;
    qrcliente2RESP2_CIDADE: TStringField;
    qrcliente2RESP2_UF: TStringField;
    qrcliente2RESP2_CEP: TStringField;
    qrcliente2FOTO: TStringField;
    qrcliente2CONDPGTO: TStringField;
    qrempresaCODIGO: TStringField;
    qrempresaFILIAL: TStringField;
    qrempresaNOTAFISCAL: TIntegerField;
    qrempresaENDERECO: TStringField;
    qrempresaCIDADE: TStringField;
    qrempresaUF: TStringField;
    qrempresaCEP: TStringField;
    qrempresaTELEFONE: TStringField;
    qrempresaCNPJ: TStringField;
    qrempresaIE: TStringField;
    qrempresaSEQNF: TIntegerField;
    qrempresaFAX: TStringField;
    qrempresaOBS1: TStringField;
    qrempresaOBS2: TStringField;
    qrempresaCONTRIBUINTE_IPI: TStringField;
    qrempresaSUBSTITUTO_TRIBUTARIO: TStringField;
    qrempresaEMPRESA_ESTADUAL: TStringField;
    qrempresaOPTANTE_SIMPLES: TStringField;
    qrempresaOPTANTE_SUPER_SIMPLES: TStringField;
    qrempresaECF: TStringField;
    qrempresaTIPO: TIntegerField;
    qrempresaIPI: TFloatField;
    qrempresaISS: TFloatField;
    qrempresaNUMERO: TStringField;
    qrempresaRESPONSAVEL: TStringField;
    qrempresaCOMPLEMENTO: TStringField;
    qrempresaBAIRRO: TStringField;
    qrempresaFARMACIA_RESP_TECNICO: TStringField;
    qrempresaFARMACIA_CRF: TStringField;
    qrempresaFARMACIA_CPF: TStringField;
    qrempresaFARMCIA_DATA: TDateTimeField;
    qrempresaFARMACIA_UF: TStringField;
    qrempresaFARMACIA_SENHA: TStringField;
    qrempresaFARMACIA_EMAIL: TStringField;
    qrempresaFARMACIA_LOGIN: TStringField;
    qrempresaFARMACIA_ENVIO: TStringField;
    qrempresaCONHECIMENTO: TIntegerField;
    qrempresaINDUSTRIA: TStringField;
    qrempresaFARMACIA_NUMEROLICENCA: TStringField;
    qrempresaCOD_MUNICIPIO_IBGE: TStringField;
    qrempresaIBGE: TStringField;
    qrempresaPIS: TFloatField;
    qrempresaCOFINS: TFloatField;
    qrempresaEMAIL: TStringField;
    qrempresaATIVIDADE: TStringField;
    qrempresaCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    qrempresaCONTADOR_NOME: TStringField;
    qrempresaCONTADOR_CPF: TStringField;
    qrempresaCONTADOR_CRC: TStringField;
    qrempresaCONTADOR_CNPJ: TStringField;
    qrempresaCONTADOR_CEP: TStringField;
    qrempresaCONTADOR_ENDERECO: TStringField;
    qrempresaCONTADOR_NUMERO: TStringField;
    qrempresaCONTADOR_COMPLEMENTO: TStringField;
    qrempresaCONTADOR_BAIRRO: TStringField;
    qrempresaCONTADOR_FONE: TStringField;
    qrempresaCONTADOR_FAX: TStringField;
    qrempresaCONTADOR_EMAIL: TStringField;
    qrempresaINSC_MUNICIPAL: TStringField;
    qrempresaDATA_ABERTURA: TDateTimeField;
    qrempresaCNAE: TStringField;
    qrempresaCRT: TStringField;
    qrempresaCONTADOR_CIDADE: TStringField;
    qrempresaCONTADOR_COD_MUNICIPIO: TStringField;
    qrempresaCONTADOR_UF: TStringField;
    qrempresaPERMITE_CREDITO: TIntegerField;
    qrempresaFANTASIA: TStringField;
    qrempresaDFIXAS: TFloatField;
    qrempresaTIPOCALCULO: TIntegerField;
    qrempresaSERIE_CTE: TStringField;
    qrempresaSEQ_CTE: TStringField;
    qrempresaCOD_PAIS: TStringField;
    qrempresaPAIS: TStringField;
    qrmodeloCODIGO: TStringField;
    qrmodeloMODELO: TStringField;
    qrmodeloSIGLA: TStringField;
    qrmodeloSINTEGRA: TStringField;
    qrmodeloTIPO_REGISTRO: TStringField;
    qrmodeloSEQUENCIANF: TIntegerField;
    qrclienteCODIGO: TStringField;
    qrclienteNOME: TStringField;
    qrclienteAPELIDO: TStringField;
    qrclienteENDERECO: TStringField;
    qrclienteBAIRRO: TStringField;
    qrclienteCIDADE: TStringField;
    qrclienteUF: TStringField;
    qrclienteCEP: TStringField;
    qrclienteCOMPLEMENTO: TStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TStringField;
    qrclienteTELEFONE2: TStringField;
    qrclienteTELEFONE3: TStringField;
    qrclienteCELULAR: TStringField;
    qrclienteEMAIL: TStringField;
    qrclienteRG: TStringField;
    qrclienteCPF: TStringField;
    qrclienteFILIACAO: TStringField;
    qrclienteESTADOCIVIL: TStringField;
    qrclienteCONJUGE: TStringField;
    qrclientePROFISSAO: TStringField;
    qrclienteEMPRESA: TStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TStringField;
    qrclienteREF2: TStringField;
    qrclienteCODVENDEDOR: TStringField;
    qrclienteDATA_CADASTRO: TDateTimeField;
    qrclienteDATA_ULTIMACOMPRA: TDateTimeField;
    qrclienteOBS1: TStringField;
    qrclienteOBS2: TStringField;
    qrclienteOBS3: TStringField;
    qrclienteOBS4: TStringField;
    qrclienteOBS5: TStringField;
    qrclienteOBS6: TStringField;
    qrclienteNASCIMENTO: TStringField;
    qrclienteCODREGIAO: TStringField;
    qrclienteCODCONVENIO: TStringField;
    qrclienteCODUSUARIO: TStringField;
    qrclienteNUMERO: TStringField;
    qrclienteRG_ORGAO: TStringField;
    qrclienteRG_ESTADO: TStringField;
    qrclienteRG_EMISSAO: TDateTimeField;
    qrclienteSEXO: TStringField;
    qrclienteHISTORICO: TBlobField;
    qrclientePREVISAO: TDateTimeField;
    qrclienteCNAE: TStringField;
    qrclienteCOD_MUNICIPIO_IBGE: TStringField;
    qrclienteIBGE: TStringField;
    qrclienteTAMANHO_CALCA: TStringField;
    qrclienteTAMANHO_BLUSA: TStringField;
    qrclienteTAMANHO_SAPATO: TStringField;
    qrclienteCORRESP_ENDERECO: TStringField;
    qrclienteCORRESP_BAIRRO: TStringField;
    qrclienteCORRESP_CIDADE: TStringField;
    qrclienteCORRESP_UF: TStringField;
    qrclienteCORRESP_CEP: TStringField;
    qrclienteCORRESP_COMPLEMENTO: TStringField;
    qrclienteRG_PRODUTOR: TStringField;
    qrclienteRESP1_NOME: TStringField;
    qrclienteRESP1_CPF: TStringField;
    qrclienteRESP1_RG: TStringField;
    qrclienteRESP1_PROFISSAO: TStringField;
    qrclienteRESP1_ESTADO_CIVIL: TStringField;
    qrclienteRESP1_ENDERECO: TStringField;
    qrclienteRESP1_BAIRRO: TStringField;
    qrclienteRESP1_CIDADE: TStringField;
    qrclienteRESP1_UF: TStringField;
    qrclienteRESP1_CEP: TStringField;
    qrclienteRESP2_NOME: TStringField;
    qrclienteRESP2_CPF: TStringField;
    qrclienteRESP2_RG: TStringField;
    qrclienteRESP2_PROFISSAO: TStringField;
    qrclienteRESP2_ESTADO_CIVIL: TStringField;
    qrclienteRESP2_ENDERECO: TStringField;
    qrclienteRESP2_BAIRRO: TStringField;
    qrclienteRESP2_CIDADE: TStringField;
    qrclienteRESP2_UF: TStringField;
    qrclienteRESP2_CEP: TStringField;
    qrclienteFOTO: TStringField;
    qrclienteCONDPGTO: TStringField;
    qrnota_itemCODNOTA: TStringField;
    qrnota_itemCODPRODUTO: TStringField;
    qrnota_itemQTDE: TFloatField;
    qrnota_itemUNITARIO: TFloatField;
    qrnota_itemTOTAL: TFloatField;
    qrnota_itemIPI: TFloatField;
    qrnota_itemICMS: TFloatField;
    qrnota_itemCFOP: TStringField;
    qrnota_itemCODGRADE: TStringField;
    qrnota_itemSERIAL: TStringField;
    qrnota_itemVALOR_IPI: TFloatField;
    qrnota_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnota_itemCST: TStringField;
    qrnota_itemVALOR_ICMS: TFloatField;
    qrnota_itemICMS_REDUZIDO: TFloatField;
    qrnota_itemBASE_CALCULO: TFloatField;
    qrnota_itemMARGEM_AGREGADA: TFloatField;
    qrnota_itemBASE_SUB: TFloatField;
    qrnota_itemICMS_SUB: TFloatField;
    qrnota_itemISENTO: TFloatField;
    qrnota_itemCODLANCAMENTO: TStringField;
    qrnota_itemDESCONTO: TFloatField;
    qrnota_itemSUBTOTAL: TFloatField;
    qrnota_itemPESO_BRUTO: TFloatField;
    qrnota_itemPESO_LIQUIDO: TFloatField;
    qrnota_itemITEM: TIntegerField;
    qrnota_itemCODIGO: TStringField;
    qrnota_itemGRADE: TStringField;
    qrnota_itemOUTRAS: TFloatField;
    qrnota_itemPIS_ALIQUOTA: TFloatField;
    qrnota_itemPIS_BASE: TFloatField;
    qrnota_itemPIS_VALOR: TFloatField;
    qrnota_itemCOFINS_ALIQUOTA: TFloatField;
    qrnota_itemCOFINS_BASE: TFloatField;
    qrnota_itemCOFINS_VALOR: TFloatField;
    qrnota_itemCODBARRA: TStringField;
    qrnota_itemALTERA_ITEM: TIntegerField;
    qrnota_itemCSOSN: TStringField;
    qrnota_itemCOMPLEMENTO: TStringField;
    qrnota_totalCODIGO: TStringField;
    qrnota_totalCODBARRA: TStringField;
    qrnota_totalPRODUTO: TStringField;
    qrnota_totalUNIDADE: TStringField;
    qrnota_totalDATA_CADASTRO: TDateTimeField;
    qrnota_totalCODGRUPO: TStringField;
    qrnota_totalCODSUBGRUPO: TStringField;
    qrnota_totalCODFORNECEDOR: TStringField;
    qrnota_totalCODMARCA: TStringField;
    qrnota_totalDATA_ULTIMACOMPRA: TDateTimeField;
    qrnota_totalNOTAFISCAL: TStringField;
    qrnota_totalPRECOCUSTO: TFloatField;
    qrnota_totalPRECOVENDA: TFloatField;
    qrnota_totalDATA_ULTIMAVENDA: TDateTimeField;
    qrnota_totalESTOQUE: TFloatField;
    qrnota_totalESTOQUEMINIMO: TFloatField;
    qrnota_totalCODALIQUOTA: TStringField;
    qrnota_totalAPLICACAO: TMemoField;
    qrnota_totalLOCALICAZAO: TStringField;
    qrnota_totalPESO: TFloatField;
    qrnota_totalVALIDADE: TStringField;
    qrnota_totalCOMISSAO: TFloatField;
    qrnota_totalUSA_BALANCA: TIntegerField;
    qrnota_totalUSA_SERIAL: TIntegerField;
    qrnota_totalUSA_GRADE: TIntegerField;
    qrnota_totalCODRECEITA: TStringField;
    qrnota_totalFOTO: TStringField;
    qrnota_totalDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrnota_totalNOTAFISCAL_ANTERIOR: TStringField;
    qrnota_totalCODFORNECEDOR_ANTERIOR: TStringField;
    qrnota_totalPRECOCUSTO_ANTERIOR: TFloatField;
    qrnota_totalPRECOVENDA_ANTERIOR: TFloatField;
    qrnota_totalCUSTOMEDIO: TFloatField;
    qrnota_totalAUTO_APLICACAO: TStringField;
    qrnota_totalAUTO_COMPLEMENTO: TStringField;
    qrnota_totalDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrnota_totalDATA_REMARCACAO_VENDA: TDateTimeField;
    qrnota_totalPRECO_PROMOCAO: TFloatField;
    qrnota_totalDATA_PROMOCAO: TDateTimeField;
    qrnota_totalFIM_PROMOCAO: TDateTimeField;
    qrnota_totalCST: TStringField;
    qrnota_totalCLASSIFICACAO_FISCAL: TStringField;
    qrnota_totalNBM: TStringField;
    qrnota_totalNCM: TStringField;
    qrnota_totalALIQUOTA: TFloatField;
    qrnota_totalIPI: TFloatField;
    qrnota_totalREDUCAO: TFloatField;
    qrnota_totalQTDE_EMBALAGEM: TFloatField;
    qrnota_totalTIPO: TStringField;
    qrnota_totalPESO_LIQUIDO: TFloatField;
    qrnota_totalFARMACIA_CONTROLADO: TStringField;
    qrnota_totalFARMACIA_APRESENTACAO: TIntegerField;
    qrnota_totalFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrnota_totalFARMACIA_PMC: TFloatField;
    qrnota_totalULTIMA_ALTERACAO: TDateTimeField;
    qrnota_totalULTIMA_CARGA: TDateTimeField;
    qrnota_totalDATA_INVENTARIO: TDateTimeField;
    qrnota_totalCUSTO_INVENTARIO: TFloatField;
    qrnota_totalESTOQUE_INVENTARIO: TFloatField;
    qrnota_totalESTOQUE_ANTERIOR: TFloatField;
    qrnota_totalPRECOVENDA_NOVO: TFloatField;
    qrnota_totalUSA_RENTABILIDADE: TIntegerField;
    qrnota_totalQUANTIDADE_MINIMA_FAB: TFloatField;
    qrnota_totalAPRESENTACAO: TStringField;
    qrnota_totalSITUACAO: TIntegerField;
    qrnota_totalPRECOVENDA1: TFloatField;
    qrnota_totalPRECOVENDA2: TFloatField;
    qrnota_totalPRECOVENDA3: TFloatField;
    qrnota_totalPRECOVENDA4: TFloatField;
    qrnota_totalPRECOVENDA5: TFloatField;
    qrnota_totalDESCONTO_PRECOVENDA: TFloatField;
    qrnota_totalDATA_INVENTARIO_ATUAL: TDateTimeField;
    qrnota_totalCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrnota_totalESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrnota_totalMARGEM_MINIMA: TFloatField;
    qrnota_totalPISCOFINS: TStringField;
    qrnota_totalREFERENCIA_FORNECEDOR: TStringField;
    qrnota_totalCOMISSAO1: TFloatField;
    qrnota_totalMARGEM_DESCONTO: TFloatField;
    qrnota_totalTAMANHO: TStringField;
    qrnota_totalCOR: TStringField;
    qrnota_totalINCIDENCIA_PISCOFINS: TStringField;
    qrnota_totalVEIC_CHASSI: TStringField;
    qrnota_totalVEIC_SERIE: TStringField;
    qrnota_totalVEIC_POTENCIA: TStringField;
    qrnota_totalVEIC_PESO_LIQUIDO: TStringField;
    qrnota_totalVEIC_PESO_BRUTO: TStringField;
    qrnota_totalVEIC_TIPO_COMBUSTIVEL: TStringField;
    qrnota_totalVEIC_RENAVAM: TStringField;
    qrnota_totalVEIC_ANO_FABRICACAO: TIntegerField;
    qrnota_totalVEIC_ANO_MODELO: TIntegerField;
    qrnota_totalVEIC_TIPO: TStringField;
    qrnota_totalVEIC_TIPO_PINTURA: TStringField;
    qrnota_totalVEIC_COD_COR: TStringField;
    qrnota_totalVEIC_COR: TStringField;
    qrnota_totalVEIC_VIN: TStringField;
    qrnota_totalVEIC_NUMERO_MOTOR: TStringField;
    qrnota_totalVEIC_CMKG: TStringField;
    qrnota_totalVEIC_CM3: TStringField;
    qrnota_totalVEIC_DISTANCIA_EIXO: TStringField;
    qrnota_totalVEIC_COD_MARCA: TStringField;
    qrnota_totalVEIC_ESPECIE: TStringField;
    qrnota_totalVEIC_CONDICAO: TStringField;
    qrnota_totalLOTE_FABRICACAO: TStringField;
    qrnota_totalLOTE_VALIDADE: TDateTimeField;
    qrnota_totalMARGEM_AGREGADA: TFloatField;
    qrnota_totalCODBARRA_NOVARTIS: TStringField;
    qrnota_totalFARMACIA_DCB: TStringField;
    qrnota_totalFARMACIA_ABCFARMA: TStringField;
    qrnota_totalFARMACIA_APRESENTACAO_CAIXA: TStringField;
    qrnota_totalFARMACIA_PRINCIPIOATIVO: TStringField;
    qrnota_totalULTIMA_COMPRA: TDateTimeField;
    qrnota_totalFARMACIA_DATAVIGENCIA: TDateTimeField;
    qrnota_totalFARMACIA_TIPO: TStringField;
    qrnota_totalUSA_COMBUSTIVEL: TStringField;
    qrnota_totalREFERENCIA: TStringField;
    qrnota_totalPERDA: TFloatField;
    qrnota_totalCOMPOSICAO1: TStringField;
    qrnota_totalCOMPOSICAO2: TStringField;
    qrnota_totalIAT: TStringField;
    qrnota_totalIPPT: TStringField;
    qrnota_totalSITUACAO_TRIBUTARIA: TStringField;
    qrnota_totalFLAG_SIS: TStringField;
    qrnota_totalFLAG_ACEITO: TStringField;
    qrnota_totalFLAG_EST: TStringField;
    qrnota_totalCSOSN: TStringField;
    qrnota_totalCODORIGINAL: TStringField;
    qrnota_totalCUSTO_ATACADO: TFloatField;
    qrnota_totalUNIDADE_ATACADO: TStringField;
    qrnota_totalQTDE_EMBALAGEMATACADO: TFloatField;
    qrnota_totalPMARGEM1: TFloatField;
    qrnota_totalPMARGEM2: TFloatField;
    qrnota_totalPMARGEM3: TFloatField;
    qrnota_totalPMARGEM4: TFloatField;
    qrnota_totalPMARGEM5: TFloatField;
    qrnota_totalPMARGEMATACADO1: TFloatField;
    qrnota_totalPMARGEMATACADO2: TFloatField;
    qrnota_totalPMARGEMATACADO3: TFloatField;
    qrnota_totalPMARGEMATACADO4: TFloatField;
    qrnota_totalPMARGEMATACADO5: TFloatField;
    qrnota_totalPMARGEMATACADO6: TFloatField;
    qrnota_totalPRECOATACADO1: TFloatField;
    qrnota_totalPRECOATACADO2: TFloatField;
    qrnota_totalPRECOATACADO3: TFloatField;
    qrnota_totalPRECOATACADO4: TFloatField;
    qrnota_totalPRECOATACADO5: TFloatField;
    qrnota_totalIND_CFOP: TStringField;
    qrnota_totalCFOP_DESC: TStringField;
    qrnota_totalUSA_LOTE: TIntegerField;
    qrnota_totalIND_CFOP_VENDA_DENTRO: TStringField;
    qrnota_totalCODCONTA: TStringField;
    qrnota_totalIND_CFOP_VENDA_FORA: TStringField;
    qrnota_totalIND_CFOP_DEVOLUCAO_DENTRO: TStringField;
    qrnota_totalIND_CFOP_DEVOLUCAO_FORA: TStringField;
    qrnota_totalIND_CFOP_GARANTIA_DENTRO: TStringField;
    qrnota_totalIND_CFOP_GARANTIA_FORA: TStringField;
    qrnota_totalUSA_TB_PC: TStringField;
    qrnota_antesCODIGO: TStringField;
    qrnota_antesCODBARRA: TStringField;
    qrnota_antesPRODUTO: TStringField;
    qrnota_antesUNIDADE: TStringField;
    qrnota_antesDATA_CADASTRO: TDateTimeField;
    qrnota_antesCODGRUPO: TStringField;
    qrnota_antesCODSUBGRUPO: TStringField;
    qrnota_antesCODFORNECEDOR: TStringField;
    qrnota_antesCODMARCA: TStringField;
    qrnota_antesDATA_ULTIMACOMPRA: TDateTimeField;
    qrnota_antesNOTAFISCAL: TStringField;
    qrnota_antesPRECOCUSTO: TFloatField;
    qrnota_antesPRECOVENDA: TFloatField;
    qrnota_antesDATA_ULTIMAVENDA: TDateTimeField;
    qrnota_antesESTOQUE: TFloatField;
    qrnota_antesESTOQUEMINIMO: TFloatField;
    qrnota_antesCODALIQUOTA: TStringField;
    qrnota_antesAPLICACAO: TMemoField;
    qrnota_antesLOCALICAZAO: TStringField;
    qrnota_antesPESO: TFloatField;
    qrnota_antesVALIDADE: TStringField;
    qrnota_antesCOMISSAO: TFloatField;
    qrnota_antesUSA_BALANCA: TIntegerField;
    qrnota_antesUSA_SERIAL: TIntegerField;
    qrnota_antesUSA_GRADE: TIntegerField;
    qrnota_antesCODRECEITA: TStringField;
    qrnota_antesFOTO: TStringField;
    qrnota_antesDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrnota_antesNOTAFISCAL_ANTERIOR: TStringField;
    qrnota_antesCODFORNECEDOR_ANTERIOR: TStringField;
    qrnota_antesPRECOCUSTO_ANTERIOR: TFloatField;
    qrnota_antesPRECOVENDA_ANTERIOR: TFloatField;
    qrnota_antesCUSTOMEDIO: TFloatField;
    qrnota_antesAUTO_APLICACAO: TStringField;
    qrnota_antesAUTO_COMPLEMENTO: TStringField;
    qrnota_antesDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrnota_antesDATA_REMARCACAO_VENDA: TDateTimeField;
    qrnota_antesPRECO_PROMOCAO: TFloatField;
    qrnota_antesDATA_PROMOCAO: TDateTimeField;
    qrnota_antesFIM_PROMOCAO: TDateTimeField;
    qrnota_antesCST: TStringField;
    qrnota_antesCLASSIFICACAO_FISCAL: TStringField;
    qrnota_antesNBM: TStringField;
    qrnota_antesNCM: TStringField;
    qrnota_antesALIQUOTA: TFloatField;
    qrnota_antesIPI: TFloatField;
    qrnota_antesREDUCAO: TFloatField;
    qrnota_antesQTDE_EMBALAGEM: TFloatField;
    qrnota_antesTIPO: TStringField;
    qrnota_antesPESO_LIQUIDO: TFloatField;
    qrnota_antesFARMACIA_CONTROLADO: TStringField;
    qrnota_antesFARMACIA_APRESENTACAO: TIntegerField;
    qrnota_antesFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrnota_antesFARMACIA_PMC: TFloatField;
    qrnota_antesULTIMA_ALTERACAO: TDateTimeField;
    qrnota_antesULTIMA_CARGA: TDateTimeField;
    qrnota_antesDATA_INVENTARIO: TDateTimeField;
    qrnota_antesCUSTO_INVENTARIO: TFloatField;
    qrnota_antesESTOQUE_INVENTARIO: TFloatField;
    qrnota_antesESTOQUE_ANTERIOR: TFloatField;
    qrnota_antesPRECOVENDA_NOVO: TFloatField;
    qrnota_antesUSA_RENTABILIDADE: TIntegerField;
    qrnota_antesQUANTIDADE_MINIMA_FAB: TFloatField;
    qrnota_antesAPRESENTACAO: TStringField;
    qrnota_antesSITUACAO: TIntegerField;
    qrnota_antesPRECOVENDA1: TFloatField;
    qrnota_antesPRECOVENDA2: TFloatField;
    qrnota_antesPRECOVENDA3: TFloatField;
    qrnota_antesPRECOVENDA4: TFloatField;
    qrnota_antesPRECOVENDA5: TFloatField;
    qrnota_antesDESCONTO_PRECOVENDA: TFloatField;
    qrnota_antesDATA_INVENTARIO_ATUAL: TDateTimeField;
    qrnota_antesCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrnota_antesESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrnota_antesMARGEM_MINIMA: TFloatField;
    qrnota_antesPISCOFINS: TStringField;
    qrnota_antesREFERENCIA_FORNECEDOR: TStringField;
    qrnota_antesCOMISSAO1: TFloatField;
    qrnota_antesMARGEM_DESCONTO: TFloatField;
    qrnota_antesTAMANHO: TStringField;
    qrnota_antesCOR: TStringField;
    qrnota_antesINCIDENCIA_PISCOFINS: TStringField;
    qrnota_antesVEIC_CHASSI: TStringField;
    qrnota_antesVEIC_SERIE: TStringField;
    qrnota_antesVEIC_POTENCIA: TStringField;
    qrnota_antesVEIC_PESO_LIQUIDO: TStringField;
    qrnota_antesVEIC_PESO_BRUTO: TStringField;
    qrnota_antesVEIC_TIPO_COMBUSTIVEL: TStringField;
    qrnota_antesVEIC_RENAVAM: TStringField;
    qrnota_antesVEIC_ANO_FABRICACAO: TIntegerField;
    qrnota_antesVEIC_ANO_MODELO: TIntegerField;
    qrnota_antesVEIC_TIPO: TStringField;
    qrnota_antesVEIC_TIPO_PINTURA: TStringField;
    qrnota_antesVEIC_COD_COR: TStringField;
    qrnota_antesVEIC_COR: TStringField;
    qrnota_antesVEIC_VIN: TStringField;
    qrnota_antesVEIC_NUMERO_MOTOR: TStringField;
    qrnota_antesVEIC_CMKG: TStringField;
    qrnota_antesVEIC_CM3: TStringField;
    qrnota_antesVEIC_DISTANCIA_EIXO: TStringField;
    qrnota_antesVEIC_COD_MARCA: TStringField;
    qrnota_antesVEIC_ESPECIE: TStringField;
    qrnota_antesVEIC_CONDICAO: TStringField;
    qrnota_antesLOTE_FABRICACAO: TStringField;
    qrnota_antesLOTE_VALIDADE: TDateTimeField;
    qrnota_antesMARGEM_AGREGADA: TFloatField;
    qrnota_antesCODBARRA_NOVARTIS: TStringField;
    qrnota_antesFARMACIA_DCB: TStringField;
    qrnota_antesFARMACIA_ABCFARMA: TStringField;
    qrnota_antesFARMACIA_APRESENTACAO_CAIXA: TStringField;
    qrnota_antesFARMACIA_PRINCIPIOATIVO: TStringField;
    qrnota_antesULTIMA_COMPRA: TDateTimeField;
    qrnota_antesFARMACIA_DATAVIGENCIA: TDateTimeField;
    qrnota_antesFARMACIA_TIPO: TStringField;
    qrnota_antesUSA_COMBUSTIVEL: TStringField;
    qrnota_antesREFERENCIA: TStringField;
    qrnota_antesPERDA: TFloatField;
    qrnota_antesCOMPOSICAO1: TStringField;
    qrnota_antesCOMPOSICAO2: TStringField;
    qrnota_antesIAT: TStringField;
    qrnota_antesIPPT: TStringField;
    qrnota_antesSITUACAO_TRIBUTARIA: TStringField;
    qrnota_antesFLAG_SIS: TStringField;
    qrnota_antesFLAG_ACEITO: TStringField;
    qrnota_antesFLAG_EST: TStringField;
    qrnota_antesCSOSN: TStringField;
    qrnota_antesCODORIGINAL: TStringField;
    qrnota_antesCUSTO_ATACADO: TFloatField;
    qrnota_antesUNIDADE_ATACADO: TStringField;
    qrnota_antesQTDE_EMBALAGEMATACADO: TFloatField;
    qrnota_antesPMARGEM1: TFloatField;
    qrnota_antesPMARGEM2: TFloatField;
    qrnota_antesPMARGEM3: TFloatField;
    qrnota_antesPMARGEM4: TFloatField;
    qrnota_antesPMARGEM5: TFloatField;
    qrnota_antesPMARGEMATACADO1: TFloatField;
    qrnota_antesPMARGEMATACADO2: TFloatField;
    qrnota_antesPMARGEMATACADO3: TFloatField;
    qrnota_antesPMARGEMATACADO4: TFloatField;
    qrnota_antesPMARGEMATACADO5: TFloatField;
    qrnota_antesPMARGEMATACADO6: TFloatField;
    qrnota_antesPRECOATACADO1: TFloatField;
    qrnota_antesPRECOATACADO2: TFloatField;
    qrnota_antesPRECOATACADO3: TFloatField;
    qrnota_antesPRECOATACADO4: TFloatField;
    qrnota_antesPRECOATACADO5: TFloatField;
    qrnota_antesIND_CFOP: TStringField;
    qrnota_antesCFOP_DESC: TStringField;
    qrnota_antesUSA_LOTE: TIntegerField;
    qrnota_antesIND_CFOP_VENDA_DENTRO: TStringField;
    qrnota_antesCODCONTA: TStringField;
    qrnota_antesIND_CFOP_VENDA_FORA: TStringField;
    qrnota_antesIND_CFOP_DEVOLUCAO_DENTRO: TStringField;
    qrnota_antesIND_CFOP_DEVOLUCAO_FORA: TStringField;
    qrnota_antesIND_CFOP_GARANTIA_DENTRO: TStringField;
    qrnota_antesIND_CFOP_GARANTIA_FORA: TStringField;
    qrnota_antesUSA_TB_PC: TStringField;
    qritem_antesCODIGO: TStringField;
    qritem_antesCODBARRA: TStringField;
    qritem_antesPRODUTO: TStringField;
    qritem_antesUNIDADE: TStringField;
    qritem_antesDATA_CADASTRO: TDateTimeField;
    qritem_antesCODGRUPO: TStringField;
    qritem_antesCODSUBGRUPO: TStringField;
    qritem_antesCODFORNECEDOR: TStringField;
    qritem_antesCODMARCA: TStringField;
    qritem_antesDATA_ULTIMACOMPRA: TDateTimeField;
    qritem_antesNOTAFISCAL: TStringField;
    qritem_antesPRECOCUSTO: TFloatField;
    qritem_antesPRECOVENDA: TFloatField;
    qritem_antesDATA_ULTIMAVENDA: TDateTimeField;
    qritem_antesESTOQUE: TFloatField;
    qritem_antesESTOQUEMINIMO: TFloatField;
    qritem_antesCODALIQUOTA: TStringField;
    qritem_antesAPLICACAO: TMemoField;
    qritem_antesLOCALICAZAO: TStringField;
    qritem_antesPESO: TFloatField;
    qritem_antesVALIDADE: TStringField;
    qritem_antesCOMISSAO: TFloatField;
    qritem_antesUSA_BALANCA: TIntegerField;
    qritem_antesUSA_SERIAL: TIntegerField;
    qritem_antesUSA_GRADE: TIntegerField;
    qritem_antesCODRECEITA: TStringField;
    qritem_antesFOTO: TStringField;
    qritem_antesDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qritem_antesNOTAFISCAL_ANTERIOR: TStringField;
    qritem_antesCODFORNECEDOR_ANTERIOR: TStringField;
    qritem_antesPRECOCUSTO_ANTERIOR: TFloatField;
    qritem_antesPRECOVENDA_ANTERIOR: TFloatField;
    qritem_antesCUSTOMEDIO: TFloatField;
    qritem_antesAUTO_APLICACAO: TStringField;
    qritem_antesAUTO_COMPLEMENTO: TStringField;
    qritem_antesDATA_REMARCACAO_CUSTO: TDateTimeField;
    qritem_antesDATA_REMARCACAO_VENDA: TDateTimeField;
    qritem_antesPRECO_PROMOCAO: TFloatField;
    qritem_antesDATA_PROMOCAO: TDateTimeField;
    qritem_antesFIM_PROMOCAO: TDateTimeField;
    qritem_antesCST: TStringField;
    qritem_antesCLASSIFICACAO_FISCAL: TStringField;
    qritem_antesNBM: TStringField;
    qritem_antesNCM: TStringField;
    qritem_antesALIQUOTA: TFloatField;
    qritem_antesIPI: TFloatField;
    qritem_antesREDUCAO: TFloatField;
    qritem_antesQTDE_EMBALAGEM: TFloatField;
    qritem_antesTIPO: TStringField;
    qritem_antesPESO_LIQUIDO: TFloatField;
    qritem_antesFARMACIA_CONTROLADO: TStringField;
    qritem_antesFARMACIA_APRESENTACAO: TIntegerField;
    qritem_antesFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qritem_antesFARMACIA_PMC: TFloatField;
    qritem_antesULTIMA_ALTERACAO: TDateTimeField;
    qritem_antesULTIMA_CARGA: TDateTimeField;
    qritem_antesDATA_INVENTARIO: TDateTimeField;
    qritem_antesCUSTO_INVENTARIO: TFloatField;
    qritem_antesESTOQUE_INVENTARIO: TFloatField;
    qritem_antesESTOQUE_ANTERIOR: TFloatField;
    qritem_antesPRECOVENDA_NOVO: TFloatField;
    qritem_antesUSA_RENTABILIDADE: TIntegerField;
    qritem_antesQUANTIDADE_MINIMA_FAB: TFloatField;
    qritem_antesAPRESENTACAO: TStringField;
    qritem_antesSITUACAO: TIntegerField;
    qritem_antesPRECOVENDA1: TFloatField;
    qritem_antesPRECOVENDA2: TFloatField;
    qritem_antesPRECOVENDA3: TFloatField;
    qritem_antesPRECOVENDA4: TFloatField;
    qritem_antesPRECOVENDA5: TFloatField;
    qritem_antesDESCONTO_PRECOVENDA: TFloatField;
    qritem_antesDATA_INVENTARIO_ATUAL: TDateTimeField;
    qritem_antesCUSTO_INVENTARIO_ATUAL: TFloatField;
    qritem_antesESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qritem_antesMARGEM_MINIMA: TFloatField;
    qritem_antesPISCOFINS: TStringField;
    qritem_antesREFERENCIA_FORNECEDOR: TStringField;
    qritem_antesCOMISSAO1: TFloatField;
    qritem_antesMARGEM_DESCONTO: TFloatField;
    qritem_antesTAMANHO: TStringField;
    qritem_antesCOR: TStringField;
    qritem_antesINCIDENCIA_PISCOFINS: TStringField;
    qritem_antesVEIC_CHASSI: TStringField;
    qritem_antesVEIC_SERIE: TStringField;
    qritem_antesVEIC_POTENCIA: TStringField;
    qritem_antesVEIC_PESO_LIQUIDO: TStringField;
    qritem_antesVEIC_PESO_BRUTO: TStringField;
    qritem_antesVEIC_TIPO_COMBUSTIVEL: TStringField;
    qritem_antesVEIC_RENAVAM: TStringField;
    qritem_antesVEIC_ANO_FABRICACAO: TIntegerField;
    qritem_antesVEIC_ANO_MODELO: TIntegerField;
    qritem_antesVEIC_TIPO: TStringField;
    qritem_antesVEIC_TIPO_PINTURA: TStringField;
    qritem_antesVEIC_COD_COR: TStringField;
    qritem_antesVEIC_COR: TStringField;
    qritem_antesVEIC_VIN: TStringField;
    qritem_antesVEIC_NUMERO_MOTOR: TStringField;
    qritem_antesVEIC_CMKG: TStringField;
    qritem_antesVEIC_CM3: TStringField;
    qritem_antesVEIC_DISTANCIA_EIXO: TStringField;
    qritem_antesVEIC_COD_MARCA: TStringField;
    qritem_antesVEIC_ESPECIE: TStringField;
    qritem_antesVEIC_CONDICAO: TStringField;
    qritem_antesLOTE_FABRICACAO: TStringField;
    qritem_antesLOTE_VALIDADE: TDateTimeField;
    qritem_antesMARGEM_AGREGADA: TFloatField;
    qritem_antesCODBARRA_NOVARTIS: TStringField;
    qritem_antesFARMACIA_DCB: TStringField;
    qritem_antesFARMACIA_ABCFARMA: TStringField;
    qritem_antesFARMACIA_APRESENTACAO_CAIXA: TStringField;
    qritem_antesFARMACIA_PRINCIPIOATIVO: TStringField;
    qritem_antesULTIMA_COMPRA: TDateTimeField;
    qritem_antesFARMACIA_DATAVIGENCIA: TDateTimeField;
    qritem_antesFARMACIA_TIPO: TStringField;
    qritem_antesUSA_COMBUSTIVEL: TStringField;
    qritem_antesREFERENCIA: TStringField;
    qritem_antesPERDA: TFloatField;
    qritem_antesCOMPOSICAO1: TStringField;
    qritem_antesCOMPOSICAO2: TStringField;
    qritem_antesIAT: TStringField;
    qritem_antesIPPT: TStringField;
    qritem_antesSITUACAO_TRIBUTARIA: TStringField;
    qritem_antesFLAG_SIS: TStringField;
    qritem_antesFLAG_ACEITO: TStringField;
    qritem_antesFLAG_EST: TStringField;
    qritem_antesCSOSN: TStringField;
    qritem_antesCODORIGINAL: TStringField;
    qritem_antesCUSTO_ATACADO: TFloatField;
    qritem_antesUNIDADE_ATACADO: TStringField;
    qritem_antesQTDE_EMBALAGEMATACADO: TFloatField;
    qritem_antesPMARGEM1: TFloatField;
    qritem_antesPMARGEM2: TFloatField;
    qritem_antesPMARGEM3: TFloatField;
    qritem_antesPMARGEM4: TFloatField;
    qritem_antesPMARGEM5: TFloatField;
    qritem_antesPMARGEMATACADO1: TFloatField;
    qritem_antesPMARGEMATACADO2: TFloatField;
    qritem_antesPMARGEMATACADO3: TFloatField;
    qritem_antesPMARGEMATACADO4: TFloatField;
    qritem_antesPMARGEMATACADO5: TFloatField;
    qritem_antesPMARGEMATACADO6: TFloatField;
    qritem_antesPRECOATACADO1: TFloatField;
    qritem_antesPRECOATACADO2: TFloatField;
    qritem_antesPRECOATACADO3: TFloatField;
    qritem_antesPRECOATACADO4: TFloatField;
    qritem_antesPRECOATACADO5: TFloatField;
    qritem_antesIND_CFOP: TStringField;
    qritem_antesCFOP_DESC: TStringField;
    qritem_antesUSA_LOTE: TIntegerField;
    qritem_antesIND_CFOP_VENDA_DENTRO: TStringField;
    qritem_antesCODCONTA: TStringField;
    qritem_antesIND_CFOP_VENDA_FORA: TStringField;
    qritem_antesIND_CFOP_DEVOLUCAO_DENTRO: TStringField;
    qritem_antesIND_CFOP_DEVOLUCAO_FORA: TStringField;
    qritem_antesIND_CFOP_GARANTIA_DENTRO: TStringField;
    qritem_antesIND_CFOP_GARANTIA_FORA: TStringField;
    qritem_antesUSA_TB_PC: TStringField;
    qrgrade_entradaCODIGO: TStringField;
    qrgrade_entradaCODPRODUTO: TStringField;
    qrgrade_entradaCODNOTA: TStringField;
    qrgrade_entradaQTDE: TFloatField;
    qrgrade_entradaCODGRADE: TStringField;
    qrgrade_entradaCODITEM: TStringField;
    qrnotaempresa: TStringField;
    procedure bincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure b(Sender: TObject);
    procedure gridRowChanged(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteButtonClick(Sender: TObject);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BfiltrarClick(Sender: TObject);
    procedure ENUMEROExit(Sender: TObject);
    procedure btotaliza_notaClick(Sender: TObject);
    procedure eclienteEnter(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure gridTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  vopcao_nfs,vopcao_item: integer;
    { Public declarations }
  end;

var
  frmnotafiscal_menu: Tfrmnotafiscal_menu;
     vrecno: integer;
       cancela : boolean;
implementation

uses modulo, principal, xloc_cliente, funcoes, notafiscal;

{$R *.dfm}

procedure Tfrmnotafiscal_menu.bincluirClick(Sender: TObject);
begin


     vrecno := qrnota.RecNo;

     vopcao_nfs := 1;

  qrnota.Insert;
  qrnota.FieldByName('codigo').asstring := frmprincipal.codifica('000061',6);
  qrnota.fieldbyname('situacao').asinteger := 1;
  qrnota.fieldbyname('baixa_estoque').asstring := 'S';
  qrnota.fieldbyname('sit').asstring := 'N';
  qrnota.fieldbyname('movimento').asstring := 'S';
  qrnota.fieldbyname('codfilial').asstring := '000001';
  qrnota.fieldbyname('codvendedor').asstring := 'S/VEND';

  FRMMODULO.QRCONFIG.OPEN;

  IF FRMMODULO.QRCONFIG.FIELDBYNAME('NF_GERAR_RECEBER').ASSTRING = '1' THEN
     qrnota.fieldbyname('fat_gerar_receber').asinteger := 1 else
     qrnota.fieldbyname('fat_gerar_receber').asinteger := 0 ;

  IF FRMMODULO.QRCONFIG.FIELDBYNAME('NF_GERAR_duplicata').ASSTRING = '1' THEN
     qrnota.fieldbyname('fat_gerar_duplicata').asinteger := 1 else
     qrnota.fieldbyname('fat_gerar_duplicata').asinteger := 0 ;






  frmnotafiscal := tfrmnotafiscal.create(self);
  frmnotafiscal.showmodal;

  qrnota.refresh;
  qrnota.RecNo := vrecno;
  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.Open;

  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from  c000007');
  qrcliente.Open;

  btotaliza_notaClick(frmnotafiscal_menu);


  

end;

procedure Tfrmnotafiscal_menu.FormShow(Sender: TObject);
begin

  qrmodelo.CLOSE;
  QRMODELO.SQL.CLEAR;
  QRMODELO.SQL.ADD('SELECT * FROM C000082 ORDER BY SINTEGRA');
  QRMODELO.OPEN;
  QRMODELO.IndexFieldNames := 'SINTEGRA';

  FRMMODULO.QRFILIAL.close;
  FRMMODULO.QRFILIAL.sql.clear;
  FRMMODULO.QRFILIAL.sql.add('select * from c000004');
  FRMMODULO.QRFILIAL.Open;


  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.SQL.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';


  frmmodulo.qrcfop.close;
  frmmodulo.qrcfop.sql.clear;
  frmmodulo.qrcfop.SQL.add('select * from c000030 ');
  frmmodulo.qrcfop.open;
  frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';

  frmmodulo.qrfiscal_modelo.close;
  frmmodulo.qrfiscal_modelo.sql.clear;
  frmmodulo.qrfiscal_modelo.sql.add('SELECT * FROM C000082 ORDER BY MODELO');
  frmmodulo.qrfiscal_modelo.open;
  frmmodulo.qrfiscal_MODELO.IndexFieldNames := 'SINTEGRA';


 dateedit1.text := '01/'+copy(datetostr(incmonth(date,-1)),4,7);
 dateedit2.date := UltimoDiaMes(date);

  qrnota.close;
  qrnota.sql.clear;
  qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf order by numero');
  qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;

  qrnota.open;


  //conf_totalnota

  rqde.Value   := qrnota.RecordCount;

  btotaliza_notaClick(frmnotafiscal_menu);

  //gridRowChanged(frmcompra_menu);
  grid.SetFocus;

end;

procedure Tfrmnotafiscal_menu.bfecharClick(Sender: TObject);
begin
   close;
end;

procedure Tfrmnotafiscal_menu.balterarClick(Sender: TObject);
var
  vrecno : integer;
begin

  vrecno := qrnota.RecNo;

  IF QRNOTA.FieldByName('SITUACAO').ASINTEGER = 1 THEN
  BEGIN
    vopcao_nfs := 2;
    IF QRNOTA.RECORDCOUNT = 0 THEN EXIT;

    qrnota.edit;






  frmnotafiscal := tfrmnotafiscal.create(self);
  frmnotafiscal.showmodal;



    qrnota.refresh;


    qrempresa.close;
    qrempresa.sql.clear;
    qrempresa.sql.add('select * from  c000004');
    qrempresa.Open;

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from  c000007');
    qrcliente.Open;

    btotaliza_notaClick(frmnotafiscal_menu);

    qrnota.RecNo := vrecno;

  END
  else
  begin
    application.messagebox('Nota fiscal cancelada! Impossível alterar!','Atenção',mb_ok+mb_iconerror);
  end;

  

end;

procedure Tfrmnotafiscal_menu.b(Sender: TObject);
begin
//
end;

procedure Tfrmnotafiscal_menu.gridRowChanged(Sender: TObject);
begin
{
  IF QRNOTA.FIELDBYNAME('SITUACAO').ASINTEGER = 1 THEN
    BALTERAR.Enabled := TRUE ELSE BALTERAR.Enabled := FALSE;
}
    
end;

procedure Tfrmnotafiscal_menu.Alterar2Click(Sender: TObject);
begin
  if balterar.Enabled then balterarClick(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.eclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ecliente.text <> '' then
    begin
    qrcliente2.close;
    qrcliente2.sql.Clear;
    qrcliente2.sql.add('select * from c000007 where codigo = '''+zerar(copy(ecliente.Text,1,6),6)+'''');
    qrcliente2.Open;
    if qrcliente2.RecordCount > 0 then
    begin
      if qrcliente2.RecordCount = 1 then
      begin
        ecliente.text := qrcliente2.fieldbyname('codigo').asstring +' '+ qrcliente2.fieldbyname('nome').asstring;
        perform(wm_nextdlgctl,0,0);
      end
      else
      begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  'select * from c000007 where upper(nome) like '''+ansiuppercase(ecliente.text)+'%'' order by nome';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;
          perform(wm_nextdlgctl,0,0);
        end;
      end;
    end
    else
    begin
      application.messagebox('Cliente não encontrado! Favor verificar!','Atenção',mb_ok+mb_iconerror);
      ecliente.setfocus;

    end;
    end;
  end;


end;

procedure Tfrmnotafiscal_menu.eclienteButtonClick(Sender: TObject);
begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  ecliente.text;
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;

        end;
        enumero.setfocus;
end;

procedure Tfrmnotafiscal_menu.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)
end;

procedure Tfrmnotafiscal_menu.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN bfiltrar.setfocus;
end;

procedure Tfrmnotafiscal_menu.BfiltrarClick(Sender: TObject);
var cliente, nota : string;
begin
  if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';
  if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

  qrnota.close;
  qrnota.sql.clear;

  if (enumero.text = '000000') or (enumero.text = '') then
  begin
    qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+cliente+nota+' order by numero');
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
  end
  else
    qrnota.SQL.add('select * from c000061 where codigo is not null '+cliente+nota+' order by numero');
  qrnota.open;

  rqde.Value   := qrnota.RecordCount;

  btotaliza_notaClick(frmnotafiscal_menu);

  gridRowChanged(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.ENUMEROExit(Sender: TObject);
begin
  enumero.text := zerar(enumero.text,6);
end;

procedure Tfrmnotafiscal_menu.btotaliza_notaClick(Sender: TObject);
begin
  rqde.value := 0;
  rtotal.value := 0;
  dsnota.DataSet := nil;
  qrnota.first;
  while not qrnota.Eof do
  begin
     rqde.Value := rqde.Value + 1;
     rtotal.value := rtotal.value + qrnota.fieldbyname('total_nota').asfloat;

    qrnota.next;
  end;
  dsnota.DataSet := qrnota;

  qrnota.RecNo := vrecno;


end;

procedure Tfrmnotafiscal_menu.eclienteEnter(Sender: TObject);
begin
     ecliente.Text := '';
end;

procedure Tfrmnotafiscal_menu.gridKeyPress(Sender: TObject; var Key: Char);
begin
{  if key = #13 then
    begin
      vrecno := qrnota.RecNo;

      vopcao_nfs := 0;

      qrnota.edit;

      frmnotafiscal := tfrmnotafiscal.create(self);
      frmnotafiscal.showmodal;
      qrnota.refresh;

      qrnota.RecNo := vrecno;

      qrempresa.close;
      qrempresa.sql.clear;
      qrempresa.sql.add('select * from  c000004');
      qrempresa.Open;

      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from  c000007');
      qrcliente.Open;

      btotaliza_notaClick(frmnotafiscal_menu);

    end;

}
end;

procedure Tfrmnotafiscal_menu.gridTitleButtonClick(Sender: TObject;
  AFieldName: String);
var cliente, nota : string;
begin

   if (ansiuppercase(aFieldName) = ansiuppercase('numero'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data_saida'))or
      (ansiuppercase(aFieldName) = ansiuppercase('modelo'))or
      (ansiuppercase(aFieldName) = ansiuppercase('serie'))or
      (ansiuppercase(aFieldName) = ansiuppercase('crop'))or
      (ansiuppercase(aFieldName) = ansiuppercase('total_nota'))or
      (ansiuppercase(aFieldName) = ansiuppercase('base_calculo'))or
      (ansiuppercase(aFieldName) = ansiuppercase('valor_icms'))then

   begin
     if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';
     if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

     qrnota.close;
     qrnota.sql.clear;
     qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+cliente+nota+' order by numero');
     qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
     qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrnota.open;

   end;

   if ansiuppercase(afieldname) = 'CLIENTE' then
   begin
     if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';
     if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

     qrnota.close;
     qrnota.sql.clear;
     qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+cliente+nota+' order by numero');
     qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
     qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrnota.open;
   end;

end;

procedure Tfrmnotafiscal_menu.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
