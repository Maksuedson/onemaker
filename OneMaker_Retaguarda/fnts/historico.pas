unit historico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvGlowButton;

type
  TfrmHistorico = class(TForm)
    qrClientesOrc: TZQuery;
    DataSource1: TDataSource;
    qrClienteVenda: TZQuery;
    dsVendaCli: TDataSource;
    qrProdutoVenda: TZQuery;
    dsProdutoVenda: TDataSource;
    wwDBGrid4: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    Ltotal: TLabel;
    Label18: TLabel;
    qrapoio3: TZQuery;
    qrvenda: TZQuery;
    btnbbbgg4: TAdvGlowButton;
    qrClienteVendaCODIGO: TWideStringField;
    qrClienteVendaCODCLIENTE: TWideStringField;
    qrClienteVendaTOTAL: TFloatField;
    qrClientesOrcCODIGO: TWideStringField;
    qrClientesOrcNOME: TWideStringField;
    qrClientesOrcAPELIDO: TWideStringField;
    qrClientesOrcENDERECO: TWideStringField;
    qrClientesOrcBAIRRO: TWideStringField;
    qrClientesOrcCIDADE: TWideStringField;
    qrClientesOrcUF: TWideStringField;
    qrClientesOrcCEP: TWideStringField;
    qrClientesOrcCOMPLEMENTO: TWideStringField;
    qrClientesOrcMORADIA: TIntegerField;
    qrClientesOrcTIPO: TIntegerField;
    qrClientesOrcSITUACAO: TIntegerField;
    qrClientesOrcTELEFONE1: TWideStringField;
    qrClientesOrcTELEFONE2: TWideStringField;
    qrClientesOrcTELEFONE3: TWideStringField;
    qrClientesOrcCELULAR: TWideStringField;
    qrClientesOrcEMAIL: TWideStringField;
    qrClientesOrcRG: TWideStringField;
    qrClientesOrcCPF: TWideStringField;
    qrClientesOrcFILIACAO: TWideStringField;
    qrClientesOrcESTADOCIVIL: TWideStringField;
    qrClientesOrcCONJUGE: TWideStringField;
    qrClientesOrcPROFISSAO: TWideStringField;
    qrClientesOrcEMPRESA: TWideStringField;
    qrClientesOrcRENDA: TFloatField;
    qrClientesOrcLIMITE: TFloatField;
    qrClientesOrcREF1: TWideStringField;
    qrClientesOrcREF2: TWideStringField;
    qrClientesOrcCODVENDEDOR: TWideStringField;
    dtfldClientesOrcDATA_CADASTRO: TDateField;
    dtfldClientesOrcDATA_ULTIMACOMPRA: TDateField;
    qrClientesOrcOBS1: TWideStringField;
    qrClientesOrcOBS2: TWideStringField;
    qrClientesOrcOBS3: TWideStringField;
    qrClientesOrcOBS4: TWideStringField;
    qrClientesOrcOBS5: TWideStringField;
    qrClientesOrcOBS6: TWideStringField;
    qrClientesOrcNASCIMENTO: TWideStringField;
    qrClientesOrcCODREGIAO: TWideStringField;
    qrClientesOrcCODCONVENIO: TWideStringField;
    qrClientesOrcCODUSUARIO: TWideStringField;
    qrClientesOrcNUMERO: TWideStringField;
    qrClientesOrcRG_ORGAO: TWideStringField;
    qrClientesOrcRG_ESTADO: TWideStringField;
    dtfldClientesOrcRG_EMISSAO: TDateField;
    qrClientesOrcSEXO: TWideStringField;
    qrClientesOrcHISTORICO: TBlobField;
    dtfldClientesOrcPREVISAO: TDateField;
    qrClientesOrcCNAE: TWideStringField;
    qrClientesOrcCOD_MUNICIPIO_IBGE: TWideStringField;
    qrClientesOrcIBGE: TWideStringField;
    qrClientesOrcTAMANHO_CALCA: TWideStringField;
    qrClientesOrcTAMANHO_BLUSA: TWideStringField;
    qrClientesOrcTAMANHO_SAPATO: TWideStringField;
    qrClientesOrcCORRESP_ENDERECO: TWideStringField;
    qrClientesOrcCORRESP_BAIRRO: TWideStringField;
    qrClientesOrcCORRESP_CIDADE: TWideStringField;
    qrClientesOrcCORRESP_UF: TWideStringField;
    qrClientesOrcCORRESP_CEP: TWideStringField;
    qrClientesOrcCORRESP_COMPLEMENTO: TWideStringField;
    qrClientesOrcRG_PRODUTOR: TWideStringField;
    qrClientesOrcRESP1_NOME: TWideStringField;
    qrClientesOrcRESP1_CPF: TWideStringField;
    qrClientesOrcRESP1_RG: TWideStringField;
    qrClientesOrcRESP1_PROFISSAO: TWideStringField;
    qrClientesOrcRESP1_ESTADO_CIVIL: TWideStringField;
    qrClientesOrcRESP1_ENDERECO: TWideStringField;
    qrClientesOrcRESP1_BAIRRO: TWideStringField;
    qrClientesOrcRESP1_CIDADE: TWideStringField;
    qrClientesOrcRESP1_UF: TWideStringField;
    qrClientesOrcRESP1_CEP: TWideStringField;
    qrClientesOrcRESP2_NOME: TWideStringField;
    qrClientesOrcRESP2_CPF: TWideStringField;
    qrClientesOrcRESP2_RG: TWideStringField;
    qrClientesOrcRESP2_PROFISSAO: TWideStringField;
    qrClientesOrcRESP2_ESTADO_CIVIL: TWideStringField;
    qrClientesOrcRESP2_ENDERECO: TWideStringField;
    qrClientesOrcRESP2_BAIRRO: TWideStringField;
    qrClientesOrcRESP2_CIDADE: TWideStringField;
    qrClientesOrcRESP2_UF: TWideStringField;
    qrClientesOrcRESP2_CEP: TWideStringField;
    qrClientesOrcFOTO: TWideStringField;
    qrClientesOrcCONDPGTO: TWideStringField;
    dtfldClienteVendaDATA: TDateField;
    qrProdutoVendaCODIGO: TWideStringField;
    qrProdutoVendaCODNOTA: TWideStringField;
    qrProdutoVendaCODPRODUTO: TWideStringField;
    qrProdutoVendaUNITARIO: TFloatField;
    qrProdutoVendaTOTAL: TFloatField;
    qrProdutoVendaICMS: TFloatField;
    qrProdutoVendaIPI: TFloatField;
    qrProdutoVendaCFOP: TWideStringField;
    dtfldProdutoVendaDATA: TDateField;
    qrProdutoVendaNUMERONOTA: TWideStringField;
    qrProdutoVendaCODCLIENTE: TWideStringField;
    qrProdutoVendaDESCONTO: TFloatField;
    qrProdutoVendaACRESCIMO: TFloatField;
    qrProdutoVendaMOVIMENTO: TIntegerField;
    qrProdutoVendaCODVENDEDOR: TWideStringField;
    qrProdutoVendaCODGRADE: TWideStringField;
    qrProdutoVendaSERIAL: TWideStringField;
    qrProdutoVendaUNIDADE: TWideStringField;
    qrProdutoVendaQTDE: TFloatField;
    qrProdutoVendaVALOR_ICMS: TFloatField;
    qrProdutoVendaICMS_REDUZIDO: TFloatField;
    qrProdutoVendaBASE_CALCULO: TFloatField;
    qrProdutoVendaVALOR_IPI: TFloatField;
    qrProdutoVendaSITUACAO: TIntegerField;
    qrProdutoVendaECF_SERIE: TWideStringField;
    qrProdutoVendaECF_CAIXA: TWideStringField;
    qrProdutoVendaCODALIQUOTA: TWideStringField;
    qrProdutoVendaCUPOM_NUMERO: TWideStringField;
    qrProdutoVendaCUPOM_MODELO: TWideStringField;
    qrProdutoVendaCUPOM_ITEM: TWideStringField;
    qrProdutoVendaALIQUOTA: TFloatField;
    qrProdutoVendaCST: TWideStringField;
    qrProdutoVendaLOTE_FABRICACAO: TWideStringField;
    qrProdutoVendaMOVIMENTO_ESTOQUE: TFloatField;
    qrProdutoVendaLANCADO: TIntegerField;
    dtfldProdutoVendaVENCIMENTO: TDateField;
    qrProdutoVendaCODBARRA: TWideStringField;
    qrProdutoVendaMARGEM_DESCONTO: TFloatField;
    qrProdutoVendaCREDITO_ICMS: TFloatField;
    qrProdutoVendaPIS: TFloatField;
    qrProdutoVendaCOFINS: TFloatField;
    qrProdutoVendaLOJA: TWideStringField;
    qrProdutoVendaCODSUBGRUPO: TWideStringField;
    qrProdutoVendaTIPO: TWideStringField;
    qrProdutoVendaCODUSUARIO: TWideStringField;
    qrProdutoVendaORIGEM: TWideStringField;
    qrProdutoVendaDESTINO: TWideStringField;
    qrProdutoVendaPRODUTO: TWideStringField;
    qrProdutoVendaCODFILIAL: TWideStringField;
    qrvendaCODIGO: TWideStringField;
    qrvendaCODCAIXA: TWideStringField;
    qrvendaCODVENDEDOR: TWideStringField;
    dtfldDATA: TDateField;
    qrvendaCODCLIENTE: TWideStringField;
    qrvendaOBS: TWideStringField;
    qrvendaMEIO_DINHEIRO: TFloatField;
    qrvendaMEIO_CHEQUEAV: TFloatField;
    qrvendaMEIO_CHEQUEAP: TFloatField;
    qrvendaMEIO_CARTAOCRED: TFloatField;
    qrvendaMEIO_CARTAODEB: TFloatField;
    qrvendaMEIO_CREDIARIO: TFloatField;
    qrvendaSUBTOTAL: TFloatField;
    qrvendaDESCONTO: TFloatField;
    qrvendaACRESCIMO: TFloatField;
    qrvendaTOTAL: TFloatField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaNUMERO_CUPOM_FISCAL: TWideStringField;
    qrvendaRETIRADO: TWideStringField;
    qrvendaMEIO_CONVENIO: TFloatField;
    qrvendaP5: TFloatField;
    qrvendaP3: TFloatField;
    qrvendaMEIO_FINANCEIRA: TFloatField;
    qrvendaCOD_FINANCEIRA: TWideStringField;
    qrvendaCOD_FINANCEIRA_LANCTO: TWideStringField;
    qrvendaCOD_FINANCEIRA_LACTO: TWideStringField;
    qrvendaCODCONVENIO: TWideStringField;
    qrvendaSITUACAO: TIntegerField;
    qrvendaCODTRANSPORTADOR: TWideStringField;
    qrvendaCODVEICULO: TWideStringField;
    qrvendaFRETE_VALOR: TFloatField;
    qrvendaFRETE_OBS: TWideStringField;
    qrvendaFRETE_LANCAR: TIntegerField;
    qrvendaECF_SERIAL: TWideStringField;
    qrvendaCODNFSAIDA: TWideStringField;
    qrvendaATACADO_VAREJO: TSmallintField;
    qrvendaNRVENDA: TWideStringField;
    qrvendaFILTRO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid3DblClick(Sender: TObject);
    procedure btnbbbgg4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistorico: TfrmHistorico;

implementation

uses orcamento, modulo;

{$R *.dfm}

procedure TfrmHistorico.FormShow(Sender: TObject);
begin

  Self.Caption := 'Histórico de Vendas | Cliente : ' + frmmodulo.orc_cliente;
  qrProdutoVendaUNITARIO.DisplayFormat := mascara_valor;
  qrClienteVendaTOTAL.DisplayFormat := mascara_valor;
  begin
    qrapoio3.close;
    qrapoio3.sql.clear;
    qrapoio3.sql.add('select SUM(TOTAL) TOTAL_GERAL from c000048 where codcliente = ''' + frmmodulo.cod_cli_orc + '''');
    qrapoio3.open;
    LTOTAL.CAPTION := FORMATFLOAT('###,###,##0.00', qrapoio3.FIELDBYNAME('TOTAL_GERAL').ASFLOAT);

    //vendas dos clientes
    qrClienteVenda.Close;
    qrClienteVenda.sql.clear;
    qrClienteVenda.sql.Add('select first 10 codcliente, codigo, data, Total from c000048 where codcliente = ''' + frmmodulo.cod_cli_orc + ''' order by data desc');
    qrClienteVenda.Open;

    qrProdutoVenda.close;
    qrProdutoVenda.sql.clear;
    qrProdutoVenda.sql.add('select * from c000032 where codnota = ''' + qrClienteVenda.fieldbyname('codigo').asstring + ''' and codcliente = ''' + frmmodulo.cod_cli_orc + '''');
    qrProdutoVenda.open;

  end;
end;

procedure TfrmHistorico.wwDBGrid3DblClick(Sender: TObject);
begin

  qrProdutoVenda.close;
  qrProdutoVenda.sql.clear;
  qrProdutoVenda.sql.add('select * from c000032 where codnota = ''' + qrClienteVenda.fieldbyname('codigo').asstring + ''' and codcliente = ''' + frmmodulo.cod_cli_orc + '''');
  qrProdutoVenda.open;

end;

procedure TfrmHistorico.btnbbbgg4Click(Sender: TObject);
begin
  close;
end;

end.

