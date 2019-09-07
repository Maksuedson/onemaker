unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ACBrBase, ACBrDFe, ACBrNFe,
  AdvGlowButton, acPNG;

type
  TFrm_Download = class(TForm)
    ImageCaptcha: TImage;
    ButCaptcha2: TBitBtn;
    ButBaixar2: TBitBtn;
    ACBrNFe1: TACBrNFe;
    Panel1: TPanel;
    bxml001: TAdvGlowButton;
    bxml002: TAdvGlowButton;
    Panel2: TPanel;
    Label2: TLabel;
    EditCaptcha: TEdit;
    Label1: TLabel;
    EditChave: TEdit;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure ButCaptcha2Click(Sender: TObject);
    procedure ButBaixar2Click(Sender: TObject);
    procedure bxml001Click(Sender: TObject);
    procedure bxml002Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Download: TFrm_Download;

implementation

//****************************************************************************//
uses
  UTDownloadXMLNFeDLL, ACBrNFeNotasFiscais, pcnNFe, pcnProcNFe;

var
  BaixarXMLNFe: TDownloadXMLNFeDLL;
  DLLJaFoiIniciada: Boolean = False;

//****************************************************************************//
{$R *.dfm}

procedure TFrm_Download.FormShow(Sender: TObject);
begin
  if not DLLJaFoiIniciada then begin
    BaixarXMLNFe:= TDownloadXMLNFeDLL.Create;
    BaixarXMLNFe.DLLLicenca('DEMO');
    DLLJaFoiIniciada:= True;
  end;
  ButCaptcha2.OnClick(Self);
end;

procedure TFrm_Download.ButCaptcha2Click(Sender: TObject);
begin
  if BaixarXMLNFe.Captcha('Captcha.bmp') then
    ImageCaptcha.Picture.LoadFromFile('Captcha.bmp')
  else
    ShowMessage(BaixarXMLNFe.Msg);
  EditCaptcha.SetFocus;  
end;

procedure TFrm_Download.bxml001Click(Sender: TObject);
begin
  ButBaixar2.Click;
end;

procedure TFrm_Download.bxml002Click(Sender: TObject);
begin
  ButCaptcha2.Click;
end;

procedure TFrm_Download.ButBaixar2Click(Sender: TObject);
begin
  if BaixarXMLNFe.BaixarXMLNFeSemCert(EditChave.Text, EditCaptcha.Text, EditChave.Text+ '.xml') then
  begin
    ShowMessage('Xml foi baixado com sucesso');// + ExtractFilePath(ParamStr(0)) + EditChave.Text+ '.xml');
    Close;
  end
  else
    ShowMessage(BaixarXMLNFe.Msg);
end;

end.
