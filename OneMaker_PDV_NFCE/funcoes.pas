unit funcoes;

// Unit contendo biblioteca de funcoes diversas
interface

uses
  IniFiles,
  SysUtils,
  Dialogs,
  Forms,
  Windows,
  classes,
  db,
  libeay32,
  OpenSSLUtils,
  MD5;

type
  TAlinhamento = (taEsquerda, taDireita, taCentralizado);
  // tipos de alinhamentos
  // atualizar o totalizador geral
function atualiza_totalizador(svalor: string): boolean;
// comparar totalizador do paf com o do ecf
function compara_totalizador(): boolean;
// assinatura digital
procedure assinatura_digital(fNomearquivo: string);
// Novo ato cotepe 09/09
function GeraMD5Arquivo(pArquivo: String): String;
function ReadPrivateKey(AFileName: TFileName): pEVP_PKEY;
function Sign_RSA_MD5(privatekey, msg: string): string;
function TirarEAD(sArquivo: String): boolean;
// verificar se o ecf eh o mesmo registrado no sistema
function verifica_ecf(): boolean;
// retornar codigo da aliquota
function retorna_codigo_aliquota(aliquota: real): string;

// formata_data
function formata_data(data: string): TDateTime;
function formata_hora(hora: string): string;
// bloquear teclado
procedure BlockInput(ABlockInput: boolean); stdcall; external 'USER32.DLL';

function Retorna_aliquota(cst: string; aliquota: real;
  COD_ECF: Integer = 0): string;
procedure AcertaPadraoData;
function troca_data(sdata: string): string;
function somenteNumero(sNum: string): string;
// Codificacoes extendidas de sequenciais
function codifica_reducaoZ(): string;
function codifica_cupom(): string;
function codifica_item(item: Integer): string;
function codifica_forma(idForma: Integer): string;
function codifica_crediario(idPrestacao: Integer): string;
// Teclado GERTEC TEC 44 com display - DLL de comunicaÁ„o
function OpenTec44: Integer; stdcall; external 'Tec44Win.dll';
function CloseTec44: Integer; stdcall; external 'Tec44Win.dll';
function FormFeed: Integer; stdcall; external 'Tec44Win.dll';
function LineFeed: Integer; stdcall; external 'Tec44Win.dll';
function CarRet: Integer; stdcall; external 'Tec44Win.dll';
function GoToXY(lin, col: Integer): Integer; stdcall; external 'Tec44Win.dll';
function DispStr(Str: LPSTR): Integer; stdcall; external 'Tec44Win.dll';
// Final das Funcoes do teclado GERTEC

procedure Imprime_display_teclado(linha1, linha2: string);
function Executa_Login(usuario, senha: string; funcao: string): boolean;
// Autenticar o usuario
Function Cript(Action, Src: String): String;
// Criptografar e Descriptografar String
function Zerar(texto: string; qtde: Integer): string;
// Acrescentar Zeros a esquerda em uma String
function texto_justifica(texto: string; qtde_caracteres: Integer;
  caracter: string; Alinhamento: TAlinhamento): string; // Formatar Texto
function tiraacento(Str: String): String; // retirar acentos de uma string
function Tiraacento_display(Str: String): String;
// retirar acentos para o display do teclado
function UltimoDiaMes(Mdt: TDateTime): TDateTime;
// retorna o ultimo dia do mes de uma data

function LerParametro(psNome: String; psTipo: String;
  pvDefault: Variant): Variant;
procedure GravarParametro(psNome: String; psTipo: String; pvValor: Variant);
function RetornarParametroString(psTipo: String; pvValor: Variant): String;

implementation

uses modulo, unECF, principal, Constantes;

const
  // chave privada
  ChavePEM = '-----BEGIN RSA PRIVATE KEY-----' + #13#10 +
    'MIICXgIBAAKBgQDr4QpjSdFDQMO0o6Iyt5Oles1SOtctNh9zleJlEYEYa8Kji9kb' + #13#10
    + 'RiFtb38fJSWzR0L+olVpB8WLlpfwhFKHYvw1zeAyIhX0FrgqqAwRJUcRPJumu/cU' +
    #13#10 + 'd8e64RxD6JBJubSKwEmFqc2WA+Un365PksVvnvxme41qR8l6jSW8swH2zwIDAQAB'
    + #13#10 +
    'AoGBAJyll+N2S13RbebR4M6zsX7s/dwFLY9d6Sc2u+II7OXN8rXwEt+VBHAL4q1J' + #13#10
    + 'Wy8jPS+jmPsmaR+ZhA/7oF8+8mR2iF32kof73RzC6ogW+bBzkkCgMrHn8VrDeTZD' +
    #13#10 + 'g80/kHz8EsbWmHyGId4P3ZLvpvgFVnIQ7YWzjx3nScYtmwvpAkEA+TY2oHqOD2ra'
    + #13#10 +
    'TJOOx9CH85XTZoGKnmkp57Hy1J9ivlFi8ISkVb6xMdyD5UQUwJKecZUm4wnE8dt9' + #13#10
    + 'JslO5z1WzQJBAPJN20GDsOdEsvTLMpdUt+vy1ODM8xFIGtkfoRj2vRIp7UPo1kkm' +
    #13#10 + 'sQU3Vg/EwQ069ClQB64FZFt4tPwch9JELAsCQQDlsl9VOMB5W15L2HFwoDa+f+jy'
    + #13#10 +
    'gRG4AmwaXvzXlvSXQEJ2N3uUgIen0n1LMp4CBOG/BN9rwdRhq5FFz6RHJFU9AkBF' + #13#10
    + 'Y6Z2jJAMqs/U6pwCWnCRUWlFN2wkdtG5fCVWUNK0cO1RlUxIhpwLMl2jBmWCtG9X' +
    #13#10 + 'pWONol2rFFZAHKuIu50hAkEA3F8C59mYD1Vy5++FpLmYQ8jxULg39U7wfkfFM63l'
    + #13#10 + 'I2SDn42XT+HZZ5lzTKnBwZZrOx1L0HYht8OOUBVMdlkUVA==' + #13#10 +
    '-----END RSA PRIVATE KEY-----';

function TirarEAD(sArquivo: String): boolean;
var
  slArq: TStringList;
  i: Integer;
  Ead: String;
begin
  Result := True;
  try
    slArq := TStringList.Create;
    try
      slArq.LoadFromFile(sArquivo);
      i := slArq.count - 1; // ultima linha do arquivo
      if UpperCase(Copy(slArq[i], 1, 3)) = 'EAD' then
        slArq.delete(i); // deleta a ultima linha
      slArq.add(''); // adiciona uma quebra
      slArq.SaveToFile(sArquivo);
    finally
      FreeAndNil(slArq);
    end;
  except
    Result := False;
  end;
end;

function compara_totalizador(): boolean;
var
  svalor: string;
  aquivo_ini: TIniFile;
begin
  // homologacao do tef comentar esta funcao e sempre retornar TRUE

  // result := true;

  arquivo_ini := TIniFile.Create('.\cfg\Paf.ini');
  // TOTALIZADOR_GERAL
  svalor := Cript('D', arquivo_ini.ReadString('B9A7BF57',
    '68E560E56B85FD1365F90007205E93A4A0BE', ''));

  if sECF_Serial <>
    Trim(TrimLeft(TrimRight(Cript('D', arquivo_ini.ReadString('B9A7BF57',
    'D875EF1310639C', ''))))) then
  begin
    application.messagebox('N˙mero de sÈrie do ecf n„o confere!', 'Erro',
      mb_ok + mb_iconerror);
    arquivo_ini.Free;
    BlockInput(False);
    Result := False;
    exit;
  end;

  arquivo_ini.Free;

  // atualizar o totalizador geral do PAF com a do ECF
  REPEAT
    SMSG := cECF_Grande_Total(iECF_Modelo);
    iF SMSG = 'ERRO' then
    begin
      if application.messagebox
        (pwidechar('Erro ao verificar totalizador do ECF!' + #13 + 'Mensagem: '
        + SMSG + #13 + 'Deseja tentar outra vez?'), 'Erro',
        mb_yesno + mb_iconerror) = idno then
        break;

    end;
  UNTIL SMSG <> 'ERRO';

  if SMSG <> 'ERRO' then
  begin
    try
      if formatfloat('#############0.00', strtofloat(SMSG))
        = formatfloat('#############0.00', strtofloat(svalor)) then
        Result := True
      else
      begin

        BlockInput(False);
        application.messagebox
          ('O totalizador geral do ECF n„o confere com o valor armazenado!',
          'Erro', mb_ok + mb_iconerror);
        Result := False;

        { application.MessageBox(pansichar('O totalizador geral do ECF n„o confere com o valor armazenado no'+
          ' PAF-ECF!'+#13+
          'Valor armazenado: '+sValor+#13+
          'Valor no ECF: '+sMsg+#13+
          'O sistema verificar· alguns par‚metros de'+
          ' seguranÁa para fazer a sua recomposiÁ„o!'),'AtenÁ„o',mb_ok+
          MB_ICONWARNING);


          // verificar o CRZ, CRO e Venda Bruta da ultima reducao z do sistema com a da ecf!

          frmmodulo.query.close;
          frmmodulo.query.sql.clear;
          frmmodulo.query.sql.add('select crz, cro, venda_bruta');
          frmmodulo.query.sql.add('from reducaoz');
          frmmodulo.query.sql.add('where ecf = '''+sECF_Serial+''' and');
          frmmodulo.query.sql.add('data_movimento = (');
          frmmodulo.query.sql.add('  select max(data_movimento) from reducaoz');
          frmmodulo.query.sql.add('    where ecf = '''+secf_serial+''')');
          frmmodulo.query.open;

          sMsg := cECF_ReducaoZ_Contador_CRZ(iECF_Modelo);
          if frmModulo.query.FieldByName('crZ').asstring = sMsg then
          begin
          sMsg := cECF_ReducaoZ_Contador_CRO(iECF_Modelo);
          if frmModulo.query.fieldbyname('cro').asstring = sMsg then
          begin
          sMsg := cECF_ReducaoZ_Venda_Bruta(iECF_Modelo);
          if formatfloat('#######0.00',strtofloat(sMsg)) =
          formatfloat('#######0.00',frmModulo.query.fieldbyname('venda_bruta').asfloat) then
          begin
          sMsg := 'OK';
          end;
          end;


        }
      end;

      {

        if sMsg = 'OK' then
        begin
        // recompor o atualizador
        // atualizar o totalizador geral do PAF com a do ECF
        REPEAT
        SMSG := cECF_Grande_Total(iECF_Modelo);
        iF Smsg = 'ERRO' then
        begin
        if application.messagebox(pansichar('Erro ao verificar totalizador do ECF!'+#13+
        'Mensagem: '+sMsg+#13+
        'Deseja tentar outra vez?'),'Erro',mb_yesno+
        MB_ICONERROR) = idno then
        break;

        end
        else
        begin
        atualiza_totalizador(SMSG);
        end;
        UNTIL SmSG <> 'ERRO';

        if sMsg <> 'ERRO' then
        begin
        application.messagebox('AtualizaÁ„o do Totalizador feita com sucesso!','Aviso',
        mb_ok+MB_ICONINFORMATION);
        result := true;
        end
        else result := false;
        end
        else
        Result := false;

        end; }
    except
      Result := False;
    end;

  end
  else
    Result := False;

end;

function atualiza_totalizador(svalor: string): boolean;
var
  arquivo_ini: TIniFile;
begin
  TRY
    { frmmodulo.qrtotalizador.close;
      frmmodulo.qrtotalizador.SQL.clear;
      frmmodulo.qrtotalizador.SQL.add('select info28 from PAF where codigo = 1');
      frmmodulo.qrtotalizador.open;

      sValor := Cript('D',frmmodulo.qrtotalizador.fieldbyname('info28').ASSTRING);
      if sValor <> '' then
      valor := strtofloat(sValor)+valor;
    }
    if somenteNumero(svalor) <> '' then
    begin
      arquivo_ini := TIniFile.Create('.\cfg\Paf.ini');
      // TOTALIZADOR_GERAL
      arquivo_ini.WriteString('B9A7BF57',
        '68E560E56B85FD1365F90007205E93A4A0BE', Cript('C', svalor));
      arquivo_ini.Free;
    end;
    Result := True;
  EXCEPT
    Result := False;
  END;
end;

procedure assinatura_digital(fNomearquivo: string);
var
  strMD5: String;
  rsa: String;
  strList: TStringList;
  bContinua: boolean;
begin

  repeat

    try
      bContinua := True;
      // gerar arquivo com a chave PRIVADA
      strList := TStringList.Create;
      strList.Text := ChavePEM;
      strList.SaveToFile(ExtractFilePath(ParamStr(0)) + 'chave.pem');
      strList.Free;

      strList := TStringList.Create;
      strList.LoadFromFile(fNomearquivo);
      strList.SaveToFile(fNomearquivo);
      strMD5 := GeraMD5Arquivo(fNomearquivo);
      rsa := Sign_RSA_MD5(ExtractFilePath(ParamStr(0)) + 'chave.pem', strMD5);
      strList.add('EAD' + rsa);
      strList.SaveToFile(fNomearquivo);
      strList.Free;
      DeleteFile(pwidechar(ExtractFilePath(ParamStr(0)) + 'chave.pem'));

    except
      on E: Exception do
      begin
        if application.messagebox(pwidechar('Erro ao assinar o arquivo!' + #13 +
          'Mensagem: ' + E.Message + #13 + 'Deseja tentar outra vez?'), 'Erro',
          mb_yesno + mb_iconerror) = idYes then
          bContinua := False
        else
          bContinua := True;
      end;
    end;

  until bContinua;
end;

function ReadPrivateKey(AFileName: TFileName): pEVP_PKEY;
var
  keyfile: pBIO;
  a: pEVP_PKEY;
begin
  a := Nil;
  keyfile := BIO_new(BIO_s_file());
//  BIO_read_filename(keyfile, PAnsiChar(AFileName));
  Result := PEM_read_bio_PrivateKey(keyfile, a, nil, nil);
  BIO_free(keyfile);
  if Result = nil then
    raise Exception.Create('N„o foi possÌvel ler a chave privada. ' +
      GetErrorMessage);
end;

// FunÁ„o que assina...
// privatekey È o nome do arquivo que contem a chave privada.
// msg È o md5 modificado de acordo com o ato cotepe.
function Sign_RSA_MD5(privatekey, msg: string): string;
var
  Len: cardinal;
  inbuf, outbuf: array [0 .. 1023] of char;
  key: pEVP_PKEY;
begin
  AppStartup();
  key := ReadPrivateKey(privatekey);
  // Len := RSA_private_encrypt(length(msg), PAnsiChar(msg), outbuf, key.pkey.rsa,
  // RSA_NO_PADDING);
  BinToHex(outbuf, inbuf, Len);
  EVP_cleanup();
  inbuf[2 * Len] := #0;
  Result := StrPas(inbuf);
end;

// Gera o md5 de acordo com o ato cotepe.
// usei uma classe de terceiro para calcular o md5.
Function GeraMD5Arquivo(pArquivo: String): String;
Var
  Dig: TMD5Digest;
  i: Integer;
  inStr: String;
Begin
  Dig := MD5File(pArquivo);

  inStr := Chr(16);
  For i := 0 to 15 do
  begin
    inStr := inStr + Chr(Dig.v[i]);
  end;
  inStr := inStr + StringOfChar(#0, 128);
  inStr := Copy(inStr, 1, 128);

  Result := inStr;
End;

function retorna_codigo_aliquota(aliquota: real): string;
begin
  frmmodulo.tbAliquota.Open;
  if frmmodulo.tbAliquota.Locate('Aliquota', aliquota, [loCaseInsensitive]) then
    Result := frmmodulo.tbAliquota.fieldbyname('codigo').asstring
  else
    Result := 'N1'; // retorna nao tributado por default

end;

function verifica_ecf(): boolean;
begin
  repeat
    SMSG := Trim(TrimLeft(TrimRight(cECF_Numero_Serie(iECF_Modelo))));
    if SMSG = 'ERR0' then
    begin
      if application.messagebox
        (pwidechar('Erro ao verificar n˙mero de sÈrie no ECF!' + #13 +
        'Deseja tentar outra vez?'), 'Erro', mb_yesno + mb_iconerror) = idno
      then
      begin
        Result := False;
        break;
      end;
    end
    else
    begin
      if SMSG = sECF_Serial then
        Result := True
      else
      begin
        application.messagebox
          (pwidechar
          ('O n˙mero de sÈrio do ECF n„o confere com o registrado no PAF!' + #13
          + 'A funÁ„o n„o ser· executada!' + #13 + 'Mensagem Retornada do ECF: '
          + SMSG), 'Erro', mb_ok + mb_iconerror);
        Result := False;
      end;
    end;
  until SMSG <> 'ERRO';
end;

function formata_data(data: string): TDateTime;
begin
  if length(data) = 6 then
  begin
    data := Copy(data, 1, 2) + '/' + Copy(data, 3, 2) + '/20' +
      Copy(data, 5, 2);

  end
  else
  begin
    if length(data) = 8 then
    begin
      data := Copy(data, 1, 2) + '/' + Copy(data, 3, 2) + '/' +
        Copy(data, 5, 4);
    end;
  end;
  Result := strtodate(data);
end;

function formata_hora(hora: string): string;
begin

  if length(hora) = 4 then
  begin
    hora := Copy(hora, 1, 2) + ':' + Copy(hora, 3, 2) + ':00';

  end
  else
  begin
    if length(hora) = 6 then
    begin
      hora := Copy(hora, 1, 2) + ':' + Copy(hora, 3, 2) + ':' +
        Copy(hora, 5, 4);
    end;
  end;
  Result := hora;
end;

// -------------------------------------------------------------------------- //
function Retorna_aliquota(cst: string; aliquota: real;
  COD_ECF: Integer = 0): string;
begin
  // substituicao tributaria
  if (cst = '060') or (cst = '010') or (cst = '070') then
  begin
    if COD_ECF = EPSON then
      Result := 'F'
    else
      Result := 'FF';

  end
  else if (cst = '040') or (cst = '030') then
  begin
    if COD_ECF = EPSON then
      Result := 'I'
    else
      Result := 'II';

  end
  else if (cst = '041') or (cst = '050') or (cst = '051') or (cst = '090') then
  begin
    if COD_ECF = EPSON then
      Result := 'N'
    else
      Result := 'NN';

  end
  else
    Result := somenteNumero(formatfloat('00.00', aliquota));

end;

// -------------------------------------------------------------------------- //
procedure AcertaPadraoData;
const
  arrShortDayNames: array [1 .. 7] of string[3] = ('Dom', 'Seg', 'Ter', 'Qua',
    'Qui', 'Sex', 'Sab');
  arrLongDayNames: array [1 .. 7] of string[15] = ('Domingo', 'Segunda',
    'TerÁa', 'Quarta', 'Quinta', 'Sexta', 'S·bado');
  arrShortMonthNames: array [1 .. 12] of string[3] = ('Jan', 'Fev', 'Mar',
    'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez');
  arrLongMonthNames: array [1 .. 12] of string[15] = ('Janeiro', 'Fevereiro',
    'MarÁo', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro',
    'Novembro', 'Dezembro');
var
  ii: Integer;
begin
  //ShortDateFormat := 'dd/mm/yyyy';
  //DecimalSeparator := ',';
  //ThousandSeparator := '.';
  for ii := 1 to 7 do
  begin
    //ShortDayNames[ii] := arrShortDayNames[ii];
    //LongDayNames[ii] := arrLongDayNames[ii];
  end;
  for ii := 1 to 12 do
  begin
    //ShortMonthNames[ii] := arrShortMonthNames[ii];
    //LongMonthNames[ii] := arrLongMonthNames[ii];
  end;
end;

function troca_data(sdata: string): string;
begin
  sdata := somenteNumero(sdata);
  if length(sdata) = 6 then
    Result := Copy(sdata, 5, 2) + Copy(sdata, 3, 2) + Copy(sdata, 1, 2)
  else
    Result := Copy(sdata, 5, 4) + Copy(sdata, 3, 2) + Copy(sdata, 1, 2);
end;

function somenteNumero(sNum: string): string;
var
  s1, s2: string;
  i: Integer;
begin
  s1 := sNum;
  s2 := '';
  for i := 1 to length(s1) do
    if s1[i] in ['0' .. '9'] then
      s2 := s2 + s1[i];
  Result := s2;
end;

function codifica_reducaoZ(): string;
begin
  Result := Zerar(sECF_Serial, 20) + // numero de serie do ecf
    Zerar(sECF_Caixa, 3) + // numero do caixao do ecr
    Zerar(cECF_ReducaoZ_Contador_COO(iECF_Modelo), 12); // coo da reducao z
end;

function codifica_cupom(): string;
begin
  Result := Zerar(sECF_Serial, 20) + // numero de serie do ecf
    Zerar(sECF_Caixa, 3) + // numero do caixao do ecr
    Zerar(sNumero_Cupom, 12); // numero do cupom fiscal
end;

function codifica_item(item: Integer): string;
begin
  Result := Zerar(sECF_Serial, 20) + // numero de serie do ecf
    Zerar(sECF_Caixa, 3) + // numero do caixao do ecr
    Zerar(sNumero_Cupom, 12) + // numero do cupom fiscal
    Zerar(inttostr(item), 3); // numero do item
end;

function codifica_forma(idForma: Integer): string;
begin
  Result := Zerar(sECF_Serial, 20) + // numero de serie do ecf
    Zerar(sECF_Caixa, 3) + // numero do caixao do ecr
    Zerar(sNumero_Cupom, 12) + // numero do cupom fiscal
    Zerar(inttostr(idForma), 3); // numero do item
end;

function codifica_crediario(idPrestacao: Integer): string;
begin
  Result := Zerar(sECF_Serial, 20) + // numero de serie do ecf
    Zerar(sECF_Caixa, 3) + // numero do caixao do ecr
    Zerar(sNumero_Cupom, 12) + // numero do cupom fiscal
    Zerar(inttostr(idPrestacao), 3); // numero do item
end;

// Imprimir no display do teclado
procedure Imprime_display_teclado(linha1, linha2: string);
begin
  if iTeclado_Modelo = 1 then
  begin
    // Limpar o display
    FormFeed;
    // Mostra na linha 1 do display
    strpcopy(@men, Tiraacento_display(linha1));
    DispStr(@men);
    // Mostra na linha 2 do display
    LineFeed; // PrÛmixa linha
    CarRet; // comeÁo da linha
    strpcopy(@men, Tiraacento_display(linha2));
    DispStr(@men); // mostra no display
  end;
end;

function Executa_Login(usuario, senha: string; funcao: string): boolean;
var
  i: Integer;
begin
  Result := False;
  // usuario de gerencial para cancelamento de funcoes
  if usuario = 'DELPHOS' then
  begin

    for i := 1 to 9 do
    begin
      frmmodulo.query.close;
      frmmodulo.query.sql.clear;
      frmmodulo.query.sql.add('select * from adm');
      frmmodulo.query.sql.add('where info1 = ''' + usuario + '_' +
        inttostr(i) + '''');
      frmmodulo.query.sql.add('and info2 =''' + senha + '''');
      frmmodulo.query.Open;
      if frmmodulo.query.recordcount > 0 then
      begin
        Result := True;
        break;
      end;
    end;
  end
  else
  begin
    // usuario normal

    frmmodulo.query.close;
    frmmodulo.query.sql.clear;
    frmmodulo.query.sql.add('select * from adm');
    frmmodulo.query.sql.add('where codigo like ' + QuotedStr(usuario));
    frmmodulo.query.sql.add('and info2 = ''' + senha + '''');
    frmmodulo.query.Open;
    if frmmodulo.query.recordcount > 0 then
    begin
      if funcao = '001' then // entrada no sistema e troca de operador
      begin
        icodigo_Usuario := frmPrincipal.IsInteger
          (frmmodulo.query.fieldbyname('codigo').asstring);
        sNome_Operador := frmmodulo.query.fieldbyname('info1').asstring;
      end;
      Result := True;
      exit;
    end;

    frmmodulo.query.close;
    frmmodulo.query.sql.clear;
    frmmodulo.query.sql.add('select * from adm');
    frmmodulo.query.sql.add('where upper(info1) like ' + QuotedStr(usuario));
    frmmodulo.query.sql.add('and info2 = ''' + senha + '''');
    frmmodulo.query.Open;
    if frmmodulo.query.recordcount > 0 then
    begin
      if funcao = '001' then // entrada no sistema e troca de operador
      begin
        icodigo_Usuario := frmPrincipal.IsInteger
          (frmmodulo.query.fieldbyname('codigo').asstring);
        sNome_Operador := frmmodulo.query.fieldbyname('info1').asstring;
      end;
      Result := True;
    end;

  end;
end;

Function Cript(Action, Src: String): String;
Label Fim;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, key: String;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  if (Src = '') Then
  begin
    Result := '';
    Goto Fim;
  end;
  key := 'YUQL23K1PIUF90AERVNNMKH02NMIHJ12042 E18XM01HIBQAS150AVDOUYQA90UD1APSA12POIENC1K3210N0419RTIKJ';

  Dest := '';
  KeyLen := length(key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to length(Src) do
    begin
      application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + Copy(Src, 1, 2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + Copy(Src, SrcPos, 2));
      if (KeyPos < KeyLen) Then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= length(Src));
  end;
  Result := Dest;
Fim:
END;

function Zerar(texto: string; qtde: Integer): string;
begin
  while length(texto) < qtde do
    texto := '0' + texto;
  Result := texto;
end;

function texto_justifica(texto: string; qtde_caracteres: Integer;
  caracter: string; Alinhamento: TAlinhamento): string;
begin
  texto := tiraacento(texto);
  if Alinhamento = taDireita then
  begin
    while length(texto) < qtde_caracteres do
      texto := caracter + texto;
    while length(texto) > qtde_caracteres do
      delete(texto, (qtde_caracteres + 1), 1);
  end;
  if Alinhamento = taEsquerda then
  begin
    while length(texto) < qtde_caracteres do
      texto := texto + caracter;
    while length(texto) > qtde_caracteres do
      delete(texto, (qtde_caracteres + 1), 1);
  end;
  if Alinhamento = taCentralizado then
  begin
    if (qtde_caracteres mod 2) <> 0 then
      qtde_caracteres := qtde_caracteres - 1;
    while length(texto) < qtde_caracteres do
      texto := caracter + texto + caracter;
    while length(texto) > qtde_caracteres do
      delete(texto, (qtde_caracteres + 1), 1);
  end;
  Result := texto;
end;

function tiraacento(Str: String): String;
var
  i: Integer;
begin
  for i := 1 to length(Str) do
    case Str[i] of
      'Ë':
        Str[i] := 'e';
      'Ï':
        Str[i] := 'i';
      '˘':
        Str[i] := 'u';
      'Ó':
        Str[i] := 'i';
      '˚':
        Str[i] := 'u';
      '·':
        Str[i] := '†'; //
      'È':
        Str[i] := 'Ç'; //
      'Ì':
        Str[i] := '°'; //
      'Û':
        Str[i] := '¢'; //
      '˙':
        Str[i] := '£'; //
      '‡':
        Str[i] := 'Ö'; //
      'Ú':
        Str[i] := 'ï'; //
      '‚':
        Str[i] := 'É'; //
      'Í':
        Str[i] := 'à'; //
      'Ù':
        Str[i] := 'ì'; //
      '‰':
        Str[i] := 'Ñ'; //
      'Î':
        Str[i] := 'â'; //
      'Ô':
        Str[i] := 'ã'; //
      'ˆ':
        Str[i] := 'î'; //
      '¸':
        Str[i] := 'Å'; //
      '„':
        Str[i] := 'Ü'; //
      'ı':
        Str[i] := 'o';
      'Ò':
        Str[i] := '§'; //
      'Á':
        Str[i] := 'á'; //
      '¡':
        Str[i] := 'A';
      '…':
        Str[i] := 'ê'; //
      'Õ':
        Str[i] := 'I';
      '”':
        Str[i] := 'O';
      '⁄':
        Str[i] := 'U';
      '¿':
        Str[i] := 'A';
      '»':
        Str[i] := 'E';
      'Ã':
        Str[i] := 'I';
      '“':
        Str[i] := 'O';
      'Ÿ':
        Str[i] := 'U';
      '¬':
        Str[i] := 'è';
      ' ':
        Str[i] := 'E';
      'Œ':
        Str[i] := 'I';
      '‘':
        Str[i] := 'O';
      '€':
        Str[i] := 'U';
      'ƒ':
        Str[i] := 'A';
      'À':
        Str[i] := 'E';
      'œ':
        Str[i] := 'I';
      '÷':
        Str[i] := 'O';
      '‹':
        Str[i] := 'ö'; //
      '√':
        Str[i] := 'A';
      '’':
        Str[i] := 'O';
      '—':
        Str[i] := '•'; //
      '«':
        Str[i] := 'Ä'; //
      '™':
        Str[i] := '¶'; //
      '∫':
        Str[i] := 'ß'; //
    end;
  Result := Str;
end;

// -------------------------------------------------------------------------- //
function Tiraacento_display(Str: String): String;
var
  i: Integer;
begin
  for i := 1 to length(Str) do
    case Str[i] of
      'Ë':
        Str[i] := 'e';
      'Ï':
        Str[i] := 'i';
      '˘':
        Str[i] := 'u';
      'Ó':
        Str[i] := 'i';
      '˚':
        Str[i] := 'u';
      '·':
        Str[i] := 'a'; //
      'È':
        Str[i] := 'e'; //
      'Ì':
        Str[i] := 'i'; //
      'Û':
        Str[i] := 'o'; //
      '˙':
        Str[i] := 'u'; //
      '‡':
        Str[i] := 'a'; //
      'Ú':
        Str[i] := 'o'; //
      '‚':
        Str[i] := 'a'; //
      'Í':
        Str[i] := 'e'; //
      'Ù':
        Str[i] := 'o'; //
      '‰':
        Str[i] := 'a'; //
      'Î':
        Str[i] := 'e'; //
      'Ô':
        Str[i] := 'i'; //
      'ˆ':
        Str[i] := 'o'; //
      '¸':
        Str[i] := 'u'; //
      '„':
        Str[i] := 'a'; //
      'ı':
        Str[i] := 'o';
      'Ò':
        Str[i] := 'n'; //
      'Á':
        Str[i] := 'c'; //
      '¡':
        Str[i] := 'A';
      '…':
        Str[i] := 'E'; //
      'Õ':
        Str[i] := 'I';
      '”':
        Str[i] := 'O';
      '⁄':
        Str[i] := 'U';
      '¿':
        Str[i] := 'A';
      '»':
        Str[i] := 'E';
      'Ã':
        Str[i] := 'I';
      '“':
        Str[i] := 'O';
      'Ÿ':
        Str[i] := 'U';
      '¬':
        Str[i] := 'A';
      ' ':
        Str[i] := 'E';
      'Œ':
        Str[i] := 'I';
      '‘':
        Str[i] := 'O';
      '€':
        Str[i] := 'U';
      'ƒ':
        Str[i] := 'A';
      'À':
        Str[i] := 'E';
      'œ':
        Str[i] := 'I';
      '÷':
        Str[i] := 'O';
      '‹':
        Str[i] := 'U'; //
      '√':
        Str[i] := 'A';
      '’':
        Str[i] := 'O';
      '—':
        Str[i] := 'N'; //
      '«':
        Str[i] := 'C'; //
      '™':
        Str[i] := 'a'; //
      '∫':
        Str[i] := 'o'; //
    end;
  Result := Str;
end;

function UltimoDiaMes(Mdt: TDateTime): TDateTime;
{ retorna o ultimo dia o mes, de uma data fornecida }
var
  ano, mes, dia: word;
  mDtTemp: TDateTime;
begin
  Decodedate(Mdt, ano, mes, dia);
  mDtTemp := (Mdt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;
end;

// -------------------------------------------------------------------------- //
// GUIO: Faz a leitura uma informaÁ„o na tabela CONFIG
function LerParametro(psNome: String; psTipo: String;
  pvDefault: Variant): Variant;
var
  svalor: String;

begin
  with frmmodulo.query do
  begin
    try
      if Active then
        close;

      sql.Text := 'Select PARNOM, PARVAL, PARTIP FROM CONFIG WHERE PARNOM = ' +
        QuotedStr(psNome);

      Open;

      if IsEmpty then
      begin
        svalor := RetornarParametroString(psTipo, pvDefault);

        GravarParametro(psNome, psTipo, svalor);
        Result := LerParametro(psNome, psTipo, pvDefault);
      end
      else
      begin
        try
          if UpperCase(psTipo) = 'C' then
            Result := fieldbyname('PARVAL').asstring
          else if (UpperCase(psTipo) = 'N') then
            Result := strtofloat(fieldbyname('PARVAL').asstring)
          else if (UpperCase(psTipo) = 'D') then
            Result := strtodate(fieldbyname('PARVAL').asstring)
          else if (UpperCase(psTipo) = 'I') then
            Result := StrToInt(fieldbyname('PARVAL').asstring)
          else if (UpperCase(psTipo) = 'B') then
            Result := (fieldbyname('PARVAL').asstring = '1')
          else
            Result := fieldbyname('PARVAL').asstring;
        except
          application.messagebox
            ('Erro de leitura de par‚metro da funÁ„o LerParametro()', 'Erro',
            mb_ok + mb_iconerror);

          Abort;
        end;
      end;
    finally
      close;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// GUIO: Grava uma informaÁ„o na tabela CONFIG
procedure GravarParametro(psNome: String; psTipo: String; pvValor: Variant);
var
  svalor: String;

begin
  svalor := RetornarParametroString(psTipo, pvValor);

  with frmmodulo.query do
  begin
    try
      if Active then
        close;

      sql.Text := 'Select PARNOM, PARVAL, PARTIP FROM CONFIG WHERE PARNOM = ' +
        QuotedStr(psNome);
      Open;

      if IsEmpty then
      begin
        close;
        sql.Text :=
          'INSERT INTO CONFIG (CODIGO, PARNOM, PARVAL, PARTIP) VALUES (1, ' +
          QuotedStr(psNome) + ', ' + QuotedStr(svalor) + ', ' +
          QuotedStr(psTipo) + ')';

        if not Prepared then
          Prepare;

        ExecSQL;
      end
      else
      begin
        close;
        sql.Text := 'UPDATE CONFIG SET ' + ' PARVAL = ' + QuotedStr(svalor) +
          ', ' + ' PARTIP = ' + QuotedStr(psTipo) + ' WHERE PARNOM = ' +
          QuotedStr(psNome);

        if not Prepared then
          Prepare;

        ExecSQL;
      end;
    finally
      close;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// GUIO: Retornar o valor passado em forma de string para poder ser armazenado
function RetornarParametroString(psTipo: String; pvValor: Variant): String;
begin
  if UpperCase(psTipo) = 'C' then
    Result := pvValor
  else if (UpperCase(psTipo) = 'N') then
  begin
    try
      Result := FloatToStr(pvValor);
    except
      Result := '0.00';
    end;
  end
  else if (UpperCase(psTipo) = 'D') then
  begin
    try
      Result := DateToStr(pvValor);
    except
      Result := DateToStr(Date);
    end
  end
  else if (UpperCase(psTipo) = 'I') then
  begin
    try
      Result := inttostr(pvValor);
    except
      Result := '0';
    end;
  end
  else if (UpperCase(psTipo) = 'B') then
  begin
    try
      if pvValor then
        Result := '1' // 0 - Falso, 1 - Verdadeiro.  D„„mmm!!!
      else
        Result := '0';

    except
      Result := '0';

    end;
  end
  else
    Result := '';

end;

end.


