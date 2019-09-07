unit contaspagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  Wwdbigrd, Wwdbgrid, Collection, ExtCtrls, StdCtrls, TFlatPanelUnit, Mask,
  Buttons, wwdblook, wwDialog, wwidlg,
  Menus, DBCtrls,
  ImgList, Wwkeycb, AdvGlowButton, UCBase,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, System.ImageList,
  JvToolEdit, JvExMask, JvBaseEdits;

type
  Tfrmcontaspagar = class(TForm)
    qrcontaspagar: TZQuery;
    wwDBGrid1: TwwDBGrid;
    dscontaspagar: TDataSource;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Pagamento1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Extornar1: TMenuItem;
    Fechar1: TMenuItem;
    otalizar1: TMenuItem;
    Filtro1: TMenuItem;
    DBEdit1: TDBEdit;
    ImageList1: TImageList;
    Qrsoma: TZQuery;
    FlatPanel7: TFlatPanel;
    pselecao: TFlatPanel;
    Label19: TLabel;
    rselecao: TJvCalcEdit;
    Panel1: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText3: TDBText;
    Label6: TLabel;
    DBText4: TDBText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBText8: TDBText;
    bnf: TAdvGlowButton;
    Panel2: TPanel;
    Label7: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    combo_situacao: TComboBox;
    COMBOFORNECEDOR: TwwDBLookupCombo;
    combo_periodo: TComboBox;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    bitbtn1: TAdvGlowButton;
    DBText6: TDBText;
    DBText7: TDBText;
    combo_loc: TComboBox;
    LOC: TwwIncrementalSearch;
    Label1: TLabel;
    Panel3: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bpagamento: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    bextornar: TAdvGlowButton;
    bdesliga_filtro: TBitBtn;
    Panel4: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    btotal: TButton;
    Label2: TLabel;
    Image2: TImage;
    Label15: TLabel;
    Image6: TImage;
    Image7: TImage;
    Label22: TLabel;
    Label23: TLabel;
    Image8: TImage;
    qrcontaspagarsituacao2: TIntegerField;
    qrcontaspagarfornecedor: TStringField;
    qrcontaspagarconta: TStringField;
    qrcontaspagarCODIGO: TWideStringField;
    qrcontaspagarCODCONTA: TWideStringField;
    qrcontaspagarCODFORNECEDOR: TWideStringField;
    qrcontaspagarVALOR: TFloatField;
    qrcontaspagarVALORPAGO: TFloatField;
    qrcontaspagarLIQUIDO: TFloatField;
    qrcontaspagarDESCONTO: TFloatField;
    qrcontaspagarACRESCIMO: TFloatField;
    qrcontaspagarDOCUMENTO: TWideStringField;
    qrcontaspagarNOTAFISCAL: TWideStringField;
    qrcontaspagarHISTORICO: TWideStringField;
    qrcontaspagarC: TWideStringField;
    qrcontaspagarE: TWideStringField;
    qrcontaspagarFILTRO: TIntegerField;
    qrcontaspagarESPECIE: TWideStringField;
    qrcontaspagarSITUACAO: TIntegerField;
    qrcontaspagarCODNOTA: TWideStringField;
    qrcontaspagarMOVIMENTO: TIntegerField;
    qrcontaspagarCODCAIXA: TWideStringField;
    UCControls1: TUCControls;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    rpagar: TJvCalcEdit;
    rpaga: TJvCalcEdit;
    qrcontaspagarDATA_VENCIMENTO: TDateField;
    qrcontaspagarDATA_EMISSAO: TDateField;
    qrcontaspagarDATA_PAGAMENTO: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure COMBOFORNECEDOREnter(Sender: TObject);
    procedure COMBOFORNECEDORExit(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure rpagarKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure qrcontaspagarAfterInsert(DataSet: TDataSet);
    procedure qrcontaspagarCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure bnfClick(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure bextornarClick(Sender: TObject);
    procedure bpagamentoClick(Sender: TObject);
    procedure Pagamento1Click(Sender: TObject);
    procedure Extornar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure LOCEnter(Sender: TObject);
    procedure LOCExit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure rselecaoChange(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Filtro1Click(Sender: TObject);
    procedure combo_periodoKeyPress(Sender: TObject; var Key: Char);
    procedure combo_locKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bdesliga_filtroClick(Sender: TObject);
    procedure btotalClick(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar: Tfrmcontaspagar;
  NAO_INCLUIR: BOOLEAN;
    const
   sc_DragMove = $f012;
implementation

uses modulo, contaspagar_ficha, contaspagar_fichaalteracao,
  contaspagar_pgto, principal, lista_pagar2, contaspagar_data,
  contaspagar_nf;

{$R *.dfm}

procedure Tfrmcontaspagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmmodulo.Conexao.Rollback;

  Action := CAFREE;
end;

procedure Tfrmcontaspagar.FormShow(Sender: TObject);
begin

  frmmodulo.Conexao.Rollback;

  bdesliga_filtroClick(frmcontaspagar);

  rselecao.Value := 0;
  pselecao.visible := false;

  frmmodulo.qrfornecedor.close;
  frmmodulo.qrfornecedor.sql.clear;
  frmmodulo.qrfornecedor.sql.Add('select * from c000009 order by nome');
  frmmodulo.qrfornecedor.open;
  frmmodulo.qrfornecedor.indexfieldnames := 'nome';

  frmmodulo.qrplano.close;
  frmmodulo.qrplano.sql.clear;
  frmmodulo.qrplano.sql.Add('select * from c000035 order by conta');
  frmmodulo.qrplano.open;
  frmmodulo.qrplano.indexfieldnames := 'conta';

  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.Add
    ('SELECT * FROM C000046 WHERE SITUACAO = 1 ORDER BY DATA_VENCIMENTO');
  qrcontaspagar.open;

  btotalClick(frmcontaspagar);

  wwDBGrid1.SETFOCUS;
end;

procedure Tfrmcontaspagar.COMBOFORNECEDOREnter(Sender: TObject);
begin
  COMBOFORNECEDOR.Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar.COMBOFORNECEDORExit(Sender: TObject);
begin
  COMBOFORNECEDOR.Color := clwindow;
end;

procedure Tfrmcontaspagar.DateEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcontaspagar.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontaspagar.rpagarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    COMBOFORNECEDOR.SETFOCUS;
end;

procedure Tfrmcontaspagar.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar.DBEdit1Change(Sender: TObject);
begin
  try
    if qrcontaspagar.FieldByName('SITUACAO').ASINTEGER = 2 then
    begin

      balterar.enabled := false;
      bpagamento.enabled := false;
      bextornar.enabled := true;

    end
    else
    begin
      balterar.enabled := true;
      bpagamento.enabled := true;
      bextornar.enabled := false;
    end;

    if qrcontaspagar.FieldByName('codnota').asstring <> '' then
      bnf.visible := true
    else
      bnf.visible := false;
  except
  end;
end;

procedure Tfrmcontaspagar.bincluirClick(Sender: TObject);
begin
  NAO_INCLUIR := false;
  frmcontaspagar_ficha := tfrmcontaspagar_ficha.create(self);
  frmcontaspagar_ficha.showmodal;

  wwDBGrid1.SETFOCUS;
end;

procedure Tfrmcontaspagar.balterarClick(Sender: TObject);
begin
  if qrcontaspagar.FieldByName('situacao').ASINTEGER = 1 then
  begin
    frmcontaspagar_FICHAALTERACAO :=
      tfrmcontaspagar_FICHAALTERACAO.create(self);
    with frmcontaspagar_FICHAALTERACAO do
    begin
      DateEdit1.DATE := qrcontaspagar.FieldByName('data_emissao').asdatetime;
      EFORNECEDOR.TEXT := qrcontaspagar.FieldByName('codfornecedor').asstring;
      enomefornecedor.TEXT := qrcontaspagar.FieldByName('FORNECEDOR').asstring;
      enomeconta.TEXT := qrcontaspagar.FieldByName('conta').asstring;
      ECONTa.TEXT := qrcontaspagar.FieldByName('codconta').asstring;
      EDIT5.TEXT := qrcontaspagar.FieldByName('notafiscal').asstring;
      RVALOR.Value := qrcontaspagar.FieldByName('valor').asfloat;
      EDIT1.TEXT := qrcontaspagar.FieldByName('documento').asstring;
      EDIT6.TEXT := qrcontaspagar.FieldByName('historico').asstring;
      COMBOESPECIE.TEXT := qrcontaspagar.FieldByName('especie').asstring;
      EDIT2.TEXT := qrcontaspagar.FieldByName('C').asstring;
      EDIT3.TEXT := qrcontaspagar.FieldByName('E').asstring;
      DateEdit2.DATE := qrcontaspagar.FieldByName('data_vencimento').asdatetime;
    end;
    frmcontaspagar_FICHAALTERACAO.showmodal;
  end
  else
  begin
    application.messagebox
      ('Esta conta já foi paga! Impossível fazer alteração!', 'Atenção',
      mb_ok + MB_ICONWARNING);
  end;

  wwDBGrid1.SETFOCUS;
end;

procedure Tfrmcontaspagar.wwDBGrid1Enter(Sender: TObject);
begin
  NAO_INCLUIR := true;
end;

procedure Tfrmcontaspagar.wwDBGrid1Exit(Sender: TObject);
begin
  NAO_INCLUIR := false;
end;

procedure Tfrmcontaspagar.qrcontaspagarAfterInsert(DataSet: TDataSet);
begin
  if NAO_INCLUIR then
    qrcontaspagar.Cancel;

end;

procedure Tfrmcontaspagar.qrcontaspagarCalcFields(DataSet: TDataSet);
begin
  if qrcontaspagar.FieldByName('SITUACAO').ASINTEGER = 2 then
    qrcontaspagar.FieldByName('SITUACAO2').ASINTEGER := 2;
  if qrcontaspagar.FieldByName('SITUACAO').ASINTEGER = 1 then
  begin
    if qrcontaspagar.FieldByName('DATA_VENCIMENTO').asdatetime = DATE then
      qrcontaspagar.FieldByName('SITUACAO2').ASINTEGER := 4;
    if qrcontaspagar.FieldByName('DATA_VENCIMENTO').asdatetime < DATE then
      qrcontaspagar.FieldByName('SITUACAO2').ASINTEGER := 3;
    if qrcontaspagar.FieldByName('DATA_VENCIMENTO').asdatetime > DATE then
      qrcontaspagar.FieldByName('SITUACAO2').ASINTEGER := 1;
  end;
end;

procedure Tfrmcontaspagar.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
var
  situacao, fornecedor, periodo: string;
begin
  if AFieldName = 'situacao2' then
  begin
    // plegenda.Visible := true;
    // BitBtn28.SetFocus;
  end;

  if (ansiuppercase(AFieldName) = ansiuppercase('data_vencimento')) or
    (ansiuppercase(AFieldName) = ansiuppercase('historico')) or
    (ansiuppercase(AFieldName) = ansiuppercase('notafiscal')) or
    (ansiuppercase(AFieldName) = ansiuppercase('documento')) or
    (ansiuppercase(AFieldName) = ansiuppercase('especie')) or
    (ansiuppercase(AFieldName) = ansiuppercase('valor')) then
  begin
    if combo_situacao.itemindex = 0 then
      situacao := ' and situacao = 1 ';
    if combo_situacao.itemindex = 1 then
      situacao := ' and situacao = 1 and data_vencimento >= :datax ';
    if combo_situacao.itemindex = 2 then
      situacao := ' and situacao = 2 ';
    if combo_situacao.itemindex = 3 then
      situacao := '';

    if COMBOFORNECEDOR.TEXT = '' then
      fornecedor := ''
    else
      fornecedor := ' and codfornecedor = ''' +
        frmmodulo.qrfornecedor.FieldByName('codigo').asstring + '''';

    if combo_periodo.itemindex = 0 then
      periodo :=
        ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
    if combo_periodo.itemindex = 1 then
      periodo :=
        ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
    if combo_periodo.itemindex = 2 then
      periodo :=
        ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';

    qrcontaspagar.close;
    qrcontaspagar.sql.clear;
    qrcontaspagar.sql.Add('select * from c000046 where codigo is not null' +
      situacao + fornecedor + periodo + ' order by ' + AFieldName);
    if combo_situacao.itemindex = 1 then
      qrcontaspagar.Params.ParamByName('datax').asdatetime := DATE;
    qrcontaspagar.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
    qrcontaspagar.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
    qrcontaspagar.open;
  end;

  if ansiuppercase(AFieldName) = 'FORNECEDOR' then
  begin
    if combo_situacao.itemindex = 0 then
      situacao := ' and situacao = 1 ';
    if combo_situacao.itemindex = 1 then
      situacao := ' and situacao = 1 and data_vencimento >= :datax ';
    if combo_situacao.itemindex = 2 then
      situacao := ' and situacao = 2 ';
    if combo_situacao.itemindex = 3 then
      situacao := '';

    if COMBOFORNECEDOR.TEXT = '' then
      fornecedor := ''
    else
      fornecedor := ' and codfornecedor = ''' +
        frmmodulo.qrfornecedor.FieldByName('codigo').asstring + '''';

    if combo_periodo.itemindex = 0 then
      periodo :=
        ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
    if combo_periodo.itemindex = 1 then
      periodo :=
        ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
    if combo_periodo.itemindex = 2 then
      periodo :=
        ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';

    qrcontaspagar.close;
    qrcontaspagar.sql.clear;
    qrcontaspagar.sql.Add('select * from c000046 where codigo is not null' +
      situacao + fornecedor + periodo + ' order by codfornecedor');
    if combo_situacao.itemindex = 1 then
      qrcontaspagar.Params.ParamByName('datax').asdatetime := DATE;
    qrcontaspagar.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
    qrcontaspagar.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
    qrcontaspagar.open;
  end;

end;

procedure Tfrmcontaspagar.BitBtn1Click(Sender: TObject);
var
  situacao, fornecedor, periodo: string;
begin
  bdesliga_filtroClick(frmcontaspagar);

  if combo_situacao.itemindex = 0 then
    situacao := ' and situacao = 1 ';
  if combo_situacao.itemindex = 1 then
    situacao := ' and situacao = 2 ';
  if combo_situacao.itemindex = 2 then
    situacao := '';

  if COMBOFORNECEDOR.TEXT = '' then
    fornecedor := ''
  else
    fornecedor := ' and codfornecedor = ''' + frmmodulo.qrfornecedor.FieldByName
      ('codigo').asstring + '''';

  if combo_periodo.itemindex = 0 then
    periodo := ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
  if combo_periodo.itemindex = 1 then
    periodo := ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
  if combo_periodo.itemindex = 2 then
    periodo := ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';

  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.Add('select * from c000046 where codigo is not null' +
    situacao + fornecedor + periodo + ' order by data_vencimento');
  qrcontaspagar.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
  qrcontaspagar.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  qrcontaspagar.open;
  btotalClick(frmcontaspagar);

end;

procedure Tfrmcontaspagar.bnfClick(Sender: TObject);
begin
  frmcontaspagar_nf := tfrmcontaspagar_nf.create(self);
  with frmcontaspagar_nf do
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.sql.Add('select * from c000087 where codigo = ''' +
      qrcontaspagar.FieldByName('codnota').asstring + '''');
    qrnota.open;
    if qrnota.recordcount > 0 then
    begin
      qritem.close;
      qritem.sql.clear;
      qritem.sql.Add('select * from c000088 where codnota = ''' +
        qrnota.FieldByName('codigo').asstring + '''');
      qritem.sql.Add('ordeR by item');
      qritem.open;
      frmcontaspagar_nf.showmodal;
    end
    else
    begin
      application.messagebox('Nota Fiscal não encontrada! Favor verificar!',
        'Atenção', mb_ok + mb_iconerror);
      frmcontaspagar_nf.destroy;
    end;

  end;

end;

procedure Tfrmcontaspagar.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcontaspagar.Alterar1Click(Sender: TObject);
begin
  if balterar.enabled then
    balterar.OnClick(frmcontaspagar);
end;

procedure Tfrmcontaspagar.bextornarClick(Sender: TObject);
var
  texto: PWideChar;
begin
  if frmprincipal.autentica('Extornar Conta', 4) then
  begin
    if qrcontaspagar.FieldByName('situacao').ASINTEGER = 1 then
    begin
      application.messagebox('Esta conta não foi paga!', 'Aviso',
        mb_ok + MB_ICONWARNING);
    end
    else
    begin
      frmmodulo.qrcaixa_operador.open;
      frmmodulo.qrcaixa_operador.locate('codigo', '000099',
        [loCaseInsensitive]);
      if qrcontaspagar.FieldByName('data_pagamento')
        .asdatetime = frmmodulo.qrcaixa_operador.FieldByName('data').asdatetime
      then
      begin
        if qrcontaspagar.FieldByName('movimento').ASINTEGER = 99 then
        begin
          application.messagebox
            ('Esta conta foi paga com várias formas de pagamento ou em conjunto com outras contas. Isto impede que seja feito um lançamento automático do estorno no caixa. Favor entrar no caixa, e providenciar o acerto manualmente.',
            'Aviso', mb_ok + MB_ICONINFORMATION);
          qrcontaspagar.edit;
          qrcontaspagar.FieldByName('situacao').ASINTEGER := 1;
          qrcontaspagar.FieldByName('filtro').ASINTEGER := 0;
          qrcontaspagar.FieldByName('valorpago').asfloat := 0;
          qrcontaspagar.FieldByName('data_pagamento').asstring := '';
          qrcontaspagar.post;
          frmmodulo.Conexao.commit;
          qrcontaspagar.Refresh;
        end
        else
        begin
          if frmprincipal.autentica_caixa('Acesso ao Caixa', 0) then
          begin
            if (frmmodulo.qrcaixa_operador.FieldByName('codigo')
              .asstring = qrcontaspagar.FieldByName('codcaixa').asstring) then
            begin
              if frmmodulo.qrcaixa_operador.FieldByName('situacao').ASINTEGER = 1
              then // caixa aberto
              begin
                frmmodulo.qrcaixa_mov.open;
                frmmodulo.qrcaixa_mov.Insert;
                frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring :=
                  frmprincipal.codifica('000044');
                frmmodulo.qrcaixa_mov.FieldByName('codcaixa').asstring :=
                  frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
                frmmodulo.qrcaixa_mov.FieldByName('codoperador').asstring :=
                  frmmodulo.qrcaixa_operador.FieldByName('CODIGO').asstring;
                frmmodulo.qrcaixa_mov.FieldByName('data').asstring :=
                  frmmodulo.qrcaixa_operador.FieldByName('DATA').asstring;
                frmmodulo.qrcaixa_mov.FieldByName('saida').asfloat := 0;
                if qrcontaspagar.FieldByName('movimento').ASINTEGER = 25 then
                // pagamento com caixa
                begin
                  frmmodulo.qrcaixa_mov.FieldByName('entrada').asfloat :=
                    qrcontaspagar.FieldByName('valorpago').asfloat;
                end
                else
                begin
                  frmmodulo.qrcaixa_mov.FieldByName('entrada').asfloat := 0;
                end;
                frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat :=
                  (qrcontaspagar.FieldByName('valorpago').asfloat) * (-1);
                frmmodulo.qrcaixa_mov.FieldByName('codconta').asstring :=
                  qrcontaspagar.FieldByName('codconta').asstring;
                frmmodulo.qrcaixa_mov.FieldByName('movimento').ASINTEGER :=
                  qrcontaspagar.FieldByName('movimento').ASINTEGER;
                frmmodulo.qrcaixa_mov.FieldByName('historico').asstring :=
                  'Estorno de Pagto. Docto. ' + qrcontaspagar.FieldByName
                  ('documento').asstring;
                frmmodulo.qrcaixa_mov.post;

                qrcontaspagar.edit;
                qrcontaspagar.FieldByName('situacao').ASINTEGER := 1;
                qrcontaspagar.FieldByName('filtro').ASINTEGER := 0;
                qrcontaspagar.FieldByName('valorpago').asfloat := 0;
                qrcontaspagar.FieldByName('data_pagamento').asstring := '';
                qrcontaspagar.post;
                frmmodulo.Conexao.commit;
                qrcontaspagar.Refresh;
              end
              else
              begin
                application.messagebox
                  ('Não há caixa aberto para este operador! Impossível prosseguir com o estorno!',
                  'Aviso', mb_ok + MB_ICONWARNING);
              end;
            end
            else
            begin
              texto := PWideChar('Esta conta foi baixada pelo caixa ' +
                qrcontaspagar.FieldByName('codcaixa').asstring +
                '. Apenas ele tem autorização para extorná-la!');
              application.messagebox(texto, 'Atenção', mb_ok + MB_ICONWARNING);
            end;
          end
          else
          begin
            application.messagebox('Acesso não permitido!', 'Aviso',
              mb_ok + MB_ICONWARNING);
          end;
        end;
      end
      else
      begin
        texto := PWideChar
          ('O pagamento desta conta foi lançado no caixa do dia: ' +
          qrcontaspagar.FieldByName('data_pagamento').asstring +
          '. Não será possível fazer um lançamento de estorno no caixa atual! Deseja prosseguir com o estorno?');
        if application.messagebox(texto, 'Atenção', mb_yesno + MB_ICONWARNING) = idyes
        then
        begin
          qrcontaspagar.edit;
          qrcontaspagar.FieldByName('situacao').ASINTEGER := 1;
          qrcontaspagar.FieldByName('filtro').ASINTEGER := 0;
          qrcontaspagar.FieldByName('valorpago').asfloat := 0;
          qrcontaspagar.FieldByName('data_pagamento').asstring := '';
          qrcontaspagar.post;
          frmmodulo.Conexao.commit;
          qrcontaspagar.Refresh;
        end;
      end;

      frmprincipal.logUC('Estornou Conta a Pagar Conta Nr: ' +
      qrcontaspagar.fieldbyname('documento').asstring +
      ' Fornecedor: ' +  qrcontaspagar.fieldbyname('fornecedor').asstring, 3);

    end;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

end;

procedure Tfrmcontaspagar.bpagamentoClick(Sender: TObject);
var
  valor: real;
begin
  if rselecao.Value = 0 then
    wwDBGrid1.OnDblClick(frmcontaspagar);
  if not qrcontaspagar.locate('filtro', 1, [loCaseInsensitive]) then
  begin
    showmessage('Favor selecionar uma conta!');
    exit;

  end;

  if rselecao.Value = 0 then
    wwDBGrid1.OnDblClick(frmcontaspagar);

  if frmprincipal.autentica_caixa('Acesso ao Caixa', 0) then
  begin
    if frmmodulo.qrcaixa_operador.FieldByName('situacao').ASINTEGER = 1 then
    // caixa geral aberto
    begin
      if qrcontaspagar.State = dsedit then
        qrcontaspagar.post;
      frmmodulo.Conexao.commit;

      qrcontaspagar.Refresh;

      frmcontaspagar_pgto := tfrmcontaspagar_pgto.create(self);
      frmcontaspagar_pgto.qrcontaspagar.close;
      frmcontaspagar_pgto.qrcontaspagar.sql.clear;
      frmcontaspagar_pgto.qrcontaspagar.sql.Add
        ('select * from c000046 where situacao = 1 and filtro = 1 order by data_vencimento');
      frmcontaspagar_pgto.qrcontaspagar.open;
      frmcontaspagar_pgto.qrcontaspagar.first;
      valor := 0;
      while not frmcontaspagar_pgto.qrcontaspagar.Eof do
      begin
        frmcontaspagar_pgto.qrcontaspagar.edit;
        frmcontaspagar_pgto.qrcontaspagar.FieldByName('desconto').asfloat := 0;
        frmcontaspagar_pgto.qrcontaspagar.FieldByName('acrescimo').asfloat := 0;
        frmcontaspagar_pgto.qrcontaspagar.FieldByName('valorpago').asfloat :=
          frmcontaspagar_pgto.qrcontaspagar.FieldByName('valor').asfloat;
        frmcontaspagar_pgto.qrcontaspagar.post;

        valor := valor + frmcontaspagar_pgto.qrcontaspagar.FieldByName
          ('valor').asfloat;
        frmcontaspagar_pgto.qrcontaspagar.next;
      end;
      frmcontaspagar_pgto.RTOTAL_VALOR.Value := valor;
      frmcontaspagar_pgto.RTOTAL_desconto.Value := 0;
      frmcontaspagar_pgto.RTOTAL_acrescimo.Value := 0;
      frmcontaspagar_pgto.RTOTAL_PAGO.Value := valor;
      frmcontaspagar_pgto.showmodal;
    end
    else
    begin
      application.messagebox('Caixa fechado! Favor verificar...', 'Atenção',
        mb_ok + MB_ICONWARNING);
    end;
  end
  else
  begin
    application.messagebox('Acesso não autorizado!', 'Atenção',
      mb_ok + MB_ICONWARNING);
  end;

  rselecao.Value := 0;

  if qrcontaspagar.recordcount > 0 then
  begin
    qrcontaspagar.first;
    while not qrcontaspagar.Eof do
    begin
      if qrcontaspagar.FieldByName('filtro').asstring = '1' then
        rselecao.Value := rselecao.Value + qrcontaspagarVALOR.asfloat;
      qrcontaspagar.next;
    end;
    qrcontaspagar.first;
  end;

end;

procedure Tfrmcontaspagar.Pagamento1Click(Sender: TObject);
begin
  if bpagamento.enabled then
    bpagamento.OnClick(frmcontaspagar);
end;

procedure Tfrmcontaspagar.Extornar1Click(Sender: TObject);
begin
  if bextornar.enabled then
    bextornar.OnClick(frmcontaspagar);
end;

procedure Tfrmcontaspagar.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar.bexcluirClick(Sender: TObject);
var
  texto: PWideChar;
begin
  if frmprincipal.autentica('Excluir Conta', 4) then
  begin
    if qrcontaspagar.FieldByName('situacao').ASINTEGER = 1 then
    begin
      texto := PWideChar('Confirma a Exclusão da Conta: ' + #13 + 'Fornecedor: '
        + qrcontaspagar.FieldByName('fornecedor').asstring + '           ' + #13
        + 'Vencimento: ' + qrcontaspagar.FieldByName('data_vencimento').asstring
        + #13 + 'Documento: ' + qrcontaspagar.FieldByName('documento').asstring
        + #13 + 'Valor - R$: ' + formatfloat('###,###,##0.00',
        qrcontaspagar.FieldByName('valor').asfloat));
      if application.messagebox(texto, 'Atenção', mb_yesno + MB_ICONWARNING) = idyes
      then
      begin
        frmprincipal.log(codigo_usuario, 'C.PAGAR',
          qrcontaspagar.FieldByName('codigo').asstring, 'EXCLUIU',
          qrcontaspagar.FieldByName('FORNECEDOR').asstring);

        frmprincipal.logUC('Excluiu Conta a Pagar Conta Nr: ' +
          frmcontaspagar.qrcontaspagar.FieldByName('documento').asstring +
          ' Fornecedor: ' + frmcontaspagar.qrcontaspagar.FieldByName('fornecedor').asstring, 3);

        qrcontaspagar.Delete;
        frmmodulo.Conexao.commit;
      end;
    end
    else
    begin
      application.messagebox('Esta conta já foi paga! Impossível excluir!',
        'Atenção!!', mb_ok + mb_iconerror);
    end;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmcontaspagar.BitBtn4Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

procedure Tfrmcontaspagar.LOCEnter(Sender: TObject);
begin
  LOC.Color := $00A0FAF8;
  if combo_loc.itemindex = 1 then
  begin
    qrcontaspagar.indexfieldnames := 'NOTAFISCAL';
    LOC.SearchField := 'NOTAFISCAL';
  end;
  if combo_loc.itemindex = 0 then
  begin
    qrcontaspagar.indexfieldnames := 'DOCUMENTO';
    LOC.SearchField := 'DOCUMENTO';
  end;

end;

procedure Tfrmcontaspagar.LOCExit(Sender: TObject);
begin
  LOC.Color := clwindow;
end;

procedure Tfrmcontaspagar.wwDBGrid1DblClick(Sender: TObject);
begin
  try
    if qrcontaspagar.FieldByName('filtro').asstring = '1' then
    begin
      qrcontaspagar.edit;
      qrcontaspagar.FieldByName('filtro').asstring := '0';
      rselecao.Value := rselecao.Value - qrcontaspagar.FieldByName
        ('valor').asfloat;
      qrcontaspagar.post;
    end
    else
    begin
      qrcontaspagar.edit;
      qrcontaspagar.FieldByName('filtro').asstring := '1';
      rselecao.Value := rselecao.Value + qrcontaspagar.FieldByName
        ('valor').asfloat;
      qrcontaspagar.post;
    end;
  except
    application.messagebox
      ('Esta conta está sendo utilizada em outro terminal! Aguarde...',
      'Atenção', mb_ok + mb_iconerror);

  end;
end;

procedure Tfrmcontaspagar.brelatorioClick(Sender: TObject);
begin
  FRMLISTA_PAGAR2 := TFRMLISTA_PAGAR2.create(self);
  FRMLISTA_PAGAR2.showmodal;
end;

procedure Tfrmcontaspagar.DBText1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Conta', 4) then
  begin
    frmcontaspagar_data := tfrmcontaspagar_data.create(self);
    frmcontaspagar_data.showmodal;
  end;
end;

procedure Tfrmcontaspagar.rselecaoChange(Sender: TObject);
begin
  if rselecao.Value <> 0 then
    pselecao.visible := true
  else
    pselecao.visible := false;

end;

procedure Tfrmcontaspagar.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #32 then
  begin
    wwDBGrid1DblClick(frmcontaspagar);
  end;
  if Key = #13 then
    bpagamentoClick(frmcontaspagar);

end;

procedure Tfrmcontaspagar.Filtro1Click(Sender: TObject);
begin
  combo_situacao.SETFOCUS;
end;

procedure Tfrmcontaspagar.combo_periodoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DateEdit1.SETFOCUS;
end;

procedure Tfrmcontaspagar.combo_locKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    LOC.SETFOCUS;
end;

procedure Tfrmcontaspagar.COMBOFORNECEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    combo_periodo.SETFOCUS;
end;

procedure Tfrmcontaspagar.combo_situacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    COMBOFORNECEDOR.SETFOCUS;
end;

procedure Tfrmcontaspagar.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bitbtn1.SETFOCUS;
end;

procedure Tfrmcontaspagar.bdesliga_filtroClick(Sender: TObject);
begin
  rselecao.Value := 0;
  pselecao.visible := false;

  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.Add('select * from c000046 where filtro = ''1''');
  qrcontaspagar.open;

  if qrcontaspagar.recordcount > 0 then

  begin
    qrcontaspagar.first;
    while not qrcontaspagar.Eof do
    begin

      if (qrcontaspagar.FieldByName('filtro').asstring = '1') and
        (qrcontaspagar.FieldByName('situacao2').ASINTEGER <> 2) then
        rselecao.Value := rselecao.Value - qrcontaspagarVALOR.asfloat;

      qrcontaspagar.edit;
      qrcontaspagar.FieldByName('filtro').asstring := '0';
      qrcontaspagar.post;

      qrcontaspagar.next;
    end;
    qrcontaspagar.first;
  end;
end;

procedure Tfrmcontaspagar.btotalClick(Sender: TObject);
var
  situacao, fornecedor, periodo: string;
begin

  wwDBGrid1.DATASOURCE := nil;

  if combo_periodo.itemindex = 0 then
    periodo := ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
  if combo_periodo.itemindex = 1 then
    periodo := ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
  if combo_periodo.itemindex = 2 then
    periodo := ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';

  if combo_situacao.itemindex = 0 then
    situacao := ' and situacao = 1 ';
  if combo_situacao.itemindex = 1 then
    situacao := ' and situacao = 1 and data_vencimento >= :datax ';
  if combo_situacao.itemindex = 2 then
    situacao := ' and situacao = 2 ';
  if combo_situacao.itemindex = 3 then
    situacao := '';

  if COMBOFORNECEDOR.TEXT = '' then
    fornecedor := ''
  else
    fornecedor := ' and codfornecedor = ''' + frmmodulo.qrfornecedor.FieldByName
      ('codigo').asstring + '''';

  Qrsoma.close;
  Qrsoma.sql.clear;
  Qrsoma.sql.Add('select sum(VALOR) apagar, ' + // sum_0 A VENCER
    '(select sum(VALORPAGO) VALORPAGO from c000046 where SITUACAO = 2 ' +
    periodo + fornecedor + situacao + ') ' + // column_
    'from c000046 where situacao = 1 ' + periodo + fornecedor + situacao);
  Qrsoma.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
  Qrsoma.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  Qrsoma.open;

  rpagar.Value := Qrsoma.FieldByName('apagar').asfloat;
  rpaga.Value := Qrsoma.FieldByName('VALORPAGO').asfloat;

  wwDBGrid1.DATASOURCE := dscontaspagar;

end;

procedure Tfrmcontaspagar.Localizar1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
