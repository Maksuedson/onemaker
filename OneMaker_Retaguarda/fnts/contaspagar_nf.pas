unit contaspagar_nf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, Wwdbigrd, Wwdbgrid, Menus,
  AdvGlowButton, RzEdit, RzDBEdit;

type
  Tfrmcontaspagar_nf = class(TForm)
    Panel1: TPanel;
    qrnota: TZQuery;
    qritem: TZQuery;
    qrfornecedor: TZQuery;
    qrnotafornecedor: TStringField;
    Bevel1: TBevel;
    Label1: TLabel;
    dsnota: TDataSource;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    wwDBGrid1: TwwDBGrid;
    dsitem: TDataSource;
    qrproduto: TZQuery;
    qritemproduto: TStringField;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label4: TLabel;
    Label33: TLabel;
    Label54: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit2: TRzDBNumericEdit;
    RzDBNumericEdit3: TRzDBNumericEdit;
    RzDBNumericEdit4: TRzDBNumericEdit;
    RzDBNumericEdit5: TRzDBNumericEdit;
    RzDBNumericEdit6: TRzDBNumericEdit;
    RzDBNumericEdit7: TRzDBNumericEdit;
    RzDBNumericEdit8: TRzDBNumericEdit;
    RzDBNumericEdit9: TRzDBNumericEdit;
    RzDBNumericEdit10: TRzDBNumericEdit;
    RzDBNumericEdit11: TRzDBNumericEdit;
    Label5: TLabel;
    Label6: TLabel;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrnotaCODIGO: TWideStringField;
    qrnotaNUMERO: TWideStringField;
    qrnotaCODEMPRESA: TWideStringField;
    qrnotaCODFORNECEDOR: TWideStringField;
    qrnotaMODELO: TWideStringField;
    qrnotaESPECIE: TWideStringField;
    qrnotaSERIE: TWideStringField;
    qrnotaCFOP: TWideStringField;
    qrnotaCONF_BASEICMS: TFloatField;
    qrnotaCONF_VALORICMS: TFloatField;
    qrnotaCONF_BASESUB: TFloatField;
    qrnotaCONF_VALORSUB: TFloatField;
    qrnotaCONF_FRETE: TFloatField;
    qrnotaCONF_SEGURO: TFloatField;
    qrnotaCONF_OUTRAS: TFloatField;
    qrnotaCONF_IPI: TFloatField;
    qrnotaCONF_DESCONTO: TFloatField;
    qrnotaCONF_TOTALPRODUTOS: TFloatField;
    qrnotaCONF_TOTALNOTA: TFloatField;
    qrnotaCONF_ICMSRETIDO: TFloatField;
    qrnotaCONF_ICMSREDITO_PERC: TFloatField;
    qrnotaBASE_ICMS: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaVALOR_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS: TFloatField;
    qrnotaIPI: TFloatField;
    qrnotaDESCONTO: TFloatField;
    qrnotaTOTAL_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaTRANSP_NOME: TWideStringField;
    qrnotaTRANSP_FRETE: TWideStringField;
    qrnotaTRANSP_PLACA: TWideStringField;
    qrnotaTRANSP_PLACAUF: TWideStringField;
    qrnotaTRANSP_IE: TWideStringField;
    qrnotaTRANSP_CNPJ: TWideStringField;
    qrnotaTRANSP_ENDERECO: TWideStringField;
    qrnotaTRANSP_CIDADE: TWideStringField;
    qrnotaTRANSP_UF: TWideStringField;
    qrnotaTRANSP_QTDE: TFloatField;
    qrnotaTRANSP_ESPECIE: TWideStringField;
    qrnotaTRANSP_MARCA: TWideStringField;
    qrnotaTRANSP_NUMERO: TWideStringField;
    qrnotaTRANSP_PESOBRUTO: TFloatField;
    qrnotaTRANSP_PESOLIQUIDO: TFloatField;
    qrnotaOBS1: TWideStringField;
    qrnotaOBS2: TWideStringField;
    qrnotaOBS3: TWideStringField;
    qrnotaOBS4: TWideStringField;
    qrnotaOBS5: TWideStringField;
    qrnotaOBS6: TWideStringField;
    qrnotaOBS7: TWideStringField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaITENS: TIntegerField;
    qrnotaTIPO: TWideStringField;
    qrnotaNOTA_FISCAL: TWideStringField;
    qrnotaVALOR_MERCADORIAS: TFloatField;
    qrnotaCODREMETENTE: TWideStringField;
    qrnotaICMS_ISENTO: TFloatField;
    qrnotaICMS_OUTRAS: TFloatField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnotaITEM_FRETE_VALOR: TFloatField;
    qrnotaITEM_FRETE_BASE: TFloatField;
    qrnotaITEM_FRETE_ALIQUOTA: TFloatField;
    qrnotaITEM_FRETE_ICMS: TFloatField;
    qrnotaITEM_SEGURO_VALOR: TFloatField;
    qrnotaITEM_SEGURO_BASE: TFloatField;
    qrnotaITEM_SEGURO_ALIQUOTA: TFloatField;
    qrnotaITEM_SEGURO_ICMS: TFloatField;
    qrnotaITEM_PIS_VALOR: TFloatField;
    qrnotaITEM_PIS_BASE: TFloatField;
    qrnotaITEM_PIS_ALIQUOTA: TFloatField;
    qrnotaITEM_PIS_ICMS: TFloatField;
    qrnotaITEM_COMPLEMENTO_VALOR: TFloatField;
    qrnotaITEM_COMPLEMENTO_BASE: TFloatField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qrnotaITEM_COMPLEMENTO_ICMS: TFloatField;
    qrnotaITEM_SERVICO_VALOR: TFloatField;
    qrnotaITEM_SERVICO_BASE: TFloatField;
    qrnotaITEM_SERVICO_ALIQUOTA: TFloatField;
    qrnotaITEM_SERVICO_ICMS: TFloatField;
    qrnotaITEM_OUTRAS_VALOR: TFloatField;
    qrnotaITEM_OUTRAS_BASE: TFloatField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TFloatField;
    qrnotaITEM_OUTRAS_ICMS: TFloatField;
    qrnotaITEM_ESPECIAL_TOTAL: TFloatField;
    qrnotaITEM_ESPECIAL_VALOR: TFloatField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TFloatField;
    qrnotaOBS8: TWideStringField;
    qrnotaCREDITO_ICMS: TFloatField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    qrnotaOPERACAO: TWideStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaAPROVEITA_CREDITO_ICMS: TWideStringField;
    qrnotaCHAVE: TWideStringField;
    qritemCODIGO: TWideStringField;
    qritemITEM: TWideStringField;
    qritemCODNOTA: TWideStringField;
    qritemCODPRODUTO: TWideStringField;
    qritemCODLANCAMENTO: TWideStringField;
    qritemUN_COMPRA: TWideStringField;
    qritemUN_FRACAO: TWideStringField;
    qritemFRACAO: TFloatField;
    qritemCST: TWideStringField;
    qritemCFOP: TWideStringField;
    qritemQTDE: TFloatField;
    qritemUNITARIO: TFloatField;
    qritemSUBTOTAL: TFloatField;
    qritemDESCONTO: TFloatField;
    qritemTOTAL: TFloatField;
    qritemDESCONTO_P: TFloatField;
    qritemICMS_RETIDO: TWideStringField;
    qritemICMS_ALIQUOTA: TFloatField;
    qritemICMS_REDUCAO: TFloatField;
    qritemICMS_BASE: TFloatField;
    qritemICMS_VALOR: TFloatField;
    qritemICMS_VALORRETIDO: TFloatField;
    qritemICMS_ISENTO: TFloatField;
    qritemICMS_NAOTRIBUTADO: TFloatField;
    qritemSUB_MARGEM: TFloatField;
    qritemSUB_BASE: TFloatField;
    qritemSUB_VALOR: TFloatField;
    qritemIPI_TIPO: TWideStringField;
    qritemIPI_ALIQUOTA: TFloatField;
    qritemIPI_BASE: TFloatField;
    qritemIPI_VALOR: TFloatField;
    qritemTIPO: TIntegerField;
    qritemNOTAFISCAL: TWideStringField;
    qritemFRETE: TFloatField;
    qritemOUTRAS: TFloatField;
    qritemSEGURO: TFloatField;
    qritemCLASSIFICACAO_FISCAL: TWideStringField;
    qritemSUB_PRODUTOS: TFloatField;
    qritemCODFORNECEDOR: TWideStringField;
    qritemITEM_ESPECIAL_VALOR: TFloatField;
    qritemICMS_OUTRAS: TFloatField;
    qritemALTERA_ITEM: TIntegerField;
    qritemCREDITO_ICMS: TFloatField;
    qritemCREDITO_ICMS_BASE: TFloatField;
    qritemPIS_BASE: TFloatField;
    qritemPIS: TFloatField;
    qritemCOFINS_BASE: TFloatField;
    qritemCOFINS: TFloatField;
    qritemCODBARRA: TWideStringField;
    qritemPMARGEM: TFloatField;
    qritemPRECOVENDA: TFloatField;
    qritemPRECOCUSTO: TFloatField;
    qrnotaDATA_EMISSAO: TDateField;
    qrnotaDATA_LANCAMENTO: TDateField;
    qritemDATA: TDateField;
    qritemLOTE_FABRICACAO: TWideStringField;
    qritemLOTE_VALIDADE: TDateField;
    qritemLOTE_FABRICACAO_DATA: TDateField;
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_nf: Tfrmcontaspagar_nf;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmcontaspagar_nf.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar_nf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontaspagar_nf.bcancelarClick(Sender: TObject);
begin
  close;
end;

end.
