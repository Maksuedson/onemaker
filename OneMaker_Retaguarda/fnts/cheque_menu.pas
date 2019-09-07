unit cheque_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls,
  Mask, RzEdit, RzBtnEdt, AdvGlowButton, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Menus, AdvMenus, DBCtrls, UCBase,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvDBControls,
  JvExMask, JvToolEdit;

type
  Tfrmcheque_menu = class(TForm)
    Panel3: TPanel;
    Label10: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    bfiltrar: TAdvGlowButton;
    ecliente: TRzButtonEdit;
    ENUMERO: TEdit;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    wwDBGrid1: TwwDBGrid;
    dscheque: TDataSource;
    qrcheque: TZQuery;
    qrchequecliente: TStringField;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    bbaixar: TAdvGlowButton;
    pop_usuario: TAdvPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Baixar1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Localizar1: TMenuItem;
    Label3: TLabel;
    combo_situacao: TComboBox;
    qrcliente2: TZQuery;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    rtotal: TRzNumericEdit;
    rqde: TRzNumericEdit;
    btotaliza_cheque: TButton;
    qrchequesituacaoa: TStringField;
    Panel4: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBDateEdit3: TJvDBDateEdit;
    DBDateEdit4: TJvDBDateEdit;
    DBDateEdit5: TJvDBDateEdit;
    DBDateEdit6: TJvDBDateEdit;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    DBDateEdit2: TJvDBDateEdit;
    UCControls1: TUCControls;
    qrchequeCODIGO: TWideStringField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TWideStringField;
    qrchequeTITULAR: TWideStringField;
    qrchequeCODBANCO: TWideStringField;
    qrchequeAGENCIA: TWideStringField;
    qrchequeCONTA: TWideStringField;
    qrchequeNUMERO: TWideStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TWideStringField;
    qrchequeOBS1: TWideStringField;
    qrchequeOBS2: TWideStringField;
    qrchequeCODCONTAS_PAGAR: TWideStringField;
    qrchequeDESTINO: TWideStringField;
    qrchequeCODCONTA_CORRENTE: TWideStringField;
    qrchequeCODCONTA: TWideStringField;
    qrchequeBANCO: TStringField;
    qrchequeVENCIMENTO: TDateField;
    qrchequeEMISSAO: TDateField;
    qrchequeDATA_DEPOSITO1: TDateField;
    qrchequeDATA_DEPOSITO2: TDateField;
    qrchequeDATA_DEVOLUCAO1: TDateField;
    qrchequeDATA_DEVOLUCAO2: TDateField;
    qrchequeDATA_CONTA: TDateField;
    qrchequeDATA_BAIXA: TDateField;
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
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bbaixarClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eclienteEnter(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure btotaliza_chequeClick(Sender: TObject);
    procedure qrchequeCalcFields(DataSet: TDataSet);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcheque_menu: Tfrmcheque_menu;
    const
   sc_DragMove = $f012;

implementation

uses modulo, principal, xloc_cliente, cheque, Cheque_baixa, lista_cheque2;

{$R *.dfm}

procedure Tfrmcheque_menu.bincluirClick(Sender: TObject);
begin
  CHEQUE_CODCLIENTE := '';
  CHEQUE_VENDA := '';

  qrcheque.insert;
  qrcheque.FIELDBYNAME('CODCLIENTE').ASSTRING := CHEQUE_CODCLIENTE;
  qrcheque.FIELDBYNAME('CODVENDA').ASSTRING := CHEQUE_VENDA;
  qrcheque.FIELDBYNAME('codigo').ASSTRING := frmprincipal.codifica('000040');
  qrcheque.FIELDBYNAME('SITUACAO').ASSTRING := '1';

  frmcheque := tfrmcheque.create(self);
  frmcheque.showmodal;

  bfiltrarClick(frmcheque_menu);

end;

procedure Tfrmcheque_menu.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcheque_menu.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcheque_menu.balterarClick(Sender: TObject);
begin
  if qrcheque.RecordCount > 0 then
  begin
    qrcheque.Edit;
    frmcheque := tfrmcheque.create(self);
    frmcheque.showmodal;
    bfiltrarClick(frmcheque_menu);
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;
end;

procedure Tfrmcheque_menu.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir cheque', 4) then
  begin

    frmprincipal.logUC('Excluiu Cheque - Nr: ' + qrcheque.FieldByName('numero').AsString +' CodCliente: ' +
      qrcheque.FieldByName('codcliente').AsString, 3);

    qrcheque.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmcheque_menu.blocalizarClick(Sender: TObject);
begin
  //
end;

procedure Tfrmcheque_menu.bbaixarClick(Sender: TObject);
begin
  if frmprincipal.autentica('Baixar cheque', 4) then
  begin
    qrcheque.Edit;
    frmcheque_baixa := tfrmcheque_baixa.create(self);
    frmcheque_baixa.showmodal;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmcheque_menu.brelatorioClick(Sender: TObject);
begin
  FRMLISTA_CHEQUE2 := TFRMLISTA_CHEQUE2.create(self);
  FRMLISTA_CHEQUE2.showmodal;
end;

procedure Tfrmcheque_menu.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcheque_menu.Localizar1Click(Sender: TObject);
begin
  ecliente.setfocus;
end;

procedure Tfrmcheque_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcheque_menu.eclienteEnter(Sender: TObject);
begin
  ecliente.text := '';
end;

procedure Tfrmcheque_menu.eclienteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ecliente.text;
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ecliente.text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;

  end;
  ENUMERO.setfocus;
end;

procedure Tfrmcheque_menu.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ecliente.text <> '' then
    begin
      qrcliente2.close;
      qrcliente2.sql.Clear;
      qrcliente2.sql.add('select * from c000007 where codigo = ''' +
        frmprincipal.zerarcodigo(copy(ecliente.text, 1, 6), 6) + '''');
      qrcliente2.Open;
      if qrcliente2.RecordCount > 0 then
      begin
        if qrcliente2.RecordCount = 1 then
        begin
          ecliente.text := qrcliente2.FIELDBYNAME('codigo').ASSTRING + ' ' +
            qrcliente2.FIELDBYNAME('nome').ASSTRING;
          perform(wm_nextdlgctl, 0, 0);
        end
        else
        begin
          resultado_pesquisa1 := '';
          parametro_pesquisa :=
            'select * from c000007 where upper(nome) like ''' +
            ansiuppercase(ecliente.text) + '%'' order by nome';
          frmxloc_cliente := tfrmxloc_cliente.create(self);
          frmxloc_cliente.showmodal;
          if resultado_pesquisa1 <> '' then
          begin
            ecliente.text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
            perform(wm_nextdlgctl, 0, 0);
          end;
        end;
      end
      else
      begin
        Application.messagebox('Cliente não encontrado! Favor verificar!',
          'Atenção', mb_ok + mb_iconerror);
        ecliente.setfocus;

      end;
    end
    else
      perform(wm_nextdlgctl, 0, 0);
  end;

end;

procedure Tfrmcheque_menu.FormShow(Sender: TObject);
begin
  bfiltrarClick(frmcheque_menu);
end;

procedure Tfrmcheque_menu.bfiltrarClick(Sender: TObject);
var
  cliente, cheque, situacao: string;
begin
  if ecliente.text = '' then
    cliente := ''
  else
    cliente := ' and codcliente = ''' + copy(ecliente.text, 1, 6) + '''';
  if (ENUMERO.text = '000000') or (ENUMERO.text = '') then
    cheque := ''
  else
    cheque := ' and numero = ''' + ENUMERO.text + '''';

  if combo_situacao.itemindex = 0 then
    situacao := ' and situacao = 1 ';
  if combo_situacao.itemindex = 1 then
    situacao := ' and situacao > 1 ';
  if combo_situacao.itemindex = 2 then
    situacao := ' and situacao = 2 ';
  if combo_situacao.itemindex = 3 then
    situacao := ' and situacao = 3 ';
  if combo_situacao.itemindex = 4 then
    situacao := ' and situacao = 4 ';
  if combo_situacao.itemindex = 5 then
    situacao := ' and situacao = 5 ';
  if combo_situacao.itemindex = 6 then
    situacao := ' and situacao = 6 ';
  if combo_situacao.itemindex = 7 then
    situacao := ' and situacao = 7 ';
  if combo_situacao.itemindex = 8 then
    situacao := ' and situacao = 8 ';
  if combo_situacao.itemindex = 9 then
    situacao := ' and situacao = 9 ';
  if combo_situacao.itemindex = 10 then
    situacao := '';

  qrcheque.close;
  qrcheque.sql.Clear;
  qrcheque.sql.add
    ('select * from c000040 where vencimento BETWEEN :datai and :dataf ' +
    cliente + cheque + situacao + ' order by vencimento');
  qrcheque.params.ParamByName('datai').asdatetime := DateEdit1.date;
  qrcheque.params.ParamByName('dataf').asdatetime := DateEdit2.date;
  qrcheque.Open;

  rqde.Value := qrcheque.RecordCount;

  btotaliza_chequeClick(frmcheque_menu);
end;

procedure Tfrmcheque_menu.btotaliza_chequeClick(Sender: TObject);
begin
  rqde.Value := 0;
  rtotal.Value := 0;
  dscheque.DataSet := nil;
  qrcheque.first;
  while not qrcheque.Eof do
  begin
    rqde.Value := rqde.Value + 1;
    rtotal.Value := rtotal.Value + qrcheque.FIELDBYNAME('valor').asfloat;

    qrcheque.next;
  end;
  dscheque.DataSet := qrcheque;
end;

procedure Tfrmcheque_menu.qrchequeCalcFields(DataSet: TDataSet);
begin
  if qrchequeSITUACAO.AsInteger = 1 then
    qrchequesituacaoa.ASSTRING := 'Ativo'
  else
    qrchequesituacaoa.ASSTRING := 'Baixado';

end;

procedure Tfrmcheque_menu.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DateEdit1.setfocus;
end;

procedure Tfrmcheque_menu.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcheque_menu.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    combo_situacao.setfocus;
end;

procedure Tfrmcheque_menu.combo_situacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bfiltrar.setfocus;
end;

end.
