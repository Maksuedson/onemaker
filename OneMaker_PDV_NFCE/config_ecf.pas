unit config_ecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, JvClock, Buttons, Mask,
  Menus, AdvMenus, AdvGlowButton, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, PageView, JvExMask, JvToolEdit,
  JvBaseEdits;

type
  TfrmConfig_ECF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ed_marca: TEdit;
    Label2: TLabel;
    ed_modelo: TEdit;
    Label3: TLabel;
    ed_tipo: TEdit;
    Label4: TLabel;
    ed_serial: TEdit;
    Label5: TLabel;
    ed_numero: TEdit;
    Panel2: TPanel;
    Label7: TLabel;
    ed_data: TEdit;
    Label8: TLabel;
    ed_hora: TEdit;
    pop_principal: TAdvPopupMenu;
    MenuFiscal2: TMenuItem;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel4: TPanel;
    btconf_ecf001: TAdvGlowButton;
    btconf_ecf002: TAdvGlowButton;
    btconf_ecf003: TAdvGlowButton;
    btconf_ecf004: TAdvGlowButton;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    cb_porta: TComboBox;
    Label6: TLabel;
    rb_horario_verao: TCheckBox;
    rb_reducao_Z: TCheckBox;
    bt_confirmar: TAdvGlowButton;
    ls_forma_pgto: TListBox;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    ed_forma_pgto: TEdit;
    rb_vinculado: TCheckBox;
    ls_aliquota: TListBox;
    GroupBox1: TGroupBox;
    rb_icms: TRadioButton;
    rb_iss: TRadioButton;
    ed_aliquota: TJvCalcEdit;
    ls_total_nf: TListBox;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    ed_totalizador: TEdit;
    ed_indice: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    bt_aliquota: TAdvGlowButton;
    bt_totalizador: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure bt_fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rb_horario_veraoClick(Sender: TObject);
    procedure rb_reducao_ZClick(Sender: TObject);
    procedure bt_confirmar11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bt_aliquota1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bt_totalizador1Click(Sender: TObject);
    procedure ed_forma_pgtoKeyPress(Sender: TObject; var Key: Char);
    procedure MenuFiscal2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btconf_ecf001Click(Sender: TObject);
    procedure btconf_ecf002Click(Sender: TObject);
    procedure btconf_ecf003Click(Sender: TObject);
    procedure btconf_ecf004Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig_ECF: TfrmConfig_ECF;
  iprog : integer;

implementation

uses funcoes, modulo, principal, unECF, Math, menu_fiscal;

{$R *.dfm}

procedure TfrmConfig_ECF.bt_fecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConfig_ECF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConfig_ECF.FormShow(Sender: TObject);
begin

  // verificar reducao Z
  sMsg := cECF_Verifica_Z_automatico(iECF_Modelo);
  if sMsg = 'SIM' then
    rb_reducao_Z.Checked := true
  else
    rb_reducao_Z.Checked := false;

  ed_marca.Text := sECF_Marca;
  ed_modelo.text := sECF_Modelo;
  ed_tipo.Text := sECF_Tipo;
  ed_serial.Text := sECF_Serial;
  cb_porta.Text := sECF_Porta;
  ed_numero.Text := sECF_Caixa;
  ed_data.Text := DateToStr(dData_Sistema);
  ed_hora.Text := copy(cECF_Data_Hora(iECF_Modelo),12,8 );


  sMSG := cECF_Verifica_Horario_Verao(iecf_modelo);
  If sMsg = 'SIM' then
    rb_horario_verao.Checked :=  true
  else
    rb_horario_verao.Checked :=  false;

  bt_confirmar.Enabled := false;
  rb_horario_verao.Enabled := true;
  // ecf bematech nao programa/desprogram red z automatica
  // somente por meio de intervencao tecnica
  if iECF_Modelo = 1 then
  begin
    rb_reducao_Z.Enabled := false;
  end
  else
  begin
    rb_reducao_Z.Enabled := true;
  end;

  frmmodulo.tbForma_Pgto.Open;
  frmmodulo.tbForma_Pgto.First;
  ls_forma_pgto.Items.Clear;

  while not frmmodulo.tbForma_Pgto.Eof do
  begin
    sMsg := TrimLeft(TrimRight(frmmodulo.tbForma_Pgto.fieldbyname('nome').asstring));
    if (smsg = '') or
       (ansiuppercase(sMsg) = 'VALOR RECEBIDO') or
       (ansiuppercase(sMsg) = 'TROCO') Then

      //
    else
     ls_forma_pgto.Items.Add(frmmodulo.tbForma_Pgto.fieldbyname('nome').asstring);

    frmModulo.tbForma_Pgto.next;
  end;

  ls_aliquota.Items.Clear;
  sMsg := cECF_Verifica_Aliquotas(iECF_Modelo);
  if sMsg <> 'ERRO' then
  begin
    ls_aliquota.Items.CommaText := sMsg;
  end
  else
    application.messagebox('Erro ao solicitar al�quotas do ECF!','Erro',mb_ok+mb_iconerror);


  ls_total_nf.Items.Clear;
  sMsg := cECF_Verifica_Totalizadores_NF(iECF_Modelo);
  if sMsg <> 'ERRO' then
  begin
    ls_total_nf.Items.CommaText := sMsg;
  end
  else
    application.messagebox('Erro ao solicitar totalizadores do ECF!','Erro',mb_ok+mb_iconerror);
end;

procedure TfrmConfig_ECF.rb_horario_veraoClick(Sender: TObject);
begin
  bt_confirmar.Enabled := true;
  rb_reducao_Z.Enabled := false;
  iProg := 1;
end;

procedure TfrmConfig_ECF.rb_reducao_ZClick(Sender: TObject);
begin
  bt_confirmar.Enabled := true;
  rb_horario_verao.Enabled := false;
  iProg := 2;
end;

procedure TfrmConfig_ECF.bt_confirmar11Click(Sender: TObject);
begin
  case iprog of
  1 : begin
        // programar / desprogramar horario de verao
        sMsg := cECF_Programa_Horario_Verao(iECF_Modelo) ;
        if sMsg = 'OK' then
        begin
          application.messagebox('Comando executado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
        end
        else
        begin
          application.messagebox(pwidechar('Comando n�o executado!'+#13+
                                            'Mensagem: '+sMsg),'Aviso',mb_ok+MB_ICONERROR);
          if rb_horario_verao.Checked then
            rb_horario_verao.Checked := false
          else
            rb_horario_verao.Checked := true;
        end;
      end;
  2 : begin
        // programar / desprogramar red z automatica
        if rb_reducao_Z.Checked then
          sMsg := cECF_Programa_Z_Automatico(IECF_MODELO,'SIM')
        else
          sMsg := cECF_Programa_Z_Automatico(IECF_MODELO,'NAO');
        if sMsg = 'ERRO' then
        begin
          application.messagebox(pwidechar('Comando n�o executado!'+#13+
                                            'Mensagem: '+sMsg),'Aviso',mb_ok+MB_ICONERROR);

          if rb_reducao_Z.Checked then
            rb_reducao_Z.Checked := false
          else
            rb_reducao_Z.Checked := true;
        end
        else
          application.messagebox('Comando executado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
      end;
  end;
  rb_horario_verao.Enabled := true;
  rb_reducao_Z.Enabled := true;
end;

procedure TfrmConfig_ECF.SpeedButton1Click(Sender: TObject);
begin
  application.MessageBox('A programa��o do hor�rio de ver�o ser� realizada somente'+
                         ' ap�s uma Redu��oZ. Para desprogramar, o M�todo somente ser�'+
                         ' aceito, 1 (uma) hora ap�s a Redu��oZ e n�o pode ter havido '+
                         'movimento na impressora nesse per�odo.','Aviso',mb_ok+MB_ICONINFORMATION);

end;

procedure TfrmConfig_ECF.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmConfig_ECF.btconf_ecf001Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure TfrmConfig_ECF.btconf_ecf002Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure TfrmConfig_ECF.btconf_ecf003Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure TfrmConfig_ECF.btconf_ecf004Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

procedure TfrmConfig_ECF.bt_aliquota1Click(Sender: TObject);
begin
  if ed_aliquota.value > 0 then
  begin
    if rb_icms.Checked then
      sMsg := cECF_Programa_Aliquota(iECF_Modelo,ed_aliquota.Value,'ICMS')
    else
      sMsg := cECF_Programa_Aliquota(iECF_Modelo,ed_aliquota.Value,'ISS');

    if sMsg = 'OK' then
    begin
      Application.MessageBox('Al�quota programada com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
      ls_aliquota.Items.Add(somentenumero(formatfloat('00.00',ed_aliquota.Value)));
    end
    else
      Application.MessageBox(pwidechar('Comando n�o executado!'+#13+
                                       'Mensagem: '+sMsg),'Erro',mb_ok+MB_iconerror);
  end
  else
  begin
    Application.MessageBox('Favor informar um valor maio que ZERO!','Aten��o',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmConfig_ECF.Button1Click(Sender: TObject);
begin
  if ed_forma_pgto.text <> '' then
  begin
    if rb_vinculado.checked then
      sMsg := cECF_Programa_Forma_Pgto(iECF_Modelo,ed_forma_pgto.text,'SIM')
    else
      sMsg := cECF_Programa_Forma_Pgto(iECF_Modelo,ed_forma_pgto.text,'NAO');

    if sMsg = 'OK' then
    begin
      Application.MessageBox('Forma de Pagamento programada com sucesso!',
                              'Aviso',mb_ok+MB_ICONINFORMATION);

      frmModulo.tbForma_Pgto.insert;
      frMmODULO.tbForma_Pgto.FieldByName('nome').asstring := ed_forma_pgto.text;
      frmModulo.tbForma_Pgto.Post;
      ls_forma_pgto.Items.Add(ed_forma_pgto.Text);
    end
    else
      Application.MessageBox(pwidechar('Comando n�o executado!'+#13+
                                       'Mensagem: '+sMsg),'Erro',mb_ok+MB_iconerror);

  end
  else
  begin
    Application.MessageBox('Favor informar a forma de pagamento!','Erro',mb_ok+MB_ICONERROR);
  end;
end;

procedure TfrmConfig_ECF.bt_totalizador1Click(Sender: TObject);
begin
  if ed_totalizador.text <> '' then
  begin
    sMsg := cECF_Programa_Totalizador(iECF_Modelo,strtoint(ed_indice.text),ed_totalizador.Text);

    if sMsg = 'OK' then
    begin
      Application.MessageBox('Totalizador n�o fiscal gravado com sucesso!',
                              'Aviso',mb_ok+MB_ICONINFORMATION);
      ls_total_nf.Items.Add(ed_totalizador.text);
    end
    else
      Application.MessageBox(pwidechar('Comando n�o executado!'+#13+
                                       'Mensagem: '+sMsg),'Erro',mb_ok+MB_iconerror);

  end
  else
  begin
    Application.MessageBox('Favor informar a descri��o!','Erro',mb_ok+MB_ICONERROR);
  end;
end;

procedure TfrmConfig_ECF.ed_forma_pgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmConfig_ECF.MenuFiscal2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.
