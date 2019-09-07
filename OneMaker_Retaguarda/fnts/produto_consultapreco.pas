unit produto_consultapreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Buttons,
  AdvGlowButton, RzPanel, dxGDIPlusClasses,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls;

type
  Tfrmproduto_consultapreco = class(TForm)
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
    Cadastrarnovoprodutos1: TMenuItem;
    Label12: TLabel;
    AlterarProduto1: TMenuItem;
    Bevel6: TBevel;
    Label13: TLabel;
    DBText4: TDBText;
    Bevel4: TBevel;
    Label9: TLabel;
    Label14: TLabel;
    Bevel5: TBevel;
    Label10: TLabel;
    DBText2: TDBText;
    Bevel9: TBevel;
    Label15: TLabel;
    DBText3: TDBText;
    RxCalcEdit1: TJvDBCalcEdit;
    RxCalcEdit2: TJvDBCalcEdit;
    FotodoProduto1: TMenuItem;
    BFOTO: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    ConsultaServio1: TMenuItem;
    querysubgrupo: TStringField;
    queryfornecedor: TStringField;
    RzPanel2: TRzPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
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
    queryNOTA_FISCAL: TWideStringField;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure RxCalcEdit2Change(Sender: TObject);
    procedure GRIDRowChanged(Sender: TObject);
    procedure FotodoProduto1Click(Sender: TObject);
    procedure BFOTOClick(Sender: TObject);
    procedure ConsultaServio1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_consultapreco: Tfrmproduto_consultapreco;
  voltar: boolean;
   const
   sc_DragMove = $f012;

implementation

uses modulo, produto, principal, produto_foto, xloc_servico;

{$R *.dfm}

procedure Tfrmproduto_consultapreco.Localizarpor1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmproduto_consultapreco.Referncia1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmproduto_consultapreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmproduto_consultapreco.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmproduto_consultapreco.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    if PPROCURA.Visible then WWDBGRID1.SetFocus else grid.setfocus;
  end;
end;

procedure Tfrmproduto_consultapreco.locKeyPress(Sender: TObject; var Key: Char);
var ref, tipo: string;
begin
  if key = #13 then
  begin
    if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
    if combo_localizar.ItemIndex < 3 then
    begin
      case combo_localizar.ItemIndex of
        0: TIPO := 'prod.PRODUTO';
        1: TIPO := 'prod.CODIGO';
        2: TIPO := 'prod.CODBARRA';
      end;
      try
        query.close;
        query.sql.clear;
        if loc.text = '' then
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where situacao <> 1 and prod.codigo = estq.codproduto and prod.codigo is null')
        else
          if loc.text = '*' then
            query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where  situacao <> 1 and  prod.codigo = estq.codproduto order by ' + tipo)
          else
          begin
            query.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where  situacao <> 1 and prod.codigo = estq.codproduto');
            query.sql.Add('and upper(' + tipo + ') like ''' + ref + loc.Text + '%'' order by ' + tipo);
          end;
        query.open;
      except
      end;
    end
    else
    begin
      if PPROCURA.Visible then
      begin
        if combo_localizar.ItemIndex = 3 then
        begin
          query.close;
          query.sql.clear;
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where  situacao <> 1 and prod.codigo = estq.codproduto and CODFORNECEDOR = ''' + query2.fieldbyname('codigo').asstring + ''' order by produto');
          query.open;
          pprocura.Visible := false;
        end;
        if combo_localizar.ItemIndex = 4 then
        begin
          query.close;
          query.sql.clear;
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where  situacao <> 1 and prod.codigo = estq.codproduto and CODmarca = ''' + query2.fieldbyname('codigo').asstring + ''' order by produto');
          query.open;
          pprocura.Visible := false;
        end;
      end
      else
      begin
        if query.RecNo > 0 then
        begin
          resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
          resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
        end;
      end;
    end;
  end;
end;

procedure Tfrmproduto_consultapreco.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmproduto_consultapreco.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmproduto_consultapreco.FormShow(Sender: TObject);
begin
  atualiza_produto_novo := false;
  voltar := false;
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select prod.*, estq.* from c000025 prod, c000100 estq where  situacao <> 1 and prod.codigo = estq.codproduto and codigo is null');
  query.open;
  loc.setfocus;


  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then // supermercado
    combo_localizar.ItemIndex := 2;
end;

procedure Tfrmproduto_consultapreco.GRIDEnter(Sender: TObject);
begin
  if QUERY.FIELDBYNAME('foto').ASSTRING <> '' then bfoto.enabled := true else bfoto.enabled := false;
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmproduto_consultapreco.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmproduto_consultapreco.locChange(Sender: TObject);
var ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  if COMBO_LOCALIZAR.ITEMINDEX < 3 then
  begin
   //
  end
  else
  begin
    if COMBO_LOCALIZAR.ItemIndex = 3 then // FORNECEDOR
    begin
      QUERY2.Close;
      QUERY2.SQL.CLEAR;
      if loc.text = '' then
        query2.sql.Add('select * from c000009 where codigo = ''xxxxxx''')
      else
        QUERY2.SQL.ADD('SELECT * FROM C000009 where upper(NOME) like ''' + ref + loc.Text + '%'' order by NOME');
      QUERY2.OPEN;
      if QUERY2.RecordCount > 0 then
      begin
        PPROCURA.Visible := TRUE;
      end
      else
        PPROCURA.Visible := false;

    end;

    if COMBO_LOCALIZAR.ItemIndex = 4 then // marca
    begin
      QUERY2.Close;
      QUERY2.SQL.CLEAR;
      if loc.text = '' then
        query2.sql.Add('select * from c000019 where codigo = ''xxxxxx''')
      else
        QUERY2.SQL.ADD('SELECT * FROM C000019 where upper(NOME) like ''' + ref + loc.Text + '%'' order by NOME');
      QUERY2.OPEN;
      if QUERY2.RecordCount > 0 then
      begin
        PPROCURA.Visible := TRUE;
      end
      else
        PPROCURA.Visible := false;
    end;
  end;



end;

procedure Tfrmproduto_consultapreco.wwDBGrid1Enter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmproduto_consultapreco.wwDBGrid1Exit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmproduto_consultapreco.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then locKeyPress(frmproduto_consultapreco, key);
  loc.setfocus;
end;

procedure Tfrmproduto_consultapreco.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  loc.setfocus;
end;

procedure Tfrmproduto_consultapreco.RxCalcEdit2Change(Sender: TObject);
begin
  if rxcalcedit2.value > 0 then
    rxcalcedit2.Font.Color := clAqua else
    rxcalcedit2.Font.color := clred;
end;

procedure Tfrmproduto_consultapreco.GRIDRowChanged(Sender: TObject);
begin
  if QUERY.FIELDBYNAME('foto').ASSTRING <> '' then bfoto.enabled := true else bfoto.enabled := false;
end;

procedure Tfrmproduto_consultapreco.FotodoProduto1Click(Sender: TObject);
begin
  if bfoto.enabled then bfotoclick(frmproduto_consultapreco);
end;

procedure Tfrmproduto_consultapreco.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_consultapreco.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmproduto_consultapreco.BFOTOClick(Sender: TObject);
begin
  try
    frmproduto_foto := tfrmproduto_foto.create(self);
    frmproduto_foto.Image2.Picture.LoadFromFile(query.fieldbyname('foto').asstring);
    frmproduto_foto.showmodal;
  except
    application.messagebox('Caminho inválido!', 'Aviso', mb_ok + mb_iconerror);
  end;
  grid.SetFocus;
end;

procedure Tfrmproduto_consultapreco.ConsultaServio1Click(Sender: TObject);
begin
  frmxloc_servico := tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;
  LOC.SETFOCUS;
end;

procedure Tfrmproduto_consultapreco.AdvGlowButton1Click(Sender: TObject);
begin
  frmxloc_servico := tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;
  LOC.SETFOCUS;

end;

end.
