unit os_item_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, StdCtrls, Mask, rxToolEdit, RxCurrEdit, ExtCtrls,
  TFlatPanelUnit, Buttons, DB, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb,
  ZAbstractRODataset, ZDataset, Menus, ZAbstractDataset, AdvGlowButton,
  RzEdit;

type
  TfrmOS_item_2 = class(TForm)
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutofornecedor: TwideStringField;
    QUERY: TZQuery;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
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
    Bevel6: TBevel;
    Label5: TLabel;
    ecst: TRzEdit;
    Label13: TLabel;
    ealiquota: TRzNumericEdit;
    restoque: TJvCalcEdit;
    qrestoque: TZQuery;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TWideStringField;
    qrprodutoAPLICACAO: TwideMemoField;
    qrprodutoLOCALICAZAO: TWideStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TWideStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TWideStringField;
    qrprodutoFOTO: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
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
    qrprodutoULTIMA_ALTERACAO: TDateTimeField;
    qrprodutoULTIMA_CARGA: TDateTimeField;
    qrprodutoDATA_INVENTARIO: TDateTimeField;
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
    qrprodutoDATA_INVENTARIO_ATUAL: TDateTimeField;
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
    qrprodutoLOTE_VALIDADE: TDateTimeField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TWideStringField;
    qrprodutoFARMACIA_DCB: TWideStringField;
    qrprodutoFARMACIA_ABCFARMA: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrprodutoULTIMA_COMPRA: TDateTimeField;
    qrprodutoFARMACIA_DATAVIGENCIA: TDateTimeField;
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
    qrprodutoCUSTO_ATACADO: TFloatField;
    qrprodutoUNIDADE_ATACADO: TWideStringField;
    qrprodutoQTDE_EMBALAGEMATACADO: TFloatField;
    qrprodutoPMARGEM1: TFloatField;
    qrprodutoPMARGEM2: TFloatField;
    qrprodutoPMARGEM3: TFloatField;
    qrprodutoPMARGEM4: TFloatField;
    qrprodutoPMARGEM5: TFloatField;
    qrprodutoPMARGEMATACADO1: TFloatField;
    qrprodutoPMARGEMATACADO2: TFloatField;
    qrprodutoPMARGEMATACADO3: TFloatField;
    qrprodutoPMARGEMATACADO4: TFloatField;
    qrprodutoPMARGEMATACADO5: TFloatField;
    qrprodutoPMARGEMATACADO6: TFloatField;
    qrprodutoPRECOATACADO1: TFloatField;
    qrprodutoPRECOATACADO2: TFloatField;
    qrprodutoPRECOATACADO3: TFloatField;
    qrprodutoPRECOATACADO4: TFloatField;
    qrprodutoPRECOATACADO5: TFloatField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOS_item_2: TfrmOS_item_2;
  VER_PRODUTO: BOOLEAN;
  serial_grade: integer; // 0 - nenhum
                          // 1 - serial
                          // 2 - grade
  codigo_serial_grade: string;



implementation

uses modulo, principal, xloc_produto, os,
  os_serial, loc_produto_venda_auto;

{$R *.dfm}

procedure TfrmOS_item_2.bcancelarClick(Sender: TObject);
begin
  lserial.caption := '';
  lfornecedor.Caption := '';
  rqtde.value := 0;
  runitario.value := 0;
  rsubtotal.value := 0;
  rdesconto1.value := 0;
  rdesconto2.value := 0;
  rtotal.value := 0;
  close;
end;

procedure TfrmOS_item_2.rqtdeEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TfrmOS_item_2.rqtdeExit(Sender: TObject);
begin

  tedit(sender).color := clwindow;



  if frmos.restoque.Checked then
  begin
    if not ESTOQUE_NEGATIVO then
    begin
      if restoque.value < rqtde.value then
      begin
        APPLICATION.MESSAGEBOX('Este produto não possue esta quantidade em estoque!', 'Atenção', mb_ok + MB_ICONWARNING);
        rqtde.setfocus;
        exit;
      end;
    end;
  end;



  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value := rsubtotal.value - rdesconto2.value;

end;

procedure TfrmOS_item_2.runitarioEnter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure TfrmOS_item_2.rdesconto1Enter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure TfrmOS_item_2.rdesconto2Enter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure TfrmOS_item_2.runitarioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value := rsubtotal.value - rdesconto2.value;

end;

procedure TfrmOS_item_2.rdesconto1Exit(Sender: TObject);
begin


  tedit(sender).color := clwindow;



  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value := rsubtotal.value - rdesconto2.value;

end;

procedure TfrmOS_item_2.rdesconto2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;


  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100) / rsubtotal.value;
  end;


  rtotal.value := rsubtotal.value - rdesconto2.value;
end;

procedure TfrmOS_item_2.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin

    if rqtde.value = 0 then
    begin
      APPLICATION.MESSAGEBOX('Favor informar uma quantidade válida!', 'Atenção', mb_ok + MB_ICONWARNING);
      rqtde.setfocus;
      exit;
    end;
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure TfrmOS_item_2.rdesconto2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmOS_item_2.FormCreate(Sender: TObject);
begin
{   if (Screen.Width = 1024) and (screen.Height = 768) then
   begin
     TOP := frmos.Top + 260;
     LEFT := frmos.Left + 490;
   end
   else
   begin
     TOP := frmos.Top + 140;
     LEFT := frmos.Left + 350;
   end;

}
  RQTDE.DisplayFormat := mascara_qtde;
  RQTDE.DecimalPlaces := decimal_qtde;

  RUNITARIO.DisplayFormat := mascara_valor;
  RUNITARIO.DecimalPlaces := decimal_valor;
end;

procedure TfrmOS_item_2.eprodutoEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A8FFFF;
end;

procedure TfrmOS_item_2.eprodutoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmOS_item_2.EPRODUTOKeyPress(Sender: TObject; var Key: Char);
var a, cod_serial, TIPO, codigo: string;
  achou: boolean;
  i: integer;
  qt_vendido: real;
begin
  if key = #13 then
  begin
    if EPRODUTO.TEXT <> '' then
    begin
      achou := false;
      cod_serial := '';
      TIPO := '';
      // procurar pelo codigo  de barras
      CODIGO := EPRODUTO.TEXT;

      qrproduto.Close;
      qrproduto.sql.clear;
      qrproduto.SQL.Add('select * from c000025 where codbarra =''' + CODIGO + '''');
      qrproduto.Open;

      CODIGO := '';

      if qrproduto.RecordCount > 0 then
        achou := true;

      if not achou then
      begin
        // procurar pelo codigo
        CODIGO := FRMPRINCIPAL.zerarcodigo(CODIGO, 6);
        qrproduto.Close;
        qrproduto.sql.clear;
        qrproduto.SQL.Add('select * from c000025 where codigo =''' + eproduto.text + '''');
        qrproduto.Open;
        if qrproduto.RecordCount > 0 then achou := true;
      end;

      if not achou then
      begin
        // procurar pelo serial
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.SQL.Add('select * from c000022 where serial =''' + eproduto.text + ''' and situacao = 1');
        QUERY.Open;
        if QUERY.RecordCount > 0 then achou := true;
        if achou then
        begin
          a := QUERY.fieldbyname('codproduto').asstring;
          cod_serial := QUERY.fieldbyname('serial').asstring;
          TIPO := 'SERIAL';
          qrproduto.Close;
          qrproduto.sql.clear;
          qrproduto.SQL.Add('select * from c000025 where codigo =''' + a + '''');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then achou := true else achou := false;
        end;
      end;

      if not achou then
      begin
     // procurar pelo codigo de barras da grade
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.SQL.Add('select * from c000021 where codbarra =''' + eproduto.text + '''');
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
              application.messagebox('Este produto não possue estoque para esta grade!', 'Atenção!', mb_ok + MB_ICONERROR);
              eproduto.text := '';
              eproduto.SetFocus;
              exit;
            end;
          end;
        end;
        if achou then
        begin
          a := qrproduto.fieldbyname('codproduto').asstring;
          cod_serial := qrproduto.fieldbyname('codigo').asstring;
          TIPO := 'GRADE';
          qrproduto.Close;
          qrproduto.sql.clear;
          qrproduto.SQL.Add('select * from c000025 where codigo =''' + a + '''');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then achou := true else achou := false;
        end;
      end;

      if not achou then
      begin
        codigo := eproduto.text;
        a := copy(codigo, 1, 1);
        for I := 1 to Length(A) do
        begin
          if (A[I] in ['A'..'Z']) then
          begin
            produto_loc := '';
            qrproduto.Close;
            qrproduto.sql.clear;
            qrproduto.SQL.Add('select * from c000025 where produto like ''%' + eproduto.text + '%''');
            qrproduto.Open;

            if qrproduto.RecordCount = 0 then
            begin
              application.messagebox('Produto não encontrado!', 'Aviso', mb_ok + MB_ICONWARNING);
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
                if FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
                begin
                  frmloc_venda_produto_auto := tfrmloc_venda_produto_auto.create(self);
                  frmloc_venda_produto_auto.eproduto.text := eproduto.Text;
                  frmloc_venda_produto_auto.ShowModal;
                  if produto_loc <> '' then
                  begin
                    qrproduto.Close;
                    qrproduto.sql.clear;
                    qrproduto.SQL.Add('select * from c000025 where codigo like ''%' + produto_loc + '%''');
                    qrproduto.Open;
                    if qrproduto.RecordCount > 0 then achou := true else achou := false;
                  end;
                end
                else
                begin

                  frmxloc_produto := tfrmxloc_produto.create(self);
                  frmxloc_produto.loc.Text := eproduto.text;
                  frmxloc_produto.showmodal;
                  produto_loc := resultado_pesquisa1;

                  if produto_loc <> '' then
                  begin
                    qrproduto.Close;
                    qrproduto.sql.clear;
                    qrproduto.SQL.Add('select * from c000025 where codigo like ''%' + produto_loc + '%''');
                    qrproduto.Open;
                    if qrproduto.RecordCount > 0 then achou := true else achou := false;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;


      qrproduto.Open;
      if qrproduto.RecordCount > 0 then
      begin

        eproduto.text := qrproduto.fieldbyname('codigo').asstring + ' ' + qrproduto.fieldbyname('produto').asstring;
        runitario.Value := qrproduto.fieldbyname('precovenda').asfloat;
        rqtde.value := 1;
        eproduto.Text := qrproduto.fieldbyname('produto').asstring;

        qrestoque.close;
        qrestoque.sql.clear;
        qrestoque.sql.add('select * from c000100 where codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + '''');
        qrestoque.open;

        qt_vendido := 0;
        if frmos.restoque.Checked then
        begin
          frmos.qros_produto.First;
          while not frmos.qros_produto.eof do
          begin
            if (frmos.qros_produto.fieldbyname('codproduto').asstring = qrproduto.fieldbyname('codigo').asstring)
              and (frmos.qros_produto.fieldbyname('CODCLIENTE').asstring <> 'OK') then
            begin
              qt_vendido := qt_vendido + frmos.qros_produto.fieldbyname('qtde').asfloat;
            end;
            frmos.qros_produto.next;
          end;
        end;

        restoque.Value := qrestoque.fieldbyname('estoque_atual').asfloat - qt_vendido;


        if frmos.restoque.Checked then
        begin

          if not ESTOQUE_NEGATIVO then
          begin
            if restoque.Value < 0.01 then
            begin
              APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!', 'Atenção', mb_ok + MB_ICONWARNING);
              eproduto.setfocus;
              exit;
            end;
          end;
        end;

        lfornecedor.Caption := qrproduto.fieldbyname('fornecedor').asstring;
        ecst.Text := qrproduto.fieldbyname('cst').asstring;
        ealiquota.value := qrproduto.fieldbyname('aliquota').asfloat;
        lserial.Caption := '---';


        rsubtotal.value := qrproduto.fieldbyname('precovenda').asfloat;
        rdesconto1.value := 0;
        rdesconto2.value := 0;
        rtotal.value := qrproduto.fieldbyname('precovenda').asfloat;

        serial_grade := 0;
        codigo_serial_grade := '';

        RQTDE.Enabled := TRUE;

            /// verificar se produto utiliza controle de seriais
        if qrproduto.FieldByName('usa_serial').asinteger = 1 then
        begin
          if (cod_serial <> '') and (TIPO = 'SERIAL') then
          begin
            frmos.qrproduto_serial.close;
            frmos.qrproduto_serial.sql.clear;
            frmos.qrproduto_serial.sql.Add('select * from c000022 where codigo = ''' + COD_serial + ''' and situacao = 1 ');
            frmos.qrproduto_serial.open;
            if frmos.qrproduto_serial.Recordcount > 0 then
            begin
              lserial.Caption := frmos.qrproduto_serial.fieldbyname('serial').asstring;
              serial_grade := 1;
              codigo_serial_grade := frmos.qrproduto_serial.fieldbyname('codigo').asstring;
              RQTDE.Enabled := FALSE;
              RUNITARIO.SETFOCUS;
            end
            else
            begin
              APPLICATION.MESSAGEBOX('Serial não encontrado!', 'Atenção', mb_ok + MB_ICONWARNING);
              eproduto.setfocus;
              exit;
            end;
          end
          else
          begin
            frmos.qrproduto_serial.close;
            frmos.qrproduto_serial.sql.clear;
            frmos.qrproduto_serial.sql.Add('select * from c000022 where codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + ''' and situacao = 1 order by codigo');
            frmos.qrproduto_serial.open;

            frmos_serial := tfrmos_serial.create(self);
            frmos_serial.showmodal;

            if selecionado then
            begin
              lserial.Caption := frmos.qrproduto_serial.fieldbyname('serial').asstring;
              serial_grade := 1;
              codigo_serial_grade := frmos.qrproduto_serial.fieldbyname('codigo').asstring;
              RQTDE.Enabled := FALSE;
              RUNITARIO.SETFOCUS;
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


      end
      else
      begin
        application.messagebox('Produto não encontrado!', 'Aviso', mb_ok + MB_ICONWARNING);
        eproduto.text := '';
        eproduto.SetFocus;
      end;
    end
    else
    begin
      Eproduto.SetFocus;
    end;

  end;
end;

procedure TfrmOS_item_2.ecodigoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmOS_item_2.bgravarClick(Sender: TObject);
var aliquota: string;
  unidade: string;
begin
  if eproduto.text <> '' then
  begin
    frmos.qros_produtos.Insert;
    frmos.qros_produtos.FieldByName('codigo').asstring := frmprincipal.codifica('000032');
    frmos.qros_produtos.FieldByName('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
    frmos.qros_produtos.FieldByName('unidade').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
    frmos.qros_produtos.FieldByName('ALIQUOTA').asFLOAT := qrproduto.fieldbyname('ALIQUOTA').asFLOAT;
    frmos.qros_produtos.FieldByName('CST').asSTRING := qrproduto.fieldbyname('CST').asSTRING;
    frmos.qros_produtos.fieldbyname('produto').asstring := eproduto.text;
    frmos.qros_produtos.FieldByName('qtde').asfloat := rqtde.value;
    frmos.qros_produtos.FieldByName('unitario').asfloat := runitario.value;
    frmos.qros_produtos.FieldByName('total').asfloat := rtotal.value;
    frmos.qros_produtos.FieldByName('desconto').asfloat := rdesconto2.value;
    frmos.qros_produtos.FieldByName('movimento').asinteger := 9;
    frmos.qros_produtos.fieldbyname('codnota').asstring := frmmodulo.cdsos.fieldbyname('codigo').asstring;
    frmos.qros_produtos.fieldbyname('data').asstring := frmmodulo.cdsos.fieldbyname('data').asstring;
    frmos.qros_produtos.fieldbyname('codcliente').asstring := frmmodulo.cdsos.fieldbyname('codcliente').asstring;
    frmos.qros_produtos.fieldbyname('codvendedor').asstring := frmmodulo.cdsos.fieldbyname('codatendente').asstring;

    if serial_grade = 1 then // serial
    begin
      frmos.qros_produtos.fieldbyname('serial').asstring := lserial.CAPTION;
      frmos.qros_produtos.fieldbyname('codgrade').asstring := frmos.qrPRODUTO_SERIAL.fieldbyname('codigo').asstring;

      frmos.QRPRODUTO_SERIAL.Edit;
      frmos.QRPRODUTO_SERIAL.fieldbyname('situacao').AsInteger := 2;
      frmos.QRPRODUTO_SERIAL.fieldbyname('cliente').asstring := frmmodulo.cdsos.fieldbyname('cliente').asstring;
      frmos.QRPRODUTO_SERIAL.fieldbyname('codcliente').asstring := frmmodulo.cdsos.fieldbyname('codcliente').asstring;

      frmos.QRPRODUTO_SERIAL.FieldByName('DATAvenda').ASSTRING := frmmodulo.cdsos.fieldbyname('data').asstring;
      frmos.qrproduto_serial.fieldbyname('codvenda').asstring := frmmodulo.cdsos.fieldbyname('codigo').asstring;
      frmos.qrproduto_serial.fieldbyname('precovenda').asfloat := runitario.value;
      frmos.QRPRODUTO_SERIAL.post;
    end;
    frmos.qros_produtos.post;

    eproduto.text := '';

    lserial.caption := '';
    lfornecedor.Caption := '';
    rqtde.value := 0;
    runitario.value := 0;
    rsubtotal.value := 0;
    rdesconto1.value := 0;
    rdesconto2.value := 0;
    rtotal.value := 0;

    eproduto.setfocus;
  end
  else
  begin
    application.messagebox('Favor informar o produto!', 'Atenção!', mb_ok + MB_ICONWARNING);
    eproduto.setfocus;
  end;




end;

procedure TfrmOS_item_2.FormShow(Sender: TObject);
begin


  EPRODUTO.SETFOCUS;
end;

procedure TfrmOS_item_2.ecstKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOS_item_2.ealiquotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

end.
