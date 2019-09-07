unit xloc_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Buttons,
  AdvGlowButton, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

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
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    FlatPanel2: TFlatPanel;
    Bevel3: TBevel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel4: TBevel;
    Label10: TLabel;
    Bevel5: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    QUERY2: TZQuery;
    PPROCURA: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    DS2: TDataSource;
    Cadastrarnovoprodutos1: TMenuItem;
    Label12: TLabel;
    AlterarProduto1: TMenuItem;
    Bevel7: TBevel;
    bitbtn1: TAdvGlowButton;
    balterar: TAdvGlowButton;
    combo_situacao: TComboBox;
    Bevel9: TBevel;
    Label11: TLabel;
    querysubgrupo: TStringField;
    querygrupo: TStringField;
    querymarca: TStringField;
    queryCODIGO: TWideStringField;
    queryPRODUTO: TWideStringField;
    queryUNIDADE: TWideStringField;
    queryPRECOVENDA: TFloatField;
    queryCODBARRA: TWideStringField;
    queryCODGRUPO: TWideStringField;
    queryCODSUBGRUPO: TWideStringField;
    queryCODMARCA: TWideStringField;
    queryCODFORNECEDOR: TWideStringField;
    queryCODPRODUTO: TWideStringField;
    queryCODFILIAL: TWideStringField;
    queryESTOQUE_INICIAL: TFloatField;
    queryENTRADAS: TFloatField;
    querySAIDAS: TFloatField;
    queryESTOQUE_ATUAL: TFloatField;
    qrinventarioULTIMA_ENTRADA: TDateField;
    qrinventarioULTIMA_SAIDA: TDateField;
    queryNOTA_FISCAL: TWideStringField;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    procedure BITBTN1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure AlterarProduto1Click(Sender: TObject);
    procedure combo_situacaoChange(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_produto: Tfrmxloc_produto;
  voltar: boolean;
  situacao: string;
  const
   sc_DragMove = $f012;
implementation

uses modulo, produto, principal;

{$R *.dfm}

procedure Tfrmxloc_produto.Localizarpor1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = X then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_produto.Referncia1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = X then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_produto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmxloc_produto.Fechar1Click(Sender: TObject);
begin
  if voltar then
    loc.setfocus
  else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    resultado_pesquisa3 := '';
    close;
  end;
end;

procedure Tfrmxloc_produto.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_down then
  begin
    if PPROCURA.Visible then
      wwDBGrid1.setfocus
    else
      GRID.setfocus;
  end;
end;

procedure Tfrmxloc_produto.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
      resultado_pesquisa3 := query.fieldbyname('codbarra').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_produto.locKeyPress(Sender: TObject; var Key: Char);
var
  ref, tipo, novoloc: string;
begin
  if Key = #13 then
  begin
    if combo_referencia.ItemIndex = 0 then
      ref := ''
    else
      ref := '%';
    if combo_localizar.ItemIndex < 3 then
    begin
      case combo_localizar.ItemIndex of
        0:
          tipo := 'prod.PRODUTO';
        1:
          tipo := 'prod.CODIGO';
        2:
          tipo := 'prod.CODBARRA';

      end;
      try
        query.close;
        query.sql.clear;
        if loc.text = '' then
        begin
          query.sql.Add
            ('select select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,');
          query.sql.Add
            ('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '
            + situacao + ' and prod.codigo is null');
        end

        else if loc.text = '*' then
        begin
          query.sql.Add
            ('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,');
          query.sql.Add
            ('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '
            + situacao);
        end
        else
        begin
          query.sql.Add
            ('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,');
          query.sql.Add
            ('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '
            + situacao + ' and upper(' + tipo + ') like ''' + ref + loc.text +
            '%'' order by ' + tipo);
        end;

        query.open;

        if query.RecordCount = 0 then // procura na grade
        begin
          // procura barras grade
          frmmodulo.qrgrade_produto.open;
          if frmmodulo.qrgrade_produto.Locate('codbarra', loc.text,
            [loPartialKey]) then
          begin
            tipo := 'prod.CODIGO';
            novoloc :=  frmmodulo.qrgrade_produto.FieldByName('codproduto').AsString;
          end;
          query.close;
          query.sql.clear;
          query.sql.Add
            ('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,');
          query.sql.Add
            ('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '
            + situacao + ' and upper(' + tipo + ') like ''' + ref + novoloc +
            '%'' order by ' + tipo);
          query.open;
        end;

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
          query.sql.Add
            ('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,');
          query.sql.Add
            ('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '
            + situacao + ' and prod.CODFORNECEDOR = ''' +
            QUERY2.fieldbyname('codigo').asstring + ''' order by prod.produto');
          query.open;
          PPROCURA.Visible := false;
        end;
        if combo_localizar.ItemIndex = 4 then
        begin
          query.close;
          query.sql.clear;
          query.sql.Add
            ('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,');
          query.sql.Add
            ('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '
            + situacao + ' and  prod.CODmarca = ''' +
            QUERY2.fieldbyname('codigo').asstring + ''' order by prod.produto');
          query.open;
          PPROCURA.Visible := false;
        end;

      end
      else
      begin
        if query.RecNo > 0 then
        begin
          resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
          resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
          resultado_pesquisa3 := query.fieldbyname('codbarra').asstring;
          close;
        end;
      end;
    end;
  end;
end;

procedure Tfrmxloc_produto.locEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_produto.locExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmxloc_produto.FormShow(Sender: TObject);
begin
  if combo_situacao.ItemIndex = 0 then
    situacao := ' and situacao <> 1';
  if combo_situacao.ItemIndex = 1 then
    situacao := ' and situacao = 1';
  if combo_situacao.ItemIndex = 2 then
    situacao := '';

  atualiza_produto_novo := false;
  voltar := false;

  if loc.text = '' then
  begin
    query.close;
    query.sql.clear;
    query.sql.Add
      ('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,');
    query.sql.Add
      ('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and prod.codigo is null');
    query.open;
    loc.setfocus;
  end
  else
  begin
    query.close;
    query.sql.clear;
    query.sql.Add
      ('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,');
    query.sql.Add
      ('prod.codfornecedor,estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '
      + situacao + ' and upper(prod.produto) like ''' + ansiuppercase(loc.text)
      + '%'' order by produto');
    query.open;
    GRID.setfocus;
  end;

  if frmmodulo.qrconfig.fieldbyname('ramo_atividade').asinteger = 2 then
    // supermercado
    combo_localizar.ItemIndex := 2;
end;

procedure Tfrmxloc_produto.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_produto.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  voltar := false;
end;

procedure Tfrmxloc_produto.locChange(Sender: TObject);
var
  ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then
    ref := ''
  else
    ref := '%';
  if combo_localizar.ItemIndex < 3 then
  begin
    //
  end
  else
  begin
    if combo_localizar.ItemIndex = 3 then // FORNECEDOR
    begin
      QUERY2.close;
      QUERY2.sql.clear;
      if loc.text = '' then
        QUERY2.sql.Add('select * from c000009 where codigo = ''xxxxxx''')
      else
        QUERY2.sql.Add('SELECT * FROM C000009 where upper(NOME) like ''' + ref +
          loc.text + '%'' order by NOME');
      QUERY2.open;
      if QUERY2.RecordCount > 0 then
      begin
        PPROCURA.Visible := true;
      end
      else
        PPROCURA.Visible := false;

    end;

    if combo_localizar.ItemIndex = 4 then // marca
    begin
      QUERY2.close;
      QUERY2.sql.clear;
      if loc.text = '' then
        QUERY2.sql.Add('select * from c000019 where codigo = ''xxxxxx''')
      else
        QUERY2.sql.Add('SELECT * FROM C000019 where upper(NOME) like ''' + ref +
          loc.text + '%'' order by NOME');
      QUERY2.open;
      if QUERY2.RecordCount > 0 then
      begin
        PPROCURA.Visible := true;
      end
      else
        PPROCURA.Visible := false;
    end;

  end;

end;

procedure Tfrmxloc_produto.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
  resultado_pesquisa3 := query.fieldbyname('codbarra').asstring;
  close;

end;

procedure Tfrmxloc_produto.wwDBGrid1Enter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_produto.wwDBGrid1Exit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  voltar := false;
end;

procedure Tfrmxloc_produto.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    locKeyPress(frmxloc_produto, Key);
  loc.setfocus;
end;

procedure Tfrmxloc_produto.BITBTN1Click(Sender: TObject);
begin
  busca_produto := 2;
  if frmprincipal.acesso(codigo_usuario, '02.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!', 'Atenção',
      mb_ok + MB_ICONERROR);
    exit;
  end;

  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
//      frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
//      frmproduto_LIGTH.showmodal;
    end
    else
    begin
      if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'FARMA'
      then
      begin
//        frmproduto_FARMA := tfrmproduto_FARMA.create(self);
//        frmproduto_FARMA.showmodal;
      end
      else
      begin
        if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'PECAS'
        then
        begin
  //        frmproduto_AUTO := tfrmproduto_AUTO.create(self);
  //        frmproduto_AUTO.showmodal;
        end;
      end;
    end;
  end;

  atualiza_produto_novo := true;

  query.Refresh;
end;

procedure Tfrmxloc_produto.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  loc.setfocus;
end;

procedure Tfrmxloc_produto.balterarClick(Sender: TObject);
var
  vrecno: INTEGER;
begin

  vrecno := query.RecNo;
  busca_produto := 1;
  busca_produto_codigo := query.fieldbyname('codigo').asstring;

  if frmprincipal.acesso(codigo_usuario, '02.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!', 'Atenção',
      mb_ok + MB_ICONERROR);
    exit;
  end;

  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
//      frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
//      frmproduto_LIGTH.showmodal;
    end
    else
    begin
      if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'FARMA'
      then
      begin
//        frmproduto_FARMA := tfrmproduto_FARMA.create(self);
//        frmproduto_FARMA.showmodal;
      end
      else
      begin
        if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'PECAS'
        then
        begin
  //        frmproduto_AUTO := tfrmproduto_AUTO.create(self);
  //        frmproduto_AUTO.showmodal;
        end;
      end;
    end;
  end;

  query.Refresh;
  query.RecNo := vrecno;

end;

procedure Tfrmxloc_produto.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxloc_produto.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmxloc_produto.AlterarProduto1Click(Sender: TObject);
begin
  balterarClick(frmxloc_produto);
end;

procedure Tfrmxloc_produto.combo_situacaoChange(Sender: TObject);
begin
  if combo_situacao.ItemIndex = 0 then
    situacao := ' and situacao <> 1';
  if combo_situacao.ItemIndex = 1 then
    situacao := ' and situacao = 1';
  if combo_situacao.ItemIndex = 2 then
    situacao := '';
end;

end.
