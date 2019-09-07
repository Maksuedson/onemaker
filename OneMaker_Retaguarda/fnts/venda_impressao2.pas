unit venda_impressao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, Vcl.Mask, RzEdit, RzSpnEdt, AdvReflectionImage;

type
  Tfrmvenda_impressao2 = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    ViewSplit1: TViewSplit;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    bgravar: TBitBtn;
    PopupMenu1: TPopupMenu;
    qrcontasreceber: TZQuery;
    qrcontasrecebercliente: TStringField;
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    Fechar2: TMenuItem;
    Button1: TButton;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemproduto: TStringField;
    qrnotafiscal_itemunidade: TStringField;
    BAPOIO: TButton;
    NFCupom1: TMenuItem;
    evias: TRzSpinEdit;
    img: TAdvReflectionImage;
    qrcontasreceberCODIGO: TWideStringField;
    qrcontasreceberCODVENDA: TWideStringField;
    qrcontasreceberCODVENDEDOR: TWideStringField;
    qrcontasreceberCODCAIXA: TWideStringField;
    qrcontasreceberCODCLIENTE: TWideStringField;
    qrinventarioDATA_EMISSAO: TDateField;
    qrinventarioDATA_VENCIMENTO: TDateField;
    qrinventarioDATA_PAGAMENTO: TDateField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TWideStringField;
    qrcontasreceberTIPO: TWideStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TWideStringField;
    qrcontasreceberCODREGIAO: TWideStringField;
    qrcontasreceberCODCEDENTE: TWideStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TWideStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberHISTORICO: TWideStringField;
    qrnotafiscal_itemCODNOTA: TWideStringField;
    qrnotafiscal_itemCODPRODUTO: TWideStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemCFOP: TWideStringField;
    qrnotafiscal_itemCODGRADE: TWideStringField;
    qrnotafiscal_itemSERIAL: TWideStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TWideStringField;
    qrnotafiscal_itemCST: TWideStringField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TWideStringField;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrnotafiscal_itemPESO_BRUTO: TFloatField;
    qrnotafiscal_itemPESO_LIQUIDO: TFloatField;
    qrnotafiscal_itemITEM: TIntegerField;
    qrnotafiscal_itemCODIGO: TWideStringField;
    qrnotafiscal_itemGRADE: TWideStringField;
    qrnotafiscal_itemOUTRAS: TFloatField;
    qrnotafiscal_itemPIS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemPIS_BASE: TFloatField;
    qrnotafiscal_itemPIS_VALOR: TFloatField;
    qrnotafiscal_itemCOFINS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemCOFINS_BASE: TFloatField;
    qrnotafiscal_itemCOFINS_VALOR: TFloatField;
    qrnotafiscal_itemCODBARRA: TWideStringField;
    qrnotafiscal_itemALTERA_ITEM: TIntegerField;
    qrnotafiscal_itemCSOSN: TWideStringField;
    qrnotafiscal_itemCOMPLEMENTO: TWideStringField;
    qrnotafiscal_itemCEST: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPa4tintaClick(Sender: TObject);
    procedure Fechar2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BAPOIOClick(Sender: TObject);
    procedure NFCupom1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_impressao2: Tfrmvenda_impressao2;
  porta_impressora: string;
  CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO: string;

implementation

uses modulo, principal, venda, ecf, extenso1, venda_contasreceber, venda_nf;

{$R *.dfm}

procedure Tfrmvenda_impressao2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_impressao2.bgravarClick(Sender: TObject);
begin

  NFCupom1click(frmvenda_impressao2);





  close;
end;

procedure Tfrmvenda_impressao2.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
//  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  evias.Value := frmmodulo.qrconfig.FieldByName('VENDA_QTDE_VIAS_NOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;



  combo_modelo.ItemIndex := 0;



  CLIENTE_NOME := frmmodulo.qrcliente.fieldbyname('nome').asstring;
  CLIENTE_ENDERECO := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
  CLIENTE_BAIRRO := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
  CLIENTE_CIDADE := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
  CLIENTE_UF := frmmodulo.qrcliente.fieldbyname('uf').asstring;
  CLIENTE_CEP := frmmodulo.qrcliente.fieldbyname('cep').asstring;
  CLIENTE_TELEFONE := frmmodulo.qrcliente.fieldbyname('telefone1').asstring + '/' + frmmodulo.qrcliente.fieldbyname('celular').asstring + '/' + frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
  CLIENTE_CPF := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
  CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('rg').asstring;
  CLIENTE_CODIGO := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;








end;

procedure Tfrmvenda_impressao2.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmvenda_impressao2.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_impressao2.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao2.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao2.TPa4tintaClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao2.Fechar2Click(Sender: TObject);
begin
  application.messagebox('Favor escolher o meio de impressao e clicar em "OK"!', 'Atenção', mb_ok + mb_iconwarning);
  exit;
end;

procedure Tfrmvenda_impressao2.Button1Click(Sender: TObject);





var F: TEXTFILE;
  DI, ME, AN, CID, TEXTO: string;
  ITEM: INTEGER;
begin

































  ITEM := 1;


  if FRMVENDA.qrvenda_contasreceber.RECORDCOUNT > 0 then
  begin
    ASSIGNFILE(F, porta_impressora);
    REWRITE(F);
    FRMVENDA.qrvenda_contasreceber.FIRST;
    while not FRMVENDA.QRVENDA_CONTASRECEBER.EOF do
    begin



      writeln(F, #27 + #51);
      WRITELN(F, #18 + #27#72 + #20, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      di := copy(frmvenda.lvenda_data.Caption, 1, 2); me := copy(frmvenda.lvenda_data.Caption, 4, 2); an := copy(frmvenda.lvenda_data.Caption, 7, 4);
      WriteLn(f, '                                                                   ' + di + '  ' + me + '  ' + an); //66
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');



      Writeln(f, '  ' + FRMPRINCIPAL.texto_justifica(formatfloat('###,###,###,##0.00', VALOR_NOTAZ), 10, ' ', 'E') + '       ' +
        FRMPRINCIPAL.texto_justifica(NUMERO_NOTAZ, 10, ' ', 'D') + '   ' +
        FRMPRINCIPAL.texto_justifica(formatfloat('###,###,###,##0.00', FRMVENDA.QRVENDA_CONTASRECEBER.fieldbyname('VALOR').asfloat), 10, ' ', 'E') +
        '   ' + FRMPRINCIPAL.texto_justifica(NUMERO_NOTAZ + '/' + FRMPRINCIPAL.zerarcodigo(INTTOSTR(ITEM), 2), 10, ' ', 'D') +
        ' ' + FRMPRINCIPAL.texto_justifica(datetostr(FRMVENDA.QRVENDA_CONTASRECEBER.fieldbyname('vencimento').asdatetime), 10, ' ', 'D'));

      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');


      Writeln(f, '');
      Writeln(f, '                             ' + FRMMODULO.QRCLIENTE.fieldbyname('nome').asstring); //31
      Writeln(f, '');
      Writeln(f, '                             ' + FRMMODULO.QRCLIENTE.fieldbyname('ENDERECO').asstring);
      Writeln(f, '');
      Writeln(f, '');
      cid := FRMMODULO.QRCLIENTE.fieldbyname('Cidade').asstring;
      texto := cid + FRMMODULO.QRCLIENTE.fieldbyname('uf').asstring;
      while length(texto) < 36 do
      begin
        cid := cid + ' ';
        texto := cid + FRMMODULO.QRCLIENTE.fieldbyname('uf').asstring;
      end;
      texto := texto + '    ' + FRMMODULO.QRCLIENTE.fieldbyname('cep').asstring;
      Writeln(f, '                             ' + texto); //31
      Writeln(f, '');
      Writeln(f, '                               ' + EMITENTE_CIDADE); // 31
      Writeln(f, '');
      Writeln(f, '                               ' + FRMMODULO.QRCLIENTE.fieldbyname('cpf').asstring); //31
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');

      TEXTO := AnsiUpperCase(extenso(frMVENDA.qrvenda_CONTASRECEBER.fieldbyname('VALOR').asfloat));
      if COPY(TEXTO, 1, 2) = ' E' then DELETE(TEXTO, 1, 2);
      Writeln(f, '                          ' + #15 + #27#72 + #20 + TEXTO); //28
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');
      Writeln(f, '');


      FRMVENDA.QRVENDA_CONTASRECEBER.NEXT;
      ITEM := ITEM + 1;

    end;
    CLOSEFILE(F);



  end;

end;

procedure Tfrmvenda_impressao2.BAPOIOClick(Sender: TObject);
var f: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i: integer;
  NNOTA: INTEGER;
begin
  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''' + frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring + '''');
  frmmodulo.qrcliente.open;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = ''' + frmmodulo.qrnotafiscal.fieldbyname('codtransportador').asstring + '''');
  frmmodulo.qrtransportador.open;

  cod_apoio := 1;
  frmvenda.QRAPOIO.close;
  frmvenda.QRAPOIO.sql.clear;
  frmvenda.QRAPOIO.sql.add('delete from cl00004');
  frmvenda.QRAPOIO.execsql;
  frmvenda.QRAPOIO.close;
  frmvenda.QRAPOIO.sql.clear;
  frmvenda.QRAPOIO.sql.add('select * from cl00004 order by texto10');
  frmvenda.QRAPOIO.open;

  frmmodulo.qrconfig.open;
  nnota := 0;

  I := 1;
  qrnotafiscal_item.Refresh;
  qrnotafiscal_item.First;
  while not qrnotafiscal_item.eof do
  begin
    if I = frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger then
    begin
      while I <> frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger do
      begin
        I := I + 1;
        if I = frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger then
        begin
          frmvenda.QRAPOIO.INSERT;
          frmvenda.QRAPOIO.FIELDBYNAME('TOTAL').ASSTRING := 'TRANSPORTAR';
          frmvenda.QRAPOIO.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
          frmvenda.QRAPOIO.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
          frmvenda.QRAPOIO.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
          frmvenda.QRAPOIO.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';

          frmvenda.QRAPOIO.POST;
        end
        else
        begin
          frmvenda.QRAPOIO.INSERT;
          if i = frmmodulo.qrconfig.fieldbyname('NF_LINHA_SUBTOTAL').asinteger then
          begin
            frmvenda.QRAPOIO.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO6').asstring := 'XXXXXXXXXX';
          end;
          frmvenda.QRAPOIO.POST;
        end;
      end;
      frmvenda.QRAPOIO.INSERT;
      frmvenda.QRAPOIO.FIELDBYNAME('PRODUTO').ASSTRING := '*** T R A N S P O R T A D O ***';
      frmvenda.QRAPOIO.POST;
      frmvenda.QRAPOIO.insert;
      frmvenda.QRAPOIO.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
      frmvenda.QRAPOIO.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
      frmvenda.QRAPOIO.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      frmvenda.QRAPOIO.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
      frmvenda.QRAPOIO.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
      frmvenda.QRAPOIO.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      frmvenda.QRAPOIO.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
      frmvenda.QRAPOIO.post;
      NNOTA := NNOTA + 1;
      I := 2;
    end
    else
    begin
      frmvenda.QRAPOIO.insert;
      frmvenda.QRAPOIO.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
      frmvenda.QRAPOIO.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
      frmvenda.QRAPOIO.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      frmvenda.QRAPOIO.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
      frmvenda.QRAPOIO.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
      frmvenda.QRAPOIO.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      frmvenda.QRAPOIO.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
      frmvenda.QRAPOIO.post;
    end;
    qrnotafiscal_item.next;
    I := I + 1;
  end;
  if frmmodulo.qrnotafiscal.FieldByName('desconto').asfloat > 0 then
  begin
    frmvenda.QRAPOIO.insert;
    frmvenda.QRAPOIO.fieldbyname('produto').asstring := 'D E S C O N T O ';
    frmvenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00', FRMMODULO.QRNOTAFISCAL.fieldbyname('DESCONTO').asfloat);
    frmvenda.QRAPOIO.post;
  end;



  while i < frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger do
  begin
    frmvenda.QRAPOIO.INSERT;
    frmvenda.QRAPOIO.POST;
    i := i + 1;
  end;

  frmvenda.QRAPOIO.Refresh;

end;

procedure Tfrmvenda_impressao2.NFCupom1Click(Sender: TObject);
var arquivo: textfile;
  texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8: string;
  BASE_CALCULO, ICMS: REAL;
  desconto_acrescimo, tn: real;
  tp_desconto_acrescimo, numero_cupom, aliquota: string;
  produto: string;
begin

// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// MEIA LINHA           --> #27#51
// LINHA NORMAL         --> #27#50


  frmmodulo.qrnotafiscal.close;
  frmmodulo.qrnotafiscal.sql.clear;
  frmmodulo.qrnotafiscal.sql.add('select * from c000061');
  frmmodulo.qrnotafiscal.open;

  frmmodulo.qrnotafiscal.insert;
  frmmodulo.qrnotafiscal.FieldByName('codfilial').asstring := '000001';
  frmmodulo.qrnotafiscal.FieldByName('codigo').asstring := frmprincipal.codifica('000061');

  frmmodulo.qrfilial.open;
  frmmodulo.qrfilial.Locate('codigo', '000001', [loCaseInsensitive]);


  frmvenda_nf := tfrmvenda_nf.create(self);
  frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring, 6);
  frmvenda_nf.showmodal;

  frmmodulo.qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring := '1202';
  frmmodulo.qrnotafiscal.fieldbyname('data').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.fieldbyname('data_saida').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
  frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring := frmvenda.lcliente_codigo.caption;
  frmmodulo.qrnotafiscal.fieldbyname('desconto').asfloat := 0;
  frmmodulo.qrnotafiscal.fieldbyname('situacao').asinteger := 1;
  frmmodulo.qrnotafiscal.fieldbyname('INF1').asSTRING := 'DOCUMENTO EMITIDO POR ME OU EPP';
  frmmodulo.qrnotafiscal.fieldbyname('INF2').asSTRING := 'OPTANTE PELO SIMPLES NACIONAL';
  frmmodulo.qrnotafiscal.fieldbyname('INF3').asSTRING := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS';
  frmmodulo.qrnotafiscal.fieldbyname('situacao_A').ASSTRING := 'A';
  frmmodulo.qrnotafiscal.fieldbyname('MODELO_NF').ASSTRING := '01';
  frmmodulo.qrnotafiscal.fieldbyname('SERIE_NF').ASSTRING := '';
  frmmodulo.qrnotafiscal.fieldbyname('SIT').ASSTRING := 'N';
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('MOVIMENTO').ASSTRING := 'E';



  qrnotafiscal_item.close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.SQL.add('select * from c000062 where codnota = ''' + frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring + '''');
  qrnotafiscal_item.open;



  BASE_CALCULO := 0;
  ICMS := 0;

  tn := 0;
  FRMVENDA.qrvenda_produto.FIRST;
  while not FRMVENDA.qrvenda_produto.Eof do
  begin
    if frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat < 0 then
    begin
      QRNOTAFISCAL_ITEM.INSERT;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('CODIGO').ASSTRING;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT * (-1);
      QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT * (-1);
      QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT / QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('CFOP').ASSTRING := '1202';
      QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('CST').ASSTRING;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('ICMS').ASSTRING := '0';
      qrnotafiscal_item.fieldbyname('codlancamento').asstring := 'XXXXXX';
      tn := tn + (FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT * (-1));
      QRNOTAFISCAL_ITEM.POST;
    end;

    FRMVENDA.QRVENDA_PRODUTO.NEXT;
  end;
  frmmodulo.qrnotafiscal.fieldbyname('valor_produtos').asfloat := tn;
  frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat := tn;


  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('BASE_CALCULO').ASFLOAT := 0;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('VALOR_ICMS').ASFLOAT := 0;
  frmmodulo.qrnotafiscal.post;


  VALOR_NOTAZ := frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat;





  BAPOIOClick(frmvenda_impressao2);





  assignfile(arquivo, porta_impressora);
  rewrite(arquivo);
  writeln(arquivo, #27 + #51);
  WRITELN(arquivo, #15 + #27#72 + #20, '');
  writeln(arquivo, '');
  writeln(arquivo, '                                                                                                                             ' + #18 + #27#71 + #20 + frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring, 6, '0', 'E') + #15 + #27#72 + #20);
  WRITELN(arquivo, '                                                                                                  X');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('natureza').asstring, 41, ' ', 'D') + ' ' + frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('CFOP').asstring, 6, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('NOME').asstring, 90, ' ', 'D') + ' ' + frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CPF').asstring, 32, ' ', 'D') + ' ' + frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('ENDERECO').asstring, 68, ' ', 'D') + ' ' + frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('BAIRRO').asstring, 24, ' ', 'D') + ' ' + frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CEP').asstring, 29, ' ', 'D') + ' ' + frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CIDADE').asstring, 50, ' ', 'D') + ' ' +
    frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('TELEFONE1').asstring + '  ' + frmmodulo.qrCLIENTE.fieldbyname('TELEFONE2').asstring, 27, ' ', 'D') + ' ' +
    frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('UF').asstring, 6, ' ', 'D') + ' ' +
    frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('RG').asstring, 38, ' ', 'D') + ' ' +
    frmprincipal.Texto_Justifica(timetostr(time), 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  if frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00', frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat);
  if frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00', frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO1').asstring, 31, ' ', 'D') + ' ' +
    frmprincipal.Texto_Justifica(texto1, 15, ' ', 'E') + '     ' +
    frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA1').asstring, 17, ' ', 'D') + ' ' +
    frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO2').asstring, 31, ' ', 'D') + ' ' +
    frmprincipal.Texto_Justifica(texto2, 16, ' ', 'E') + '     ' +
    frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA2').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  if frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR3').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00', frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat) else texto1 := '';
  if frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR4').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00', frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat) else texto2 := '';
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO3').asstring, 31, ' ', 'D') + ' ' +
    frmprincipal.Texto_Justifica(texto1, 15, ' ', 'E') + '     ' +
    frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA3').asstring, 17, ' ', 'D') + ' ' +
    frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO4').asstring, 31, ' ', 'D') + ' ' +
    frmprincipal.Texto_Justifica(texto2, 16, ' ', 'E') + '     ' +
    frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA4').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');

  frmvenda.qrapoio.Open;
  frmvenda.Refresh;
  frmvenda.qrapoio.first;
  while not frmvenda.qrapoio.Eof do
  begin
    write(arquivo, frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('codproduto').asstring, 9, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('Produto').asstring, 59, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('CF').asstring, 0, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('STR').asstring, 5, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('UN').asstring, 3, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('QTDE').asstring, 9, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('UNITARIO').asstring, 13, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('TOTAL').asstring, 18, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('ICMS').asstring, 4, ' ', 'E') + ' ');
    writeln(arquivo, frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('IPI').asstring, 3, ' ', 'E'));
    writeln(arquivo, '');
    frmvenda.qrapoio.next;
  end;

  if frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat) else texto1 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat) else texto2 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat) else texto3 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat) else texto4 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat) else texto5 := '';
  write(arquivo, frmprincipal.Texto_Justifica(texto1, 24, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(texto2, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(texto3, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(texto4, 25, ' ', 'E') + ' ');
  writeLN(arquivo, frmprincipal.Texto_Justifica(texto5, 25, ' ', 'E') + ' ');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  if frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat) else texto1 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat) else texto2 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat) else texto3 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat) else texto4 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat) else texto5 := '';
  write(arquivo, frmprincipal.Texto_Justifica(texto1, 24, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(texto2, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(texto3, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(texto4, 25, ' ', 'E') + ' ');
  writeLN(arquivo, frmprincipal.Texto_Justifica(texto5, 25, ' ', 'E') + ' ');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transportador').asstring, 74, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('FRETE_CONTA').asstring, 4, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa').asstring, 18, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa_uf').asstring, 8, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_cpf').asstring, 25, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_ENDERECO').asstring, 59, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_CIDADE').asstring, 37, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_UF').asstring, 15, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_RG').asstring, 25, ' ', 'D'));
//  writeln(arquivo,'');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_QTDE').asstring, 22, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_ESPECIE').asstring, 25, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_MARCA').asstring, 20, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_NUMERO').asstring, 25, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_BRUTO').asstring, 20, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_LIQUIDO').asstring, 20, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF1').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF2').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF3').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF4').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF5').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');

  writeln(arquivo, '                                                                                                                             ' + #18 + #27#71 + #20 + frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring, 6, '0', 'E') + #15 + #27#72 + #20);
  writeln(arquivo, #27 + #50);
//  WRITELN(ARQUIVO,#12);

  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');




  CLOSEFILE(arquivo);

  frmmodulo.qrfilial.edit;
  frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
  frmmodulo.qrfilial.post;



  application.MessageBox('Pressione [ENTER] para Imprimir o Cupom Fiscal.', 'Aviso', mb_ok + MB_ICONINFORMATION);



  try










    tn := 0;

    frmvenda.qrvenda_produto.First;

    if ecf_abre_cupom(ecf_modelo, '') = 'ERRO' then exit;
    numero_cupomx := ecf_numero_cupom(ECF_MODELO);


    while not frmvenda.qrvenda_produto.Eof do
    begin
      if frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat > 0 then
      begin
        FRMMODULO.QRPRODUTO.CLOSE;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = ''' + frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring + '''');
        FRMMODULO.QRPRODUTO.OPEN;
        if FRMMODULO.QRPRODUTO.RecNo = 1 then
        begin
          if frmvenda.qrvenda_produto.fieldbyname('serial').asstring <> '' then
          begin
            produto := frmmodulo.qrproduto.fieldbyname('produto').asstring + ' [' + frmvenda.qrvenda_produto.fieldbyname('serial').asstring + ']';
          end
          else
          begin
            produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          end;


          desconto_acrescimo := frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat - frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat;
          if desconto_acrescimo < 0 then tp_desconto_acrescimo := 'A' else tp_desconto_acrescimo := 'D';

          if (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '060') or (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '010') or (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '070') then ALIQUOTA := 'FF' else
            if (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '040') or (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '030') then ALIQUOTA := 'II' else
              if (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '041') or (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '050') or (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '051') or (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '090') then ALIQUOTA := 'NN' else
              begin
                aliquota := formatfloat('00.00', frmmodulo.qrproduto.fieldbyname('aliquota').asfloat);
              end;



          if ecf_vende_item_completo(ecf_modelo, frmmodulo.qrproduto.fieldbyname('codbarra').asstring,
            frmprincipal.RemoveAcentos(produto),
            aliquota,
            frmvenda.qrvenda_produto.fieldbyname('UNITARIO').asfloat,
            frmvenda.qrvenda_produto.fieldbyname('QTDE').asfloat,
            frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat,
            frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat,
            frmmodulo.qrproduto.fieldbyname('unidade').asstring,
            0) = 'ERRO' then
          begin
            application.messagebox('Houve erro na impressão do item! Favor verificar!', 'Atenção', mb_ok + mb_iconerror);
            exit;
          end;
          tn := tn + (frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat * frmvenda.qrvenda_produto.fieldbyname('unitario').asfloat);
        end;
      end;
      frmvenda.qrvenda_produto.Next;
    end;




       (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)

    desconto_acrescimo := 0;
    if desconto_acrescimo < 0 then
    begin
      tp_desconto_acrescimo := 'A';
      DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
    end
    else
      tp_desconto_acrescimo := 'D';

    if ecf_inicia_fechamento_cupom(ecf_modelo, TP_DESCONTO_ACRESCIMO, '$', DESCONTO_ACRESCIMO, 0) = 'ERRO' then exit;
      (*---------------------------------------------------------------------*)


    if ecf_efetua_forma_pgto(ecf_modelo, 'Dinheiro', tn) = 'ERRO' then exit;



      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

    if ecf_termina_fechamento(ecf_modelo, frmprincipal.Texto_Justifica('CLIENTE.: ' + frmmodulo.qrcliente.fieldbyname('codigo').asstring + '-' + frmmodulo.qrcliente.fieldbyname('nome').asstring, 48, ' ', 'D') + #10 +
      frmprincipal.Texto_Justifica(('ENDERECO: ' + frmmodulo.qrcliente.fieldbyname('endereco').asstring + ' ' +
      frmmodulo.qrcliente.fieldbyname('bairro').asstring + ' ' +
      frmmodulo.qrcliente.fieldbyname('cidade').asstring), 48, ' ', 'D') + #10 +
      frmprincipal.Texto_Justifica('CPF/CNPJ: ' + frmmodulo.qrcliente.fieldbyname('cpf').asstring + ' VENDEDOR: ' + copy(frmvenda.lvendedor_codigo.Caption, 4, 3), 42, ' ', 'D') + #10 +
      '------------------------------------------------' + #10 +
      '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' then EXIT;

    cupom_fiscal := true;



  except
    showmessage('Esta função gerou erro! O procedimento foi abortado!');
  end;


end;

end.
