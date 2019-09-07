unit lista_funcionario2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton, AdvReflectionImage, Vcl.Imaging.jpeg, dxGDIPlusClasses,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmlista_funcionario2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    lcliente: TLabel;
    Label6: TLabel;
    combo_relatorio: TComboBox;
    combo_funcionario: TComboBox;
    combo_ordem: TComboBox;
    fxdesenhar: TfrxDesigner;
    fxfuncionario: TfrxReport;
    fsfuncionario: TfrxDBDataset;
    qrfuncionario: TZQuery;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrfuncionarioCODIGO: TWideStringField;
    qrfuncionarioNOME: TWideStringField;
    qrfuncionarioENDERECO: TWideStringField;
    qrfuncionarioBAIRRO: TWideStringField;
    qrfuncionarioCIDADE: TWideStringField;
    qrfuncionarioUF: TWideStringField;
    qrfuncionarioCEP: TWideStringField;
    qrfuncionarioTELEFONE: TWideStringField;
    qrfuncionarioCELULAR: TWideStringField;
    qrfuncionarioEMAIL: TWideStringField;
    qrfuncionarioCPF: TWideStringField;
    qrfuncionarioRG: TWideStringField;
    qrfuncionarioCTPS: TWideStringField;
    qrfuncionarioFUNCAO: TWideStringField;
    dtfldDATA_ADMISSAO: TDateField;
    dtfldDATA_DEMISSAO: TDateField;
    qrfuncionarioSITUACAO: TIntegerField;
    qrfuncionarioSALARIO: TFloatField;
    qrfuncionarioCOMISSAO: TFloatField;
    qrfuncionarioOBS1: TWideStringField;
    qrfuncionarioOBS2: TWideStringField;
    qrfuncionarioOBS3: TWideStringField;
    dtfldNASCIMENTO: TDateField;
    qrfuncionarioF_CAIXA: TIntegerField;
    qrfuncionarioF_VENDEDOR: TIntegerField;
    qrfuncionarioF_TECNICO: TIntegerField;
    qrfuncionarioNUMERO: TWideStringField;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_funcionarioChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_funcionario2: Tfrmlista_funcionario2;
    const
   sc_DragMove = $f012;


implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, xloc_funcionario;

{$R *.dfm}

procedure Tfrmlista_funcionario2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_funcionario2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_Funcionario.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;




end;

procedure Tfrmlista_funcionario2.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_funcionario2.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_funcionario2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_funcionario2.bimprimirClick(Sender: TObject);
var funcionario, ordem: string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_FUNCIONARIO.Text = 'TODOS' then FUNCIONARIO := '' else begin FUNCIONARIO := ' and codIGO = ''' + copy(combo_FUNCIONARIO.text, 1, 6) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'FUNCIONÁRIO: ' + COMBO_FUNCIONARIO.TEXT; end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    qrFUNCIONARIO.close;
    qrFUNCIONARIO.sql.clear;
    qrFUNCIONARIO.sql.add('select * from c000008 where NOME IS NOT NULL ' + FUNCIONARIO + ' order by ' + COMBO_ORDEM.TEXT);
    qrFUNCIONARIO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE FUNCIONÁRIOS';
    FXFUNCIONARIO.LoadFromFile('\OneMaker\server\rel\f000007.fr3');
    FXFUNCIONARIO.ShowReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    qrFUNCIONARIO.close;
    qrFUNCIONARIO.sql.clear;
    qrFUNCIONARIO.sql.add('select * from c000008 where NOME IS NOT NULL ' + FUNCIONARIO + ' order by ' + COMBO_ORDEM.TEXT);
    qrFUNCIONARIO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'FICHA CADASTRAL DE FUNCIONÁRIOS';
    FXFUNCIONARIO.LoadFromFile('\OneMaker\server\rel\f000008.fr3');
    FXFUNCIONARIO.ShowReport;
  end;

end;

procedure Tfrmlista_funcionario2.combo_funcionarioChange(Sender: TObject);
begin
  if combo_FUNCIONARIO.Text = 'SELECIONAR' then
  begin
    frmxloc_FUNCIONARIO := tfrmxloc_FUNCIONARIO.create(self);
    frmxloc_FUNCIONARIO.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_FUNCIONARIO.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_FUNCIONARIO.ItemIndex := combo_FUNCIONARIO.Items.Count - 1;
    end
    else
      COMBO_FUNCIONARIO.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_funcionario2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXFUNCIONARIO.LoadFromFile('\OneMaker\server\rel\f000007.fr3');
    FXFUNCIONARIO.DesignReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    FXFUNCIONARIO.LoadFromFile('\OneMaker\server\rel\f000008.fr3');
    FXFUNCIONARIO.DesignReport;
  end;

end;

end.
