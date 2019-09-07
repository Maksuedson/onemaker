unit etiquetador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, TFlatPanelUnit, Mask, DBCtrls, wwdblook, StdCtrls, Wwdbdlg,
  dxCore, Grids, DBGrids, Db, Wwdatsrc, DBTables, Wwdbigrd, Wwdbgrid, Buttons, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Collection, Menus, frxClass, frxDBSet, frxDesgn, frxBarcode,
  ComCtrls, wwdbedit, AdvGlowButton, RzEdit, AdvReflectionImage,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  Tfrmetiquetador = class(TForm)
    dsetiq: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    qretiq: TZQuery;
    pimprimir: THeaderView;
    HeaderView2: THeaderView;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    combo_impressora: TComboBox;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    COMBOPRODUTO: TwwDBLookupCombo;
    COMBOCODIGO: TwwDBLookupComboDlg;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    BitBtn1: TBitBtn;
    frxDesigner1: TfrxDesigner;
    fxproduto: TfrxReport;
    fsproduto: TfrxDBDataset;
    qretiqlocalizacao: TStringField;
    qretiqfornecedor: TStringField;
    qretiqmarca: TStringField;
    qretiqcomplemento: TStringField;
    qretiqauto_aplicacao: TStringField;
    qretiqcodbarra: TStringField;
    QRPRODUTO: TZQuery;
    frxBarCodeObject1: TfrxBarCodeObject;
    Pimport: THeaderView;
    HeaderView3: THeaderView;
    bar: TProgressBar;
    qrproduto_mov: TZQuery;
    qrproduto_movproduto: TStringField;
    qrproduto_movprecovenda: TFloatField;
    Query1: TQuery;
    RVALOR: TwwDBEdit;
    qrgrade: TZQuery;
    qretiqultima_compra: TDateField;
    qrremarcados: TZQuery;
    pperiodo: THeaderView;
    HeaderView4: THeaderView;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    query: TZQuery;
    BitBtn2: TAdvGlowButton;
    bok: TAdvGlowButton;
    pdesconto: THeaderView;
    HeaderView5: THeaderView;
    bdesconto: TAdvGlowButton;
    edesconto: TRzNumericEdit;
    Label3: TLabel;
    qrproduto_movCODIGO: TWideStringField;
    qrproduto_movCODNOTA: TWideStringField;
    qrproduto_movCODPRODUTO: TWideStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TWideStringField;
    qrproduto_movNUMERONOTA: TWideStringField;
    qrproduto_movCODCLIENTE: TWideStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODVENDEDOR: TWideStringField;
    qrproduto_movCODGRADE: TWideStringField;
    qrproduto_movSERIAL: TWideStringField;
    qrproduto_movUNIDADE: TWideStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TWideStringField;
    qrproduto_movECF_CAIXA: TWideStringField;
    qrproduto_movCODALIQUOTA: TWideStringField;
    qrproduto_movCUPOM_NUMERO: TWideStringField;
    qrproduto_movCUPOM_MODELO: TWideStringField;
    qrproduto_movCUPOM_ITEM: TWideStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TWideStringField;
    qrproduto_movMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto_movCODBARRA: TWideStringField;
    qrproduto_movMARGEM_DESCONTO: TFloatField;
    qrproduto_movCREDITO_ICMS: TFloatField;
    qrproduto_movPIS: TFloatField;
    qrproduto_movCOFINS: TFloatField;
    qrproduto_movLOJA: TWideStringField;
    qrproduto_movCODSUBGRUPO: TWideStringField;
    qrproduto_movTIPO: TWideStringField;
    qrproduto_movCODUSUARIO: TWideStringField;
    qrproduto_movORIGEM: TWideStringField;
    qrproduto_movDESTINO: TWideStringField;
    qretiqCODPRODUTO: TWideStringField;
    qretiqQTDE: TIntegerField;
    qretiqPRODUTO: TWideStringField;
    qretiqVALOR: TFloatField;
    qretiqTAMANHO: TWideStringField;
    qretiqTEXTO: TWideStringField;
    qretiqGRADE: TWideStringField;
    dtfld_movDATA: TDateField;
    qrproduto_movLOTE_FABRICACAO: TWideStringField;
    qrproduto_movLANCADO: TIntegerField;
    dtfld_movVENCIMENTO: TDateField;
    QRPRODUTOCODIGO: TWideStringField;
    QRPRODUTOCODBARRA: TWideStringField;
    QRPRODUTOPRODUTO: TWideStringField;
    QRPRODUTOUNIDADE: TWideStringField;
    QRPRODUTOLOCALIZACAO: TWideStringField;
    QRPRODUTOCOMPLEMENTO: TWideStringField;
    QRPRODUTOAPLICACAO: TWideStringField;
    QRPRODUTOFORNECEDOR: TWideStringField;
    QRPRODUTOMARCA: TWideStringField;
    QRPRODUTOESTOQUE: TFloatField;
    QRPRODUTOPRECO: TFloatField;
    dtfldQRPRODUTOULTIMA_COMPRA: TDateField;
    QRPRODUTOREFERENCIA: TWideStringField;
    QRPRODUTOCOMPOSICAO1: TWideStringField;
    QRPRODUTOCOMPOSICAO2: TWideStringField;
    Panel13: TPanel;
    bgerar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure bgerarClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure combo_impressoraEnter(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure combo_impressoraExit(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure eqtdeEnter(Sender: TObject);
    procedure eqtdeExit(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure COMBOCODIGOExit(Sender: TObject);
    procedure COMBOPRODUTOExit(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QRPRODUTOCalcFields(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure bokClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bdescontoClick(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmetiquetador: Tfrmetiquetador;
  vdesconto: double;
  vetq_07, vetq_07_1, vetq_07_2: Integer;
     const
   sc_DragMove = $f012;
implementation

uses Principal, Modulo, xloc_produto_entrada, Math, etiqueta_grade, UFuncoes;

{$R *.DFM}

procedure Tfrmetiquetador.FormShow(Sender: TObject);
begin
  ComboBox1.ItemIndex := 1;
  qretiq.close;
  qretiq.SQL.clear;
  qretiq.SQL.add('delete from cl00005');
  qretiq.ExecSQL;
  qretiq.SQL.clear;
  qretiq.SQL.add('select * from cl00005');
  qretiq.open;

  frmmodulo.QRPRODUTO.close;
  frmmodulo.QRPRODUTO.SQL.clear;
  frmmodulo.QRPRODUTO.SQL.add('select * from c000025 order by produto');
  frmmodulo.QRPRODUTO.open;
  frmmodulo.QRPRODUTO.IndexFieldNames := 'produto';

end;

procedure Tfrmetiquetador.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmetiquetador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmetiquetador.bexcluirClick(Sender: TObject);
begin
  qretiq.Delete;
  frmmodulo.Conexao.Commit;
end;

procedure Tfrmetiquetador.BitBtn9Click(Sender: TObject);
begin
  pimprimir.visible := false;
end;

procedure Tfrmetiquetador.bgerarClick(Sender: TObject);
begin
  pimprimir.visible := true;
  ComboBox1.setfocus;
end;

procedure Tfrmetiquetador.BitBtn8Click(Sender: TObject);
var
  q: real;
  f, arquivo, txt: textfile;
  ETIQ: Integer;
  EMP1, EMP2, EMP3, EMP4, EMP5, EMP6, texto, cod1, cod2, cod3, cod4, cod5, cod6,
    valor1, valor2, valor3, valor4, valor5, prod1, prod2, prod3, prod4, prod5,
    prod6: string;
  DAT1, DAT2, DAT3, TAM1, TAM2, TAM3: string;
  COD_EXTRA1, COD_EXTRA2: String;

  entrada: string;
  xx, avista1, avista2, prestacao1, prestacao2: string;
  vparcelas, vparcelas1, vvista, vprazo: double;
  qa, i: Integer;
begin


  if ComboBox1.ItemIndex = 13 then
  begin
    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(f, systemDrive + '\etiqueta.prn');
    REWRITE(f);
    WRITELN(f, 'c0000');
    WRITELN(f, 'KI503');
    WRITELN(f, 'O0220');
    WRITELN(f, 'f220');
    WRITELN(f, 'KW0425');
    WRITELN(f, 'KI7');
    WRITELN(f, 'V0');
    WRITELN(f, 'L');
    WRITELN(f, 'H13');
    WRITELN(f, 'PC');

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING :=
          qretiq.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('complemento').ASSTRING :=
          qretiq.FIELDBYNAME('texto').ASSTRING;
        QRPRODUTO.FIELDBYNAME('marca').ASSTRING :=
          qretiq.FIELDBYNAME('marca').ASSTRING;
        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;

    xx := frmPrincipal.zerarcodigo(inttostr(i), 2);
    qa := 0;
    QRPRODUTO.FIRST;
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      prod6 := '';
      valor1 := '';
      valor2 := '';
      valor3 := '';
      valor4 := '';
      valor5 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';
      prod1 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      WHILE LENGTH(prod1) > 25 DO
        Delete(prod1, 26, 1);
      prod2 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
      valor1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
      cod1 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
      WHILE LENGTH(cod1) < 6 DO
        cod1 := '0' + cod1;
      EMP1 := QRPRODUTO.FIELDBYNAME('restrito').ASSTRING;

      QRPRODUTO.NEXT;
      qa := qa + 1;

      if qa <> i then
      begin

        prod3 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
        WHILE LENGTH(prod3) > 25 DO
          Delete(prod3, 26, 1);
        prod4 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
        valor2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
        cod2 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
        WHILE LENGTH(cod2) < 6 DO
          cod1 := '0' + cod2;
        EMP2 := QRPRODUTO.FIELDBYNAME('restrito').ASSTRING;
        QRPRODUTO.NEXT;
        qa := qa + 1;
        if LENGTH(prod1) > 25 then
          Delete(prod2, 26, 1);

        if qa <> i then
        begin

          prod5 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
          WHILE LENGTH(prod5) > 25 DO
            Delete(prod5, 26, 1);
          prod6 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
          valor3 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
            QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
          cod3 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
          WHILE LENGTH(cod3) < 6 DO
            cod3 := '0' + cod3;
          EMP3 := QRPRODUTO.FIELDBYNAME('restrito').ASSTRING;
          QRPRODUTO.NEXT;
          qa := qa + 1;
        end;
      end;

      WRITELN(f, 'A2');
      WRITELN(f, 'D11');

      WRITELN(f, '1a4202000120016' + cod1);
      WRITELN(f, '191100200640010' + 'Cod: ' + prod2);
      WRITELN(f, '191100400330016' + valor1);
      WRITELN(f, '121100000010026' + emitente_fantasia);
      WRITELN(f, '191100100650085' + EMP1);
      WRITELN(f, '191100100530010' + prod1);

      if prod3 <> '' then
      begin
        WRITELN(f, '1a4202000120158' + cod2);
        WRITELN(f, '191100200640152' + 'Cod: ' + prod4);
        WRITELN(f, '191100400330158' + valor2);
        WRITELN(f, '121100000010168' + emitente_fantasia);
        WRITELN(f, '191100100650227' + EMP2);
        WRITELN(f, '191100100530152' + prod3);

      end;
      if prod5 <> '' then
      begin
        WRITELN(f, '1a4202000120300' + cod3);
        WRITELN(f, '191100200640294' + 'Cod: ' + prod6);
        WRITELN(f, '191100400330300' + valor3);
        WRITELN(f, '121100000010310' + emitente_fantasia);
        WRITELN(f, '191100100650369' + EMP3);
        WRITELN(f, '191100100530294' + prod5);
      end;

      // qa := qa + 1;
      WRITELN(f, '^' + xx);
      WRITELN(f, 'Q0001');
      WRITELN(f, 'E');
      if i <> qa then
      begin
        WRITELN(f, 'L');
      end;
    END;

    CLOSEFILE(f);

    application.ProcessMessages;

    ASSIGNFILE(txt, systemDrive + '\etiqueta.prn');
    reset(txt);
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    while not EOF(txt) do
    begin
      readln(txt, entrada);
      WRITELN(f, entrada);
    end;
    CLOSEFILE(txt);
    CLOSEFILE(f);
  end;

  if ComboBox1.ItemIndex = 0 then
  // 2 - Bobina | 11,10 cm x 3,40 cm | 01 Fileira
  begin
    xx := frmPrincipal.zerarcodigo(qretiq.FIELDBYNAME('qtde').ASSTRING, 2);
    qretiq.Refresh;
    qretiq.FIRST;
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    WHILE NOT qretiq.EOF DO
    BEGIN
      WRITELN(f, 'c0000');
      WRITELN(f, 'KI503');
      WRITELN(f, 'O0220');
      WRITELN(f, 'f220');
      WRITELN(f, 'KW0437'); // KW0425
      WRITELN(f, 'KI7');
      WRITELN(f, 'V0');
      WRITELN(f, 'L');
      WRITELN(f, 'H13');
      WRITELN(f, 'PC');
      WRITELN(f, 'A2');
      WRITELN(f, 'D11');
      prod1 := copy(qretiq.FIELDBYNAME('PRODUTO').ASSTRING, 1, 26);
      WRITELN(f, '123200000960022' + prod1);
      // WRITELN(F,'103200000120028'+'       REDE MULTI MARKET      ');
      WRITELN(f, '103200000120028' + '       ' + trim(emitente_fantasia) +
        '      ');
      WRITELN(f, '125400000390076' + 'R$ ' + FORMATFLOAT('###,###,##0.00',
        qretiq.FIELDBYNAME('VALOR').ASFLOAT));
      xx := qretiq.FIELDBYNAME('qtde').ASSTRING;
      while LENGTH(xx) < 4 do
        xx := '0' + xx;
      WRITELN(f, '^' + qretiq.FIELDBYNAME('qtde').ASSTRING);
      WRITELN(f, 'Q' + xx);
      WRITELN(f, 'E');

      qretiq.NEXT;
    END;
    CLOSEFILE(f);
  end;

  if ComboBox1.ItemIndex = 9 then
  // 2 - Bobina | 10,40 cm x 3,00 cm | 01 Fileira
  begin
    xx := frmPrincipal.zerarcodigo(qretiq.FIELDBYNAME('qtde').ASSTRING, 2);
    qretiq.Refresh;
    qretiq.FIRST;
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    WHILE NOT qretiq.EOF DO
    BEGIN
      WRITELN(f, 'c0000');
      WRITELN(f, 'KI503');
      WRITELN(f, 'O0220');
      WRITELN(f, 'f220');
      WRITELN(f, 'KW0425'); // KW0425
      WRITELN(f, 'KI7');
      WRITELN(f, 'V0');
      WRITELN(f, 'L');
      WRITELN(f, 'H13');
      WRITELN(f, 'PC');
      WRITELN(f, 'A2');
      WRITELN(f, 'D11');

      prod1 := copy(qretiq.FIELDBYNAME('PRODUTO').ASSTRING, 1, 26);
      prod2 := qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
      prod3 := qretiq.FIELDBYNAME('MARCA').ASSTRING;

      WRITELN(f, '191100600730015' + prod1);
      WRITELN(f, '192200500240116' + 'R$ ' + FORMATFLOAT('###,###,##0.00',
        qretiq.FIELDBYNAME('VALOR').ASFLOAT));
      WRITELN(f, '191100300310018' + prod2);
      WRITELN(f, '191100200640017' + emitente_fantasia);
      WRITELN(f, '191100400040018' + prod3);

      xx := qretiq.FIELDBYNAME('qtde').ASSTRING;
      while LENGTH(xx) < 4 do
        xx := '0' + xx;
      WRITELN(f, '^' + qretiq.FIELDBYNAME('qtde').ASSTRING);
      WRITELN(f, 'Q' + xx);
      WRITELN(f, 'E');

      qretiq.NEXT;
    END;
    CLOSEFILE(f);
  end;

  // ***************************************************************

  if ComboBox1.ItemIndex = 5 then
  begin

    frmmodulo.qremitente.open;

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(f, systemDrive + '\etiqueta.prn');
    REWRITE(f);
    WRITELN(f, 'c0000');
    WRITELN(f, 'KI503');
    WRITELN(f, 'O0220');
    WRITELN(f, 'f220');
    WRITELN(f, 'KW0394');
    WRITELN(f, 'KI7');
    WRITELN(f, 'V0');
    WRITELN(f, 'L');
    WRITELN(f, 'H13');
    WRITELN(f, 'PC');

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING :=
          qretiq.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING :=
          qretiq.FIELDBYNAME('tamanho').ASSTRING;
        QRPRODUTO.FIELDBYNAME('complemento').ASSTRING :=
          qretiq.FIELDBYNAME('texto').ASSTRING;
        QRPRODUTO.FIELDBYNAME('marca').ASSTRING :=
          qretiq.FIELDBYNAME('marca').ASSTRING;
        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;

    xx := frmPrincipal.zerarcodigo(inttostr(i), 2);
    qa := 0;
    QRPRODUTO.FIRST;
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      prod6 := '';
      valor1 := '';
      valor2 := '';
      valor3 := '';
      valor4 := '';
      valor5 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';

      prod1 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      prod2 := QRPRODUTO.FIELDBYNAME('marca').ASSTRING;
      prod3 := QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING;

      avista1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT -
        (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT * 0.10)));

      prestacao1 := '';
      if QRPRODUTO.FIELDBYNAME('complemento').ASSTRING <> '' then
      begin
        prestacao1 := '(' + QRPRODUTO.FIELDBYNAME('complemento').ASSTRING +
          ' x R$' + FORMATFLOAT('###,###,##0.00',
          (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT / QRPRODUTO.FIELDBYNAME
          ('complemento').ASINTEGER)) + ')';
      end;

      if LENGTH(prod1) > 25 then
        Delete(prod1, 26, 100);
      if LENGTH(prod2) > 25 then
        Delete(prod2, 26, 100);

      valor1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
      cod1 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
      WHILE LENGTH(cod1) < 6 DO
        cod1 := '0' + cod1;
      EMP1 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
      QRPRODUTO.NEXT;
      qa := qa + 1;

      if qa <> i then
      begin
        prod4 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
        prod5 := QRPRODUTO.FIELDBYNAME('marca').ASSTRING;
        prod6 := QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING;

        avista2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT -
          (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT * 0.10)));
        prestacao2 := '';
        if QRPRODUTO.FIELDBYNAME('complemento').ASSTRING <> '' then
        begin
          prestacao2 := '(' + QRPRODUTO.FIELDBYNAME('complemento').ASSTRING +
            ' x R$' + FORMATFLOAT('###,###,##0.00',
            (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT / QRPRODUTO.FIELDBYNAME
            ('complemento').ASINTEGER)) + ')';
        end;

        if LENGTH(prod4) > 25 then
          Delete(prod4, 26, 100);
        if LENGTH(prod5) > 25 then
          Delete(prod5, 26, 100);

        valor2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
        cod2 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
        WHILE LENGTH(cod1) < 6 DO
          cod1 := '0' + cod1;
        EMP2 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.NEXT;
        qa := qa + 1;
      end;

      WRITELN(f, 'A2');
      WRITELN(f, 'D11');
      WRITELN(f, '322100000390165' + emitente_fantasia);
      WRITELN(f, '311200000550176' + frmmodulo.qremitente.FIELDBYNAME
        ('HOMEPAGE').ASSTRING);
      WRITELN(f, '321100001140191' + 'REF: ' + EMP1);
      WRITELN(f, '321100000680192' + 'CODIGO:' + cod1);
      WRITELN(f, '321100001140078' + 'TAM:' + prod3);
      WRITELN(f, '3A6302501630178' + cod1);
      WRITELN(f, '321100002600189' + 'A PRAZO:');
      WRITELN(f, '321100002210190' + 'REF:' + EMP1 + ' ' + copy(prod1, 1, 17));
      WRITELN(f, '321100002050190' + 'CODIGO:' + cod1);
      WRITELN(f, '321100002050081' + 'TAM:' + prod3);
      WRITELN(f, '321100000840191' + prod1);
      WRITELN(f, '321100000990191' + prod2);
      WRITELN(f, '321100002410190' + 'A VISTA:');
      WRITELN(f, '321100002400139' + avista1);
      WRITELN(f, '311100002380085' + '(10% DESC.)');
      WRITELN(f, '321100002600139' + valor1);
      WRITELN(f, '311100002580084' + prestacao1);

      if prod4 <> '' then
      begin
        WRITELN(f, '322100000390362' + emitente_fantasia);
        WRITELN(f, '311200000550373' + frmmodulo.qremitente.FIELDBYNAME
          ('HOMEPAGE').ASSTRING);
        WRITELN(f, '321100001140388' + 'REF: ' + EMP2);
        WRITELN(f, '321100000680389' + 'CODIGO:' + cod2);
        WRITELN(f, '321100001140275' + 'TAM:' + prod6);
        WRITELN(f, '3A6302501630375' + cod2);
        WRITELN(f, '321100002600386' + 'A PRAZO:');
        WRITELN(f, '321100002210387' + 'REF:' + EMP2 + ' ' +
          copy(prod4, 1, 17));
        WRITELN(f, '321100002050387' + 'CODIGO:' + cod2);
        WRITELN(f, '321100002050278' + 'TAM:' + prod6);
        WRITELN(f, '321100000840388' + prod4);
        WRITELN(f, '321100000990388' + prod5);
        WRITELN(f, '321100002410387' + 'A VISTA:');
        WRITELN(f, '321100002400336' + avista2);
        WRITELN(f, '311100002380282' + '(10% DESC.)');
        WRITELN(f, '321100002600336' + valor2);
        WRITELN(f, '311100002580281' + prestacao2);
      end;

      WRITELN(f, '^' + xx);
      WRITELN(f, 'Q0001');
      WRITELN(f, 'E');
      if i <> qa then
      begin
        WRITELN(f, 'L');
      end;
    END;

    CLOSEFILE(f);

    application.ProcessMessages;

    ASSIGNFILE(txt, systemDrive + '\etiqueta.prn');
    reset(txt);
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    while not EOF(txt) do
    begin
      readln(txt, entrada);
      WRITELN(f, entrada);
    end;
    CLOSEFILE(txt);
    CLOSEFILE(f);
  end;

  if ComboBox1.ItemIndex = 6 then
  begin

    vdesconto := edesconto.Value / 100;

    frmmodulo.qremitente.open;

    application.ProcessMessages;
    qa := qretiq.recordcount;
    // ASSIGNFILE(F,systemDrive + '\etiqueta.prn');
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    WRITELN(f, 'c0000');
    WRITELN(f, 'KI503');
    WRITELN(f, 'O0220');
    WRITELN(f, 'f220');
    WRITELN(f, 'KW0394');
    WRITELN(f, 'KI7');
    WRITELN(f, 'V0');
    WRITELN(f, 'L');
    WRITELN(f, 'H13');
    WRITELN(f, 'PC');

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING :=
          qretiq.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING :=
          qretiq.FIELDBYNAME('tamanho').ASSTRING;
        QRPRODUTO.FIELDBYNAME('complemento').ASSTRING :=
          qretiq.FIELDBYNAME('texto').ASSTRING;
        QRPRODUTO.FIELDBYNAME('marca').ASSTRING :=
          qretiq.FIELDBYNAME('marca').ASSTRING;
        QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING :=
          qretiq.FIELDBYNAME('localizacao').ASSTRING;
        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;

    xx := frmPrincipal.zerarcodigo(inttostr(i), 2);
    qa := 0;
    QRPRODUTO.FIRST;
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      prod6 := '';
      valor1 := '';
      valor2 := '';
      valor3 := '';
      valor4 := '';
      valor5 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';
      COD_EXTRA1 := '';
      COD_EXTRA2 := '';

      if QRPRODUTO.FIELDBYNAME('complemento').ASSTRING <> '' then
        vparcelas := StrToFloat(QRPRODUTO.FIELDBYNAME('complemento').ASSTRING)
      else
        vparcelas := 0;

      prod1 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      prod2 := QRPRODUTO.FIELDBYNAME('marca').ASSTRING;
      prod3 := QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING;

      // avista1 := 'R$ '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*0.10)));
      avista1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT -
        (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT * vdesconto)));

      prestacao1 := '';
      if QRPRODUTO.FIELDBYNAME('complemento').ASSTRING <> '' then
      begin
        prestacao1 := '(' + QRPRODUTO.FIELDBYNAME('complemento').ASSTRING +
          ' x R$' + FORMATFLOAT('###,###,##0.00',
          (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT / vparcelas)) + ')';
      end;

      if LENGTH(prod1) > 25 then
        Delete(prod1, 26, 100);
      if LENGTH(prod2) > 25 then
        Delete(prod2, 26, 100);

      valor1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);

      vvista := QRPRODUTO.FIELDBYNAME('preco').ASFLOAT -
        (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT * vdesconto);
      vprazo := QRPRODUTO.FIELDBYNAME('preco').ASFLOAT;

      cod1 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
      WHILE LENGTH(cod1) < 6 DO
        cod1 := '0' + cod1;

      if vetq_07 = 0 then
        COD_EXTRA1 := ''
      else if vetq_07 = 1 then
        COD_EXTRA1 := QRPRODUTOCODIGO.ASSTRING
      else if vetq_07 = 2 then
        COD_EXTRA1 := QRPRODUTOLOCALIZACAO.ASSTRING;

      EMP1 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
      QRPRODUTO.NEXT;
      qa := qa + 1;

      if qa <> i then
      begin
        if QRPRODUTO.FIELDBYNAME('complemento').ASSTRING <> '' then
          vparcelas1 :=
            StrToFloat(QRPRODUTO.FIELDBYNAME('complemento').ASSTRING)
        else
          vparcelas1 := 0;

        prod4 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
        prod5 := QRPRODUTO.FIELDBYNAME('marca').ASSTRING;
        prod6 := QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING;

        // avista2 := 'R$ '+FORMATFLOAT('###,###,##0.00',(qrproduto.FIELDBYNAME('preco').ASFLOAT-(qrproduto.FIELDBYNAME('preco').ASFLOAT*0.10)));
        avista2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT -
          (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT * vdesconto)));

        prestacao2 := '';
        if QRPRODUTO.FIELDBYNAME('complemento').ASSTRING <> '' then
        begin
          prestacao2 := '(' + QRPRODUTO.FIELDBYNAME('complemento').ASSTRING +
            ' x R$' + FORMATFLOAT('###,###,##0.00',
            (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT / vparcelas1)) + ')';
        end;

        if LENGTH(prod4) > 25 then
          Delete(prod4, 26, 100);
        if LENGTH(prod5) > 25 then
          Delete(prod5, 26, 100);

        valor2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);

        vvista := QRPRODUTO.FIELDBYNAME('preco').ASFLOAT -
          (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT * vdesconto);
        vprazo := QRPRODUTO.FIELDBYNAME('preco').ASFLOAT;

        cod2 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
        WHILE LENGTH(cod1) < 6 DO
          cod1 := '0' + cod1;
        if vetq_07 = 0 then
          COD_EXTRA2 := ''
        else if vetq_07 = 1 then
          COD_EXTRA2 := QRPRODUTOCODIGO.ASSTRING
        else if vetq_07 = 2 then
          COD_EXTRA2 := QRPRODUTOLOCALIZACAO.ASSTRING;

        EMP2 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.NEXT;
        qa := qa + 1;

      end;

      if vparcelas = 0 then
        vparcelas := 1;

      if combo_impressora.Text = 'ARGOX - OS 214' then
      begin

        if vetq_07_2 = 0 then // 5,0 cm x 7,5 cm
        begin

          WRITELN(f, 'A2');
          WRITELN(f, 'D11');
          WRITELN(f, '122200002400023' + emitente_fantasia);
          WRITELN(f, '111200002220027' + frmmodulo.qremitente.FIELDBYNAME
            ('HOMEPAGE').ASSTRING);
          if vetq_07_1 = 0 then
            WRITELN(f, '121100002080019' + 'CODIGO:' + cod1)
            // codigo do produto
          else
            WRITELN(f, '121100002080019' + 'REF : ' + EMP1); // codigo de barra

          WRITELN(f, '121100002080130' + 'TAM:' + prod3);
          WRITELN(f, '1A6302501330030' + cod1);
          WRITELN(f, '121100000480021' + 'A PRAZO:');
          WRITELN(f, '121100001100021' + 'CODIGO:' + cod1);
          WRITELN(f, '121100001110130' + 'TAM:' + prod3);
          WRITELN(f, '121100001920020' + prod1);
          WRITELN(f, '121100001770020' + prod2);
          WRITELN(f, '121100000830021' + 'A VISTA:');
          WRITELN(f, '141100000600020' + avista1);
          WRITELN(f, '141100000230020' + valor1);
          WRITELN(f, '121100000270115' + prestacao1);
          WRITELN(f, '121100000970021' + prod1);
          WRITELN(f, '121100000100026' + 'Taxa de Juros ' +
            FORMATFLOAT('###,###,##0.00', (((vprazo / vvista) - 1) * 100) /
            vparcelas) + '% a.m.');
          WRITELN(f, '111100000730117' + COD_EXTRA1);

          if vparcelas1 = 0 then
            vparcelas1 := 1;

          if prod4 <> '' then
          begin
            WRITELN(f, '122200002400220' + emitente_fantasia);
            WRITELN(f, '111200002220224' + frmmodulo.qremitente.FIELDBYNAME
              ('HOMEPAGE').ASSTRING);
            if vetq_07_1 = 0 then
              WRITELN(f, '121100002080216' + 'CODIGO:' + cod2)
              // codigo do produto
            else
              WRITELN(f, '121100002080216' + 'REF : ' + EMP2);
            // codigo de barra

            WRITELN(f, '121100002080327' + 'TAM:' + prod6);
            WRITELN(f, '1A6302501330227' + cod2);
            WRITELN(f, '121100000480218' + 'A PRAZO:');
            WRITELN(f, '121100001100218' + 'CODIGO:' + cod2);
            WRITELN(f, '121100001110327' + 'TAM:' + prod6);
            WRITELN(f, '121100001920217' + prod4);
            WRITELN(f, '121100001770217' + prod5);
            WRITELN(f, '121100000830218' + 'A VISTA:');
            WRITELN(f, '141100000600217' + avista2);
            WRITELN(f, '141100000230217' + valor2);
            WRITELN(f, '121100000270312' + prestacao2);
            WRITELN(f, '121100000970218' + prod4);
            WRITELN(f, '121100000100223' + 'Taxa de Juros ' +
              FORMATFLOAT('###,###,##0.00', (((vprazo / vvista) - 1) * 100) /
              vparcelas1) + '% a.m.');
            WRITELN(f, '111100000730314' + COD_EXTRA2);
          end;

          WRITELN(f, '^' + xx);
          WRITELN(f, 'Q0001');
          WRITELN(f, 'E');
          if i <> qa then
          begin
            WRITELN(f, 'L');
          end;
        end
        else // 4,0 cm x 5,5 cm
        begin

          WRITELN(f, 'A2');
          WRITELN(f, 'D11');
          WRITELN(f, '122200001860006' + emitente_fantasia);
          WRITELN(f, '111200001670006' + frmmodulo.qremitente.FIELDBYNAME
            ('HOMEPAGE').ASSTRING);
          WRITELN(f, '121100001540004' + 'CODIGO:' + cod1); // codigo do produto
          WRITELN(f, '1A6302500810006' + cod1);
          WRITELN(f, '121100000220006' + 'A PRAZO:');
          WRITELN(f, '121100001400004' + prod1);
          WRITELN(f, '121100001250004' + prod2);
          WRITELN(f, '121100000500006' + 'A VISTA:');
          WRITELN(f, '131100000330005' + avista1);
          WRITELN(f, '131100000040005' + valor1);
          WRITELN(f, '121100000060078' + prestacao1);
          WRITELN(f, '121100000690003' + 'Taxa de Juros ' +
            FORMATFLOAT('###,###,##0.00', (((vprazo / vvista) - 1) * 100) /
            vparcelas) + '% a.m.');

          if vparcelas1 = 0 then
            vparcelas1 := 1;

          if prod4 <> '' then
          begin
            WRITELN(f, '122200001860163' + emitente_fantasia);
            WRITELN(f, '111200001670163' + frmmodulo.qremitente.FIELDBYNAME
              ('HOMEPAGE').ASSTRING);
            WRITELN(f, '121100001540161' + 'CODIGO:' + cod2);
            // codigo do produto
            WRITELN(f, '1A6302500810163' + cod2);
            WRITELN(f, '121100000220163' + 'A PRAZO:');
            WRITELN(f, '121100001400161' + prod4);
            WRITELN(f, '121100001250161' + prod5);
            WRITELN(f, '121100000500163' + 'A VISTA:');
            WRITELN(f, '131100000330162' + avista2);
            WRITELN(f, '131100000040162' + valor2);
            WRITELN(f, '121100000060235' + prestacao2);
            WRITELN(f, '121100000690160' + 'Taxa de Juros ' +
              FORMATFLOAT('###,###,##0.00', (((vprazo / vvista) - 1) * 100) /
              vparcelas1) + '% a.m.');
          end;

          WRITELN(f, '^' + xx);
          WRITELN(f, 'Q0001');
          WRITELN(f, 'E');

          {
            ^02
            Q0001
            E
          }

          if i <> qa then
          begin
            WRITELN(f, 'L');
          end;

        end;
      end
      else // Impressora ZEBRA

      begin
        if vetq_07_2 = 0 then // 5,0 cm x 7,5 cm
        begin

          WRITELN(f, 'A2');
          WRITELN(f, 'D11');
          WRITELN(f, '122200002400023' + emitente_fantasia);
          WRITELN(f, '111200002220027' + frmmodulo.qremitente.FIELDBYNAME
            ('HOMEPAGE').ASSTRING);

          if vetq_07_1 = 0 then
            WRITELN(f, '121100002080019' + 'CODIGO:' + cod1)
            // codigo do produto
          else
            WRITELN(f, '121100002080019' + 'REF : ' + EMP1); // codigo de barra

          WRITELN(f, '121100002080130' + 'TAM:' + prod3);
          WRITELN(f, '1A6302501330030' + cod1);
          WRITELN(f, '121100000480021' + 'A PRAZO:');
          WRITELN(f, '121100001100021' + 'CODIGO:' + cod1);
          WRITELN(f, '121100001110130' + 'TAM:' + prod3);
          WRITELN(f, '121100001920020' + prod1);
          WRITELN(f, '121100001770020' + prod2);
          WRITELN(f, '121100000830021' + 'A VISTA:');
          WRITELN(f, '141100000600020' + avista1);
          WRITELN(f, '141100000230020' + valor1);
          WRITELN(f, '121100000270115' + prestacao1);
          WRITELN(f, '121100000970021' + prod1);
          WRITELN(f, '121100000100026' + 'Taxa de Juros ' +
            FORMATFLOAT('###,###,##0.00', (((vprazo / vvista) - 1) * 100) /
            vparcelas) + '% a.m.');
          WRITELN(f, '111100000730117' + COD_EXTRA1);

          if vparcelas1 = 0 then
            vparcelas1 := 1;

          if prod4 <> '' then
          begin
            WRITELN(f, '122200002400220' + emitente_fantasia);
            WRITELN(f, '111200002220224' + frmmodulo.qremitente.FIELDBYNAME
              ('HOMEPAGE').ASSTRING);
            if vetq_07_1 = 0 then
              WRITELN(f, '121100002080216' + 'CODIGO:' + cod2)
              // codigo do produto
            else
              WRITELN(f, '121100002080216' + 'REF : ' + EMP2);
            // codigo de barra

            WRITELN(f, '121100002080327' + 'TAM:' + prod6);
            WRITELN(f, '1A6302501330227' + cod2);
            WRITELN(f, '121100000480218' + 'A PRAZO:');
            WRITELN(f, '121100001100218' + 'CODIGO:' + cod2);
            WRITELN(f, '121100001110327' + 'TAM:' + prod6);
            WRITELN(f, '121100001920217' + prod4);
            WRITELN(f, '121100001770217' + prod5);
            WRITELN(f, '121100000830218' + 'A VISTA:');
            WRITELN(f, '141100000600217' + avista2);
            WRITELN(f, '141100000230217' + valor2);
            WRITELN(f, '121100000270312' + prestacao2);
            WRITELN(f, '121100000970218' + prod4);
            WRITELN(f, '121100000100223' + 'Taxa de Juros ' +
              FORMATFLOAT('###,###,##0.00', (((vprazo / vvista) - 1) * 100) /
              vparcelas1) + '% a.m.');
            WRITELN(f, '111100000730314' + COD_EXTRA2);
          end;

          WRITELN(f, '^' + xx);
          WRITELN(f, 'Q0001');
          WRITELN(f, 'E');
          if i <> qa then
          begin
            WRITELN(f, 'L');
          end;
        end
        else // 4,0 cm x 5,5 cm
        begin

          WRITELN(f, 'A2');
          WRITELN(f, 'D11');
          WRITELN(f, '122200001860006' + emitente_fantasia);
          WRITELN(f, '111200001670006' + frmmodulo.qremitente.FIELDBYNAME
            ('HOMEPAGE').ASSTRING);
          WRITELN(f, '121100001540004' + 'CODIGO:' + cod1); // codigo do produto
          WRITELN(f, '1A6302500810006' + cod1);
          WRITELN(f, '121100000220006' + 'A PRAZO:');
          WRITELN(f, '121100001400004' + prod1);
          WRITELN(f, '121100001250004' + prod2);
          WRITELN(f, '121100000500006' + 'A VISTA:');
          WRITELN(f, '131100000330005' + avista1);
          WRITELN(f, '131100000040005' + valor1);
          WRITELN(f, '121100000060078' + prestacao1);
          WRITELN(f, '121100000690003' + 'Taxa de Juros ' +
            FORMATFLOAT('###,###,##0.00', (((vprazo / vvista) - 1) * 100) /
            vparcelas) + '% a.m.');

          if vparcelas1 = 0 then
            vparcelas1 := 1;

          if prod4 <> '' then
          begin
            WRITELN(f, '122200001860163' + emitente_fantasia);
            WRITELN(f, '111200001670163' + frmmodulo.qremitente.FIELDBYNAME
              ('HOMEPAGE').ASSTRING);
            WRITELN(f, '121100001540161' + 'CODIGO:' + cod2);
            // codigo do produto
            WRITELN(f, '1A6302500810163' + cod2);
            WRITELN(f, '121100000220163' + 'A PRAZO:');
            WRITELN(f, '121100001400161' + prod4);
            WRITELN(f, '121100001250161' + prod5);
            WRITELN(f, '121100000500163' + 'A VISTA:');
            WRITELN(f, '131100000330162' + avista2);
            WRITELN(f, '131100000040162' + valor2);
            WRITELN(f, '121100000060235' + prestacao2);
            WRITELN(f, '121100000690160' + 'Taxa de Juros ' +
              FORMATFLOAT('###,###,##0.00', (((vprazo / vvista) - 1) * 100) /
              vparcelas1) + '% a.m.');
          end;

          WRITELN(f, '^' + xx);
          WRITELN(f, 'Q0001');
          WRITELN(f, 'E');

          {
            ^02
            Q0001
            E
          }

          if i <> qa then
          begin
            WRITELN(f, 'L');
          end;

        end;

      end;
    END;
    CLOSEFILE(f);

    application.ProcessMessages;

    // assignfile(txt,systemDrive + '\etiqueta.prn');
    ASSIGNFILE(f, impressora_venda);
    reset(txt);
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    while not EOF(txt) do
    begin
      readln(txt, entrada);
      WRITELN(f, entrada);
    end;
    CLOSEFILE(txt);
    CLOSEFILE(f);
  end;

  if ComboBox1.ItemIndex = 1 then // 2 - Bobina | 3,6 cm x 2,1 cm | 03 Fileiras
  begin

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(f, systemDrive + '\etiqueta.prn');
    REWRITE(f);
    WRITELN(f, 'c0000');
    WRITELN(f, 'KI503');
    WRITELN(f, 'O0220');
    WRITELN(f, 'f220');
    WRITELN(f, 'KW0425');
    WRITELN(f, 'KI7');
    WRITELN(f, 'V0');
    WRITELN(f, 'L');
    WRITELN(f, 'H13');
    WRITELN(f, 'PC');

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING :=
          qretiq.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;

    xx := frmPrincipal.zerarcodigo(inttostr(i), 2);
    qa := 0;
    QRPRODUTO.FIRST;
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      prod6 := '';
      valor1 := '';
      valor2 := '';
      valor3 := '';
      valor4 := '';
      valor5 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';
      prod1 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      prod2 := '';
      if LENGTH(prod1) > 25 then
      begin
        prod2 := copy(prod1, 26, 26);
        Delete(prod1, 26, 100);
      end;
      valor1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
      cod1 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
      WHILE LENGTH(cod1) < 6 DO
        cod1 := '0' + cod1;
      EMP1 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
      QRPRODUTO.NEXT;
      qa := qa + 1;

      if qa <> i then
      begin
        prod3 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
        prod4 := '';
        if LENGTH(prod3) > 25 then
        begin
          prod4 := copy(prod3, 26, 26);
          Delete(prod3, 26, 100);
        end;
        valor2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
        cod2 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
        WHILE LENGTH(cod2) < 6 DO
          cod1 := '0' + cod2;
        EMP2 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.NEXT;
        qa := qa + 1;

        if qa <> i then
        begin

          prod5 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
          prod6 := '';
          if LENGTH(prod5) > 25 then
          begin
            prod6 := copy(prod5, 26, 26);
            Delete(prod5, 26, 100);
          end;
          valor3 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
            QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
          cod3 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
          WHILE LENGTH(cod3) < 6 DO
            cod3 := '0' + cod3;
          EMP3 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
          QRPRODUTO.NEXT;
          qa := qa + 1;
        end;
      end;

      WRITELN(f, 'A2');
      WRITELN(f, 'D11');

      WRITELN(f, '1A4202100150010' + cod1);
      WRITELN(f, '111200000610010' + prod1);
      WRITELN(f, '111200000480010' + prod2);
      WRITELN(f, '121100000030065' + valor1);
      WRITELN(f, '121100000030009' + EMP1);

      if prod3 <> '' then
      begin
        WRITELN(f, '1A4202100150152' + cod2);
        WRITELN(f, '111200000610152' + prod3);
        WRITELN(f, '111200000480152' + prod4);
        WRITELN(f, '121100000030207' + valor2);
        WRITELN(f, '121100000030151' + EMP2);
      end;
      if prod5 <> '' then
      begin
        WRITELN(f, '1A4202100150294' + cod3);
        WRITELN(f, '111200000610294' + prod5);
        WRITELN(f, '111200000480294' + prod6);
        WRITELN(f, '121100000030349' + valor3);
        WRITELN(f, '121100000030293' + EMP3);
      end;

      // qa := qa + 1;
      WRITELN(f, '^' + xx);
      WRITELN(f, 'Q0001');
      WRITELN(f, 'E');
      if i <> qa then
      begin
        WRITELN(f, 'L');
      end;
    END;

    CLOSEFILE(f);

    application.ProcessMessages;

    ASSIGNFILE(txt, systemDrive + '\etiqueta.prn');
    reset(txt);
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    while not EOF(txt) do
    begin
      readln(txt, entrada);
      WRITELN(f, entrada);
    end;
    CLOSEFILE(txt);
    CLOSEFILE(f);
  end;

  if ComboBox1.ItemIndex = 8 then
  begin

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(f, systemDrive + '\etiqueta.prn');
    REWRITE(f);
    {
      WRITELN(F,'c0000');
      WRITELN(F,'KI503');
      WRITELN(F,'O0220');
      WRITELN(F,'f220');
      WRITELN(F,'KW0425');
      WRITELN(F,'KI7');
      WRITELN(F,'V0');
      WRITELN(F,'L');
      WRITELN(F,'H13');
      WRITELN(F,'PC');

    }

    WRITELN(f, 'c0000');
    WRITELN(f, 'KI503');
    WRITELN(f, 'O0220');
    WRITELN(f, 'f220');
    WRITELN(f, 'KW0425');
    WRITELN(f, 'KI7');
    WRITELN(f, 'V0');
    WRITELN(f, 'L');
    WRITELN(f, 'H13');
    WRITELN(f, 'PC');

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING :=
          qretiq.FIELDBYNAME('CODBARRA').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING :=
          qretiq.FIELDBYNAME('LOCALIZACAO').ASSTRING;

        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;

    xx := frmPrincipal.zerarcodigo(inttostr(i), 2);
    qa := 0;
    QRPRODUTO.FIRST;
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      prod6 := '';
      valor1 := '';
      valor2 := '';
      valor3 := '';
      valor4 := '';
      valor5 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';
      prod1 := copy(QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING, 1, 25);
      prod2 := copy(QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING, 1, 25);
      valor1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
      cod1 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
      WHILE LENGTH(cod1) < 6 DO
        cod1 := '0' + cod1;
      EMP1 := ''; // qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
      QRPRODUTO.NEXT;
      qa := qa + 1;

      if qa <> i then
      begin
        prod3 := copy(QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING, 1, 25);
        prod4 := copy(QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING, 1, 25);
        valor2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
        cod2 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
        WHILE LENGTH(cod2) < 6 DO
          cod1 := '0' + cod2;
        EMP2 := ''; // qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.NEXT;
        qa := qa + 1;

        if qa <> i then
        begin

          prod5 := copy(QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING, 1, 25);
          prod6 := copy(QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING, 1, 25);
          valor3 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
            QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
          cod3 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
          WHILE LENGTH(cod3) < 6 DO
            cod3 := '0' + cod3;
          EMP3 := ''; // qrproduto.FIELDBYNAME('CODbarra').ASSTRING;
          QRPRODUTO.NEXT;
          qa := qa + 1;
        end;
      end;

      WRITELN(f, 'A2');
      WRITELN(f, 'D11');


      // WRITELN(F,'1A4202100150010'+cod1);
      // WRITELN(F,'111200000610010'+prod1);
      // WRITELN(F,'111200000480010'+prod2);
      // WRITELN(F,'121100000030065'+valor1);  // valor pequeno

      WRITELN(f, '1A4201100250010' + cod1);
      WRITELN(f, '111200000610010' + prod1);
      WRITELN(f, '111200000480010' + prod2);
      WRITELN(f, '191200200010066' + valor1); // valor grande
      WRITELN(f, '121100000070009' + EMP1);

      if prod3 <> '' then
      begin
        // WRITELN(F,'1A4202100150152'+cod2);
        // WRITELN(F,'111200000610152'+prod3);
        // WRITELN(F,'111200000480152'+prod4);
        // WRITELN(F,'121100000030207'+valor2);  // valor pequeno

        WRITELN(f, '1A4201100250152' + cod2);
        WRITELN(f, '111200000610152' + prod3);
        WRITELN(f, '111200000480152' + prod4);
        WRITELN(f, '191200200010208' + valor2); // valor grande
        WRITELN(f, '121100000070151' + EMP2);
      end;
      if prod5 <> '' then
      begin
        // WRITELN(F,'1A4202100150294'+cod3);
        // WRITELN(F,'111200000610294'+prod5);
        // WRITELN(F,'111200000480294'+prod6);
        // WRITELN(F,'121100000030349'+valor3);  // valor pequena

        WRITELN(f, '1A4201100250294' + cod3);
        WRITELN(f, '111200000610294' + prod5);
        WRITELN(f, '111200000480294' + prod6);
        WRITELN(f, '191200200010350' + valor3); // valor grande
        WRITELN(f, '121100000070293' + EMP3);
      end;

      // qa := qa + 1;
      WRITELN(f, '^' + xx);
      WRITELN(f, 'Q0001');
      WRITELN(f, 'E');
      if i <> qa then
      begin
        WRITELN(f, 'L');
      end;
    END;

    CLOSEFILE(f);

    application.ProcessMessages;

    ASSIGNFILE(txt, systemDrive + '\etiqueta.prn');
    reset(txt);
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    while not EOF(txt) do
    begin
      readln(txt, entrada);
      WRITELN(f, entrada);
    end;
    CLOSEFILE(txt);
    CLOSEFILE(f);
  end;

  if ComboBox1.ItemIndex = 4 then
  begin

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(f, systemDrive + '\etiqueta.prn');
    REWRITE(f);
    WRITELN(f, 'c0000');
    WRITELN(f, 'KI503');
    WRITELN(f, 'O0220');
    WRITELN(f, 'f220');
    WRITELN(f, 'KW0425');
    WRITELN(f, 'KI7');
    WRITELN(f, 'V0');
    WRITELN(f, 'L');
    WRITELN(f, 'H13');
    WRITELN(f, 'PC');

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING :=
          qretiq.FIELDBYNAME('localizacao').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;

    xx := frmPrincipal.zerarcodigo(inttostr(i), 2);
    qa := 0;
    QRPRODUTO.FIRST;
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      prod6 := '';
      valor1 := '';
      valor2 := '';
      valor3 := '';
      valor4 := '';
      valor5 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';
      prod1 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      WHILE LENGTH(prod1) > 25 DO
        Delete(prod1, 26, 1);
      prod2 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
      valor1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
      cod1 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
      WHILE LENGTH(cod1) < 6 DO
        cod1 := '0' + cod1;
      EMP1 := '';

      QRPRODUTO.NEXT;
      qa := qa + 1;

      if qa <> i then
      begin

        prod3 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
        WHILE LENGTH(prod3) > 25 DO
          Delete(prod3, 26, 1);
        prod4 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
        valor2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
        cod2 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
        WHILE LENGTH(cod2) < 6 DO
          cod1 := '0' + cod2;
        EMP2 := '';
        QRPRODUTO.NEXT;
        qa := qa + 1;
        if LENGTH(prod1) > 25 then
          Delete(prod2, 26, 1);

        if qa <> i then
        begin

          prod5 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
          WHILE LENGTH(prod5) > 25 DO
            Delete(prod5, 26, 1);
          prod6 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
          valor3 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
            QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
          cod3 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
          WHILE LENGTH(cod3) < 6 DO
            cod3 := '0' + cod3;
          EMP3 := '';
          QRPRODUTO.NEXT;
          qa := qa + 1;
        end;
      end;

      WRITELN(f, 'A2');
      WRITELN(f, 'D11');

      WRITELN(f, '1A4202100150010' + cod1);
      WRITELN(f, '111200000610010' + prod1);
      WRITELN(f, '111200000480010' + prod2);
      WRITELN(f, '121100000030065' + valor1);
      WRITELN(f, '121100000030009' + EMP1);

      if prod3 <> '' then
      begin
        WRITELN(f, '1A4202100150152' + cod2);
        WRITELN(f, '111200000610152' + prod3);
        WRITELN(f, '111200000480152' + prod4);
        WRITELN(f, '121100000030207' + valor2);
        WRITELN(f, '121100000030151' + EMP2);
      end;
      if prod5 <> '' then
      begin
        WRITELN(f, '1A4202100150294' + cod3);
        WRITELN(f, '111200000610294' + prod5);
        WRITELN(f, '111200000480294' + prod6);
        WRITELN(f, '121100000030349' + valor3);
        WRITELN(f, '121100000030293' + EMP3);
      end;

      // qa := qa + 1;
      WRITELN(f, '^' + xx);
      WRITELN(f, 'Q0001');
      WRITELN(f, 'E');
      if i <> qa then
      begin
        WRITELN(f, 'L');
      end;
    END;

    CLOSEFILE(f);

    application.ProcessMessages;

    ASSIGNFILE(txt, systemDrive + '\etiqueta.prn');
    reset(txt);
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    while not EOF(txt) do
    begin
      readln(txt, entrada);
      WRITELN(f, entrada);
    end;
    CLOSEFILE(txt);
    CLOSEFILE(f);
  end;

  if ComboBox1.ItemIndex = 2 then
  begin
    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING :=
          qretiq.FIELDBYNAME('LOCALIZACAO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('APLICACAO').ASSTRING :=
          qretiq.FIELDBYNAME('AUTO_APLICACAO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('FORNECEDOR').ASSTRING :=
          qretiq.FIELDBYNAME('FORNECEDOR').ASSTRING;
        QRPRODUTO.FIELDBYNAME('MARCA').ASSTRING :=
          qretiq.FIELDBYNAME('MARCA').ASSTRING;
        QRPRODUTO.FIELDBYNAME('COMPLEMENTO').ASSTRING :=
          qretiq.FIELDBYNAME('COMPLEMENTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('CODBARRA').ASSTRING :=
          qretiq.FIELDBYNAME('CODBARRA').ASSTRING;
        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    if ComboBox1.ItemIndex = 2 then
    begin
      fxproduto.LoadFromFile(ExtractFilePath(application.ExeName) +
        '\rel\f000077.fr3');
      fxproduto.SHOWREPORT;
    end;

  end;

  if ComboBox1.ItemIndex = 3 then
  begin
    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;
    qa := 0;
    QRPRODUTO.FIRST;
    ASSIGNFILE(arquivo, impressora_venda);
    REWRITE(arquivo);
    WRITELN(arquivo, #27 + #51);
    WRITELN(arquivo, '');
    WRITELN(arquivo, '');
    WRITELN(arquivo, '');
    WRITELN(arquivo, #27 + #50);
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      valor1 := '';
      valor2 := '';
      valor3 := '';
      valor4 := '';
      valor5 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';

      cod1 := QRPRODUTO.FIELDBYNAME('codigo').ASSTRING;
      prod1 := QRPRODUTO.FIELDBYNAME('produto').ASSTRING;
      valor1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
      EMP1 := emitente_fantasia;
      QRPRODUTO.NEXT;
      qa := qa + 1;
      if qa <> i then
      begin
        cod2 := QRPRODUTO.FIELDBYNAME('codigo').ASSTRING;
        prod2 := QRPRODUTO.FIELDBYNAME('produto').ASSTRING;
        valor2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
        EMP2 := emitente_fantasia;
        QRPRODUTO.NEXT;
        qa := qa + 1;
        if qa <> i then
        begin
          cod3 := QRPRODUTO.FIELDBYNAME('codigo').ASSTRING;
          prod3 := QRPRODUTO.FIELDBYNAME('produto').ASSTRING;
          valor3 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
            QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
          EMP3 := emitente_fantasia;
          QRPRODUTO.NEXT;
          qa := qa + 1;
          if qa <> i then
          begin
            cod4 := QRPRODUTO.FIELDBYNAME('codigo').ASSTRING;
            prod4 := QRPRODUTO.FIELDBYNAME('produto').ASSTRING;
            valor4 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
              QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
            EMP4 := emitente_fantasia;
            QRPRODUTO.NEXT;
            qa := qa + 1;
            if qa <> i then
            begin
              cod5 := QRPRODUTO.FIELDBYNAME('codigo').ASSTRING;
              prod5 := QRPRODUTO.FIELDBYNAME('produto').ASSTRING;
              valor5 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
                QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
              EMP5 := emitente_fantasia;
              qa := qa + 1;
              QRPRODUTO.NEXT;
            end;
          end;
        end;
      end;

      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(EMP1, 18, ' ', 'D') + '      ');
      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(EMP2, 18, ' ', 'D') + '      ');
      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(EMP3, 18, ' ', 'D') + '      ');
      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(EMP4, 18, ' ', 'D') + '      ');
      WRITELN(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(EMP5, 18, ' ', 'D'));

      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(prod1, 18, ' ', 'D') + '      ');
      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(prod2, 18, ' ', 'D') + '      ');
      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(prod3, 18, ' ', 'D') + '      ');
      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(prod4, 18, ' ', 'D') + '      ');
      WRITELN(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(prod5, 18, ' ', 'D'));

      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(cod1, 6, ' ', 'E') + ' ' +
        frmPrincipal.texto_justifica(valor1, 10, ' ', 'E') + '       ');
      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(cod2, 6, ' ', 'E') + ' ' +
        frmPrincipal.texto_justifica(valor2, 10, ' ', 'E') + '       ');
      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(cod3, 6, ' ', 'E') + ' ' +
        frmPrincipal.texto_justifica(valor3, 10, ' ', 'E') + '       ');
      write(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(cod4, 6, ' ', 'E') + ' ' +
        frmPrincipal.texto_justifica(valor4, 10, ' ', 'E') + '       ');
      WRITELN(arquivo, #27#77 + #15 + #27#72 + #20,
        frmPrincipal.texto_justifica(cod5, 6, ' ', 'E') + ' ' +
        frmPrincipal.texto_justifica(valor5, 10, ' ', 'E'));

      WRITELN(arquivo, '');
    end;
    CLOSEFILE(arquivo);
  end;

  if ComboBox1.ItemIndex = 7 then
  begin

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(f, systemDrive + '\etiqueta.prn');
    REWRITE(f);
    WRITELN(f, 'c0000');
    WRITELN(f, 'KI503');
    WRITELN(f, 'O0220');
    WRITELN(f, 'f220');
    WRITELN(f, 'KW0425');
    WRITELN(f, 'KI7');
    WRITELN(f, 'V0');
    WRITELN(f, 'L');
    WRITELN(f, 'H13');
    WRITELN(f, 'PC');

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING :=
          qretiq.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING :=
          qretiq.FIELDBYNAME('tamanho').ASSTRING;
        QRPRODUTO.FIELDBYNAME('complemento').ASSTRING :=
          qretiq.FIELDBYNAME('texto').ASSTRING;
        QRPRODUTO.FIELDBYNAME('marca').ASSTRING :=
          qretiq.FIELDBYNAME('marca').ASSTRING;
        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;

    xx := frmPrincipal.zerarcodigo(inttostr(i), 2);
    qa := 0;
    QRPRODUTO.FIRST;
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      prod6 := '';
      valor1 := '';
      valor2 := '';
      valor3 := '';
      valor4 := '';
      valor5 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';
      prod1 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      WHILE LENGTH(prod1) > 25 DO
        Delete(prod1, 26, 1);
      prod2 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
      valor1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
      cod1 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
      WHILE LENGTH(cod1) < 6 DO
        cod1 := '0' + cod1;
      EMP1 := QRPRODUTO.FIELDBYNAME('complemento').ASSTRING;

      QRPRODUTO.NEXT;
      qa := qa + 1;

      if qa <> i then
      begin

        prod3 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
        WHILE LENGTH(prod3) > 25 DO
          Delete(prod3, 26, 1);
        prod4 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
        valor2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
        cod2 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
        WHILE LENGTH(cod2) < 6 DO
          cod1 := '0' + cod2;
        EMP2 := QRPRODUTO.FIELDBYNAME('complemento').ASSTRING;
        QRPRODUTO.NEXT;
        qa := qa + 1;
        if LENGTH(prod1) > 25 then
          Delete(prod2, 26, 1);

        if qa <> i then
        begin

          prod5 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
          WHILE LENGTH(prod5) > 25 DO
            Delete(prod5, 26, 1);
          prod6 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
          valor3 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
            QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
          cod3 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
          WHILE LENGTH(cod3) < 6 DO
            cod3 := '0' + cod3;
          EMP3 := QRPRODUTO.FIELDBYNAME('complemento').ASSTRING;
          QRPRODUTO.NEXT;
          qa := qa + 1;
        end;
      end;

      {

        WRITELN(F,'A2');
        WRITELN(F,'D11');

        WRITELN(F,'1a4202000130016'+cod1);
        WRITELN(F,'191100100660010'+'Cod: '+prod2);
        WRITELN(F,'191100400340016'+valor1);
        WRITELN(F,'121100000020026'+emitente_fantasia);
        WRITELN(F,'191100100660085'+'Tam: '+emp1);
        WRITELN(F,'191100100540010'+prod1);

        if prod3 <> '' then
        begin
        WRITELN(F,'1a4202000130158'+cod2);
        WRITELN(F,'191100100660152'+'Cod: '+prod4);
        WRITELN(F,'191100400340158'+valor2);
        WRITELN(F,'121100000020168'+emitente_fantasia);
        WRITELN(F,'191100100660227'+'Tam: '+emp2);
        WRITELN(F,'191100100540152'+prod3);
        end;
        if prod5 <> '' then
        begin
        WRITELN(F,'1a4202000130300'+cod3);
        WRITELN(F,'191100100660294'+'Cod: '+prod6);
        WRITELN(F,'191100400340300'+valor3);
        WRITELN(F,'121100000020310'+emitente_fantasia);
        WRITELN(F,'191100100660369'+'Tam: '+emp3);
        WRITELN(F,'191100100540294'+prod5);
        end;

      }

      WRITELN(f, 'A2');
      WRITELN(f, 'D11');

      WRITELN(f, '1a4202000120016' + cod1);
      WRITELN(f, '191100200640010' + 'Cod: ' + prod2);
      WRITELN(f, '191100400330012' + valor1);
      WRITELN(f, '121100000010026' + emitente_fantasia);
      WRITELN(f, '191100100650085' + 'Tam: ' + EMP1);
      WRITELN(f, '191100100530010' + prod1);
      WRITELN(f, '191100100370095' + 'A Vista');

      if prod3 <> '' then
      begin
        WRITELN(f, '1a4202000120158' + cod2);
        WRITELN(f, '191100200640152' + 'Cod: ' + prod4);
        WRITELN(f, '191100400330154' + valor2);
        WRITELN(f, '121100000010168' + emitente_fantasia);
        WRITELN(f, '191100100650227' + 'Tam: ' + EMP2);
        WRITELN(f, '191100100530152' + prod3);
        WRITELN(f, '191100100370237' + 'A Vista');

      end;
      if prod5 <> '' then
      begin
        WRITELN(f, '1a4202000120300' + cod3);
        WRITELN(f, '191100200640294' + 'Cod: ' + prod6);
        WRITELN(f, '191100400330296' + valor3);
        WRITELN(f, '121100000010310' + emitente_fantasia);
        WRITELN(f, '191100100650369' + 'Tam: ' + EMP3);
        WRITELN(f, '191100100530294' + prod5);
        WRITELN(f, '191100100370379' + 'A Vista');
      end;

      // qa := qa + 1;
      WRITELN(f, '^' + xx);
      WRITELN(f, 'Q0001');
      WRITELN(f, 'E');
      if i <> qa then
      begin
        WRITELN(f, 'L');
      end;
    END;

    CLOSEFILE(f);

    application.ProcessMessages;

    ASSIGNFILE(txt, systemDrive + '\etiqueta.prn');
    reset(txt);
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    while not EOF(txt) do
    begin
      readln(txt, entrada);
      WRITELN(f, entrada);
    end;
    CLOSEFILE(txt);
    CLOSEFILE(f);
  end;

  // ETIQUETA PEQUENA BIBAL

  if ComboBox1.ItemIndex = 10 then
  begin

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(f, systemDrive + '\etiqueta.prn');
    REWRITE(f);
    WRITELN(f, 'c0000');
    WRITELN(f, 'KI503');
    WRITELN(f, 'O0220');
    WRITELN(f, 'f220');
    WRITELN(f, 'KW0425');
    WRITELN(f, 'KI7');
    WRITELN(f, 'V0');
    WRITELN(f, 'L');
    WRITELN(f, 'H13');
    WRITELN(f, 'PC');

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING :=
          qretiq.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING :=
          qretiq.FIELDBYNAME('LOCALIZACAO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA').ASSTRING :=
          qretiq.FIELDBYNAME('ULTIMA_COMPRA').ASSTRING;
        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;

    xx := frmPrincipal.zerarcodigo(inttostr(i), 2);
    qa := 0;
    QRPRODUTO.FIRST;
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      cod6 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      prod6 := '';
      valor1 := '';
      valor2 := '';
      valor3 := '';
      valor4 := '';
      valor5 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';
      EMP6 := '';
      prod1 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      prod2 := '';
      if LENGTH(prod1) > 25 then
      begin
        prod2 := copy(prod1, 26, 26);
        Delete(prod1, 26, 100);
      end;
      valor1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
      cod1 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
      WHILE LENGTH(cod1) < 6 DO
        cod1 := '0' + cod1;
      EMP1 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
      EMP4 := QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING;
      DAT1 := copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),
        7, 4) + copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA')
        .AsDateTime), 4, 2) +
        copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA')
        .AsDateTime), 1, 2);
      QRPRODUTO.NEXT;
      qa := qa + 1;

      if qa <> i then
      begin
        prod3 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
        prod4 := '';
        if LENGTH(prod3) > 25 then
        begin
          prod4 := copy(prod3, 26, 26);
          Delete(prod3, 26, 100);
        end;
        valor2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
        cod2 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
        WHILE LENGTH(cod2) < 6 DO
          cod1 := '0' + cod2;
        EMP2 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
        EMP5 := QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING;
        DAT2 := copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA')
          .AsDateTime), 7, 4) +
          copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime), 4,
          2) + copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA')
          .AsDateTime), 1, 2);

        QRPRODUTO.NEXT;
        qa := qa + 1;

        if qa <> i then
        begin

          prod5 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
          prod6 := '';
          if LENGTH(prod5) > 25 then
          begin
            prod6 := copy(prod5, 26, 26);
            Delete(prod5, 26, 100);
          end;
          valor3 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
            QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
          cod3 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
          WHILE LENGTH(cod3) < 6 DO
            cod3 := '0' + cod3;
          EMP3 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
          EMP6 := QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING;
          DAT3 := copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA')
            .AsDateTime), 7, 4) +
            copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),
            4, 2) + copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA')
            .AsDateTime), 1, 2);

          QRPRODUTO.NEXT;
          qa := qa + 1;
        end;
      end;

      WRITELN(f, 'A2');
      WRITELN(f, 'D11');

      WRITELN(f, '1A4202000180033' + cod1);
      WRITELN(f, '191100100650023' + prod1);
      WRITELN(f, '191100200010089' + valor1);
      // WRITELN(F,'111100000030024'+'COD:'+EMP1);
      WRITELN(f, '111100000030024' + EMP1);
      WRITELN(f, '191100100540023' + EMP4);
      WRITELN(f, '191100100540102' + DAT1);

      if prod3 <> '' then

      begin
        WRITELN(f, '1A4202000180172' + cod2);
        WRITELN(f, '191100100650162' + prod3);
        WRITELN(f, '191100200010228' + valor2);
        // WRITELN(F,'111100000030163'+'COD:'+EMP2);
        WRITELN(f, '111100000030163' + EMP2);
        WRITELN(f, '191100100540162' + EMP5);
        WRITELN(f, '191100100540241' + DAT2);
      end;
      if prod5 <> '' then

      begin
        WRITELN(f, '1A4202000180311' + cod3);
        WRITELN(f, '191100100650301' + prod5);
        WRITELN(f, '191100200010367' + valor3);
        // WRITELN(F,'111100000030302'+'COD:'+EMP3);
        WRITELN(f, '111100000030302' + EMP3);
        WRITELN(f, '191100100540301' + EMP6);
        WRITELN(f, '191100100540380' + DAT3);
      end;

      // qa := qa + 1;
      WRITELN(f, '^' + xx);
      WRITELN(f, 'Q0001');
      WRITELN(f, 'E');
      if i <> qa then
      begin
        WRITELN(f, 'L');
      end;
    END;

    CLOSEFILE(f);

    application.ProcessMessages;

    ASSIGNFILE(txt, systemDrive + '\etiqueta.prn');
    reset(txt);
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    while not EOF(txt) do
    begin
      readln(txt, entrada);
      WRITELN(f, entrada);
    end;
    CLOSEFILE(txt);
    CLOSEFILE(f);
  end;


  // ETIQUETA GRANDE BIBAL

  if ComboBox1.ItemIndex = 11 then
  begin

    frmmodulo.qremitente.open;

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(f, systemDrive + '\etiqueta.prn');
    REWRITE(f);
    WRITELN(f, 'c0000');
    WRITELN(f, 'KI503');
    WRITELN(f, 'O0220');
    WRITELN(f, 'f220');
    WRITELN(f, 'KW0343');
    WRITELN(f, 'KI7');
    WRITELN(f, 'V0');
    WRITELN(f, 'L');
    WRITELN(f, 'H13');
    WRITELN(f, 'PC');

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING :=
          qretiq.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRECO').ASFLOAT :=
          qretiq.FIELDBYNAME('VALOR').ASFLOAT;
        QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING :=
          qretiq.FIELDBYNAME('LOCALIZACAO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA').ASSTRING :=
          qretiq.FIELDBYNAME('ULTIMA_COMPRA').ASSTRING;

        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;

    xx := frmPrincipal.zerarcodigo(inttostr(i), 2);
    qa := 0;
    QRPRODUTO.FIRST;
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      prod6 := '';
      valor1 := '';
      valor2 := '';
      valor3 := '';
      valor4 := '';
      valor5 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';

      prod1 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      prod2 := '';
      if LENGTH(prod1) > 24 then
      begin
        prod2 := copy(prod1, 25, 26);
        Delete(prod1, 25, 100);
      end;

      avista1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT -
        (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT * 0.10)));
      valor1 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
        QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
      cod1 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
      WHILE LENGTH(cod1) < 6 DO
        cod1 := '0' + cod1;
      EMP1 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
      EMP3 := QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING;
      DAT1 := copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime),
        7, 4) + copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA')
        .AsDateTime), 4, 2) +
        copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA')
        .AsDateTime), 1, 2);

      QRPRODUTO.NEXT;
      qa := qa + 1;

      if qa <> i then
      begin
        prod3 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
        prod4 := '';
        if LENGTH(prod3) > 24 then
        begin
          prod4 := copy(prod3, 25, 26);
          Delete(prod3, 25, 100);
        end;

        avista2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT -
          (QRPRODUTO.FIELDBYNAME('preco').ASFLOAT * 0.10)));

        valor2 := 'R$ ' + FORMATFLOAT('###,###,##0.00',
          QRPRODUTO.FIELDBYNAME('preco').ASFLOAT);
        cod2 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
        WHILE LENGTH(cod1) < 6 DO
          cod1 := '0' + cod1;
        EMP2 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
        EMP4 := QRPRODUTO.FIELDBYNAME('LOCALIZACAO').ASSTRING;
        DAT2 := copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA')
          .AsDateTime), 7, 4) +
          copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime), 4,
          2) + copy(DateToStr(QRPRODUTO.FIELDBYNAME('ULTIMA_COMPRA')
          .AsDateTime), 1, 2);

        QRPRODUTO.NEXT;
        qa := qa + 1;
      end;

      WRITELN(f, 'A2');
      WRITELN(f, 'D11');

      WRITELN(f, '131100001860061' + emitente_fantasia);
      WRITELN(f, '121100001700012' + prod1);
      WRITELN(f, '191100001360011' + EMP3);
      WRITELN(f, '1A4203400850028' + cod1);
      WRITELN(f, '111200000290015' + 'CODIGO:' + cod1);
      WRITELN(f, '121200000050098' + valor1);
      WRITELN(f, '121100001580012' + prod2);
      WRITELN(f, '191100001360111' + DAT1);
      WRITELN(f, '192100000680084' + valor1);

      if prod4 <> '' then
      begin
        WRITELN(f, '131100001860226' + emitente_fantasia);
        WRITELN(f, '121100001700177' + prod3);
        WRITELN(f, '191100001360176' + EMP4);
        WRITELN(f, '1A4203400850193' + cod2);
        WRITELN(f, '111200000290180' + 'CODIGO:' + cod2);
        WRITELN(f, '121200000050263' + valor2);
        WRITELN(f, '121100001580177' + prod4);
        WRITELN(f, '191100001360276' + DAT2);
        WRITELN(f, '192100000680249' + valor2);
      end;

      WRITELN(f, '^' + xx);
      WRITELN(f, 'Q0001');
      WRITELN(f, 'E');
      if i <> qa then
      begin
        WRITELN(f, 'L');
      end;
    END;

    CLOSEFILE(f);

    application.ProcessMessages;

    ASSIGNFILE(txt, systemDrive + '\etiqueta.prn');
    reset(txt);
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    while not EOF(txt) do
    begin
      readln(txt, entrada);
      WRITELN(f, entrada);
    end;
    CLOSEFILE(txt);
    CLOSEFILE(f);
  end;


  // ETIQUETA DE GONDOLA DE SUPERMERCADO

  if ComboBox1.ItemIndex = 12 then
  // 2 - Bobina | 11,10 cm x 3,40 cm | 01 Fileira
  begin
    xx := frmPrincipal.zerarcodigo(qretiq.FIELDBYNAME('qtde').ASSTRING, 2);
    qretiq.Refresh;
    qretiq.FIRST;
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    WHILE NOT qretiq.EOF DO
    BEGIN
      WRITELN(f, 'c0000');
      WRITELN(f, 'KI503');
      WRITELN(f, 'O0220');
      WRITELN(f, 'f220');
      WRITELN(f, 'KW0409'); // KW0425
      WRITELN(f, 'KI7');
      WRITELN(f, 'V0');
      WRITELN(f, 'L');
      WRITELN(f, 'H12');
      WRITELN(f, 'PC');
      WRITELN(f, 'A2');
      WRITELN(f, 'D11');
      entrada := copy(qretiq.FIELDBYNAME('codbarra').ASSTRING, 1, 12);
      while LENGTH(entrada) < 12 DO
        entrada := '0' + entrada;
      WRITELN(f, '1F3303000310209' + entrada);
      WRITELN(f, '222100001150376' + qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING);
      WRITELN(f, '122100000100015' + trim(emitente_fantasia));
      WRITELN(f, '121100000100328' + DateToStr(DATE));
      WRITELN(f, '192300400240013R$' + FORMATFLOAT('###,###,##0.00',
        qretiq.FIELDBYNAME('VALOR').ASFLOAT));
      WRITELN(f, '131200000830040' + copy(qretiq.FIELDBYNAME('PRODUTO')
        .ASSTRING, 1, 30));
      xx := qretiq.FIELDBYNAME('qtde').ASSTRING;
      while LENGTH(xx) < 4 do
        xx := '0' + xx;
      WRITELN(f, '^' + qretiq.FIELDBYNAME('qtde').ASSTRING);
      WRITELN(f, 'Q' + xx);
      WRITELN(f, 'E');
      qretiq.NEXT;
    END;
    CLOSEFILE(f);
  end;

  if ComboBox1.ItemIndex = 15 then // tamanho e referencia
  begin

    application.ProcessMessages;
    qa := qretiq.recordcount;
    ASSIGNFILE(f, systemDrive + '\etiqueta.prn');
    REWRITE(f);
    WRITELN(f, 'c0000');
    WRITELN(f, 'KI503');
    WRITELN(f, 'O0220');
    WRITELN(f, 'f220');
    WRITELN(f, 'KW0425');
    WRITELN(f, 'KI7');
    WRITELN(f, 'V0');
    WRITELN(f, 'L');
    WRITELN(f, 'H13');
    WRITELN(f, 'PC');

    // KW0433

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('DELETE FROM CL00007');
    QRPRODUTO.ExecSQL;

    QRPRODUTO.close;
    QRPRODUTO.SQL.clear;
    QRPRODUTO.SQL.add('SELECT * FROM CL00007');
    QRPRODUTO.open;

    qretiq.FIRST;
    WHILE NOT qretiq.EOF DO
    BEGIN
      FOR i := 1 TO qretiq.FIELDBYNAME('QTDE').ASINTEGER DO
      BEGIN
        QRPRODUTO.INSERT;
        QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING :=
          qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING :=
          qretiq.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING :=
          qretiq.FIELDBYNAME('PRODUTO').ASSTRING;
        QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING :=
          qretiq.FIELDBYNAME('tamanho').ASSTRING;
        QRPRODUTO.POST;
      END;
      qretiq.NEXT;
    END;
    QRPRODUTO.Refresh;
    i := QRPRODUTO.recordcount;

    xx := frmPrincipal.zerarcodigo(inttostr(i), 2);
    qa := 0;
    QRPRODUTO.FIRST;
    while not QRPRODUTO.EOF do
    begin
      cod1 := '';
      cod2 := '';
      cod3 := '';
      cod4 := '';
      cod5 := '';
      prod1 := '';
      prod2 := '';
      prod3 := '';
      prod4 := '';
      prod5 := '';
      prod6 := '';
      TAM1 := '';
      TAM2 := '';
      TAM3 := '';
      EMP1 := '';
      EMP2 := '';
      EMP3 := '';
      EMP4 := '';
      EMP5 := '';
      prod1 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
      prod2 := '';
      if LENGTH(prod1) > 25 then
      begin
        prod2 := copy(prod1, 26, 26);
        Delete(prod1, 26, 100);
      end;
      TAM1 := QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING;
      cod1 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
      WHILE LENGTH(cod1) < 6 DO
        cod1 := '0' + cod1;
      EMP1 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
      QRPRODUTO.NEXT;
      qa := qa + 1;

      if qa <> i then
      begin
        prod3 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
        prod4 := '';
        if LENGTH(prod3) > 25 then
        begin
          prod4 := copy(prod3, 26, 26);
          Delete(prod3, 26, 100);
        end;
        TAM2 := QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING;
        cod2 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
        WHILE LENGTH(cod2) < 6 DO
          cod1 := '0' + cod2;
        EMP2 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
        QRPRODUTO.NEXT;
        qa := qa + 1;

        if qa <> i then
        begin

          prod5 := QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
          prod6 := '';
          if LENGTH(prod5) > 25 then
          begin
            prod6 := copy(prod5, 26, 26);
            Delete(prod5, 26, 100);
          end;
          TAM3 := QRPRODUTO.FIELDBYNAME('aplicacao').ASSTRING;
          cod3 := QRPRODUTO.FIELDBYNAME('CODigo').ASSTRING;
          WHILE LENGTH(cod3) < 6 DO
            cod3 := '0' + cod3;
          EMP3 := QRPRODUTO.FIELDBYNAME('CODbarra').ASSTRING;
          QRPRODUTO.NEXT;
          qa := qa + 1;
        end;
      end;

      WRITELN(f, 'A2');
      WRITELN(f, 'D11');

      WRITELN(f, '1A4202000000018' + cod1);
      WRITELN(f, '121100000560018' + 'REF:');
      WRITELN(f, '121100000370017' + 'TAM:');
      WRITELN(f, '141100000520043' + EMP1);
      WRITELN(f, '191100400310042' + TAM1);

      if prod3 <> '' then
      begin
        WRITELN(f, '1A4202000000159' + cod2);
        WRITELN(f, '121100000560159' + 'REF:');
        WRITELN(f, '121100000370158' + 'TAM:');
        WRITELN(f, '141100000520184' + EMP2);
        WRITELN(f, '191100400310183' + TAM2);
      end;
      if prod5 <> '' then
      begin
        WRITELN(f, '1A4202000000300' + cod3);
        WRITELN(f, '121100000560300' + 'REF:');
        WRITELN(f, '121100000370299' + 'TAM:');
        WRITELN(f, '141100000520325' + EMP3);
        WRITELN(f, '191100400310324' + TAM3);
      end;

      // qa := qa + 1;
      WRITELN(f, '^' + xx);
      WRITELN(f, 'Q0001');
      WRITELN(f, 'E');
      if i <> qa then
      begin
        WRITELN(f, 'L');
      end;
    END;

    CLOSEFILE(f);

    application.ProcessMessages;

    ASSIGNFILE(txt, systemDrive + '\etiqueta.prn');
    reset(txt);
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    while not EOF(txt) do
    begin
      readln(txt, entrada);
      WRITELN(f, entrada);
    end;
    CLOSEFILE(txt);
    CLOSEFILE(f);
  end;

  if ComboBox1.ItemIndex = 14 then // 18 Gondola
  begin
    xx := frmPrincipal.zerarcodigo(qretiq.FIELDBYNAME('qtde').ASSTRING, 2);
    qretiq.Refresh;
    qretiq.FIRST;
    ASSIGNFILE(f, impressora_venda);
    REWRITE(f);
    WHILE NOT qretiq.EOF DO
    BEGIN
      WRITELN(f, 'c0000');
      WRITELN(f, 'KI503');
      WRITELN(f, 'O0220');
      WRITELN(f, 'f220');
      WRITELN(f, 'KW0327');
      WRITELN(f, 'KI7');
      WRITELN(f, 'V0');
      WRITELN(f, 'L');
      WRITELN(f, 'H12');
      WRITELN(f, 'PC');
      WRITELN(f, 'A2');
      WRITELN(f, 'D11');
      WRITELN(f, '131100000970009' + qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING +
        ' ' + copy(qretiq.FIELDBYNAME('PRODUTO').ASSTRING, 1, 30));
      WRITELN(f, '124500000350067R$ ' + FORMATFLOAT('###,###,##0.00',
        qretiq.FIELDBYNAME('VALOR').ASFLOAT));
      WRITELN(f, '131100000070111' + qretiq.FIELDBYNAME('codbarra').ASSTRING);
      xx := qretiq.FIELDBYNAME('qtde').ASSTRING;
      while LENGTH(xx) < 4 do
        xx := '0' + xx;
      WRITELN(f, '^' + qretiq.FIELDBYNAME('qtde').ASSTRING);
      WRITELN(f, 'Q' + xx);
      WRITELN(f, 'E');
      qretiq.NEXT;
    END;
    CLOSEFILE(f);
  end;

  pimprimir.visible := false;
  frmPrincipal.logUC('Imprimiu Etiquetas', 0);
end;

procedure Tfrmetiquetador.ComboBox1Enter(Sender: TObject);
begin
  ComboBox1.Color := $00A0FAF8;
end;

procedure Tfrmetiquetador.combo_impressoraEnter(Sender: TObject);
begin
  combo_impressora.Color := $00A0FAF8;
end;

procedure Tfrmetiquetador.ComboBox1Exit(Sender: TObject);
begin

  ComboBox1.Color := clwindow;

end;

procedure Tfrmetiquetador.combo_impressoraExit(Sender: TObject);
begin
  combo_impressora.Color := clwindow;
end;

procedure Tfrmetiquetador.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmetiquetador.eprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmetiquetador.eqtdeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmetiquetador.eqtdeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmetiquetador.eprodutoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmetiquetador.COMBOCODIGOExit(Sender: TObject);
begin

  IF frmmodulo.QRPRODUTO.LOCATE('CODBARRA', COMBOCODIGO.Text,
    [loCaseInsensitive]) THEN
  BEGIN
    qretiq.FIELDBYNAME('PRODUTO').ASSTRING := frmmodulo.QRPRODUTO.FIELDBYNAME
      ('PRODUTO').ASSTRING;
    qretiq.FIELDBYNAME('VALOR').ASFLOAT := frmmodulo.QRPRODUTO.FIELDBYNAME
      ('PRECOVENDA').ASFLOAT;
    qretiq.FIELDBYNAME('CODBARRA').ASSTRING := frmmodulo.QRPRODUTO.FIELDBYNAME
      ('CODBARRA').ASSTRING;
    qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING := frmmodulo.QRPRODUTO.FIELDBYNAME
      ('CODIGO').ASSTRING;
    qretiq.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime :=
      frmmodulo.QRPRODUTO.FIELDBYNAME('DATA_ULTIMACOMPRA').AsDateTime;

    qretiq.FIELDBYNAME('QTDE').ASINTEGER := 1;

    if frmmodulo.QRPRODUTO.FIELDBYNAME('usa_grade').ASINTEGER = 1 then
    begin
      qrgrade.close;
      qrgrade.SQL.clear;
      qrgrade.SQL.add('select * from c000021 where codproduto = ''' +
        frmmodulo.QRPRODUTO.FIELDBYNAME('codigo').ASSTRING +
        ''' order by codigo');
      qrgrade.open;
      if qrgrade.recordcount > 0 then
      begin
        frmetiqueta_grade := tfrmetiqueta_grade.create(self);
        frmetiqueta_grade.showmODal;
        if resultado_pesquisa1 <> '' then
        begin
          qretiq.FIELDBYNAME('tamanho').ASSTRING := resultado_pesquisa1;
          qretiq.FIELDBYNAME('CODBARRA').ASSTRING := resultado_pesquisa2;
        end;
      end;

    end;

  END
  ELSE
  BEGIN
    qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING :=
      frmPrincipal.zerarcodigo(COMBOCODIGO.Text, 6);
    IF COMBOCODIGO.Text <> '000000' THEN
    BEGIN
      IF frmmodulo.QRPRODUTO.LOCATE('CODIGO', COMBOCODIGO.Text,
        [loCaseInsensitive]) THEN
      BEGIN
        qretiq.FIELDBYNAME('PRODUTO').ASSTRING :=
          frmmodulo.QRPRODUTO.FIELDBYNAME('PRODUTO').ASSTRING;
        qretiq.FIELDBYNAME('VALOR').ASFLOAT := frmmodulo.QRPRODUTO.FIELDBYNAME
          ('PRECOVENDA').ASFLOAT;
        qretiq.FIELDBYNAME('QTDE').ASINTEGER := 1;
        qretiq.FIELDBYNAME('CODBARRA').ASSTRING :=
          frmmodulo.QRPRODUTO.FIELDBYNAME('CODBARRA').ASSTRING;
        qretiq.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime :=
          frmmodulo.QRPRODUTO.FIELDBYNAME('DATA_ULTIMACOMPRA').AsDateTime;

        if frmmodulo.QRPRODUTO.FIELDBYNAME('usa_grade').ASINTEGER = 1 then
        begin
          qrgrade.close;
          qrgrade.SQL.clear;
          qrgrade.SQL.add('select * from c000021 where codproduto = ''' +
            frmmodulo.QRPRODUTO.FIELDBYNAME('codigo').ASSTRING +
            ''' order by codigo');
          qrgrade.open;
          if qrgrade.recordcount > 0 then
          begin
            frmetiqueta_grade := tfrmetiqueta_grade.create(self);
            frmetiqueta_grade.showmODal;
            if resultado_pesquisa1 <> '' then
            begin
              qretiq.FIELDBYNAME('tamanho').ASSTRING := resultado_pesquisa1;
              qretiq.FIELDBYNAME('CODBARRA').ASSTRING := resultado_pesquisa2;
            end;
          end;

        end;

      END;
    END;
  END;

  qretiq.FIELDBYNAME('TEXTO').ASSTRING := '3';

end;

procedure Tfrmetiquetador.COMBOPRODUTOExit(Sender: TObject);
begin
  IF COMBOPRODUTO.Text <> '' THEN
  BEGIN
    IF frmmodulo.QRPRODUTO.LOCATE('PRODUTO', COMBOPRODUTO.Text,
      [loPartialKey]) THEN
    BEGIN
      qretiq.FIELDBYNAME('CODPRODUTO').ASSTRING :=
        frmmodulo.QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING;
      qretiq.FIELDBYNAME('CODBARRA').ASSTRING := frmmodulo.QRPRODUTO.FIELDBYNAME
        ('CODBARRA').ASSTRING;
      qretiq.FIELDBYNAME('VALOR').ASFLOAT := frmmodulo.QRPRODUTO.FIELDBYNAME
        ('PRECOVENDA').ASFLOAT;
      qretiq.FIELDBYNAME('QTDE').ASINTEGER := 1;
      qretiq.FIELDBYNAME('ULTIMA_COMPRA').AsDateTime :=
        frmmodulo.QRPRODUTO.FIELDBYNAME('DATA_ULTIMACOMPRA').AsDateTime;

      IF frmmodulo.QRPRODUTO.FIELDBYNAME('PRECOVENDA').ASFLOAT > 0 THEN
        qretiq.FIELDBYNAME('TEXTO').ASSTRING := '3';

      if frmmodulo.QRPRODUTO.FIELDBYNAME('usa_grade').ASINTEGER = 1 then
      begin
        qrgrade.close;
        qrgrade.SQL.clear;
        qrgrade.SQL.add('select * from c000021 where codproduto = ''' +
          frmmodulo.QRPRODUTO.FIELDBYNAME('codigo').ASSTRING +
          ''' order by codigo');
        qrgrade.open;
        if qrgrade.recordcount > 0 then
        begin
          frmetiqueta_grade := tfrmetiqueta_grade.create(self);
          frmetiqueta_grade.showmODal;
          if resultado_pesquisa1 <> '' then
          begin
            qretiq.FIELDBYNAME('tamanho').ASSTRING := resultado_pesquisa1;
            qretiq.FIELDBYNAME('CODBARRA').ASSTRING := resultado_pesquisa2;
          end;
        end;

      end;

    END;
  END;
end;

procedure Tfrmetiquetador.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmetiquetador.ComboBox1Change(Sender: TObject);
begin

  if ComboBox1.ItemIndex = 6 then
  begin
    pdesconto.visible := true;
    pdesconto.Top := 291;
    pdesconto.Left := 174;

    frmmodulo.qrconfig.open;
    edesconto.Value := frmmodulo.qrconfig.FIELDBYNAME
      ('DESCONTO_PRODUTO').ASFLOAT;
    vetq_07 := frmmodulo.qrconfigETIQUETA_07.ASINTEGER;
    vetq_07_1 := frmmodulo.qrconfigETIQUETA_07_1.ASINTEGER;
    vetq_07_2 := frmmodulo.qrconfigETIQUETA_07_2.ASINTEGER;

  end
  else
    pdesconto.visible := false;

  CASE ComboBox1.ItemIndex OF
    0:
      BEGIN
        combo_impressora.ItemIndex := 0;
        BitBtn1.visible := false;
      END;
    1:
      BEGIN
        combo_impressora.ItemIndex := 0;
        BitBtn1.visible := false;
      END;
    2:
      BEGIN
        combo_impressora.ItemIndex := 2;
        BitBtn1.visible := true;
      END;
    3:
      BEGIN
        combo_impressora.ItemIndex := 2;
        BitBtn1.visible := true;
      END;
    4:
      BEGIN
        combo_impressora.ItemIndex := 0;
        BitBtn1.visible := false;
      END;
  end;

end;

procedure Tfrmetiquetador.BitBtn1Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 2 then
  begin
    fxproduto.LoadFromFile(ExtractFilePath(application.ExeName) +
      '\rel\f000077.fr3');
    fxproduto.DESIGNREPORT;
  end;
end;

procedure Tfrmetiquetador.BitBtn2Click(Sender: TObject);
begin
  FRMXLOC_PRODUTO_ENTRADA := TFRMXLOC_PRODUTO_ENTRADA.create(self);
  FRMXLOC_PRODUTO_ENTRADA.showmODal;

  IF resultado_pesquisa1 <> '' THEN
  BEGIN
    qretiq.close;
    qretiq.SQL.clear;
    qretiq.SQL.add('delete from cl00005');
    qretiq.ExecSQL;
    qretiq.SQL.clear;
    qretiq.SQL.add('select * from cl00005');
    qretiq.open;

    query.close;
    query.SQL.clear;
    query.SQL.add
      ('select e.codproduto,e.qtde,p.produto,p.precovenda,p.unidade from ');
    query.SQL.add('c000088 e,c000025 p where e.notafiscal = ''' +
      resultado_pesquisa1 + ''' and');
    query.SQL.add('e.codproduto = p.codigo order by e.notafiscal');
    query.open;

    if query.recordcount = 0 then
    begin
      application.messagebox
        ('Item(s) da Nota Fiscal Não Encontrado, Verifique!', 'Atenção!',
        mb_ok + mb_iconwarning);
      wwDBGrid1.setfocus;
      exit;
    end;

    Pimport.visible := true;
    bar.Position := 0;

    bar.Max := query.recordcount;
    query.FIRST;
    application.ProcessMessages;
    while not query.EOF do
    begin
      qretiq.INSERT;
      qretiq.FIELDBYNAME('codproduto').ASSTRING :=
        query.FIELDBYNAME('codproduto').ASSTRING;
      qretiq.FIELDBYNAME('produto').ASSTRING :=
        query.FIELDBYNAME('produto').ASSTRING;

      IF frmmodulo.qrconfig.FIELDBYNAME('RAMO_ATIVIDADE').ASINTEGER = 2 then
      begin
        if importa_quantidade_nota = 2 then
          qretiq.FIELDBYNAME('qtde').ASFLOAT := 1
        else
          qretiq.FIELDBYNAME('qtde').ASFLOAT :=
            query.FIELDBYNAME('qtde').ASFLOAT;
      end
      else
      begin
        qretiq.FIELDBYNAME('qtde').ASFLOAT := query.FIELDBYNAME('qtde').ASFLOAT;
      end;

      qretiq.FIELDBYNAME('valor').ASFLOAT :=
        query.FIELDBYNAME('precovenda').ASFLOAT;
      qretiq.FIELDBYNAME('unidade').ASSTRING :=
        query.FIELDBYNAME('unidade').ASSTRING;
      qretiq.FIELDBYNAME('TEXTO').ASSTRING := '3';
      qretiq.POST;
      query.NEXT;
      bar.Position := bar.Position + 1;
      application.ProcessMessages;
    end;
    Pimport.visible := false;
    wwDBGrid1.setfocus;
  END;

end;

procedure Tfrmetiquetador.QRPRODUTOCalcFields(DataSet: TDataSet);
VAR
  i: Integer;
  CODIG, LETRA: STRING;
begin
  i := LENGTH(FORMATFLOAT('########0.00', QRPRODUTO.FIELDBYNAME('precocusto')
    .ASFLOAT));
  CODIG := '';
  while i <> 0 do
  begin
    LETRA := copy(FORMATFLOAT('########0.00',
      QRPRODUTO.FIELDBYNAME('precocusto').ASFLOAT), i, 1);
    if LETRA = '1' then
      CODIG := 'I' + CODIG;
    if LETRA = '2' then
      CODIG := 'H' + CODIG;
    if LETRA = '3' then
      CODIG := 'G' + CODIG;
    if LETRA = '4' then
      CODIG := 'F' + CODIG;
    if LETRA = '5' then
      CODIG := 'E' + CODIG;
    if LETRA = '6' then
      CODIG := 'D' + CODIG;
    if LETRA = '7' then
      CODIG := 'C' + CODIG;
    if LETRA = '8' then
      CODIG := 'B' + CODIG;
    if LETRA = '9' then
      CODIG := 'A' + CODIG;
    if LETRA = '0' then
      CODIG := 'M' + CODIG;
    if LETRA = ',' then
      CODIG := ',' + CODIG;
    i := i - 1;
  end;
  QRPRODUTO.FIELDBYNAME('RESTRITO').ASSTRING := CODIG;

end;

procedure Tfrmetiquetador.BitBtn3Click(Sender: TObject);
begin

  pperiodo.visible := true;
  pperiodo.Top := 161;
  pperiodo.Left := 88;

  DateEdit1.DATE := DATE;
  DateEdit2.DATE := DATE;
  bok.setfocus;

end;

procedure Tfrmetiquetador.bokClick(Sender: TObject);
begin
  qretiq.close;
  qretiq.SQL.clear;
  qretiq.SQL.add('delete from cl00005');
  qretiq.ExecSQL;
  qretiq.SQL.clear;
  qretiq.SQL.add('select * from cl00005');
  qretiq.open;

  qrremarcados.close;
  qrremarcados.SQL.clear;
  qrremarcados.SQL.add('select * from c000025');
  qrremarcados.SQL.add('where precovenda_novo > ''0'' and');
  qrremarcados.SQL.add('DATA_REMARCACAO_VENDA >= :data_ini and');
  qrremarcados.SQL.add('DATA_REMARCACAO_VENDA <= :data_fim');
  qrremarcados.ParamByName('data_ini').AsDateTime := DateEdit1.DATE;
  qrremarcados.ParamByName('data_fim').AsDateTime := DateEdit2.DATE;
  qrremarcados.open;

  pperiodo.visible := false;

  Pimport.visible := true;
  bar.Position := 0;

  bar.Max := qrremarcados.recordcount;
  qrremarcados.FIRST;
  application.ProcessMessages;
  while not qrremarcados.EOF do
  begin
    qretiq.INSERT;
    qretiq.FIELDBYNAME('codproduto').ASSTRING :=
      qrremarcados.FIELDBYNAME('codigo').ASSTRING;
    qretiq.FIELDBYNAME('produto').ASSTRING :=
      qrremarcados.FIELDBYNAME('produto').ASSTRING;
    qretiq.FIELDBYNAME('qtde').ASFLOAT := 1;
    qretiq.FIELDBYNAME('valor').ASFLOAT :=
      qrremarcados.FIELDBYNAME('precovenda').ASFLOAT;
    qretiq.FIELDBYNAME('unidade').ASSTRING :=
      qrremarcados.FIELDBYNAME('unidade').ASSTRING;
    qretiq.FIELDBYNAME('texto').ASSTRING := '3';
    qretiq.POST;
    qrremarcados.NEXT;
    bar.Position := bar.Position + 1;
    application.ProcessMessages;
  end;
  Pimport.visible := false;
  wwDBGrid1.setfocus;
end;

procedure Tfrmetiquetador.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmetiquetador.DateEdit2Exit(Sender: TObject);
begin
  bokClick(frmetiquetador);
end;

procedure Tfrmetiquetador.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bok.setfocus;
end;

procedure Tfrmetiquetador.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmetiquetador.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmetiquetador.bdescontoClick(Sender: TObject);
begin
  pdesconto.visible := false;
  BitBtn8.setfocus;
end;

procedure Tfrmetiquetador.edescontoExit(Sender: TObject);
begin
  bdescontoClick(frmetiquetador);
end;

end.

