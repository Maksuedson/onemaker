unit UFuncoes;

interface

uses classes, sysutils, FireDAC.Comp.Client;

function zerarcodigo(codigo: string; qtde: integer): string;
function isInteger(str: string): integer;
function isFloat(str: string): double;
function sn(sNum: string): string;
function Inc(sTabela, sCampo, sCondicao: string): string;
function MMDDYYYY(Dat: TDate): string;
function AllTrim(s:string):string;

{ FUNCOES SPED }
Function isUnid(sUnid: string): string;
Function DataEFD(sData: string): TDate;

Function LinhaEFD(Texto, Caracter: string; Posicao: integer): string;

implementation

uses UDm;

function zerarcodigo(codigo: string; qtde: integer): string;
begin
  while length(codigo) < qtde do
    codigo := '0' + codigo;
  result := codigo;
end;

function isInteger(str: string): integer;
begin
  try
    result := StrToInt(str);

  except
    result := 0;
  end;

end;

function isFloat(str: string): double;
begin
  try
    result := StrToFloat(str);

  except
    result := 0;
  end;

end;

function sn(sNum: string): string;
var
  s1, s2: string;
  i: integer;
begin
  s1 := sNum;
  s2 := '';
  for i := 1 to length(s1) do
    if s1[i] in ['0' .. '9'] then
      s2 := s2 + s1[i];
  result := s2;

end;

Function LinhaEFD(Texto, Caracter: string; Posicao: integer): string;
var
  aux: string;
  i, contador: integer;
begin

  // zera variaveis auxiliares

  aux := '';

  result := '';

  contador := 0;

  // busca informações solicitadas no texto

  for i := 1 to length(Texto) do
  begin

    if copy(Texto, i, 1) <> Caracter then
      aux := aux + copy(Texto, i, 1)
    else
    begin
      contador := contador + 1;

      if contador = Posicao then
        Break
      else
        aux := '';

    end;

  end;

  result := aux;

end;

function Inc(sTabela, sCampo, sCondicao: string): string;
var
  qrCMD: TFDQuery;
begin
  try
    qrCMD := TFDQuery.Create(nil);
    qrCMD.Connection := Dm.FDConexao;
    try
      qrCMD.close;
      qrCMD.SQL.Clear;
      qrCMD.SQL.Add('Select max(' + sCampo + ') as ma from ' + sTabela);
      if length(sCondicao) > 0 then
        qrCMD.SQL.Add(sCondicao);

      qrCMD.Open;

      result := zerarcodigo(IntToStr(isInteger(qrCMD.FieldByName('ma').AsString) + 1), 6);

    except
      result := zerarcodigo('1', 6);
    end;

  finally
    qrCMD.Free;
  end;
end;

Function isUnid(sUnid: string): string;
begin

  if (length(sUnid) > 0) and (length(sUnid) <= 3) then
    result := sUnid
  else
    result := 'UN';

end;

Function DataEFD(sData: string): TDate;
begin

  try
    result := StrToDate(copy(sData, 1, 2) + '/' + copy(sData, 3, 2) + '/' + copy(sData, 5, 4));

  Except
    result := StrToDate('01/01/1900');
  end;

end;

function MMDDYYYY(Dat: TDate): string;
begin
  try
    result := FormatDateTime('mm/dd/yyyy', Dat);
  Except
    result := '01/01/1900';
  end;
end;

function AllTrim(s:string):string;
begin
  Result := Trim(TrimLeft(TrimRight(s)));
end;

end.
