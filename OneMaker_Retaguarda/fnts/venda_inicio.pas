unit venda_inicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, Buttons, TFlatPanelUnit, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, jpeg, Mask,
  AdvShapeButton, AdvGlowButton, RzEdit, RzBtnEdt, Menus,
  RzCmboBx, Grids, DBGrids, AdvReflectionImage, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel;

type
  Tfrmvenda_inicio = class(TForm)
    evendedor: TRzButtonEdit;
    enomevendedor: TRzEdit;
    ecliente: TRzButtonEdit;
    enomecliente: TRzEdit;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eendereco: TRzEdit;
    etelefone: TRzEdit;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    combobox1: TRzComboBox;
    eretirado: TRzEdit;
    qrfunci: TzQuery;
    qrcontasreceber: TzQuery;
    qrpessoas: TzQuery;
    qrcliente: TzQuery;
    dscliente: TDataSource;
    Confirmar1: TMenuItem;
    bvidalink: TAdvGlowButton;
    Convenio1: TMenuItem;
    query: TzQuery;
    img: TAdvReflectionImage;
    qrFornecedor: TzQuery;
    procedure bcancelarClick(Sender: TObject);
    procedure EVENDEDORExit(Sender: TObject);
    procedure EVENDEDORKeyPress(Sender: TObject; var Key: Char);
    procedure ECLIENTEExit(Sender: TObject);
    procedure ECLIENTEKeyPress(Sender: TObject; var Key: Char);
    procedure bgravarClick(Sender: TObject);
    procedure evendedorButtonClick(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Cancelar1Click(Sender: TObject);
    procedure eretiradoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bvidalinkClick(Sender: TObject);
    procedure Convenio1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_inicio: Tfrmvenda_inicio;
    const
   sc_DragMove = $f012;
implementation

uses modulo, loc_funci, principal, loc_cliente, venda, loc_cliente_VENDA,
  xloc_cliente, ecf, Math, loc_funci_venda, xloc_fornecedor;

{$R *.dfm}

procedure Tfrmvenda_inicio.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_inicio.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmvenda_inicio.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_inicio.EVENDEDORExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  evendedor.text := frmprincipal.zerarcodigo(evendedor.text, 6);

  if evendedor.text <> '000000' then
  begin
    qrfunci.close;
    qrfunci.sql.clear;
    qrfunci.sql.add
      ('select * from c000008 where f_vendedor = 1 and situacao = 1 and codigo = '''
      + evendedor.text + '''');
    qrfunci.open;
    if qrfunci.recordcount = 0 then
    begin
      application.messagebox('Vendedor não encontrado!', 'Atenção!',
        mb_ok + mb_iconwarning);
      evendedorButtonClick(frmvenda_inicio);

    end
    else
    begin
      evendedor.text := qrfunci.fieldbyname('codigo').asstring;
      enomevendedor.text := qrfunci.fieldbyname('nome').asstring;
      ecliente.setfocus;
    end;
  end
  else
  begin
    evendedorButtonClick(frmvenda_inicio);
  end;
end;

procedure Tfrmvenda_inicio.EVENDEDORKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_inicio.ECLIENTEExit(Sender: TObject);
begin

  if frmmodulo.natoperacao = 'venda' then
  begin
    combobox1.Items.clear;
    {
      IBTrans.active := false;
      IBTrans.Active := true; }
    // frmmodulo.Conexao.StartTransaction;
    frmmodulo.Conexao.Commit;
    tedit(Sender).Color := clwindow;
    ecliente.text := frmprincipal.zerarcodigo(ecliente.text, 6);
    if ecliente.text <> '000000' then
    begin
      if ecliente.text = '999999' then
      begin
        qrcliente.close;
        qrcliente.sql.clear;
        qrcliente.sql.add('select * from c000007 where codigo = ''' +
          ecliente.text + '''');
        qrcliente.open;
        if qrcliente.recordcount = 0 then
        begin
          application.messagebox('Cliente não encontrado!', 'Atenção!',
            mb_ok + mb_iconwarning);
          eclienteButtonClick(frmvenda_inicio);
        end
        else
        begin
          ecliente.text := qrcliente.fieldbyname('codigo').asstring;
          enomecliente.text := qrcliente.fieldbyname('nome').asstring;
          eendereco.text := '';
          etelefone.text := '';
          combobox1.visible := false;
          eretirado.visible := true;
          eretirado.setfocus;
        end;
      end
      else
      begin
        qrcliente.close;
        qrcliente.sql.clear;
        qrcliente.sql.add('select * from c000007 where codigo = ''' +
          ecliente.text + '''');
        qrcliente.open;
        if qrcliente.recordcount = 0 then
        begin
          application.messagebox('Cliente não encontrado!', 'Atenção!',
            mb_ok + mb_iconwarning);
          eclienteButtonClick(frmvenda_inicio);
        end
        else
        begin
          ecliente.text := qrcliente.fieldbyname('codigo').asstring;
          enomecliente.text := qrcliente.fieldbyname('nome').asstring;
          eendereco.text := 'Endereços: ' + qrcliente.fieldbyname('endereco')
            .asstring + ' ' + qrcliente.fieldbyname('bairro').asstring;
          etelefone.text := 'Fones: ' + qrcliente.fieldbyname('telefone1')
            .asstring + ' / ' + qrcliente.fieldbyname('celular').asstring +
            '  CPF/CNPJ: ' + qrcliente.fieldbyname('CPF').asstring;
          combobox1.ItemIndex := 0;
          qrpessoas.close;
          qrpessoas.sql.clear;
          qrpessoas.sql.add('select * from c000070 where codcliente = ''' +
            qrcliente.fieldbyname('codigo').asstring + '''');
          qrpessoas.open;

          if qrpessoas.recordcount > 0 then
          begin
            combobox1.Style := csDropDownList;
            combobox1.clear;
            combobox1.Items.add('O MESMO');
            qrpessoas.First;
            while not qrpessoas.EOF do
            begin
              combobox1.Items.add(qrpessoas.fieldbyname('NOME').asstring + ' - '
                + qrpessoas.fieldbyname('PARENTESCO').asstring);
              qrpessoas.NEXT;
            end;
            combobox1.ItemIndex := 0;
            combobox1.visible := true;
            eretirado.visible := false;
            combobox1.setfocus;
          end
          else
            bgravar.setfocus;
        end;
      end;
    end
    else
    begin
      eclienteButtonClick(frmvenda_inicio);
    end;
  end
  else
  begin // fornecedor

    frmmodulo.Conexao.Commit;
    tedit(Sender).Color := clwindow;
    ecliente.text := frmprincipal.zerarcodigo(ecliente.text, 6);
    if ecliente.text <> '000000' then
    begin
      if ecliente.text = '999999' then
      begin
        qrFornecedor.close;
        qrFornecedor.sql.clear;
        qrFornecedor.sql.add('select * from c000009 where codigo = ''' +
          ecliente.text + '''');
        qrFornecedor.open;
        if qrFornecedor.recordcount = 0 then
        begin
          application.messagebox('Fornecedor não encontrado!', 'Atenção!',
            mb_ok + mb_iconwarning);
          eclienteButtonClick(frmvenda_inicio);
        end
        else
        begin
          ecliente.text := qrFornecedor.fieldbyname('codigo').asstring;
          enomecliente.text := qrFornecedor.fieldbyname('nome').asstring;
          eendereco.text := '';
          etelefone.text := '';
        end;
      end
      else
      begin
        qrFornecedor.close;
        qrFornecedor.sql.clear;
        qrFornecedor.sql.add('select * from c000009 where codigo = ''' +
          ecliente.text + '''');
        qrFornecedor.open;
        if qrFornecedor.recordcount = 0 then
        begin
          application.messagebox('Fornecedor não encontrado!', 'Atenção!',
            mb_ok + mb_iconwarning);
          eclienteButtonClick(frmvenda_inicio);
        end
        else
        begin
          ecliente.text := qrFornecedor.fieldbyname('codigo').asstring;
          enomecliente.text := qrFornecedor.fieldbyname('nome').asstring;
          eendereco.text := 'Endereços: ' + qrFornecedor.fieldbyname('endereco')
            .asstring + ' ' + qrFornecedor.fieldbyname('bairro').asstring;
          etelefone.text := 'Fones: ' + qrFornecedor.fieldbyname('telefone1')
            .asstring + ' / ' + qrFornecedor.fieldbyname('celular1').asstring +
            '  CPF/CNPJ: ' + qrFornecedor.fieldbyname('CNPJ').asstring;
          bgravar.setfocus;
        end;
      end;
    end
    else
    begin
      eclienteButtonClick(frmvenda_inicio);
    end;
  end;

end;

procedure Tfrmvenda_inicio.ECLIENTEKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmvenda_inicio.bgravarClick(Sender: TObject);

var
  texto: Pwidechar;
  Data: TDateTime;
  dia, mes, ano: Word;
  dias: integer;
  vlimite: double;

begin

  if frmmodulo.natoperacao = 'venda' then
  begin
    bgravar.Enabled := false;

    if ecliente.text = '' then
    begin
      application.messagebox('Favor informar o cliente!', 'Atenção!',
        mb_ok + mb_iconwarning);
      ecliente.setfocus;
      bgravar.Enabled := true;
      exit;
    end;

    {
      // verifica se o ramo é FARMACIA
      IF trim(FRMMODULO.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').AsString) = 'FARMA' then
      begin

      showmessage('a');

      Sleep(100);
      query.close;
      query.sql.clear;
      query.sql.add('delete from cl00001');
      query.ExecSQL;

      Application.ProcessMessages;

      Sleep(100);
      query.close;
      query.sql.clear;
      query.SQL.Add('delete from cl00002');
      query.ExecSQL;

      Application.ProcessMessages;
      end;
    }

    qrcontasreceber.close;
    qrcontasreceber.sql.clear;
    qrcontasreceber.sql.add
      ('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''
      + ecliente.text + ''' and situacao = 1');
    qrcontasreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO');
    qrcontasreceber.open;

    (* VERIFICAR QUANTO AINDA TEM DE LIMITE *)
    vlimite := 0;
    qrcontasreceber.First;
    while not qrcontasreceber.EOF do
    begin
      vlimite := vlimite + qrcontasreceber.fieldbyname('total_cliente').AsFloat;
      qrcontasreceber.NEXT;
    end;

    (* VERIFICAR SE HA PRESTACOES EM ATRAZO *)
    qrcontasreceber.First;
    if verifica_prestacao_atrazo = '1' then
    begin
      while not qrcontasreceber.EOF do
      begin
        dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento')
          .asdatetime);
        if dias >= frmmodulo.qrconfig.fieldbyname('contasreceber_bloqueio').AsInteger
        then
        begin
          texto := Pwidechar('Cliente com Prestação vencida a ' + inttostr(dias)
            + ' Dias!, Deseja continuar?');
          if application.messagebox(texto, 'Atenção', mb_yesno + mb_iconwarning)
            = idyes then
          begin
            if not frmprincipal.autentica('Liberar venda', 3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!',
                'Aviso', mb_ok + MB_ICONERROR);
              ecliente.setfocus;
              bgravar.Enabled := true;
              exit;
            end;
          end
          else
          begin
            ecliente.setfocus;
            bgravar.Enabled := true;
            exit;
          end;
          Break;
        end;
        qrcontasreceber.NEXT;
      end;
    end;

    case qrcliente.fieldbyname('situacao').AsInteger of

      2:
        begin // em observacao
          texto := Pwidechar('Cliente com Crédito em Observação:' + #13 +
            qrcliente.fieldbyname('obs1').asstring + #13 +
            qrcliente.fieldbyname('obs2').asstring + #13 +
            qrcliente.fieldbyname('obs3').asstring + #13 +
            qrcliente.fieldbyname('obs4').asstring + #13 + 'Deseja continuar?');
          if application.messagebox(texto, 'Atenção', mb_yesno + mb_iconwarning)
            = idyes then
          begin
            if not frmprincipal.autentica('Liberar venda', 3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!',
                'Aviso', mb_ok + MB_ICONERROR);
              ecliente.setfocus;
              bgravar.Enabled := true;
              exit;
            end;
          end
          else
          begin
            ecliente.setfocus;
            bgravar.Enabled := true;
            exit;
          end;

        end;

      3:
        begin // bloqueado
          texto := Pwidechar
            ('Cliente com crédito Bloqueado!, Deseja continuar?');
          if application.messagebox(texto, 'Atenção', mb_yesno + mb_iconwarning)
            = idyes then
          begin
            if not frmprincipal.autentica('Liberar venda', 4) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!',
                'Aviso', mb_ok + MB_ICONERROR);
              ecliente.setfocus;
              bgravar.Enabled := true;
              exit;
            end;
          end
          else
          begin
            ecliente.setfocus;
            bgravar.Enabled := true;
            exit;
          end;

        end;
      4:
        begin // inativo
          texto := Pwidechar('Cliente INATIVO!, Deseja continuar?');
          if application.messagebox(texto, 'Atenção', mb_yesno + mb_iconwarning)
            = idyes then
          begin
            if not frmprincipal.autentica('Liberar venda', 3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!',
                'Aviso', mb_ok + MB_ICONERROR);
              ecliente.setfocus;
              bgravar.Enabled := true;
              exit;
            end;
          end
          else
          begin
            ecliente.setfocus;
            bgravar.Enabled := true;
            exit;
          end;

        end;
      5:
        begin // spc
          application.messagebox('Desculpe! Cliente no SPC, Verifique!',
            'Aviso', mb_ok + MB_ICONEXCLAMATION);
          ecliente.setfocus;
          bgravar.Enabled := true;
          exit;

        end;
    end;

    { if qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
      begin
      if limite_disponivel <= 0 then
      begin
      texto := Pwidechar('Este cliente possue um limite disponível de:' + #13 + ' ---> R$ ' + formatfloat('###,###,##0.00', (qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - vlimite)) + '  <--- ' + #13 + 'É necessário autorização para prosseguir! ' + #13 + 'Deseja continuar?');
      if application.MessageBox(texto, 'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
      begin
      if not frmPrincipal.autentica('Liberar venda', 3) then
      begin
      application.messagebox('Desculpe! Seu acesso não foi autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
      ECLIENTE.SetFocus;
      bgravar.Enabled := True;
      exit;
      end;
      end
      else
      begin
      ECLIENTE.SetFocus;
      bgravar.Enabled := True;
      exit;
      end;
      end;
      end; }

    movimento_venda := 1; // inclusao

    ecf_impressao := 0;

    numero_cupomx := '';
    if ecf_impressao = 1 then
    begin
      if ecf_abre_cupom(ecf_modelo, '') = 'ERRO' then
      begin
        application.messagebox('Erro ao iniciar cupom!', 'Erro',
          mb_ok + MB_ICONERROR);
        bgravar.Enabled := true;
        exit;
      end;
      numero_cupomx := ecf_numero_cupom(ecf_modelo);
    end;

    limite_disponivel := qrcliente.fieldbyname('LIMITE').AsFloat - vlimite;

    frmvenda := tfrmvenda.create(application);
    try
      frmvenda.lvenda_data.Caption := frmmodulo.qrcaixa_operador.fieldbyname
        ('data').asstring;
      frmvenda.lcliente_codigo.Caption := ecliente.text;
      frmvenda.lcliente_nome.Caption := enomecliente.text;
      frmvenda.lcliente_cpf.Caption := qrcliente.fieldbyname('cpf').asstring;
      frmvenda.LRETIRADO.Caption := combobox1.text;
      frmvenda.lvenda_codigo.Caption := frmprincipal.codifica('000048');
      frmvenda.lcliente_limite.Caption := formatfloat('###,###,##0.00',
        (qrcliente.fieldbyname('LIMITE').AsFloat - vlimite));
      frmvenda.lvendedor_nome.Caption := enomevendedor.text;
      frmvenda.lvendedor_codigo.Caption := evendedor.text;
      frmvenda.lcaixa_codigo.Caption := frmmodulo.qrcaixa_operador.fieldbyname
        ('CODIGO').asstring;
      frmvenda.lvenda_cupom.Caption := numero_cupomx;
      // agenda
      if Self.Tag = 150 then
        frmvenda.Tag := 150;

      frmvenda.ShowModal
    finally
      frmvenda.Release;
      frmvenda := nil;
      close;
    end;
  end
  else
  begin // fornecedor
    movimento_venda := 1;
    bgravar.Enabled := false;

    if ecliente.text = '' then
    begin
      application.messagebox('Favor informar o Fornecedor!', 'Atenção!',
        mb_ok + mb_iconwarning);
      ecliente.setfocus;
      bgravar.Enabled := true;
      exit;
    end;

    frmvenda := tfrmvenda.create(application);
    try
      frmvenda.lvenda_data.Caption := frmmodulo.qrcaixa_operador.fieldbyname
        ('data').asstring;
      frmvenda.lcliente_codigo.Caption := ecliente.text;
      frmvenda.lcliente_nome.Caption := enomecliente.text;
      frmvenda.lcliente_cpf.Caption := qrFornecedor.fieldbyname('CNPJ')
        .asstring;
      frmvenda.LRETIRADO.Caption := ''; // combobox1.text;
      frmvenda.lvenda_codigo.Caption := frmprincipal.codifica('000048');
      frmvenda.lcliente_limite.Caption := ''; // formatfloat('###,###,##0.00',
      // (qrcliente.fieldbyname('LIMITE').AsFloat - vlimite));
      frmvenda.lvendedor_nome.Caption := enomevendedor.text;
      frmvenda.lvendedor_codigo.Caption := evendedor.text;
      frmvenda.lcaixa_codigo.Caption := frmmodulo.qrcaixa_operador.fieldbyname
        ('CODIGO').asstring;
      frmvenda.lvenda_cupom.Caption := numero_cupomx;
      // agenda
      if Self.Tag = 150 then
        frmvenda.Tag := 150;
      frmvenda.ShowModal
    finally
      frmvenda.Release;
      frmvenda := nil;
      close;
    end;
  end;

end;

procedure Tfrmvenda_inicio.evendedorButtonClick(Sender: TObject);
begin
  frmloc_funci_venda := tfrmloc_funci_venda.create(Self);
  qrfunci.close;
  qrfunci.sql.clear;
  qrfunci.sql.add
    ('select * from c000008 where f_vendedor = 1 and situacao = 1');
  qrfunci.open;
  frmloc_funci_venda.ShowModal;

  evendedor.text := qrfunci.fieldbyname('codigo').asstring;
  enomevendedor.text := qrfunci.fieldbyname('nome').asstring;
  evendedor.setfocus;
end;

procedure Tfrmvenda_inicio.eclienteButtonClick(Sender: TObject);
begin
  if frmmodulo.natoperacao = 'venda' then
  begin
    frmxloc_cliente := tfrmxloc_cliente.create(Self);
    frmxloc_cliente.ShowModal;
    if resultado_pesquisa1 <> '' then
    begin
      if resultado_pesquisa1 = '999999' then
      begin
        qrcliente.close;
        qrcliente.sql.clear;
        qrcliente.sql.add('select * from c000007 where codigo = ''' +
          resultado_pesquisa1 + '''');
        qrcliente.open;
        ecliente.text := qrcliente.fieldbyname('codigo').asstring;
        enomecliente.text := qrcliente.fieldbyname('nome').asstring;
        eendereco.text := '';
        etelefone.text := '';

        combobox1.visible := false;
        eretirado.visible := true;

        eretirado.setfocus;

      end
      else
      begin
        qrcliente.close;
        qrcliente.sql.clear;
        qrcliente.sql.add('select * from c000007 where codigo = ''' +
          resultado_pesquisa1 + '''');
        qrcliente.open;
        ecliente.text := qrcliente.fieldbyname('codigo').asstring;
        enomecliente.text := qrcliente.fieldbyname('nome').asstring;
        ecliente.text := qrcliente.fieldbyname('codigo').asstring;
        enomecliente.text := qrcliente.fieldbyname('nome').asstring;
        eendereco.text := 'Endereços: ' + qrcliente.fieldbyname('endereco')
          .asstring + ' ' + qrcliente.fieldbyname('bairro').asstring;
        etelefone.text := 'Fones: ' + qrcliente.fieldbyname('telefone1')
          .asstring + ' / ' + qrcliente.fieldbyname('celular').asstring +
          '  CPF/CNPJ: ' + qrcliente.fieldbyname('CPF').asstring;

        combobox1.ItemIndex := 0;
        qrpessoas.close;
        qrpessoas.sql.clear;
        qrpessoas.sql.add('select * from c000070 where codcliente = ''' +
          qrcliente.fieldbyname('codigo').asstring + '''');
        qrpessoas.open;

        if qrpessoas.recordcount > 0 then
        begin
          combobox1.clear;
          combobox1.Items.add('O MESMO');

          qrpessoas.First;
          while not qrpessoas.EOF do
          begin
            combobox1.Items.add(qrpessoas.fieldbyname('NOME').asstring + ' - ' +
              qrpessoas.fieldbyname('PARENTESCO').asstring);
            qrpessoas.NEXT;
          end;
          combobox1.ItemIndex := 0;

          combobox1.visible := true;
          eretirado.visible := false;
          combobox1.setfocus;

        end
        else
          bgravar.setfocus;
      end;
    end
    else
      ecliente.setfocus;
  end
  else
  begin
    // fornecedor
    frmxloc_fornecedor := Tfrmxloc_fornecedor.create(Self);
    frmxloc_fornecedor.ShowModal;
    if resultado_pesquisa1 <> '' then
    begin
      if resultado_pesquisa1 = '999999' then
      begin
        qrFornecedor.close;
        qrFornecedor.sql.clear;
        qrFornecedor.sql.add('select * from c000009 where codigo = ''' +
          resultado_pesquisa1 + '''');
        qrFornecedor.open;
        ecliente.text := qrFornecedor.fieldbyname('codigo').asstring;
        enomecliente.text := qrFornecedor.fieldbyname('nome').asstring;
        eendereco.text := '';
        etelefone.text := '';

      end
      else
      begin
        qrFornecedor.close;
        qrFornecedor.sql.clear;
        qrFornecedor.sql.add('select * from c000009 where codigo = ''' +
          resultado_pesquisa1 + '''');
        qrFornecedor.open;
        ecliente.text := qrFornecedor.fieldbyname('codigo').asstring;
        enomecliente.text := qrFornecedor.fieldbyname('nome').asstring;
        ecliente.text := qrFornecedor.fieldbyname('codigo').asstring;
        enomecliente.text := qrFornecedor.fieldbyname('nome').asstring;
        eendereco.text := 'Endereços: ' + qrFornecedor.fieldbyname('endereco')
          .asstring + ' ' + qrFornecedor.fieldbyname('bairro').asstring;
        etelefone.text := 'Fones: ' + qrFornecedor.fieldbyname('telefone1')
          .asstring + ' / ' + qrFornecedor.fieldbyname('celular1').asstring +
          '  CPF/CNPJ: ' + qrFornecedor.fieldbyname('CNPJ').asstring;

      end;
      bgravar.setfocus;
    end
    else
      ecliente.setfocus;
  end
end;

procedure Tfrmvenda_inicio.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmvenda_inicio.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_inicio.eretiradoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmvenda_inicio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmvenda_inicio.bvidalinkClick(Sender: TObject);
begin
  if frmprincipal.acesso(codigo_usuario, '03.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!', 'Atenção',
      mb_ok + MB_ICONERROR);
    exit;
  end;

  query.close;
  query.sql.clear;
  query.sql.add('select * from cl00001');
  query.open;
  if query.recordcount > 0 then
  begin
    // showmessage('a');
    query.First;
    while not query.EOF do
    begin
      query.Delete;
    end;
    frmmodulo.Conexao.Commit;
    application.ProcessMessages;
  end;

//  frmvenda_farma_vidalink := tfrmvenda_farma_vidalink.create(application);
 // try
  //  frmvenda_farma_vidalink.ShowModal;
//  finally
  //  frmvenda_farma_vidalink.Release;
  //  frmvenda_farma_vidalink := nil;
    close;
 // end;

end;

procedure Tfrmvenda_inicio.Convenio1Click(Sender: TObject);
begin
  bvidalinkClick(frmvenda_inicio);
end;

procedure Tfrmvenda_inicio.FormShow(Sender: TObject);
begin
  if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'FARMA' then
    bvidalink.visible := true;

  if frmmodulo.natoperacao <> 'venda' then
  begin
    Label2.Caption := 'Fornecedor:';
    Label3.visible := false;
    eretirado.visible := false;
    combobox1.visible := false;
    qrFornecedor.close;
    qrFornecedor.sql.clear;
    qrFornecedor.sql.add('select * from C000009 order by codigo');
    qrFornecedor.open;
  end;

  if Self.Tag = 150 then
  begin
    EVENDEDORExit(Self);
    ECLIENTEExit(Self);
    evendedor.ReadOnly := true;
    ecliente.ReadOnly := true;
  end;

end;

end.
