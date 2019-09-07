unit venda_item_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, StdCtrls, Mask, ExtCtrls,
  TFlatPanelUnit, Buttons, DB, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb,
  ZAbstractRODataset, ZDataset, Menus, ZAbstractDataset, AdvGlowButton,
  RzEdit, DBAccess, DBCtrls, RzDBEdit, RzDBBnEd, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  JvExMask, JvToolEdit, JvBaseEdits, Vcl.DBGrids;

type
  Tfrmvenda_item_2 = class(TForm)
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutofornecedor: TStringField;
    QUERY: TZQuery;
    FlatPanel5: TFlatPanel;
    Label1: TLabel;
    eproduto: TEdit;
    Label2: TLabel;
    Label8: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label9: TLabel;
    lserial: TLabel;
    lfornecedor: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    rqtde: TJvCalcEdit;
    runitario: TJvCalcEdit;
    rdesconto2: TJvCalcEdit;
    rdesconto1: TJvCalcEdit;
    FlatPanel4: TFlatPanel;
    rtotal: TJvCalcEdit;
    FlatPanel3: TFlatPanel;
    rsubtotal: TJvCalcEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    ecst: TRzEdit;
    Label13: TLabel;
    ealiquota: TRzNumericEdit;
    restoque: TJvCalcEdit;
    qrvendido: TZQuery;
    qrestoque: TZQuery;
    Panel2: TPanel;
    Label68: TLabel;
    esubgrupo: TRzDBButtonEdit;
    enomesubgrupo: TDBEdit;
    Label14: TLabel;
    ecomplemento: TEdit;
    dsproduto1: TDataSource;
    qrprodutosubgrupo: TStringField;
    imgProduto: TDBImage;
    GridProdutosVendidos: TDBGrid;
    lbl1: TLabel;
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
    Panel3: TPanel;
    bgravar: TAdvGlowButton;
    bt_venda_c: TAdvGlowButton;
    procedure bcancelarClick(Sender: TObject);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure runitarioEnter(Sender: TObject);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto2Enter(Sender: TObject);
    procedure runitarioExit(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure EPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure ecodigoExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ecstKeyPress(Sender: TObject; var Key: Char);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure esubgrupoButtonClick(Sender: TObject);
    procedure esubgrupoEnter(Sender: TObject);
    procedure esubgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure esubgrupoExit(Sender: TObject);
    procedure ealiquotaExit(Sender: TObject);
    procedure ecomplementoExit(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Oramentos1Click(Sender: TObject);
    procedure bservicosClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_item_2: Tfrmvenda_item_2;
  VER_PRODUTO: BOOLEAN;
  serial_grade: integer; // 0 - nenhum
  // 1 - serial
  // 2 - grade
  codigo_serial_grade: string;
  codigo_orcamento: string;
  define_tag: integer;
  var_estoque: integer;

implementation

uses modulo, principal, venda, venda_grade, venda_serial,
  xloc_produto, ecf, loc_subgrupo,
  orcamento_localizar, xloc_servico, senha, tabela_preco;

{$R *.dfm}

procedure Tfrmvenda_item_2.AdvMetroButton1Click(Sender: TObject);
begin
  eproduto.text := '';
  restoque.value := 0;
  lserial.caption := '';
  lfornecedor.caption := '';
  ecst.text := '';
  ealiquota.value := 0;
  runitario.value := 0;
  rsubtotal.value := 0;
  rdesconto1.value := 0;
  rdesconto2.value := 0;
  rtotal.value := 0;
  rqtde.value := 0;
  eproduto.setfocus;
  close;
end;

procedure Tfrmvenda_item_2.bcancelarClick(Sender: TObject);
begin
  eproduto.text := '';
  restoque.value := 0;
  lserial.caption := '';
  lfornecedor.caption := '';
  ecst.text := '';
  ealiquota.value := 0;
  runitario.value := 0;
  rsubtotal.value := 0;
  rdesconto1.value := 0;
  rdesconto2.value := 0;
  rtotal.value := 0;
  rqtde.value := 0;
  eproduto.setfocus;
  close;
end;

procedure Tfrmvenda_item_2.rqtdeEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure Tfrmvenda_item_2.rqtdeExit(Sender: TObject);
begin

  TEdit(Sender).color := clwindow;
  if frmmodulo.qrorcamento_produto.FieldByName('UNIDADE').AsString <> 'OS' then
  begin
    if not ESTOQUE_NEGATIVO then
    begin
      if restoque.value < rqtde.value then
      begin
        if frmmodulo.importando_orcamento <> 1 then
        begin
          APPLICATION.MESSAGEBOX
            ('Este produto não possue esta quantidade em estoque!', 'Atenção',
            mb_ok + MB_ICONWARNING);
          rqtde.setfocus;
          exit;
        end;
      end;
    end;
  end;

  rsubtotal.value := rqtde.value * runitario.value;
  rtotal.value := rsubtotal.value - rdesconto2.value;
end;

procedure Tfrmvenda_item_2.runitarioEnter(Sender: TObject);
begin

  TEdit(Sender).color := $00A8FFFF;

end;

procedure Tfrmvenda_item_2.rdesconto1Enter(Sender: TObject);
begin

  TEdit(Sender).color := $00A8FFFF;

end;

procedure Tfrmvenda_item_2.rdesconto2Enter(Sender: TObject);
begin

  TEdit(Sender).color := $00A8FFFF;

end;

procedure Tfrmvenda_item_2.runitarioExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;

  rsubtotal.value := rqtde.value * runitario.value;
  rtotal.value := rsubtotal.value - rdesconto2.value;

end;

procedure Tfrmvenda_item_2.rdesconto1Exit(Sender: TObject);
begin

  TEdit(Sender).color := clwindow;

  if rdesconto1.value <> 0 then
  begin
    rdesconto2.value := rsubtotal.value * (rdesconto1.value / 100);
  end;
  rtotal.value := rsubtotal.value - rdesconto2.value;

end;

procedure Tfrmvenda_item_2.rdesconto2Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;

  if rsubtotal.value <> 0 then
  begin
    rdesconto1.value := (rdesconto2.value * 100) / rsubtotal.value;
  end;

  rtotal.value := rsubtotal.value - rdesconto2.value;
end;

procedure Tfrmvenda_item_2.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if rqtde.value = 0 then
    begin
      APPLICATION.MESSAGEBOX('Favor informar uma quantidade válida!', 'Atenção',
        mb_ok + MB_ICONWARNING);
      rqtde.setfocus;
      exit;
    end;
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure Tfrmvenda_item_2.rdesconto2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmvenda_item_2.FormCreate(Sender: TObject);
begin
  // venda_item2
  if (Screen.Width = 1024) and (Screen.Height = 768) then
  begin
    TOP := FRMVENDA.TOP + 260;
    LEFT := FRMVENDA.LEFT + 490;
  end
  else
  begin
    TOP := FRMVENDA.TOP + 140;
    LEFT := FRMVENDA.LEFT + 350;
  end;

  rqtde.DisplayFormat := mascara_qtde;
  rqtde.DecimalPlaces := decimal_qtde;

  if decimal_valor > 3 then
  else
  begin
    runitario.DisplayFormat := mascara_valor;
    runitario.DecimalPlaces := decimal_valor;
  end;
end;

procedure Tfrmvenda_item_2.eprodutoEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure Tfrmvenda_item_2.eprodutoExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if qrproduto.FieldByName('FOTO').AsString <> '' then
      begin
        imgProduto.Picture.LoadFromFile(qrproduto.FieldByName('FOTO').AsString);
      end
      else
      begin
        imgProduto.Picture := nil;
      end;
end;

procedure Tfrmvenda_item_2.EPRODUTOKeyPress(Sender: TObject; var Key: Char);
var
  a, cod_serial, TIPO, codigo: string;
  achou: BOOLEAN;
  i: integer;
begin
  if Key = #13 then
  begin
    if eproduto.text <> '' then
    begin
      achou := false;
      cod_serial := '';
      TIPO := '';
      // procurar pelo codigo  de barras
      codigo := eproduto.text;

      qrproduto.close;
      qrproduto.sql.clear;
      qrproduto.sql.Add
        ('select * from c000025 where situacao = 0 and codbarra =''' +
        codigo + '''');
      qrproduto.Open;

      codigo := '';
      if qrproduto.RecordCount > 0 then
        achou := true;
      if not achou then
      begin
        // procurar pelo codigo
        codigo := FRMPRINCIPAL.zerarcodigo(codigo, 6);
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.Add
          ('select * from c000025 where situacao = 0 and  codigo =''' +
          FRMPRINCIPAL.zerarcodigo(eproduto.text, 6) + '''');
        qrproduto.Open;
        if qrproduto.RecordCount > 0 then
          achou := true;
      end;

      if not achou then
      begin
        // procurar pelo serial
        QUERY.close;
        QUERY.sql.clear;
        QUERY.sql.Add('select * from c000022 where serial =''' +
          eproduto.text + '''');
        QUERY.Open;
        if QUERY.RecordCount > 0 then
          achou := true;
        if achou then
        begin
          a := QUERY.FieldByName('codproduto').AsString;
          cod_serial := QUERY.FieldByName('serial').AsString;
          TIPO := 'SERIAL';
          qrproduto.close;
          qrproduto.sql.clear;
          qrproduto.sql.Add
            ('select * from c000025 where situacao = 0 and  codigo =''' +
            a + '''');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then
            achou := true
          else
            achou := false;
        end;
      end;

      if not achou then
      begin

        // procurar pelo codigo de barras da grade
        QUERY.close;
        QUERY.sql.clear;
        QUERY.sql.Add('select * from c000021 where codbarra =''' +
          eproduto.text + '''');
        QUERY.Open;
        if QUERY.RecordCount > 0 then
        begin
          if ESTOQUE_NEGATIVO then
            achou := true
          else
          begin
            if QUERY.FieldByName('estoque').asfloat > 0 then
              achou := true
            else
            begin
              frmmodulo.autentica_estoque_negativo := 1;
              if frmmodulo.importando_orcamento <> 1 then
              begin
                if not FRMPRINCIPAL.autentica('Venda Sem Estoque', 4) then
                begin
                  // APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!', 'Atenção', mb_ok + MB_ICONWARNING);
                  eproduto.text := '';
                 // eproduto.setfocus;
                  exit;
                end;
              end;

            end;
          end;
        end;

        if achou then
        begin
          a := QUERY.FieldByName('codproduto').AsString;
          cod_serial := QUERY.FieldByName('codigo').AsString;
          TIPO := 'GRADE';
          qrproduto.close;
          qrproduto.sql.clear;
          qrproduto.sql.Add
            ('select * from c000025 where situacao = 0 and  codigo =''' +
            a + '''');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then
            achou := true
          else
            achou := false;
        end;
      end;

      if not achou then
      begin
        codigo := eproduto.text;
        a := copy(codigo, 1, 1);
        for i := 1 to Length(a) do
        begin
          if (a[i] in ['A' .. 'Z']) then
          begin
            produto_loc := '';
            qrproduto.close;
            qrproduto.sql.clear;
            qrproduto.sql.Add
              ('select * from c000025 where situacao = 0 and  produto like ''%'
              + eproduto.text + '%''');
            qrproduto.Open;
            if qrproduto.RecordCount = 0 then
            begin
              APPLICATION.MESSAGEBOX('Produto não encontrado!', 'Aviso',
                mb_ok + MB_ICONWARNING);
              eproduto.text := '';
              exit;
            end
            else
            begin
              if qrproduto.RecordCount = 1 then
              begin
                achou := true;
              end
              else
              begin

                frmmodulo.qrconfig.Open;
                if frmmodulo.qrconfig.FieldByName('CADASTRO_PRODUTO').AsString = 'PECAS'
                then
                begin
//                  frmloc_venda_produto_auto :=
//                    tfrmloc_venda_produto_auto.create(self);
//                  frmloc_venda_produto_auto.eproduto.text := eproduto.text;
//                  frmloc_venda_produto_auto.ShowModal;
                  if produto_loc <> '' then
                  begin
                    qrproduto.close;
                    qrproduto.sql.clear;
                    qrproduto.sql.Add
                      ('select * from c000025 where situacao = 0 and  codigo like ''%'
                      + produto_loc + '%''');
                    qrproduto.Open;
                    if qrproduto.RecordCount > 0 then
                      achou := true
                    else
                      achou := false;
                  end;
                end
                else
                begin

                  frmxloc_produto := tfrmxloc_produto.create(self);
                  frmxloc_produto.loc.text := eproduto.text;
                  frmxloc_produto.ShowModal;
                  produto_loc := resultado_pesquisa1;

                  if produto_loc <> '' then
                  begin
                    qrproduto.close;
                    qrproduto.sql.clear;
                    qrproduto.sql.Add
                      ('select * from c000025 where situacao = 0 and  codigo like ''%'
                      + produto_loc + '%''');
                    qrproduto.Open;
                    if qrproduto.RecordCount > 0 then
                      achou := true
                    else
                      achou := false;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
      //
      qrproduto.Open;
      if qrproduto.RecordCount > 0 then
      begin

        // verificar se produto usa tabela preco
        if qrproduto.FieldByName('usa_tb_pc').AsString = 'SIM' then
        begin
          frmmodulo.cod_produto := qrproduto.FieldByName('codigo').AsString;
          frm_tb_preco := tfrm_tb_preco.create(self);
          frm_tb_preco.ShowModal;
        end;

        eproduto.text := qrproduto.FieldByName('codigo').AsString + ' ' +
          qrproduto.FieldByName('produto').AsString;
        runitario.value := qrproduto.FieldByName('precovenda').asfloat;
        if frmmodulo.tipo_preco = 'at1' then
          runitario.value := qrproduto.FieldByName('PRECOATACADO1').asfloat
        else if frmmodulo.tipo_preco = 'at2' then
          runitario.value := qrproduto.FieldByName('PRECOATACADO2').asfloat
        else if frmmodulo.tipo_preco = 'at3' then
          runitario.value := qrproduto.FieldByName('PRECOATACADO3').asfloat
        else if frmmodulo.tipo_preco = 'at4' then
          runitario.value := qrproduto.FieldByName('PRECOATACADO4').asfloat
        else if frmmodulo.tipo_preco = 'at5' then
          runitario.value := qrproduto.FieldByName('PRECOATACADO5').asfloat
        else if frmmodulo.tipo_preco = 'vr1' then
          runitario.value := qrproduto.FieldByName('precovenda1').asfloat
        else if frmmodulo.tipo_preco = 'vr2' then
          runitario.value := qrproduto.FieldByName('precovenda2').asfloat
        else if frmmodulo.tipo_preco = 'vr3' then
          runitario.value := qrproduto.FieldByName('precovenda3').asfloat
        else if frmmodulo.tipo_preco = 'vr4' then
          runitario.value := qrproduto.FieldByName('precovenda4').asfloat
        else if frmmodulo.tipo_preco = 'vr5' then
          runitario.value := qrproduto.FieldByName('precovenda5').asfloat;

        rqtde.value := 1;
        eproduto.text := qrproduto.FieldByName('produto').AsString;

        qrestoque.close;
        qrestoque.sql.clear;
        qrestoque.sql.Add('select * from c000100 where codproduto = ''' +
          qrproduto.FieldByName('codigo').AsString + '''');
        qrestoque.Open;

        qrvendido.close;
        qrvendido.sql.clear;
        qrvendido.sql.Add
          ('select sum(qtde) quant from CL00001 where codproduto = ''' +
          qrproduto.FieldByName('codigo').AsString + ''' and terminal = ''' +
          numero_terminal + '''');
        qrvendido.Open;

        if qrestoque.RecordCount > 0 then
          restoque.value := (qrestoque.FieldByName('estoque_atual').asfloat -
            qrvendido.FieldByName('quant').asfloat)
        else
          restoque.value := qrvendido.FieldByName('quant').asfloat * (-1);

        if not ESTOQUE_NEGATIVO then
        begin
          if restoque.value < 0.01 then
          begin
            frmmodulo.autentica_estoque_negativo := 1;
            if frmmodulo.importando_orcamento <> 1 then
            begin
              if not FRMPRINCIPAL.autentica('Venda Sem Estoque', 4) then
              begin
                // APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!', 'Atenção', mb_ok + MB_ICONWARNING);
                eproduto.text := '';
                eproduto.setfocus;
                exit;
              end;
            end;

          end;
        end;

        lfornecedor.caption := qrproduto.FieldByName('fornecedor').AsString;
        ecst.text := qrproduto.FieldByName('cst').AsString;
        ealiquota.value := qrproduto.FieldByName('aliquota').asfloat;
        lserial.caption := '---';

        rsubtotal.value := qrproduto.FieldByName('precovenda').asfloat;
        if frmmodulo.tipo_preco = 'at1' then
          rsubtotal.value := qrproduto.FieldByName('PRECOATACADO1').asfloat
        else if frmmodulo.tipo_preco = 'at2' then
          rsubtotal.value := qrproduto.FieldByName('PRECOATACADO2').asfloat
        else if frmmodulo.tipo_preco = 'at3' then
          rsubtotal.value := qrproduto.FieldByName('PRECOATACADO3').asfloat
        else if frmmodulo.tipo_preco = 'at4' then
          rsubtotal.value := qrproduto.FieldByName('PRECOATACADO4').asfloat
        else if frmmodulo.tipo_preco = 'at5' then
          rsubtotal.value := qrproduto.FieldByName('PRECOATACADO5').asfloat
        else if frmmodulo.tipo_preco = 'vr1' then
          rsubtotal.value := qrproduto.FieldByName('precovenda1').asfloat
        else if frmmodulo.tipo_preco = 'vr2' then
          rsubtotal.value := qrproduto.FieldByName('precovenda2').asfloat
        else if frmmodulo.tipo_preco = 'vr3' then
          rsubtotal.value := qrproduto.FieldByName('precovenda3').asfloat
        else if frmmodulo.tipo_preco = 'vr4' then
          rsubtotal.value := qrproduto.FieldByName('precovenda4').asfloat
        else if frmmodulo.tipo_preco = 'vr5' then
          rsubtotal.value := qrproduto.FieldByName('precovenda5').asfloat;

        rdesconto1.value := 0;
        rdesconto2.value := 0;
        rtotal.value := qrproduto.FieldByName('precovenda').asfloat;
        if frmmodulo.tipo_preco = 'at1' then
          rtotal.value := qrproduto.FieldByName('PRECOATACADO1').asfloat
        else if frmmodulo.tipo_preco = 'at2' then
          rtotal.value := qrproduto.FieldByName('PRECOATACADO2').asfloat
        else if frmmodulo.tipo_preco = 'at3' then
          rtotal.value := qrproduto.FieldByName('PRECOATACADO3').asfloat
        else if frmmodulo.tipo_preco = 'at4' then
          rtotal.value := qrproduto.FieldByName('PRECOATACADO4').asfloat
        else if frmmodulo.tipo_preco = 'at5' then
          rtotal.value := qrproduto.FieldByName('PRECOATACADO5').asfloat
        else if frmmodulo.tipo_preco = 'vr1' then
          rtotal.value := qrproduto.FieldByName('precovenda1').asfloat
        else if frmmodulo.tipo_preco = 'vr2' then
          rtotal.value := qrproduto.FieldByName('precovenda2').asfloat
        else if frmmodulo.tipo_preco = 'vr3' then
          rtotal.value := qrproduto.FieldByName('precovenda3').asfloat
        else if frmmodulo.tipo_preco = 'vr4' then
          rtotal.value := qrproduto.FieldByName('precovenda4').asfloat
        else if frmmodulo.tipo_preco = 'vr5' then
          rtotal.value := qrproduto.FieldByName('precovenda5').asfloat;

        serial_grade := 0;
        codigo_serial_grade := '';

        rqtde.Enabled := true;

        /// / verificar se produto usa grade

        if qrproduto.FieldByName('usa_grade').asinteger = 1 then
        begin
          if (cod_serial <> '') and (TIPO = 'GRADE') then
          begin
            FRMVENDA.qrproduto_grade.close;
            FRMVENDA.qrproduto_grade.sql.clear;
            FRMVENDA.qrproduto_grade.sql.Add
              ('select * from c000021 where codigo = ''' + cod_serial + '''');
            FRMVENDA.qrproduto_grade.Open;
            if FRMVENDA.qrproduto_grade.RecordCount > 0 then
            begin
              lserial.caption := FRMVENDA.qrproduto_grade.FieldByName
                ('numeracao').AsString;
              serial_grade := 2;
              codigo_serial_grade := FRMVENDA.qrproduto_grade.FieldByName
                ('codigo').AsString;
              rqtde.setfocus;
            end
            else
            begin
              APPLICATION.MESSAGEBOX('Grade não encontrada!', 'Atenção',
                mb_ok + MB_ICONWARNING);
              eproduto.text := '';
              eproduto.setfocus;
              exit;
            end;

          end
          else
          begin
            FRMVENDA.qrproduto_grade.close;
            FRMVENDA.qrproduto_grade.sql.clear;
            if ESTOQUE_NEGATIVO then
              FRMVENDA.qrproduto_grade.sql.Add
                ('select * from c000021 where codproduto = ''' +
                qrproduto.FieldByName('codigo').AsString + ''' order by codigo')
            else
              FRMVENDA.qrproduto_grade.sql.Add
                ('select * from c000021 where codproduto = ''' +
                qrproduto.FieldByName('codigo').AsString +
                ''' and estoque > 0 order by codigo');
            FRMVENDA.qrproduto_grade.Open;

            if FRMVENDA.qrproduto_grade.RecordCount = 0 then
            begin
              APPLICATION.MESSAGEBOX
                ('Não foi encontrado nenhum registro de grade para este produto!',
                'Erro', mb_ok + mb_iconerror);
              eproduto.text := '';
              eproduto.setfocus;

              restoque.value := 0;
              lserial.caption := '';
              lfornecedor.caption := '';
              ecst.text := '';
              ealiquota.value := 0;
              rqtde.value := 0;
              runitario.value := 0;
              rsubtotal.value := 0;
              rdesconto1.value := 0;
              rdesconto2.value := 0;
              rtotal.value := 0;
              exit;
            end;

            frmvenda_grade := tfrmvenda_grade.create(self);
            frmvenda_grade.ShowModal;

            if selecionado then
            begin
              lserial.caption := FRMVENDA.qrproduto_grade.FieldByName
                ('numeracao').AsString;
              serial_grade := 2;
              codigo_serial_grade := FRMVENDA.qrproduto_grade.FieldByName
                ('codigo').AsString;
              rqtde.setfocus;
            end
            else
            begin
              eproduto.setfocus;
            end;
          end;
        end
        else
        begin
          /// verificar se produto utiliza controle de seriais
          if qrproduto.FieldByName('usa_serial').asinteger = 1 then
          begin
            if (cod_serial <> '') and (TIPO = 'SERIAL') then
            begin
              FRMVENDA.qrproduto_serial.close;
              FRMVENDA.qrproduto_serial.sql.clear;
              FRMVENDA.qrproduto_serial.sql.Add
                ('select * from c000022 where codigo = ''' + cod_serial +
                ''' and situacao = 1 ');
              FRMVENDA.qrproduto_serial.Open;
              if FRMVENDA.qrproduto_serial.RecordCount > 0 then
              begin
                lserial.caption := FRMVENDA.qrproduto_serial.FieldByName
                  ('serial').AsString;
                serial_grade := 1;
                codigo_serial_grade := FRMVENDA.qrproduto_serial.FieldByName
                  ('codigo').AsString;
                rqtde.Enabled := false;
                runitario.setfocus;
              end
              else
              begin
                APPLICATION.MESSAGEBOX('Serial não encontrado!', 'Atenção',
                  mb_ok + MB_ICONWARNING);
                eproduto.text := '';
                eproduto.setfocus;
                exit;
              end;
            end
            else
            begin
              FRMVENDA.qrproduto_serial.close;
              FRMVENDA.qrproduto_serial.sql.clear;
              FRMVENDA.qrproduto_serial.sql.Add
                ('select * from c000022 where codproduto = ''' +
                qrproduto.FieldByName('codigo').AsString +
                ''' and situacao = 1 order by codigo');
              FRMVENDA.qrproduto_serial.Open;

              if FRMVENDA.qrproduto_serial.RecordCount = 0 then
              begin
                APPLICATION.MESSAGEBOX
                  ('Produto utiliza controle de serial mas não tem nenhum serial cadastrado!',
                  'Atenção', mb_ok + MB_ICONWARNING);
                eproduto.text := '';
                eproduto.setfocus;
                exit;

              end;

              frmvenda_serial := tfrmvenda_serial.create(self);
              frmvenda_serial.ShowModal;

              Panel2.Visible := true;

              if selecionado then
              begin
                lserial.caption := FRMVENDA.qrproduto_serial.FieldByName
                  ('serial').AsString;
                serial_grade := 1;
                codigo_serial_grade := FRMVENDA.qrproduto_serial.FieldByName
                  ('codigo').AsString;
                rqtde.Enabled := false;
              rdesconto1.setfocus;
              end
              else
              begin
                eproduto.setfocus;
              end;
            end;
          end
          else
          begin
            rqtde.setfocus;
          end;
        end;

      end
      else
      begin
        APPLICATION.MESSAGEBOX('Produto não encontrado!', 'Aviso',
          mb_ok + MB_ICONWARNING);
        eproduto.text := '';
        eproduto.setfocus;
      end;
    end
    else
    begin
      eproduto.setfocus;
    end;

  end
  else
    eproduto.setfocus;
end;

procedure Tfrmvenda_item_2.ecodigoExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmvenda_item_2.bgravarClick(Sender: TObject);
var
  aliquota: string;
  unidade: string;
  CODIGO_CONFIG: string;
  TEXTO: string;
  i: integer;
  tot: real;

begin
  frmmodulo.usou_produto := true;
  Panel2.Visible := false;

  if eproduto.text <> '' then
  begin
    // permissao para desconto
    if rdesconto1.value > 0 then
    begin
      frmmodulo.qrconfig.Open;
      if frmmodulo.qrconfig.FieldByName('DESCONTO_PRODUTO').asfloat > 0 then
      begin
        if rdesconto1.value > frmmodulo.qrconfig.FieldByName('DESCONTO_PRODUTO')
          .asfloat then
        begin
          if FRMPRINCIPAL.autentica('Desconto Item', 4) then
          begin
            //
          end
          else
          begin
            APPLICATION.MESSAGEBOX('Acesso não permitido!', 'Erro!',
              mb_ok + mb_iconerror);
            exit;
          end;
        end;
      end;
    end;

    rsubtotal.value := rqtde.value * runitario.value;
    rtotal.value := rsubtotal.value - rdesconto2.value;

    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.FieldByName('CUPOM_IMPRIMIR_CODIGO').AsString = '1'
    then
    begin
      if trim(lserial.caption) = '' then
        CODIGO_CONFIG := qrproduto.FieldByName('codigo').AsString
      else
        CODIGO_CONFIG := FRMPRINCIPAL.texto_justifica
          (qrproduto.FieldByName('codigo').AsString, 13, ' ', 'D');
      // qrproduto.fieldbyname('codigo').asstring
    end
    else
      CODIGO_CONFIG := FRMPRINCIPAL.texto_justifica
        (qrproduto.FieldByName('codBARRA').AsString, 13, ' ', 'D');

    // funcoes para ecf PAF
    if ecf_impressao = 1 then
    begin
      ARREDONDA := false;

      if ecf_modelo = 'SWEDA' then
      begin
        TEXTO := formatfloat('###,###,##0.00', (runitario.value * rqtde.value) -
          trunc(runitario.value * rqtde.value));
        i := pos(',', TEXTO);
        TEXTO := copy(TEXTO, i + 2, 2);
        if strtofloat(TEXTO) = 0 then
        begin
          ARREDONDA := true;
        end;
      end;
      if ARREDONDA then
        rtotal.value := runitario.value * rqtde.value;

      if (ecst.text = '060') or (ecst.text = '010') or (ecst.text = '070') then
        aliquota := 'FF'
      else if (ecst.text = '040') or (ecst.text = '030') then
        aliquota := 'II'
      else if (ecst.text = '041') or (ecst.text = '050') or (ecst.text = '051')
        or (ecst.text = '090') then
        aliquota := 'NN'
      else
      begin
        if ealiquota.value > 0 then
          aliquota := formatfloat('00.00', ealiquota.value)
        else
          aliquota := formatfloat('00.00', 17);
      end;

      unidade := qrproduto.FieldByName('unidade').AsString;
      if unidade = '' then
        unidade := 'UN';

      if lserial.caption <> '---' then
      begin

        if ecf_modelo = 'BEMATECH' then
        begin

          if ecf_vende_item_completo(ecf_modelo,
            FRMPRINCIPAL.texto_justifica(CODIGO_CONFIG, 13, ' ', 'D'),
            FRMPRINCIPAL.texto_justifica(FRMPRINCIPAL.RemoveAcentos
            (qrproduto.FieldByName('produto').AsString), 30, ' ', 'D') + '[' +
            trim(lserial.caption) + '] ' + trim(enomesubgrupo.text) + ' ' +
            trim(ecomplemento.text), aliquota, runitario.value, rqtde.value,
            rdesconto2.value, 0, unidade, rtotal.value) = 'ERRO' then
          begin
            APPLICATION.MESSAGEBOX
              ('Houve erro na impressão do item! Favor verificar!', 'Atenção',
              mb_ok + mb_iconerror);
            exit;
          end;

        end
        else
        begin

          if ecf_vende_item_completo(ecf_modelo,
            FRMPRINCIPAL.texto_justifica(CODIGO_CONFIG, 13, ' ', 'D'),
            FRMPRINCIPAL.texto_justifica(FRMPRINCIPAL.RemoveAcentos
            (qrproduto.FieldByName('produto').AsString), 30, ' ', 'D') + '[' +
            trim(lserial.caption) + '] ' + trim(enomesubgrupo.text) + ' ' +
            trim(ecomplemento.text),
            // frmprincipal.texto_justifica('['+trim(LSERIAL.Caption)+']'+frmprincipal.RemoveAcentos(qrproduto.fieldbyname('produto').asstring),24,' ','D')+
            // trim(enomesubgrupo.Text)+' '+trim(ecomplemento.Text),
            aliquota, runitario.value, rqtde.value, rdesconto2.value, 0,
            unidade, rtotal.value) = 'ERRO' then
          begin
            APPLICATION.MESSAGEBOX
              ('Houve erro na impressão do item! Favor verificar!', 'Atenção',
              mb_ok + mb_iconerror);
            exit;
          end;

        end;

      end
      else
      begin

        if ecf_vende_item_completo(ecf_modelo, CODIGO_CONFIG,
          FRMPRINCIPAL.texto_justifica(FRMPRINCIPAL.RemoveAcentos
          (qrproduto.FieldByName('produto').AsString), 29, ' ', 'D'), aliquota,
          runitario.value, rqtde.value, rdesconto2.value, 0, unidade,
          rtotal.value) = 'ERRO' then
        begin
          APPLICATION.MESSAGEBOX
            ('Houve erro na impressão do item! Favor verificar!', 'Atenção',
            mb_ok + mb_iconerror);
          exit;
        end;

      end;

    end;

    // ibtrans_item.Active := true;
    FRMVENDA.qrvenda_produto.Insert;
    FRMVENDA.qrvenda_produto.FieldByName('codproduto').AsString :=
      qrproduto.FieldByName('codigo').AsString;
    FRMVENDA.qrvenda_produto.FieldByName('codbarras').AsString :=
      qrproduto.FieldByName('codbarra').AsString;
    FRMVENDA.qrvenda_produto.FieldByName('produto').AsString :=
      qrproduto.FieldByName('produto').AsString;
    FRMVENDA.qrvenda_produto.FieldByName('NUMERACAO').AsString :=
      qrproduto.FieldByName('UNIDADE').AsString;
    FRMVENDA.qrvenda_produto.FieldByName('ALIQUOTA').asfloat :=
      qrproduto.FieldByName('ALIQUOTA').asfloat;
    FRMVENDA.qrvenda_produto.FieldByName('CST').AsString :=
      qrproduto.FieldByName('CST').AsString;
    FRMVENDA.qrvenda_produto.FieldByName('terminal').AsString :=
      numero_terminal;
    FRMVENDA.qrvenda_produto.FieldByName('qtde').asfloat := rqtde.value;
    FRMVENDA.qrvenda_produto.FieldByName('unitario').asfloat := runitario.value;
    FRMVENDA.qrvenda_produto.FieldByName('codsubgrupo').AsString :=
      qrprodutoCODSUBGRUPO.AsString;
    FRMVENDA.qrvenda_produto.FieldByName('total').asfloat := rtotal.value;
    FRMVENDA.qrvenda_produto.FieldByName('desconto').asfloat :=
      rdesconto2.value;
    FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 0;
    // TIPOS MOVIMENTOS
    if frmmodulo.natoperacao <> 'venda' then
      FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 4;

    FRMVENDA.qrvenda_produto.FieldByName('item').AsString :=
      FRMPRINCIPAL.zerarcodigo(INTTOSTR(item), 3);

    if qrprodutoPISCOFINS.AsString = 'S' then
      FRMVENDA.qrvenda_produto.FieldByName('piscofins').AsString := 'S'
    else
      FRMVENDA.qrvenda_produto.FieldByName('piscofins').AsString := 'N';

    item := item + 1;

    if serial_grade = 1 then // serial
    begin
      FRMVENDA.qrvenda_produto.FieldByName('serial').AsString :=
        lserial.caption;
      FRMVENDA.qrvenda_produto.FieldByName('codgrade').AsString :=
        FRMVENDA.qrproduto_serial.FieldByName('codigo').AsString;
      FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 1;

      FRMVENDA.qrproduto_serial.Edit;
      FRMVENDA.qrproduto_serial.FieldByName('situacao').asinteger := 2;
      FRMVENDA.qrproduto_serial.FieldByName('cliente').AsString :=
        FRMVENDA.lcliente_nome.caption;
      FRMVENDA.qrproduto_serial.FieldByName('codcliente').AsString :=
        FRMVENDA.lcliente_codigo.caption;
      FRMVENDA.qrproduto_serial.FieldByName('DATAVENDA').AsString :=
        FRMVENDA.lvenda_data.caption;
      FRMVENDA.qrproduto_serial.FieldByName('codvenda').AsString :=
        FRMVENDA.lvenda_codigo.caption;
      FRMVENDA.qrproduto_serial.FieldByName('precovenda').asfloat :=
        runitario.value;
      FRMVENDA.qrproduto_serial.post;
    end;

    if serial_grade = 2 then // grade
    begin
      FRMVENDA.qrvenda_produto.FieldByName('serial').AsString :=
        lserial.caption;
      FRMVENDA.qrvenda_produto.FieldByName('codgrade').AsString :=
        FRMVENDA.qrproduto_grade.FieldByName('codigo').AsString;
      FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 2;

      FRMVENDA.qrproduto_grade.Edit;
      FRMVENDA.qrproduto_grade.FieldByName('estoque').asfloat :=
        FRMVENDA.qrproduto_grade.FieldByName('estoque').asfloat - rqtde.value;
      FRMVENDA.qrproduto_grade.post;
    end;

    if rqtde.value < 0 then
      FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 7;
    // if frmmodulo.natoperacao = 'devolucao' then frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 7;

    FRMVENDA.qrvenda_produto.post;

    // ibtrans_item.Commit;

    frmmodulo.Conexao.Commit;

    eproduto.text := '';
    restoque.value := 0;
    lserial.caption := '';
    lfornecedor.caption := '';
    ecst.text := '';
    ealiquota.value := 0;
    rqtde.value := 0;
    runitario.value := 0;
    rsubtotal.value := 0;
    rdesconto1.value := 0;
    rdesconto2.value := 0;
    rtotal.value := 0;

    FRMVENDA.ritem.value := FRMVENDA.ritem.value + 1;
    FRMVENDA.rqtde.value := FRMVENDA.rqtde.value +
      FRMVENDA.qrvenda_produto.FieldByName('qtde').asfloat;
    FRMVENDA.rtotal.value := FRMVENDA.rtotal.value +
      FRMVENDA.qrvenda_produto.FieldByName('total').asfloat;

    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.FieldByName('CADASTRO_PRODUTO').AsString = 'PECAS'
    then
    begin
      if qrproduto.FieldByName('CODRECEITA').AsString = 'SIM' then
      begin
        VENDA_VEICULO := true;
        FRMVENDA.pveiculo.Visible := true;
        FRMVENDA.memo1.text := qrproduto.FieldByName('APLICACAO').value;
        close;
        exit;
      end;
    end;

    eproduto.setfocus;
  end
  else
  begin
    APPLICATION.MESSAGEBOX('Favor informar o produto!', 'Atenção!',
      mb_ok + MB_ICONWARNING);
    eproduto.setfocus;
  end;

end;

procedure Tfrmvenda_item_2.FormShow(Sender: TObject);
begin
  Panel2.Visible := false;
  imgProduto.Picture := nil;
  runitario.Enabled := ALTERA_UNITARIO;
  rdesconto1.value := 0;
  rdesconto2.value := 0;
  eproduto.setfocus;

  if self.Tag = 100 then
  begin
    eproduto.text := frmmodulo.qrorcamento_produto.FieldByName
      ('CODPRODUTO').AsString;
    eprodutoExit(self);
    rqtde.value := frmmodulo.qrorcamento_produto.FieldByName('QTDE').value;
    rqtdeExit(self);
    bgravarClick(self);
  end;

end;

procedure Tfrmvenda_item_2.ecstKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_item_2.ealiquotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_item_2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmvenda_item_2.esubgrupoButtonClick(Sender: TObject);
begin

  try

    frmmodulo.qrSUBGRUPO.close;
    frmmodulo.qrSUBGRUPO.sql.clear;
    frmmodulo.qrSUBGRUPO.sql.Add('select * from c000018 where codgrupo = ''' +
      qrproduto.FieldByName('codgrupo').AsString + ''' order by SUBGRUPO');
    frmmodulo.qrSUBGRUPO.Open;
    frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';

    frmloc_subgrupo := tfrmloc_subgrupo.create(self);
    frmloc_subgrupo.ShowModal;

    qrproduto.Edit;
    qrprodutoCODSUBGRUPO.AsString := frmmodulo.qrSUBGRUPO.FieldByName
      ('codigo').AsString;
    qrprodutosubgrupo.AsString := frmmodulo.qrSUBGRUPO.FieldByName
      ('subgrupo').AsString;

    APPLICATION.ProcessMessages;

  except
  end;

  ecomplemento.setfocus;

end;

procedure Tfrmvenda_item_2.esubgrupoEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  try
    frmmodulo.qrSUBGRUPO.close;
    frmmodulo.qrSUBGRUPO.sql.clear;
    frmmodulo.qrSUBGRUPO.sql.Add('select * from c000018 where codgrupo = ''' +
      qrproduto.FieldByName('codgrupo').AsString + ''' order by SUBGRUPO');
    frmmodulo.qrSUBGRUPO.Open;
    frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
  except
  end;

end;

procedure Tfrmvenda_item_2.esubgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    TEdit(Sender).color := clwindow;
    esubgrupo.text := FRMPRINCIPAL.zerarcodigo(esubgrupo.text, 6);
    if esubgrupo.text <> '000000' then
      if not FRMPRINCIPAL.Locregistro(frmmodulo.qrSUBGRUPO, esubgrupo.text,
        'codigo') then
      begin
        APPLICATION.MESSAGEBOX('Subgrupo não cadastrado!', 'Atenção',
          mb_ok + mb_iconerror);
        esubgrupo.setfocus;
        exit;
      end
      else
        ecomplemento.setfocus
    else
      esubgrupoButtonClick(frmvenda_item_2);;
  end;
end;

procedure Tfrmvenda_item_2.esubgrupoExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmvenda_item_2.ealiquotaExit(Sender: TObject);
begin
  rqtde.setfocus;
end;

procedure Tfrmvenda_item_2.ecomplementoExit(Sender: TObject);
begin
  if rqtde.Enabled = false then
    rqtde.Enabled := true;
  rqtde.setfocus;
end;

procedure Tfrmvenda_item_2.AdvGlowButton1Click(Sender: TObject);
var
  contador_orc: integer;
begin
  frmvenda_item_2.Tag := 100;
  define_tag := 1;
  frmmodulo.cod_orcamento := '';
  var_estoque := 0;
  frmmodulo.importando_orcamento := 1;

  // funcao para nao abrir o form de pesquisa de orcamentos se
  // nao tiver orcamento para o cliente selecionado

  frmmodulo.qrorcamento.close;
  frmmodulo.qrorcamento.sql.clear;
  frmmodulo.qrorcamento.sql.Add
    ('select * from c000056 where codcliente = :codcliente order by codigo');
  // frmmodulo.qrorcamento.Params.ParamByName('GERA_NF').AsInteger := 0;
  frmmodulo.qrorcamento.Params.ParamByName('codcliente').AsString :=
    FRMVENDA.lcliente_codigo.caption;
  frmmodulo.qrorcamento.Open;
  // ShowMessage(frmvenda.lcliente_codigo.Caption);

  if frmmodulo.qrorcamento.RecordCount = 0 then
  begin
    showmessage('Não foi encontrado nenhum registro!');
    exit;
  end;

  frmorcamento_localizar := tfrmorcamento_localizar.create(self);
  frmorcamento_localizar.Tag := 100;
  frmorcamento_localizar.codcliente := FRMVENDA.lcliente_codigo.caption;
  frmorcamento_localizar.ShowModal;

  if frmmodulo.cod_orcamento = '' then
    exit;

  if frmmodulo.cod_orcamento <> '' then
  begin
    frmmodulo.qrorcamento.Open;
    frmmodulo.qrorcamento.Locate('codigo', frmmodulo.cod_orcamento,
      [loCaseInsensitive]);
    frmmodulo.qrorcamento_produto.close;
    frmmodulo.qrorcamento_produto.sql.clear;
    frmmodulo.qrorcamento_produto.sql.Add
      ('SELECT * FROM C000057 WHERE CODORCAMENTO = :CODORCAMENTO');
    frmmodulo.qrorcamento_produto.Params.ParamByName('CODORCAMENTO').AsString :=
      frmmodulo.cod_orcamento;
    frmmodulo.qrorcamento_produto.Open;
  end;


  // conferir estoque dos produtos no orcamento

  if frmmodulo.qrorcamento_produto.RecordCount <> 0 then
  begin
    while not frmmodulo.qrorcamento_produto.Eof do
    begin
      if frmmodulo.qrorcamento_produto.FieldByName('UNIDADE').AsString <> 'OS'
      then
      begin
        eproduto.text := frmmodulo.qrorcamento_produto.FieldByName
          ('CODPRODUTO').AsString;
        eprodutoExit(self);
        rqtde.value := frmmodulo.qrorcamento_produto.FieldByName('QTDE').value;
        if restoque.value < rqtde.value then
        begin
          var_estoque := 1;
        end;
      end;

      frmmodulo.qrorcamento_produto.next
    end;
  end;

  // nova funcao
  // Existe produtos sem estoque no orcamento
  if var_estoque = 1 then
  begin
    // nao pode vender sem estoque Na tela de configuracoes da empresa?
    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.Fields.FieldByName('ESTOQUE_NEGATIVO').asinteger = 0
    then
    begin
      // zera contadores e aborta
      eproduto.text := '';
      restoque.value := 0.00;
      lserial.caption := '';
      lfornecedor.caption := '';
      rsubtotal.value := 0.00;
      rqtde.value := 0.00;
      runitario.value := 0.00;
      rtotal.value := 0.00;
      rsubtotal.value := 0.00;
      rdesconto2.value := 0.00;
      rsubtotal.value := rqtde.value * runitario.value;
      rtotal.value := rsubtotal.value - rdesconto2.value;
      exit;
    end;
  end;
  // se estiver ok sem produtos com estoque negativo ou pode vender sem estoque
  // continua

  begin
    if frmmodulo.cod_orcamento <> '' then
    begin
      frmmodulo.qrorcamento.Open;
      frmmodulo.qrorcamento.Locate('codigo', frmmodulo.cod_orcamento,
        [loCaseInsensitive]);
      frmmodulo.qrorcamento_produto.close;
      frmmodulo.qrorcamento_produto.sql.clear;
      frmmodulo.qrorcamento_produto.sql.Add
        ('SELECT * FROM C000057 WHERE CODORCAMENTO = :CODORCAMENTO');
      frmmodulo.qrorcamento_produto.Params.ParamByName('CODORCAMENTO').AsString
        := frmmodulo.cod_orcamento;
      frmmodulo.qrorcamento_produto.Open;
    end;

    if frmmodulo.qrorcamento_produto.RecordCount <> 0 then
    begin
      while not frmmodulo.qrorcamento_produto.Eof do
      begin
        // se for produto
        if frmmodulo.qrorcamento_produto.FieldByName('UNIDADE').AsString <> 'OS'
        then
        begin
          // movimentar estoque produtos do orcamento
          // ShowMessage(frmmodulo.qrorcamento_produto.Fields.fieldByName('PRODUTO').AsString);
          eproduto.text := frmmodulo.qrorcamento_produto.Fields.FieldByName
            ('PRODUTO').AsString;
          eprodutoExit(self);

          rqtde.value := frmmodulo.qrorcamento_produto.FieldByName
            ('QTDE').value;
          runitario.value := frmmodulo.qrorcamento_produto.FieldByName
            ('UNITARIO').value;
          rdesconto2.value := frmmodulo.qrorcamento_produto.FieldByName
            ('DESCONTO').value;
          rsubtotal.value := rqtde.value * runitario.value;
          rtotal.value := rsubtotal.value - rdesconto2.value;

          FRMVENDA.qrvenda_produto.Insert;
          FRMVENDA.qrvenda_produto.FieldByName('codproduto').AsString :=
            frmmodulo.qrorcamento_produto.FieldByName('CODPRODUTO').AsString;
          FRMVENDA.qrvenda_produto.FieldByName('codbarras').AsString :=
            frmmodulo.qrorcamento_produto.FieldByName('codbarra').AsString;
          FRMVENDA.qrvenda_produto.FieldByName('produto').AsString :=
            frmmodulo.qrorcamento_produto.FieldByName('produto').AsString;
          FRMVENDA.qrvenda_produto.FieldByName('NUMERACAO').AsString :=
            frmmodulo.qrorcamento_produto.FieldByName('UNIDADE').AsString;
          FRMVENDA.qrvenda_produto.FieldByName('terminal').AsString :=
            numero_terminal;
          FRMVENDA.qrvenda_produto.FieldByName('qtde').asfloat := rqtde.value;
          FRMVENDA.qrvenda_produto.FieldByName('unitario').asfloat :=
            runitario.value;
          // frmvenda.qrvenda_produto.FieldByName('codsubgrupo').AsString := frmmodulo.qrorcamento_produto.fieldbyname('CODSUBGRUPO').asstring;
          FRMVENDA.qrvenda_produto.FieldByName('total').asfloat := rtotal.value;
          FRMVENDA.qrvenda_produto.FieldByName('desconto').asfloat :=
            rdesconto2.value;
          FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 0;
          FRMVENDA.qrvenda_produto.FieldByName('item').AsString :=
            FRMPRINCIPAL.zerarcodigo(INTTOSTR(item), 3);

          if qrprodutoPISCOFINS.AsString = 'S' then
            FRMVENDA.qrvenda_produto.FieldByName('piscofins').AsString := 'S'
          else
            FRMVENDA.qrvenda_produto.FieldByName('piscofins').AsString := 'N';

          item := item + 1;

          if serial_grade = 1 then // serial
          begin
            FRMVENDA.qrvenda_produto.FieldByName('serial').AsString :=
              lserial.caption;
            FRMVENDA.qrvenda_produto.FieldByName('codgrade').AsString :=
              FRMVENDA.qrproduto_serial.FieldByName('codigo').AsString;
            FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 1;

            FRMVENDA.qrproduto_serial.Edit;
            FRMVENDA.qrproduto_serial.FieldByName('situacao').asinteger := 2;
            FRMVENDA.qrproduto_serial.FieldByName('cliente').AsString :=
              FRMVENDA.lcliente_nome.caption;
            FRMVENDA.qrproduto_serial.FieldByName('codcliente').AsString :=
              FRMVENDA.lcliente_codigo.caption;
            FRMVENDA.qrproduto_serial.FieldByName('DATAVENDA').AsString :=
              FRMVENDA.lvenda_data.caption;
            FRMVENDA.qrproduto_serial.FieldByName('codvenda').AsString :=
              FRMVENDA.lvenda_codigo.caption;
            FRMVENDA.qrproduto_serial.FieldByName('precovenda').asfloat :=
              runitario.value;
            FRMVENDA.qrproduto_serial.post;
          end;
          if serial_grade = 2 then // grade
          begin
            FRMVENDA.qrvenda_produto.FieldByName('serial').AsString :=
              lserial.caption;
            FRMVENDA.qrvenda_produto.FieldByName('codgrade').AsString :=
              FRMVENDA.qrproduto_grade.FieldByName('codigo').AsString;
            FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 2;

            FRMVENDA.qrproduto_grade.Edit;
            FRMVENDA.qrproduto_grade.FieldByName('estoque').asfloat :=
              FRMVENDA.qrproduto_grade.FieldByName('estoque').asfloat -
              rqtde.value;
            FRMVENDA.qrproduto_grade.post;
          end;

          if rqtde.value < 0 then
            FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 7;

          if qrprodutoPISCOFINS.AsString = 'S' then
            FRMVENDA.qrvenda_produto.FieldByName('piscofins').AsString := 'S'
          else
            FRMVENDA.qrvenda_produto.FieldByName('piscofins').AsString := 'N';

          FRMVENDA.qrvenda_produto.post;
          frmmodulo.Conexao.Commit;

          FRMVENDA.ritem.value := FRMVENDA.ritem.value + 1;
          FRMVENDA.rqtde.value := FRMVENDA.rqtde.value +
            FRMVENDA.qrvenda_produto.FieldByName('qtde').asfloat;
          FRMVENDA.rtotal.value := FRMVENDA.rtotal.value +
            FRMVENDA.qrvenda_produto.FieldByName('total').asfloat;

        end;
        // se for servico
        if frmmodulo.qrorcamento_produto.FieldByName('UNIDADE').AsString = 'OS'
        then
        begin
          frmmodulo.qrservico.close;
          frmmodulo.qrservico.Open;
          if frmmodulo.qrservico.Locate('codigo',
            frmmodulo.qrorcamento_produto.FieldByName('CODPRODUTO').AsString,
            [loCaseInsensitive]) then
          begin
            rqtde.value := frmmodulo.qrorcamento_produto.FieldByName
              ('QTDE').value;
            runitario.value := frmmodulo.qrorcamento_produto.FieldByName
              ('UNITARIO').value;
            rdesconto2.value := frmmodulo.qrorcamento_produto.FieldByName
              ('DESCONTO').value;
            rsubtotal.value := rqtde.value * runitario.value;
            rtotal.value := rsubtotal.value - rdesconto2.value;

            FRMVENDA.qrvenda_produto.Insert;
            FRMVENDA.qrvenda_produto.FieldByName('codproduto').AsString :=
              frmmodulo.qrservico.FieldByName('CODIGO').AsString;
            FRMVENDA.qrvenda_produto.FieldByName('produto').AsString :=
              frmmodulo.qrservico.FieldByName('servico').AsString;
            FRMVENDA.qrvenda_produto.FieldByName('NUMERACAO').AsString := 'OS';
            FRMVENDA.qrvenda_produto.FieldByName('terminal').AsString :=
              numero_terminal;
            FRMVENDA.qrvenda_produto.FieldByName('qtde').asfloat := rqtde.value;
            FRMVENDA.qrvenda_produto.FieldByName('unitario').asfloat :=
              runitario.value;
            FRMVENDA.qrvenda_produto.FieldByName('codsubgrupo').AsString :=
              frmmodulo.qrservico.FieldByName('codgrupo').AsString;
            FRMVENDA.qrvenda_produto.FieldByName('total').asfloat :=
              rtotal.value;
            FRMVENDA.qrvenda_produto.FieldByName('desconto').asfloat :=
              rdesconto2.value;
            FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 0;
            FRMVENDA.qrvenda_produto.FieldByName('item').AsString :=
              FRMPRINCIPAL.zerarcodigo(INTTOSTR(item), 3);

            if rqtde.value < 0 then
              FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 7;

            item := item + 1;
            FRMVENDA.qrvenda_produto.post;

            frmmodulo.Conexao.Commit;

            eproduto.text := '';
            restoque.value := 0;
            lserial.caption := '';
            lfornecedor.caption := '';
            ecst.text := '';
            ealiquota.value := 0;
            rqtde.value := 0;
            runitario.value := 0;
            rsubtotal.value := 0;
            rdesconto1.value := 0;
            rdesconto2.value := 0;
            rtotal.value := 0;

            FRMVENDA.ritem.value := FRMVENDA.ritem.value + 1;
            FRMVENDA.rqtde.value := FRMVENDA.rqtde.value +
              FRMVENDA.qrvenda_produto.FieldByName('qtde').asfloat;
            FRMVENDA.rtotal.value := FRMVENDA.rtotal.value +
              FRMVENDA.qrvenda_produto.FieldByName('total').asfloat;
            eproduto.setfocus;
          end;
        end;

        frmmodulo.qrorcamento_produto.next
      end;
    end;
  end;
  close;
end;

procedure Tfrmvenda_item_2.Oramentos1Click(Sender: TObject);
begin
  AdvGlowButton1Click(self);
end;

procedure Tfrmvenda_item_2.bservicosClick(Sender: TObject);
var
  StrX: string;
begin
  { frmvenda.qrvenda_produto.Close;
    frmvenda.qrvenda_produto.SQL.Clear;
    frmvenda.qrvenda_produto.SQL.Add('select * from CL00001');

    //saber s empresa permite servico e produto na mesma nota fiscal
    if frmmodulo.qrconfigNF_TIPO.AsInteger = 1 then
    begin
    APPLICATION.MESSAGEBOX('As Configurações atuais de Nota Fiscal de sua empresa,' + #13 +
    'Não permite a venda de serviços e produtos na mesma Nota Fiscal.' + 13 +
    'Para maiores esclarecimentos entre em contato com o suporte.!' 1, 'Atenção', mb_ok + MB_ICONWARNING);
    end; }

  frmxloc_SERVICO := tfrmxloc_SERVICO.create(self);
  frmxloc_SERVICO.ShowModal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrservico.Open;
    frmmodulo.qrservico.Locate('codigo', resultado_pesquisa1,
      [loCaseInsensitive]);
    StrX := '1';
    InputQuery('Importante', ' Digite a quantidade do serviço', StrX);

    rqtde.value := StrToInt(StrX);
    runitario.value := frmmodulo.qrservico.FieldByName('VALOR').value;
    // rqtdeExit(Self);

    rsubtotal.value := rqtde.value * runitario.value;
    rtotal.value := rsubtotal.value - rdesconto2.value;

    FRMVENDA.qrvenda_produto.Insert;
    FRMVENDA.qrvenda_produto.FieldByName('codproduto').AsString :=
      frmmodulo.qrservico.FieldByName('CODIGO').AsString;
    FRMVENDA.qrvenda_produto.FieldByName('produto').AsString :=
      frmmodulo.qrservico.FieldByName('servico').AsString;
    FRMVENDA.qrvenda_produto.FieldByName('NUMERACAO').AsString := 'OS';
    FRMVENDA.qrvenda_produto.FieldByName('terminal').AsString :=
      numero_terminal;
    FRMVENDA.qrvenda_produto.FieldByName('qtde').asfloat := rqtde.value;
    FRMVENDA.qrvenda_produto.FieldByName('unitario').asfloat := runitario.value;
    FRMVENDA.qrvenda_produto.FieldByName('codsubgrupo').AsString :=
      frmmodulo.qrservico.FieldByName('codgrupo').AsString;;
    FRMVENDA.qrvenda_produto.FieldByName('total').asfloat := rtotal.value;
    FRMVENDA.qrvenda_produto.FieldByName('desconto').asfloat :=
      rdesconto2.value;
    FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 0;
    FRMVENDA.qrvenda_produto.FieldByName('item').AsString :=
      FRMPRINCIPAL.zerarcodigo(INTTOSTR(item), 3);

    if rqtde.value < 0 then
      FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger := 7;

    item := item + 1;
    FRMVENDA.qrvenda_produto.post;

    // ibtrans_item.Commit;

    frmmodulo.Conexao.Commit;

    eproduto.text := '';
    restoque.value := 0;
    lserial.caption := '';
    lfornecedor.caption := '';
    ecst.text := '';
    ealiquota.value := 0;
    rqtde.value := 0;
    runitario.value := 0;
    rsubtotal.value := 0;
    rdesconto1.value := 0;
    rdesconto2.value := 0;
    rtotal.value := 0;

    FRMVENDA.ritem.value := FRMVENDA.ritem.value + 1;
    FRMVENDA.rqtde.value := FRMVENDA.rqtde.value +
      FRMVENDA.qrvenda_produto.FieldByName('qtde').asfloat;
    FRMVENDA.rtotal.value := FRMVENDA.rtotal.value +
      FRMVENDA.qrvenda_produto.FieldByName('total').asfloat;
    eproduto.setfocus;
  end;
end;

end.
