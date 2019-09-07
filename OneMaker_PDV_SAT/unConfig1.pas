unit unConfig1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Buttons, StdCtrls, IniFiles, sEdit, sSpinEdit, AdvGlowButton, Vcl.Printers,
  ACBrSATExtratoClass, ACBrSATExtratoESCPOS, ACBrBase, ACBrPosPrinter,
  Vcl.Dialogs;

type
  TfrmConfig1 = class(TForm)
    Label23: TLabel;
    eVersaoSat: TEdit;
    btnConfirma: TBitBtn;
    btnFechar: TBitBtn;
    mAssinatura: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    eCnpjSh: TEdit;
    Label1: TLabel;
    eCaixa: TEdit;
    Label4: TLabel;
    eCnpj: TEdit;
    Label5: TLabel;
    eInscricao: TEdit;
    Label6: TLabel;
    eBanco: TEdit;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label8: TLabel;
    lImpressora: TLabel;
    bImpressora1: TButton;
    cbUsarFortes: TRadioButton;
    cbPreview: TCheckBox;
    bImpressora: TAdvGlowButton;
    seLargura: TsSpinEdit;
    seMargemTopo: TsSpinEdit;
    seMargemFundo: TsSpinEdit;
    seMargemEsquerda: TsSpinEdit;
    seMargemDireita: TsSpinEdit;
    Label9: TLabel;
    Label10: TLabel;
    cbxAmbiente: TComboBox;
    cbxRegTributario: TComboBox;
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    PrintDialog1: TPrintDialog;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure bImpressora1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepararImpressao;
  end;

var
  frmConfig1: TfrmConfig1;

implementation

uses unPdv;
{$R *.dfm}

procedure TfrmConfig1.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmConfig1.FormCreate(Sender: TObject);
var Arquivo: TIniFile;
begin
Arquivo := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'PDV.INI');
eCaixa.Text := Arquivo.ReadString('GERAL','NUM_CAIXA','');
eCnpj.Text := Arquivo.ReadString('GERAL','CNPJ','');
eInscricao.Text := Arquivo.ReadString('GERAL','INSC_ESTADUAL','');
eBanco.Text := Arquivo.ReadString('GERAL','BANCO_DADOS','');

eVersaoSat.Text := Arquivo.ReadString('SAT','VERSAO','');
eCnpjSh.Text := Arquivo.ReadString('SAT','SH_CNPJ','');
mAssinatura.Text := Arquivo.ReadString('SAT','ASSINATURA','');

seLargura.Value := Arquivo.ReadInteger('Fortes', 'Largura',
 frmPdv.ACBrSATExtratoFortes1.LarguraBobina);
seMargemTopo.Value := Arquivo.ReadInteger('Fortes', 'MargemTopo',
  frmPdv.ACBrSATExtratoFortes1.Margens.Topo);
seMargemFundo.Value := Arquivo.ReadInteger('Fortes', 'MargemFundo',
  frmPdv.ACBrSATExtratoFortes1.Margens.Fundo);
seMargemEsquerda.Value := Arquivo.ReadInteger('Fortes', 'MargemEsquerda',
 frmPdv.ACBrSATExtratoFortes1.Margens.Esquerda);
seMargemDireita.Value := Arquivo.ReadInteger('Fortes', 'MargemDireita',
  frmPdv.ACBrSATExtratoFortes1.Margens.Direita);

lImpressora.Caption := Arquivo.ReadString('Printer', 'Name', '');
cbPreview.Checked := Arquivo.ReadBool('Fortes', 'Preview', True);
Arquivo.Free;
end;

procedure TfrmConfig1.PrepararImpressao;
begin

    try
      if lImpressora.Caption <> '' then
        frmpdv.ACBrSATExtratoFortes1.PrinterName := lImpressora.Caption;
    except
    end;

end;

procedure TfrmConfig1.bImpressora1Click(Sender: TObject);
begin
   if PrintDialog1.Execute then
    lImpressora.Caption := Printer.Printers[Printer.PrinterIndex];
end;

procedure TfrmConfig1.btnConfirmaClick(Sender: TObject);
var Arquivo: TIniFile;
begin
Arquivo := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'PDV.INI');
Arquivo.WriteString('GERAL','NUM_CAIXA',eCaixa.Text);
Arquivo.WriteString('GERAL','CNPJ',eCnpj.Text);
Arquivo.WriteString('GERAL','INSC_ESTADUAL',eInscricao.Text);
Arquivo.WriteString('GERAL','BANCO_DADOS',eBanco.Text);
Arquivo.WriteString('SAT','VERSAO',eVersaoSat.Text);
Arquivo.WriteString('SAT','SH_CNPJ',eCnpjSh.Text);
Arquivo.WriteString('SAT','ASSINATURA',mAssinatura.Text);

Arquivo.WriteInteger('Fortes', 'Largura', seLargura.Value);
Arquivo.WriteInteger('Fortes', 'MargemTopo', seMargemTopo.Value);
Arquivo.WriteInteger('Fortes', 'MargemFundo', seMargemFundo.Value);
Arquivo.WriteInteger('Fortes', 'MargemEsquerda', seMargemEsquerda.Value);
Arquivo.WriteInteger('Fortes', 'MargemDireita', seMargemDireita.Value);

Arquivo.WriteString('Printer', 'Name', lImpressora.Caption);
Arquivo.WriteBool('Fortes', 'Preview', cbPreview.Checked);
Arquivo.Free;
Close;
end;

end.
