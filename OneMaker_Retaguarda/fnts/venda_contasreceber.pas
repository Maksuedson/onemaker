unit venda_contasreceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, Collection, wwdblook, Mask,
  Grids, Wwdbigrd, Wwdbgrid, DB, Buttons, RzEdit,
  RzSpnEdt, AdvGlowButton, Vcl.Clipbrd, System.Math,
  Vcl.Menus, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask,
  JvToolEdit, JvBaseEdits;

type
  Tfrmvenda_contasreceber = class(TForm)
    wwDBGrid1: TwwDBGrid;
    dsvenda_contasreceber: TDataSource;
    FlatPanel2: TFlatPanel;
    Label3: TLabel;
    rsoma: TJvCalcEdit;
    Label4: TLabel;
    rdiferenca: TJvCalcEdit;
    pgravar: TFlatPanel;
    FlatPanel3: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    combocondpgto: TwwDBLookupCombo;
    rqtde: TRzSpinEdit;
    combotipo: TwwDBLookupCombo;
    pop1: TPopupMenu;
    C1: TMenuItem;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    AdvMetroButton1: TAdvMetroButton;
    yttt558: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure combocondpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BGRAVARClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure yttt558Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    tipo: string;
    rsoma2: real;
  end;

var
  frmvenda_contasreceber: Tfrmvenda_contasreceber;
  tipox: string;
  xrecno, xparcest: Integer;
  comparativo, diferenca, diferenca2, totorc, valornovo, xparcelaorig, xvalor,
    xvalor2, xparceval: real;
    const
   sc_DragMove = $f012;
implementation

uses modulo, venda, venda_fechamento, entrada, formas_pgto;

{$R *.dfm}

procedure Tfrmvenda_contasreceber.combocondpgtoEnter(Sender: TObject);
begin
  lancando_contasreceber := false;

  tedit(Sender).Color := $00A0FAF8;

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.SQL.clear;
  frmmodulo.qrcondpgto.SQL.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.open;
  frmmodulo.qrcondpgto.indexfieldnames := 'condpgto';

end;

procedure Tfrmvenda_contasreceber.combocondpgtoExit(Sender: TObject);
var
  prestacao: Integer;
  valor: real;
  StrX: string;

begin
  tedit(Sender).Color := clwindow;

  if combocondpgto.text <> '' then
  begin
    if frmmodulo.qrcondpgto.locate('condpgto', combocondpgto.text,
      [loCaseInsensitive]) then
    begin
      frmmodulo.qrcondpgto_parcela.close;
      frmmodulo.qrcondpgto_parcela.SQL.clear;
      frmmodulo.qrcondpgto_parcela.SQL.add
        ('select * from c000016 where codcondpgto = ''' +
        frmmodulo.qrcondpgto.fieldbyname('codigo').asstring +
        ''' order by codigo');
      frmmodulo.qrcondpgto_parcela.open;
      if frmmodulo.qrcondpgto_parcela.RecordCount > 0 then
      begin
        frmvenda.qrvenda_contasreceber.close;
        frmvenda.qrvenda_contasreceber.SQL.clear;
        frmvenda.qrvenda_contasreceber.SQL.add
          ('delete from cl00002 where terminal = ''' + numero_terminal + '''');
        frmvenda.qrvenda_contasreceber.ExecSQL;
        frmvenda.qrvenda_contasreceber.SQL.clear;
        frmvenda.qrvenda_contasreceber.SQL.add
          ('select * from cl00002 where  terminal = ''' + numero_terminal +
          ''' order by prestacao');
        frmvenda.qrvenda_contasreceber.open;

        // rqtde.IntValue := frmmodulo.qrcondpgto_parcela.RecordCount;

        frmmodulo.qrcondpgto_parcela.first;
        prestacao := 1;
        rsoma2 := 0.00;

        // enquanto tiver parcelas
        while not frmmodulo.qrcondpgto_parcela.eof do
        begin
          if frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger = 0 then
          begin
            prestacao := 0
          end;
          frmvenda.qrvenda_contasreceber.Insert;
          frmvenda.qrvenda_contasreceber.fieldbyname('prestacao').AsInteger :=
            prestacao;
          frmvenda.qrvenda_contasreceber.fieldbyname('vencimento').asdatetime :=
            strtodate(frmvenda.lvenda_data.caption) +
            frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;
          // calcula valor das parcelas conforme percentual da condicao
          if rsoma.Value > 0 then
            valor := rsoma.Value *
              (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual')
              .asfloat / 100);
          // verifica se possui entrada
          if frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger = 0 then
          begin
            tipox := '1';

            frmFormas := TfrmFormas.Create(Self);
            frmFormas.ShowModal;

            if tipox = '1' then
            begin
              frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring :=
                'DINHEIRO';
            end;
            if tipox = '2' then
            begin
              frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring :=
                'CHEQUE A VISTA';
            end;
            if tipox = '3' then
            begin
              frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring :=
                'CARTAO DE DEBITO';
            end;

          end
          else

            frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring :=
              frmmodulo.qrcondpgto_parcela.fieldbyname('TIPO').asstring;

          frmvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          frmvenda.qrvenda_contasreceber.fieldbyname('documento').asstring :=
            frmvenda.lvenda_codigo.caption + '/' + inttostr(prestacao);
          frmvenda.qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          rsoma2 := rsoma2 + valor;
          frmmodulo.qrcondpgto_parcela.Next;

        end;
        frmvenda.qrvenda_contasreceber.open;
        nome_condicao := combocondpgto.text;
        frmvenda.qrvenda_contasreceber.REFRESH;
        wwDBGrid1.SetFocus;
        // zera valores no venda_fechamento
        frmvenda_fechamento.rdinheiro.Value := 0.00;
        frmvenda_fechamento.rchequeav.Value := 0.00;
        frmvenda_fechamento.rchequeap.Value := 0.00;
        frmvenda_fechamento.rcartaodeb.Value := 0.00;
        frmvenda_fechamento.rcartaocred.Value := 0.00;
        frmvenda_fechamento.rconvenio.Value := 0.00;
        frmvenda_fechamento.rcrediario.Value := 0.00;
        frmvenda_fechamento.rfinanceira.Value := 0.00;
        frmvenda_fechamento.rsoma.Value := 0.00;
        frmvenda_fechamento.rdiferenca.Value := 0.00;
        frmvenda_fechamento.rboleto := 0.00;

      end
      else
      begin
        application.messagebox
          ('Esta Condição de Pagamento não possue parcelas! Seu cadastro não foi feito corretamente!',
          'Atenção', mb_ok + MB_ICONWARNING);
        combocondpgto.SetFocus;
      end;
      frmvenda.qrvenda_contasreceber.first;
    end
    else
    begin
      application.messagebox('Condição de Pagamento não encontrada!', 'Aviso',
        mb_ok + MB_ICONERROR);
      combocondpgto.SetFocus;
    end;
  end
  else
  begin
    combocondpgto.SetFocus;
  end;

end;

procedure Tfrmvenda_contasreceber.combocondpgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_contasreceber.rqtdeEnter(Sender: TObject);
begin
  if rqtde.Value = 0 then
    rqtde.Value := 1;
  lancando_contasreceber := false;
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmvenda_contasreceber.rqtdeExit(Sender: TObject);
var
  qtde, prestacao: Integer;
  valor: real;
begin
  tedit(Sender).Color := clwindow;

  if rqtde.Value > 0 then
  begin
    nome_condicao := rqtde.text + 'x';

    prestacao := 1;
    qtde := trunc(rqtde.Value);

    if frmvenda_fechamento.rcrediario.Value > 0 then
      valor := frmvenda_fechamento.rcrediario.Value / qtde;
    if frmvenda_fechamento.rconvenio.Value > 0 then
      valor := frmvenda_fechamento.rconvenio.Value / qtde;

    frmvenda.qrvenda_contasreceber.close;
    frmvenda.qrvenda_contasreceber.SQL.clear;
    frmvenda.qrvenda_contasreceber.SQL.add
      ('delete from cl00002 where  terminal = ''' + numero_terminal + '''');
    frmvenda.qrvenda_contasreceber.ExecSQL;
    frmvenda.qrvenda_contasreceber.SQL.clear;
    frmvenda.qrvenda_contasreceber.SQL.add
      ('select * from cl00002 where  terminal = ''' + numero_terminal +
      ''' order by prestacao');
    frmvenda.qrvenda_contasreceber.open;

    frmmodulo.conexaolocal.commit;

    while qtde <> 0 do
    begin
      frmvenda.qrvenda_contasreceber.Insert;
      frmvenda.qrvenda_contasreceber.fieldbyname('prestacao').AsInteger :=
        prestacao;
      frmvenda.qrvenda_contasreceber.fieldbyname('vencimento').asdatetime :=
        incmonth(strtodate(frmvenda.lvenda_data.caption), prestacao);
      frmvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
      frmvenda.qrvenda_contasreceber.fieldbyname('documento').asstring :=
        frmvenda.lvenda_codigo.caption + '/' + inttostr(prestacao);

      if frmvenda_fechamento.rconvenio.Value > 0 then
        frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring :=
          'CONVENIO'
      else
        frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring :=
          'CARTEIRA';

      frmvenda.qrvenda_contasreceber.post;
      prestacao := prestacao + 1;
      qtde := qtde - 1;
    end;

    frmvenda.qrvenda_contasreceber.REFRESH;

    if frmvenda_fechamento.rcrediario.Value > 0 then
      rsoma.Value := frmvenda_fechamento.rcrediario.Value;
    if frmvenda_fechamento.rconvenio.Value > 0 then
      rsoma.Value := frmvenda_fechamento.rconvenio.Value;

    rdiferenca.Value := 0;
    wwDBGrid1.SetFocus;
  end;

end;

procedure Tfrmvenda_contasreceber.wwDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  xrecno := frmvenda.qrvenda_contasreceber.RecNo;
  if (Key = vk_up) or (Key = vk_down) then
  begin
    frmvenda.qrvenda_contasreceber.RecNo := xrecno;
  end;
end;

procedure Tfrmvenda_contasreceber.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin


  // Depois de tudo conficurado e verificado sem ausencia de erros começa a função

  // verifica se a parcela alterada eh a ultima e nao permite pois ela eh gerada automaticamente
  if xrecno = frmvenda.qrvenda_contasreceber.RecordCount then
  begin
    frmvenda.qrvenda_contasreceber.RecNo := 1;
    bgravar.SetFocus;
    exit;
  end;

  if Key = #13 then
  begin
    application.ProcessMessages;
    // nova funcao
    // abro a tabela
    frmvenda.qrvenda_contasreceber.open;

    // gravo posicao da tabela contas receber
    xrecno := frmvenda.qrvenda_contasreceber.RecNo;

    // guardo o valor da parcela original
    xparcelaorig := RoundTo(frmvenda.qrvenda_contasreceber.fieldbyname('valor')
      .asfloat, arredonda_valor);

    // gravo o valor da nova parcela
    valornovo := RoundTo(frmvenda.qrvenda_contasreceber.fieldbyname('valor')
      .asfloat, arredonda_valor);

    // gravo total orcamento
    totorc := RoundTo(rsoma.Value, arredonda_valor);

    // seta os valores dos contadores xvalor e xvalor2 para 0
    xvalor := 0.00;
    xvalor2 := 0.00;

    // quantas parcelas restam para dividir a diferenca
    xparcest := frmvenda.qrvenda_contasreceber.RecordCount - xrecno;

    if frmmodulo.qrformapgto.locate('FORMAPGTO', combotipo.text, [loPartialKey])
    then
    begin
      frmvenda.qrvenda_contasreceber.ApplyUpdates;

    end
    else
    begin
      application.messagebox('Forma de Pagamento Inválida!', 'Atenção!',
        mb_ok + MB_ICONEXCLAMATION);
      combotipo.SetFocus;
      exit;
    end;

    // posiciono no primeiro registro
    frmvenda.qrvenda_contasreceber.first;

    // enquanto nao chegar no final da tabela de contasreceber
    while not frmvenda.qrvenda_contasreceber.eof do
    begin
      // se a posicao da tabela for menor que a posicao atual
      if frmvenda.qrvenda_contasreceber.RecNo < xrecno then
      begin
        // soma as parcelas anteriores
        xvalor2 := RoundTo(xvalor2 + frmvenda.qrvenda_contasreceber.fieldbyname
          ('valor').asfloat, arredonda_valor);
      end;

      // Se a soma das parcelas anteriores + a parcela atual for maior que o total da venda
      if xvalor2 + valornovo >= RoundTo(rsoma.Value, arredonda_valor) then
      begin
        application.messagebox
          ('A soma das parcelas anteriores + a parcela atual' + #13 +
          'é maior que o total da venda, verifique.!' + #13 +
          'Pois irá gerar parcela com valor 0.00', 'Atenção!',
          mb_ok + MB_ICONEXCLAMATION);
        frmvenda.qrvenda_contasreceber.RecNo := xrecno;
        frmvenda.qrvenda_contasreceber.edit;
        frmvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat :=
          xparcelaorig;
        frmvenda.qrvenda_contasreceber.post;
        exit;
      end;
      xvalor := RoundTo(xvalor + frmvenda.qrvenda_contasreceber.fieldbyname
        ('valor').asfloat, arredonda_valor);
      frmvenda.qrvenda_contasreceber.Next;
    end;

    xparceval := totorc - xvalor2;
    diferenca := xparceval - valornovo;
    xparcelaorig := diferenca / xparcest;

    // agora vamos colocar os novos valores nas parcelas
    comparativo := 0.00;
    frmvenda.qrvenda_contasreceber.first;
    while not frmvenda.qrvenda_contasreceber.eof do
    begin
      if frmvenda.qrvenda_contasreceber.RecNo > xrecno then
      begin
        frmvenda.qrvenda_contasreceber.edit;
        frmvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat :=
          RoundTo(xparcelaorig, arredonda_valor);
        frmvenda.qrvenda_contasreceber.post
      end;
      comparativo := RoundTo(comparativo + xparcelaorig, arredonda_valor);
      frmvenda.qrvenda_contasreceber.Next;
    end;
    frmvenda.qrvenda_contasreceber.RecNo := xrecno + 1;
    // rdiferenca.Value := RoundTo(rsoma.Value - comparativo, arredonda_valor);
  end;
  // teste dixar posicionado no primeiro registro
  // frmvenda.qrvenda_contasreceber.First;

  // if Key = #13 then
  // bgravar.SetFocus;
end;

procedure Tfrmvenda_contasreceber.yttt558Click(Sender: TObject);
begin
  AdvMetroButton1.Click;
end;

procedure Tfrmvenda_contasreceber.BGRAVARClick(Sender: TObject);
var
  xsoma_dinheiro, xsoma_chequeav, xsoma_boleto, xsoma_chequeap, xsoma_ctdeb,
    xsoma_ctcrt, xsoma_carteira, xsoma_convenio: real;
  acdinheiro, acboleto, acchequeav, acchequeap, acctdeb, acctcrt, accarteira,
    acconvenio: real;
  VTIPO: string;
  parcela_credito, parcela_debito: Integer;
begin
  if combocondpgto.text = '' then
    exit;

  // acumula valores
  if rdiferenca.Value <> 0 then
  begin
    application.messagebox
      ('Os valores informados nas parcelas não confere com o valor total desta venda! Favor verificar!',
      'Atenção', mb_ok + MB_ICONWARNING);
    wwDBGrid1.SetFocus;
    exit;
  end;
  frmvenda.qrvenda_contasreceber.ApplyUpdates;
  frmvenda.qrvenda_contasreceber.first;
  xsoma_dinheiro := 0.00;
  xsoma_chequeav := 0.00;
  xsoma_chequeap := 0.00;
  xsoma_ctdeb := 0.00;
  xsoma_ctcrt := 0.00;
  xsoma_carteira := 0.00;
  xsoma_boleto := 0.00;
  xsoma_convenio := 0.00;
  acdinheiro := 0.00;
  acchequeav := 0.00;
  acchequeap := 0.00;
  acctdeb := 0.00;
  acctcrt := 0.00;
  accarteira := 00;
  acboleto := 0.00;
  acconvenio := 0.00;
  VTIPO := 'CARTEIRA';

  parcela_credito := 0;
  parcela_debito := 0;

  // enquanto nao chegar o fim da tabela de parcelas cl00002
  while not frmvenda.qrvenda_contasreceber.eof do
  begin
    if frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring = 'DINHEIRO'
    then
    begin
      application.ProcessMessages;
      xsoma_dinheiro := frmvenda.qrvenda_contasreceber.fieldbyname
        ('valor').asfloat;
      acdinheiro := acdinheiro + xsoma_dinheiro;
      frmvenda_fechamento.rdinheiro.Value := acdinheiro;
      frmvenda.qrvenda_contasreceber.Next;
    end;
    if frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring = 'CHEQUE A VISTA'
    then
    begin
      application.ProcessMessages;
      xsoma_chequeav := frmvenda.qrvenda_contasreceber.fieldbyname
        ('valor').asfloat;
      acchequeav := acchequeav + xsoma_chequeav;
      frmvenda_fechamento.rchequeav.Value := acchequeav;
      frmvenda.qrvenda_contasreceber.Next;
    end;
    if frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring = 'CHEQUE PRE-DATADO'
    then
    begin
      application.ProcessMessages;
      xsoma_chequeap := frmvenda.qrvenda_contasreceber.fieldbyname
        ('valor').asfloat;
      acchequeap := acchequeap + xsoma_chequeap;
      frmvenda_fechamento.rchequeap.Value := acchequeap;
      frmvenda.qrvenda_contasreceber.Next;
    end;
    if frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring = 'CARTAO DE DEBITO'
    then
    begin
      application.ProcessMessages;
      xsoma_ctdeb := frmvenda.qrvenda_contasreceber.fieldbyname
        ('valor').asfloat;
      acctdeb := acctdeb + xsoma_ctdeb;
      frmvenda_fechamento.rcartaodeb.Value := acctdeb;
      parcela_debito := parcela_debito + 1;
      frmvenda_fechamento.spin_debito.Value := parcela_debito;
      frmvenda.qrvenda_contasreceber.Next;
    end;
    if frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring = 'CARTAO DE CREDITO'
    then
    begin
      application.ProcessMessages;
      xsoma_ctcrt := frmvenda.qrvenda_contasreceber.fieldbyname
        ('valor').asfloat;
      acctcrt := acctcrt + xsoma_ctcrt;
      frmvenda_fechamento.rcartaocred.Value := acctcrt;
      parcela_credito := parcela_credito + 1;
      frmvenda_fechamento.spin_credito.Value := parcela_credito;
      frmvenda.qrvenda_contasreceber.Next;
    end;
    if frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring = 'CARTEIRA'
    then
    begin
      application.ProcessMessages;
      xsoma_carteira := frmvenda.qrvenda_contasreceber.fieldbyname
        ('valor').asfloat;
      accarteira := accarteira + xsoma_carteira;
      frmvenda_fechamento.rcrediario.Value := accarteira;
      frmvenda.qrvenda_contasreceber.Next;
    end;
    if frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring = 'BOLETO BANCARIO'
    then
    begin
      application.ProcessMessages;
      xsoma_boleto := frmvenda.qrvenda_contasreceber.fieldbyname
        ('valor').asfloat;
      acboleto := acboleto + xsoma_boleto;
      frmvenda_fechamento.rboleto := acboleto;
      frmvenda.qrvenda_contasreceber.Next;
    end;
    if frmvenda.qrvenda_contasreceber.fieldbyname('TIPO').asstring = 'CONVENIO'
    then
    begin
      application.ProcessMessages;
      xsoma_convenio := frmvenda.qrvenda_contasreceber.fieldbyname
        ('valor').asfloat;
      acconvenio := acconvenio + xsoma_convenio;
      frmvenda_fechamento.rconvenio.Value := acconvenio;
      frmvenda.qrvenda_contasreceber.Next;
    end;

    frmvenda_fechamento.rsoma.Value := acdinheiro + acchequeav + acchequeap +
      acctdeb + acctcrt + accarteira + acboleto + acconvenio;

  end;
  // liberar botao finalizar do fechamento de vendas
  if frmvenda_fechamento.rsoma.Value = frmvenda_fechamento.rtotal.Value then
  begin
    bgravar.Enabled := True;
  end;
  CONTINUAR := True;
  close;

end;

procedure Tfrmvenda_contasreceber.C1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_contasreceber.wwDBGrid1Enter(Sender: TObject);
begin
  lancando_contasreceber := True;
end;

procedure Tfrmvenda_contasreceber.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmvenda_contasreceber.BCANCELARClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_contasreceber.FormShow(Sender: TObject);
begin
  CONTINUAR := false;
  frmmodulo.qrformapgto.open;
  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.SQL.clear;
  frmmodulo.qrcondpgto.SQL.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.open;
  frmmodulo.qrcondpgto.indexfieldnames := 'condpgto';
  combocondpgto.SetFocus;
  rsoma.Value := frmvenda_fechamento.rtotal.Value;
  rsoma.DisplayFormat := mascara_valor;

end;

procedure Tfrmvenda_contasreceber.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_contasreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmvenda_contasreceber.wwDBGrid1Exit(Sender: TObject);
begin
  frmvenda.qrvenda_contasreceber.ApplyUpdates;
  { if rdiferenca.Value > 0.00 then
    begin
    wwDBGrid1.SetFocus;
    end; }
end;

end.
