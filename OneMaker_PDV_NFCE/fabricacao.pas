unit fabricacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, Mask, RzEdit, RzBtnEdt,
  Buttons, DB, MemDS, DBAccess, Menus, Uni;

type
  TfrmFabricacao = class(TForm)
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    Panel2: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    ed_produto_codigo: TRzButtonEdit;
    ed_produto_nome: TRzEdit;
    ed_produto_unidade: TRzEdit;
    Label2: TLabel;
    Bevel2: TBevel;
    grid_insumo: TNextGrid;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    Panel3: TPanel;
    Panel4: TPanel;
    Bevel3: TBevel;
    Label3: TLabel;
    ed_insumo_codigo: TRzButtonEdit;
    ed_insumo_nome: TRzEdit;
    ed_insumo_un: TRzEdit;
    Label4: TLabel;
    ed_insumo_qtde: TRzNumericEdit;
    Label5: TLabel;
    bt_insumo_gravar: TButton;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
 //   qrProduto: TIBCQuery;
  //  qrInsumo: TIBCQuery;
 //   query: TIBCQuery;
    NxNumberColumn2: TNxTextColumn;
    Label6: TLabel;
    ed_qtde_prod: TRzNumericEdit;
    Label7: TLabel;
    ed_insumo_qtde_prod: TRzNumericEdit;
    Label8: TLabel;
    ed_insumo_un2: TRzEdit;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxTextColumn5: TNxTextColumn;
    NxNumberColumn5: TNxNumberColumn;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Gravar1: TMenuItem;
    qrProduto: TUniQuery;
    qrInsumo: TUniQuery;
    query: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure ed_produto_codigoButtonClick(Sender: TObject);
    procedure ed_produto_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ed_insumo_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_insumo_codigoButtonClick(Sender: TObject);
    procedure bt_insumo_gravarClick(Sender: TObject);
    procedure ed_qtde_prodKeyPress(Sender: TObject; var Key: Char);
    procedure ed_insumo_qtdeExit(Sender: TObject);
    procedure ed_qtde_prodExit(Sender: TObject);
  private
    { Private declarations }
    procedure filtra_insumo();
  public
    { Public declarations }
  end;

var
  frmFabricacao: TfrmFabricacao;
  rQtde_estoque, rvalor, rcusto_produto: real;

implementation

uses modulo, principal, funcoes, unECF, loc_produto_servidor;

{$R *.dfm}

procedure TfrmFabricacao.filtra_insumo();
var
  i: integer;
begin
  qrInsumo.Close;
  qrInsumo.SQL.clear;
  qrInsumo.SQL.add('select c000079.*, c000025.produto as nome_produto,');
  qrInsumo.SQL.add
    ('c000025.precocusto as preco_custo_prod from c000079, c000025');
  qrInsumo.SQL.add('where c000079.codproduto = c000025.codigo and');
  qrInsumo.SQL.add('C000079.codigo = ''' + ed_produto_codigo.text + '''');
  qrInsumo.open;

  grid_insumo.ClearRows;

  qrInsumo.First;
  while not qrInsumo.eof do
  begin
    i := grid_insumo.AddRow(1);
    grid_insumo.Cell[0, i].asstring :=
      qrInsumo.fieldbyname('codproduto').asstring;
    grid_insumo.Cell[1, i].asstring :=
      qrInsumo.fieldbyname('nome_produto').asstring;

    grid_insumo.Cell[2, i].asfloat :=
      qrInsumo.fieldbyname('quantidade').asfloat;
    grid_insumo.Cell[3, i].asstring :=
      qrInsumo.fieldbyname('unidade_materiaprima').asstring;

    grid_insumo.Cell[4, i].asfloat := ed_qtde_prod.value;
    grid_insumo.Cell[5, i].asstring := ed_produto_unidade.text;

    grid_insumo.Cell[6, i].asfloat := qrInsumo.fieldbyname('quantidade').asfloat
      * ed_qtde_prod.value;
    grid_insumo.Cell[7, i].asstring :=
      qrInsumo.fieldbyname('unidade_materiaprima').asstring;

    grid_insumo.Cell[8, i].asfloat :=
      qrInsumo.fieldbyname('preco_custo_prod').asfloat;
    qrInsumo.next;
  end;
end;

procedure TfrmFabricacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmFabricacao.bt_cancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFabricacao.bt_okClick(Sender: TObject);
var
  i: integer;
  b: boolean;
begin
  bcontinua := true;
  // verificar estoques
  for i := 0 to grid_insumo.rowcount - 1 do
  begin
    qrProduto.Close;
    qrProduto.SQL.clear;
    qrProduto.SQL.add
      ('select c000025.codigo, c000025.produto, c000025.unidade, c000025.precocusto,');
    qrProduto.SQL.add('c000100.estoque_atual as estoque');
    qrProduto.SQL.add('from c000025, c000100');
    qrProduto.SQL.add
      ('where c000025.codigo = c000100.codproduto and c000025.codigo = ''' +
      grid_insumo.Cell[0, i].asstring + '''');
    qrProduto.open;
    if qrProduto.fieldbyname('estoque').asfloat < grid_insumo.Cell[6, i].asfloat
    then
    begin
      Application.messagebox(pwidechar('Produto com estoque insuficiente!' + #13
        + 'Produto: ' + grid_insumo.Cell[1, i].asstring + #13 +
        'Quantidade em Estoque: ' + formatfloat('###,###,##0.00',
        qrProduto.fieldbyname('estoque').asfloat) + #13 +
        'Quantidade solicitada: ' + formatfloat('###,###,##0.00',
        grid_insumo.Cell[6, i].asfloat)), 'Erro', MB_OK + MB_ICONERROR);
      bcontinua := FALSE;
      BREAK;

    end;
  end;
  if not bcontinua then
    exit;

  if Application.messagebox(pwidechar('Confirma a fabricação do produto:' + #13
    + ed_produto_nome.text + #13 + 'Quantidade: ' + ed_qtde_prod.text + ' ' +
    ed_produto_unidade.text + '?'), 'Atenção', mb_yesno + MB_ICONWARNING) = idyes
  then
  begin
    // atualizar o banco de dados do servidor
    // excluir todos os registro da tabela 000079 e depois refazer
    qrInsumo.Close;
    qrInsumo.SQL.clear;
    qrInsumo.SQL.add('delete from c000079 where codigo = ''' +
      ed_produto_codigo.text + '''');
    qrInsumo.ExecSQL;

    // excluir tb do bd do paf

    query.Close;
    query.SQL.clear;
    query.SQL.add('delete from estoque_indice where cod_produto = ' +
      inttostr(strtoint(ed_produto_codigo.text)));
    query.ExecSQL;

    // atualizar a tabela de insumos do servidor
    for i := 0 to grid_insumo.rowcount - 1 do
    begin
      qrInsumo.Close;
      qrInsumo.SQL.clear;
      qrInsumo.SQL.add('insert into c000079');
      qrInsumo.SQL.add('(codigo, produto, unidade_produto, codproduto,');
      qrInsumo.SQL.add('unidade_materiaprima, quantidade)');
      qrInsumo.SQL.add('values');
      qrInsumo.SQL.add('(:codigo, :produto, :unidade_produto, :codproduto,');
      qrInsumo.SQL.add(':unidade_materiaprima, :quantidade)');

      qrInsumo.parambyname('codigo').asstring := ed_produto_codigo.text;
      qrInsumo.parambyname('produto').asstring :=
        copy(ed_produto_nome.text, 1, 50);
      qrInsumo.parambyname('unidade_produto').asstring :=
        ed_produto_unidade.text;
      qrInsumo.parambyname('codproduto').asstring :=
        grid_insumo.Cell[0, i].asstring;
      qrInsumo.parambyname('unidade_materiaprima').asstring :=
        grid_insumo.Cell[3, i].asstring;
      qrInsumo.parambyname('quantidade').asfloat := grid_insumo.Cell
        [2, i].asfloat;
      qrInsumo.ExecSQL;

      // bd paf

      query.Close;
      query.SQL.clear;
      query.SQL.add('insert into estoque_indice');
      query.SQL.add('(cod_produto, cod_indice, qtde)');
      query.SQL.add('values');
      query.SQL.add('(:cod_produto, :cod_indice, :qtde)');
      query.parambyname('cod_produto').asinteger :=
        strtoint(ed_produto_codigo.text);
      query.parambyname('cod_indice').asinteger :=
        strtoint(grid_insumo.Cell[0, i].asstring);
      query.parambyname('qtde').asfloat := grid_insumo.Cell[2, i].asfloat;
      query.ExecSQL;


      // fazer o lancamento na tabela 32 para baixar estes produtos no estoque

      qrInsumo.Close;
      qrInsumo.SQL.clear;
      qrInsumo.SQL.add('insert into c000032');
      qrInsumo.SQL.add('(codigo,codnota,serial,numeronota,');
      qrInsumo.SQL.add('codproduto,qtde,movimento_estoque,unitario,desconto,');
      qrInsumo.SQL.add('total,unidade,aliquota,');
      qrInsumo.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
      qrInsumo.SQL.add
        ('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
      qrInsumo.SQL.add('base_calculo, valor_icms)');
      qrInsumo.SQL.add('values');

      qrInsumo.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
      qrInsumo.SQL.add
        (':codproduto,:qtde,:movimento_estoque,:unitario,:desconto,');
      qrInsumo.SQL.add(':total,:unidade,:aliquota,');
      qrInsumo.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
      qrInsumo.SQL.add
        (':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst,');
      qrInsumo.SQL.add(':base_calculo, :valor_icms)');

      qrInsumo.Params.parambyname('CODIGO').asstring :=
        frmPrincipal.codifica('000032', 10);
      qrInsumo.Params.parambyname('CODNOTA').asstring := '';
      qrInsumo.Params.parambyname('SERIAL').asstring := '';
      qrInsumo.Params.parambyname('NUMERONOTA').asstring := '';
      qrInsumo.Params.parambyname('CODPRODUTO').asstring :=
        grid_insumo.Cell[0, i].asstring;
      qrInsumo.Params.parambyname('CODCLIENTE').asstring := '';
      qrInsumo.Params.parambyname('CODVENDEDOR').asstring := '';

      qrInsumo.Params.parambyname('QTDE').asfloat :=
        grid_insumo.Cell[6, i].asfloat;
      qrInsumo.Params.parambyname('MOVIMENTO_ESTOQUE').asfloat :=
        -grid_insumo.Cell[6, i].asfloat;
      qrInsumo.Params.parambyname('ALIQUOTA').asfloat := 0;

      qrInsumo.Params.parambyname('UNIDADE').asstring :=
        grid_insumo.Cell[3, i].asstring;
      qrInsumo.Params.parambyname('CST').asstring := '';
      qrInsumo.Params.parambyname('MOVIMENTO').asinteger := 11;
      qrInsumo.Params.parambyname('DATA').ASDATETIME := dData_sistema;
      qrInsumo.Params.parambyname('ECF_CAIXA').asstring := '';
      qrInsumo.Params.parambyname('ECF_SERIE').asstring := '';
      qrInsumo.Params.parambyname('CUPOM_NUMERO').asstring := '';
      qrInsumo.Params.parambyname('CUPOM_ITEM').asstring := '0';
      qrInsumo.Params.parambyname('CUPOM_MODELO').asstring := '';
      qrInsumo.Params.parambyname('desconto').asfloat := 0;
      qrInsumo.Params.parambyname('UNITARIO').asfloat :=
        grid_insumo.Cell[8, i].asfloat;
      qrInsumo.Params.parambyname('TOTAL').asfloat := grid_insumo.Cell[8, i]
        .asfloat * grid_insumo.Cell[6, i].asfloat;
      qrInsumo.Params.parambyname('base_calculo').asfloat := 0;
      qrInsumo.Params.parambyname('valor_icms').asfloat := 0;
      qrInsumo.ExecSQL;
    end;
    // fazer o lancamento na tabela 32 para dar entrada no produto fabricado no estoque
    qrInsumo.Close;
    qrInsumo.SQL.clear;
    qrInsumo.SQL.add('insert into c000032');
    qrInsumo.SQL.add('(codigo,codnota,serial,numeronota,');
    qrInsumo.SQL.add('codproduto,qtde,movimento_estoque,unitario,desconto,');
    qrInsumo.SQL.add('total,unidade,aliquota,');
    qrInsumo.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
    qrInsumo.SQL.add
      ('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
    qrInsumo.SQL.add('base_calculo, valor_icms)');
    qrInsumo.SQL.add('values');

    qrInsumo.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
    qrInsumo.SQL.add
      (':codproduto,:qtde,:movimento_estoque,:unitario,:desconto,');
    qrInsumo.SQL.add(':total,:unidade,:aliquota,');
    qrInsumo.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
    qrInsumo.SQL.add
      (':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst,');
    qrInsumo.SQL.add(':base_calculo, :valor_icms)');

    qrInsumo.Params.parambyname('CODIGO').asstring :=
      frmPrincipal.codifica('000032', 10);
    qrInsumo.Params.parambyname('CODNOTA').asstring := '';
    qrInsumo.Params.parambyname('SERIAL').asstring := '';
    qrInsumo.Params.parambyname('NUMERONOTA').asstring := '';
    qrInsumo.Params.parambyname('CODPRODUTO').asstring :=
      ed_produto_codigo.text;
    qrInsumo.Params.parambyname('CODCLIENTE').asstring := '';
    qrInsumo.Params.parambyname('CODVENDEDOR').asstring := '';

    qrInsumo.Params.parambyname('QTDE').asfloat := ed_qtde_prod.value;
    qrInsumo.Params.parambyname('MOVIMENTO_ESTOQUE').asfloat :=
      ed_qtde_prod.value;
    qrInsumo.Params.parambyname('ALIQUOTA').asfloat := 0;

    qrInsumo.Params.parambyname('UNIDADE').asstring := ed_produto_unidade.text;
    qrInsumo.Params.parambyname('CST').asstring := '';
    qrInsumo.Params.parambyname('MOVIMENTO').asinteger := 13;
    qrInsumo.Params.parambyname('DATA').ASDATETIME := dData_sistema;
    qrInsumo.Params.parambyname('ECF_CAIXA').asstring := '';
    qrInsumo.Params.parambyname('ECF_SERIE').asstring := '';
    qrInsumo.Params.parambyname('CUPOM_NUMERO').asstring := '';
    qrInsumo.Params.parambyname('CUPOM_ITEM').asstring := '0';
    qrInsumo.Params.parambyname('CUPOM_MODELO').asstring := '';
    qrInsumo.Params.parambyname('desconto').asfloat := 0;
    qrInsumo.Params.parambyname('UNITARIO').asfloat := rcusto_produto;
    qrInsumo.Params.parambyname('TOTAL').asfloat := ed_qtde_prod.value *
      rcusto_produto;
    qrInsumo.Params.parambyname('base_calculo').asfloat := 0;
    qrInsumo.Params.parambyname('valor_icms').asfloat := 0;
    qrInsumo.ExecSQL;

    if Application.messagebox('Fabricação feita com sucesso!' + #13 +
      'Deseja imprimir o pedido?', 'Aviso', mb_yesno + mb_iconquestion) = idyes
    then
    begin
      repeat
        // COO

        sMsg := cECF_Abre_Gerencial(iECF_Modelo, 'PEDIDO DE PRODUÇÃO');
        sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
        if sMsg <> 'OK' then
        begin
          if Application.messagebox
            (pwidechar('Erro ao abrir relatório gerencial!' + #13 + 'Mensagem: '
            + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
            mb_yesno + MB_ICONERROR) = idno then
          begin
            BREAK;
          end;
        end
        else
        begin
          // extrair GNF E GRG

          sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
          sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
        end;
      until sMsg = 'OK';

      if sMsg = 'OK' then
      begin
        sMsg := cECF_Usa_Gerencial(iECF_Modelo,
          '************************************************');
        sMsg := cECF_Usa_Gerencial(iECF_Modelo,
          'Produto: ' + Zerar(ed_produto_codigo.text, 6) + ' - ' +
          ed_produto_nome.text);
        sMsg := cECF_Usa_Gerencial(iECF_Modelo, 'Qtde...: ' + ed_qtde_prod.text
          + ' ' + ed_produto_unidade.text);

        sMsg := cECF_Usa_Gerencial(iECF_Modelo,
          '------------------------------------------------');
        sMsg := cECF_Usa_Gerencial(iECF_Modelo,
          'Indice Descricao                      Quantidade');
        sMsg := cECF_Usa_Gerencial(iECF_Modelo,
          '------------------------------------------------');

        repeat
          for i := 0 to grid_insumo.rowcount - 1 do
          begin
            sMsg := cECF_Usa_Gerencial(iECF_Modelo,
              Zerar(grid_insumo.Cell[0, i].asstring, 6) + ' ' +
              texto_justifica(grid_insumo.Cell[1, i].asstring, 27, ' ',
              taEsquerda) + ' ' + texto_justifica(formatfloat('###,###,##0.000',
              grid_insumo.Cell[6, i].asfloat) + grid_insumo.Cell[7, i].asstring,
              13, ' ', taDireita));

            if sMsg <> 'OK' then
            begin
              if Application.messagebox
                (pwidechar('Erro na impressão do relatório gerencial!' + #13 +
                'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
                mb_yesno + MB_ICONERROR) = idno then
              begin
                BREAK;
              end;
            end;
          end;
        until sMsg = 'OK';

      end;

      if sMsg = 'OK' then
      begin
        repeat
          sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
          if sMsg <> 'OK' then
          begin
            if Application.messagebox
              (pwidechar('Erro ao fechar relatório gerencial!' + #13 +
              'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
              mb_yesno + MB_ICONERROR) = idno then
            begin
              BREAK;
            end;
          end
          else
          begin
            // registrar Gerencial no banco de dados
            with frmmodulo do
            begin
              spNao_Fiscal.Close;
              spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
              spNao_Fiscal.parambyname('ecf').asstring := sECF_Serial;
              spNao_Fiscal.parambyname('data').ASDATETIME := dData_sistema;
              spNao_Fiscal.parambyname('hora').Astime :=
                strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8));
              spNao_Fiscal.parambyname('indice').asstring := 'RG';
              spNao_Fiscal.parambyname('Descricao').asstring :=
                'RELATÓRIO GERENCIAL';
              spNao_Fiscal.parambyname('valor').asfloat := 0;
              spNao_Fiscal.parambyname('COO').asstring := sNumero_Cupom;
              spNao_Fiscal.parambyname('GNF').asstring := sGNF;
              spNao_Fiscal.parambyname('GRG').asstring := sGRG;
              spNao_Fiscal.parambyname('CDC').clear;
              spNao_Fiscal.parambyname('DENOMINACAO').asstring := 'RG';
              spNao_Fiscal.Prepare;
              spNao_Fiscal.Execute;
            end;

          end;
        until sMsg = 'OK';
      end;
    end;

    Close;
  end;

end;

procedure TfrmFabricacao.ed_produto_codigoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmLoc_Produto_Servidor := TfrmLoc_Produto_Servidor.create(self);
  frmLoc_Produto_Servidor.ShowModal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_produto_codigo.text := resultado_pesquisa1;
    ed_produto_nome.text := resultado_pesquisa2;
    ed_produto_unidade.text := resultado_pesquisa3;
    rcusto_produto := resultado_valor2;
    ed_qtde_prod.value := 1;
    filtra_insumo;
    ed_qtde_prod.setfocus;
  end;

end;

procedure TfrmFabricacao.ed_produto_codigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if ed_produto_codigo.text <> '' then
    begin
      ed_produto_codigo.text := Zerar(ed_produto_codigo.text, 6);
      qrProduto.Close;
      qrProduto.SQL.clear;
      qrProduto.SQL.add('select codigo, produto, unidade, precocusto');
      qrProduto.SQL.add('from c000025');
      qrProduto.SQL.add('where codigo = ''' + ed_produto_codigo.text + '''');
      qrProduto.open;
      if qrProduto.recordcount > 0 then
      begin
        ed_produto_nome.text := qrProduto.fieldbyname('produto').asstring;
        ed_produto_unidade.text := qrProduto.fieldbyname('unidade').asstring;
        rcusto_produto := qrProduto.fieldbyname('precocusto').asfloat;
        ed_qtde_prod.value := 1;
        filtra_insumo;
        ed_qtde_prod.setfocus;
      end
      else
      begin
        ed_produto_codigoButtonClick(frmFabricacao);
      end;
    end
    else
    begin
      ed_produto_codigoButtonClick(frmFabricacao);
    end;
  end;
end;

procedure TfrmFabricacao.FormShow(Sender: TObject);
begin
  grid_insumo.ClearRows;
  ed_produto_codigo.setfocus;

end;

procedure TfrmFabricacao.BitBtn1Click(Sender: TObject);
var
  i: integer;
begin
  i := grid_insumo.SelectedRow;

  if i < 0 then
    exit;

  if Application.messagebox('Confirma a exclusão do item selecionado?',
    'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
  begin
    grid_insumo.DeleteRow(i);
  end;
end;

procedure TfrmFabricacao.ed_insumo_codigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if ed_insumo_codigo.text <> '' then
    begin
      ed_insumo_codigo.text := Zerar(ed_insumo_codigo.text, 6);
      qrProduto.Close;
      qrProduto.SQL.clear;
      qrProduto.SQL.add
        ('select c000025.codigo, c000025.produto, c000025.unidade, c000025.precocusto,');
      qrProduto.SQL.add('c000100.estoque_atual as estoque');
      qrProduto.SQL.add('from c000025, c000100');
      qrProduto.SQL.add
        ('where c000025.codigo = c000100.codproduto and c000025.codigo = ''' +
        ed_insumo_codigo.text + '''');
      qrProduto.open;
      if qrProduto.recordcount > 0 then
      begin
        ed_insumo_nome.text := qrProduto.fieldbyname('produto').asstring;
        ed_insumo_un.text := qrProduto.fieldbyname('unidade').asstring;
        if qrProduto.fieldbyname('estoque').asfloat <= 0 then
        begin
          Application.messagebox('Produto não possue estoque!', 'Erro',
            MB_OK + MB_ICONERROR);
          ed_insumo_nome.text := '';
          ed_insumo_un.text := '';
          exit;
        end
        else
          rQtde_estoque := qrProduto.fieldbyname('estoque').asfloat;

        rvalor := qrProduto.fieldbyname('precocusto').asfloat;
        ed_insumo_un2.text := qrProduto.fieldbyname('unidade').asstring;
        ed_insumo_qtde.setfocus;

      end
      else
      begin
        ed_insumo_codigoButtonClick(frmFabricacao);
      end;
    end
    else
    begin
      ed_insumo_codigoButtonClick(frmFabricacao);
    end;
  end;
end;

procedure TfrmFabricacao.ed_insumo_codigoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmLoc_Produto_Servidor := TfrmLoc_Produto_Servidor.create(self);
  frmLoc_Produto_Servidor.ShowModal;

  if resultado_pesquisa1 <> '' then
  begin
    if resultado_valor1 <= 0 then
    begin
      Application.messagebox('Produto não possue estoque!', 'Erro',
        MB_OK + MB_ICONERROR);
      exit;
    end
    else
      rQtde_estoque := resultado_valor1;
    ed_insumo_codigo.text := resultado_pesquisa1;
    ed_insumo_nome.text := resultado_pesquisa2;
    ed_insumo_un.text := resultado_pesquisa3;
    ed_insumo_un2.text := resultado_pesquisa3;
    rvalor := resultado_valor2;
    ed_insumo_qtde.setfocus;
  end;
end;

procedure TfrmFabricacao.bt_insumo_gravarClick(Sender: TObject);
var
  i: integer;
begin
  if ed_produto_codigo.text = '' then
  begin
    Application.messagebox('Favor informar o produto!', 'Erro',
      MB_OK + MB_ICONERROR);
    ed_produto_codigo.setfocus;
    exit;
  end;
  if ed_insumo_codigo.text = '' then
  begin
    Application.messagebox('Favor informar o produto de insumo!', 'Erro',
      MB_OK + MB_ICONERROR);
    ed_insumo_codigo.setfocus;
    exit;
  end;

  if ed_insumo_qtde.value = 0 then
  begin
    Application.messagebox('Favor informar a quantidade!', 'Erro',
      MB_OK + MB_ICONERROR);
    ed_insumo_qtde.setfocus;
    exit;
  end;

  if ed_insumo_qtde_prod.value > rQtde_estoque then
  begin
    Application.messagebox('Produto não possue esta quantidade em estoque!',
      'Erro', MB_OK + MB_ICONERROR);
    exit;
  end;

  i := grid_insumo.AddRow(1);
  grid_insumo.Cell[0, i].asstring := ed_insumo_codigo.text;
  grid_insumo.Cell[1, i].asstring := ed_insumo_nome.text;
  grid_insumo.Cell[2, i].asfloat := ed_insumo_qtde.value;

  grid_insumo.Cell[3, i].asstring := ed_insumo_un.text;

  grid_insumo.Cell[4, i].asfloat := ed_qtde_prod.value;
  grid_insumo.Cell[5, i].asstring := ed_produto_unidade.text;

  grid_insumo.Cell[6, i].asfloat := ed_insumo_qtde_prod.value;
  grid_insumo.Cell[7, i].asstring := ed_insumo_un2.text;
  grid_insumo.Cell[8, i].asfloat := rvalor;

  ed_insumo_codigo.text := '';
  ed_insumo_qtde.value := 0;
  ed_insumo_qtde_prod.value := 0;
  ed_insumo_nome.text := '';
  ed_insumo_un.text := '';
  ed_insumo_un2.text := '';

  ed_insumo_codigo.setfocus;

end;

procedure TfrmFabricacao.ed_qtde_prodKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if grid_insumo.rowcount > 0 then
      bt_ok.setfocus
    else
      ed_insumo_codigo.setfocus;
end;

procedure TfrmFabricacao.ed_insumo_qtdeExit(Sender: TObject);
begin
  ed_insumo_qtde_prod.value := ed_insumo_qtde.value * ed_qtde_prod.value;
end;

procedure TfrmFabricacao.ed_qtde_prodExit(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to grid_insumo.rowcount - 1 do
  begin
    grid_insumo.Cell[4, i].asfloat := ed_qtde_prod.value;
    grid_insumo.Cell[6, i].asfloat := ed_qtde_prod.value * grid_insumo.Cell
      [2, i].asfloat;
  end;
end;

end.
