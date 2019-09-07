unit entrega_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, MemDS,
  VirtualTable, DBAccess, Menus, StdCtrls, Mask, wwdbedit, Spin,
  frxClass, frxDBSet, frxDesgn, DBClient, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  RzEdit, RzSpnEdt;

type
  TfrmEntrega_ficha = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Bevel1: TBevel;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Pop1: TPopupMenu;
    Cancelar1: TMenuItem;
    Imprimir1: TMenuItem;
    ed_entregue: TwwDBEdit;
    Panel2: TPanel;
    bt_razao: TButton;
    Bevel2: TBevel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    bt_bobina: TButton;
    bt_carta: TButton;
    bt_laser: TButton;
    fxdesenhar: TfrxDesigner;
    rel_entrega: TfrxReport;
    fs_entrega: TfrxDBDataset;
    fscliente: TfrxDBDataset;
    dsEntrega: TDataSource;
    qrEntrega: TClientDataSet;
    qrEntregaItem: TStringField;
    qrEntregacodvenda: TStringField;
    qrEntregadata_venda: TDateTimeField;
    qrEntregaCodigo: TStringField;
    qrEntregaProduto: TStringField;
    qrEntregaUnidade: TStringField;
    qrEntregaqtde_vendida: TFloatField;
    qrEntregaqtde_ja_entregue: TFloatField;
    qrEntregaqtde_entregue: TFloatField;
    qrEntregaqtde_saldo: TFloatField;
    qrentrega2: TZQuery;
    evias: TRzSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrEntregaBeforeInsert(DataSet: TDataSet);
    procedure ed_vendidoExit(Sender: TObject);
    procedure ed_entregueExit(Sender: TObject);
    procedure bt_razaoClick(Sender: TObject);
    procedure bt_bobinaClick(Sender: TObject);
    procedure bt_cartaClick(Sender: TObject);
    procedure bt_laserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntrega_ficha: TfrmEntrega_ficha;
  NAO_incluir: boolean;
  CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO,
    CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF,
    CLIENTE_CODIGO: string;

implementation

uses modulo, principal, entrega;

{$R *.dfm}

procedure TfrmEntrega_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  NAO_incluir := FALSE;
  Action := cafree;
end;

procedure TfrmEntrega_ficha.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEntrega_ficha.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmEntrega_ficha.bgravarClick(Sender: TObject);
begin

  CLIENTE_NOME := FRMENTREGA.QRCLIENTE2.fieldbyname('nome').asstring;
  CLIENTE_ENDERECO := FRMENTREGA.QRCLIENTE2.fieldbyname('endereco').asstring;
  CLIENTE_BAIRRO := FRMENTREGA.QRCLIENTE2.fieldbyname('bairro').asstring;
  CLIENTE_CIDADE := FRMENTREGA.QRCLIENTE2.fieldbyname('cidade').asstring;
  CLIENTE_UF := FRMENTREGA.QRCLIENTE2.fieldbyname('uf').asstring;
  CLIENTE_CEP := FRMENTREGA.QRCLIENTE2.fieldbyname('cep').asstring;
  CLIENTE_TELEFONE := FRMENTREGA.QRCLIENTE2.fieldbyname('telefone1').asstring +
    '/' + FRMENTREGA.QRCLIENTE2.fieldbyname('celular').asstring + '/' +
    FRMENTREGA.QRCLIENTE2.fieldbyname('telefone2').asstring;
  CLIENTE_CPF := FRMENTREGA.QRCLIENTE2.fieldbyname('COMPLEMENTO').asstring;
  CLIENTE_RG := FRMENTREGA.QRCLIENTE2.fieldbyname('rg').asstring;
  CLIENTE_CODIGO := FRMENTREGA.QRCLIENTE2.fieldbyname('CODIGO').asstring;

  frmPrincipal.logUC('Incluiu Entrega para Cliente: ' + CLIENTE_NOME, 1);

  case ComboBox1.ItemIndex of
    0:
      bt_bobinaClick(frmEntrega_ficha);
    1:
      bt_razaoClick(frmEntrega_ficha);
    2:
      bt_cartaClick(frmEntrega_ficha);
    3:
      bt_laserClick(frmEntrega_ficha);
  end;

  // IBTrans_entrega.Active := true;
  // frmmodulo.Conexao.StartTransaction;
  qrEntrega.first;
  while not qrEntrega.eof do
  begin
    qrentrega2.close;
    qrentrega2.sql.clear;
    qrentrega2.sql.add('insert into c000115');
    qrentrega2.sql.add
      ('(CODVENDA,CODPRODUTO,QTDE_ENTREGUE,qtde_vendida,codcliente,data_entrega,data_venda)');
    qrentrega2.sql.add('values');
    qrentrega2.sql.add
      ('(:CODVENDA,:CODPRODUTO,:QTDE_ENTREGUE,:qtde_vendida,:codcliente,:data_entrega,:data_venda)');
    qrentrega2.Params.ParamByName('codvenda').asstring :=
      qrEntrega.fieldbyname('codvenda').asstring;
    qrentrega2.Params.ParamByName('codproduto').asstring :=
      qrEntrega.fieldbyname('codigo').asstring;
    qrentrega2.Params.ParamByName('qtde_entregue').asfloat :=
      qrEntrega.fieldbyname('qtde_entregue').asfloat;
    qrentrega2.Params.ParamByName('qtde_vendida').asfloat := 0;
    qrentrega2.Params.ParamByName('codcliente').asstring :=
      FRMENTREGA.QRCLIENTE2.fieldbyname('codigo').asstring;
    qrentrega2.Params.ParamByName('data_entrega').asdatetime := date;
    qrentrega2.Params.ParamByName('data_venda').asdatetime :=
      qrEntrega.fieldbyname('data_venda').asdatetime;
    qrentrega2.ExecSQL;
    qrEntrega.Next;
  end;
  // IBTrans_entrega.Commit;
  // frmmodulo.Conexao.Commit;

  close;
end;

procedure TfrmEntrega_ficha.FormShow(Sender: TObject);
begin
  qrEntrega.filtered := FALSE;
  NAO_incluir := TRUE;

  frmmodulo.qrconfig.open;
  ComboBox1.ItemIndex := frmmodulo.qrconfig.fieldbyname('entrega_impressao')
    .asinteger;
  evias.intValue := frmmodulo.qrconfig.fieldbyname('entrega_vias').asinteger;
end;

procedure TfrmEntrega_ficha.qrEntregaBeforeInsert(DataSet: TDataSet);
begin
  if NAO_incluir then
    abort;
end;

procedure TfrmEntrega_ficha.ed_vendidoExit(Sender: TObject);
begin
  qrEntrega.fieldbyname('saldo')
end;

procedure TfrmEntrega_ficha.ed_entregueExit(Sender: TObject);
begin
  if qrEntrega.fieldbyname('qtde_entregue').asfloat <=
    (qrEntrega.fieldbyname('qtde_vendida').asfloat - qrEntrega.fieldbyname
    ('qtde_ja_entregue').asfloat) then
  begin
    qrEntrega.fieldbyname('qtde_saldo').asfloat :=
      qrEntrega.fieldbyname('qtde_vendida').asfloat - qrEntrega.fieldbyname
      ('qtde_ja_entregue').asfloat - qrEntrega.fieldbyname
      ('qtde_entregue').asfloat;
  end
  else
  begin
    qrEntrega.fieldbyname('qtde_entregue').asfloat :=
      qrEntrega.fieldbyname('qtde_vendida').asfloat - qrEntrega.fieldbyname
      ('qtde_ja_entregue').asfloat;
    qrEntrega.fieldbyname('qtde_saldo').asfloat := 0;
  end;
end;

procedure TfrmEntrega_ficha.bt_razaoClick(Sender: TObject);
var
  arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  conta_formas, I, VIAS: integer;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  prestacao: integer;

  formapgto, v1, v2: string;
  y: integer;
begin
  // NORMAL               --> #18+#27#72+#20
  // NORMAL NEGRITO       --> #18+#27#71+#20
  // FONTE GRANDE         --> #27#72+#14
  // FONTE GRANDE NEGRITO --> #27#71+#14
  // CONDENSADO           --> #15+#27#72+#20
  // CONDENSADO NEGRITO   --> #15+#27#71+#20
  // impressao 12 cpi     --> #27#77
  // impressao 10 cpi     --> #27#80

  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);

  VIAS := evias.intValue;

  while VIAS <> 0 do
  begin

    writeln(arquivo, #27#80 + #18 + #27#71 + #20,
      frmPrincipal.Texto_Justifica(emitente_fantasia, 12, ' ', 'D') + #27#80 +
      #15 + #27#72 + #20 + ' ' + frmPrincipal.Texto_Justifica(emitente_telefone,
      13, ' ', 'D') + #27#80 + #18 + #27#72 + #20 +
      ' GUIA DE ENTREGA --> AVULSA     DATA: ' + frmPrincipal.Texto_Justifica
      (DATETOSTR(date), 10, ' ', 'E') + ' ' + frmPrincipal.Texto_Justifica
      (timetostr(time), 5, ' ', 'E'));
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      '--------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Cliente...: ' + #27#80 + #18
      + #27#71 + #20 + frmPrincipal.Texto_Justifica(CLIENTE_CODIGO, 6, '0', 'E')
      + ' ' + frmPrincipal.Texto_Justifica(CLIENTE_NOME, 32, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20,
      'Endereco..: ' + frmPrincipal.Texto_Justifica(CLIENTE_ENDERECO + ' ' +
      CLIENTE_BAIRRO, 35, ' ', 'D') + '  ' + frmPrincipal.Texto_Justifica
      (CLIENTE_CIDADE + '/' + CLIENTE_UF + ' CEP: ' + CLIENTE_CEP, 33,
      ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20,
      'Telefones.: ' + frmPrincipal.Texto_Justifica(CLIENTE_TELEFONE, 15, ' ',
      'D') + ' Ponto Referencia: ' + frmPrincipal.Texto_Justifica(CLIENTE_CPF,
      40, ' ', 'D'));
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      '--------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      'CODIGO PRODUTO                                                   UN   QUANTIDADE');
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      '--------------------------------------------------------------------------------');
    I := 0;

    qrEntrega.first;
    while not qrEntrega.eof do
    begin

      if qrEntrega.fieldbyname('qtde_entregue').asfloat > 0 then
      begin

        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          frmPrincipal.Texto_Justifica(qrEntrega.fieldbyname('codigo').asstring,
          6, '0', 'E') + ' ' + frmPrincipal.Texto_Justifica
          (qrEntrega.fieldbyname('produto').asstring, 58, ' ', 'D') +
          frmPrincipal.Texto_Justifica(qrEntrega.fieldbyname('unidade')
          .asstring, 2, '  ', 'D') + ' ' + frmPrincipal.Texto_Justifica
          (formatfloat(mascara_qtde, qrEntrega.fieldbyname('qtde_entregue')
          .asfloat), 11, ' ', 'E'));
        I := I + 1;
      end;

      qrEntrega.Next;

      if I = 18 then
      begin
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          '--------------------------------------------------------------------------------');
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          '                                           **** Continua na proxima pagina ****');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');

        writeln(arquivo, #27#80 + #18 + #27#71 + #20,
          frmPrincipal.Texto_Justifica(emitente_fantasia, 12, ' ', 'D') + #27#80
          + #15 + #27#72 + #20 + ' ' + frmPrincipal.Texto_Justifica
          (emitente_telefone, 13, ' ', 'D') + #27#80 + #18 + #27#72 + #20 +
          ' GUIA DE ENTREGA --> AVULSA     DATA: ' +
          frmPrincipal.Texto_Justifica(DATETOSTR(date), 10, ' ', 'E') + ' ' +
          frmPrincipal.Texto_Justifica(timetostr(time), 5, ' ', 'E'));
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          '--------------------------------------------------------------------------------');
        writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Cliente...: ' + #27#80 +
          #18 + #27#71 + #20 + frmPrincipal.Texto_Justifica(CLIENTE_CODIGO, 6,
          '0', 'E') + ' ' + frmPrincipal.Texto_Justifica(CLIENTE_NOME, 32,
          ' ', 'D'));
        writeln(arquivo, #27#80 + #15 + #27#72 + #20,
          'Endereco..: ' + frmPrincipal.Texto_Justifica(CLIENTE_ENDERECO + ' ' +
          CLIENTE_BAIRRO, 35, ' ', 'D') + '  ' + frmPrincipal.Texto_Justifica
          (CLIENTE_CIDADE + '/' + CLIENTE_UF + ' CEP: ' + CLIENTE_CEP, 33,
          ' ', 'D'));
        writeln(arquivo, #27#80 + #15 + #27#72 + #20,
          'Telefones.: ' + frmPrincipal.Texto_Justifica(CLIENTE_TELEFONE, 15,
          ' ', 'D') + ' Ponto Referencia: ' + frmPrincipal.Texto_Justifica
          (CLIENTE_CPF, 40, ' ', 'D'));
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          '--------------------------------------------------------------------------------');
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          'CODIGO PRODUTO                                                   UN   QUANTIDADE');
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          '--------------------------------------------------------------------------------');
        I := 0;
      end;

    end;
    while I <> 18 do
    begin
      writeln(arquivo, '');
      I := I + 1;
    end;
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      '--------------------------------------------------------------------------------');
    writeln(arquivo,
      'Reconhe‡o que recebi a(s) mercadoria(s) acima relacionada(s) em perfeito estado.');
    writeln(arquivo, '');
    writeln(arquivo, '');
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      'Data:     /     /                    Assinatura: -----------------------------');

    VIAS := VIAS - 1;
    writeln(arquivo, '');
    writeln(arquivo, '');

  end;

  closefile(arquivo);

end;

procedure TfrmEntrega_ficha.bt_bobinaClick(Sender: TObject);
var
  arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  conta_formas, I, VIAS: integer;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  prestacao, SUBIR_PAPEL: integer;

begin
  // NORMAL               --> #18+#27#72+#20
  // NORMAL NEGRITO       --> #18+#27#71+#20
  // FONTE GRANDE         --> #27#72+#14
  // FONTE GRANDE NEGRITO --> #27#71+#14
  // CONDENSADO           --> #15+#27#72+#20
  // CONDENSADO NEGRITO   --> #15+#27#71+#20
  // impressao 12 cpi     --> #27#77
  // impressao 10 cpi     --> #27#80

  frmmodulo.qrconfig.open;
  SUBIR_PAPEL := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;

  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);

  VIAS := evias.intValue;

  while VIAS <> 0 do
  begin

    writeln(arquivo, #18 + #27#71 + #20,
      frmPrincipal.Texto_Justifica(emitente_fantasia, 30, ' ', 'C'));
    writeln(arquivo, #15 + #27#72 + #20,
      frmPrincipal.Texto_Justifica(emitente_endereco, 52, ' ', 'C'));
    writeln(arquivo, #15 + #27#72 + #20,
      frmPrincipal.Texto_Justifica(emitente_cidade + ' - CEP ' + emitente_cep,
      52, ' ', 'C'));
    writeln(arquivo, #15 + #27#72 + #20,
      frmPrincipal.Texto_Justifica('Telefone: ' + emitente_telefone, 52,
      ' ', 'C'));
    writeln(arquivo, #15 + #27#72 + #20,
      '----------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, 'GUIA DE ENTREGA - AVULSA' + '  Emis: '
      + frmPrincipal.Texto_Justifica(DATETOSTR(date), 10, ' ', 'E') + ' ' +
      frmPrincipal.Texto_Justifica(timetostr(time), 5, ' ', 'E'));
    writeln(arquivo, #15 + #27#72 + #20,
      '----------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20,
      'Cliente...: ' + frmPrincipal.Texto_Justifica
      (FRMENTREGA.QRCLIENTE2.fieldbyname('CODIGO').asstring, 6, '0', 'E') + ' '
      + frmPrincipal.Texto_Justifica(FRMENTREGA.QRCLIENTE2.fieldbyname('NOME')
      .asstring, 32, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20,
      'Endereco..: ' + frmPrincipal.Texto_Justifica
      (FRMENTREGA.QRCLIENTE2.fieldbyname('endereco').asstring + ' ' +
      FRMENTREGA.QRCLIENTE2.fieldbyname('bairro').asstring, 39, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20,
      'Cid/UF/CEP: ' + frmPrincipal.Texto_Justifica
      (FRMENTREGA.QRCLIENTE2.fieldbyname('cidade').asstring + '/' +
      FRMENTREGA.QRCLIENTE2.fieldbyname('uf').asstring + '  ' +
      FRMENTREGA.QRCLIENTE2.fieldbyname('cep').asstring, 39, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20,
      'Telefones.: ' + frmPrincipal.Texto_Justifica
      (FRMENTREGA.QRCLIENTE2.fieldbyname('telefone1').asstring + '/' +
      FRMENTREGA.QRCLIENTE2.fieldbyname('celular').asstring + '/' +
      FRMENTREGA.QRCLIENTE2.fieldbyname('telefone2').asstring, 39, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20,
      'Ponto. Ref: ' + frmPrincipal.Texto_Justifica
      (FRMENTREGA.QRCLIENTE2.fieldbyname('complemento').asstring, 39,
      ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20,
      '----------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20,
      'P R O D U T O                          UN QUANTIDADE');
    writeln(arquivo, #15 + #27#72 + #20,
      '----------------------------------------------------');
    I := 0;

    qrEntrega.first;
    while not qrEntrega.eof do
    begin

      if qrEntrega.fieldbyname('qtde_entregue').asfloat > 0 then
      begin

        writeln(arquivo, #15 + #27#72 + #20,
          frmPrincipal.Texto_Justifica(qrEntrega.fieldbyname('codigo').asstring,
          6, '0', 'E') + ' ' + frmPrincipal.Texto_Justifica
          (qrEntrega.fieldbyname('produto').asstring, 31, ' ', 'D') + ' ' +
          frmPrincipal.Texto_Justifica(qrEntrega.fieldbyname('unidade')
          .asstring, 2, '  ', 'D') + ' ' + frmPrincipal.Texto_Justifica
          (formatfloat(mascara_qtde, qrEntrega.fieldbyname('qtde_entregue')
          .asfloat), 10, ' ', 'E'));
      end;

      qrEntrega.Next;
    end;

    writeln(arquivo, #15 + #27#72 + #20,
      '----------------------------------------------------');
    writeln(arquivo, 'Reconhe‡o   que   recebi  a(s)  mercadoria(s)  acima ');
    writeln(arquivo, 'relacionada(s) em perfeito estado.');
    writeln(arquivo, '');
    writeln(arquivo, '');
    writeln(arquivo, #15 + #27#72 + #20, 'Data: -----/-----/----------');
    writeln(arquivo, #15 + #27#72 + #20, '');
    writeln(arquivo, #15 + #27#72 + #20, '');
    writeln(arquivo, #15 + #27#72 + #20,
      '         -----------------------------              ');
    writeln(arquivo, #15 + #27#72 + #20, '                  ASSINATURA');
    while SUBIR_PAPEL <> 0 do
    begin
      writeln(arquivo, #15 + #27#72 + #20, '');
      SUBIR_PAPEL := SUBIR_PAPEL - 1;
    end;

    VIAS := VIAS - 1;
    writeln(arquivo, '');
    writeln(arquivo, '');

  end;

  closefile(arquivo);

end;

procedure TfrmEntrega_ficha.bt_cartaClick(Sender: TObject);
var
  arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  conta_formas, I, VIAS: integer;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  prestacao: integer;

  formapgto, v1, v2: string;
  y: integer;
begin
  // NORMAL               --> #18+#27#72+#20
  // NORMAL NEGRITO       --> #18+#27#71+#20
  // FONTE GRANDE         --> #27#72+#14
  // FONTE GRANDE NEGRITO --> #27#71+#14
  // CONDENSADO           --> #15+#27#72+#20
  // CONDENSADO NEGRITO   --> #15+#27#71+#20
  // impressao 12 cpi     --> #27#77
  // impressao 10 cpi     --> #27#80

  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);

  VIAS := evias.intValue;

  while VIAS <> 0 do
  begin

    writeln(arquivo, #27#80 + #18 + #27#71 + #20,
      frmPrincipal.Texto_Justifica(emitente_fantasia, 12, ' ', 'D') + #27#80 +
      #15 + #27#72 + #20 + ' ' + frmPrincipal.Texto_Justifica(emitente_telefone,
      13, ' ', 'D') + #27#80 + #18 + #27#72 + #20 +
      ' GUIA DE ENTREGA --> AVULSA     DATA: ' + frmPrincipal.Texto_Justifica
      (DATETOSTR(date), 10, ' ', 'E') + ' ' + frmPrincipal.Texto_Justifica
      (timetostr(time), 5, ' ', 'E'));
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      '--------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Cliente...: ' + #27#80 + #18
      + #27#71 + #20 + frmPrincipal.Texto_Justifica(CLIENTE_CODIGO, 6, '0', 'E')
      + ' ' + frmPrincipal.Texto_Justifica(CLIENTE_NOME, 32, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20,
      'Endereco..: ' + frmPrincipal.Texto_Justifica(CLIENTE_ENDERECO + ' ' +
      CLIENTE_BAIRRO, 35, ' ', 'D') + '  ' + frmPrincipal.Texto_Justifica
      (CLIENTE_CIDADE + '/' + CLIENTE_UF + ' CEP: ' + CLIENTE_CEP, 33,
      ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20,
      'Telefones.: ' + frmPrincipal.Texto_Justifica(CLIENTE_TELEFONE, 15, ' ',
      'D') + ' Ponto Referencia: ' + frmPrincipal.Texto_Justifica(CLIENTE_CPF,
      40, ' ', 'D'));
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      '--------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      'CODIGO PRODUTO                                                   UN   QUANTIDADE');
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      '--------------------------------------------------------------------------------');
    I := 0;

    qrEntrega.first;
    while not qrEntrega.eof do
    begin

      if qrEntrega.fieldbyname('qtde_entregue').asfloat > 0 then
      begin

        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          frmPrincipal.Texto_Justifica(qrEntrega.fieldbyname('codigo').asstring,
          6, '0', 'E') + ' ' + frmPrincipal.Texto_Justifica
          (qrEntrega.fieldbyname('produto').asstring, 58, ' ', 'D') +
          frmPrincipal.Texto_Justifica(qrEntrega.fieldbyname('unidade')
          .asstring, 2, '  ', 'D') + ' ' + frmPrincipal.Texto_Justifica
          (formatfloat(mascara_qtde, qrEntrega.fieldbyname('qtde_entregue')
          .asfloat), 11, ' ', 'E'));
        I := I + 1;
      end;

      qrEntrega.Next;

      if I = 51 then
      begin
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          '--------------------------------------------------------------------------------');
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          '                                           **** Continua na proxima pagina ****');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');

        writeln(arquivo, #27#80 + #18 + #27#71 + #20,
          frmPrincipal.Texto_Justifica(emitente_fantasia, 12, ' ', 'D') + #27#80
          + #15 + #27#72 + #20 + ' ' + frmPrincipal.Texto_Justifica
          (emitente_telefone, 13, ' ', 'D') + #27#80 + #18 + #27#72 + #20 +
          ' GUIA DE ENTREGA --> AVULSA     DATA: ' +
          frmPrincipal.Texto_Justifica(DATETOSTR(date), 10, ' ', 'E') + ' ' +
          frmPrincipal.Texto_Justifica(timetostr(time), 5, ' ', 'E'));
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          '--------------------------------------------------------------------------------');
        writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Cliente...: ' + #27#80 +
          #18 + #27#71 + #20 + frmPrincipal.Texto_Justifica(CLIENTE_CODIGO, 6,
          '0', 'E') + ' ' + frmPrincipal.Texto_Justifica(CLIENTE_NOME, 32,
          ' ', 'D'));
        writeln(arquivo, #27#80 + #15 + #27#72 + #20,
          'Endereco..: ' + frmPrincipal.Texto_Justifica(CLIENTE_ENDERECO + ' ' +
          CLIENTE_BAIRRO, 35, ' ', 'D') + '  ' + frmPrincipal.Texto_Justifica
          (CLIENTE_CIDADE + '/' + CLIENTE_UF + ' CEP: ' + CLIENTE_CEP, 33,
          ' ', 'D'));
        writeln(arquivo, #27#80 + #15 + #27#72 + #20,
          'Telefones.: ' + frmPrincipal.Texto_Justifica(CLIENTE_TELEFONE, 15,
          ' ', 'D') + ' Ponto Referencia: ' + frmPrincipal.Texto_Justifica
          (CLIENTE_CPF, 40, ' ', 'D'));
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          '--------------------------------------------------------------------------------');
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          'CODIGO PRODUTO                                                   UN   QUANTIDADE');
        writeln(arquivo, #27#80 + #18 + #27#72 + #20,
          '--------------------------------------------------------------------------------');
        I := 0;
      end;

    end;
    while I <> 51 do
    begin
      writeln(arquivo, '');
      I := I + 1;
    end;
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      '--------------------------------------------------------------------------------');
    writeln(arquivo,
      'Reconhe‡o que recebi a(s) mercadoria(s) acima relacionada(s) em perfeito estado.');
    writeln(arquivo, '');
    writeln(arquivo, '');
    writeln(arquivo, #27#80 + #18 + #27#72 + #20,
      'Data:     /     /                    Assinatura: -----------------------------');

    VIAS := VIAS - 1;
    writeln(arquivo, '');
    writeln(arquivo, '');

  end;

  closefile(arquivo);

end;

procedure TfrmEntrega_ficha.bt_laserClick(Sender: TObject);
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.fieldbyname('linha10').asstring := 'AVULSA';
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := DATETOSTR(date);
  frmmodulo.qrrelatorio.fieldbyname('linha9').asstring := '000099';
  frmmodulo.qrrelatorio.fieldbyname('linha8').asstring := '---';

  qrEntrega.filtered := FALSE;
  qrEntrega.filter := 'qtde_entregue > 0';
  qrEntrega.filtered := TRUE;

  rel_entrega.Report.LoadFromFile('\OneMaker\server\rel\F000048_2.fr3');
  // rel_entrega.Report.LoadFromFile('c:\tempo.fr3');
  rel_entrega.ShowReport;

end;

end.
