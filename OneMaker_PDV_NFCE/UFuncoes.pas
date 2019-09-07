unit UFuncoes;

interface

uses Windows, Forms, SysUtils, ShellAPI, dialogs, UImpressao,
  iniFiles;

// Pega o N° da Unidade do sistema
function SystemDrive: String;

// Insere zeros a esquerda
Function StrZero(const I: Integer; const Casas: byte): string; overload;
// Zeros Antes String
Function StrZero(const s: string; const Casas: byte): string; overload;

// Aciona Gaveta de Dinheiro impressora nao fiscal
Function AcionaGavetaNaoFiscal(sPorta: string): Boolean;

// Aciona guilhotina - corte do papel
Function AcionaGuilhotinaNaoFiscal(sPorta, sModelo: string): Boolean;

// Ler Arquivo txt de configurações e busca por referencia inicial
Function LerArquivoTxt(sArquivo, sLinhaReferencia, RetPadrao: string): string;

// function Imp_Inicia_Abertura_Nota(sPorta:string; Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;

function Imp_Abre_Cupom(sPorta: string; CPF, Nome, Endereco: string;
  pbImprimirNoCabecalho: Boolean = False): string;
function Imp_Vende_item(sPorta: string; Codigo, produto, unidade,
  aliquota: string; quantidade, valor_unitario, valor_desconto: real;
  valor_acrescimo: real; tipo_desconto_acrescimo: string; total: real): string;
function Imp_Inicia_Fechamento(sPorta: string; Acrescimo_ou_Desconto: string;
  tipo: string; valor: real): string;
// Imprime Fechamento desconto ou acrescimo
function Imp_Forma_Pgto(sPorta: string; forma_pgto: string;
  valor: real): string;
function Imp_Termina_Fechamento(sPorta: string; Mensagem: string;
  ValorPago, Troco: real): string;
function Imp_Cancela_Item(sPorta: string; Item: string): string;
function Imp_Cancela_Cupom(sPorta: string): string;
function Imp_Fecha_Cupom_Resumido(sPorta: string; forma_pgto: string;
  Mensagem: string; valor: Currency = 0.00): string;
function Imp_Usa_Gerencial(sPorta: string; Texto: String): string;

function Imp_Abre_Gerencial(sPorta: string; Texto: String): string;
function Imp_Fecha_Gerencial(sPorta: string): string;

function Imp_Suprimento(sPorta: string; valor: real;
  forma_pgto: String): string;
function Imp_Sangria(sPorta: string; valor: real): string;

// Repete String X Vezes
Function Repl(C: string; Tamanho: Integer): string;
Function CompletaStr(Conteudo, Caractere: string; Tamanho: Integer): string;

// Varifica se valor string é inteiro
Function IsInteger(sString: string): Integer;
Function IsFloat(sString: string): Double;
// Funcao max Query
function Max(sCondicao: string): Double;

procedure GravaINI(Arq, Secao, Ident, valor: String);
Function LerIni(Arq, Secao, Ident: String; Def: String): String;

procedure InicializaVariaveis;

const
  mascara_qtde = '###,##0.000';
  mascara_Valor = '###,##0.00';

var
  Imp: TImpressao;

implementation

uses Classes, principal, modulo, funcoes, venda;

function SystemDrive: String;
var
  DirWin, SystemDriv: String;
begin
  SetLength(DirWin, MAX_PATH);
  GetSystemDirectory(Pchar(DirWin), MAX_PATH);
  SystemDriv := Copy(DirWin, 1, 3);
  Result := SystemDriv
end;

Function AcionaGavetaNaoFiscal(sPorta: string): Boolean;
Var
  txt: TextFile;
  sComando: string;
begin

  try
    // Comando para Acionar a Gaveta de Dinheiro
    AssignFile(txt, sPorta);
    Rewrite(txt);

    if (frmPrincipal.LerIni('.\Cfg\cfg.ini', 'GUILHOTINA', 'MODELO', 'PADRÃO')
      = 'PADRÃO') or (frmPrincipal.LerIni('.\Cfg\cfg.ini', 'GUILHOTINA',
      'MODELO', 'PADRÃO') = 'BEMATECH') then
      sComando := #27 + #118 + #140; // BEMATEH E PADRAO

    if frmPrincipal.LerIni('.\Cfg\cfg.ini', 'GUILHOTINA', 'MODELO', 'PADRÃO') = 'DARUMA'
    then
      sComando := #27 + #112; // DARUMA

    Write(txt, sComando);
    CloseFile(txt);

  except

    Result := False;

  end;

end;

Function LerArquivoTxt(sArquivo, sLinhaReferencia, RetPadrao: string): string;
var
  txt: TStrings;
  I: Integer;
  s: WideString;
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

    for I := 0 to txt.Count - 1 do
    begin
      s := txt[I];

      if System.pos(PWideChar(sLinhaReferencia), Copy(s, 1, 8)) > 0 then
      begin
        Result := Copy(s, 9, length(s));
        Exit;
      end;

    end;

  finally
    txt.Free;
  end;

end;

function Imp_Inicia_Fechamento(sPorta: string; Acrescimo_ou_Desconto: string;
  tipo: string; valor: real): string;
var
  s: string;
begin
  if Acrescimo_ou_Desconto = 'D' then
    s := 'DESCONTO'
  else
    s := 'ACRESCIMO';

  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    Imp.Porta := sPorta;
    Imp.Concomitante := True;
    Imp.Imprime(Repl('-', 49), [Centraliza]);
    Imp.Imprime('** Meios de  Pagamento **', [Centraliza]);
    Imp.Imprime(CompletaStr('SUBTOTAL', '.', 35) + ': ' +
      FormatFloat(mascara_Valor, rTotal_venda), [Esquerda]);
    Imp.Imprime(CompletaStr(s + '(' + tipo + ')', '.', 35) + ': ' +
      FormatFloat(mascara_Valor, valor), [Esquerda]);
    Imp.Imprime(CompletaStr('TOTAL', '.', 35) + ': ' +
      FormatFloat(mascara_Valor, frmVenda.ed_total_pagar.Value), [Esquerda]);

    if Imp.Concomitante = False then
      Imp.FechaImpressao;

  end;

  Result := 'OK';
end;

function Imp_Forma_Pgto(sPorta: string; forma_pgto: string;
  valor: real): string;
begin
  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    Imp.Porta := sPorta;
    Imp.Concomitante := True;
    Imp.Imprime(CompletaStr(forma_pgto, '.', 35) + ': ' +
      FormatFloat(mascara_Valor, valor), [Esquerda]);

    if Imp.Concomitante = False then
      Imp.FechaImpressao;
  end;

  Result := 'OK';
end;

function Imp_Termina_Fechamento(sPorta: string; Mensagem: string;
  ValorPago, Troco: real): string;
var
  I: Integer;
begin
  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    Imp.Porta := sPorta;
    Imp.Concomitante := True;
    Imp.LinhasFinal := iQtdLinhasFinal;
    Imp.Imprime('                     VL. PAGO:    ' +
      FormatFloat(mascara_Valor, ValorPago), [Esquerda]);
    Imp.Imprime('                        TROCO:    ' +
      FormatFloat(mascara_Valor, Troco), [Esquerda]);

    // Imp.Imprime(repl('-',48),[Centraliza]);
    Imp.Imprime(Mensagem, []);

    if (rValor_Total_crediario > 0) then
    begin
      Imp.Imprime('', [Centraliza]);
      Imp.Imprime('', [Centraliza]);
      Imp.Imprime('-----------------------', [Centraliza]);
      Imp.Imprime('assinatura', [Centraliza]);
    end;

    Imp.Imprime(texto_justifica('Store Protheus 8.1 Seattle', 48, ' ', taDireita), [t17cpi]);

    for I := 0 to Imp.LinhasFinal do
      Imp.Imprime('', []);

    if Imp.Concomitante = False then
      Imp.FechaImpressao;

  end;
  Result := 'OK';
end;

function Imp_Vende_item(sPorta: string; Codigo, produto, unidade,
  aliquota: string; quantidade, valor_unitario, valor_desconto: real;
  valor_acrescimo: real; tipo_desconto_acrescimo: string; total: real): string;
begin

  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    Imp.Porta := sPorta;
    Imp.Concomitante := True;

    Imp.Imprime(Zerar(Codigo, 6) + ' ' + produto, [Esquerda]);
    // Imp.Imprime(completaStr(FormatFloat(mascara_qtde,quantidade) + ' ' + unidade + '  X ',' ',16) +  FormatFloat(mascara_Valor,valor_unitario) + '    =    ' + FormatFloat(mascara_Valor,total) ,[Direita]);

    { 123456789012345678901234567890123456789012345678 = 48 }
    { P R O D U T O QTDE     X UNITARIO    = VLR.TOTAL = 58 }
    { ABACAXI }
    { 65,000 KG  X    15,00    =    975,00 = }
    Imp.Imprime(CompletaStr(FormatFloat(mascara_qtde, quantidade) + ' ' +
      unidade + '  X ', ' ', 16) + FormatFloat(mascara_Valor, valor_unitario) +
      '    =    ' + FormatFloat(mascara_Valor, total), [Direita]);

    if Imp.Concomitante = False then
      Imp.FechaImpressao;

  end;

  Result := 'OK';
end;

function Imp_Cancela_Item(sPorta: string; Item: string): string;
begin
  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    InicializaVariaveis;
    Imp.Porta := sPorta;
    Imp.Concomitante := True;
    Imp.Imprime('Item ' + Item + ' cancelado.', [Esquerda]);
  end;

  Result := 'OK';
end;

function Imp_Cancela_Cupom(sPorta: string): string;
begin
  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    InicializaVariaveis;
    Imp.Porta := sPorta;
    Imp.Concomitante := True;
    Imp.Imprime('', [Centraliza]);
    Imp.Imprime('***** VENDA CANCELADA *****', [Centraliza]);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
  end;

  Result := 'OK';
end;

Function StrZero(const I: Integer; const Casas: byte): string;
// Zeros Antes String
var
  Ch: char;
begin
  Result := IntToStr(I);
  if length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while length(Result) < Casas do
    Result := Ch + Result;
end;

Function StrZero(const s: string; const Casas: byte): string; overload;
var
  Ch: char;
begin
  Result := s;;
  if length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while length(Result) < Casas do
    Result := Ch + Result;
end;

Function IsInteger(sString: string): Integer;
begin
  try
    Result := StrToInt(sString);
  except
    Result := 0;
  end;
end;

Function IsFloat(sString: string): Double;
begin
  try
    Result := StrToFloat(sString);
  except
    Result := 0;
  end;
end;

function Imp_Abre_Cupom(sPorta: string; CPF, Nome, Endereco: string;
  pbImprimirNoCabecalho: Boolean = False): string;
begin
  InicializaVariaveis;

  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    Imp.Porta := sPorta;
    Imp.Concomitante := True;
    Imp.Imprime(emitente_fantasia, [fNegrito, Centraliza]);
    Imp.Imprime(emitente_endereco, [Centraliza]);
    Imp.Imprime(emitente_cidade + ' - CEP ' + emitente_cep, [Centraliza]);
    Imp.Imprime('Telefone: ' + emitente_telefone, [Centraliza]);
    Imp.Imprime(Repl('-', 49), [Centraliza]);
    Imp.Imprime('No. ' + Zerar(sNumero_Cupom, 6) + '  Emis: ' +
      DateToStr(dData_Sistema) + ' ' + Copy(TimeToStr(Time), 1, 5) + ' Caixa: '
      + Zerar(sECF_Caixa, 6), [Centraliza]);
    Imp.Imprime(Repl('-', 49), [Centraliza]);

    { if sCli_codigo <> '' then
      begin
      Imp.Imprime('Cliente...: ' + Zerar(sCli_codigo,6) + ' ' + Nome,[Esquerda]);
      Imp.Imprime('Endereco..: ' + Endereco,[Esquerda]);
      Imp.Imprime('Cid/UF/CEP: ' + sCli_Cidade + '/' + sCli_uf + ' ' + scli_cep ,[Esquerda]);
      Imp.Imprime('Tefones...: ',  [Esquerda]);
      Imp.Imprime('CPF/CNPJ..: '+  CPF, [Esquerda]);
      Imp.Imprime('RG/IE.....: ',     [Esquerda]);
      end;
    }
    // Imp.Imprime(repl('-',49),[Centraliza]);
    Imp.Imprime('P R O D U T O  QTDE   X   UNITARIO  =  VLR.TOTAL',
      [Centraliza]);
    Imp.Imprime(Repl('-', 49), [Centraliza]);

    if Imp.Concomitante = False then
      Imp.FechaImpressao;

  end;

  Result := 'OK';

end;

function Imp_Abre_Gerencial(sPorta: string; Texto: String): string;
begin
  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    InicializaVariaveis;
    Imp.Porta := sPorta;
    Imp.Concomitante := True;
    Imp.Imprime(Texto, [Centraliza]);
  end;

  Result := 'OK';
end;

function Imp_Usa_Gerencial(sPorta: string; Texto: String): string;
begin
  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin

    InicializaVariaveis;
    Imp.Porta := sPorta;
    Imp.Concomitante := True;
    Imp.Imprime(Texto, []);

    if Imp.Concomitante = False then
      Imp.FechaImpressao;
  end;
  Result := 'OK';
end;

function Imp_Fecha_Cupom_Resumido(sPorta: string; forma_pgto: string;
  Mensagem: string; valor: Currency = 0.00): string;
begin

  Result := 'OK';
end;

function Imp_Suprimento(sPorta: string; valor: real;
  forma_pgto: String): string;
begin
  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    InicializaVariaveis;
    Imp.Porta := sPorta;
    Imp.Concomitante := True;
    Imp.Imprime('**** SUPRIMENTO ****', [Centraliza]);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
    Imp.Imprime('Forma: ' + forma_pgto, [Esquerda]);
    Imp.Imprime('Valor: ' + FormatFloat(mascara_Valor, valor), [Esquerda]);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
    Imp.Imprime('---------------------', [Centraliza]);
    Imp.Imprime('Responsavel', [Centraliza]);
  end;

  Result := 'OK';
end;

function Imp_Sangria(sPorta: string; valor: real): string;
begin
  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    InicializaVariaveis;
    Imp.Porta := sPorta;
    Imp.Concomitante := True;
    Imp.Imprime('**** SANGRIA ****', [Centraliza]);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
    Imp.Imprime('Retirada do caixa: ', [Esquerda]);
    Imp.Imprime('Valor: ' + FormatFloat(mascara_Valor, valor), [Esquerda]);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
    Imp.Imprime('', []);
    Imp.Imprime('---------------------', [Centraliza]);
    Imp.Imprime('Responsavel', [Centraliza]);
  end;

  Result := 'OK';
end;

function Max(sCondicao: string): Double;
begin
  try
    frmModulo.query.Close;
    frmModulo.query.SQL.Clear;
    frmModulo.query.SQL.Add('Select Max(NUMERO) as Maior from SEQUENCIA');

    if length(sCondicao) > 0 then
      frmModulo.query.SQL.Add(sCondicao);

    frmModulo.query.Open;

    Result := IsFloat(frmModulo.query.fieldbyname('Maior').AsString) + 1;

    frmModulo.query.Close;
    frmModulo.query.SQL.Clear;
    frmModulo.query.SQL.Add('Select * from SEQUENCIA');
    frmModulo.query.Open;
    frmModulo.query.Edit;
    frmModulo.query.fieldbyname('NUMERO').Value := FloatToStr(Result);
    frmModulo.query.Post;

  except

    Result := 0;

  end;

end;

procedure InicializaVariaveis;
begin
  if not Assigned(Imp) then
    Imp := TImpressao.Create;
end;

Function Repl(C: string; Tamanho: Integer): string;
var
  Conteudo: string;
  Contar: Integer;
begin
  Conteudo := '';
  for Contar := 1 to Tamanho do
  begin
    Conteudo := Conteudo + C;
    Application.ProcessMessages;
  end;
  Repl := Conteudo;
end;

Function CompletaStr(Conteudo, Caractere: string; Tamanho: Integer): string;
begin
  Result := Copy(Conteudo, 1, Tamanho) + Repl(Caractere,
    (Tamanho - length(Conteudo)));
end;

function Imp_Fecha_Gerencial(sPorta: string): string;
var
  I: Integer;
begin
  if frmPrincipal.TipoImpressora = NaoFiscal then
  begin
    InicializaVariaveis;
    Imp.Porta := sPorta;
    Imp.Concomitante := True;

    for I := 0 to Imp.LinhasFinal do
      Imp.Imprime(' ', []);

  end;

  Result := 'OK';

end;

procedure GravaINI(Arq, Secao, Ident, valor: String);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(Arq);
  Ini.WriteString(Secao, Ident, valor);
  Ini.Free;
end;

Function LerIni(Arq, Secao, Ident: String; Def: String): String;
var
  Ini: TIniFile;
begin

  Ini := TIniFile.Create(Arq);
  Result := Ini.ReadString(Secao, Ident, Def);
  Ini.Free;
end;

Function AcionaGuilhotinaNaoFiscal(sPorta, sModelo: string): Boolean;
Var
  txt: TextFile;
  sComando: string;
begin

  try
    // Comando para Acionar a Gaveta de Dinheiro
    AssignFile(txt, sPorta);
    Rewrite(txt);

    if UpperCase(sModelo) = 'PADRÃO' then // Padrao Bematech
      sComando := #27 + #109; // Corte Parcial {Total = #27 + #119}

    if UpperCase(sModelo) = 'BEMATECH' then
      sComando := #27 + #109; // Corte Parcial {Total = #27 + #119}

    if UpperCase(sModelo) = 'DARUMA' then
      sComando := #27 + #109; // Corte Parcial {Total = #27 + #119}

    Write(txt, sComando);
    CloseFile(txt);

  except

    Result := False;

  end;

end;

end.
