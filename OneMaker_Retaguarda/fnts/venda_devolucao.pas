unit venda_devolucao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, StdCtrls, Mask, ExtCtrls,
  TFlatPanelUnit, Buttons, DB, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb,
  ZAbstractRODataset, ZDataset, Menus, ZAbstractDataset, AdvGlowButton,
  RzEdit, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit, JvBaseEdits;

type
  Tfrmvenda_devolucao = class(TForm)
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutofornecedor: TStringField;
    QUERY: TZQuery;
    pgravar: TFlatPanel;
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
    qrestoque: TZQuery;
    qrvendido: TZQuery;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    AdvMetroButton1: TAdvMetroButton;
    Panel5: TPanel;
    Panel4: TPanel;
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
    btvendaa00014: TAdvGlowButton;
    bgravar: TAdvGlowButton;
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
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btvendaa00014Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_devolucao: Tfrmvenda_devolucao;
  VER_PRODUTO: BOOLEAN;
  serial_grade: integer; // 0 - nenhum
                          // 1 - serial
                          // 2 - grade
  codigo_serial_grade: string;
   const
   sc_DragMove = $f012;


implementation

uses modulo, principal, venda, venda_grade, venda_serial,
  xloc_produto, ecf;

{$R *.dfm}

procedure Tfrmvenda_devolucao.AdvMetroButton1Click(Sender: TObject);
begin
  eproduto.text := '';
  restoque.value := 0;
  lserial.caption := '';
  lfornecedor.Caption := '';
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

procedure Tfrmvenda_devolucao.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmvenda_devolucao.bcancelarClick(Sender: TObject);
begin


  eproduto.text := '';
  restoque.value := 0;
  lserial.caption := '';
  lfornecedor.Caption := '';
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

procedure Tfrmvenda_devolucao.rqtdeEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmvenda_devolucao.rqtdeExit(Sender: TObject);
begin

  tedit(sender).color := clwindow;





  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value := rsubtotal.value - rdesconto2.value;

end;

procedure Tfrmvenda_devolucao.runitarioEnter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure Tfrmvenda_devolucao.rdesconto1Enter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure Tfrmvenda_devolucao.rdesconto2Enter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure Tfrmvenda_devolucao.runitarioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value := rsubtotal.value - rdesconto2.value;

end;

procedure Tfrmvenda_devolucao.rdesconto1Exit(Sender: TObject);
begin


  tedit(sender).color := clwindow;



  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value := rsubtotal.value - rdesconto2.value;

end;

procedure Tfrmvenda_devolucao.rdesconto2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;


  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100) / rsubtotal.value;
  end;


  rtotal.value := rsubtotal.value - rdesconto2.value;
end;

procedure Tfrmvenda_devolucao.rqtdeKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmvenda_devolucao.rdesconto2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_devolucao.FormCreate(Sender: TObject);
begin
{   if (Screen.Width = 1024) and (screen.Height = 768) then
   begin
     TOP := FRMVENDA.Top + 260;
     LEFT := FRMVENDA.Left + 490;
   end
   else
   begin
     TOP := FRMVENDA.Top + 140;
     LEFT := FRMVENDA.Left + 350;
   end;

}
  RQTDE.DisplayFormat := mascara_qtde;
  RQTDE.DecimalPlaces := decimal_qtde;

  RUNITARIO.DisplayFormat := mascara_valor;
  RUNITARIO.DecimalPlaces := decimal_valor;
end;

procedure Tfrmvenda_devolucao.eprodutoEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A8FFFF;
end;

procedure Tfrmvenda_devolucao.eprodutoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmvenda_devolucao.EPRODUTOKeyPress(Sender: TObject; var Key: Char);
var a, cod_serial, TIPO, codigo: string;
  achou: boolean;
  i: integer;
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
      qrproduto.SQL.Add('select * from c000025 where situacao = 0 and codbarra =''' + CODIGO + '''');
      qrproduto.Open;

      CODIGO := '';
      if qrproduto.RecordCount > 0 then achou := true;
      if not achou then
      begin
        // procurar pelo codigo
        CODIGO := FRMPRINCIPAL.zerarcodigo(CODIGO, 6);
        qrproduto.Close;
        qrproduto.sql.clear;
        qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo =''' + eproduto.text + '''');
        qrproduto.Open;
        if qrproduto.RecordCount > 0 then achou := true;
      end;
      if not achou then
      begin
        // procurar pelo serial
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.SQL.Add('select * from c000022 where serial =''' + eproduto.text + '''');
        QUERY.Open;
        if QUERY.RecordCount > 0 then achou := true;
        if achou then
        begin
          a := QUERY.fieldbyname('codproduto').asstring;
          cod_serial := QUERY.fieldbyname('serial').asstring;
          TIPO := 'SERIAL';
          qrproduto.Close;
          qrproduto.sql.clear;
          qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo =''' + a + '''');
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
          qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo =''' + a + '''');
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
            qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  produto like ''%' + eproduto.text + '%''');
            qrproduto.Open;
            if qrproduto.RecordCount = 0 then
            begin
              application.messagebox('Produto não encontrado!', 'Aviso', mb_ok + MB_ICONWARNING);
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
                if FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
                begin
//                  frmloc_venda_produto_auto := tfrmloc_venda_produto_auto.create(self);
 //                 frmloc_venda_produto_auto.eproduto.text := eproduto.Text;
  //                frmloc_venda_produto_auto.ShowModal;
                  if produto_loc <> '' then
                  begin
                    qrproduto.Close;
                    qrproduto.sql.clear;
                    qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo like ''%' + produto_loc + '%''');
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
                    qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo like ''%' + produto_loc + '%''');
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

        qrvendido.close;
        qrvendido.sql.clear;
        qrvendido.SQL.Add('select sum(qtde) quant from CL00001 where codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + ''' and terminal = ''' + numero_terminal + '''');
        qrvendido.Open;



        if qrestoque.recordcount > 0 then
          restoque.Value := (qrestoque.fieldbyname('estoque_atual').asfloat - qrvendido.fieldbyname('quant').asfloat) else
          restoque.Value := qrvendido.fieldbyname('quant').asfloat * (-1);




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

          //// verificar se produto usa grade

        if qrproduto.FieldByName('usa_grade').asinteger = 1 then
        begin
          if (cod_serial <> '') and (TIPO = 'GRADE') then
          begin
            frmvenda.qrproduto_grade.close;
            frmvenda.qrproduto_grade.sql.clear;
            frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codigo = ''' + cod_serial + '''');
            frmvenda.qrproduto_grade.open;
            if frmvenda.qrproduto_grade.RecordCount > 0 then
            begin
              lserial.Caption := frmvenda.qrproduto_grade.fieldbyname('numeracao').asstring;
              serial_grade := 2;
              codigo_serial_grade := frmvenda.qrproduto_grade.fieldbyname('codigo').asstring;
              RQTDE.SETFOCUS;
            end
            else
            begin
              APPLICATION.MESSAGEBOX('Grade não encontrada!', 'Atenção', mb_ok + MB_ICONWARNING);
              eproduto.text := '';
              eproduto.setfocus;
              exit;
            end;


          end
          else
          begin
            frmvenda.qrproduto_grade.close;
            frmvenda.qrproduto_grade.sql.clear;
            if estoque_negativo then
              frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + ''' order by codigo')
            else
              frmvenda.qrproduto_grade.sql.Add('select * from c000021 where codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + ''' and estoque > 0 order by codigo');
            frmvenda.qrproduto_grade.open;

            if frmvenda.qrproduto_grade.RecordCount = 0 then
            begin
              application.messagebox('Não foi encontrado nenhum registro de grade para este produto!', 'Erro', mb_ok + mb_iconerror);
              eproduto.text := '';
              eproduto.setfocus;

              restoque.value := 0;
              lserial.caption := '';
              lfornecedor.Caption := '';
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
            frmvenda_grade.showmodal;

            if selecionado then
            begin
              lserial.Caption := frmvenda.qrproduto_grade.fieldbyname('numeracao').asstring;
              serial_grade := 2;
              codigo_serial_grade := frmvenda.qrproduto_grade.fieldbyname('codigo').asstring;
              RQTDE.SETFOCUS;
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
              frmvenda.qrproduto_serial.close;
              frmvenda.qrproduto_serial.sql.clear;
              frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codigo = ''' + COD_serial + ''' and situacao = 1 ');
              frmvenda.qrproduto_serial.open;
              if frmvenda.qrproduto_serial.Recordcount > 0 then
              begin
                lserial.Caption := frmvenda.qrproduto_serial.fieldbyname('serial').asstring;
                serial_grade := 1;
                codigo_serial_grade := frmvenda.qrproduto_serial.fieldbyname('codigo').asstring;
                RQTDE.Enabled := FALSE;
                RUNITARIO.SETFOCUS;
              end
              else
              begin
                APPLICATION.MESSAGEBOX('Serial não encontrado!', 'Atenção', mb_ok + MB_ICONWARNING);
                eproduto.text := '';
                eproduto.setfocus;
                exit;
              end;
            end
            else
            begin
              frmvenda.qrproduto_serial.close;
              frmvenda.qrproduto_serial.sql.clear;
              frmvenda.qrproduto_serial.sql.Add('select * from c000022 where codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + ''' and situacao = 1 order by codigo');
              frmvenda.qrproduto_serial.open;

              frmvenda_serial := tfrmvenda_serial.create(self);
              frmvenda_serial.showmodal;

              if selecionado then
              begin
                lserial.Caption := frmvenda.qrproduto_serial.fieldbyname('serial').asstring;
                serial_grade := 1;
                codigo_serial_grade := frmvenda.qrproduto_serial.fieldbyname('codigo').asstring;
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

procedure Tfrmvenda_devolucao.ecodigoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmvenda_devolucao.bgravarClick(Sender: TObject);
var aliquota: string;
  unidade: string;
begin
  if eproduto.text <> '' then
  begin
    rsubtotal.Value := rqtde.value * runitario.value;
    rtotal.value := rsubtotal.value - rdesconto2.value;

    if ecf_impressao = 1 then
    begin

      if (ecst.text = '060') or (ecst.text = '010') or (ecst.text = '070') then ALIQUOTA := 'FF' else
        if (ecst.text = '040') or (ecst.text = '030') then ALIQUOTA := 'II' else
          if (ecst.text = '041') or (ecst.text = '050') or (ecst.text = '051') or (ecst.text = '090') then ALIQUOTA := 'NN' else
          begin
            if ealiquota.value > 0 then
              aliquota := formatfloat('00.00', ealiquota.value)
            else
              aliquota := formatfloat('00.00', 17);
          end;

      unidade := qrproduto.fieldbyname('unidade').asstring;
      if unidade = '' then unidade := 'UN';


      if ecf_vende_item_completo(ecf_modelo, qrproduto.fieldbyname('codbarra').asstring,
        frmprincipal.texto_justifica(frmprincipal.RemoveAcentos(qrproduto.fieldbyname('produto').asstring), 29, ' ', 'D'),
        aliquota,
        runitario.value,
        rqtde.value,
        rdesconto2.value,
        0,
        unidade,
        RTOTAL.VALUE) = 'ERRO' then

      begin
        application.messagebox('Houve erro na impressão do item! Favor verificar!', 'Atenção', mb_ok + mb_iconerror);
        exit;
      end;
    end;


    //ibtrans_item.Active := true;
    frmvenda.qrvenda_produto.Insert;
    frmvenda.qrvenda_produto.FieldByName('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
    frmvenda.qrvenda_produto.FieldByName('produto').asstring := qrproduto.fieldbyname('produto').asstring;
    frmvenda.qrvenda_produto.FieldByName('NUMERACAO').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
    frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asFLOAT := qrproduto.fieldbyname('ALIQUOTA').asFLOAT;
    frmvenda.qrvenda_produto.FieldByName('CST').asSTRING := qrproduto.fieldbyname('CST').asSTRING;
    frmvenda.qrvenda_produto.FieldByName('terminal').asSTRING := numero_terminal;


    frmvenda.qrvenda_produto.FieldByName('qtde').asfloat := rqtde.value * (-1);
    frmvenda.qrvenda_produto.FieldByName('unitario').asfloat := runitario.value;
    frmvenda.qrvenda_produto.FieldByName('total').asfloat := rtotal.value * (-1);
    frmvenda.qrvenda_produto.FieldByName('desconto').asfloat := rdesconto2.value;
    frmvenda.qrvenda_produto.FieldByName('item').asSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(item), 3);
    item := item + 1;


    if serial_grade = 1 then // serial
    begin
      frmvenda.qrvenda_produto.fieldbyname('serial').asstring := lserial.CAPTION;
      frmvenda.qrvenda_produto.fieldbyname('codgrade').asstring := frmVENDA.qrPRODUTO_SERIAL.fieldbyname('codigo').asstring;

      frmVENDA.QRPRODUTO_SERIAL.Edit;
      frmVENDA.QRPRODUTO_SERIAL.fieldbyname('situacao').AsInteger := 1;
      frmVENDA.QRPRODUTO_SERIAL.fieldbyname('cliente').asstring := '';
      frmVENDA.QRPRODUTO_SERIAL.fieldbyname('codcliente').asstring := '';
      frmVENDA.QRPRODUTO_SERIAL.FieldByName('DATAVENDA').ASdatetime := null;
      frmvenda.qrproduto_serial.fieldbyname('codvenda').asstring := '';
      frmvenda.qrproduto_serial.fieldbyname('precovenda').asfloat := 0;
      frmVENDA.QRPRODUTO_SERIAL.post;
    end;
    if serial_grade = 2 then // grade
    begin
      frmvenda.qrvenda_produto.fieldbyname('serial').asstring := lserial.CAPTION;
      frmvenda.qrvenda_produto.fieldbyname('codgrade').asstring := frmVENDA.QRPRODUTO_GRADE.fieldbyname('codigo').asstring;

      frmVENDA.QRPRODUTO_GRADE.Edit;
      frmVENDA.QRPRODUTO_GRADE.fieldbyname('estoque').asfloat := frmVENDA.QRPRODUTO_GRADE.fieldbyname('estoque').asfloat + rqtde.value;
      frmVENDA.QRPRODUTO_GRADE.post;
    end;

    frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 10;

    frmvenda.qrvenda_produto.post;


      //ibtrans_item.Commit;

    frmmodulo.Conexao.Commit;

    FRMVENDA.ritem.Value := FRMVENDA.RITEM.VALUE + 1;
    FRMVENDA.rqtde.Value := FRMVENDA.Rqtde.VALUE + FRMVENDA.qrvenda_produto.fieldbyname('qtde').asfloat;
    FRMVENDA.rtotal.Value := FRMVENDA.Rtotal.VALUE + FRMVENDA.qrvenda_produto.fieldbyname('total').asfloat;

    close;


  end
  else
  begin
    application.messagebox('Favor informar o produto!', 'Atenção!', mb_ok + MB_ICONWARNING);
    eproduto.setfocus;
  end;
end;

procedure Tfrmvenda_devolucao.btvendaa00014Click(Sender: TObject);
begin
  AdvMetroButton1.Click;
end;

procedure Tfrmvenda_devolucao.FormShow(Sender: TObject);
begin

  EPRODUTO.SETFOCUS;
end;

procedure Tfrmvenda_devolucao.ecstKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_devolucao.ealiquotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

end.
