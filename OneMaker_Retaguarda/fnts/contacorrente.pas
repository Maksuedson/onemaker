unit contacorrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, ImgList, ComCtrls,
  Wwdbigrd, Wwdbgrid, Wwkeycb, AdvGlowButton, frxDesgn, frxClass, frxDBSet,
  UCBase, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, dxGDIPlusClasses, System.ImageList, JvBaseEdits,
  JvExMask, JvToolEdit, acPNG;

type
  Tfrmcontacorrente = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    ds: TDataSource;
    Relatrios1: TMenuItem;
    dslancamento_conta: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    ImageList1: TImageList;
    dsbanco2: TDataSource;
    Panel1: TPanel;
    qrlancamento_conta: TZQuery;
    wwDBGrid1: TwwDBGrid;
    qrsaldo_anterior: TZQuery;
    FlatPanel2: TFlatPanel;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    Label3: TLabel;
    Label2: TLabel;
    MenudeLanamentos1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    MenudeContaCorrente1: TMenuItem;
    N3: TMenuItem;
    Incluir2: TMenuItem;
    Algerar1: TMenuItem;
    Excluir2: TMenuItem;
    Filtrar1: TMenuItem;
    Panel3: TPanel;
    Label4: TLabel;
    Panel4: TPanel;
    arvore: TTreeView;
    Panel5: TPanel;
    Panel6: TPanel;
    BITBTN6: TAdvGlowButton;
    BITBTN7: TAdvGlowButton;
    BITBTN8: TAdvGlowButton;
    bfiltrar: TAdvGlowButton;
    fxcontacorrente: TfrxReport;
    fscliente: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    qrlancamento_contaCODIGO: TWideStringField;
    qrlancamento_contaCODCONTACORRENTE: TWideStringField;
    qrlancamento_contaHISTORICO: TWideStringField;
    qrlancamento_contaCODCONTA: TWideStringField;
    qrlancamento_contaVALOR: TFloatField;
    qrlancamento_contaTIPO: TWideStringField;
    qrlancamento_contaDOCUMENTO: TWideStringField;
    UCControls1: TUCControls;
    qrlancamento_contaDATA: TDateField;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel11: TPanel;
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    rsaldo: TJvCalcEdit;
    Panel10: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    rsaldo_anterior: TJvCalcEdit;
    plocalizar: TFlatPanel;
    Label5: TLabel;
    loc: TwwIncrementalSearch;
    Panel9: TPanel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure ERENDAKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure arvoreKeyPress(Sender: TObject; var Key: Char);
    procedure arvoreClick(Sender: TObject);
    procedure arvoreKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locEnter(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure locChange(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontacorrente: Tfrmcontacorrente;
  comando: string;
  saldo: real;
  conta_selecionada: string;
   const
   sc_DragMove = $f012;
implementation

uses modulo, principal, contacorrente_ficha, contacorrente_lancamento;

{$R *.dfm}

procedure Tfrmcontacorrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcontacorrente.FormShow(Sender: TObject);
var
  X: BYTE;
begin
  plocalizar.Top := 376;
  plocalizar.left := 244;

  conta_selecionada := '';
  SetWindowLong(arvore.Handle, GWL_STYLE, GetWindowLong(arvore.Handle,
    GWL_STYLE) or $80);

  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.SQL.clear;
  frmmodulo.qrbanco.SQL.add('select * from c000013 order by numero desc');
  frmmodulo.qrbanco.open;
  frmmodulo.qrbanco.INDEXFIELDNAMES := 'BANCO';

  frmmodulo.qrplano.close;
  frmmodulo.qrplano.SQL.clear;
  frmmodulo.qrplano.SQL.add('select * from c000035 order by conta');
  frmmodulo.qrplano.open;
  frmmodulo.qrplano.INDEXFIELDNAMES := 'CONTA';

  try
    frmmodulo.qrbanco.First;
    arvore.Items.clear;
    while not frmmodulo.qrbanco.Eof do
    begin
      frmmodulo.qrcontacorrente.close;
      frmmodulo.qrcontacorrente.SQL.clear;
      frmmodulo.qrcontacorrente.SQL.add
        ('select * from c000041 where codbanco = ''' +
        frmmodulo.qrbanco.fieldbyname('numero').asstring + ''' order by conta');
      frmmodulo.qrcontacorrente.open;
      if frmmodulo.qrcontacorrente.RecordCount > 0 then
      begin
        with arvore.Items.AddFirst(nil, frmmodulo.qrbanco.fieldbyname('banco')
          .asstring) do
        begin
          if frmmodulo.qrbanco.fieldbyname('numero').asstring = '001' then
          // banco do brasil
          begin
            ImageIndex := 2;
            SelectedIndex := 2;
          end;
          if frmmodulo.qrbanco.fieldbyname('numero').asstring = '021' then
          // banestes     VERIFICAR --> COLOCAR OS DESENHOS DOS DEMAIS BANCOS
          begin
            ImageIndex := 3;
            SelectedIndex := 3;
          end;
          Selected := true
        end;
        frmmodulo.qrcontacorrente.First;
        while not frmmodulo.qrcontacorrente.Eof do
        begin
          with arvore.Items.AddChild(arvore.Selected,
            'C/C: ' + frmmodulo.qrcontacorrente.fieldbyname('conta').asstring +
            '   [' + frmmodulo.qrcontacorrente.fieldbyname('codigo')
            .asstring + ']') do
          begin
            ImageIndex := 0;
            SelectedIndex := 1;
          end;
          frmmodulo.qrcontacorrente.Next;
        end;
      end;
      frmmodulo.qrbanco.Next;
    end;

    // EXPANDIR TODOS AS CONTAS DO TREE VIEW
    for X := 0 to arvore.Items.Count - 1 do
      arvore.Items.Item[X].Expand(true);
  except
  end;
  qrlancamento_conta.close;

  DateEdit1.text := '01/' + copy(datetostr(date), 4, 7);
  DateEdit2.date := date;

  frmmodulo.qrcontacorrente.close;
  frmmodulo.qrcontacorrente.SQL.clear;
  frmmodulo.qrcontacorrente.SQL.add('select * from c000041 order by conta');
  frmmodulo.qrcontacorrente.open;

  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.SQL.clear;
  frmmodulo.qrbanco.SQL.add('select * from c000013 order by BANCO');
  frmmodulo.qrbanco.open;
  frmmodulo.qrbanco.INDEXFIELDNAMES := 'BANCO';

  pgravar.visible := false;
  pgravar.Align := alClient;

  qrlancamento_contaVALOR.DisplayFormat := mascara_valor;

end;

procedure Tfrmcontacorrente.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcontacorrente.bincluirClick(Sender: TObject);
begin
  if conta_selecionada <> '' then
  begin
    if frmmodulo.qrcontacorrente.Locate('codigo', conta_selecionada,
      [loCaseInsensitive]) then
    begin
      qrlancamento_conta.insert;
      qrlancamento_conta.fieldbyname('codigo').asstring :=
        frmprincipal.codifica('000042');
      qrlancamento_conta.fieldbyname('tipo').asstring := 'C';
      frmcontacorrente_lancamento := tfrmcontacorrente_lancamento.create(self);
      frmcontacorrente_lancamento.showmodal;

      bfiltrarClick(frmcontacorrente);
    end
    else
    begin
      Showmessage('O sistema não consegui encontrar esta conta!');
    end;
  end
  else
  begin
    Showmessage('Nenhuma conta foi selecionada!');
  end;
end;

procedure Tfrmcontacorrente.balterarClick(Sender: TObject);
begin
  if qrlancamento_conta.fieldbyname('CODIGO').asstring <> '' then
  begin
    qrlancamento_conta.edit;
    if qrlancamento_conta.fieldbyname('tipo').asstring = 'D' then
      qrlancamento_conta.fieldbyname('VALOR').ASFLOAT :=
        qrlancamento_conta.fieldbyname('VALOR').ASFLOAT * (-1);
    frmcontacorrente_lancamento := tfrmcontacorrente_lancamento.create(self);
    frmcontacorrente_lancamento.showmodal;

    bfiltrarClick(frmcontacorrente);
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;
end;

procedure Tfrmcontacorrente.bexcluirClick(Sender: TObject);
begin
  if conta_selecionada <> '' then
  begin

    if frmprincipal.autentica('Excluir Lancto. Conta', 4) then
    begin
      qrlancamento_conta.Delete;
      frmmodulo.Conexao.commit;
      bfiltrarClick(frmcontacorrente);
    end
    else
    begin
      Application.messagebox('Acesso não permitido!', 'Erro!',
        mb_ok + mb_iconerror);
    end;
  end
  else
  begin
    Showmessage('Não há nenhuma conta selecionada!');
  end;
end;

procedure Tfrmcontacorrente.blocalizarClick(Sender: TObject);
begin
  if conta_selecionada <> '' then
  begin
    qrlancamento_conta.INDEXFIELDNAMES := 'documento';
    plocalizar.Align := alClient;
    plocalizar.visible := true;
    loc.setfocus;
  end
  else
  begin
    Showmessage('Não há nenhuma conta selecionada!');
  end;

  //

end;

procedure Tfrmcontacorrente.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontacorrente.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin

  if (frmmodulo.qrcfop.State = dsinsert) or (frmmodulo.qrcfop.State = dsedit)
  then
  begin

    frmmodulo.qrcfop.post;
  end;

  frmmodulo.Conexao.commit;
  pgravar.visible := false;
  PopupMenu := Pop1;

end;

procedure Tfrmcontacorrente.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcfop.State = dsinsert) or (frmmodulo.qrcfop.State = dsedit)
  then
    frmmodulo.qrcfop.cancel;

  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';
end;

procedure Tfrmcontacorrente.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcontacorrente.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrcfop.First;
end;

procedure Tfrmcontacorrente.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrcfop.last;
end;

procedure Tfrmcontacorrente.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrcfop.prior;
end;

procedure Tfrmcontacorrente.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrcfop.Next;
end;

procedure Tfrmcontacorrente.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcontacorrente.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrcfop.State = dsinsert then
end;

procedure Tfrmcontacorrente.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcontacorrente.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

end;

procedure Tfrmcontacorrente.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcontacorrente.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcontacorrente.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcontacorrente.DBEdit4Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcontacorrente.ERENDAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcontacorrente.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcontacorrente.wwDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if qrlancamento_conta.fieldbyname('valor').ASFLOAT < 0 then
  begin
    wwDBGrid1.canvas.font.Color := clred;
  end;

  wwDBGrid1.DefaultDrawDataCell(Rect, Field, State);

end;

procedure Tfrmcontacorrente.BitBtn7Click(Sender: TObject);
begin
  if conta_selecionada <> '' then
  begin
    frmmodulo.qrcontacorrente.close;
    frmmodulo.qrcontacorrente.SQL.clear;
    frmmodulo.qrcontacorrente.SQL.add('select * from c000041 order by conta');
    frmmodulo.qrcontacorrente.open;

    frmprincipal.logUC('Alterou Conta Corrente - Nr: ' + conta_selecionada, 2);

    if frmmodulo.qrcontacorrente.Locate('codigo', conta_selecionada,
      [loCaseInsensitive]) then
    begin
      frmmodulo.qrcontacorrente.edit;
      frmcontacorrente_ficha := tfrmcontacorrente_ficha.create(self);
      frmcontacorrente_ficha.showmodal;
    end
    else
    begin
      Showmessage('Não foi possível localizar a conta!');
    end;
  end
  else
  begin
    Showmessage('Não há nenhuma conta selecionada!');
  end;

end;

procedure Tfrmcontacorrente.BitBtn6Click(Sender: TObject);
begin
  frmmodulo.qrcontacorrente.insert;
  frmmodulo.qrcontacorrente.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000041');
  frmcontacorrente_ficha := tfrmcontacorrente_ficha.create(self);
  frmcontacorrente_ficha.showmodal;

  frmcontacorrente.OnShow(frmcontacorrente);
end;

procedure Tfrmcontacorrente.BitBtn8Click(Sender: TObject);
begin
  if conta_selecionada <> '' then
  begin
    if frmprincipal.autentica('Excluir Conta Corrente', 4) then
    begin
      if Application.messagebox
        ('Tem certeza que deseja excluir esta conta e todos os seus lançamentos?',
        'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
      begin

        frmprincipal.logUC('Excluiu Conta Corrente - Nr: ' +
          conta_selecionada, 3);

        qrlancamento_conta.close;
        qrlancamento_conta.SQL.clear;
        qrlancamento_conta.SQL.add('delete from c000042 where codconta = ''' +
          conta_selecionada + '''');
        qrlancamento_conta.ExecSQL;

        frmmodulo.qrcontacorrente.close;
        frmmodulo.qrcontacorrente.SQL.clear;
        frmmodulo.qrcontacorrente.SQL.add
          ('delete from c000041 where codigo = ''' + conta_selecionada + '''');
        frmmodulo.qrcontacorrente.ExecSQL;
        frmmodulo.Conexao.commit;

        frmmodulo.qrcontacorrente.close;
        frmmodulo.qrcontacorrente.SQL.clear;
        frmmodulo.qrcontacorrente.SQL.add
          ('select * from c000041 order by conta');
        frmmodulo.qrcontacorrente.open;

        OnShow(frmcontacorrente);
      end;
    end
    else
    begin
      Application.messagebox('Acesso não permitido!', 'Erro!',
        mb_ok + mb_iconerror);
    end;
  end
  else
  begin
    Showmessage('Nenhuma conta foi selecionada!');
  end;
end;

procedure Tfrmcontacorrente.bfiltrarClick(Sender: TObject);
begin
  if conta_selecionada <> '' then
  begin
    if qrlancamento_conta.State = dsOpening then
      qrlancamento_conta.Refresh;

    frmmodulo.qrcontacorrente.close;
    frmmodulo.qrcontacorrente.SQL.clear;
    frmmodulo.qrcontacorrente.SQL.add('select * from c000041 where CODIGO = '''
      + conta_selecionada + '''');
    frmmodulo.qrcontacorrente.open;

    qrsaldo_anterior.close;
    qrsaldo_anterior.SQL.clear;
    qrsaldo_anterior.SQL.add
      ('select sum(valor) saldo_anterior from c000042 where codcontacorrente = '''
      + conta_selecionada + ''' and data < :datai');
    qrsaldo_anterior.Params.ParamByName('datai').value := DateEdit1.date;
    qrsaldo_anterior.open;
    rsaldo_anterior.value := qrsaldo_anterior.fieldbyname
      ('saldo_anterior').ASFLOAT;

    qrsaldo_anterior.close;
    qrsaldo_anterior.SQL.clear;
    qrsaldo_anterior.SQL.add
      ('select sum(valor) saldo_atual from c000042 where codcontacorrente = '''
      + conta_selecionada + ''' and data >= :datai and data <= :dataf');
    qrsaldo_anterior.Params.ParamByName('datai').value := DateEdit1.date;
    qrsaldo_anterior.Params.ParamByName('dataf').value := DateEdit2.date;
    qrsaldo_anterior.open;
    rsaldo.value := qrsaldo_anterior.fieldbyname('saldo_atual').ASFLOAT +
      rsaldo_anterior.value;
    qrsaldo_anterior.close;

    qrlancamento_conta.close;
    qrlancamento_conta.SQL.clear;
    qrlancamento_conta.SQL.add
      ('select * from c000042 where codcontacorrente = ''' + conta_selecionada +
      ''' and data >= :datai and data <= :dataf order by data, codigo');
    qrlancamento_conta.Params.ParamByName('datai').value := DateEdit1.date;
    qrlancamento_conta.Params.ParamByName('dataf').value := DateEdit2.date;
    qrlancamento_conta.open;

    if rsaldo_anterior.value < 0 then
      rsaldo_anterior.font.Color := clred
    else
      rsaldo_anterior.font.Color := clblue;
    if rsaldo.value < 0 then
      rsaldo.font.Color := clred
    else
      rsaldo.font.Color := clblue;
  end
  else
  begin
    Showmessage('Não há nenhuma conta selecionada!');
  end;
end;

procedure Tfrmcontacorrente.DateEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente.DateEdit2Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente.DateEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcontacorrente.arvoreKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    arvoreClick(frmcontacorrente);
  end;
end;

procedure Tfrmcontacorrente.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontacorrente.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcontacorrente.arvoreClick(Sender: TObject);
var
  l1, l2: integer;
  c: string;
begin
  try
    c := arvore.Selections[0].text;
    if copy(c, 1, 3) = 'C/C' then
    begin

      l1 := pos('[', c);
      l2 := pos(']', c);

      if l1 > 0 then
      begin
        conta_selecionada := copy(c, l1 + 1, l2 - l1 - 1);
      end;

      bfiltrarClick(frmcontacorrente);

    end
    else
    begin
      qrlancamento_conta.close;
      conta_selecionada := '';
    end;
  except
  end;
end;

procedure Tfrmcontacorrente.arvoreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_up) or (Key = vk_down) then
    Panel2.visible := true;
end;

procedure Tfrmcontacorrente.wwDBGrid1DblClick(Sender: TObject);
begin
  balterarClick(frmcontacorrente);
end;

procedure Tfrmcontacorrente.BitBtn5Click(Sender: TObject);
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring :=
    'EXTRATO DE CONTA CORRENTE';
  frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'BANCO: ' +
    frmmodulo.qrcontacorrente.fieldbyname('BANCO').asstring + ' AGÊNCIA: ' +
    frmmodulo.qrcontacorrente.fieldbyname('AGENCIA').asstring;
  frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CONTA: ' +
    frmmodulo.qrcontacorrente.fieldbyname('CONTA').asstring + '  -  TITULAR: ' +
    frmmodulo.qrcontacorrente.fieldbyname('TITULAR').asstring;
  frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := 'PERÍODO: ' +
    DateEdit1.text + ' A ' + DateEdit2.text;
  frmmodulo.qrrelatorio.fieldbyname('VALOR1').ASFLOAT := rsaldo_anterior.value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR2').ASFLOAT := rsaldo.value;

  frmmodulo.qrrelatorio.post;

  fxcontacorrente.LoadFromFile('\OneMaker\server\rel\f000152.fr3');
  fxcontacorrente.ShowReport;
end;

procedure Tfrmcontacorrente.locExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  plocalizar.visible := false;
end;

procedure Tfrmcontacorrente.locEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;

end;

procedure Tfrmcontacorrente.locKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    wwDBGrid1.setfocus;
end;

procedure Tfrmcontacorrente.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    balterarClick(frmcontacorrente);
end;

procedure Tfrmcontacorrente.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DateEdit2.setfocus;
end;

procedure Tfrmcontacorrente.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltrar.setfocus;
end;

procedure Tfrmcontacorrente.locChange(Sender: TObject);
begin
  qrlancamento_conta.Locate('documento', loc.text, [loPartialKey]);
end;

end.
