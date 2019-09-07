unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Buttons, Grids, DBGrids, ExtCtrls,
  ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, acbrutil, ZConnection, ACBrBoleto, ACBrBoletoFCFR, ACBrBase,
  Mask, frxClass, AdvGroupBox, AdvGlowButton, sSkinManager,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tprincipal = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    BoletoFR: TACBrBoletoFCFR;
    conexao: TZConnection;
    SqlConfig: TZQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    SqlBancos: TZQuery;
    Cliente: TZQuery;
    SqlAux: TZQuery;
    SqlContas: TZQuery;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    edtvenda: TEdit;
    BtnLocalizar: TBitBtn;
    BitBtn2: TBitBtn;
    bimprimir1: TBitBtn;
    bremessa1: TBitBtn;
    bretorno1: TBitBtn;
    bgerar1: TBitBtn;
    DtsConfig: TDataSource;
    DtsBanco: TDataSource;
    Dtscontas: TDataSource;
    OpenDialog1: TOpenDialog;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    SqlContascliente: TStringField;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    logo2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBNavigator2: TDBNavigator;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    GroupBox2: TGroupBox;
    ckbol: TCheckBox;
    SqlConfigID: TIntegerField;
    SqlConfigPATH_REMESSA: TWideStringField;
    SqlConfigPATH_RETORNO: TWideStringField;
    SqlConfigPATH_LOGOTIPO: TWideStringField;
    SqlConfigPATH_GERARPDF: TWideStringField;
    SqlConfigMENSAGEM: TWideStringField;
    SqlConfigDIAS_PROTESTO: TIntegerField;
    SqlConfigESPECIE: TWideStringField;
    SqlConfigMOEDA: TWideStringField;
    SqlConfigACEITE: TWideStringField;
    SqlConfigCARTEIRA: TWideStringField;
    SqlConfigLOCAL_PAGTO: TWideStringField;
    SqlConfigINSTRUCAO_1: TWideStringField;
    SqlConfigINSTRUCAO_2: TWideStringField;
    SqlConfigCONT_REMESSA: TIntegerField;
    SqlBancosID: TIntegerField;
    SqlBancosNUMERO_BANCO: TWideStringField;
    SqlBancosDIGITO_NUMERO_BANCO: TWideStringField;
    SqlBancosNOME_BANCO: TWideStringField;
    SqlBancosNOME_AGENCIA: TWideStringField;
    SqlBancosNUMERO_AGENCIA: TWideStringField;
    SqlBancosDIGITO_AGENCIA: TWideStringField;
    SqlBancosNUMERO_CONTA: TWideStringField;
    SqlBancosDIGITO_CONTA: TWideStringField;
    SqlBancosCIADE_AGENCIA: TWideStringField;
    SqlBancosUF_AGENCIA: TWideStringField;
    SqlBancosNOSSO_NUMERO: TIntegerField;
    SqlBancosCEDENTE: TWideStringField;
    SqlBancosCOD_CEDENTE: TWideStringField;
    SqlContasCODIGO: TWideStringField;
    SqlContasCODVENDA: TWideStringField;
    SqlContasCODVENDEDOR: TWideStringField;
    SqlContasCODCAIXA: TWideStringField;
    SqlContasCODCLIENTE: TWideStringField;
    SqlContasVALOR_ORIGINAL: TFloatField;
    SqlContasVALOR_PAGO: TFloatField;
    SqlContasVALOR_JUROS: TFloatField;
    SqlContasVALOR_ATUAL: TFloatField;
    SqlContasVALOR_DESCONTO: TFloatField;
    SqlContasDOCUMENTO: TWideStringField;
    SqlContasTIPO: TWideStringField;
    SqlContasSITUACAO: TIntegerField;
    SqlContasFILTRO: TIntegerField;
    SqlContasNOSSONUMERO: TWideStringField;
    SqlContasCODREGIAO: TWideStringField;
    SqlContasCODCEDENTE: TWideStringField;
    SqlContasP5: TFloatField;
    SqlContasP3: TFloatField;
    SqlContasNUMERO_CUPOM: TWideStringField;
    SqlContasVALOR_VENDA: TFloatField;
    SqlContasCOD_VENDA_ORIGINAL: TWideStringField;
    SqlContasVALOR_ATUAL_ANTERIOR: TFloatField;
    SqlContasINSTRUCAO: TWideStringField;
    SqlContasDIRBOLETO: TWideStringField;
    DataInicio: TDateTimePicker;
    DataFim: TDateTimePicker;
    frxReport1: TfrxReport;
    AdvGroupBox1: TAdvGroupBox;
    dcarne: TDBCheckBox;
    dfatura: TDBCheckBox;
    dpadrao: TDBCheckBox;
    SqlConfigLAYOUT1: TIntegerField;
    SqlConfigLAYOUT2: TIntegerField;
    SqlConfigLAYOUT3: TIntegerField;
    BitBtn11: TBitBtn;
    SqlContasEMAIL_ENVIADO: TIntegerField;
    SqlContasHISTORICO: TWideStringField;
    bgerar: TAdvGlowButton;
    bimprimir: TAdvGlowButton;
    bremessa: TAdvGlowButton;
    bretorno: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    BtnLocalizar111: TAdvGlowButton;
    BitBtn255: TAdvGlowButton;
    SqlContasDATA_EMISSAO: TDateField;
    SqlContasDATA_VENCIMENTO: TDateField;
    SqlContasDATA_PAGAMENTO: TDateField;
    Label1: TLabel;
    dblook: TDBLookupComboBox;
    logo1: TImage;
    procedure bimprimir1Click(Sender: TObject);
    procedure bremessa1Click(Sender: TObject);
    procedure bretorno1Click(Sender: TObject);
    procedure BtnLocalizarClick(Sender: TObject);
    procedure dblookClick(Sender: TObject);
    procedure bgerar1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn11Click(Sender: TObject);
    procedure AdvMetroButton3Click(Sender: TObject);
    procedure BtnLocalizar111Click(Sender: TObject);
    procedure BitBtn255Click(Sender: TObject);
   private
    { Private declarations }
  public
    { Public declarations }
      procedure ConfiguraComponenteAcBr;
      procedure boletoreimprime;
  end;

var
   xNossoNumero:string;
   xNossoNumerox:integer;
  principal: Tprincipal;

implementation

{$R *.dfm}

procedure Tprincipal.bimprimir1Click(Sender: TObject);
begin
if SqlContasNOSSONUMERO.AsString <> '' then
BEGIN
boletoreimprime;
END
ELSE
BEGIN
try
ACBrBoleto1.Imprimir;
except
MessageDlg('Erro ao imprimir os boletos. Verifique!',mtWarning,[mbOK],0);
end;
END;
end;

procedure Tprincipal.BitBtn11Click(Sender: TObject);
begin
close;
end;

procedure Tprincipal.BitBtn255Click(Sender: TObject);
begin
  BitBtn2.Click;
end;

procedure Tprincipal.bremessa1Click(Sender: TObject);
var ContadorRemessa : Integer;
begin
try // captura o contador de remessa e gera a mesma
  ContadorRemessa := SQLConfigCONT_REMESSA.AsInteger;
  Inc(ContadorRemessa);
  ACBrBoleto1.GerarRemessa(ContadorRemessa);
  // Atualiza a nosso numero no cadastro do banco
  SQLAux.Close;
  SQLAux.SQL.Clear;
  SQLAux.SQL.Add('update banco set banco.nosso_numero = :pNossoNum');
  SQLAux.SQL.Add('where banco.id = :pID');
  SQLAux.Params.ParamByName('pNossoNum').AsInteger := xNossoNumerox;
  SQLAux.Params.ParamByName('pID').AsInteger := sqlBancosID.AsInteger;
  SQLAux.ExecSQL();
  // Atualiza o contador de remesa na tabela de configuração
  SQLAux.Close;
  SQLAux.SQL.Clear;
  SQLAux.SQL.Add('update config set config.cont_remessa = :pContador');
  SQLAux.SQL.Add('where config.id = :pID');
  SQLAux.Params.ParamByName('pContador').AsInteger := ContadorRemessa;
  SQLAux.Params.ParamByName('pID').AsInteger := SQLConfigID.AsInteger;
  SQLAux.ExecSQL();
  except
  MessageDlg('Erro ao gerar arquivo de remessa. Verifique!',mtWarning,[mbOK],0);
  end;

end;

procedure Tprincipal.bretorno1Click(Sender: TObject);
var i : Integer;
begin
if OpenDialog1.Execute then
begin
 ConfiguraComponenteAcBr;
 ACBrBoleto1.NomeArqRetorno := ExtractFileName(opendialog1.FileName);
 ACBrBoleto1.LerRetorno;
 for i := 0 to ACBrBoleto1.ListadeBoletos.Count-1 do
 begin
 if ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido > 0.0 then
 begin
 // Grava a Quitação da conta
 SQLAux.Close;
 SQLAux.SQL.Clear;
 SQLAux.SQL.Add('update c000049 set');
 SQLAux.SQL.Add('DATA_PAGAMENTO = :pData,');
 SQLAux.SQL.Add('VALOR_PAGO = :pValor');
 SQLAux.SQL.Add('where NOSSONUMERO = :pNossoNum');
 SQLAux.Params.ParamByName('pData').AsDate := ACBrBoleto1.ListadeBoletos.Objects[i].DataBaixa;
 SQLAux.Params.ParamByName('pValor').AsFloat := ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido;
 SQLAux.Params.ParamByName('pNossoNum').AsInteger := StrToInt(ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero);
 SQLAux.ExecSQL();
   end;
  end;
 end;
end;

procedure Tprincipal.boletoreimprime;
var Titulo : TACBrTitulo;
begin
    if dblook.Text = '' then
    begin
    ShowMessage('Informe o banco Antes!');
    end
    else
    begin
    Titulo := ACBrBoleto1.CriarTituloNaLista;
    with Titulo do
    begin
    Vencimento := sqlContasDATA_VENCIMENTO.AsDateTime;
    DataDocumento := sqlContasDATA_EMISSAO.AsDateTime;
    NumeroDocumento := sqlContasDOCUMENTO.AsString;
    EspecieDoc := SQLConfigESPECIE.AsString;
    if SQLConfigACEITE.AsString = 'SIM' then
    Aceite := atSim
    else
    Aceite := atNao;
    DataProcessamento := Now;
    Carteira := SQLConfigCARTEIRA.AsString;
    NossoNumero := SQLContasNOSSONUMERO.AsString;
    ValorDocumento := sqlContasVALOR_ORIGINAL.AsFloat;
    SQLAux.Close;
    SQLAux.SQL.Clear;
    SQLAux.SQL.Add('select * from c000007');
    SQLAux.SQL.Add('where CODIGO ='+sqlContasCODCLIENTE.AsString);
    SQLAux.Open;
    Sacado.NomeSacado :=  SQLAux.FieldByName('nome').AsString;
    Sacado.CNPJCPF    :=  SQLAux.FieldByName('cpf').AsString;
    Sacado.Logradouro := SQLAux.FieldByName('endereco').AsString;
    Sacado.Numero     := SQLAux.FieldByName('numero').AsString;
    Sacado.Bairro     := SQLAux.FieldByName('bairro').AsString;
    Sacado.Cidade     := SQLAux.FieldByName('cidade').AsString;
    Sacado.UF         := SQLAux.FieldByName('uf').AsString;
    Sacado.CEP        := SQLAux.FieldByName('cep').AsString;
    ValorAbatimento   := 0;
    LocalPagamento    := SQLConfigLOCAL_PAGTO.AsString;
    ValorMoraJuros    := 0;
    ValorDesconto     := 0;
    ValorAbatimento   := 0;
    DataMoraJuros     := 0;
    DataDesconto      := 0;
    DataAbatimento    := 0;
    DataProtesto      := sqlContasDATA_VENCIMENTO.AsDateTime + SQLConfigDIAS_PROTESTO.AsInteger;
    PercentualMulta   := 0;
    Mensagem.Text     := SQLConfigMENSAGEM.AsString;
    OcorrenciaOriginal.Tipo := toRemessaBaixar;
//    Instrucao1        := padR(trim(SQLConfigINSTRUCAO_1.AsString),2,'0');
//    Instrucao2        := padR(trim(SQLConfigINSTRUCAO_2.AsString),2,'0');
    Instrucao1        := trim(SQLConfigINSTRUCAO_1.AsString);
    Instrucao2        := trim(SQLConfigINSTRUCAO_2.AsString);

    Parcela           := 1;
    ACBrBoleto1.ChecarDadosObrigatorios;
    ACBrBoleto1.Imprimir;
    ACBrBoleto1.ListadeBoletos.Clear;
   end;
end;
end;
procedure Tprincipal.ConfiguraComponenteAcBr;
begin
  if not SQLConfig.IsEmpty then
begin
 ACBrBoleto1.ACBrBoletoFC.DirLogo := SQLConfigPATH_LOGOTIPO.AsString;
 logo1.Picture.LoadFromFile(SQLConfigPATH_LOGOTIPO.AsString + DBEdit1.Text+'.bmp');
 logo2.Picture.LoadFromFile(SQLConfigPATH_LOGOTIPO.AsString + DBEdit1.Text+'.bmp');
 ACBrBoleto1.ACBrBoletoFC.Filtro := fiNenhum;

 if sqlconfig.FieldByName('layout1').AsInteger = 1 then
 begin
   ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
   BoletoFR.FastReportFile := ExtractFilePath(Application.ExeName) + '\boleto\impressao\Boleto.fr3';
 end;

 if sqlconfig.FieldByName('layout2').AsInteger = 2 then
 begin
 //  ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne;
 //  BoletoFR.FastReportFile         := ExtractFilePath(Application.ExeName) + '\boleto\impressao\BoletoCarne.fr3';
 end;

 if sqlconfig.FieldByName('layout3').AsInteger = 3 then
 begin
   ACBrBoleto1.ACBrBoletoFC.LayOut := lPadraoEntrega;
   BoletoFR.FastReportFile         := ExtractFilePath(Application.ExeName) + '\boleto\impressao\Boleto.fr3';
 end;

 ACBrBoleto1.DirArqRemessa         := SQLConfigPATH_REMESSA.AsString;
 ACBrBoleto1.NomeArqRemessa        := FormatDateTime('DDMMYYYYHHMMSS',Now)+'.TXT';
 ACBrBoleto1.Banco.Digito          := 9;
 ACBrBoleto1.Banco.Numero          := 001;
 case StrToInt(SQLBancosNUMERO_BANCO.AsString) of
            237 : ACBrBoleto1.Banco.TipoCobranca := cobBradesco;
            1   : ACBrBoleto1.Banco.TipoCobranca := cobBancoDoBrasil;
            341 : ACBrBoleto1.Banco.TipoCobranca := cobItau;
            104 : ACBrBoleto1.Banco.TipoCobranca := cobCaixaEconomica;
            748 : ACBrBoleto1.Banco.TipoCobranca := cobSicred;
         else
            ACBrBoleto1.Banco.TipoCobranca := cobNenhum;
    end;
// ACBrBoleto1.Cedente.Nome          := sqlBancosCEDENTE.AsString;
// ACBrBoleto1.Cedente.CaracTitulo   := tcSimples;
// ACBrBoleto1.Cedente.Convenio      :=IntToStrZero(sqlbancosCOD_CEDENTE.AsInteger,7);
// ACBrBoleto1.Cedente.CodigoCedente := sqlbancosNUMERO_CONTA.AsString +'-'+ sqlbancosDIGITO_CONTA.AsString;
// ACBrBoleto1.Cedente.Agencia       := sqlbancosNUMERO_AGENCIA.AsString;
// ACBrBoleto1.Cedente.AgenciaDigito := sqlbancosDIGITO_AGENCIA.AsString;
// ACBrBoleto1.Cedente.Conta         := sqlbancosNUMERO_CONTA.AsString;
// ACBrBoleto1.Cedente.ContaDigito   := sqlbancosDIGITO_CONTA.AsString;
// ACBrBoleto1.Cedente.UF            := sqlbancosUF_AGENCIA.AsString;
// ACBrBoleto1.Cedente.ResponEmissao := tbCliEmite;
// ACBrBoleto1.ChecarDadosObrigatorios;

 ACBrBoleto1.Cedente.Nome          := sqlBancosCEDENTE.AsString;
 ACBrBoleto1.Cedente.CaracTitulo   := tcSimples;
 ACBrBoleto1.Cedente.Convenio      :=IntToStrZero(sqlbancosCOD_CEDENTE.AsInteger,7);
// ACBrBoleto1.Cedente.CodigoCedente := sqlbancosNUMERO_CONTA.AsString +'-'+ sqlbancosDIGITO_CONTA.AsString;
 ACBrBoleto1.Cedente.CodigoCedente := IntToStrZero(sqlbancosCOD_CEDENTE.AsInteger,7);

 ACBrBoleto1.Cedente.Agencia       := sqlbancosNUMERO_AGENCIA.AsString;
 ACBrBoleto1.Cedente.AgenciaDigito := sqlbancosDIGITO_AGENCIA.AsString;
 ACBrBoleto1.Cedente.Conta         := sqlbancosNUMERO_CONTA.AsString;
 ACBrBoleto1.Cedente.ContaDigito   := sqlbancosDIGITO_CONTA.AsString;
 ACBrBoleto1.Cedente.UF            := sqlbancosUF_AGENCIA.AsString;
 ACBrBoleto1.Cedente.ResponEmissao := tbCliEmite;
 ACBrBoleto1.ChecarDadosObrigatorios;




end;
end;

procedure Tprincipal.BtnLocalizar111Click(Sender: TObject);
begin
  BtnLocalizar.Click;
end;

procedure Tprincipal.BtnLocalizarClick(Sender: TObject);
var  codvenda:string;
begin
// fecha os componentes de acesso a tabela
 if (edtvenda.text = '000000') or (edtvenda.text = '')  then codvenda := '' else codvenda := ' and CODVENDA = '''+edtvenda.text+'''';
 sqlcontas.Close;
 sqlcontas.Params.Clear;
 SQLContas.Close;
 SQLContas.SQL.Clear;
 // passa a SQL para captura das contas em aberto e sem emissão do boleto
 SQLContas.SQL.ADD('select * from c000049 WHERE DATA_EMISSAO >= :pDATAI AND DATA_EMISSAO <= :pDATAF '+codvenda);
 //SQLContas.SQL.Add('where codvenda = :pcodvenda');
 SQLContas.SQL.Add('and VALOR_ATUAL > 0.00');
 if ckbol.Checked = false then
 SQLContas.SQL.Add('and NOSSONUMERO is null')
 else
 SQLContas.SQL.Add('and NOSSONUMERO >  0.00');
 sqlcontas.Params.ParamByName('pDatai').AsDate := DataInicio.Date;
 sqlcontas.Params.ParamByName('pDataf').AsDate := DataFim.Date;



 // passa os paramentos de consulta para os componentes

// if DataInicio.EditText = '  /  /    '   then
// BEGIN
//   sqlcontas.Params.ParamByName('pDatai').AsDate := StrToDate('01/01/1911');
//   sqlcontas.Params.ParamByName('pDataf').AsDate := NOW;
// END
// ELSE
// begin
// sqlcontas.Params.ParamByName('pDatai').AsDate := DataInicio.Date;
// sqlcontas.Params.ParamByName('pDataf').AsDate := DataFim.Date;
// end;
// BEGIN
//
// END;
  sqlcontas.Open;
 // se não foram encontrado dados na consulta informa ao usuário
  if sqlcontas.IsEmpty then
  begin
  MessageDlg('Não foram encontradas contas no periodo informado!!!', mtInformation, [mbOK], 0);
  DataInicio.SetFocus;
  end
  else
  DBGrid1.SetFocus;
  bgerar.Enabled := True;

end;
procedure Tprincipal.dblookClick(Sender: TObject);
begin
  xNossoNumerox := sqlbancosNOSSO_NUMERO.AsInteger;
  ConfiguraComponenteAcBr;
  logo1.Visible := True;
end;





procedure Tprincipal.AdvMetroButton3Click(Sender: TObject);
begin
  close;
end;

procedure Tprincipal.bgerar1Click(Sender: TObject);
var Titulo : TACBrTitulo;
begin
    if dblook.Text = '' then
    begin
    ShowMessage('Informe o banco Antes!');
    end
    else
    begin
    
   if sqlContasNOSSONUMERO.IsNull then
   begin
    inc(xNossoNumerox);
    Titulo := ACBrBoleto1.CriarTituloNaLista;
    with Titulo do
    begin
    Vencimento := sqlContasDATA_VENCIMENTO.AsDateTime;
    DataDocumento := sqlContasDATA_EMISSAO.AsDateTime;
    NumeroDocumento := sqlContasDOCUMENTO.AsString;
    EspecieDoc := SQLConfigESPECIE.AsString;
    if SQLConfigACEITE.AsString = 'SIM' then
    Aceite := atSim
    else
    Aceite := atNao;
    DataProcessamento := Now;
    Carteira := SQLConfigCARTEIRA.AsString;
    NossoNumero := IntToStrZero(xNossoNumerox,10);
    ValorDocumento := sqlContasVALOR_ORIGINAL.AsFloat;
    SQLAux.Close;
    SQLAux.SQL.Clear;
    SQLAux.SQL.Add('select * from c000007');
    SQLAux.SQL.Add('where CODIGO ='+sqlContasCODCLIENTE.AsString);
    SQLAux.Open;
    Sacado.NomeSacado :=  SQLAux.FieldByName('nome').AsString;
    Sacado.CNPJCPF    :=  SQLAux.FieldByName('cpf').AsString;
    Sacado.Logradouro := SQLAux.FieldByName('endereco').AsString;
    Sacado.Numero     := SQLAux.FieldByName('numero').AsString;
    Sacado.Bairro     := SQLAux.FieldByName('bairro').AsString;
    Sacado.Cidade     := SQLAux.FieldByName('cidade').AsString;
    Sacado.UF         := SQLAux.FieldByName('uf').AsString;
    Sacado.CEP        := SQLAux.FieldByName('cep').AsString;
    ValorAbatimento   := 0;
    LocalPagamento    := SQLConfigLOCAL_PAGTO.AsString;
    ValorMoraJuros    := 0;
    ValorDesconto     := 0;
    ValorAbatimento   := 0;
    DataMoraJuros     := 0;
    DataDesconto      := 0;
    DataAbatimento    := 0;
    DataProtesto      := sqlContasDATA_VENCIMENTO.AsDateTime + SQLConfigDIAS_PROTESTO.AsInteger;
    PercentualMulta   := 0;
    Mensagem.Text     := SQLConfigMENSAGEM.AsString;
    OcorrenciaOriginal.Tipo := toRemessaBaixar;
//    Instrucao1        := padR(trim(SQLConfigINSTRUCAO_1.AsString),2,'0');
//    Instrucao2        := padR(trim(SQLConfigINSTRUCAO_2.AsString),2,'0');
    Instrucao1        := trim(SQLConfigINSTRUCAO_1.AsString);
    Instrucao2        := trim(SQLConfigINSTRUCAO_2.AsString);

    Parcela           := 1;
    ACBrBoleto1.ChecarDadosObrigatorios;
     ACBrBoleto1.Imprimir;
     end;
            // grava o nosso numero na conta
              SQLAux.Close;
              SQLAux.SQL.Clear;
              SQLAux.SQL.Add('update c000049 set NOSSONUMERO = :pNossoNum');
              SQLAux.SQL.Add('where CODIGO = :pIDConta');
              SQLAux.Params.ParamByName('pNossoNum').AsString := IntToStrZero(xNossoNumerox,10);
              SQLAux.Params.ParamByName('pIDCOnta').AsString := sqlContasCODIGO.AsString;
              SQLAux.ExecSQL();
               // Atualiza an consulta
              BtnLocalizarClick(Sender);
    end;
end;
end;

procedure Tprincipal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  begin

  with DBGrid1 do
  begin
    if (Dtscontas.DataSet.FieldByName('DATA_VENCIMENTO').AsDateTime < now) and (Dtscontas.DataSet.FieldByName('situacao').AsInteger = 1)then
    begin
      if (gdSelected in State) then
      begin
        Canvas.Brush.Color := clRed;
         Canvas.FillRect(Rect);
         DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end
      else
      begin
        Canvas.Font.Style := [fsBold];
        Canvas.Font.Color := clRed;
        Canvas.Brush.Color := clWhite;
        Canvas.FillRect(Rect);
        DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
    end;

  end;
end;
end.
