(*
|==============================================================================|
|  Classe TTerminal custom desenvolvida para padrão de comunicação VT-100 E STX|
|==============================================================================|

11/01/2012 - Jorge - Incluido property para obter data/hora da ultima atualizacao(comunicacao) com o terminal.

*)
unit UTerminalCustom;

interface

uses
  Dialogs, ExtCtrls, SysUtils, ScktComp;

type
  TTipoProtocolo = (tpVT100, tpSTX);
  TPadraoPorta   = (ppNenhuma, ppSerial0, ppSerial1, ppParalela);
  TDisplayTipo   = (dt20x2, dt20x4, dt20x8, dt40x2);

  TTerminalCustom = class
  private
    FPortaImpressao: TPadraoPorta;
    FF2              : Char;
    FF3              : Char;
    FF1              : Char;
    FF4              : Char;
    FBCK             : Char;
    FENTER           : Char;

    FDisplayTipo     : TDisplayTipo;
    FTeclaQualquer: Boolean;
    FPortaBalanca: TPadraoPorta;
    FUltimoAcesso: TDateTime; // 11/01/2012
    procedure SetProtocolo(const Value: TTipoProtocolo);
    procedure SetSocket(const Value: TCustomWinSocket);
    procedure SetTextoPos(const Value: Integer);
    procedure SetTecla(const Value: string);
    procedure SetTexto(const Value: string);
    procedure SetDEL(const Value: Char);
    procedure SetTeclado(const Value: string);
    procedure SetTecladoAguardar(const Value: Boolean);
    procedure SetEstado(const Value: Integer);
    procedure SetEstadoProx(const Value: Integer);
    procedure SetDelay(const Value: Integer);
    procedure SetPortaImpressao(const Value: TPadraoPorta);
    procedure SetBCK(const Value: Char);
    procedure SetF1(const Value: Char);
    procedure SetF2(const Value: Char);
    procedure SetF3(const Value: Char);
    procedure SetF4(const Value: Char);
    procedure SetENTER(const Value: Char);
    procedure SetDisplayTipo(const Value: TDisplayTipo);
    procedure SetTeclaQualquer(const Value: Boolean);
    procedure SetPortaBalanca(const Value: TPadraoPorta);

  protected
    FIP : string;

    FProtocolo       : TTipoProtocolo;
    FSocket          : TCustomWinSocket;
    FTextoPos        : Integer;
    FTecla           : string;
    FTexto           : string;
    FDEL             : Char;
    FTeclado         : string;
    FTecladoAguardar : Boolean;
    FEstado          : Integer;
    FEstadoProx      : Integer;

    FDelay           : Integer;

    procedure OnCreare; virtual;

    procedure SetUltimoAcesso; // 11/01/2012
  public
    constructor Create(sckSocket: TCustomWinSocket); virtual;
    destructor Destroy; virtual;

    // DISPLAY
    procedure DisplayPosicionar(Linha, Coluna: Integer);
    procedure DisplayEnviar(sTexto: string);
    procedure DisplayLimpar;

    // TECLADO
    function TeclaTratar: Boolean;
    procedure TeclaPontoAjustar;
    procedure TeclaReceber(sTexto: string);

    // IMPRESSÃO
    procedure Imprimir(sTexto: string);

    // BALANÇA
    procedure Balanca;

    // PROCESSO DO TERMINAL
    procedure Processar; virtual;
  published
    property Socket          : TCustomWinSocket read FSocket write FSocket;
    property Protocolo       : TTipoProtocolo read FProtocolo write SetProtocolo;
    property IP              : string read FIP;
    property Delay           : Integer read FDelay write SetDelay;

    property PortaImpressao  : TPadraoPorta read FPortaImpressao write SetPortaImpressao;
    property PortaBalanca    : TPadraoPorta  read FPortaBalanca write SetPortaBalanca;

    property Estado          : Integer read FEstado write SetEstado;
    property EstadoProx      : Integer read FEstadoProx write SetEstadoProx;

    property DEL             : Char read FDEL write SetDEL;
    property F1              : Char read FF1 write SetF1;
    property F2              : Char read FF2 write SetF2;
    property F3              : Char read FF3 write SetF3;
    property F4              : Char read FF4 write SetF4;
    property BCK             : Char read FBCK write SetBCK;
    property ENTER           : Char read FENTER write SetENTER;

    property Tecla           : string read FTecla write SetTecla;
    property Texto           : string read FTexto write SetTexto;
    property Teclado         : string read FTeclado write SetTeclado;
    property TextoPos        : Integer read FTextoPos write SetTextoPos;
    property TecladoAguardar : Boolean read FTecladoAguardar write SetTecladoAguardar;

    property DisplayTipo     : TDisplayTipo read FDisplayTipo write SetDisplayTipo;
    property TeclaQualquer   : Boolean read FTeclaQualquer write SetTeclaQualquer;

    property UltimoAcesso    : TDateTime read FUltimoAcesso; // 11/01/2012

  end;

const
  _ESTADO_F_1      = 5000;
  _ESTADO_F_2      = 6000;
  _ESTADO_F_3      = 7000;
  _ESTADO_F_4      = 8000;

  _ESTADO_ESPERA   = 0;

  _ESTADO_INICIAL  = 100;
implementation

{ TTerminalCustom }

procedure TTerminalCustom.Balanca;
begin
  case Protocolo of
    tpVT100:
    begin
      case PortaBalanca of
        ppNenhuma: ;
        ppSerial0: Socket.SendText(#27 + '[?24h' + #27 + '[5i' + #5#27 + '[4i');
        ppSerial1: Socket.SendText(#27 + '[?24r' + #27 + '[5i' + #5#27 + '[4i');
      end;
    end;

    tpSTX:
    begin
      case PortaBalanca of
        ppNenhuma: ;
        ppSerial0: Socket.SendText(#2'R'#5#3);
        ppSerial1: Socket.SendText(#2'S'#5#3);
      end;
    end;
  end;
end;

constructor TTerminalCustom.Create(sckSocket: TCustomWinSocket);
begin
  Estado           := _ESTADO_INICIAL;
  Socket           := sckSocket;
  FIP              := Socket.RemoteAddress;

  DEL              := Chr(27);
  BCK              := Chr(8);
  F1               := Chr(17);
  F2               := Chr(18);
  F3               := Chr(19);
  F4               := Chr(20);
  ENTER            := Chr(13);

  OnCreare;
end;

destructor TTerminalCustom.Destroy;
begin
  Socket         := nil;

  inherited;
end;

procedure TTerminalCustom.DisplayEnviar(sTexto: string);
var
  StrTemp: string;
begin
  case Protocolo of
    tpVT100 : StrTemp := sTexto;
    tpSTX   : StrTemp := #2'D' + sTexto + #3;
  end;

  if Assigned(Socket) then
    Socket.SendText(StrTemp);
end;

procedure TTerminalCustom.DisplayLimpar;
var
  strTemp: string;
begin
  case Protocolo of
    tpVT100 : strTemp := #27'[H'#27'[J';
    tpSTX   : strTemp := #2'L'#3;
  end;

  if Assigned(Socket) then
    Socket.SendText(StrTemp);
end;

procedure TTerminalCustom.DisplayPosicionar(Linha, Coluna: Integer);
var
  StrTemp: string;
begin
  case Protocolo of
    tpVT100 : StrTemp := #27 + '[' + FormatFloat('00', Linha) + ';' + FormatFloat('00', Coluna) + 'H';
    tpSTX   : StrTemp := #2 + 'C' + IntToStr(linha - 1) + FormatFloat('00', Coluna - 1) + #3;
  end;

  if Assigned(Socket) then
    Socket.SendText(StrTemp);
end;

procedure TTerminalCustom.Imprimir(sTexto: string);
begin
  case Protocolo of
    tpVT100:
    begin
      case PortaImpressao of
        ppSerial0  : socket.SendText(#27 + '[?24h' + #27 + '[5i' + sTexto + #27 + '[4i');
        ppSerial1  : socket.SendText(#27 + '[?24r' + #27 + '[5i' + sTexto + #27 + '[4i');
        ppParalela : socket.SendText(#27 + '[?24l' + #27 + '[5i' + sTexto + #27 + '[4i');
      end;
    end;

    tpSTX:
    begin
      case PortaImpressao of
        ppSerial0, ppSerial1  : Socket.SendText(#2'S' + sTexto + #3);
        ppParalela            : Socket.SendText(#2'P' + sTexto + #3);
      end;
    end;
  end;
end;

procedure TTerminalCustom.OnCreare;
begin
  SetUltimoAcesso; // 11/01/2012
end;

procedure TTerminalCustom.Processar;
begin
  SetUltimoAcesso; // 11/01/2012
end;

procedure TTerminalCustom.SetBCK(const Value: Char);
begin
  FBCK := Value;
end;

procedure TTerminalCustom.SetDEL(const Value: Char);
begin
  FDEL := Value;
end;

procedure TTerminalCustom.SetDelay(const Value: Integer);
begin
  FDelay := Value;
end;

procedure TTerminalCustom.SetDisplayTipo(const Value: TDisplayTipo);
begin
  FDisplayTipo := Value;
end;

procedure TTerminalCustom.SetENTER(const Value: Char);
begin
  FENTER := Value;
end;

procedure TTerminalCustom.SetEstado(const Value: Integer);
begin
  FEstado := Value;
end;

procedure TTerminalCustom.SetEstadoProx(const Value: Integer);
begin
  FEstadoProx := Value;
end;

procedure TTerminalCustom.SetF1(const Value: Char);
begin
  FF1 := Value;
end;

procedure TTerminalCustom.SetF2(const Value: Char);
begin
  FF2 := Value;
end;

procedure TTerminalCustom.SetF3(const Value: Char);
begin
  FF3 := Value;
end;

procedure TTerminalCustom.SetF4(const Value: Char);
begin
  FF4 := Value;
end;

procedure TTerminalCustom.SetPortaBalanca(const Value: TPadraoPorta);
begin
  FPortaBalanca := Value;
end;

procedure TTerminalCustom.SetPortaImpressao(const Value: TPadraoPorta);
begin
  FPortaImpressao := Value;
end;

procedure TTerminalCustom.SetProtocolo(const Value: TTipoProtocolo);
begin
  FProtocolo := Value;
end;

procedure TTerminalCustom.SetSocket(const Value: TCustomWinSocket);
begin
  FSocket := Value;
end;

procedure TTerminalCustom.SetTecla(const Value: string);
begin
  FTecla := Value;
end;

procedure TTerminalCustom.SetTeclado(const Value: string);
begin
  FTeclado := Value;
end;

procedure TTerminalCustom.SetTecladoAguardar(const Value: Boolean);
begin
  FTecladoAguardar := Value;
end;

procedure TTerminalCustom.SetTeclaQualquer(const Value: Boolean);
begin
  FTeclaQualquer := Value;
end;

procedure TTerminalCustom.SetTexto(const Value: string);
begin
  FTexto := Value;
end;

procedure TTerminalCustom.SetTextoPos(const Value: Integer);
begin
  FTextoPos := Value;
end;

procedure TTerminalCustom.SetUltimoAcesso;
begin
  FUltimoAcesso := Now; // 11/01/2012
end;

procedure TTerminalCustom.TeclaPontoAjustar;
//var
//  PosPonto: integer;
//  StrDisp: string;
//  spPic: integer;
begin
  if Tecla <> '.' then
    Exit;

  if Pos('.', Teclado) > 0 then
    Exit;

  Teclado := Teclado + '.';
  textoPos := textoPos + 1;
  DisplayEnviar('.');

//  PosPonto := 1;
//
//  while (copy(Teclado, PosPonto, 1) <> '.') do
//  begin
//    PosPonto := PosPonto + 1;
//    if PosPonto = length(Teclado) then
//      Exit;
//  end;
//
//  if PosPonto = length(Teclado) then
//    Exit;
//
//  spPic   := PosPonto - 1 - length(Teclado);
//  StrDisp := '';
//
//  while spPic > 0 do
//  begin
//    StrDisp := StrDisp + ' ';
//    spPic := spPic - 1;
//  end;
//
//  strdisp := strdisp + teclado;
//  sppic := textoPos;
//
//  while sppic > 1 do
//  begin
//    DisplayEnviar(#8);
//    sppic := sppic - 1;
//  end;
//
//  textoPos := posponto;
//  DisplayEnviar(strdisp);
//  teclado  := strdisp;
end;

procedure TTerminalCustom.TeclaReceber(sTexto: string);
begin
  if not tecladoAguardar then
  begin
    tecladoAguardar := true;
    textoPos        := 1;
    texto           := sTexto;
    teclado         := '';
  end;
end;

function TTerminalCustom.TeclaTratar: Boolean;
var
  gpict: string;
  tamanho: Integer;
begin

  Result := False;

  // VERIFICAR SE ESTA EM ESPERA
  if Estado in ([_ESTADO_ESPERA..(_ESTADO_ESPERA + 100)]) then
    Tecla := #0;

  SetUltimoAcesso; // 11/01/2012

  // NENHUMA TECLA DIGITADA
  if Tecla = #0 then
    Exit;

  if TeclaQualquer then
  begin
    Teclado := Tecla[1];
    Result  := True;
    TeclaQualquer := False;
    Exit;
  end;


  // TECLA DE FUNÇÃO
  if Tecla[1] in ([F1, F2, F3, F4]) then
  begin
    Teclado := Tecla[1];
    Result := True;
    Tecla := #0;//Atualizado.
    Exit;
  end;

  // TECLA DEL
  if tecla = DEL then
  begin
    if textoPos = 1 then
    begin
      Teclado         := DEL;
      TecladoAguardar := False;
      Result          := True;
    end
    else
    begin
      while textoPos > 1 do
      begin
        tecla    := #8 + #16 + #8; // BACKSPACE
        DisplayEnviar(Tecla);
        textoPos := textoPos - 1;
      end;
      teclado := '';
      Result  := False;
    end;
    Exit;
  end;

  if tecla = BCK then // BACKSPACE
  begin
    if textoPos > 1 then
    begin
      gpict := Copy(texto, textoPos - 1, 1);
      if (gpict = '/') or (gpict = '.') then
      begin
        DisplayEnviar(Tecla);
        textoPos := textoPos - 1;
      end;
      textoPos := textoPos - 1;
      teclado  := copy(teclado, 1, textoPos - 1);
      tecla    := tecla + ' ' + #8;
      DisplayEnviar(Tecla);
    end;
    Result := False;
    Exit;
  end;

  if tecla = ENTER then // ENTER
  begin
    TecladoAguardar  := false;
    Result           := true;
    Exit;
  end;

  gpict := copy(texto, TextoPos, 1);


  if gpict = #3 then // PEDIDO DE PESO
  begin
    ; // todo peso foi recebido
    if Tecla = #3 then
    begin
      tecladoAguardar := False;
      Result := True;
      Exit;
    end
    else
    begin
      ; // PROTOCOLO DA BALANÇA <STX> PPPPP <ETX>
      if (tecla <> #2) and (tecla <> #3) then
        teclado := teclado + tecla;
    end;
  end;


  if gpict = 'X' then // QUALQUER TECLA
  begin
    teclado := teclado + tecla;
    textoPos := textoPos + 1;
    DisplayEnviar(Tecla);
  end
  else if gpict = '9' then // SOMENTE ACEITAR NUMEROS E "." OU "/" OU "-"
  begin
    if (Tecla[1] in ['0'..'9']) or (Tecla = '.') or (Tecla = '/') or (Tecla = '-') then
    begin
      if Tecla = '.' then begin
        TeclaPontoAjustar;
      end
      else
      begin
        teclado := teclado + tecla;
        textoPos := textoPos + 1;
        DisplayEnviar(Tecla);
      end;
    end;
  end
  else
  begin
    if gpict = 'A' then // Somente teclas alfabéticas
    begin
      if tecla[1] in ['A'..'Z'] then
      begin
        teclado := teclado + tecla;
        textoPos := textopos + 1;
        DisplayEnviar(Tecla);
      end;
    end
    else
    begin
      if gpict = '*' then // Digitação de senha
      begin
        if tecla[1] in ['0'..'9'] then // caso apenas número
        begin
          teclado := teclado + tecla;
          textoPos := textoPos + 1;
          tecla := '*';
          DisplayEnviar(Tecla);
        end;
      end
      else
      begin
        Result := False;
        Exit;
      end;
    end;
  end;

  tamanho := Length(texto) + 1;
  gpict := copy(texto, textoPos, 1);


  if tamanho = textoPos then
  begin
    Result := true;
    tecladoAguardar := False;
  end
  else
  begin
    if gpict = '/' then
    begin
      tecla := '/';
      textoPos := textoPos + 1;
      DisplayEnviar(Tecla);
      Result := False;
    end
    else
      if gpict = '.' then
      begin
        tecla := '.';
        textoPos := textoPos + 1;
        DisplayEnviar(Tecla);
        Result := False;
      end
      else
      begin
        Result := False;
      end;
  end;
end;

end.
