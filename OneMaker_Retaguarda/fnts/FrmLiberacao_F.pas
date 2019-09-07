unit FrmLiberacao_F;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, sSpeedButton,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  Vcl.ExtCtrls, AdvSmoothPanel, dxGDIPlusClasses, AdvGlowButton, CurvyControls;

type
  TFrmLiberacao = class(TForm)
    BtnConfirmar: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    IdHTTP: TIdHTTP;
    AdvSmoothPanel2: TAdvSmoothPanel;
    LblIDCLiente: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Image2: TImage;
    Label2: TLabel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    ECodigo: TEdit;
    Label1: TLabel;
    bt_ativa_online: TAdvGlowButton;
    bt_confirmar: TAdvGlowButton;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure ECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Liberado:boolean;
    ID_Cliente:integer;

  end;

var
  FrmLiberacao: TFrmLiberacao;

implementation

{$R *.dfm}

uses  principal, modulo;

procedure TFrmLiberacao.ECodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN then
  begin
    BtnConfirmar.Click;
  end;
end;

procedure TFrmLiberacao.FormCreate(Sender: TObject);
begin
  Liberado:=false;
end;

procedure TFrmLiberacao.FormShow(Sender: TObject);
begin
  LblIDCLiente.Caption := FormatFloat('000000',frmprincipal.LockClient1.id_cliente);
  LblIDCLiente.Caption := LblIDCLiente.Caption +' '+frmmodulo.qrFilialFILIAL.asstring;

end;

procedure TFrmLiberacao.sSpeedButton1Click(Sender: TObject);
var
  URL,StrJson: string;
  JsonStreamRetorno : TStringStream;
  I:integer;
begin
  URL := 'http://localhost:8080/datasnap/rest/TServerMethods1/GetLiberacao/'+
  frmprincipal.LockClient1.ID_Sitema.tostring+'/'+frmprincipal.LockClient1.id_cliente.tostring;
  JsonStreamRetorno := TStringStream.Create('', TEncoding.UTF8);
  idHttp.Request.ContentType := 'application/json';
  idhttp.Request.Charset := 'UTF-8';
  idHttp.Request.Clear;
  idHttp.Request.BasicAuthentication := false;
  try
    idHttp.get(URL, JsonStreamRetorno);
    StrJson:= JsonStreamRetorno.DataString;
    JsonStreamRetorno.Free;
    StrJson := StringReplace(StrJson,'{"result":["','',[rfReplaceAll]);
    StrJson := StringReplace(StrJson,'"]}','',[rfReplaceAll]);
    ecodigo.Text := StrJson;
  except
  on E:EIdHTTPProtocolException do
   ShowMessage(e.ErrorMessage);
  end;

end;

procedure TFrmLiberacao.BtnConfirmarClick(Sender: TObject);
begin
  if frmprincipal.LockClient1.Liberar(ECodigo.Text) then
  begin
    Liberado:=true;
    showmessage('Sistema liberado com sucesso!'+#13+
    'Até '+DateToStr(frmprincipal.LockClient1.Data_Vecto));
    close;
  end;
end;

end.
