unit UImpressao;

interface

uses Windows, Classes, dialogs;

type
  TFonte = set of (fNegrito, fItalico, t10cpi, t12cpi, t17cpi, tExp, Justif, Esquerda, Centraliza, Direita);

const
  cJustif = #27#97#51;
  cEject = #12;

  { Tamanho da fonte }
  c10cpi = #18;
  c12cpi = #27#77;
  c17cpi = #15;
  cIExpandido = #14; // Liga Expandido
  cFExpandido = #20; // Desliga Expandido
  { FormataÁ„o da fonte }
  cINegrito = #27#71; // Liga Negrito
  cFNegrito = #27#72; // Desliga Negrito
  cIItalico = #27#52; // Liga Italico
  cFItalico = #27#53; // Desligaa Italico

type
  TImpressao = class
  private
    FPorta: string;
    FImpressaoAberta: Boolean;
    FConcomitante: Boolean;
    FLinhasFinal: Integer;
    procedure SetPorta(const Value: string);
    procedure SetConcomitante(const Value: Boolean);
    procedure SetLinhasFinal(const Value: Integer);
  protected
    function JustificaTexto(texto: string; qtde_caracteres: Integer; caracter: string; tipo: TFonte): string;
    function tiraacento(str: string): string;

  public
    constructor Create; virtual;
    destructor Destroy; override;

    function AbreImpressao: Boolean;
    function FechaImpressao: Boolean;
    function Expulsa: Boolean;
  published

    function Imprime(sTexto: string; Fonte: TFonte): Boolean;
    property Porta: string read FPorta write SetPorta;
    property Concomitante: Boolean read FConcomitante write SetConcomitante;
    property LinhasFinal: Integer read FLinhasFinal write SetLinhasFinal;

  end;

var
  Impressao: TImpressao;
  txt: TextFile;

implementation

uses principal;

{ TImpressao }

function TImpressao.AbreImpressao: Boolean;
begin
  try
    Assignfile(txt, FPorta);
    Rewrite(txt);

    Result := True;

  except
    Result := False;
  end;

  FImpressaoAberta := Result;

end;

constructor TImpressao.Create;
begin
  inherited;

  // Impressao := TImpressao.Create;
  FLinhasFinal := 0;
  FPorta := 'LPT1';

end;

destructor TImpressao.Destroy;
begin
  inherited;
  // Impressao.Destroy;
end;

function TImpressao.Expulsa: Boolean;
var
  i: Integer;
begin

  for i := 0 to FLinhasFinal do
    WriteLn(txt, cEject);

end;

function TImpressao.FechaImpressao: Boolean;
begin
  try
    closefile(txt);
    FImpressaoAberta := False;
  except
    FImpressaoAberta := False;

  end;
end;

function TImpressao.Imprime(sTexto: string; Fonte: TFonte): Boolean;
var
  sFonte, sFonteDeslig: string;
begin
  sFonte := '';

  if not FImpressaoAberta then
    AbreImpressao;

  {
    ***Tamanho da fonte
    c10cpi = #18;
    c12cpi = #27#77;
    c17cpi = #15;
    cIExpandido = #14; // Liga Expandido
    cFExpandido = #20; // Desliga Expandido
    *** FormataÁ„o da fonte
    cINegrito = #27#71; // Liga Negrito
    cFNegrito = #27#72; // Desliga Negrito
    cIItalico = #27#52; // Liga Italico
    cFItalico = #27#53; // Desligaa Italico
  }

  sFonteDeslig := cFNegrito + cFExpandido + cFItalico; // Desliga toda formataÁ„o

  if fNegrito in Fonte then
    sFonte := cINegrito;

  if fItalico in Fonte then
    if Length(sFonte) > 0 then
      sFonte := sFonte + cIItalico
    else
      sFonte := cIItalico;

  if tExp in Fonte then
    if Length(sFonte) > 0 then
      sFonte := sFonte + cIExpandido
    else
      sFonte := cIExpandido;

  if t10cpi in Fonte then
    if Length(sFonte) > 0 then
      sFonte := sFonte + c10cpi
    else
      sFonte := c10cpi;

  if t12cpi in Fonte then
    if Length(sFonte) > 0 then
      sFonte := sFonte + c12cpi
    else
      sFonte := c12cpi;

  if t17cpi in Fonte then
    if Length(sFonte) > 0 then
      sFonte := sFonte + c17cpi
    else
      sFonte := c17cpi;

  if Justif in Fonte then
    if Length(sFonte) > 0 then
      sFonte := sFonte + cJustif
    else
      sFonte := cJustif;

  if Esquerda in Fonte then
  begin
    if frmPrincipal.LerIni('.\Cfg\cfg.ini', 'GUILHOTINA', 'MODELO', 'PADR√O') = 'DARUMA' then
      sTexto := JustificaTexto(sTexto, 48, ' ', [Esquerda])
    else
      sTexto := #29 + #249 + #32 + #0 + #27 + #116 + #8 + JustificaTexto(sTexto, 48, ' ', [Esquerda])
  end;

  if Centraliza in Fonte then
  begin
    if frmPrincipal.LerIni('.\Cfg\cfg.ini', 'GUILHOTINA', 'MODELO', 'PADR√O') = 'DARUMA' then
      sTexto := JustificaTexto(sTexto, 48, ' ', [Centraliza])
    else
      sTexto := #29 + #249 + #32 + #0 + #27 + #116 + #8 + JustificaTexto(sTexto, 48, ' ', [Centraliza])
  end;

  if Direita in Fonte then
  begin
    if frmPrincipal.LerIni('.\Cfg\cfg.ini', 'GUILHOTINA', 'MODELO', 'PADR√O') = 'DARUMA' then
      sTexto := JustificaTexto(sTexto, 48, ' ', [Direita])
    else
      sTexto := #29 + #249 + #32 + #0 + #27 + #116 + #8 + JustificaTexto(sTexto, 48, ' ', [Direita])
  end;

  if Justif in Fonte then
    WriteLn(txt, sFonte + cJustif, sTexto + sFonteDeslig)
  else
    WriteLn(txt, sFonte + sTexto + sFonteDeslig);

  sleep(50);
  if FConcomitante then
    FechaImpressao;

end;

function TImpressao.JustificaTexto(texto: string; qtde_caracteres: Integer; caracter: string; tipo: TFonte): string;
begin
  texto := tiraacento(texto);

  if Direita in tipo then
  begin
    while Length(texto) < qtde_caracteres do
      texto := caracter + texto;
    while Length(texto) > qtde_caracteres do
      delete(texto, (qtde_caracteres + 1), 1);
  end;

  if Esquerda in tipo then
  begin
    while Length(texto) < qtde_caracteres do
      texto := texto + caracter;
    while Length(texto) > qtde_caracteres do
      delete(texto, (qtde_caracteres + 1), 1);
  end;

  if Centraliza in tipo then
  begin
    if (qtde_caracteres mod 2) <> 0 then
      qtde_caracteres := qtde_caracteres - 1;
    while Length(texto) < qtde_caracteres do
      texto := caracter + texto + caracter;
    while Length(texto) > qtde_caracteres do
      delete(texto, (qtde_caracteres + 1), 1);
  end;

  Result := texto;
end;

procedure TImpressao.SetConcomitante(const Value: Boolean);
begin
  FConcomitante := Value;
end;

procedure TImpressao.SetLinhasFinal(const Value: Integer);
begin
  FLinhasFinal := Value;
end;

procedure TImpressao.SetPorta(const Value: string);
begin
  FPorta := Value;
end;

function TImpressao.tiraacento(str: string): string;
var
  i: Integer;
begin
  for i := 1 to Length(str) do
    case str[i] of
      'Ë':
        str[i] := 'e';
      'Ï':
        str[i] := 'i';
      '˘':
        str[i] := 'u';
      'Ó':
        str[i] := 'i';
      '˚':
        str[i] := 'u';
      '·':
        str[i] := '†'; //
      'È':
        str[i] := 'Ç'; //
      'Ì':
        str[i] := '°'; //
      'Û':
        str[i] := '¢'; //
      '˙':
        str[i] := '£'; //
      '‡':
        str[i] := 'Ö'; //
      'Ú':
        str[i] := 'ï'; //
      '‚':
        str[i] := 'É'; //
      'Í':
        str[i] := 'à'; //
      'Ù':
        str[i] := 'ì'; //
      '‰':
        str[i] := 'Ñ'; //
      'Î':
        str[i] := 'â'; //
      'Ô':
        str[i] := 'ã'; //
      'ˆ':
        str[i] := 'î'; //
      '¸':
        str[i] := 'Å'; //
      '„':
        str[i] := 'Ü'; //
      'ı':
        str[i] := 'o';
      'Ò':
        str[i] := '§'; //
      'Á':
        str[i] := 'á'; //
      '¡':
        str[i] := 'A';
      '…':
        str[i] := 'ê'; //
      'Õ':
        str[i] := 'I';
      '”':
        str[i] := 'O';
      '⁄':
        str[i] := 'U';
      '¿':
        str[i] := 'A';
      '»':
        str[i] := 'E';
      'Ã':
        str[i] := 'I';
      '“':
        str[i] := 'O';
      'Ÿ':
        str[i] := 'U';
      '¬':
        str[i] := 'è';
      ' ':
        str[i] := 'E';
      'Œ':
        str[i] := 'I';
      '‘':
        str[i] := 'O';
      '€':
        str[i] := 'U';
      'ƒ':
        str[i] := 'A';
      'À':
        str[i] := 'E';
      'œ':
        str[i] := 'I';
      '÷':
        str[i] := 'O';
      '‹':
        str[i] := 'ö'; //
      '√':
        str[i] := 'A';
      '’':
        str[i] := 'O';
      '—':
        str[i] := '•'; //
      '«':
        str[i] := 'Ä'; //
      '™':
        str[i] := '¶'; //
      '∫':
        str[i] := 'ß'; //
    end;
  Result := str;

end;

end.

