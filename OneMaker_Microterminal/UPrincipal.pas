(*
Log de Atualização
11/01/2012 - Jorge - Incluido componente tmrControlador para controlar o tempo de comunicação.
                     Quando tempo sem comunicação é atingido a conexão é derrubada.
*)

unit UPrincipal;

interface

uses
  UTerminalCustom, UTerminal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls, ExtCtrls, ActnList, Buttons, DB, ADODB, ComCtrls,
  ToolWin, ImgList, jpeg, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCustomTileControl, cxClasses,
  dxSkinsForm, dxTileControl, System.ImageList, System.Actions, RzTray,
  Vcl.Menus, dxSkinLilian, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxGDIPlusClasses, AdvGlowButton;

type
  TFPrincipal = class(TForm)
    SrvTerminais: TServerSocket;
    ActionList1: TActionList;
    actConectar: TAction;
    actArquivoBanco: TAction;
    OpenDialog1: TOpenDialog;
    actTabelas: TAction;
    pgGeral: TPageControl;
    tbConfiguracao: TTabSheet;
    TabSheet2: TTabSheet;
    pnlConfiguracao: TPanel;
    Panel4: TPanel;
    Label15: TLabel;
    Label17: TLabel;
    SpeedButton2: TSpeedButton;
    edArquivoBanco: TEdit;
    Panel3: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    edTeclaF1: TEdit;
    edTeclaBckSpace: TEdit;
    edTeclaF4: TEdit;
    edTeclaF3: TEdit;
    edTeclaF2: TEdit;
    edTeclaDEL: TEdit;
    edTeclaEnter: TEdit;
    Panel5: TPanel;
    Label12: TLabel;
    Label2: TLabel;
    edPorta: TEdit;
    Panel1: TPanel;
    mmLog: TMemo;
    ImageList1: TImageList;
    actConfiguracao: TAction;
    actSair: TAction;
    tmrControlador: TTimer;
    pnlLista: TPanel;
    Label11: TLabel;
    lstLista: TListBox;
    Panel2: TPanel;
    RzTrayIcon1: TRzTrayIcon;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    A1: TMenuItem;
    N3: TMenuItem;
    F1: TMenuItem;
    ImageList2: TImageList;
    Panel6: TPanel;
    lblStatus: TLabel;
    Label1: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    Image1: TImage;
    procedure SrvTerminaisClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure SrvTerminaisClientError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure edPortaKeyPress(Sender: TObject; var Key: Char);
    procedure actConectarExecute(Sender: TObject);
    procedure SrvTerminaisClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure SrvTerminaisClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure actArquivoBancoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actTabelasExecute(Sender: TObject);
    procedure actConfiguracaoExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmrControladorTimer(Sender: TObject);
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item4Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item6Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1ActionBarItem2Click(
      Sender: TdxTileControlActionBarItem);
    procedure dxTileControl1ActionBarItem1Click(
      Sender: TdxTileControlActionBarItem);
    procedure RzTrayIcon1LButtonDblClick(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetLog(sMSG: string);

    function GeTTerminal(Socket: TCustomWinSocket): TTerminal;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses
  uDMConexao, UMenu, UComplementoLista, UTerminalLista;

{$R *.dfm}

procedure TFPrincipal.A1Click(Sender: TObject);
begin
  RzTrayIcon1.RestoreApp;
end;

procedure TFPrincipal.actArquivoBancoExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
    edArquivoBanco.Text := OpenDialog1.FileName;
end;

procedure TFPrincipal.actConectarExecute(Sender: TObject);
var
  i: Integer;
begin
  if SrvTerminais.Active then
  begin
    actConectar.Caption := 'Conectar';
    for i := SrvTerminais.Socket.ActiveConnections - 1 downto 0 do
      SrvTerminais.Socket.Connections[i].Close;

    lblStatus.Caption   := 'Desconectado';
  end
  else
  begin
    actConectar.Caption := 'Desconectar';
    lblStatus.Caption   := 'Conectado';
    SrvTerminais.Port   := StrToIntDef(edPorta.Text, 1001);
  end;

  SrvTerminais.Active := not SrvTerminais.Active;

  pnlLista.Visible := SrvTerminais.Active;

  pnlConfiguracao.Enabled := not SrvTerminais.Active;

  with DMConexao.Conexao do
  begin
    if SrvTerminais.Active then
    begin
      if Connected then
        Close;

      DMConexao.BDArquivo := edArquivoBanco.Text;
    end
    else
    begin
      Close;
    end;
  end;


end;

procedure TFPrincipal.actConfiguracaoExecute(Sender: TObject);
begin
  pgGeral.Visible := not pgGeral.Visible;
  actConfiguracao.Checked := pgGeral.Visible;
end;

procedure TFPrincipal.actSairExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPrincipal.actTabelasExecute(Sender: TObject);
begin
  if not DMConexao.Conexao.Connected then
    DMConexao.BDArquivo := edArquivoBanco.Text;

  FMenu.Show;
end;

procedure TFPrincipal.AdvGlowButton1Click(Sender: TObject);
var
  i: Integer;
begin
  if SrvTerminais.Active then
  begin
    actConectar.Caption := 'Conectar';
    for i := SrvTerminais.Socket.ActiveConnections - 1 downto 0 do
      SrvTerminais.Socket.Connections[i].Close;

    lblStatus.Caption   := 'Desconectado';
  end
  else
  begin
    actConectar.Caption := 'Desconectar';
    lblStatus.Caption   := 'Conectado';
    SrvTerminais.Port   := StrToIntDef(edPorta.Text, 1001);
  end;

  SrvTerminais.Active := not SrvTerminais.Active;

  pnlLista.Visible := SrvTerminais.Active;

  pnlConfiguracao.Enabled := not SrvTerminais.Active;

  with DMConexao.Conexao do
  begin
    if SrvTerminais.Active then
    begin
      if Connected then
        Close;

      DMConexao.BDArquivo := edArquivoBanco.Text;
    end
    else
    begin
      Close;
    end;
  end;
end;

procedure TFPrincipal.AdvGlowButton2Click(Sender: TObject);
begin
    FComplementoLista := TFComplementoLista.Create(nil);
    FComplementoLista.ShowModal;
end;

procedure TFPrincipal.AdvGlowButton3Click(Sender: TObject);
begin
    FTerminalLista := TFTerminalLista.Create(nil);
    FTerminalLista.ShowModal;
end;

procedure TFPrincipal.AdvGlowButton4Click(Sender: TObject);
begin
  pgGeral.Visible := not pgGeral.Visible;
  actConfiguracao.Checked := pgGeral.Visible;
end;

procedure TFPrincipal.AdvGlowButton5Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFPrincipal.dxTileControl1ActionBarItem1Click(
  Sender: TdxTileControlActionBarItem);
begin
  Application.Terminate;
end;

procedure TFPrincipal.dxTileControl1ActionBarItem2Click(
  Sender: TdxTileControlActionBarItem);
begin
  Application.Minimize;
end;

procedure TFPrincipal.dxTileControl1Item1Click(Sender: TdxTileControlItem);

begin
    FComplementoLista := TFComplementoLista.Create(nil);
    FComplementoLista.ShowModal;
end;

procedure TFPrincipal.dxTileControl1Item2Click(Sender: TdxTileControlItem);
begin
    FTerminalLista := TFTerminalLista.Create(nil);
    FTerminalLista.ShowModal;
end;

procedure TFPrincipal.dxTileControl1Item3Click(Sender: TdxTileControlItem);
var
  i: Integer;
begin
  if SrvTerminais.Active then
  begin
    actConectar.Caption := 'Conectar';
    for i := SrvTerminais.Socket.ActiveConnections - 1 downto 0 do
      SrvTerminais.Socket.Connections[i].Close;

    lblStatus.Caption   := 'Desconectado';
  end
  else
  begin
    actConectar.Caption := 'Desconectar';
    lblStatus.Caption   := 'Conectado';
    SrvTerminais.Port   := StrToIntDef(edPorta.Text, 1001);
  end;

  SrvTerminais.Active := not SrvTerminais.Active;

  pnlLista.Visible := SrvTerminais.Active;

  pnlConfiguracao.Enabled := not SrvTerminais.Active;

  with DMConexao.Conexao do
  begin
    if SrvTerminais.Active then
    begin
      if Connected then
        Close;

      DMConexao.BDArquivo := edArquivoBanco.Text;
    end
    else
    begin
      Close;
    end;
  end;
end;

procedure TFPrincipal.dxTileControl1Item4Click(Sender: TdxTileControlItem);
begin
  Application.Minimize;
end;

procedure TFPrincipal.dxTileControl1Item6Click(Sender: TdxTileControlItem);
begin
  pgGeral.Visible := not pgGeral.Visible;
  actConfiguracao.Checked := pgGeral.Visible;
end;

procedure TFPrincipal.edPortaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in (['0'..'9', #8])) then
    Key := #0;
end;

procedure TFPrincipal.F1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  if SrvTerminais.Active then
  begin
    for i := SrvTerminais.Socket.ActiveConnections - 1 downto 0 do
      SrvTerminais.Socket.Connections[i].Close;

    SrvTerminais.Active := False;
  end;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  Caption := Application.Title;
end;

function TFPrincipal.GeTTerminal(Socket: TCustomWinSocket): TTerminal;
begin
  Result := TTerminal.Create(Socket);
end;

procedure TFPrincipal.RzTrayIcon1LButtonDblClick(Sender: TObject);
begin
  Show;
end;

procedure TFPrincipal.SetLog(sMSG: string);
begin
  mmLog.Lines.Add(FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' - ' + sMSG);
end;

procedure TFPrincipal.SrvTerminaisClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
  i: Integer;
begin
  SetLog('Cliente conectado - IP: ' + Socket.RemoteAddress);

  if SrvTerminais.Socket.ActiveConnections > 1 then
  begin
    for i := SrvTerminais.Socket.ActiveConnections - 2 downto 0 do
    begin
      if Assigned(SrvTerminais.Socket.Connections[i].Data) then
      begin
        if TTerminal(SrvTerminais.Socket.Connections[i].Data).IP = Socket.RemoteAddress then
        begin
          SrvTerminais.Socket.Connections[i].Close;
          Break;
        end;
      end;
    end;
  end;

  Socket.Data := GeTTerminal(Socket);

  with TTerminal(Socket.Data) do
  begin
    DEL     := Chr(StrToIntDef(edTeclaDEL.Text, 27));
    BCK     := Chr(StrToIntDef(edTeclaBckSpace.Text, 8));
    F1      := Chr(StrToIntDef(edTeclaF1.Text, 17));
    F2      := Chr(StrToIntDef(edTeclaF2.Text, 18));
    F3      := Chr(StrToIntDef(edTeclaF3.Text, 19));
    F4      := Chr(StrToIntDef(edTeclaF4.Text, 20));
    ENTER   := Chr(StrToIntDef(edTeclaEnter.Text, 13));

    Conexao := DMConexao.Conexao;

    Processar;

    lstLista.Items.Add(Socket.RemoteAddress);
  end;
end;

procedure TFPrincipal.SrvTerminaisClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  if Assigned(Socket.Data) then
  begin
    TTerminal(Socket.Data).Destroy;
    Socket.Data := nil;
  end;

  SetLog('Cliente desconectado - IP: ' + Socket.RemoteAddress);

  lstLista.Items.Delete(lstLista.Items.IndexOf(Socket.RemoteAddress));
end;

procedure TFPrincipal.SrvTerminaisClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  SetLog(' - Erro Nº ' + IntToStr(ErrorCode));
  ErrorCode := 0;
  Socket.Disconnect(Socket.Handle);
end;

procedure TFPrincipal.SrvTerminaisClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  StrTemp: string;
  i: Integer;
begin
  StrTemp := Socket.ReceiveText;

  if Assigned(Socket.Data) then
  begin
    with TTerminal(Socket.Data) do
    begin
      for i := 1 to Length(StrTemp) do
      begin
        Tecla := copy(StrTemp, I, 1);
        Processar;
      end;

      Tecla := #0;
      Processar;
    end;
  end;
end;

procedure TFPrincipal.tmrControladorTimer(Sender: TObject);
const
  _TIMEOUT = '00:01:00'; // Tempo em minutos para derrubar a conexão
var
  i: Integer;
begin
  // 11/01/2012
  for i := 0 to SrvTerminais.Socket.ActiveConnections - 1 do
  begin
    if Assigned(SrvTerminais.Socket.Connections[i].Data) then
    begin
      with TTerminal(SrvTerminais.Socket.Connections[i].Data) do
      begin
        if FormatDateTime('hh:MM:ss', Now - UltimoAcesso) > _TIMEOUT then
        begin
          SrvTerminais.Socket.Connections[i].Close;
        end;
      end;
    end;
  end;
end;

end.
