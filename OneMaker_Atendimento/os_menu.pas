unit os_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, TFlatPanelUnit, Wwkeycb, Menus, Grids, Wwdbigrd, Wwdbgrid, ImgList, DB,
  AdvGlowButton, RzEdit, RzBtnEdt, AdvMenus, AdvMenuStylers, AdvToolBar,
  AdvShapeButton, ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList,
  JvExMask, JvToolEdit;

type
  TfrmOs_menu = class(TForm)
    dsos: TDataSource;
    ImageList1: TImageList;
    wwDBGrid1: TwwDBGrid;
    PopupMenu1: TPopupMenu;
    N2aVia1: TMenuItem;
    CancelarVenda1: TMenuItem;
    Fechar1: TMenuItem;
    Filtro1: TMenuItem;
    LocalizarNmero1: TMenuItem;
    Relatrios2: TMenuItem;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ecliente: TRzButtonEdit;
    dateedit1: TJvDateEdit;
    dateedit2: TJvDateEdit;
    bfiltrar: TAdvGlowButton;
    combosituacao: TComboBox;
    Bevel1: TBevel;
    Panel1: TPanel;
    Label8: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    AdvShapeButton2: TAdvShapeButton;
    AdvShapeButton3: TAdvShapeButton;
    Bevel3: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    loc: TwwIncrementalSearch;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Label1: TLabel;
    Bevel4: TBevel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    bcupomfiscal: TAdvGlowMenuButton;
    Bevel5: TBevel;
    qrcliente2: TZQuery;
    bperiodico: TAdvGlowButton;
    qros_servico: TZQuery;
    qrcliente2CODIGO: TWideStringField;
    qrcliente2NOME: TWideStringField;
    qrcliente2APELIDO: TWideStringField;
    qrcliente2ENDERECO: TWideStringField;
    qrcliente2BAIRRO: TWideStringField;
    qrcliente2CIDADE: TWideStringField;
    qrcliente2UF: TWideStringField;
    qrcliente2CEP: TWideStringField;
    qrcliente2COMPLEMENTO: TWideStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TWideStringField;
    qrcliente2TELEFONE2: TWideStringField;
    qrcliente2TELEFONE3: TWideStringField;
    qrcliente2CELULAR: TWideStringField;
    qrcliente2EMAIL: TWideStringField;
    qrcliente2RG: TWideStringField;
    qrcliente2CPF: TWideStringField;
    qrcliente2FILIACAO: TWideStringField;
    qrcliente2ESTADOCIVIL: TWideStringField;
    qrcliente2CONJUGE: TWideStringField;
    qrcliente2PROFISSAO: TWideStringField;
    qrcliente2EMPRESA: TWideStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TWideStringField;
    qrcliente2REF2: TWideStringField;
    qrcliente2CODVENDEDOR: TWideStringField;
    qrcliente2DATA_CADASTRO: TDateField;
    qrcliente2DATA_ULTIMACOMPRA: TDateField;
    qrcliente2OBS1: TWideStringField;
    qrcliente2OBS2: TWideStringField;
    qrcliente2OBS3: TWideStringField;
    qrcliente2OBS4: TWideStringField;
    qrcliente2OBS5: TWideStringField;
    qrcliente2OBS6: TWideStringField;
    qrcliente2NASCIMENTO: TWideStringField;
    qrcliente2CODREGIAO: TWideStringField;
    qrcliente2CODCONVENIO: TWideStringField;
    qrcliente2CODUSUARIO: TWideStringField;
    qrcliente2NUMERO: TWideStringField;
    qrcliente2RG_ORGAO: TWideStringField;
    qrcliente2RG_ESTADO: TWideStringField;
    qrcliente2RG_EMISSAO: TDateField;
    qrcliente2SEXO: TWideStringField;
    qrcliente2HISTORICO: TBlobField;
    qrcliente2PREVISAO: TDateField;
    qrcliente2CNAE: TWideStringField;
    qrcliente2COD_MUNICIPIO_IBGE: TWideStringField;
    qrcliente2IBGE: TWideStringField;
    qrcliente2TAMANHO_CALCA: TWideStringField;
    qrcliente2TAMANHO_BLUSA: TWideStringField;
    qrcliente2TAMANHO_SAPATO: TWideStringField;
    qrcliente2CORRESP_ENDERECO: TWideStringField;
    qrcliente2CORRESP_BAIRRO: TWideStringField;
    qrcliente2CORRESP_CIDADE: TWideStringField;
    qrcliente2CORRESP_UF: TWideStringField;
    qrcliente2CORRESP_CEP: TWideStringField;
    qrcliente2CORRESP_COMPLEMENTO: TWideStringField;
    qrcliente2RG_PRODUTOR: TWideStringField;
    qrcliente2RESP1_NOME: TWideStringField;
    qrcliente2RESP1_CPF: TWideStringField;
    qrcliente2RESP1_RG: TWideStringField;
    qrcliente2RESP1_PROFISSAO: TWideStringField;
    qrcliente2RESP1_ESTADO_CIVIL: TWideStringField;
    qrcliente2RESP1_ENDERECO: TWideStringField;
    qrcliente2RESP1_BAIRRO: TWideStringField;
    qrcliente2RESP1_CIDADE: TWideStringField;
    qrcliente2RESP1_UF: TWideStringField;
    qrcliente2RESP1_CEP: TWideStringField;
    qrcliente2RESP2_NOME: TWideStringField;
    qrcliente2RESP2_CPF: TWideStringField;
    qrcliente2RESP2_RG: TWideStringField;
    qrcliente2RESP2_PROFISSAO: TWideStringField;
    qrcliente2RESP2_ESTADO_CIVIL: TWideStringField;
    qrcliente2RESP2_ENDERECO: TWideStringField;
    qrcliente2RESP2_BAIRRO: TWideStringField;
    qrcliente2RESP2_CIDADE: TWideStringField;
    qrcliente2RESP2_UF: TWideStringField;
    qrcliente2RESP2_CEP: TWideStringField;
    qrcliente2FOTO: TWideStringField;
    qrcliente2CONDPGTO: TWideStringField;
    qrcliente2TOTALGERAL: TWideStringField;
    qrcliente2FOTO2: TWideMemoField;
    qrcliente2CODFILIAL: TWideStringField;
    qrcliente2CODLOCAL: TWideStringField;
    qros_servicoCODSERVICO: TWideStringField;
    qros_servicoCODTECNICO: TWideStringField;
    qros_servicoDATA: TDateField;
    qros_servicoVALOR: TFloatField;
    qros_servicoCOMPLEMENTO: TWideStringField;
    qros_servicoSERVICO: TWideStringField;
    qros_servicoCODOS: TWideStringField;
    qros_servicoCODCLIENTE: TWideStringField;
    qros_servicoQTDE: TSingleField;
    qros_servicoUNITARIO: TSingleField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure combosituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure ECLIENTEKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure LocalizarNmero1Click(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure Filtro1Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure wwIncrementalSearch1Enter(Sender: TObject);
    procedure dateedit2KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteButtonClick(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure LMDButton1Click(Sender: TObject);
    procedure dateedit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure bperiodicoClick(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOs_menu: TfrmOs_menu;

implementation

uses modulo, principal, os, os_auto,
  xloc_cliente, os_servicosperiodicos;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.FormShow(Sender: TObject);
begin
  FRMMODULO.QRCLIENTE.CLOSE;
  FRMMODULO.QRCLIENTE.SQL.CLEAR;
  FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 ORDER BY NOME');
  FRMMODULO.QRCLIENTE.OPEN;


  FRMMODULO.QRSERVICO.CLOSE;
  FRMMODULO.QRSERVICO.SQL.CLEAR;
  FRMMODULO.QRSERVICO.SQL.ADD('select * from c000011');
  FRMMODULO.QRSERVICO.OPEN;

  DATEEDIT1.TEXT := '01/01/0001';
  DATEEDIT2.TEXT := '01/01/9999';

  ecliente.text := '';
  COMBOSITUACAO.ItemIndex := 0;

  FRMMODULO.QRos.Close;
  FRMMODULO.QRos.SQL.CLEAR;
  FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' ORDER BY CODIGO');
  frmmodulo.qros.Params.ParamByName('datai').asdatetime := dateedit1.date;
  frmmodulo.qros.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  FRMMODULO.QRos.open;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.combosituacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN DATEEDIT1.SETFOCUS;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.ECLIENTEKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if ecliente.text <> '' then
    begin
      qrcliente2.close;
      qrcliente2.sql.Clear;
      qrcliente2.sql.add('select * from c000007 where codigo = '''+frmprincipal.zerarcodigo(copy(ecliente.Text,1,6),6)+'''');
      qrcliente2.Open;
      if qrcliente2.RecordCount > 0 then
      begin
        if qrcliente2.RecordCount = 1 then
        begin
          ecliente.text := qrcliente2.fieldbyname('codigo').asstring +' '+ qrcliente2.fieldbyname('nome').asstring;
          combosituacao.SetFocus;
        end
        else
        begin
          resultado_pesquisa1 := '';
          parametro_pesquisa :=  'select * from c000007 where upper(nome) like '''+ansiuppercase(ecliente.text)+'%'' order by nome';
          frmxloc_cliente := tfrmxloc_cliente.create(self);
          frmxloc_cliente.showmodal;
          if resultado_pesquisa1 <> '' then
          begin
            ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;
              combosituacao.SetFocus;

          end;
        end;
      end
      else
      begin
        application.messagebox('Cliente n�o encontrado!','Aten��o',mb_ok+mb_iconerror);
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  '';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;

        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;
            combosituacao.SetFocus;

        end;
      end;
    end
    else
      eclienteButtonClick(FRMOS_MENU);

  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.DateEdit1Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  IF DATEEDIT1.Text = '  /  /    ' THEN DATEEDIT1.DATE := DATE;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.DateEdit2Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
    IF DATEEDIT2.Text = '  /  /    ' THEN DATEEDIT2.DATE := DATE;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.DateEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.DateEdit2Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.bfecharClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.bincluirClick(Sender: TObject);
begin
  frmmodulo.qros.insert;
  frmmodulo.qros.fieldbyname('codigo').asstring       := frmprincipal.codifica('000051');
  frmmodulo.qros.FieldByName('data').asdatetime       := date;
  frmmodulo.qros.FieldByName('situacao').asstring     := 'ABERTA - Aguardando Confirma��o';
  frmmodulo.qros.FieldByName('cupomfiscal').asinteger := 0;
  frmmodulo.qros.FieldByName('TIPO').asSTRING         := 'INTERNA';
  frmmodulo.qros.FieldByName('ATENDIMENTO').asSTRING  := 'AVULSO';
  cupom_fiscal := false;
  lancando_contasreceber := false;

  if ramo = 1 then frmos := tfrmos.create(self);
  if ramo = 3 then frmos_auto := tfrmos_auto.create(self);
  if ramo = 1 then frmos.showmodal;
  if ramo = 3 then frmos_auto.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.locKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN WWDBGRID1.SETFOCUS;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.LocalizarNmero1Click(Sender: TObject);
begin
  loc.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.balterarClick(Sender: TObject);
begin
  if frmmodulo.qros.fieldbyname('situacao').asstring = 'FECHADA' then
  begin
    Application.MessageBox('Esta Ordem de Servi�o est� fechada! Imposs�vel alter�-la','Aten��o',mb_ok+MB_ICONWARNING);
    wwdbgrid1.setfocus;
    exit;
  end
  else
  begin
    cupom_fiscal := false;
    if ramo = 1 then
    begin
      frmos := tfrmos.create(self);
      frmmodulo.qros.edit;
      frmos.ShowModal;
    end;

    if ramo = 3 then
    begin
      frmos_auto := tfrmos_auto.create(self);
      frmmodulo.qros.edit;
      frmos_auto.ShowModal;
    end;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.Filtro1Click(Sender: TObject);
begin
  dateedit1.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.wwDBGrid1DblClick(Sender: TObject);
begin
    if frmmodulo.qros.fieldbyname('situacao').asstring = 'FECHADA' then
  begin
    if ramo = 1 then
    begin
      frmmodulo.qros.edit;
      frmos := tfrmos.create(self);
      FRMOS.BGRAVAR.VISIBLE := FALSE;
      FRMOS.BCANCELAR.CAPTION := 'Fechar';
      frmos.ShowModal;
    end
    else
    if ramo = 3 then
    begin
      frmmodulo.qros.edit;
      frmos_AUTO := tfrmos_AUTO.create(self);
      FRMOS_AUTO.BGRAVAR.VISIBLE := FALSE;
      FRMOS_AUTO.BCANCELAR.CAPTION := 'Fechar';
      frmos_AUTO.ShowModal;
    end;
  end
  else
  begin
    if ramo = 1 then
    begin
      frmos := tfrmos.create(self);
      frmmodulo.qros.edit;
      frmos.ShowModal;
    end
    else
    if ramo = 3 then
    begin
      frmos_auto := tfrmos_auto.create(self);
      frmmodulo.qros.edit;
      frmos_auto.ShowModal;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then wwDBGrid1DblClick(frmos_menu);
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.locEnter(Sender: TObject);
begin
  FRMMODULO.QROS.INDEXFIELDNAMES := 'CODIGO';
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.wwIncrementalSearch1Enter(Sender: TObject);
begin
  FRMMODULO.QROS.INDEXFIELDNAMES := 'SERIAL';
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.dateedit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN bfiltrar.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.eclienteButtonClick(Sender: TObject);
begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  '';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;

        end;
        combosituacao.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.bfiltrarClick(Sender: TObject);
begin
  FRMMODULO.QRos.Close;
  FRMMODULO.QRos.SQL.CLEAR;
  if combosituacao.text = 'TODAS' then
  begin
    if ecliente.text = '' then
      FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF ORDER BY CODIGO')
    else
      FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER BY CODIGO');
  end
  else
  begin
    if ecliente.text = '' then
      FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' ORDER BY CODIGO')
    else
      FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER BY CODIGO');
  end;

  frmmodulo.qros.Params.ParamByName('datai').asdatetime := dateedit1.date;
  frmmodulo.qros.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  FRMMODULO.QRos.open;

  wwdbgrid1.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.LMDButton1Click(Sender: TObject);
begin
  frmos_servicosperiodicos := tfrmos_servicosperiodicos.create(self);
  frmos_servicosperiodicos.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.dateedit1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
  var fornecedor, nota : string;
begin

   if (ansiuppercase(aFieldName) = ansiuppercase('codigo'))or
      (ansiuppercase(aFieldName) = ansiuppercase('numero_cupom_fiscal'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data'))or
      (ansiuppercase(aFieldName) = ansiuppercase('conclusao_data'))or
      (ansiuppercase(aFieldName) = ansiuppercase('total'))or
      (ansiuppercase(aFieldName) = ansiuppercase('serial'))then

   begin
     FRMMODULO.QRos.Close;
     FRMMODULO.QRos.SQL.CLEAR;
     if combosituacao.text = 'TODAS' then
     begin
       if ecliente.text = '' then
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF ORDER BY CODIGO')
       else
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER by '+afieldname);
     end
     else
     begin
       if ecliente.text = '' then
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' ORDER BY '+afieldname)
       else
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER BY '+afieldname);
     end;

     frmmodulo.qros.Params.ParamByName('datai').asdatetime := dateedit1.date;
     frmmodulo.qros.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     FRMMODULO.QRos.open;
   end;

   if ansiuppercase(afieldname) = 'CLIENTE' then
   begin
     FRMMODULO.QRos.Close;
     FRMMODULO.QRos.SQL.CLEAR;
     if combosituacao.text = 'TODAS' then
     begin
       if ecliente.text = '' then
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF ORDER BY CODIGO')
       else
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER by CODCLIENTE');
     end
     else
     begin
       if ecliente.text = '' then
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' ORDER BY CODCLIENTE')
       else
         FRMMODULO.QRos.SQL.ADD('SELECT * FROM C000051 WHERE DATA >= :DATAI AND DATA <= :DATAF and situacao like '''+combosituacao.text+'%'' and codcliente = '''+copy(ecliente.text,1,6)+''' ORDER BY CODCLIENTE');
     end;

     frmmodulo.qros.Params.ParamByName('datai').asdatetime := dateedit1.date;
     frmmodulo.qros.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     FRMMODULO.QRos.open;
   end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.bperiodicoClick(Sender: TObject);
var vstatus : string;
begin

   qros_servico.close;
   qros_servico.sql.clear;
   qros_servico.sql.add('select * from c000053 where codos = '''+frmmodulo.qros.fieldbyname('codigo').asstring+'''');
   qros_servico.open;

      frmmodulo.qrservicos_periodicos.close;
      frmmodulo.qrservicos_periodicos.sql.clear;
      frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos where codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' and ');
      frmmodulo.qrservicos_periodicos.sql.add('codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' and ');
      frmmodulo.qrservicos_periodicos.sql.add('serie      = '''+frmmodulo.qros.fieldbyname('serial').asstring+'''');
      frmmodulo.qrservicos_periodicos.open;
      frmmodulo.qrservicos_periodicos.Last;

      if frmmodulo.qrservicos_periodicos.RecordCount > 0 then
        vstatus := inttostr(strtoint(frmmodulo.qrservicos_periodicos.FieldByName('status').AsString)+1)
      else
        vstatus := '1';

      frmmodulo.qrservicos_periodicos.Insert;
      frmmodulo.qrservicos_periodicos.FieldByName('codcliente').AsString  := frmmodulo.qrosCODCLIENTE.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('codservico').AsString  := qros_servicoCODSERVICO.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('codtecnico').AsString  := qros_servicoCODTECNICO.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('marca').AsString       := frmmodulo.qrosMARCA.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('modelo').AsString      := frmmodulo.qrosMODELO.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('serie').AsString       := frmmodulo.qrosSERIAL.AsString;
      frmmodulo.qrservicos_periodicos.FieldByName('primeira_manutencao').AsDateTime := frmmodulo.qrosDATA.AsDateTime;
      frmmodulo.qrservicos_periodicos.FieldByName('ultima_manutencao').AsDateTime   := frmmodulo.qrosDATA.AsDateTime;
      frmmodulo.qrservicos_periodicos.FieldByName('periodo').AsInteger    := strtoint(inputbox('Servi�os Peri�dicos','Quantidade de Dias:','30'));

      frmmodulo.qrservicos_periodicos.FieldByName('status').AsString      := vstatus;  // primeira manuten��o
      frmmodulo.qrservicos_periodicos.Post;

      frmmodulo.conexao.commit;

      showmessage('Lan�ado com sucesso!');
end;

// -------------------------------------------------------------------------- //
procedure TfrmOs_menu.wwDBGrid1RowChanged(Sender: TObject);
begin
  if frmmodulo.qros.fieldbyname('st').asinteger = 4 then bperiodico.visible := true else
  bperiodico.visible := false;
end;

end.
