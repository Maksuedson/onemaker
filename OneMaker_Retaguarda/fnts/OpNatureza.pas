unit OpNatureza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvGlowButton, DB, ExtCtrls;

type
  TfrmOpNatureza = class(TForm)
    pop1: TPopupMenu;
    V1: TMenuItem;
    D1: TMenuItem;
    G1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    S1: TMenuItem;
    procedure NotaFiscal1Click(Sender: TObject);
    procedure VendaSimples1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpNatureza: TfrmOpNatureza;

implementation

uses modulo, orcamento_impressao, orcamento, principal;

{$R *.dfm}

procedure TfrmOpNatureza.NotaFiscal1Click(Sender: TObject);
begin
  { frmmodulo.qrcliente.Locate('CODIGO', frmmodulo.qrorcamento.fieldbyname('codcliente').asstring, []);
    frmorcamento_impressao := tfrmorcamento_impressao.create(self);
    frmorcamento_impressao.TPNota_FiscalClick(frmorcamento_impressao);
    Application.ProcessMessages;
    close; }
end;

procedure TfrmOpNatureza.S1Click(Sender: TObject);
begin
  frmmodulo.bcontinua_venda := False;
  Close;
end;

procedure TfrmOpNatureza.VendaSimples1Click(Sender: TObject);
var
  arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  subir_papel, conta_formas: integer;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  prestacao: integer;
begin
  { //verifica se ja foi gerado venda e so libera pra emitir NF
    if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString <> '' then
    begin
    Application.MessageBox('Já foi gerado venda para este orçamento', 'Atenção', mb_ok + MB_ICONEXCLAMATION);
    Exit;
    end;

    frmmodulo.qrcliente.Locate('CODIGO', frmmodulo.qrorcamento.fieldbyname('codcliente').asstring, []);
    frmorcamento_impressao := tfrmorcamento_impressao.create(self);
    frmorcamento_impressao.ECF1Click(frmorcamento_impressao);
    Application.ProcessMessages;

    //imprimi direto orcamento em bobina 40 colunas
    if frmmodulo.imprimir_orcamento_auto = 1 then
    begin
    frmorcamento_impressao.tpa4Click(frmorcamento_impressao);
    Application.ProcessMessages;
    end;

    close; }
end;

procedure TfrmOpNatureza.FormShow(Sender: TObject);
begin
  {
    frmmodulo.qrcliente.locate('codigo', frmmodulo.qrorcamento.fieldbyname('codcliente').asstring, [loCaseInsensitive]);


    if FRMMODULO.QRorcamento.FIELDBYNAME('CODCLIENTE').ASSTRING = 'S/CLIE' then
    begin
    CLIENTE_NOME := 'CLIENTE ESPECIAL';
    CLIENTE_ENDERECO := '';
    CLIENTE_BAIRRO := '';
    CLIENTE_CIDADE := '';
    CLIENTE_UF := '';
    CLIENTE_CEP := '';
    CLIENTE_TELEFONE := '';
    CLIENTE_CPF := '';
    CLIENTE_RG := '';
    CLIENTE_CODIGO := 'S/CLIE';
    end
    else
    begin
    CLIENTE_NOME := frmmodulo.qrcliente.fieldbyname('nome').asstring;
    CLIENTE_ENDERECO := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
    CLIENTE_BAIRRO := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
    CLIENTE_CIDADE := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
    CLIENTE_UF := frmmodulo.qrcliente.fieldbyname('uf').asstring;
    CLIENTE_CEP := frmmodulo.qrcliente.fieldbyname('cep').asstring;
    CLIENTE_TELEFONE := frmmodulo.qrcliente.fieldbyname('telefone1').asstring + '/' + frmmodulo.qrcliente.fieldbyname('celular').asstring + '/' + frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
    CLIENTE_CPF := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
    CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('rg').asstring;
    CLIENTE_CODIGO := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;
    end;
    frmmodulo.qrconfig.open; }
end;

procedure TfrmOpNatureza.V1Click(Sender: TObject);
begin
  with frmmodulo do
  begin
    natoperacao := 'venda';
  end;
  Close;
end;

procedure TfrmOpNatureza.D1Click(Sender: TObject);
begin
  with frmmodulo do
  begin
    natoperacao := 'devolucao';
  end;
  Close;
end;

procedure TfrmOpNatureza.G1Click(Sender: TObject);
begin
  with frmmodulo do
  begin
    natoperacao := 'garantia';
  end;
  Close;
end;

end.
