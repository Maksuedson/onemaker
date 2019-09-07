unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.ComCtrls, Vcl.Imaging.pngimage,
  Vcl.ImgList, Vcl.Samples.Gauges, richedit, dateutils, Vcl.Imaging.jpeg, Uthread, Vcl.Menus, shellapi, UProxyDataSnap, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBXJSON, Data.SqlExpr, Data.DBXDataSnap, IndyPeerImpl,
  Data.DBXCommon, System.Win.ScktComp, System.ImageList, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, AdvSmoothButton, AdvGlowButton;

type
  TIcone = (icOK, icAviso, icErro, icProcessa, icCancel);
  TFases = (tfPDVConecta, tfPDVLivre, tfPDVImporta, tfDesconecta, tfNenhum, tfFinaliza);

type
  TFPrincipal = class(TForm)
    PageSPED: TPageControl;
    TabSped: TTabSheet;
    TabECF: TTabSheet;
    pnTitulo: TPanel;
    pnBotoes: TPanel;
    lbEmpresa: TLabel;
    btGerarSped: TButton;
    TabConfiguracoes: TTabSheet;
    pnECF: TPanel;
    OpenDialog1: TOpenDialog;
    ImageList1: TImageList;
    ImageList2: TImageList;
    PopupMenu1: TPopupMenu;
    GerarEFD: TMenuItem;
    Sair1: TMenuItem;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    ComboVersao: TComboBox;
    RadioPerfil: TRadioGroup;
    RadioFinalidade: TRadioGroup;
    RadioIndicador: TRadioGroup;
    MemoPDV: TMemo;
    Label1: TLabel;
    ClientSocket1: TClientSocket;
    ServerSocket1: TServerSocket;
    Panel2: TPanel;
    LbMensagem: TLabel;
    PgSeleciona: TPageControl;
    TabSheet6: TTabSheet;
    TabRegistrosECF: TTabSheet;
    Check_Bloco1600: TCheckBox;
    pnSped: TPanel;
    MemoSped: TRichEdit;
    Progresso: TGauge;
    Panel1: TPanel;
    GroupBox13: TGroupBox;
    ListaEFDECF: TCheckListBox;
    pnArquivoECF: TPanel;
    btAdicionarECF: TSpeedButton;
    btRemoverECF: TSpeedButton;
    btImportarECF: TSpeedButton;
    pnTampa: TPanel;
    MemoImportaECF: TMemo;
    pnStatusImporta: TPanel;
    GroupBox4: TGroupBox;
    CheckCSTECF: TCheckBox;
    EditCSTECF: TEdit;
    MemoEFD: TMemo;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Datai: TDateTimePicker;
    Dataf: TDateTimePicker;
    CheckInventario: TCheckBox;
    SpeedButton1: TSpeedButton;
    MemoLog: TRichEdit;
    RadioDataInfo: TRadioGroup;
    Label2: TLabel;
    Panel4: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btGerarSpedClick(Sender: TObject);
    procedure CheckCSTECFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure GerarEFDClick(Sender: TObject);
    procedure btAdicionarECFClick(Sender: TObject);
    procedure btRemoverECFClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Connecting(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ServerSocket1ClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ServerSocket1ClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure btImportarECFClick(Sender: TObject);
    procedure pnTituloClick(Sender: TObject);
    procedure pnBotoesClick(Sender: TObject);
    procedure FDvMetroButton2Click(Sender: TObject);
    procedure FDvMetroButton1Click(Sender: TObject);
    procedure AdvMetroButton3Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
    procedure AdvSmoothButton4Click(Sender: TObject);
  private
    sPDV: string;
    bContinua: Boolean;
    iPDVAtual: Integer;

    TamanhoArquivo: Int64;
    Arquivo: TMemoryStream;
    RecebendoArquivo: Boolean;

    procedure RemoveArquivosDuplicadosLista;

    { Private declarations }
    // Justifica Texto
    procedure JustifyRichEdit(richedit: TRichEdit; AllText: Boolean);
    // Espacamento duplo
    procedure LineSpaceRichEdit(richedit: TRichEdit; Espacamento: Integer; AllText: Boolean);

    procedure ExecutarComando(Fase: TFases);

    // PDV REMOTO
    procedure BloquearPDV(sAviso: string);
    procedure DesbloqueiaPDV;
    procedure GerarSpedCompleto(dataInicial, dataFinal: TDateTime; Perfil, CodMun, CFOP, Empresa: string; dAliqPis, dAliqCofins: Double);
    function Retorno(sLinha: string): string; overload;
    function NomeComputador: String;
    procedure ConectaAqui;
    function NomeAquivoEFDImport: string;

  public
    ThreadUtil: TThreadUtil;
    iCone: Integer;
    procedure Mensagem(richedit: TRichEdit; Texto: String; iTamFont: Integer; Cor: TColor);
    procedure Msg(Texto: String; iTamFont: Integer; Cor: TColor);
    { Public declarations }

  end;

var
  FPrincipal: TFPrincipal;
  iCodEmpresa: Integer;
  ds: TServerClassClient;

implementation

{$R *.dfm}

uses UDm, UFuncoes, UEFDImporta;

procedure TFPrincipal.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.btGerarSpedClick(Sender: TObject);
begin
  PageSPED.ActivePageIndex := 0;
  PgSeleciona.ActivePageIndex := 0;
  btGerarSped.Enabled := False;
 // btSair.Enabled := False;
  ComboVersao.ItemIndex := 7;

  PageSPED.ActivePageIndex := 0;

  MemoSped.Lines.Clear;
  RemoveArquivosDuplicadosLista;

  if ListaEFDECF.Items.Count > 0 then
    ImportarDadosECF;



  Dm.qrProdutosUsados.Close;
  Dm.qrProdutosUsados.Open;

  Dm.qrUnidadesUsadas.Close;
  Dm.qrUnidadesUsadas.Open;

  Mensagem(MemoSped, 'Gerando Sped Fiscal', 14, clBlack);
  Dm.ACBrSPEDFiscal1.Arquivo := 'EFD_' + FormatDateTime('mmm_yyyy', Datai.Date) + '.txt';

  Mensagem(MemoSped, '0200 - Carregando Produtos', 12, clBlack);
  Dm.Carregar_Produtos(Datai.Date, Dataf.Date);

  Mensagem(MemoSped, '0190 - Carregando Unidades', 12, clBlack);
  Dm.Carregar_Unidades(Datai.Date, Dataf.Date);

  Mensagem(MemoSped, '0190 - Carregando Participantes', 12, clBlack);
  Dm.Carregar_Participantes(Datai.Date, Dataf.Date);

  // dm.Limpar_Sobras(Datai.Date, Dataf.Date);

  Mensagem(MemoSped, 'BLOCO 0 - Gerando Bloco 0', 12, clBlack);
  Dm.DadosBloco_0;

  Mensagem(MemoSped, 'BLOCO C - Gerando Bloco C', 12, clBlack);
  Dm.DadosBloco_C;

  if CheckInventario.Checked then
  begin
    Mensagem(MemoSped, 'BLOCO H - Gerando Bloco H', 12, clBlack);
    Dm.DadosBloco_H;
  end;
  // Dm.DadosBloco_G;

  Mensagem(MemoSped, 'BLOCO E - Apuração do ICMS', 12, clBlack);
  Dm.DadosBloco_E;

  Mensagem(MemoSped, 'BLOCO 1 - Dados Obrigatórios', 12, clBlack);
  Dm.DadosBloco_1;

//  Mensagem(MemoSped, 'Verificando registros', 12, clBlack);
//  Dm.Verifica_Registros;


 Dm.ACBrSPEDFiscal1.SaveFileTXT;
 Mensagem(MemoSped, 'Gerando Sped Fiscal - OK', 14, clBlack);

 Progresso.Progress := 0;
 LbMensagem.Caption := '';


  MessageBeep(64);

  btGerarSped.Enabled := True;
  //btSair.Enabled := True;
  MessageDlg(pAnsichar('Arquivo gerado com sucesso!' + #10#13 + Dm.ACBrSPEDFiscal1.Path + Dm.ACBrSPEDFiscal1.Arquivo), mtInformation, [mbOK], 0);

  ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(Dm.ACBrSPEDFiscal1.Path + Dm.ACBrSPEDFiscal1.Arquivo)), nil, nil, SW_SHOWNORMAL);

end;

procedure TFPrincipal.btImportarECFClick(Sender: TObject);
begin
  ExecutarComando(tfPDVConecta);
  btImportarECF.Enabled := False;
end;

procedure TFPrincipal.CheckCSTECFClick(Sender: TObject);
begin
  EditCSTECF.Enabled := CheckCSTECF.Checked;
end;

procedure TFPrincipal.ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
begin
  MemoImportaECF.Lines.Add(MemoPDV.Lines[iPDVAtual] + ' - Conectado as ' + TimeToStr(Now));
  ConectaAqui;
  ExecutarComando(tfPDVLivre);

end;

procedure TFPrincipal.ClientSocket1Connecting(Sender: TObject; Socket: TCustomWinSocket);
begin
  MemoImportaECF.Lines.Add(MemoPDV.Lines[iPDVAtual] + ' - Conectando.');
end;

procedure TFPrincipal.ClientSocket1Disconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  MemoImportaECF.Lines.Add(MemoPDV.Lines[iPDVAtual] + ' - Desconectado.');
end;

procedure TFPrincipal.ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  if ErrorEvent = eeConnect then
  begin
    bContinua := False;
    abort;
  end;

end;

procedure TFPrincipal.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
var
  s: string;
  sNomeArquivo: string;
  i: Integer;
begin
  s := Socket.ReceiveText;

  if (Pos('@PDVLIVRE', s) > 0) then
  begin
    if Retorno(s) = '0' then
    begin
      MemoImportaECF.Lines.Add(MemoPDV.Lines[iPDVAtual] + ' - PDV OCUPADO');
      sleep(5000);
      ExecutarComando(tfPDVLivre);
      Exit;
    end
    else
    begin
      ExecutarComando(tfPDVImporta);
    end;

    Exit;
  end
  else if (Pos('@FIM', s) > 0) then
  begin
    ExecutarComando(tfDesconecta);

    ListaEFDECF.Items.Add('C:\SPED\' + NomeAquivoEFDImport);
    for i := 0 to ListaEFDECF.Items.Count - 1 do
      ListaEFDECF.Checked[i] := True;

    iPDVAtual := iPDVAtual + 1;
    // Verifica se executou em todos os caixas
    if iPDVAtual > MemoPDV.Lines.Count - 1 then
    begin
      iPDVAtual := 0;
      ExecutarComando(tfFinaliza);
    end
    else
    begin
      ExecutarComando(tfPDVConecta);
    end;

  end
  else
    MemoImportaECF.Lines.Add(s);

end;

procedure TFPrincipal.ConectaAqui;
begin
  ClientSocket1.Socket.SendText('@CONECTAR|' + NomeComputador);
end;

procedure TFPrincipal.DesbloqueiaPDV;
begin
  ClientSocket1.Socket.SendText('@DESBLOQUEIA_PDV');
end;

procedure TFPrincipal.ExecutarComando(Fase: TFases);
begin
  pnTampa.Visible := True;
  Application.ProcessMessages;
  Repaint;

  case Fase of

    tfPDVConecta:
      begin
        if not ClientSocket1.Active then
        begin
          ClientSocket1.Active := False;
          ClientSocket1.Host := MemoPDV.Lines[iPDVAtual];
          ClientSocket1.Active := True;
        end;

      end;

    tfPDVLivre:
      begin
        ClientSocket1.Socket.SendText('@PDV_LIVRE');
      end;

    tfPDVImporta:
      begin
        BloquearPDV('CAIXA EM MANUTENÇÃO');
        sleep(2000);
        GerarSpedCompleto(Datai.DateTime, Dataf.DateTime, 'A', '1580100', '5102', lbEmpresa.Caption, 0, 0);
      end;
    tfDesconecta:
      begin
        DesbloqueiaPDV;
        ClientSocket1.Active := False;
      end;
    tfNenhum:
      ;
    tfFinaliza:
      begin
        iPDVAtual := 0;
        pnTampa.Visible := False;
        btImportarECF.Enabled := True;
        btGerarSped.Click;
      end;
  end;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MemoPDV.Lines.SaveToFile(ChangeFileExt(Application.ExeName, '.config'));
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin

  ThreadUtil := TThreadUtil.Create(False);
  ThreadUtil.FreeOnTerminate := True;

end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  Dm.qrEmpresa.Close;
  Dm.qrEmpresa.Open;

   if Dm.qrEmpresa.fieldbyname('OPTANTE_SIMPLES').AsString = 'S' then
     RadioPerfil.ItemIndex := 2;

  iCodEmpresa := isInteger(Dm.qrEmpresaCODIGO.AsString);
  lbEmpresa.Caption := zerarcodigo(IntToStr(iCodEmpresa), 6) + ' - ' + Dm.qrEmpresaFILIAL.AsString;

  Datai.DateTime := StartOfTheMonth(Date - 30);
  Dataf.DateTime := EndOfTheMonth(Date - 30);

  PageSPED.ActivePageIndex := 0;
  PgSeleciona.ActivePageIndex := 0;

  if FileExists(ChangeFileExt(Application.ExeName, '.config')) then
    MemoPDV.Lines.LoadFromFile(ChangeFileExt(Application.ExeName, '.config'));

  iPDVAtual := 0;
end;

procedure TFPrincipal.GerarEFDClick(Sender: TObject);
begin
  btGerarSped.Click;
end;

procedure TFPrincipal.GerarSpedCompleto(dataInicial, dataFinal: TDateTime; Perfil, CodMun, CFOP, Empresa: string; dAliqPis, dAliqCofins: Double);
var
  sComando: string;
begin
  sComando := '@GERAR_SPED|';
  sComando := sComando + FormatDateTime('dd/mm/yyyy', dataInicial) + '|';
  sComando := sComando + FormatDateTime('dd/mm/yyyy', dataFinal) + '|';
  sComando := sComando + Perfil + '|';
  sComando := sComando + CodMun + '|';
  sComando := sComando + CFOP + '|';
  sComando := sComando + Empresa + '|';
  sComando := sComando + FloatToStr(dAliqPis) + '|';
  sComando := sComando + FloatToStr(dAliqCofins);

  ClientSocket1.Socket.SendText(sComando);

end;

procedure TFPrincipal.JustifyRichEdit(richedit: TRichEdit; AllText: Boolean);
const
  TO_ADVANCEDTYPOGRAPHY = $1;
  EM_SETTYPOGRAPHYOPTIONS = (WM_USER + 202);
  EM_GETTYPOGRAPHYOPTIONS = (WM_USER + 203);
var
  ParaFormat: TParaFormat;
  SelStart, SelLength: Integer;
begin
  ParaFormat.cbSize := SizeOf(ParaFormat);
  if SendMessage(richedit.HANDLE, EM_SETTYPOGRAPHYOPTIONS, TO_ADVANCEDTYPOGRAPHY, TO_ADVANCEDTYPOGRAPHY) = 1 then
  begin
    SelStart := richedit.SelStart;
    SelLength := richedit.SelLength;
    if AllText then
      richedit.SelectAll;
    ParaFormat.dwMask := PFM_ALIGNMENT;
    ParaFormat.wAlignment := PFA_JUSTIFY;
    SendMessage(richedit.HANDLE, EM_SETPARAFORMAT, 0, LongInt(@ParaFormat));
    // Restaura seleção caso tenhamos mudado para All
    richedit.SelStart := SelStart;
    richedit.SelLength := SelLength;
  end;
end;

procedure TFPrincipal.LineSpaceRichEdit(richedit: TRichEdit; Espacamento: Integer; AllText: Boolean);
var
  ParaFormat: TParaFormat2;
  SelStart, SelLength: Integer;
begin
  if AllText then
    richedit.SelectAll;

  ParaFormat.cbSize := SizeOf(ParaFormat);
  ParaFormat.dwMask := PFM_LINESPACING or PFM_SPACEAFTER;
  ParaFormat.dyLineSpacing := Espacamento;
  ParaFormat.bLineSpacingRule := Espacamento;
  SendMessage(richedit.HANDLE, EM_SETPARAFORMAT, 0, LongInt(@ParaFormat));
  // Restaura seleção caso tenhamos mudado para All
  // richedit.SelStart := SelStart;
  // richedit.SelLength := SelLength;

end;

procedure TFPrincipal.Mensagem(richedit: TRichEdit; Texto: String; iTamFont: Integer; Cor: TColor);
var
  i: Integer;
begin

  try
    richedit.SelAttributes.Color := Cor;
    richedit.SelAttributes.Size := iTamFont;

    richedit.Alignment := taLeftJustify;
    // LineSpaceRichEdit(richedit, 1, False);
    richedit.Lines.Add(Texto);

  finally

  end;

end;

procedure TFPrincipal.Msg(Texto: String; iTamFont: Integer; Cor: TColor);
begin
  Mensagem(MemoLog, Texto, iTamFont, Cor);
  SendMessage(MemoLog.HANDLE, WM_VSCROLL, SB_PAGEDOWN, 0);
end;

procedure TFPrincipal.RemoveArquivosDuplicadosLista;
var
  i, e, icount: Integer;
  sNome: string;
begin
  icount := 0;
  for i := 0 to ListaEFDECF.Items.Count - 1 do
  begin
    sNome := ListaEFDECF.Items[i];
    icount := 0;

    for e := 0 to ListaEFDECF.Items.Count - 1 do
    begin

      if sNome = ListaEFDECF.Items[e] then
        icount := icount + 1;

      if icount = 2 then
        ListaEFDECF.Items.Delete(e);
    end;

  end;
end;

function TFPrincipal.Retorno(sLinha: string): string;
begin
  try
    Result := UpperCase(Copy(sLinha, Pos('|', sLinha) + 1));
  except
    Result := '0';
  end;

end;

procedure TFPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.ServerSocket1ClientConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  MemoImportaECF.Lines.Add('PDV CONECTOU: ' + Socket.RemoteHost);
end;

procedure TFPrincipal.ServerSocket1ClientRead(Sender: TObject; Socket: TCustomWinSocket);
Var
  TamBuffer, i: Integer;
  Paux: pointer;
begin
  if not RecebendoArquivo then
  Begin
    Socket.ReceiveBuf(TamanhoArquivo, SizeOf(Int64));
    RecebendoArquivo := True;
    if Arquivo = nil then
      Arquivo := TMemoryStream.Create;
    Progresso.MaxValue := TamanhoArquivo;
  end
  else
  Begin
    TamBuffer := Socket.ReceiveLength;
    GetMem(Paux, TamBuffer);
    Socket.ReceiveBuf(Paux^, TamBuffer);
    Arquivo.Write(Paux^, TamBuffer);
    Dispose(Paux);
    Progresso.Progress := Arquivo.Size;
    if TamanhoArquivo = Arquivo.Size then
    Begin
      RecebendoArquivo := False;

      if not DirectoryExists('C:\SPED\') then
        ForceDirectories('C:\SPED\');

      Arquivo.SaveToFile('C:\SPED\' + NomeAquivoEFDImport);

      pnTampa.Visible := False;

      MemoImportaECF.Lines.Add('PROCESSO CONCLUÍDO');
      Arquivo.Free;
      Arquivo := Nil;
      Progresso.Progress := Progresso.MinValue;
    end;
  end;

end;

procedure TFPrincipal.SpeedButton1Click(Sender: TObject);
var
  s: TStrings;
begin

  if Application.MessageBox('Deseja mesmo zerar todas as tabelas do Sped?', 'Pergunta.', MB_YESNO + MB_ICONQUESTION) <> ID_YES then
    Exit;

  s := TStringList.Create;

  s.Clear;
  s.Add('Delete from SPED_0190');
  Dm.FDScript1.ExecuteScript(s);

  s.Clear;
  s.Add('Delete from SPED_0200');
  Dm.FDScript1.ExecuteScript(s);

  s.Clear;
  s.Add('Delete from SPED_0205');
  Dm.FDScript1.ExecuteScript(s);

  s.Clear;
  s.Add('Delete from SPED_C400');
  Dm.FDScript1.ExecuteScript(s);

  s.Clear;
  s.Add('Delete from SPED_C405');
  Dm.FDScript1.ExecuteScript(s);

  s.Clear;
  s.Add('Delete from SPED_C420');
  Dm.FDScript1.ExecuteScript(s);

  s.Clear;
  s.Add('Delete from SPED_C460');
  Dm.FDScript1.ExecuteScript(s);

  s.Clear;
  s.Add('Delete from SPED_C470');
  Dm.FDScript1.ExecuteScript(s);

  s.Clear;
  s.Add('Delete from SPED_C490');
  Dm.FDScript1.ExecuteScript(s);

  ShowMessage('Tabelas "SPED" zeradas com sucesso.');

end;

procedure TFPrincipal.FDvMetroButton1Click(Sender: TObject);
begin
application.Minimize;
end;

procedure TFPrincipal.FDvMetroButton2Click(Sender: TObject);
begin
close;
end;

procedure TFPrincipal.AdvMetroButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFPrincipal.AdvSmoothButton1Click(Sender: TObject);
begin
  PageSPED.ActivePageIndex := 0;
  PgSeleciona.ActivePageIndex := 0;
end;

procedure TFPrincipal.AdvSmoothButton2Click(Sender: TObject);
begin
  PageSPED.ActivePageIndex := 0;
  PgSeleciona.ActivePageIndex := 1;
end;

procedure TFPrincipal.AdvSmoothButton3Click(Sender: TObject);
begin
  PageSPED.ActivePageIndex := 1;
end;

procedure TFPrincipal.AdvSmoothButton4Click(Sender: TObject);
begin
  PageSPED.ActivePageIndex := 2;
end;

procedure TFPrincipal.BloquearPDV(sAviso: string);
begin
  ClientSocket1.Socket.SendText('@BLOQUEIA_PDV|' + sAviso);
end;

procedure TFPrincipal.btAdicionarECFClick(Sender: TObject);
var
  i: Integer;
begin

  if OpenDialog1.Execute then
  begin

    ListaEFDECF.Items.Assign(OpenDialog1.Files);

  end;

  for i := 0 to ListaEFDECF.Items.Count - 1 do
    ListaEFDECF.Checked[i] := True;

end;

procedure TFPrincipal.btRemoverECFClick(Sender: TObject);
begin

  ListaEFDECF.DeleteSelected;

end;

function TFPrincipal.NomeAquivoEFDImport: string;
var
  s: string;
begin
  s := 'EFD_ECF_' + FormatDateTime('dd_mm_yyyy', Datai.DateTime) + '_a_' + FormatDateTime('dd_mm_yyyy', Dataf.DateTime);
  s := s + '_' + MemoPDV.Lines[iPDVAtual] + '.txt';
  Result := s;

end;

function TFPrincipal.NomeComputador(): String;
var
  lpBuffer: PChar;
  nSize: DWord;
const
  Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer, nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);
end;

procedure TFPrincipal.pnBotoesClick(Sender: TObject);
begin
  btGerarSped.Enabled := True;
  //btSair.Enabled := True;
end;

procedure TFPrincipal.pnTituloClick(Sender: TObject);
begin
  RemoveArquivosDuplicadosLista;
end;

end.
