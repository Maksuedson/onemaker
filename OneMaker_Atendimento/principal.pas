unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, ExtCtrls, Buttons, XPMan, StdCtrls,Winsock,
  Menus, jpeg, DB, TFlatPanelUnit,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvShapeButton,
  AdvGlowButton, Registry, AdvGlassButton, AdvReflectionLabel,
  AdvSmoothButton, AdvToolBar, AdvToolBarStylers, AdvPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, sSkinManager,
  dxSkinsForm, dxCustomTileControl, cxClasses, dxTileControl, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, cyBaseSpeedButton, cySpeedButton, IdBaseComponent, IdComponent, IdIPWatch, dxGDIPlusClasses,
  TFlatHintUnit, System.ImageList, acPNG, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  Tfrmprincipal = class(TForm)
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Venda1: TMenuItem;
    Oramento1: TMenuItem;
    ConsultadePreos1: TMenuItem;
    SairdoSistema1: TMenuItem;
    DataSource1: TDataSource;
    N1: TMenuItem;
    qrvenda_produto: TZQuery;
    qrproduto: TZQuery;
    Cliente1: TMenuItem;
    Panel2: TPanel;
    AdvShapeButton2: TAdvShapeButton;
    Label6: TLabel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Panel4: TPanel;
    ivenda: TAdvSmoothButton;
    iorcamento: TAdvSmoothButton;
    ipreco: TAdvSmoothButton;
    bcliente: TAdvSmoothButton;
    isair: TAdvSmoothButton;
    iOS: TAdvSmoothButton;
    OS1: TMenuItem;
    AdvSmoothExpanderPanel3: TAdvSmoothExpanderPanel;
    FlatHint1: TFlatHint;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    Panel1: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Panel3: TPanel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    aten001: TAdvGlowButton;
    orc001: TAdvGlowButton;
    AdvSmoothPanel3: TAdvSmoothPanel;
    infc001: TAdvGlowButton;
    AdvSmoothPanel4: TAdvSmoothPanel;
    prec001: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ivendaClick(Sender: TObject);
    procedure iorcamentoClick(Sender: TObject);
    procedure iprecoClick(Sender: TObject);
    procedure isairClick(Sender: TObject);
    procedure bclienteClick(Sender: TObject);
    procedure iOSClick(Sender: TObject);
    procedure tlPhotosClick(Sender: TdxTileControlItem);
    procedure tlAgentsClick(Sender: TdxTileControlItem);
    procedure dxTileItem3Click(Sender: TdxTileControlItem);
    procedure dxTileItem4Click(Sender: TdxTileControlItem);
    procedure dxTileItem2Click(Sender: TdxTileControlItem);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cySpeedButton2Click(Sender: TObject);
    procedure cySpeedButton6Click(Sender: TObject);
    procedure cySpeedButton7Click(Sender: TObject);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item4Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item5Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item6Click(Sender: TdxTileControlItem);
    procedure aten001Click(Sender: TObject);
    procedure orc001Click(Sender: TObject);
    procedure prec001Click(Sender: TObject);
    procedure infc001Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function Cript(Action, Src: String): String;
    function msg(tipo:string;texto:string;bsim:boolean;bnao:boolean;bok:boolean;funcao:string):string;
    function zerarcodigo(codigo:string;qtde:integer):string;
    function texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
    function tiraacento ( str: String ): String;
    function codifica(Tabela:string):string;
    function autentica(funcao : string;nivel:integer) : boolean;

    Function GetIP:string;
        function Locregistro(tabela : TDataSet; valor:string;campo : string):boolean;
  end;

var
  frmprincipal: Tfrmprincipal;
  autenticado:boolean;
  NUMERO_ORCAMENTO : STRING;
  r : TIdIPWatch;

implementation

uses venda_pdv, venda_inicio, mensagem, modulo, mensagem_senha, orcamento,
  preco, senha, loccliente, cliente_info, os_menu, sobre, Unit_ativar;

{$R *.dfm}

// -------------------------------------------------------------------------- //
function tfrmprincipal.Locregistro(tabela : TDataSet; valor:string;campo : string):boolean;
begin
  if tabela.Locate(campo,valor,[loCaseInsensitive]) then
  begin
    result := true;
  end
  else
  begin
    Application.MessageBox('Registro não encontrado!!','Erro',mb_ok+mb_iconwarning);
    result := false;
  end;


end;

// -------------------------------------------------------------------------- //
Function TFRMPRINCIPAL.GetIP:string;
//--> Declare a Winsock na clausula uses da unit
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name:string;

begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  SetLength(Name, StrLen(PChar(Name)));
  with HostEnt^ do
  begin
    Result := Format('%d.%d.%d.%d',
    [Byte(h_addr^[0]),Byte(h_addr^[1]),
    Byte(h_addr^[2]),Byte(h_addr^[3])]);
  end;

  WSACleanup;
end;

// -------------------------------------------------------------------------- //
function tfrmprincipal.codifica(tabela:string):string;
begin
  frmmodulo.qrMestre.open;
  frmmodulo.qrMestre.CommitUpdates;
  frmmodulo.qrMestre.Refresh;
  if frmmodulo.qrMestre.Locate('codigo',tabela,[loCaseInsensitive]) then
  begin

    if frmmodulo.qrmestre.FieldByName('sequencia').asinteger < 1 then
    begin
      result := '000001';
      frmmodulo.qrMestre.Edit;
      frmmodulo.qrMestre.fieldbyname('sequencia').asinteger := 2;
      frmmodulo.qrMestre.Post;
    end
    else
    begin
      result := frmprincipal.zerarcodigo(inttostr(frmmodulo.qrMestre.fieldbyname('sequencia').asinteger),6);
      frmmodulo.qrMestre.Edit;
      frmmodulo.qrMestre.fieldbyname('sequencia').asinteger := frmmodulo.qrMestre.fieldbyname('sequencia').asinteger + 1;
      frmmodulo.qrMestre.Post;
    end;
  end
  else
  begin
    Showmessage('Não foi possível concluir com a operação!'+#13+'Erro: Código de sequência não encontrado na tabela de códigos.');
    frmmodulo.Conexao.Rollback;
  end;
end;

// -------------------------------------------------------------------------- //
function tfrmprincipal.tiraacento ( str: String ): String;
var
i: Integer;
begin
for i := 1 to Length ( str ) do
case str[i] of
'è': str[i] := 'e';
'ì': str[i] := 'i';
'ù': str[i] := 'u';
'î': str[i] := 'i';
'û': str[i] := 'u';
'á': str[i] := ' ';//
'é': str[i] := '‚';//
'í': str[i] := '¡';//
'ó': str[i] := '¢';//
'ú': str[i] := '£';//
'à': str[i] := '…';//
'ò': str[i] := '•';//
'â': str[i] := 'ƒ';//
'ê': str[i] := 'ˆ';//
'ô': str[i] := '“';//
'ä': str[i] := '„';//
'ë': str[i] := '‰';//
'ï': str[i] := '‹';//
'ö': str[i] := '”';//
'ü': str[i] := '';//
'ã': str[i] := '†';//
'õ': str[i] := 'o';
'ñ': str[i] := '¤';//
'ç': str[i] := '‡';//
'Á': str[i] := 'A';
'É': str[i] := '';//
'Í': str[i] := 'I';
'Ó': str[i] := 'O';
'Ú': str[i] := 'U';
'À': str[i] := 'A';
'È': str[i] := 'E';
'Ì': str[i] := 'I';
'Ò': str[i] := 'O';
'Ù': str[i] := 'U';
'Â': str[i] := '';
'Ê': str[i] := 'E';
'Î': str[i] := 'I';
'Ô': str[i] := 'O';
'Û': str[i] := 'U';
'Ä': str[i] := 'A';
'Ë': str[i] := 'E';
'Ï': str[i] := 'I';
'Ö': str[i] := 'O';
'Ü': str[i] := 'š';//
'Ã': str[i] := 'A';
'Õ': str[i] := 'O';
'Ñ': str[i] := '¥';//
'Ç': str[i] := '€';//
'ª': str[i] := '¦';//
'º': str[i] := '§';//
end;
Result := str;
end;

// -------------------------------------------------------------------------- //
function tfrmprincipal.texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
begin
   texto := tiraacento(texto);
   if tipo = 'E' then
   begin
     while length(texto) < qtde_caracteres do texto := caracter+texto;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'D' then
   begin
     while length(texto) < qtde_caracteres do texto := texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'C' then
   begin
     if (qtde_caracteres mod 2) <> 0 then qtde_caracteres := qtde_caracteres - 1;
     while length(texto) < qtde_caracteres do texto := caracter+texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   result := texto;
end;

// -------------------------------------------------------------------------- //
Function tfrmprincipal.Cript(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
KeyPos : Integer;
OffSet : Integer;
Dest, Key : String;
SrcPos : Integer;
SrcAsc : Integer;
TmpSrcAsc : Integer;
Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else
  if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
  repeat
  SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
  if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
  TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
  if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
  else TmpSrcAsc := TmpSrcAsc - OffSet;
  Dest := Dest + Chr(TmpSrcAsc);
  OffSet := SrcAsc;
  SrcPos := SrcPos + 2;
  until (SrcPos >= Length(Src));
  end;
  Result:= Dest;
  Fim:
end;

// -------------------------------------------------------------------------- //
function tfrmprincipal.msg(tipo:string;texto:string;bsim:boolean;bnao:boolean;bok:boolean;funcao:string):string;
begin
  if tipo = 'SENH' then
  begin
    frmmensagem_senha.bsim.visible := bsim;
    frmmensagem_senha.bnao.visible := bnao;
    frmmensagem_senha.bok.visible := bok;
    frmmensagem_senha.lfuncao.Caption := funcao;
    frmmensagem_senha.bsim.caption := 'OK';
    frmmensagem_senha.bnao.caption := 'Cancelar';
    frmmensagem_senha.ShowModal;
  end
  else
  begin
    frmmensagem.Label1.Caption := texto;
    frmmensagem.bsim.visible := bsim;
    frmmensagem.bnao.visible := bnao;
    frmmensagem.bok.visible := bok;
    resultado_mensagem := '';
    if tipo = 'EXCL' then frmMensagem.img_padrao.Picture := frmmensagem.img_excluir.picture;
    if tipo = 'ALER' then frmMensagem.img_padrao.Picture := frmmensagem.img_alerta.picture;
    if tipo = 'ERRO' then frmMensagem.img_padrao.Picture := frmmensagem.img_erro.picture;
    if tipo = 'INFO' then frmMensagem.img_padrao.Picture := frmmensagem.img_info.picture;
    if tipo = 'INTE' then frmMensagem.img_padrao.Picture := frmmensagem.img_pergunta.picture;
    if tipo = 'LOCE' then frmMensagem.img_padrao.Picture := frmmensagem.img_erro.picture;
    frmmensagem.ShowModal;
  end;
  result := resultado_mensagEm;
end;

procedure Tfrmprincipal.orc001Click(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.sql.clear;
  frmmodulo.qrcaixa_operador.sql.add('select * from c000045 where codigo = ''000099''');
  frmmodulo.qrcaixa_operador.open;

  FRMORCAMENTO := TFRMORCAMENTO.CREATE(SELF);
  FRMORCAMENTO.SHOWMODAL;
end;

procedure Tfrmprincipal.prec001Click(Sender: TObject);
begin
  frmpreco := tfrmpreco.create(self);
  frmpreco.showmodal;
end;

// -------------------------------------------------------------------------- //
function tfrmprincipal.zerarcodigo(codigo:string;qtde:integer):string;
begin
  while length(codigo) < qtde do codigo := '0'+codigo;
  result := codigo;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmprincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Application.MessageBox('Confirma o encerramento do sistema?', 'Aviso',
    mb_yesno + MB_ICONWARNING) = idNo then
  begin
    abort;
  end
  else
  begin
    action := cafree;
  end;

 // action := cafree;
end;

procedure Tfrmprincipal.FormCreate(Sender: TObject);
begin
   r := TIdIPWatch.Create(nil);
   Label1.Caption := r.LocalIP;
   r.free;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmprincipal.FormShow(Sender: TObject);
var  Registro: TRegistry;
begin
   if msg('SENH','',TRUE,TRUE,FALSE,'1 - ENTRADA NO SISTEMA') = 'SIM' THEN
  BEGIN
    try
      Registro    := TRegistry.Create;
      Registro.RootKey    := HKEY_CURRENT_USER;
      if not Registro.OpenKey('OneMaker_Atendimento',false) then
      begin
        Registro.CreateKey('OneMaker_Atendimento');
        Registro.OpenKey('OneMaker_Atendimento',true);
        registro.writestring('Terminal',inputbox('Config. Terminal.','Nº Terminal (3 Digitos)','000'));
      end
      else
      begin
        if Registro.ReadString('Terminal') = '' then
        begin
          registro.writestring('Terminal',inputbox('Config. Terminal','Nº Terminal (3 Digitos)','000'));
        end;
      end;


    finally
       registro_terminal := Registro.ReadString('Terminal');
       Registro.free;
    end;
  END
  ELSE
  BEGIN
     APPLICATION.Terminate;
  END;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmprincipal.AdvMetroButton1Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure Tfrmprincipal.AdvMetroButton2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmprincipal.aten001Click(Sender: TObject);
begin
  sdav_atual := '';
  sdav_anterior := '';

  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.sql.clear;
  frmmodulo.qrcaixa_operador.sql.add('select * from c000045 where codigo = ''000099''');
  frmmodulo.qrcaixa_operador.open;

  if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger <> 1 then
  begin
    frmprincipal.msg('ERRO','Caixa fechado! Favor verificar!',false,false,true,'');
    exit;
  end
  else
  begin
    ABRE_ORCAMENTO := FALSE;
    NUMERO_ORCAMENTO := '';
    frmvenda_PDV := tfrmvenda_PDV.create(self);
    frmvenda_PDV.showmodal;
  end;
end;

function tfrmprincipal.autentica(funcao:string;nivel:integer) : boolean;
begin
  frmsenha := tfrmsenha.create(self);
  frmsenha.lfuncao.caption := inttostr(nivel)+' - '+funcao;
  frmsenha.showmodal;
  result := autenticado;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmprincipal.ivendaClick(Sender: TObject);
begin
  sdav_atual := '';
  sdav_anterior := '';

  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.sql.clear;
  frmmodulo.qrcaixa_operador.sql.add('select * from c000045 where codigo = ''000099''');
  frmmodulo.qrcaixa_operador.open;

  if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger <> 1 then
  begin
    frmprincipal.msg('ERRO','Caixa fechado! Favor verificar!',false,false,true,'');
    exit;
  end
  else
  begin
    ABRE_ORCAMENTO := FALSE;
    NUMERO_ORCAMENTO := '';
    frmvenda_PDV := tfrmvenda_PDV.create(self);
    frmvenda_PDV.showmodal;
  end;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmprincipal.infc001Click(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmloccliente := tfrmloccliente.create(self);
  frmloccliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcliente_info := tfrmcliente_info.create(self);
    frmcliente_info.showmodal;
  end;
end;

procedure Tfrmprincipal.iorcamentoClick(Sender: TObject);
begin
  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.sql.clear;
  frmmodulo.qrcaixa_operador.sql.add('select * from c000045 where codigo = ''000099''');
  frmmodulo.qrcaixa_operador.open;

  FRMORCAMENTO := TFRMORCAMENTO.CREATE(SELF);
  FRMORCAMENTO.SHOWMODAL;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmprincipal.iprecoClick(Sender: TObject);
begin
  frmpreco := tfrmpreco.create(self);
  frmpreco.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmprincipal.isairClick(Sender: TObject);
begin
  if frmprincipal.msg('INTE','Confirma o encerramento do'+#13+' aplicativo?',true,true,false,'') = 'SIM' then application.terminate;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmprincipal.bclienteClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmloccliente := tfrmloccliente.create(self);
  frmloccliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcliente_info := tfrmcliente_info.create(self);
    frmcliente_info.showmodal;
  end;
end;

// -------------------------------------------------------------------------- //
procedure Tfrmprincipal.iOSClick(Sender: TObject);
begin
  frmos_menu :=tfrmOs_menu.create(self);
  frmos_menu.showmodal;
end;

procedure Tfrmprincipal.tlPhotosClick(Sender: TdxTileControlItem);
begin
  sdav_atual := '';
  sdav_anterior := '';

  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.sql.clear;
  frmmodulo.qrcaixa_operador.sql.add('select * from c000045 where codigo = ''000099''');
  frmmodulo.qrcaixa_operador.open;

  if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger <> 1 then
  begin
    frmprincipal.msg('ERRO','Caixa fechado! Favor verificar!',false,false,true,'');
    exit;
  end
  else
  begin
    ABRE_ORCAMENTO := FALSE;
    NUMERO_ORCAMENTO := '';
    frmvenda_PDV := tfrmvenda_PDV.create(self);
    frmvenda_PDV.showmodal;
  end;
end;

procedure Tfrmprincipal.tlAgentsClick(Sender: TdxTileControlItem);
begin
  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.sql.clear;
  frmmodulo.qrcaixa_operador.sql.add('select * from c000045 where codigo = ''000099''');
  frmmodulo.qrcaixa_operador.open;

  FRMORCAMENTO := TFRMORCAMENTO.CREATE(SELF);
  FRMORCAMENTO.SHOWMODAL;
end;

procedure Tfrmprincipal.dxTileItem3Click(Sender: TdxTileControlItem);
begin
  resultado_pesquisa1 := '';
  frmloccliente := tfrmloccliente.create(self);
  frmloccliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcliente_info := tfrmcliente_info.create(self);
    frmcliente_info.showmodal;
  end;
end;

procedure Tfrmprincipal.dxTileItem4Click(Sender: TdxTileControlItem);
begin
  Close;
end;

procedure Tfrmprincipal.dxTileControl1Item1Click(Sender: TdxTileControlItem);
begin
  sdav_atual := '';
  sdav_anterior := '';

  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.sql.clear;
  frmmodulo.qrcaixa_operador.sql.add('select * from c000045 where codigo = ''000099''');
  frmmodulo.qrcaixa_operador.open;

  if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger <> 1 then
  begin
    frmprincipal.msg('ERRO','Caixa fechado! Favor verificar!',false,false,true,'');
    exit;
  end
  else
  begin
    ABRE_ORCAMENTO := FALSE;
    NUMERO_ORCAMENTO := '';
    frmvenda_PDV := tfrmvenda_PDV.create(self);
    frmvenda_PDV.showmodal;
  end;
end;

procedure Tfrmprincipal.dxTileControl1Item2Click(Sender: TdxTileControlItem);
begin
  frmmodulo.qrcaixa_operador.close;
  frmmodulo.qrcaixa_operador.sql.clear;
  frmmodulo.qrcaixa_operador.sql.add('select * from c000045 where codigo = ''000099''');
  frmmodulo.qrcaixa_operador.open;

  FRMORCAMENTO := TFRMORCAMENTO.CREATE(SELF);
  FRMORCAMENTO.SHOWMODAL;
end;

procedure Tfrmprincipal.dxTileControl1Item3Click(Sender: TdxTileControlItem);
begin
  frmpreco := tfrmpreco.create(self);
  frmpreco.showmodal;
end;

procedure Tfrmprincipal.dxTileControl1Item4Click(Sender: TdxTileControlItem);
begin
  resultado_pesquisa1 := '';
  frmloccliente := tfrmloccliente.create(self);
  frmloccliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcliente_info := tfrmcliente_info.create(self);
    frmcliente_info.showmodal;
  end;
end;

procedure Tfrmprincipal.dxTileControl1Item5Click(Sender: TdxTileControlItem);
begin
  Form_sobre := tForm_sobre.create(self);
  Form_sobre.showmodal;
end;

procedure Tfrmprincipal.dxTileControl1Item6Click(Sender: TdxTileControlItem);
begin
   Close;
end;

procedure Tfrmprincipal.dxTileItem2Click(Sender: TdxTileControlItem);
begin
  frmpreco := tfrmpreco.create(self);
  frmpreco.showmodal;
end;

procedure Tfrmprincipal.cySpeedButton2Click(Sender: TObject);
begin
  Form_sobre := tForm_sobre.create(self);
  Form_sobre.showmodal;
end;

procedure Tfrmprincipal.cySpeedButton6Click(Sender: TObject);
begin
   Close;
end;

procedure Tfrmprincipal.cySpeedButton7Click(Sender: TObject);
begin
  form_ativar.ShowModal;
end;

end.
