unit LoginWindow_U;

interface

{$I 'UserControl.inc'}

uses
{$IFDEF DELPHI5_UP}
  Variants,
{$ENDIF}
  Buttons,
  Classes,
  Controls,
  Dialogs,
  ExtCtrls,
  Forms,
  Graphics,
  Math,
  Messages,
  StdCtrls,
  SysUtils,
  UCBase,
  Windows, ComCtrls, AdvSmoothPanel, cyBaseSpeedButton, cySpeedButton,
  dxGDIPlusClasses, sBitBtn;

type
  TfrmLoginWindow = class(TForm)
    PTop: TPanel;
    ImgTop: TImage;
    PLeft: TPanel;
    imgLeft: TImage;
    PBottom: TPanel;
    ImgBottom: TImage;
    Panel1: TPanel;
    StatusBar: TStatusBar;
    PLogin: TPanel;
    LbUsuario: TLabel;
    LbSenha: TLabel;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    btOK: TsBitBtn;
    BtCancela: TsBitBtn;
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Image1: TImage;
    AdvSmoothPanel3: TAdvSmoothPanel;
    AdvSmoothPanel4: TAdvSmoothPanel;
    lbEsqueci: TLabel;
    AdvSmoothPanel5: TAdvSmoothPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtCancela1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditUsuarioChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure BotoesClickVisualizacao(Sender: TObject);
  public
    FUserControl: TUserControl;
  end;

implementation

{$R *.dfm}

procedure TfrmLoginWindow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmLoginWindow.BotoesClickVisualizacao(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TfrmLoginWindow.BtCancela1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLoginWindow.FormShow(Sender: TObject);
var
  w, h: Integer;
begin
//  w := Max(ImgTop.Width, imgLeft.Width + PLogin.Width);
//  w := Max(w, ImgBottom.Width);
//  h := Max(imgLeft.Height + ImgTop.Height + ImgBottom.Height,
//    ImgTop.Height + PLogin.Height + ImgBottom.Height);

//  Width := w;
//  Height := h + 28;
//  If FUserControl.Login.MaxLoginAttempts > 0 then
//  Begin
//    Height := Height + 19;
    StatusBar.Panels[0].Text := FUserControl.UserSettings.Login.LabelTentativa;
    StatusBar.Panels[2].Text := FUserControl.UserSettings.Login.LabelTentativas;
//  End;

  // Topo
//  PTop.Height := ImgTop.Height;
//  ImgTop.AutoSize := False;
//  ImgTop.Align := alClient;
//  ImgTop.Center := True;

  // Centro
//  PLeft.Width := imgLeft.Width;
//  imgLeft.AutoSize := False;
//  imgLeft.Align := alClient;
//  imgLeft.Center := True;

  // Bottom
//  PBottom.Height := ImgBottom.Height;
//  ImgBottom.AutoSize := False;
//  ImgBottom.Align := alClient;
//  ImgBottom.Center := True;

//  PTop.Visible := ImgTop.Picture <> nil;
//  PLeft.Visible := imgLeft.Picture <> nil;
 // PBottom.Visible := ImgBottom.Picture <> nil;

  if FUserControl.Login.GetLoginName = lnUserName then
    EditUsuario.Text := FUserControl.GetLocalUserName;
  if FUserControl.Login.GetLoginName = lnMachineName then
    EditUsuario.Text := FUserControl.GetLocalComputerName;

  Position := Self.FUserControl.UserSettings.WindowsPosition;
  EditUsuario.CharCase := Self.FUserControl.Login.CharCaseUser;
  EditSenha.CharCase := Self.FUserControl.Login.CharCasePass;
  EditUsuario.SetFocus;
end;

procedure TfrmLoginWindow.EditUsuarioChange(Sender: TObject);
begin
  lbEsqueci.Enabled := Length(EditUsuario.Text) > 0;
end;

procedure TfrmLoginWindow.FormKeyPress(Sender: TObject; var Key: char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End;
end;

end.
