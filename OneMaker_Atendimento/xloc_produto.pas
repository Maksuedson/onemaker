unit xloc_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Buttons,
  AdvGlowButton;

type
  Tfrmxloc_produto = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    loc: TEdit;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    GRID: TwwDBGrid;
    ds: TDataSource;
    query: TZQuery;
    Bevel2: TBevel;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    FlatPanel2: TFlatPanel;
    Bevel3: TBevel;
    Label8: TLabel;
    DBText1: TDBText;
    QUERY2: TZQuery;
    PPROCURA: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    DS2: TDataSource;
    Label12: TLabel;
    Bevel8: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    combo_situacao: TComboBox;
    Bevel9: TBevel;
    Label11: TLabel;
    queryNOTA_FISCAL: TWideStringField;
    queryMARCA: TStringField;
    queryCODIGO: TWideStringField;
    queryCODBARRA: TWideStringField;
    queryPRODUTO: TWideStringField;
    queryUNIDADE: TWideStringField;
    queryDATA_CADASTRO: TDateField;
    queryCODGRUPO: TWideStringField;
    queryCODSUBGRUPO: TWideStringField;
    queryCODFORNECEDOR: TWideStringField;
    queryCODMARCA: TWideStringField;
    queryDATA_ULTIMACOMPRA: TDateField;
    queryNOTAFISCAL: TWideStringField;
    queryPRECOCUSTO: TFloatField;
    queryPRECOVENDA: TFloatField;
    queryDATA_ULTIMAVENDA: TDateField;
    queryESTOQUE: TFloatField;
    queryESTOQUEMINIMO: TFloatField;
    queryCODALIQUOTA: TWideStringField;
    queryAPLICACAO: TWideMemoField;
    queryLOCALICAZAO: TWideStringField;
    queryPESO: TFloatField;
    queryVALIDADE: TWideStringField;
    queryCOMISSAO: TFloatField;
    queryUSA_BALANCA: TIntegerField;
    queryUSA_SERIAL: TIntegerField;
    queryUSA_GRADE: TIntegerField;
    queryCODRECEITA: TWideStringField;
    queryFOTO: TWideStringField;
    queryDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    queryNOTAFISCAL_ANTERIOR: TWideStringField;
    queryCODFORNECEDOR_ANTERIOR: TWideStringField;
    queryPRECOCUSTO_ANTERIOR: TFloatField;
    queryPRECOVENDA_ANTERIOR: TFloatField;
    queryCUSTOMEDIO: TFloatField;
    queryAUTO_APLICACAO: TWideStringField;
    queryAUTO_COMPLEMENTO: TWideStringField;
    queryDATA_REMARCACAO_CUSTO: TDateField;
    queryDATA_REMARCACAO_VENDA: TDateField;
    queryPRECO_PROMOCAO: TFloatField;
    queryDATA_PROMOCAO: TDateField;
    queryFIM_PROMOCAO: TDateField;
    queryCST: TWideStringField;
    queryCLASSIFICACAO_FISCAL: TWideStringField;
    queryNBM: TWideStringField;
    queryNCM: TWideStringField;
    queryALIQUOTA: TFloatField;
    queryIPI: TFloatField;
    queryREDUCAO: TFloatField;
    queryQTDE_EMBALAGEM: TFloatField;
    queryTIPO: TWideStringField;
    queryPESO_LIQUIDO: TFloatField;
    queryFARMACIA_CONTROLADO: TWideStringField;
    queryFARMACIA_APRESENTACAO: TIntegerField;
    queryFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    queryFARMACIA_PMC: TFloatField;
    queryULTIMA_ALTERACAO: TDateField;
    queryULTIMA_CARGA: TDateField;
    queryDATA_INVENTARIO: TDateField;
    queryCUSTO_INVENTARIO: TFloatField;
    queryESTOQUE_INVENTARIO: TFloatField;
    queryESTOQUE_ANTERIOR: TFloatField;
    queryPRECOVENDA_NOVO: TFloatField;
    queryUSA_RENTABILIDADE: TIntegerField;
    queryQUANTIDADE_MINIMA_FAB: TFloatField;
    queryAPRESENTACAO: TWideStringField;
    querySITUACAO: TIntegerField;
    queryPRECOVENDA1: TFloatField;
    queryPRECOVENDA2: TFloatField;
    queryPRECOVENDA3: TFloatField;
    queryPRECOVENDA4: TFloatField;
    queryPRECOVENDA5: TFloatField;
    queryDESCONTO_PRECOVENDA: TFloatField;
    queryDATA_INVENTARIO_ATUAL: TDateField;
    queryCUSTO_INVENTARIO_ATUAL: TFloatField;
    queryESTOQUE_INVENTARIO_ATUAL: TFloatField;
    queryMARGEM_MINIMA: TFloatField;
    queryPISCOFINS: TWideStringField;
    queryREFERENCIA_FORNECEDOR: TWideStringField;
    queryCOMISSAO1: TFloatField;
    queryMARGEM_DESCONTO: TFloatField;
    queryTAMANHO: TWideStringField;
    queryCOR: TWideStringField;
    queryINCIDENCIA_PISCOFINS: TWideStringField;
    queryVEIC_CHASSI: TWideStringField;
    queryVEIC_SERIE: TWideStringField;
    queryVEIC_POTENCIA: TWideStringField;
    queryVEIC_PESO_LIQUIDO: TWideStringField;
    queryVEIC_PESO_BRUTO: TWideStringField;
    queryVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    queryVEIC_RENAVAM: TWideStringField;
    queryVEIC_ANO_FABRICACAO: TIntegerField;
    queryVEIC_ANO_MODELO: TIntegerField;
    queryVEIC_TIPO: TWideStringField;
    queryVEIC_TIPO_PINTURA: TWideStringField;
    queryVEIC_COD_COR: TWideStringField;
    queryVEIC_COR: TWideStringField;
    queryVEIC_VIN: TWideStringField;
    queryVEIC_NUMERO_MOTOR: TWideStringField;
    queryVEIC_CMKG: TWideStringField;
    queryVEIC_CM3: TWideStringField;
    queryVEIC_DISTANCIA_EIXO: TWideStringField;
    queryVEIC_COD_MARCA: TWideStringField;
    queryVEIC_ESPECIE: TWideStringField;
    queryVEIC_CONDICAO: TWideStringField;
    queryLOTE_FABRICACAO: TWideStringField;
    queryLOTE_VALIDADE: TDateField;
    queryMARGEM_AGREGADA: TFloatField;
    queryCODBARRA_NOVARTIS: TWideStringField;
    queryFARMACIA_DCB: TWideStringField;
    queryFARMACIA_ABCFARMA: TWideStringField;
    queryFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    queryFARMACIA_PRINCIPIOATIVO: TWideStringField;
    queryULTIMA_COMPRA: TDateField;
    queryFARMACIA_DATAVIGENCIA: TDateField;
    queryFARMACIA_TIPO: TWideStringField;
    queryUSA_COMBUSTIVEL: TWideStringField;
    queryREFERENCIA: TWideStringField;
    queryPERDA: TFloatField;
    queryCOMPOSICAO1: TWideStringField;
    queryCOMPOSICAO2: TWideStringField;
    queryIAT: TWideStringField;
    queryIPPT: TWideStringField;
    querySITUACAO_TRIBUTARIA: TWideStringField;
    queryFLAG_SIS: TWideStringField;
    queryFLAG_ACEITO: TWideStringField;
    queryFLAG_EST: TWideStringField;
    queryCSOSN: TWideStringField;
    queryCODORIGINAL: TWideStringField;
    queryCUSTO_ATACADO: TSingleField;
    queryUNIDADE_ATACADO: TWideStringField;
    queryQTDE_EMBALAGEMATACADO: TSingleField;
    queryPMARGEM1: TSingleField;
    queryPMARGEM2: TSingleField;
    queryPMARGEM3: TSingleField;
    queryPMARGEM4: TSingleField;
    queryPMARGEM5: TSingleField;
    queryPMARGEMATACADO1: TSingleField;
    queryPMARGEMATACADO2: TSingleField;
    queryPMARGEMATACADO3: TSingleField;
    queryPMARGEMATACADO4: TSingleField;
    queryPMARGEMATACADO5: TSingleField;
    queryPMARGEMATACADO6: TSingleField;
    queryPRECOATACADO1: TSingleField;
    queryPRECOATACADO2: TSingleField;
    queryPRECOATACADO3: TSingleField;
    queryPRECOATACADO4: TSingleField;
    queryPRECOATACADO5: TSingleField;
    queryIND_CFOP: TWideStringField;
    queryCFOP_DESC: TWideStringField;
    queryUSA_LOTE: TIntegerField;
    queryIND_CFOP_VENDA_DENTRO: TWideStringField;
    queryCODCONTA: TWideStringField;
    queryIND_CFOP_VENDA_FORA: TWideStringField;
    queryIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    queryIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    queryIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    queryIND_CFOP_GARANTIA_FORA: TWideStringField;
    queryUSA_TB_PC: TWideStringField;
    queryATIVA: TWideStringField;
    queryCEST: TWideStringField;
    queryCODPRODUTO: TWideStringField;
    queryCODFILIAL: TWideStringField;
    queryESTOQUE_INICIAL: TFloatField;
    queryENTRADAS: TFloatField;
    querySAIDAS: TFloatField;
    queryESTOQUE_ATUAL: TFloatField;
    queryULTIMA_ENTRADA: TDateField;
    queryULTIMA_SAIDA: TDateField;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure combo_situacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_produto: Tfrmxloc_produto;
  voltar : boolean;
  situacao : string;

implementation

uses modulo, principal;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    IF PPROCURA.Visible THEN WWDBGRID1.SetFocus ELSE grid.setfocus;
  end;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
      close;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.locKeyPress(Sender: TObject; var Key: Char);
var ref, tipo : string;
begin
  if key = #13 then
  begin
    if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
    if combo_localizar.ItemIndex < 3 then
    begin
      case combo_localizar.ItemIndex  OF
      0:TIPO := 'prod.PRODUTO';
      1:TIPO := 'prod.CODIGO';
      2:TIPO := 'prod.CODBARRA';
      end;
      try
        query.close;
        query.sql.clear;
        if loc.text = '' then
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao+' and prod.codigo is null')
        ELSE if loc.text = '*' then
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao)
        else
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao+' and upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);

        query.open;
      except
      end;
    end
    else
    begin
      IF PPROCURA.Visible THEN
      BEGIN
        IF combo_localizar.ItemIndex = 3 THEN
        BEGIN
          query.close;
          query.sql.clear;
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao+' and prod.CODFORNECEDOR = '''+query2.fieldbyname('codigo').asstring+''' order by prod.produto');
          query.open;
          pprocura.Visible := false;
        END;
        IF combo_localizar.ItemIndex = 4 THEN
        BEGIN
          query.close;
          query.sql.clear;
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao+' and  prod.CODmarca = '''+query2.fieldbyname('codigo').asstring+''' order by prod.produto');
          query.open;
          pprocura.Visible := false;
        END;
      END
      ELSE
      BEGIN
        if query.RecNo > 0 then
        begin
          resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
          resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
          close;
        end;
      END;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.FormShow(Sender: TObject);
begin
  if combo_situacao.itemindex = 0 then situacao := ' and situacao <> 1';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := '';

  voltar := false;
  if loc.text = '' then
  begin
    query.Close;
    query.SQL.clear;
    query.SQL.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and prod.codigo is null');
    query.open;
    loc.setfocus;
  end
  else
  begin
    query.Close;
    query.SQL.clear;
    query.SQL.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao+' and upper(prod.produto) like '''+ansiuppercase(loc.text)+'%'' order by produto');
    query.open;
    grid.setfocus;
  end;

  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then // supermercado
    combo_localizar.ItemIndex := 2;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.locChange(Sender: TObject);
var ref, tipo : string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  IF COMBO_LOCALIZAR.ITEMINDEX < 3 THEN
  BEGIN
   //
  END
  ELSE
  BEGIN
    IF COMBO_LOCALIZAR.ItemIndex = 3 THEN // FORNECEDOR
    BEGIN
      QUERY2.Close;
      QUERY2.SQL.CLEAR;
      if loc.text = '' then
        query2.sql.Add('select * from c000009 where codigo = ''xxxxxx''')
      ELSE
        QUERY2.SQL.ADD('SELECT * FROM C000009 where upper(NOME) like '''+ref+loc.Text+'%'' order by NOME');
      QUERY2.OPEN;
      IF QUERY2.RecordCount > 0 THEN
      BEGIN
        PPROCURA.Visible := TRUE;
      END
      else
        PPROCURA.Visible := false;

    END;

    IF COMBO_LOCALIZAR.ItemIndex = 4 THEN // marca
    BEGIN
      QUERY2.Close;
      QUERY2.SQL.CLEAR;
      if loc.text = '' then
        query2.sql.Add('select * from c000019 where codigo = ''xxxxxx''')
      ELSE
        QUERY2.SQL.ADD('SELECT * FROM C000019 where upper(NOME) like '''+ref+loc.Text+'%'' order by NOME');
      QUERY2.OPEN;
      IF QUERY2.RecordCount > 0 THEN
      BEGIN
        PPROCURA.Visible := TRUE;
      END
      else
        PPROCURA.Visible := false;
    END;
  END;



end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
      close;

end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.wwDBGrid1Enter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.wwDBGrid1Exit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then locKeyPress(frmxloc_produto,key);
  loc.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  loc.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmxloc_produto.combo_situacaoChange(Sender: TObject);
begin
  if combo_situacao.itemindex = 0 then situacao := ' and situacao <> 1';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := '';
end;

end.
