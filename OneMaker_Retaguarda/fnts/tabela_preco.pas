unit tabela_preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvGlowButton, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.ExtCtrls, TFlatPanelUnit, Vcl.Menus, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, acPNG;

type
  Tfrm_tb_preco = class(TForm)
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    N91: TMenuItem;
    N12: TMenuItem;
    Label96: TLabel;
    Label103: TLabel;
    FlatPanel9: TFlatPanel;
    Image5: TImage;
    FlatPanel17: TFlatPanel;
    Image7: TImage;
    FlatPanel20: TFlatPanel;
    Image8: TImage;
    FlatPanel22: TFlatPanel;
    Image9: TImage;
    FlatPanel24: TFlatPanel;
    Image10: TImage;
    FlatPanel30: TFlatPanel;
    Image15: TImage;
    FlatPanel29: TFlatPanel;
    Image14: TImage;
    FlatPanel28: TFlatPanel;
    Image13: TImage;
    FlatPanel27: TFlatPanel;
    Image12: TImage;
    FlatPanel26: TFlatPanel;
    Image11: TImage;
    FlatPanel10: TFlatPanel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    FlatPanel19: TFlatPanel;
    RzDBNumericEdit3: TRzDBNumericEdit;
    FlatPanel21: TFlatPanel;
    RzDBNumericEdit5: TRzDBNumericEdit;
    FlatPanel23: TFlatPanel;
    RzDBNumericEdit6: TRzDBNumericEdit;
    FlatPanel25: TFlatPanel;
    RzDBNumericEdit7: TRzDBNumericEdit;
    FlatPanel31: TFlatPanel;
    RzDBNumericEdit12: TRzDBNumericEdit;
    FlatPanel32: TFlatPanel;
    RzDBNumericEdit11: TRzDBNumericEdit;
    FlatPanel33: TFlatPanel;
    RzDBNumericEdit10: TRzDBNumericEdit;
    FlatPanel34: TFlatPanel;
    RzDBNumericEdit9: TRzDBNumericEdit;
    FlatPanel35: TFlatPanel;
    RzDBNumericEdit8: TRzDBNumericEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    ZQuery1CODIGO: TWideStringField;
    ZQuery1CODBARRA: TWideStringField;
    ZQuery1PRODUTO: TWideStringField;
    ZQuery1UNIDADE: TWideStringField;
    ZQuery1DATA_CADASTRO: TDateField;
    ZQuery1CODGRUPO: TWideStringField;
    ZQuery1CODSUBGRUPO: TWideStringField;
    ZQuery1CODFORNECEDOR: TWideStringField;
    ZQuery1CODMARCA: TWideStringField;
    ZQuery1DATA_ULTIMACOMPRA: TDateField;
    ZQuery1NOTAFISCAL: TWideStringField;
    ZQuery1PRECOCUSTO: TFloatField;
    ZQuery1PRECOVENDA: TFloatField;
    ZQuery1DATA_ULTIMAVENDA: TDateField;
    ZQuery1ESTOQUE: TFloatField;
    ZQuery1ESTOQUEMINIMO: TFloatField;
    ZQuery1CODALIQUOTA: TWideStringField;
    ZQuery1APLICACAO: TWideMemoField;
    ZQuery1LOCALICAZAO: TWideStringField;
    ZQuery1PESO: TFloatField;
    ZQuery1VALIDADE: TWideStringField;
    ZQuery1COMISSAO: TFloatField;
    ZQuery1USA_BALANCA: TIntegerField;
    ZQuery1USA_SERIAL: TIntegerField;
    ZQuery1USA_GRADE: TIntegerField;
    ZQuery1CODRECEITA: TWideStringField;
    ZQuery1FOTO: TWideStringField;
    ZQuery1DATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    ZQuery1NOTAFISCAL_ANTERIOR: TWideStringField;
    ZQuery1CODFORNECEDOR_ANTERIOR: TWideStringField;
    ZQuery1PRECOCUSTO_ANTERIOR: TFloatField;
    ZQuery1PRECOVENDA_ANTERIOR: TFloatField;
    ZQuery1CUSTOMEDIO: TFloatField;
    ZQuery1AUTO_APLICACAO: TWideStringField;
    ZQuery1AUTO_COMPLEMENTO: TWideStringField;
    ZQuery1DATA_REMARCACAO_CUSTO: TDateField;
    ZQuery1DATA_REMARCACAO_VENDA: TDateField;
    ZQuery1PRECO_PROMOCAO: TFloatField;
    ZQuery1DATA_PROMOCAO: TDateField;
    ZQuery1FIM_PROMOCAO: TDateField;
    ZQuery1CST: TWideStringField;
    ZQuery1CLASSIFICACAO_FISCAL: TWideStringField;
    ZQuery1NBM: TWideStringField;
    ZQuery1NCM: TWideStringField;
    ZQuery1ALIQUOTA: TFloatField;
    ZQuery1IPI: TFloatField;
    ZQuery1REDUCAO: TFloatField;
    ZQuery1QTDE_EMBALAGEM: TFloatField;
    ZQuery1TIPO: TWideStringField;
    ZQuery1PESO_LIQUIDO: TFloatField;
    ZQuery1FARMACIA_CONTROLADO: TWideStringField;
    ZQuery1FARMACIA_APRESENTACAO: TIntegerField;
    ZQuery1FARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    ZQuery1FARMACIA_PMC: TFloatField;
    ZQuery1ULTIMA_ALTERACAO: TDateField;
    ZQuery1ULTIMA_CARGA: TDateField;
    ZQuery1DATA_INVENTARIO: TDateField;
    ZQuery1CUSTO_INVENTARIO: TFloatField;
    ZQuery1ESTOQUE_INVENTARIO: TFloatField;
    ZQuery1ESTOQUE_ANTERIOR: TFloatField;
    ZQuery1PRECOVENDA_NOVO: TFloatField;
    ZQuery1USA_RENTABILIDADE: TIntegerField;
    ZQuery1QUANTIDADE_MINIMA_FAB: TFloatField;
    ZQuery1APRESENTACAO: TWideStringField;
    ZQuery1SITUACAO: TIntegerField;
    ZQuery1PRECOVENDA1: TFloatField;
    ZQuery1PRECOVENDA2: TFloatField;
    ZQuery1PRECOVENDA3: TFloatField;
    ZQuery1PRECOVENDA4: TFloatField;
    ZQuery1PRECOVENDA5: TFloatField;
    ZQuery1DESCONTO_PRECOVENDA: TFloatField;
    ZQuery1DATA_INVENTARIO_ATUAL: TDateField;
    ZQuery1CUSTO_INVENTARIO_ATUAL: TFloatField;
    ZQuery1ESTOQUE_INVENTARIO_ATUAL: TFloatField;
    ZQuery1MARGEM_MINIMA: TFloatField;
    ZQuery1PISCOFINS: TWideStringField;
    ZQuery1REFERENCIA_FORNECEDOR: TWideStringField;
    ZQuery1COMISSAO1: TFloatField;
    ZQuery1MARGEM_DESCONTO: TFloatField;
    ZQuery1TAMANHO: TWideStringField;
    ZQuery1COR: TWideStringField;
    ZQuery1INCIDENCIA_PISCOFINS: TWideStringField;
    ZQuery1VEIC_CHASSI: TWideStringField;
    ZQuery1VEIC_SERIE: TWideStringField;
    ZQuery1VEIC_POTENCIA: TWideStringField;
    ZQuery1VEIC_PESO_LIQUIDO: TWideStringField;
    ZQuery1VEIC_PESO_BRUTO: TWideStringField;
    ZQuery1VEIC_TIPO_COMBUSTIVEL: TWideStringField;
    ZQuery1VEIC_RENAVAM: TWideStringField;
    ZQuery1VEIC_ANO_FABRICACAO: TIntegerField;
    ZQuery1VEIC_ANO_MODELO: TIntegerField;
    ZQuery1VEIC_TIPO: TWideStringField;
    ZQuery1VEIC_TIPO_PINTURA: TWideStringField;
    ZQuery1VEIC_COD_COR: TWideStringField;
    ZQuery1VEIC_COR: TWideStringField;
    ZQuery1VEIC_VIN: TWideStringField;
    ZQuery1VEIC_NUMERO_MOTOR: TWideStringField;
    ZQuery1VEIC_CMKG: TWideStringField;
    ZQuery1VEIC_CM3: TWideStringField;
    ZQuery1VEIC_DISTANCIA_EIXO: TWideStringField;
    ZQuery1VEIC_COD_MARCA: TWideStringField;
    ZQuery1VEIC_ESPECIE: TWideStringField;
    ZQuery1VEIC_CONDICAO: TWideStringField;
    ZQuery1LOTE_FABRICACAO: TWideStringField;
    ZQuery1LOTE_VALIDADE: TDateField;
    ZQuery1MARGEM_AGREGADA: TFloatField;
    ZQuery1CODBARRA_NOVARTIS: TWideStringField;
    ZQuery1FARMACIA_DCB: TWideStringField;
    ZQuery1FARMACIA_ABCFARMA: TWideStringField;
    ZQuery1FARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    ZQuery1FARMACIA_PRINCIPIOATIVO: TWideStringField;
    ZQuery1ULTIMA_COMPRA: TDateField;
    ZQuery1FARMACIA_DATAVIGENCIA: TDateField;
    ZQuery1FARMACIA_TIPO: TWideStringField;
    ZQuery1USA_COMBUSTIVEL: TWideStringField;
    ZQuery1REFERENCIA: TWideStringField;
    ZQuery1PERDA: TFloatField;
    ZQuery1COMPOSICAO1: TWideStringField;
    ZQuery1COMPOSICAO2: TWideStringField;
    ZQuery1IAT: TWideStringField;
    ZQuery1IPPT: TWideStringField;
    ZQuery1SITUACAO_TRIBUTARIA: TWideStringField;
    ZQuery1FLAG_SIS: TWideStringField;
    ZQuery1FLAG_ACEITO: TWideStringField;
    ZQuery1FLAG_EST: TWideStringField;
    ZQuery1CSOSN: TWideStringField;
    ZQuery1CODORIGINAL: TWideStringField;
    ZQuery1CUSTO_ATACADO: TSingleField;
    ZQuery1UNIDADE_ATACADO: TWideStringField;
    ZQuery1QTDE_EMBALAGEMATACADO: TSingleField;
    ZQuery1PMARGEM1: TSingleField;
    ZQuery1PMARGEM2: TSingleField;
    ZQuery1PMARGEM3: TSingleField;
    ZQuery1PMARGEM4: TSingleField;
    ZQuery1PMARGEM5: TSingleField;
    ZQuery1PMARGEMATACADO1: TSingleField;
    ZQuery1PMARGEMATACADO2: TSingleField;
    ZQuery1PMARGEMATACADO3: TSingleField;
    ZQuery1PMARGEMATACADO4: TSingleField;
    ZQuery1PMARGEMATACADO5: TSingleField;
    ZQuery1PMARGEMATACADO6: TSingleField;
    ZQuery1PRECOATACADO1: TSingleField;
    ZQuery1PRECOATACADO2: TSingleField;
    ZQuery1PRECOATACADO3: TSingleField;
    ZQuery1PRECOATACADO4: TSingleField;
    ZQuery1PRECOATACADO5: TSingleField;
    ZQuery1IND_CFOP: TWideStringField;
    ZQuery1CFOP_DESC: TWideStringField;
    ZQuery1USA_LOTE: TIntegerField;
    ZQuery1IND_CFOP_VENDA_DENTRO: TWideStringField;
    ZQuery1CODCONTA: TWideStringField;
    ZQuery1IND_CFOP_VENDA_FORA: TWideStringField;
    ZQuery1IND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    ZQuery1IND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    ZQuery1IND_CFOP_GARANTIA_DENTRO: TWideStringField;
    ZQuery1IND_CFOP_GARANTIA_FORA: TWideStringField;
    ZQuery1USA_TB_PC: TWideStringField;
    ZQuery1ATIVA: TWideStringField;
    ZQuery1CEST: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tb_preco: Tfrm_tb_preco;

implementation

{$R *.dfm}

uses modulo;

procedure Tfrm_tb_preco.FormShow(Sender: TObject);
begin
  ZQuery1.close;
  ZQuery1.sql.clear;
  ZQuery1.sql.add('select * from c000025 where codigo = ''' +
    frmmodulo.cod_produto + '''');
  ZQuery1.OPEN;
end;

procedure Tfrm_tb_preco.N11Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'at1' ;
  Close
end;

procedure Tfrm_tb_preco.N12Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'vr5';
  Close
end;

procedure Tfrm_tb_preco.N21Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'at2';
  Close
end;

procedure Tfrm_tb_preco.N31Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'at3';
  Close
end;

procedure Tfrm_tb_preco.N41Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'at4';
  Close
end;

procedure Tfrm_tb_preco.N51Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'at5';
  Close
end;

procedure Tfrm_tb_preco.N61Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'vr1';
  Close
end;

procedure Tfrm_tb_preco.N71Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'vr2';
  Close
end;

procedure Tfrm_tb_preco.N81Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'vr3';
  Close
end;

procedure Tfrm_tb_preco.N91Click(Sender: TObject);
begin
  frmmodulo.tipo_preco := 'vr4';
  Close
end;

end.
