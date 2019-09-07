unit UFuncoes;

interface

uses Windows, Forms,  SysUtils, ShellAPI, dialogs, inifiles;

type
  TTipoIni = (TiConexao, TiTerminal, TiECF);

 // Pega o N° da Unidade do sistema
function SystemDrive: String;

 // Insere zeros a esquerda
Function StrZero(const I: Integer; const Casas: byte): string; overload; // Zeros Antes String
Function StrZero(const s: string; const Casas: byte): string;  overload;

 // Aciona Gaveta de Dinheiro impressora nao fiscal
Function AcionaGavetaNaoFiscal(sPorta:string): Boolean;

 // Ler Arquivo txt de configurações e busca por referencia inicial
Function LerArquivoTxt(sArquivo, sLinhaReferencia, RetPadrao:string):string;

//function Imp_Inicia_Abertura_Nota(sPorta:string; Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;

function Imp_Abre_Cupom(sPorta:string;CPF,Nome,Endereco:string; pbImprimirNoCabecalho: Boolean = False):string;
function Imp_Vende_item(sPorta:string;Codigo,produto,unidade,aliquota:string;quantidade,valor_unitario,valor_desconto:real;
                        valor_acrescimo:real;tipo_desconto_acrescimo:string;total:real):string;
function Imp_Inicia_Fechamento(sPorta:string; Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;  // Imprime Fechamento desconto ou acrescimo
function Imp_Forma_Pgto(sPorta:string;forma_pgto:string;valor:real):string;
function Imp_Termina_Fechamento(sPorta:string; Mensagem:string):string;
function Imp_Cancela_Item(sPorta:string;Item:string):string;
function Imp_Cancela_Cupom(sPorta:string):string;

Function CalculaPreco(bValorBase, bPercentual:double):double;
Function Percentual(bValorMenor, bValorMaior:double):double;

 // Varifica se valor string é inteiro
Function IsInteger(sString:string):Integer;
Function IsDate(sString:string; dDefault:TDateTime):TDateTime;
function AjustaData(sData: string): string;

Function CompletaStr(Conteudo, Caractere: string; Tamanho: Integer): string;
function Repl(C: string; Tamanho: Integer): string;
function ValidarChaveNFe(const ChaveNFe: string):boolean;

function PathSysIni: string;


implementation

uses Classes, principal, modulo;

function SystemDrive: String;
var
  DirWin, SystemDriv: String;
begin
  SetLength(DirWin, MAX_PATH);
  GetSystemDirectory(Pchar(DirWin), MAX_PATH);
  SystemDriv := Copy(DirWin, 1, 3);
  Result := SystemDriv
end;

Function AcionaGavetaNaoFiscal(sPorta:string): Boolean;
Var
  txt : TextFile;
  sComando,sArquivo:string;
begin
  sArquivo := ExtractFilePath(Application.ExeName) + '\tmp.prn';

  if FileExists(sArquivo) then
    DeleteFile(sArquivo);

  try

    // Comando para Acionar a Gaveta de Dinheiro
    AssignFile(txt, sArquivo );
    Rewrite(txt);
    sComando := #27 + #118 + #140;
    Write(txt,scomando);
    CloseFile(txt);

    Result := CopyFile(Pchar(sArquivo),Pchar(sPorta),false);

  except

    Result := False;

  end;


end;

Function LerArquivoTxt(sArquivo, sLinhaReferencia,RetPadrao:string):string;
var
    txt:TStrings;
    i:Integer;
    s:WideString;
begin
    Result := RetPadrao;
    
  if not FileExists(sArquivo) then
  begin
    Result := RetPadrao;
    Exit;
  end;

  try
    txt := TStringList.Create;

    txt.Clear;
    txt.LoadFromFile(sArquivo);

    for i := 0 to txt.Count - 1 do
    begin
      s := txt[i];

      //if Pos( sLinhaReferencia, Copy(s,1,8) ) > 0 then
      begin
        Result := Copy(s,9,length(s));
        Exit;
      end;

    end;

    finally
        txt.Free;
    end;

end;

function Imp_Inicia_Fechamento(sPorta:string; Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;
begin
  ShowMessage('Imprime aqui o inicio do fechamento' + #13#10 + Acrescimo_ou_Desconto);
  Result := 'OK';
end;

function Imp_Forma_Pgto(sPorta:string;forma_pgto:string;valor:real):string;
begin
  ShowMessage('Imprime aqui as formas de pagamento ' + #13#10 +  forma_pgto);
  Result := 'OK';
end;

function Imp_Termina_Fechamento(sPorta:string; Mensagem:string):string;
begin
  ShowMessage('Imprime aqui o fechamento nao fiscal' + #13#10 + Mensagem);
  Result := 'OK';
end;

function Imp_Vende_item(sPorta:string;Codigo,produto,unidade,aliquota:string;quantidade,valor_unitario,valor_desconto:real;
                        valor_acrescimo:real;tipo_desconto_acrescimo:string;total:real):string;
begin
  ShowMessage('Imprime aqui o item: ' + produto);
  Result := 'OK';
end;

function Imp_Cancela_Item(sPorta:string;Item:string):string;
begin
  ShowMessage('Imprime cancelamento do item: ' + Item);
  Result := 'OK';
end;

function Imp_Cancela_Cupom(sPorta:string):string;
begin
  ShowMessage('Imprime cancelamento do cupom nao fiscal ');
  Result := 'OK';
end;

Function StrZero(const I: Integer; const Casas: byte): string; // Zeros Antes String
var
  Ch: char;
begin
  Result := IntToStr(I);
  if Length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while Length(Result) < Casas do
    Result := Ch + Result;
end;

Function StrZero(const s: string; const Casas: byte): string;  overload;
var
  Ch: char;
begin
  Result := s;;
  if Length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while Length(Result) < Casas do
    Result := Ch + Result;
end;

Function IsInteger(sString:string):Integer;
begin
  try
  Result := StrToInt(sString);
  except
    Result := 0;
  end;
end;

function Imp_Abre_Cupom(sPorta:string;CPF,Nome,Endereco:string; pbImprimirNoCabecalho: Boolean = False):string;
begin

  ShowMessage('Imprime aqui a abertura do cupom nao fiscal ');

  Result := 'OK';

end;

function PathSysIni: string;
begin

  Result := ExtractFilePath(Application.ExeName) + 'WinBR.ini';

end;

Function CalculaPreco(bValorBase, bPercentual:double):double;
var
  i:integer;
begin
  try

  //  i :=  frmPrincipal.isInteger(frmmodulo.qrFilialTIPOCALCULO.AsString) - 1;

    if i = 0 then // Usa Indice
    begin
//        Result := bValorBase * ( 100 / ( 100 - bPercentual )) - bValorBase;
        Result := bValorBase / ( (bPercentual - 100) / 100) * (-1) ;
    end;

    if i = 1 then // Soma
    begin

      if (bValorBase > 0) and (bPercentual > 0) then
       result := (bValorBase * bPercentual) / 100 + bValorBase
      else
      if bValorBase > 0 then
        result := bValorBase;

      end;

  except
  end;    

end;

Function Percentual(bValorMenor, bValorMaior:double):double;
var
  i:integer;
begin

 //   i :=  frmPrincipal.isInteger(frmmodulo.qrFilialTIPOCALCULO.AsString) - 1;


  case i of
    0: // Indice
    begin
      if bValorMaior > 0 then
        Result := ((bValorMaior - bValorMenor) / bValorMaior) * 100
      else
      Result := 0;
    end;

    1: // Soma - MarkUP
    begin

      if bValorMenor > 0 then
       result := (bValorMaior - bValorMenor) / bValorMenor * 100
      else
      if bValorMenor > 0 then
       result := 100
      else
       result := 0;

    end;

  end;

end;

Function IsDate(sString:string; dDefault:TDateTime):TDateTime;
begin
  try

    result := strtodate(sString);

  except
      result := dDefault;

  end;

end;

Function CompletaStr(Conteudo, Caractere: string; Tamanho: Integer): string;
begin
  Result := Copy(Conteudo, 1, Tamanho) + Repl(Caractere, (Tamanho - Length(Conteudo)));
  // Result := Result + ' - ' + IntToStr(length(Result));
end;

function Repl(C: string; Tamanho: Integer): string;
var
  Conteudo: string;
  Contar: Integer;
begin
  Conteudo := '';
  for Contar := 1 to Tamanho do
    Conteudo := Conteudo + C;

  Result := Conteudo;

end;
function AjustaData(sData: string): string;
begin
  Result := QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(sData)));

 end;

 function ValidarChaveNFe(const ChaveNFe: string):boolean;
const
  PESO : Array[0..43] of Integer = (4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 0);
var
  Retorno : boolean;
  aChave  : Array[0..43] of Char;
  Soma    : Integer;
  Verif   : Integer;
  I       : Integer;
begin
  Retorno := false;
  try
    try
      if not Length(ChaveNFe) = 44 then
        raise Exception.Create('');

      StrPCopy(aChave,StringReplace(ChaveNFe,' ', '',[rfReplaceAll]));
      Soma := 0;
      for I := Low(aChave) to High(aChave) do
        Soma := Soma + (StrToInt(aChave[i]) * PESO[i]);

      if Soma = 0 then
        raise Exception.Create('');

      Soma := Soma - (11 * (Trunc(Soma / 11)));
      if (Soma = 0) or (Soma = 1) then
        Verif := 0
      else
        Verif := 11 - Soma;

      Retorno := Verif = StrToInt(aChave[43]);
    except
      Retorno := false;
    end;
  finally
    Result := Retorno;
  end;
end;
end.
