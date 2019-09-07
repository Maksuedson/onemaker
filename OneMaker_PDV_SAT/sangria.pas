unit sangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, RzEdit, Menus, AdvMenus, ComCtrls,
  XPMan, AdvGlowButton, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  TfrmSangria = class(TForm)
    Panel1: TPanel;
    bt_ok1: TButton;
    bt_cancelar1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    ed_valor: TRzNumericEdit;
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    MenuFiscal1: TMenuItem;
    bt_ok: TAdvGlowButton;
    bt_cancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelar1Click(Sender: TObject);
    procedure bt_ok1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSangria: TfrmSangria;

implementation

uses principal, modulo, unECF, funcoes, menu_fiscal, UFuncoes;

{$R *.dfm}

procedure TfrmSangria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmSangria.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmSangria.bt_cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmSangria.bt_ok1Click(Sender: TObject);
begin
  if ed_valor.value <= 0 then
  begin
    Application.MessageBox('Favor informar um valor MAIOR que ZERO!','Erro',mb_ok+mb_iconerror);
    ed_valor.setfocus;
    exit;
  end;

  repeat
    // extrair do ecf
    if frmPrincipal.TipoImpressora = fiscal then
    begin
      sNumero_cupom := cECF_COO_Nao_Fiscal(iECF_Modelo);
      sMsg := cECF_Sangria(iECF_Modelo,ed_valor.Value);
    end
    else
    begin
      sNumero_cupom := zerar(FloatToStr( max('')),5);
      sMsg := Imp_Sangria(sPortaNaoFiscal,ed_valor.Value);
      //if Length(sNumero_Cupom) = 5 then
      //sNumero_Cupom := '9' + sNumero_Cupom;
    end;

    if sMsg <> 'OK' then
    begin
      if application.MessageBox(pwidechar('Erro a lançar a sangria no ECF!'+#13+
                                          'Mensagem: '+sMsg+#13+
                                          'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconerror)=
                                          idno then
                                                break;
    end
    else
    begin
      // extrair o numero dos contadores
       if frmPrincipal.TipoImpressora = fiscal then
        sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo)
       else
       begin
        sGNF := zerar(FloatToStr(Max('')),5  );
        if Length(sGNF) = 5 then
//        sGNF := '9' + sGNF;
        sNumero_cupom := Zerar( FloatToStr( Max('') ),5 );
       end;

      with frmModulo do
      begin
        spNao_Fiscal.close;
        spNao_Fiscal.ParamByName('codigo').asstring := codifica_cupom;
        spNao_Fiscal.ParamByName('ecf').AsString := sECF_Serial;
        spNao_Fiscal.ParamByName('data').asdatetime := dData_Sistema;
        spNao_Fiscal.ParamByName('indice').asstring := sIndice_Sangria;
        spNao_Fiscal.ParamByName('descricao').asstring := 'SANGRIA';
        spNao_Fiscal.ParamByName('valor').asfloat := ed_valor.value;
        spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
        spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
        spNao_fiscal.ParamByName('GNF').asstring := sGNF;
        spNao_fiscal.ParamByName('CDC').Clear;
        spNao_fiscal.ParamByName('GRG').clear;
        spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'CN';
        spNao_fiscal.ParamByName('codVendedor').asstring := IntToStr(icodigo_Usuario);        
        spNao_Fiscal.Prepare;
        spNao_Fiscal.Execute;
      end;
    end;
  until sMsg = 'OK';

  close;
end;

procedure TfrmSangria.Cancelar1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmSangria.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.
