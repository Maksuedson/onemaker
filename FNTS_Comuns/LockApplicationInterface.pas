unit LockApplicationInterface;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, lockApplicationVars, ExtCtrls, StdCtrls, ShellApi,
  lockApplicationFunc, dxGDIPlusClasses, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, cyBaseSpeedButton, cySpeedButton, RzLabel;

type
  TBloqueio = class(TForm)
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    TituloPanel: TPanel;
    Titulo: TLabel;
    SpeedButton2: TSpeedButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Image2: TImage;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label17: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton3: TAdvMetroButton;
    Image3: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    EID_Instalacao: TEdit;
    Eemail: TEdit;
    Echave: TEdit;
    Panel8: TPanel;
    Image4: TImage;
    cySpeedButton1: TcySpeedButton;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Site: TLabel;
    Email: TLabel;
    Label8: TLabel;
    Telefones: TLabel;
    Panel24: TPanel;
    RzURLLabel1: TRzURLLabel;
    RzURLLabel2: TRzURLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SiteClick(Sender: TObject);
    procedure EmailClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cySpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TELA_ContraChave: String;
    TELA_Email: String;

    Ativar: Boolean;
    Fechado_Sem_Registro: Boolean;
    Pode_Sair: Boolean;
  end;

var
  Bloqueio: TBloqueio;

implementation

{$R *.dfm}

procedure TBloqueio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if not Pode_Sair then
      Action := caNone;
end;

procedure TBloqueio.FormShow(Sender: TObject);
begin
   Pode_Sair := false;
   Bloqueio.Caption := variaveis.Titulo_Janelas;
   Site.Caption := Variaveis.Empresa_Site;
   Email.Caption := Variaveis.Empresa_Email;
   Telefones.Caption := Variaveis.Empresa_Telefones;
   EID_instalacao.Text := IntToStr( Variaveis.ID_Instalacao );
   if TELA_Email <> '' then
      Eemail.Text := TELA_Email
   else
      Eemail.Clear;
   if TELA_ContraChave <> '' then
      Echave.Text := TELA_Contrachave
   else
      Echave.Clear;
   case Ativar of
      True: begin
           Titulo.Caption := 'Digite a chave pra renovar o sistema!'
           +#13 + 'Obtenha a chave com o administrador do sistema.';
      end;
      False: begin
           Titulo.Caption := 'Sistema não está liberado para uso neste computador!'
           +#13 + 'Entre em contato com o administrador do sistema.';
      end;
   end;
end;

procedure TBloqueio.SiteClick(Sender: TObject);
begin
   ShellExecute(handle,'open',pchar(  Variaveis.Empresa_Site ), '','',SW_SHOWNORMAL);
end;

procedure TBloqueio.cySpeedButton1Click(Sender: TObject);
begin
  SpeedButton2.click;
end;

procedure TBloqueio.EmailClick(Sender: TObject);
begin
   ShellExecute(handle,'open',pchar( 'mailto:' + Variaveis.Empresa_Email ), '','',SW_SHOWNORMAL);
end;

procedure TBloqueio.SpeedButton1Click(Sender: TObject);
begin
   Pode_sair := True;
   case Ativar of
       True: begin
            Fechado_sem_registro := True;
            close;
       end;
       False: begin
            Fechado_sem_registro := True;
            close;
       end;
   end;
end;

procedure TBloqueio.SpeedButton2Click(Sender: TObject);
begin
   if Echave.Text <> '' then
   begin
   if pos( '@', Eemail.Text ) > 0 then
   begin
   if Echave.Text = 'DEMOSTRAÇÃO' then
      begin
         case Variaveis.Ja_Foi_Trial of
            true: MessageDlg( 'Sistema já foi registrado como demostraçao antes!', mtWarning, [mbOK], 0 );
            false: begin
                Fechado_sem_registro := False;
                Pode_Sair := True;
                TELA_ContraChave := echave.Text;
                TELA_Email := Eemail.Text;
                close;
            end;
         end;
      end
   else      // ELSE do DEMOSTRAÇÃO
      begin
                Fechado_sem_registro := False;
                Pode_Sair := True;
                TELA_ContraChave := echave.Text;
                TELA_Email := Eemail.Text;
                close;
      end;
   end
   else   // ELSE EMAIL
      MessageDlg( 'E-mail informado é inválido!', mtWarning, [mbOK], 0 );
   end
   else   // ELSE DO CAMPO VAZIO
      MessageDlg( 'Chave não informada!', mtWarning, [mbOK], 0 );
end;

end.
