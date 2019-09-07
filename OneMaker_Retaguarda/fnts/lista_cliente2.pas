unit lista_cliente2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton, AdvReflectionImage, Vcl.Imaging.jpeg, dxGDIPlusClasses,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExControls, JvAnimatedImage, JvGIFCtrl;

type
  Tfrmlista_cliente2 = class(TForm)
    Panel1: TPanel;
    fxdesenhar: TfrxDesigner;
    fxcliente: TfrxReport;
    fscliente: TfrxDBDataset;
    qrcliente: TZQuery;
    qrclienteregiao: TStringField;
    qrclientevendedor: TStringField;
    qrclientepessoa: TStringField;
    qrclientesit: TStringField;
    qrcidade: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    dscidade: TDataSource;
    qrregiao: TZQuery;
    qrregiaoregiao: TStringField;
    frxDBDataset2: TfrxDBDataset;
    dsregiao: TDataSource;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrregiaoCODREGIAO: TWideStringField;
    qrregiaoTOTAL: TIntegerField;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrclienteCODIGO: TWideStringField;
    qrclienteNOME: TWideStringField;
    qrclienteAPELIDO: TWideStringField;
    qrclienteENDERECO: TWideStringField;
    qrclienteBAIRRO: TWideStringField;
    qrclienteCIDADE: TWideStringField;
    qrclienteUF: TWideStringField;
    qrclienteCEP: TWideStringField;
    qrclienteCOMPLEMENTO: TWideStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TWideStringField;
    qrclienteTELEFONE2: TWideStringField;
    qrclienteTELEFONE3: TWideStringField;
    qrclienteCELULAR: TWideStringField;
    qrclienteEMAIL: TWideStringField;
    qrclienteRG: TWideStringField;
    qrclienteCPF: TWideStringField;
    qrclienteFILIACAO: TWideStringField;
    qrclienteESTADOCIVIL: TWideStringField;
    qrclienteCONJUGE: TWideStringField;
    qrclientePROFISSAO: TWideStringField;
    qrclienteEMPRESA: TWideStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TWideStringField;
    qrclienteREF2: TWideStringField;
    qrclienteCODVENDEDOR: TWideStringField;
    dtfldDATA_CADASTRO: TDateField;
    dtfldDATA_ULTIMACOMPRA: TDateField;
    qrclienteOBS1: TWideStringField;
    qrclienteOBS2: TWideStringField;
    qrclienteOBS3: TWideStringField;
    qrclienteOBS4: TWideStringField;
    qrclienteOBS5: TWideStringField;
    qrclienteOBS6: TWideStringField;
    qrclienteNASCIMENTO: TWideStringField;
    qrclienteCODREGIAO: TWideStringField;
    qrclienteCODCONVENIO: TWideStringField;
    qrclienteCODUSUARIO: TWideStringField;
    qrclienteNUMERO: TWideStringField;
    qrclienteRG_ORGAO: TWideStringField;
    qrclienteRG_ESTADO: TWideStringField;
    dtfldRG_EMISSAO: TDateField;
    qrclienteSEXO: TWideStringField;
    qrclienteHISTORICO: TBlobField;
    dtfldPREVISAO: TDateField;
    qrclienteCNAE: TWideStringField;
    qrclienteCOD_MUNICIPIO_IBGE: TWideStringField;
    qrclienteIBGE: TWideStringField;
    qrclienteTAMANHO_CALCA: TWideStringField;
    qrclienteTAMANHO_BLUSA: TWideStringField;
    qrclienteTAMANHO_SAPATO: TWideStringField;
    qrclienteCORRESP_ENDERECO: TWideStringField;
    qrclienteCORRESP_BAIRRO: TWideStringField;
    qrclienteCORRESP_CIDADE: TWideStringField;
    qrclienteCORRESP_UF: TWideStringField;
    qrclienteCORRESP_CEP: TWideStringField;
    qrclienteCORRESP_COMPLEMENTO: TWideStringField;
    qrclienteRG_PRODUTOR: TWideStringField;
    qrclienteRESP1_NOME: TWideStringField;
    qrclienteRESP1_CPF: TWideStringField;
    qrclienteRESP1_RG: TWideStringField;
    qrclienteRESP1_PROFISSAO: TWideStringField;
    qrclienteRESP1_ESTADO_CIVIL: TWideStringField;
    qrclienteRESP1_ENDERECO: TWideStringField;
    qrclienteRESP1_BAIRRO: TWideStringField;
    qrclienteRESP1_CIDADE: TWideStringField;
    qrclienteRESP1_UF: TWideStringField;
    qrclienteRESP1_CEP: TWideStringField;
    qrclienteRESP2_NOME: TWideStringField;
    qrclienteRESP2_CPF: TWideStringField;
    qrclienteRESP2_RG: TWideStringField;
    qrclienteRESP2_PROFISSAO: TWideStringField;
    qrclienteRESP2_ESTADO_CIVIL: TWideStringField;
    qrclienteRESP2_ENDERECO: TWideStringField;
    qrclienteRESP2_BAIRRO: TWideStringField;
    qrclienteRESP2_CIDADE: TWideStringField;
    qrclienteRESP2_UF: TWideStringField;
    qrclienteRESP2_CEP: TWideStringField;
    qrclienteFOTO: TWideStringField;
    qrclienteCONDPGTO: TWideStringField;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label1: TLabel;
    combo_relatorio: TComboBox;
    lcliente: TLabel;
    combo_cliente: TComboBox;
    Label3: TLabel;
    combo_vendedor: TComboBox;
    Label7: TLabel;
    combo_regiao: TComboBox;
    Label4: TLabel;
    combo_situacao: TComboBox;
    Label6: TLabel;
    combo_ordem: TComboBox;
    ldia: TLabel;
    combo_dia: TComboBox;
    lmes: TLabel;
    combo_mes: TComboBox;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_vendedorChange(Sender: TObject);
    procedure combo_regiaoChange(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_relatorioChange(Sender: TObject);
    procedure combo_clienteChange(Sender: TObject);
    procedure qrclienteCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_cliente2: Tfrmlista_cliente2;
     const
   sc_DragMove = $f012;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal;

{$R *.dfm}

procedure Tfrmlista_cliente2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmlista_cliente2.FormShow(Sender: TObject);
var
  DIA, MES, ANO: WORD;
begin

  combo_relatorio.ItemIndex := 0;
  combo_cliente.ItemIndex := 0;
  combo_vendedor.ItemIndex := 0;
  combo_regiao.ItemIndex := 0;
  combo_situacao.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;
  combo_dia.ItemIndex := 0;

  try
    DecodeDate(DATE, ANO, MES, DIA);
    combo_mes.ItemIndex := MES - 1;

  except
    combo_mes.ItemIndex := 0;
  end;

end;

procedure Tfrmlista_cliente2.Image1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_cliente2.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_cliente2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_cliente2.combo_vendedorChange(Sender: TObject);
begin
  if combo_vendedor.Text = 'SELECIONAR' then
  begin
    frmloc_funci := tfrmloc_funci.create(self);
    frmloc_funci.showmodal;

    combo_vendedor.Items.Add(frmmodulo.qrfunci.fieldbyname('CODIGO').asstring +
      ' ' + frmmodulo.qrfunci.fieldbyname('nome').asstring);
    combo_vendedor.ItemIndex := combo_vendedor.Items.Count - 1;
  end;
end;

procedure Tfrmlista_cliente2.combo_regiaoChange(Sender: TObject);
begin
  if combo_regiao.Text = 'SELECIONAR' then
  begin
    frmloc_regiao := tfrmloc_regiao.create(self);
    frmloc_regiao.showmodal;

    combo_regiao.Items.Add(frmmodulo.qrregiao.fieldbyname('CODIGO').asstring +
      ' ' + frmmodulo.qrregiao.fieldbyname('REGIAO').asstring);
    combo_regiao.ItemIndex := combo_regiao.Items.Count - 1;
  end;
end;

procedure Tfrmlista_cliente2.bimprimirClick(Sender: TObject);
var
  cliente, VENDEDOR, regiao, tipo, situacao, setor, periodo, ordem, DIA,
    MES: string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := '';
  frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := '';
  frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := '';
  frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := '';
  frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := '';
  frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := '';
  frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := '';

  if combo_cliente.Text = 'TODOS' then
    cliente := ''
  else
  begin
    cliente := ' and codIGO = ''' + copy(combo_cliente.Text, 1, 6) + '''';
    frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: ' +
      combo_cliente.Text;
  end;
  if combo_vendedor.Text = 'TODOS' then
    VENDEDOR := ''
  else
  begin
    VENDEDOR := ' and CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
      6) + '''';
    frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'TÉCNICO: ' +
      combo_vendedor.Text;
  end;
  if combo_regiao.Text = 'TODOS' then
    regiao := ''
  else
  begin
    regiao := ' and codregiao = ''' + copy(combo_regiao.Text, 1, 6) + '''';
    frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := 'VEÍCULO ' +
      combo_regiao.Text + '   ';
  end;
  if combo_situacao.Text = 'TODOS' then
    situacao := ''
  else
  begin
    { if COMBO_SITUACAO.ItemIndex = 3 then
      begin
      situacao := '';
      end
      else }
    situacao := ' and situacao = ' + inttostr(combo_situacao.ItemIndex + 1);;
    frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUAÇÃO: ' +
      combo_situacao.Text;
  end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    qrcliente.MasterSource := nil;
    qrcliente.MasterFields := '';
    qrcliente.IndexFieldNames := '';

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.Add('select * from c000007 where codigo is not null ' +
      situacao + cliente + VENDEDOR + regiao + ' order by ' + combo_ordem.Text);
    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'RELAÇÃO DE CLIENTES';
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000001.fr3');
    fxcliente.ShowReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    qrcliente.MasterSource := nil;
    qrcliente.MasterFields := '';
    qrcliente.IndexFieldNames := '';

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.Add('select * from c000007 where codigo is not null  ' +
      situacao + cliente + VENDEDOR + regiao + ' order by ' + combo_ordem.Text);
    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'FICHA CADASTRAL DE CLIENTES';
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000002.fr3');
    fxcliente.ShowReport;

  end;
  //
  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CIDADE' then
  begin
    qrcidade.close;
    qrcidade.sql.clear;
    qrcidade.sql.Add
      ('SELECT CIDADE, COUNT(CODIGO) qtde_clientes FROM C000007 WHERE codigo is not null  '
      + situacao + cliente + VENDEDOR + regiao + ' GROUP BY CIDADE');
    qrcidade.open;

    qrcliente.MasterSource := dscidade;
    qrcliente.MasterFields := 'cidade';
    qrcliente.IndexFieldNames := 'cidade';

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.Add('select * from c000007 where codigo is not null  ' +
      situacao + cliente + VENDEDOR + regiao + ' order by ' + combo_ordem.Text);
    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'RELAÇÃO DE CLIENTES POR CIDADE';
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000003.fr3');
    fxcliente.ShowReport;
    qrcliente.MasterSource := nil;
    qrcliente.MasterFields := '';
    qrcliente.IndexFieldNames := '';
  end;
  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR REGIÃO' then
  begin
    qrcliente.MasterSource := dsregiao;
    qrcliente.MasterFields := 'codregiao';
    qrcliente.IndexFieldNames := 'codregiao';

    qrregiao.close;
    qrregiao.sql.clear;
    qrregiao.sql.Add
      ('SELECT CODREGIAO, COUNT(CODIGO) TOTAL FROM C000007 WHERE codigo is not null  '
      + situacao + cliente + VENDEDOR + regiao + ' GROUP BY CODREGIAO');
    qrregiao.open;

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.Add('select * from c000007 where codigo is not null  ' +
      situacao + cliente + VENDEDOR + regiao + ' order by ' + combo_ordem.Text);
    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'RELAÇÃO DE CLIENTES POR REGIÃO';
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000004.fr3');
    fxcliente.ShowReport;
    qrcliente.MasterSource := nil;
    qrcliente.MasterFields := '';
    qrcliente.IndexFieldNames := '';
  end;

  if combo_relatorio.Text = 'ETIQUETAS' then
  begin
    qrcliente.MasterSource := nil;
    qrcliente.MasterFields := '';
    qrcliente.IndexFieldNames := '';

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.Add('select * from c000007 where codigo is not null  ' +
      situacao + cliente + VENDEDOR + regiao + ' order by ' + combo_ordem.Text);
    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'ETIQUETAS';
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000006.fr3');
    fxcliente.ShowReport;
  end;

  if combo_relatorio.Text = 'ANIVERSARIANTES - RELAÇÃO' then
  begin
    qrcliente.MasterSource := nil;
    qrcliente.MasterFields := '';
    qrcliente.IndexFieldNames := '';

    qrcliente.close;
    qrcliente.sql.clear;
    if (combo_dia.Text <> 'TODOS') and (combo_mes.Text <> '') then
    begin
      qrcliente.sql.Add('select * from c000007 where NASCIMENTO like ''' +
        combo_dia.Text + '/' + copy(combo_mes.Text, 1, 2) + '%'' ' + situacao +
        VENDEDOR + regiao + ' order by NASCIMENTO');
    end;
    if (combo_dia.Text <> 'TODOS') and (combo_mes.Text = '') then
    begin
      qrcliente.sql.Add('select * from c000007 where NASCIMENTO like ''' +
        combo_dia.Text + '/%'' ' + situacao + VENDEDOR + regiao +
        ' order by NASCIMENTO');
    end;
    if (combo_dia.Text = 'TODOS') and (combo_mes.Text <> '') then
    begin
      qrcliente.sql.Add('select * from c000007 where NASCIMENTO like ''%/' +
        copy(combo_mes.Text, 1, 2) + '/%'' ' + situacao + VENDEDOR + regiao +
        ' order by NASCIMENTO');
    end;

    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'ANIVERSARIANTES';
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000005.fr3');
    fxcliente.ShowReport;
  end;

  if combo_relatorio.Text = 'ANIVERSARIANTES - ETIQUETAS' then
  begin
    qrcliente.MasterSource := nil;
    qrcliente.MasterFields := '';
    qrcliente.IndexFieldNames := '';

    qrcliente.close;
    qrcliente.sql.clear;
    if (combo_dia.Text <> 'TODOS') and (combo_mes.Text <> '') then
    begin
      qrcliente.sql.Add('select * from c000007 where NASCIMENTO like ''' +
        combo_dia.Text + '/' + copy(combo_mes.Text, 1, 2) + '%'' ' + situacao +
        VENDEDOR + regiao + ' order by NASCIMENTO');
    end;
    if (combo_dia.Text <> 'TODOS') and (combo_mes.Text = '') then
    begin
      qrcliente.sql.Add('select * from c000007 where NASCIMENTO like ''' +
        combo_dia.Text + '/%''' + situacao + VENDEDOR + regiao +
        ' order by NASCIMENTO');
    end;
    if (combo_dia.Text = 'TODOS') and (combo_mes.Text <> '') then
    begin
      qrcliente.sql.Add('select * from c000007 where NASCIMENTO like ''%/' +
        copy(combo_mes.Text, 1, 2) + '/%''' + situacao + VENDEDOR + regiao +
        ' order by NASCIMENTO');
    end;

    qrcliente.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'ANIVERSARIANTES';
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000006.fr3');
    fxcliente.ShowReport;
  end;

  frmPrincipal.logUC('Abriu Relatorio Clientes - ' + frmPrincipal.RemoveAcentos(combo_relatorio.Text), 0);

end;

procedure Tfrmlista_cliente2.combo_relatorioChange(Sender: TObject);
begin
  if combo_relatorio.ItemIndex > 4 then // aniversariantes
  begin
    combo_ordem.Visible := TRUE;
    combo_dia.Visible := TRUE;
    combo_mes.Visible := TRUE;

    combo_situacao.Visible := TRUE;

    combo_cliente.Visible := false;
    lcliente.Visible := false;
    combo_vendedor.Visible := TRUE;
    combo_regiao.Visible := TRUE;

    ldia.Visible := TRUE;
    lmes.Visible := TRUE;
  end
  else
  begin
    combo_dia.Visible := false;
    ldia.Visible := false;
    combo_mes.Visible := false;
    lmes.Visible := false;

    combo_cliente.Visible := TRUE;
    combo_vendedor.Visible := TRUE;
    combo_regiao.Visible := TRUE;
    combo_ordem.Visible := TRUE;
    combo_situacao.Visible := TRUE;

    lcliente.Visible := TRUE;
  end;

end;

procedure Tfrmlista_cliente2.combo_clienteChange(Sender: TObject);
begin
  if combo_cliente.Text = 'SELECIONAR' then
  begin
    frmxloc_cliente := tfrmxloc_cliente.create(self);
    frmxloc_cliente.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_cliente.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
      combo_cliente.ItemIndex := combo_cliente.Items.Count - 1;
    end
    else
      combo_cliente.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_cliente2.qrclienteCalcFields(DataSet: TDataSet);
begin
  if qrclienteTIPO.Value = 2 then
    qrclientepessoa.Value := 'JURIDICA'
  else
    qrclientepessoa.Value := 'FISICA';
  if qrclienteSITUACAO.Value = 1 then
    qrclientesit.Value := 'APROVADO';
  if qrclienteSITUACAO.Value = 2 then
    qrclientesit.Value := 'EM OBERVAÇÃO';
  if qrclienteSITUACAO.Value = 3 then
    qrclientesit.Value := 'BLOQUEADO';
  if qrclienteSITUACAO.Value = 4 then
    qrclientesit.Value := 'INATIVO';
  if qrclienteSITUACAO.Value = 5 then
    qrclientesit.Value := 'SPC';

end;

procedure Tfrmlista_cliente2.BitBtn1Click(Sender: TObject);
begin
  if not frmPrincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000001.fr3');
    fxcliente.DesignReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000002.fr3');
    fxcliente.DesignReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CIDADE' then
  begin
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000003.fr3');
    fxcliente.DesignReport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR REGIÃO' then
  begin
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000004.fr3');
    fxcliente.DesignReport;
  end;

  if combo_relatorio.Text = 'ETIQUETAS' then
  begin
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000006.fr3');
    fxcliente.DesignReport;
  end;

  if combo_relatorio.Text = 'ANIVERSARIANTES - RELAÇÃO' then
  begin
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000005.fr3');
    fxcliente.DesignReport;
  end;

  if combo_relatorio.Text = 'ANIVERSARIANTES - ETIQUETAS' then
  begin
    fxcliente.LoadFromFile('\OneMaker\server\rel\f000006.fr3');
    fxcliente.DesignReport;
  end;
end;

end.

(1, 1, 'Autorização de Carregamento e Transporte, modelo 2', 'ACT', '24', '61'),
