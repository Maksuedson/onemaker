unit orcamento_localizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, TFlatPanelUnit, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, Wwdbigrd, Wwdbgrid,
  Buttons, Menus, wwdblook, AdvGlowButton, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel;

type
  TfrmOrcamento_localizar = class(TForm)
    qrorcamento: TZQuery;
    qrorcamentocliente: TStringField;
    wwDBGrid1: TwwDBGrid;
    dsorcamento: TDataSource;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    LocalizarporNmero1: TMenuItem;
    LocalizarporCliente1: TMenuItem;
    Bevel1: TBevel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    combocliente: TwwDBLookupCombo;
    BITBTN1: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    AdvMetroButton1: TAdvMetroButton;
    qrorcamentoCODIGO: TWideStringField;
    dtfldDATA: TDateField;
    qrorcamentoCODCLIENTE: TWideStringField;
    qrorcamentoCODVENDEDOR: TWideStringField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoOBS1: TWideStringField;
    qrorcamentoOBS2: TWideStringField;
    qrorcamentoOBS3: TWideStringField;
    qrorcamentoOBS4: TWideStringField;
    qrorcamentoCODNF: TWideStringField;
    qrorcamentoCODVENDA: TWideStringField;
    qrorcamentoGERA_NF: TIntegerField;
    qrorcamentoQTDE_MESES: TIntegerField;
    qrorcamentoCONDPAGTOCLIENTE: TWideStringField;
    qrorcamentoPEND_ENTRADA: TIntegerField;
    qrorcamentoPEND_CHEQUE: TIntegerField;
    qrorcamentoPEND_CARTAO: TIntegerField;
    qrorcamentoNOME_VENDEDOR: TWideStringField;
    bttvenda001v: TAdvGlowButton;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure LocalizarporNmero1Click(Sender: TObject);
    procedure LocalizarporCliente1Click(Sender: TObject);
    procedure comboclienteEnter(Sender: TObject);
    procedure comboclienteExit(Sender: TObject);
    procedure comboclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure bttvenda001vClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codcliente: string;
  end;

var
  frmOrcamento_localizar: TfrmOrcamento_localizar;
   const
   sc_DragMove = $f012;
implementation

uses modulo, orcamento, principal, Math, venda;

{$R *.dfm}

procedure TfrmOrcamento_localizar.Edit1Enter(Sender: TObject);
begin
  Edit1.Color := $00A0FAF8;
end;

procedure TfrmOrcamento_localizar.Edit1Exit(Sender: TObject);
begin
  Edit1.Color := clwindow;
end;

procedure TfrmOrcamento_localizar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    BitBtn1Click(frmOrcamento_localizar);
  end;
end;

procedure TfrmOrcamento_localizar.BitBtn1Click(Sender: TObject);
begin
  if RadioButton1.checked then
  begin
    Edit1.text := frmprincipal.zerarcodigo(Edit1.text, 6);
    qrorcamento.close;
    qrorcamento.sql.clear;
    qrorcamento.sql.add('select * from c000056 where upper(codigo) = ''' +
      ansiuppercase(Edit1.text) + ''' order by codigo');
    qrorcamento.open;

  end
  else
  begin
    qrorcamento.close;
    qrorcamento.sql.clear;
    qrorcamento.sql.add('select * from c000056 where codcliente = ''' +
      frmmodulo.qrcliente.fieldbyname('codigo').asstring +
      ''' order by codigo');
    qrorcamento.open;
  end;

  if qrorcamento.RecordCount > 0 then
    wwDBGrid1.setfocus
  else
  begin
    showmessage('Não foi encontrado nenhum registro!');
    if RadioButton1.checked then
      Edit1.setfocus
    else
      combocliente.setfocus;
  end;
end;

procedure TfrmOrcamento_localizar.bttvenda001vClick(Sender: TObject);
begin
  AdvMetroButton1.Click;
end;

procedure TfrmOrcamento_localizar.Fechar1Click(Sender: TObject);
begin
  frmmodulo.cod_orcamento := '';
  close;
end;

procedure TfrmOrcamento_localizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmOrcamento_localizar.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    frmmodulo.cod_orcamento := qrorcamento.fieldbyname('codigo').asstring;
    if frmOrcamento_localizar.Tag = 100 then
    begin
      frmmodulo.qrorcamento_produto.close;
      frmmodulo.qrorcamento_produto.sql.clear;
      frmmodulo.qrorcamento_produto.sql.add
        ('SELECT * FROM C000057 WHERE CODORCAMENTO = :CODORCAMENTO');
      frmmodulo.qrorcamento_produto.Params.ParamByName('CODORCAMENTO').asstring
        := frmmodulo.cod_orcamento;
      frmmodulo.qrorcamento_produto.open;
      venda.usou_orcamento := 1;
    end;
    close;
  end;
end;

procedure TfrmOrcamento_localizar.wwDBGrid1DblClick(Sender: TObject);
begin
  frmmodulo.cod_orcamento := qrorcamento.fieldbyname('codigo').asstring;
  // codigo_orcamento

  if frmOrcamento_localizar.Tag = 100 then
  begin
    frmmodulo.qrorcamento_produto.close;
    frmmodulo.qrorcamento_produto.sql.clear;
    frmmodulo.qrorcamento_produto.sql.add
      ('SELECT * FROM C000057 WHERE CODORCAMENTO = :CODORCAMENTO');
    frmmodulo.qrorcamento_produto.Params.ParamByName('CODORCAMENTO').asstring :=
      frmmodulo.cod_orcamento;
    frmmodulo.qrorcamento_produto.open;
    venda.usou_orcamento := 1;
  end;
  close;
end;

procedure TfrmOrcamento_localizar.FormShow(Sender: TObject);
begin
  Edit1.setfocus;
  if Self.Tag = 100 then
  begin
    Panel2.Visible := False;
    qrorcamento.close;
    qrorcamento.sql.clear;
    qrorcamento.sql.add
      ('select * from c000056 where codcliente = :codcliente and GERA_NF = :GERA_NF order by codigo');
    qrorcamento.Params.ParamByName('gera_nf').AsInteger := 0;
    qrorcamento.Params.ParamByName('codcliente').asstring := codcliente;
    qrorcamento.open;
  end;

  if qrorcamento.RecordCount = 0 then
  begin
    showmessage('Não foi encontrado nenhum registro!');
  end;

end;

procedure TfrmOrcamento_localizar.RadioButton1Click(Sender: TObject);
begin
  Edit1.Visible := true;
  combocliente.Visible := False;
  Edit1.setfocus;
  GroupBox2.caption := 'Informe o número do orçamento';
end;

procedure TfrmOrcamento_localizar.RadioButton2Click(Sender: TObject);
begin
  Edit1.Visible := False;
  combocliente.Visible := true;
  combocliente.setfocus;
  GroupBox2.caption := 'Informe o nome do cliente';
end;

procedure TfrmOrcamento_localizar.LocalizarporNmero1Click(Sender: TObject);
begin
  RadioButton1.checked := true;
end;

procedure TfrmOrcamento_localizar.LocalizarporCliente1Click(Sender: TObject);
begin
  RadioButton2.checked := true;
end;

procedure TfrmOrcamento_localizar.comboclienteEnter(Sender: TObject);
begin
  combocliente.Color := $00A0FAF8;
end;

procedure TfrmOrcamento_localizar.comboclienteExit(Sender: TObject);
begin
  combocliente.Color := clwindow;
end;

procedure TfrmOrcamento_localizar.comboclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    BitBtn1Click(frmOrcamento_localizar);
end;

procedure TfrmOrcamento_localizar.AdvMetroButton1Click(Sender: TObject);
begin
  frmmodulo.cod_orcamento := '';
  close;
end;

procedure TfrmOrcamento_localizar.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmOrcamento_localizar.bfecharClick(Sender: TObject);
begin
  frmmodulo.cod_orcamento := '';
  close;
end;

end.
