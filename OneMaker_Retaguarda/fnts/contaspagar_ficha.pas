unit contaspagar_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, TFlatPanelUnit,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Menus, wwdbedit, Wwdotdot, Wwdbcomb,
  AdvGlowButton, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvBaseEdits, JvExMask, JvToolEdit;

type
  Tfrmcontaspagar_ficha = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TJvDateEdit;
    Label2: TLabel;
    efornecedor: TEdit;
    blocfornecedor: TBitBtn;
    enomefornecedor: TEdit;
    Label3: TLabel;
    econta: TEdit;
    blocconta: TBitBtn;
    enomeconta: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    RVALOR: TJvCalcEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    BitBtn2: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    qrgrade: TZQuery;
    dsgrade: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    comboespecie: TwwDBComboBox;
    FlatPanel2: TFlatPanel;
    bgravar: TAdvGlowButton;
    Label8: TLabel;
    query: TZQuery;
    qrgradeDOCUMENTO: TWideStringField;
    qrgradeHISTORICO: TWideStringField;
    qrgradeVALOR: TFloatField;
    qrgradeC: TWideStringField;
    qrgradeE: TWideStringField;
    qrgradeESPECIE: TWideStringField;
    Panel6: TPanel;
    Panel7: TPanel;
    RTOTAL: TJvCalcEdit;
    qrgradeVENCIMENTO: TDateField;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorExit(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure qrgradeAfterInsert(DataSet: TDataSet);
    procedure qrgradeAfterEdit(DataSet: TDataSet);
    procedure qrgradeAfterPost(DataSet: TDataSet);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_ficha: Tfrmcontaspagar_ficha;
  VALOR_A: REAL;
   const
   sc_DragMove = $f012;
implementation

uses modulo, loc_fornecedor, loc_conta, principal, contaspagar;

{$R *.dfm}

procedure Tfrmcontaspagar_ficha.DateEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  if DateEdit1.Text = '  /  /    ' then
    DateEdit1.Date := Date
end;

procedure Tfrmcontaspagar_ficha.DateEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcontaspagar_ficha.blocfornecedorClick(Sender: TObject);
begin
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  efornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  enomefornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('nome').asstring;

  econta.setfocus;
end;

procedure Tfrmcontaspagar_ficha.bloccontaClick(Sender: TObject);
begin
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;

  econta.Text := resultado_pesquisa1;
  enomeconta.Text := resultado_pesquisa4;

  Edit5.setfocus;

end;

procedure Tfrmcontaspagar_ficha.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontaspagar_ficha.efornecedorExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  efornecedor.Text := frmprincipal.zerarcodigo(efornecedor.Text, 6);
  if efornecedor.Text <> '000000' then
    if not frmprincipal.Locregistro(frmmodulo.qrfornecedor, efornecedor.Text,
      'codigo') then
      blocfornecedorClick(frmcontaspagar_ficha)
    else
    begin
      efornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
      enomefornecedor.Text := frmmodulo.qrfornecedor.fieldbyname
        ('nome').asstring;
      econta.setfocus;

    end

  else
    blocfornecedor.setfocus;

end;

procedure Tfrmcontaspagar_ficha.econtaExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  econta.Text := frmprincipal.zerarcodigo(econta.Text, 6);
  if econta.Text <> '000000' then
    if not frmprincipal.Locregistro(frmmodulo.qrplano, econta.Text, 'codigo')
    then
      bloccontaClick(frmcontaspagar_ficha)
    else
    begin
      Edit5.setfocus;
      enomeconta.Text := frmmodulo.qrplano.fieldbyname('CONTA').asstring;
    end

  else
    blocconta.setfocus;

end;

procedure Tfrmcontaspagar_ficha.Edit5Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  Edit5.Text := frmprincipal.zerarcodigo(Edit5.Text, 6);
end;

procedure Tfrmcontaspagar_ficha.Edit5Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_ficha.BitBtn2Click(Sender: TObject);
var
  qtde, i: integer;
  diferenca, novo, soma: REAL;
begin
  i := 1;
  try
    qrgrade.close;
    qrgrade.sql.clear;
    qrgrade.sql.add('delete from c000047');
    qrgrade.execsql;
    qrgrade.sql.clear;
    qrgrade.sql.add('select * from c000047');
    qrgrade.open;
    qtde := strtoint(Edit7.Text);
    while qtde <> 0 do
    begin
      qrgrade.Insert;
      qrgrade.fieldbyname('vencimento').asdatetime :=
        incmonth(DateEdit1.Date, i);
      qrgrade.fieldbyname('historico').asstring := Edit6.Text;
      qrgrade.fieldbyname('documento').asstring := Edit5.Text + '/' +
        inttostr(i);
      if RVALOR.value <> 0 then
        qrgrade.fieldbyname('valor').asfloat := RVALOR.value /
          strtoint(Edit7.Text);
      qrgrade.fieldbyname('valor').asfloat :=
        frmprincipal.Arredondar(qrgrade.fieldbyname('valor').asfloat, 2);

      qrgrade.post;
      i := i + 1;
      qtde := qtde - 1;
    end;
    qrgrade.Refresh;
    RTOTAL.value := RVALOR.value;

    // acerto arredondamento

    soma := 0;
    qrgrade.First;
    while not qrgrade.Eof do
    begin
      soma := soma + qrgrade.fieldbyname('valor').asfloat;
      qrgrade.Next
    end;

    diferenca := RVALOR.value - soma;
    novo := diferenca;
    if diferenca > 0 then
    begin
      qrgrade.Last;
      qrgrade.Edit;
      qrgrade.fieldbyname('valor').asfloat := qrgrade.fieldbyname('valor')
        .asfloat + diferenca;
      qrgrade.post;
    end;
    qrgrade.Refresh;
    RTOTAL.value := RVALOR.value;
    qrgrade.First;
    wwDBGrid1.setfocus;
  except
    showmessage
      ('Houve erro ao tentar gerar as prestações! Verifique a quantidade informada ou o valor da nota fiscal!');
  end;
end;

procedure Tfrmcontaspagar_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmcontaspagar_ficha.FormShow(Sender: TObject);
begin
  qrgrade.close;
  qrgrade.sql.clear;
  qrgrade.sql.add('delete from c000047');
  qrgrade.execsql;
  qrgrade.sql.clear;
  qrgrade.sql.add('select * from c000047');
  qrgrade.open;
end;

procedure Tfrmcontaspagar_ficha.bgravarClick(Sender: TObject);
var
  valor_c: REAL;
begin

  (* ********************* verificar se existe a mesma nota para o mesmo forncedor ********************** *)
  query.close;
  query.sql.clear;
  query.sql.add('select * from c000046 where notafiscal = ''' + Edit5.Text +
    ''' and codfornecedor = ''' + efornecedor.Text +
    ''' and data_vencimento = :vdat');
  query.Params.ParamByName('vdat').asdatetime := qrgradeVENCIMENTO.asdatetime;
  query.open;
  if query.recordcount > 0 then
  begin
    if application.messagebox
      (pchar('Já existe uma NOTA FISCAL Cadastrada com este Número' + #13 +
      'para este FORNECEDOR e com esse VENCIMENTO!' + #13 +
      'Deseja Continuar Com a Operação?'), 'Aviso', mb_yesno + MB_ICONWARNING) = idno
    then
      exit;
  end;

  if (qrgrade.State = dsedit) then
    qrgrade.post
  else
  begin
    if qrgrade.State = dsinsert then
    begin
      if qrgrade.fieldbyname('valor').asfloat <> 0 then
        qrgrade.post;
    end;
  end;

  if RVALOR.value <> 0 then
    valor_c := RVALOR.value
  else
    valor_c := RTOTAL.value;

  valor_c := RTOTAL.value - valor_c;

  if (valor_c > 0.05) or (valor_c < -0.05) then
  begin
    application.messagebox
      ('O valor total das prestação não confere com o valor da Nota Fiscal! Favor verificar!',
      'Atenção', mb_ok + MB_ICONWARNING);
    wwDBGrid1.setfocus;
  end
  else
  begin

    qrgrade.Refresh;
    qrgrade.First;
    while not qrgrade.Eof do
    begin
      FRMCONTASPAGAR.qrcontaspagar.Insert;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codigo').asstring :=
        frmprincipal.codifica('000046');
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('data_emissao').asdatetime :=
        DateEdit1.Date;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codfornecedor').asstring :=
        efornecedor.Text;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codconta').asstring :=
        econta.Text;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('notafiscal').asstring :=
        Edit5.Text;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('situacao').aSINTEGER := 1;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('filtro').aSINTEGER := 0;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codnota').asstring := '';

      // lancamento pelo grade
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('valor').asfloat :=
        qrgrade.fieldbyname('valor').asfloat;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('liquido').asfloat :=
        qrgrade.fieldbyname('valor').asfloat;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('documento').asstring :=
        qrgrade.fieldbyname('documento').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('historico').asstring :=
        qrgrade.fieldbyname('historico').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('especie').asstring :=
        qrgrade.fieldbyname('especie').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('C').asstring :=
        qrgrade.fieldbyname('C').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('E').asstring :=
        qrgrade.fieldbyname('E').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('data_vencimento').asdatetime :=
        qrgrade.fieldbyname('vencimento').asdatetime;
      //
      FRMCONTASPAGAR.qrcontaspagar.post;
      qrgrade.Next;
    end;
    frmmodulo.Conexao.Commit;
    frmprincipal.logUC('Inclui Conta a Pagar Conta Nr: ' +
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('documento').asstring +
      ' Fornecedor: ' + efornecedor.Text, 3);

    close;
  end;
end;

procedure Tfrmcontaspagar_ficha.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar_ficha.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcontaspagar_ficha.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar_ficha.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.onclick(frmcontaspagar_ficha);
end;

procedure Tfrmcontaspagar_ficha.qrgradeAfterInsert(DataSet: TDataSet);
begin
  VALOR_A := 0;
end;

procedure Tfrmcontaspagar_ficha.qrgradeAfterEdit(DataSet: TDataSet);
begin
  VALOR_A := qrgrade.fieldbyname('VALOR').asfloat;
end;

procedure Tfrmcontaspagar_ficha.qrgradeAfterPost(DataSet: TDataSet);
var
  soma: REAL;
  registro: integer;
begin

  // acerto arredondamento
  registro := qrgrade.RecNo;
  soma := 0;
  qrgrade.First;
  while not qrgrade.Eof do
  begin
    soma := soma + qrgrade.fieldbyname('valor').asfloat;
    qrgrade.Next
  end;
  qrgrade.Refresh;
  RTOTAL.value := soma;
  qrgrade.RecNo := registro;
  // RTOTAL.value := frmprincipal.Arredondar
  // (RTOTAL.value + qrgrade.fieldbyname('VALOR').asfloat - VALOR_A, 2);

end;

end.
