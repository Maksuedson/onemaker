unit UConsultaCNPJ;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,pngimage, JPEG, ACBrBase, ACBrSocket,
  ACBrConsultaCNPJ, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  TFConsultaCNPJ = class(TForm)
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    Timer1: TTimer;
    advsmthxpndrpnl1: TAdvSmoothExpanderPanel;
    lbl1: TLabel;
    btn1: TAdvMetroButton;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EditCaptchaKeyPress(Sender: TObject; var Key: Char);
    procedure ButBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaCNPJ: TFConsultaCNPJ;

implementation

{$R *.dfm}

procedure TFConsultaCNPJ.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFConsultaCNPJ.ButBuscarClick(Sender: TObject);
var
  I: Integer;
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCNPJ1.Consulta(
      EditCNPJ.Text,
      EditCaptcha.Text,
      ckRemoverEspacosDuplos.Checked
    ) then
    begin
     { EditTipo.Text        := ACBrConsultaCNPJ1.EmpresaTipo;
      EditRazaoSocial.Text := ACBrConsultaCNPJ1.RazaoSocial;
      EditAbertura.Text    := DateToStr( ACBrConsultaCNPJ1.Abertura );
      EditFantasia.Text    := ACBrConsultaCNPJ1.Fantasia;
      EditEndereco.Text    := ACBrConsultaCNPJ1.Endereco;
      EditNumero.Text      := ACBrConsultaCNPJ1.Numero;
      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      EditBairro.Text      := ACBrConsultaCNPJ1.Bairro;
      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      EditCidade.Text      := ACBrConsultaCNPJ1.Cidade;
      EditUF.Text          := ACBrConsultaCNPJ1.UF;
      EditCEP.Text         := ACBrConsultaCNPJ1.CEP;
      EditSituacao.Text    := ACBrConsultaCNPJ1.Situacao;
      EditCNAE1.Text       := ACBrConsultaCNPJ1.CNAE1;

      ListCNAE2.Clear;
      for I := 0 to ACBrConsultaCNPJ1.CNAE2.Count - 1 do
        ListCNAE2.Items.Add(ACBrConsultaCNPJ1.CNAE2[I]); }
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure TFConsultaCNPJ.EditCaptchaKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    ButBuscarClick(ButBuscar);
end;

procedure TFConsultaCNPJ.FormShow(Sender: TObject);
begin
Timer1.Enabled:= True;
end;

procedure TFConsultaCNPJ.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  Png: TPngImage;
begin
  Stream := TMemoryStream.Create;
  Png := TPNGImage.Create;
  try
    ACBrConsultaCNPJ1.Captcha(Stream);
    Png.LoadFromStream(Stream);
    Image1.Picture.Assign(Png);

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
    Png.Free;
  end;

end;

procedure TFConsultaCNPJ.Timer1Timer(Sender: TObject);
begin
 Timer1.Enabled:= False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCNPJ.SetFocus;
end;

end.
