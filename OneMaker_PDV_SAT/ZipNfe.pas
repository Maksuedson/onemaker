unit ZipNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ZipMstr, Vcl.FileCtrl,
  Vcl.ExtCtrls;

type
  TFrmZipNfe = class(TForm)
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    OpenDialog2: TOpenDialog;
    ZipMaster1: TZipMaster;
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmZipNfe: TFrmZipNfe;

implementation

{$R *.dfm}

uses modulo, email, principal, Config, notafiscal_menu;

procedure TFrmZipNfe.Button1Click(Sender: TObject);
var
  i: Integer;
  paracont, ArqZip: string;
  bserv: boolean;
  StreamMemo: TMemoryStream;
  email: TEmail;
  CC: Tstrings;
begin
  ZipMaster1.ZipFileName := Edit1.Text;
  for i := 0 to FileListBox1.Items.Count - 1 do
    ZipMaster1.FSpecArgs.Add(FileListBox1.Items[i]);

  ZipMaster1.Add();

  if Application.messagebox('Confirma envio das notas fiscais para o Contador?',
    'Aviso', mb_yesno + mb_iconquestion) = idyes then
  begin

    ArqZip := Edit1.Text;

    if FileExists(ArqZip) then
    begin
      frmmodulo.qrconfig.open;
      if frmConfig.edtSmtpHost.Text = '' then
      begin
        Application.messagebox('Favor configurar a conta de email!', 'Erro',
          mb_ok + mb_iconerror);
        exit;
      end;

      // frmConfig.qrempresa.Open;
      // paracont := frmConfig.qrempresa.FieldByName('CONTADOR_EMAIL').AsString;
      // frmConfig.qrempresa.Close;

      if paracont = '' then
      begin
        paracont := inputbox('Email', 'Email do Contador', '');
      end;

      if frmConfig.cbEmailSSL.Checked then
      begin
        bserv := True;
        SSL := True;
      end
      else
        bserv := False;

      Application.ProcessMessages;

      email := TEmail.Create;

      // frmPrincipal.Aguarde('Email',
      // 'Aguarde...Iniciando Envio de e-mail!!!', False, True, 0);

      // '' opção de e-mail configurar essa opção
      if email.EnviarEmail(frmConfig.edtnfe.Text, paracont,
        frmConfig.edtEmailAssunto.Text, frmConfig.mmEmailMsg.Text, ArqZip,
        frmConfig.edtSmtpUser.Text, frmConfig.edtSmtpPass.Text,
        frmConfig.edtSmtpHost.Text, StrToInt(frmConfig.edtSmtpPort.Text), SSL)
      then
      begin
        // frmPrincipal.FechaAguarde;

        Application.messagebox('Email enviado com sucesso!', 'Aviso',
          mb_ok + MB_ICONINFORMATION);
      end
      else
      begin
        // frmPrincipal.FechaAguarde;

        Application.messagebox
          ('Houve falha no envio deste email... Favor Verificar o endereço do Cliente!',
          'Atenção', mb_ok + mb_iconerror);
        close;
      end;
      email.Free;
    end
    else
    begin
      // frmPrincipal.FechaAguarde;

      Application.messagebox('Arquivo Zip não encontrado!', 'Erro',
        mb_ok + mb_iconerror);
      exit;
    end;
    close;
  end
  else
    close;
end;

procedure TFrmZipNfe.DirectoryListBox1Change(Sender: TObject);
begin

  FileListBox1.Directory := DirectoryListBox1.Directory;
end;

procedure TFrmZipNfe.FormShow(Sender: TObject);
var
  mes: TDatetime;
begin
  mes := IncMonth(date, -1);
  DirectoryListBox1.Directory := 'C:\OneMaker\PDV\cfespdf\';
  Edit1.Text := 'C:\OneMaker\PDV\Contador\SAT' + FormatDateTime('yyyymm',
    mes) + '.zip';
end;

end.
