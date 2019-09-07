(*
  |==============================================================================|
  |  Classe Terminal Extendida da Classe TTerminalCustom para uso normal         |
  |==============================================================================|
*)
unit UTerminal;

interface

uses
  ExtCtrls, SysUtils, ScktComp, Classes, DB, ADODB, UTerminalCustom;

type
  PListaItem = ^TListaItem;

  TListaItem = record
    Codigo: Integer;
    Descricao: string;
    Selecionado: Boolean;
  end;

  TTerminal = class(TTerminalCustom)
  private
    qryConsulta: TADOQuery;
    qryExecutar: TADOCommand;
    dtsDataSet: TADODataSet;
    dtsLista: TADODataSet;
    FConexao: TADOConnection;

    // ARMAZENAR ESTADO QUANDO USADO ALGUMA FUNCAO
    FEstadoCache: Integer;
    FEstadoListaPosterior: Integer;

    // LISTA DE OPCOES
    FListaCaracter: Char;
    FListaCaracterTexto: string;
    FListaOpcao: TList;
    FListaTitulo: string;
    FListaRodape: string;
    FListaMax: Integer;

    // PROPRIEDADES
    FOperadorCodigo   : Integer;
    FOperadorNome     : String;
    FListaSelecionada : Boolean;

    FComandaCodigo    : Integer;
    FComandaDescricao : string;

    FVendaCodigo      : Integer;
    FVendaItemCodigo  : Integer;

    FMesaCodigo       : Integer;
    FMesaDescricao    : string;

    FProdutoCodigo    : string;
    FProdutoDescricao : string;
    FProdutoValor     : Real;
    Fcancelado : Integer;
    FprodutoTotal : Real;
    FProdutoQtd       : Real;
    FProdutoPeso      : Boolean;
    FComplementoCodigo: Integer;

    // LISTA DE OPCOES - DEFAULT
    procedure ListaLimpar;
    procedure ListaSQL(sSQL: string);
    procedure ListaMontar(iSentido: Integer);
    procedure ListaMover(iSentido: Integer); // 1-BAIXO 2-CIMA
    procedure ListaExibir;
    function  ListaRetorno(var iCodigo: Integer): Boolean;

    // LISTA DE OPCOES PERSONALIZADAS
    procedure ListaOperador;

    // BANCO DE DADOS
    procedure SetConexao(const Value: TADOConnection);
    procedure DBFechar;

    // CONSULTA PADRAO
    function Pesquisa(sSQL: string): Boolean;

    function OperadorPesquisa(Codigo: string): Boolean;
    function ComandaPesquisa(Codigo: string): Boolean;
    function MesaPesquisa(Codigo: string): Boolean;
    function MesaPesquisaVenda(Codigo: string): Boolean;
    function VendaPesquisar(sComanda: string): Boolean;
    function VendaItemPesquisar(sVenda, sProduto: string): Boolean;
    function VendaInserir(iCodComanda, iCodMesa: Integer): Integer;
    function VendaItemInserir(icodigo, iCodVenda:Integer; iCodProduto: string; rQtd, rPreco, rTotal: Real; rCancelado:Integer): Boolean;
    function VendaFechar(iCodComanda, iCodMesa: Integer): Boolean;
    function ProdutoPesquisa(Codigo: string): Boolean;
    function TerminalPesquisa(IP: string): Boolean;
    function ComplementoPesquisa(Codigo: string): Boolean;

    procedure VendaItemImprimir(iCodigo: Integer);

    function StringCompletar(sTexto: string; bEsquerda: Boolean; iTamanho: Integer): string;

  protected
    procedure OnCreare; override;
  public
    constructor Create(sckSocket: TCustomWinSocket); override;
    destructor Destroy; override;

    procedure Processar; override;
  published
    property Conexao: TADOConnection read FConexao write SetConexao;

    property ListaCaracter : Char read FListaCaracter write FListaCaracter;
    property ListaCaracterTexto: string read FListaCaracterTexto write FListaCaracterTexto;
  end;

const // CONSTANTES PARA O ESTADO DO TERMINAL
  _ESTADO_OPERADOR          = _ESTADO_INICIAL;
  _ESTADO_COMANDA           = 200;
  _ESTADO_MESA              = 300;
  _ESTADO_COMPLEMENTO       = 340;
  _ESTADO_PRODUTO           = 400;

  _ESTADO_LISTA             = 800;
  _ESTADO_LISTA_OPERADOR    = 1200;
  _ESTADO_LISTA_COMANDA     = 1300;
  _ESTADO_LISTA_MESA        = 1400;
  _ESTADO_LISTA_PRODUTO     = 1500;
  _ESTADO_LISTA_COMPLEMENTO = 1600;

  _ESTADO_NAO_CADASTRADO    = 9000;

  _DELAY                    = 1;

implementation

{ TTerminal }

constructor TTerminal.Create(sckSocket: TCustomWinSocket);
begin
  // LISTA - CARACTER DE ACESSO
  FormatSettings.DecimalSeparator    := '.';

  qryConsulta         := TADOQuery.Create(nil);
  qryExecutar         := TADOCommand.Create(nil);
  dtsDataSet          := TADODataSet.Create(nil);
  dtsLista            := TADODataSet.Create(nil);

  FListaOpcao         := TList.Create;
  FListaMax           := 6; // MAXIMO DE REGISTROS DA LISTA

  Self.DisplayTipo    := DisplayTipo;

  inherited;
end;

function tbStrZero(const I: integer; const Casas: byte): string;
var
Ch: Char;
begin
Result := IntToStr(I);
if Length(Result) > Casas then
begin
Ch := '*';
Result := '';
end
else Ch := '0';
while Length(Result) < Casas do Result := Ch + Result;
end;

procedure TTerminal.DBFechar;
  procedure Fechar(DataSet: TDataSet);
  begin
    if DataSet.Active then
      DataSet.Close;
  end;
begin
  Fechar(qryConsulta);
  Fechar(dtsDataSet);
end;

destructor TTerminal.Destroy;
begin
  if qryConsulta.Active then
    qryConsulta.Close;

  qryConsulta.Destroy;
  qryConsulta := nil;

  qryExecutar.Destroy;
  qryExecutar := nil;

  if dtsDataSet.Active then
    dtsDataSet.Close;

  dtsDataSet.Destroy;
  dtsDataSet := nil;

  if dtsLista.Active then
    dtsLista.Close;

  dtsLista.Destroy;
  dtsLista := nil;

  inherited;
end;

procedure TTerminal.ListaExibir;
var
  i: Integer;
  sMascara: string;
begin
  DisplayLimpar;

  DisplayPosicionar(1, 1);
  DisplayEnviar(FListaTitulo);
  DisplayPosicionar(8, 1);
  DisplayEnviar(FListaRodape);

  for i := 0 to FListaOpcao.Count - 1 do
  begin
    DisplayPosicionar(i + 2, 1);
    sMascara := '0000 - ';
    if PListaItem(FListaOpcao.Items[i])^.Selecionado then
      sMascara := '>' + sMascara;

    DisplayEnviar(FormatFloat(sMascara, PListaItem(FListaOpcao.Items[i])^.Codigo) +
                  Copy(PListaItem(FListaOpcao.Items[i])^.Descricao, 1, 20 - Length(sMascara))
                 );
  end;
end;

procedure TTerminal.ListaLimpar;
var
  i: Integer;
begin
  with FListaOpcao do
  begin
    for i := Count - 1 downto 0 do
    begin
      if Items[i] <> nil then
        Dispose(Items[i]);
      Delete(i);
    end;
  end;
end;

procedure TTerminal.ListaMontar(iSentido: Integer);
var
  i: Integer;
  Reg: PListaItem;
begin
  ListaLimpar;

  for i := 0 to FListaMax - 1 do
  begin
    if dtsLista.Eof then
      Break;

    New(Reg);
    Reg.Codigo      := dtsLista.FieldByName('Codigo').AsInteger;
    Reg.Descricao   := dtsLista.FieldByName('Descricao').AsString;
    Reg.Selecionado := False;

    FListaOpcao.Add(Reg);

    dtsLista.Next;
  end;

  if FListaOpcao.Count > 0 then
  begin
    case iSentido of
      1: PListaItem(FListaOpcao.Items[0])^.Selecionado := True;
      2: PListaItem(FListaOpcao.Items[FListaOpcao.Count - 1])^.Selecionado := True;
    end;
  end;
end;

procedure TTerminal.ListaMover(iSentido: Integer);
var
  i, j: Integer;
begin
  DisplayPosicionar(1, 1);
  DisplayEnviar(FListaTitulo);
  DisplayPosicionar(8, 1);
  DisplayEnviar(FListaRodape);

  with FListaOpcao do
  begin
    for i := 0 to Count - 1 do
    begin
      if PListaItem(Items[i])^.Selecionado then
      begin
        case iSentido of
          1: // BAIXO
          begin
            if i = Count - 1 then
            begin
              if Count = FListaMax then
                ListaMontar(iSentido);
            end
            else
            begin
              PListaItem(Items[i])^.Selecionado     := False;
              PListaItem(Items[i + 1])^.Selecionado := True;
            end;
          end;

          2: // CIMA
          begin
            if i = 0 then
            begin
              if dtsLista.RecNo > FListaMax + 1 then
              begin
                for j := 0 to FListaMax + 1 do
                begin
                  if dtsLista.Bof then
                    break;
                  dtsLista.Prior;
                end;

                ListaMontar(iSentido);
              end;
            end
            else
            begin
              PListaItem(Items[i])^.Selecionado     := False;
              PListaItem(Items[i - 1])^.Selecionado := True;
            end;
          end;
        end;

        break;
      end;
    end;

    ListaExibir;

  end;
end;

procedure TTerminal.ListaOperador;
begin

end;

function TTerminal.ListaRetorno(var iCodigo: Integer): Boolean;
var
  i: Integer;
begin
  iCodigo := -1;
  Result := False;

  for i := 0 to FListaOpcao.Count - 1 do
  begin
    with PListaItem(FListaOpcao.Items[i])^ do
    begin
      Result := Selecionado;

      if Result then
      begin
        iCodigo := Codigo;
        break;
      end;
    end;
  end;
end;

procedure TTerminal.ListaSQL(sSQL: string);
begin
  with dtsLista do
  begin
    if Active then
      Close;

    CommandText := sSQL;

    Open;
  end;
end;

function TTerminal.Pesquisa(sSQL: string): Boolean;
begin
  Result := False;

  with qryConsulta do
  begin
    try
      if Connection = nil then
        Exit;

      if Active then
        Close;

      SQL.Clear;
      SQL.Add(sSQL);
      Open;

      Result := not IsEmpty;
    except
      Result := False;
    end;
  end;
end;

procedure TTerminal.Processar;
var
  sMesaCodigo : string;
  iAux        : Integer;
begin
  inherited;

  if not TerminalPesquisa(FIP) then
    Estado := _ESTADO_NAO_CADASTRADO;

  case Estado of
    _ESTADO_NAO_CADASTRADO :
    begin
      DisplayLimpar;
      DisplayPosicionar(1, 1);
      DisplayEnviar('TERMINAL NAO');
      DisplayPosicionar(2, 1);
      DisplayEnviar('CADASTRADO');
    end;

    _ESTADO_ESPERA: // ESPERA O TEMPO DO DELAY EM SEGUNDOS OU QUALQUER TECLA
      begin
        Sleep(Delay * 1000);

        Teclado := '';
        Tecla := #0;

        Estado := EstadoProx;
        EstadoProx := 0;

        Processar;
        Exit;
      end;

    _ESTADO_LISTA:
    begin
      FListaSelecionada := False;
      FListaRodape := 'EN-SEL | DEL-SAIR';
      ListaExibir;
      Estado := _ESTADO_LISTA + 1;
    end;

    _ESTADO_LISTA + 1:
    begin
      if TeclaTratar then
        begin
          if (Teclado = F2) and (Tecla = #0) then
          begin
            ListaMover(1);
            Estado := _ESTADO_LISTA + 1;
          end
          else if (Teclado = F3) and (Tecla = #0) then
          begin
            ListaMover(2);
            Estado := _ESTADO_LISTA + 1;
          end
          else if (Tecla = #$D) then
          begin
            if ListaRetorno(iAux) then
            begin
              FListaSelecionada := True;
              dtsLista.Close;

              Teclado := IntToStr(iAux);
              Estado  := FEstadoListaPosterior;
            end
            else
            begin
              Estado  := FEstadoCache;
            end;

            FEstadoCache := -1;
          end
          else if (Teclado = DEL) then
          begin
            Estado := FEstadoCache;
          end;

          Tecla := #0;
        end;
    end;

    _ESTADO_LISTA_OPERADOR:
    begin
      FListaTitulo := '..:: OPERADORES ::..';


      ListaSQL(' select * from operador where Ativa = 1 ');
      ListaMontar(1);

      Estado                := _ESTADO_LISTA;
      FEstadoListaPosterior := _ESTADO_OPERADOR + 1;
      FEstadoCache          := _ESTADO_OPERADOR;
      Processar;
    end;


    _ESTADO_LISTA_COMANDA:
    begin
      FListaTitulo := '..:: COMANDAS ::..';

      ListaSQL(' select * from mt_comanda where ativa = 1 ');
      ListaMontar(1);

      Estado                := _ESTADO_LISTA;
      FEstadoListaPosterior := _ESTADO_COMANDA + 1;
      FEstadoCache          := _ESTADO_COMANDA;
      Processar;
    end;

    _ESTADO_LISTA_MESA:
    begin
      FListaTitulo := '..:: MESAS ::..';

      ListaSQL(' select * from mt_mesa where ativa = 1 ');
      ListaMontar(1);

      Estado                := _ESTADO_LISTA;
      FEstadoListaPosterior := _ESTADO_MESA + 1;
      FEstadoCache          := _ESTADO_MESA;
      Processar;
    end;

    _ESTADO_LISTA_PRODUTO:
    begin
      FListaTitulo := '..:: PRODUTOS ::..';

      ListaSQL(' select * from produto where ativa = 0 ');
      ListaMontar(1);

      Estado                := _ESTADO_LISTA;
      FEstadoListaPosterior := _ESTADO_PRODUTO + 1;
      FEstadoCache          := _ESTADO_PRODUTO;
      Processar;
    end;

    _ESTADO_LISTA_COMPLEMENTO:
    begin
      FListaTitulo := '.:: COMPLEMENTO ::.';

      ListaSQL(' select * from mt_complemento where ativa = 1 ');
      ListaMontar(1);

      Estado                := _ESTADO_LISTA;
      FEstadoListaPosterior := _ESTADO_COMPLEMENTO + 1;
      FEstadoCache          := _ESTADO_COMPLEMENTO;

      FComandaCodigo := 0;

      Processar;
    end;

    _ESTADO_OPERADOR: // PEDIR OPERADOR
      begin
        DisplayLimpar;

        case DisplayTipo of
          dt20x2, dt20x4, dt40x2: DisplayEnviar('OPERADOR : ');
          dt20x8: DisplayEnviar('OPERADOR (' + FListaCaracterTexto + ') : ');
        end;

        TeclaReceber('****');
        EstadoProx := 0;
        Estado := _ESTADO_OPERADOR + 1;

        Teclado := '';

        FOperadorCodigo := 0;
        FOperadorNome := '';
        FListaSelecionada := False;
        FComandaCodigo := 0;
        FComandaDescricao := '';
        FMesaCodigo := 0;
        FMesaDescricao := '';

        FProdutoCodigo := '0';
        FProdutoDescricao := '';
        FProdutoValor := 0;
        FProdutoQtd := 0;
        FprodutoTotal := 0;

        FVendaCodigo := 0;
      end;

    _ESTADO_OPERADOR + 1:
      begin
        if (TeclaTratar) or ((FListaSelecionada) and (Teclado > '')) then
        begin
          if (Teclado = '') or (Teclado = DEL) then
          begin
            Estado := _ESTADO_OPERADOR;
          end
          else if Teclado = FListaCaracter then
          begin
            Estado := _ESTADO_LISTA_OPERADOR;
          end
          else
          begin
            // VALIDAR USUARIO
            if OperadorPesquisa(IntToStr(StrToIntDef(Teclado, 0))) then
            begin
              // USUÁRIO VÁLIDO
              FOperadorCodigo := strtoint(qryConsulta.FieldByName('Codigo').AsString);
              FOperadorNome := qryConsulta.FieldByName('Descricao').AsString;
              qryConsulta.Close;
              DBFechar;

              Estado := _ESTADO_COMANDA;

              if FListaSelecionada then
              begin
                Processar;
                Exit;
              end;
            end
            else
            begin
              // USUARIO INVÁLIDO
              DisplayLimpar;
              DisplayPosicionar(1, 1);
              DisplayEnviar('USUARIO INVALIDO');
              EstadoProx := _ESTADO_OPERADOR;
              Estado := _ESTADO_ESPERA;
              Delay := _DELAY;
            end;
          end;
        end;
      end;

    _ESTADO_COMANDA:
      begin
        DisplayLimpar;

        DisplayPosicionar(1, 1);
        DisplayEnviar(FOperadorNome);
        DisplayPosicionar(2, 1);

        case DisplayTipo of
          dt20x2, dt20x4, dt40x2: DisplayEnviar('COMANDA : ');
          dt20x8: DisplayEnviar('COMANDA (' + FListaCaracterTexto + '): ');
        end;

        TeclaReceber('9999');
        Teclado := '';
        EstadoProx := 0;
        Estado := _ESTADO_COMANDA + 1;
        TextoPos := 1;

        FListaSelecionada := False;

        FComandaCodigo := 0;
        FComandaDescricao := '';
        FMesaCodigo := 0;
        FMesaDescricao := '';
        FProdutoCodigo := '0';
        FProdutoDescricao := '';
        FProdutoValor := 0;
        FprodutoTotal := 0;
        FProdutoQtd := 0;
        FVendaCodigo := 0;
        FVendaItemCodigo := 0;
      end;

    _ESTADO_COMANDA + 1:
      begin
        if (TeclaTratar) or ((FListaSelecionada) and (Teclado > '')) then
        begin
          if (Teclado = DEL) then
          begin
            // VOLTAR PARA OPERADOR
            Estado := _ESTADO_OPERADOR;
          end
          else if (Teclado = '') then
          begin
            Estado := _ESTADO_COMANDA;
          end
          else if (Teclado = FListaCaracter) then
          begin
            Estado := _ESTADO_LISTA_COMANDA;
          end
          else
          begin
            try
              // VALIDAR COMANDA
              if ComandaPesquisa(IntToStr(StrToIntDef(Teclado, 0))) then
              begin
                // COMANDA VÁLIDO
                FComandaCodigo := qryConsulta.FieldByName('Codigo').AsInteger;
                FComandaDescricao := qryConsulta.FieldByName('Descricao').AsString;
                qryConsulta.Close;

                // VERIFICAR SE EXISTE ALGUMA VENDA ABERTA PARA ESTA COMANDA
                if VendaPesquisar(IntToStr(FComandaCodigo)) then
                begin
                  FVendaCodigo := qryConsulta.FieldByName('Codigo').AsInteger;

                  if MesaPesquisa(qryConsulta.FieldByName('Codigo').AsString) then
                  begin
                    FMesaCodigo := qryConsulta.FieldByName('Codigo').AsInteger;
                    FMesaDescricao := qryConsulta.FieldByName('Descricao').AsString;
                    qryConsulta.Close;

                    DisplayPosicionar(3, 1);
                    DisplayEnviar(FMesaDescricao);

                    Estado := _ESTADO_PRODUTO;

                    if FListaSelecionada then
                    begin
                      Processar;
                      Exit;
                    end;
                  end;
                end
                else
                begin
                  Estado := _ESTADO_MESA;

                  if FListaSelecionada then
                  begin
                    Processar;
                    Exit;
                  end;
                end;
              end
              else
              begin
                // COMANDA INVÁLIDO
                DisplayLimpar;
                DisplayPosicionar(1, 1);
                DisplayEnviar(FOperadorNome);
                DisplayPosicionar(2, 1);
                DisplayEnviar('COMANDA NAO CADASTRADA');
                EstadoProx := _ESTADO_COMANDA;
                Estado     := _ESTADO_ESPERA;
                Delay      := _DELAY;
              end;
            finally
              DBFechar;
            end;
          end;
        end;
      end;

    _ESTADO_MESA:
      begin
        DisplayLimpar;

        case DisplayTipo of
          dt20x2, dt40x2:
          begin
            DisplayPosicionar(1, 1);
            DisplayEnviar(FComandaDescricao);
            DisplayPosicionar(2, 1);
            DisplayEnviar('MESA : ');
          end;

          dt20x4, dt20x8:
          begin
            DisplayPosicionar(1, 1);
            DisplayEnviar(FOperadorNome);
            DisplayPosicionar(2, 1);
            DisplayEnviar(FComandaDescricao);
            DisplayPosicionar(3, 1);

            case DisplayTipo of
              dt20x4: DisplayEnviar('MESA : ');
              dt20x8: DisplayEnviar('MESA (' + FListaCaracterTexto + '): ');
            end;
          end;
        end;

        TeclaReceber('9999');
        Teclado := '';
        EstadoProx := 0;
        Estado := _ESTADO_MESA + 1;
        TextoPos := 1;

        FListaSelecionada := false;
        FMesaCodigo := 0;
        FMesaDescricao := '';
        FProdutoCodigo := '0';
        FProdutoDescricao := '';
        FProdutoValor := 0;
        FprodutoTotal := 0;
        FProdutoQtd := 0;
        FVendaCodigo := 0;
        FVendaItemCodigo := 0;
      end;

    _ESTADO_MESA + 1:
      begin
        if (TeclaTratar) or ((FListaSelecionada) and (Teclado > '')) then
        begin
          if (Teclado = DEL) then
          begin
            // VOLTAR PARA OPERADOR
            Estado := _ESTADO_COMANDA;
          end
          else if (Teclado = '') then
          begin
            Estado := _ESTADO_MESA;
          end
          else if Teclado = FListaCaracter then
          begin
            Estado := _ESTADO_LISTA_MESA
          end
          else
          begin
            try
              sMesaCodigo := Teclado;

              if MesaPesquisa(IntToStr(StrToIntDef(Teclado, 0))) then
              begin
                // MESA VÁLIDA
                FMesaCodigo    := qryConsulta.FieldByName('Codigo').AsInteger;
                FMesaDescricao := qryConsulta.FieldByName('Descricao').AsString;

                // VALIDAR SE A MESA JÁ ESTA NA VENDA COM OUTRA COMANDA
//                if MesaPesquisaVenda(sMesaCodigo) then
//                begin
//                  // MESA JÁ ESTA COM VENDA ABERTA EM OUTRA COMANDA
//                  DisplayLimpar;
//
//                  case DisplayTipo of
//                    dt20x2, dt40x2:
//                    begin
//                      DisplayPosicionar(1, 1);
//                      DisplayEnviar(FComandaDescricao);
//                      DisplayPosicionar(2, 1);
//                    end;
//
//                    dt20x4, dt20x8:
//                    begin
//                      DisplayPosicionar(1, 1);
//                      DisplayEnviar(FOperadorNome);
//                      DisplayPosicionar(2, 1);
//                      DisplayEnviar(FComandaDescricao);
//                      DisplayPosicionar(3, 1);
//                    end;
//                  end;
//
//                  DisplayEnviar('MESA EM USO');
//
//                  EstadoProx := _ESTADO_MESA;
//                  Estado := _ESTADO_ESPERA;
//                  Delay := _DELAY;
//
//                  FMesaCodigo    := 0;
//                  FMesaDescricao := '';
//                end
//                else
//                begin
                  Estado := _ESTADO_PRODUTO;
//                end;

                if FListaSelecionada then
                begin
                  Processar;
                  Exit;
                end;
              end
              else
              begin
                // MESA INVÁLIDA
                DisplayLimpar;

                case DisplayTipo of
                  dt20x2, dt40x2:
                  begin
                    DisplayPosicionar(1, 1);
                    DisplayEnviar(FComandaDescricao);
                    DisplayPosicionar(2, 1);
                  end;

                  dt20x4, dt20x8:
                  begin
                    DisplayPosicionar(1, 1);
                    DisplayEnviar(FOperadorNome);
                    DisplayPosicionar(2, 1);
                    DisplayEnviar(FComandaDescricao);
                    DisplayPosicionar(3, 1);
                  end;
                end;

                DisplayEnviar('MESA NAO ENCONTRADA');
                EstadoProx := _ESTADO_MESA;
                Estado := _ESTADO_ESPERA;
                Delay := _DELAY;
              end;
            finally
              DBFechar;
            end;
          end;
        end;
      end;

    _ESTADO_COMPLEMENTO:
    begin
      DisplayLimpar;
      DisplayPosicionar(1, 1);
      DisplayEnviar(FOperadorNome);
      DisplayPosicionar(2, 1);
      DisplayEnviar(FComandaDescricao);
      DisplayPosicionar(3, 1);
      DisplayEnviar(FMesaDescricao);
      DisplayPosicionar(4, 1);
      DisplayEnviar(FProdutoDescricao);
      DisplayPosicionar(5, 1);
      DisplayEnviar('PRECO : ' + FormatFloat('0.00', FProdutoValor));
      DisplayPosicionar(6, 1);
      DisplayEnviar('QTD : ' + FormatFloat('0.00', FProdutoQtd));
      //'0' + DecimalSeparator + '00'
      DisplayPosicionar(7, 1);
      DisplayEnviar('COMPLEMENTO (' + FListaCaracterTexto + ') :');

      TeclaReceber('99999');
      Teclado := '';
      EstadoProx := 0;
      TextoPos := 1;

      FComandaCodigo := 0;

      Estado := _ESTADO_COMPLEMENTO + 1;
    end;

    _ESTADO_COMPLEMENTO + 1:
    begin
      if (TeclaTratar) or ((FListaSelecionada) and (Teclado > '')) then
      begin
        if (Teclado = '') or (Teclado = DEL) then
        begin
          Estado := _ESTADO_COMPLEMENTO;
        end
        else if Teclado = FListaCaracter then
        begin
          Estado := _ESTADO_LISTA_COMPLEMENTO;
        end
        else
        begin
          if ComplementoPesquisa(IntToStr(StrToIntDef(Teclado, 0))) then
          begin
            FComplementoCodigo := qryConsulta.FieldByName('Codigo').AsInteger;

            qryConsulta.Close;
            DBFechar;

            Estado := _ESTADO_PRODUTO + 7;

            Processar;


            if FListaSelecionada then
              Processar;

            Exit;
          end
          else
          begin
            DisplayLimpar;
            DisplayPosicionar(1, 1);
            DisplayEnviar(FOperadorNome);
            DisplayPosicionar(2, 1);
            DisplayEnviar(FComandaDescricao);
            DisplayPosicionar(3, 1);
            DisplayEnviar(FMesaDescricao);
            DisplayPosicionar(4, 1);
            DisplayEnviar(FProdutoDescricao);
            DisplayPosicionar(5, 1);
            DisplayEnviar('PRECO : ' + FormatFloat('0.00', FProdutoValor));
            DisplayPosicionar(6, 1);
            DisplayEnviar('QTD : ' + FormatFloat('0' + FormatSettings.DecimalSeparator + '00', FProdutoQtd));
            DisplayPosicionar(7, 1);
            DisplayEnviar('COMPL. INVALID0');
            EstadoProx := _ESTADO_COMPLEMENTO;
            Estado := _ESTADO_ESPERA;
            Delay := _DELAY;
          end;
        end;
      end;

    end;

    _ESTADO_PRODUTO:
      begin
        DisplayLimpar;

        case DisplayTipo of
          dt20x2, dt40x2:
          begin
            DisplayPosicionar(1, 1);
            DisplayEnviar(FMesaDescricao);
            DisplayPosicionar(2, 1);
            DisplayEnviar('PRODUTO : ');
          end;

          dt20x4, dt20x8:
          begin
            DisplayPosicionar(1, 1);
            DisplayEnviar(FOperadorNome);
            DisplayPosicionar(2, 1);
            DisplayEnviar(FComandaDescricao);
            DisplayPosicionar(3, 1);
            DisplayEnviar(FMesaDescricao);
            DisplayPosicionar(4, 1);

            case DisplayTipo of
              dt20x4: DisplayEnviar('PRODUTO : ');
              dt20x8: DisplayEnviar('PRODUTO (' + FListaCaracterTexto + '): ');
            end;
          end;
        end;

        TeclaReceber('9999999999999');
        Teclado := '';
        EstadoProx := 0;
        Estado := _ESTADO_MESA + 1;
        TextoPos := 1;
        Estado := _ESTADO_PRODUTO + 1;

        FListaSelecionada := False;

        FComplementoCodigo := 0;
        FProdutoCodigo := '0';
        FProdutoDescricao := '';
        FProdutoValor := 0;
        FprodutoTotal := 0;
        FProdutoQtd := 0;
        FVendaItemCodigo := 0;
      end;

    _ESTADO_PRODUTO + 1:
      begin
        if (TeclaTratar) or ((FListaSelecionada) and (Teclado > '')) then
        begin
          if (Teclado = '') or (Teclado = DEL) then
          begin
            // VOLTAR PARA COMANDA
            if Teclado = DEL then
            begin
              if FVendaCodigo = 0 then
              begin
                Estado := _ESTADO_MESA;
              end
              else
              begin
                Estado := _ESTADO_COMANDA;
              end;
            end
            else
            begin
              // PERGUNTAR SE FECHAR VENDA
              Estado := _ESTADO_PRODUTO + 10;
            end;
          end
          else if Teclado = FListaCaracter then
          begin
            Estado := _ESTADO_LISTA_PRODUTO;
          end
          else
          begin
            try
              if ProdutoPesquisa(Teclado) then
              begin
                FProdutoCodigo    := qryConsulta.FieldByName('Codigo').AsString;
                FProdutoDescricao := qryConsulta.FieldByName('Descricao').AsString;
                FProdutoValor     := qryConsulta.FieldByName('preco').AsFloat;

                if  qryConsulta.FieldByName('Peso').AsInteger = 1 then
                begin
                       FProdutoPeso      := true;
                end
                else
                begin
                      FProdutoPeso      := false;
                end;


                qryConsulta.Close;

                if (FProdutoPeso) and (PortaBalanca in ([ppSerial0, ppSerial1])) then
                  Estado := _ESTADO_PRODUTO + 5
                else
                  Estado := _ESTADO_PRODUTO + 2;

                if FListaSelecionada then
                begin
                  Processar;
                  Exit;
                end;
              end
              else
              begin
                DisplayLimpar;

                case DisplayTipo of
                  dt20x2, dt40x2:
                  begin
                    DisplayPosicionar(1, 1);
                    DisplayEnviar(FMesaDescricao);
                    DisplayPosicionar(2, 1);
                    DisplayEnviar('PROD. NAO ENCONTRADO');
                  end;

                  dt20x4, dt20x8:
                  begin
                    DisplayPosicionar(1, 1);
                    DisplayEnviar(FOperadorNome);
                    DisplayPosicionar(2, 1);
                    DisplayEnviar(FComandaDescricao);
                    DisplayPosicionar(3, 1);
                    DisplayEnviar(FMesaDescricao);
                    DisplayPosicionar(4, 1);
                    DisplayEnviar('PROD. NAO ENCONTRADO');
                  end;
                end;


                EstadoProx := _ESTADO_PRODUTO;
                Estado     := _ESTADO_ESPERA;
                Delay      := _DELAY;
              end;
            finally
              DBFechar;
            end;
          end;
        end;
      end;

    _ESTADO_PRODUTO + 2:
      begin
        // PRODUTO POR QUANTIDADE
        DisplayLimpar;

        case DisplayTipo of
          dt20x2, dt40x2:
          begin
            DisplayPosicionar(1, 1);
            DisplayEnviar(FProdutoDescricao);
            DisplayPosicionar(2, 1);
            if FProdutoPeso then
              DisplayEnviar('PR:' + FormatFloat('0.00', FProdutoValor) + ' PESO:')
            else
              DisplayEnviar('PR:' + FormatFloat('0.00', FProdutoValor) + ' QTD:');
          end;

          dt20x4:
          begin
            DisplayPosicionar(1, 1);
            DisplayEnviar(FComandaDescricao);
            DisplayPosicionar(2, 1);
            DisplayEnviar(FMesaDescricao);
            DisplayPosicionar(3, 1);
            DisplayEnviar(FProdutoDescricao);
            DisplayPosicionar(4, 1);
            if FProdutoPeso then
              DisplayEnviar('PR:' + FormatFloat('0.00', FProdutoValor) + ' PESO:')
            else
              DisplayEnviar('PR:' + FormatFloat('0.00', FProdutoValor) + ' QTD:');
          end;

          dt20x8:
          begin
            DisplayPosicionar(1, 1);
            DisplayEnviar(FOperadorNome);
            DisplayPosicionar(2, 1);
            DisplayEnviar(FComandaDescricao);
            DisplayPosicionar(3, 1);
            DisplayEnviar(FMesaDescricao);
            DisplayPosicionar(4, 1);
            DisplayEnviar(FProdutoDescricao);
            DisplayPosicionar(5, 1);
            DisplayEnviar('PRECO : ' + FormatFloat('0.00', FProdutoValor));
            DisplayPosicionar(6, 1);

            if FProdutoPeso then
              DisplayEnviar('PESO :')
            else
              DisplayEnviar('QTD : ');
          end;
        end;


        TeclaReceber('999999999');
        Teclado := '';
        FProdutoQtd := 0;
        Estado := _ESTADO_PRODUTO + 3;
      end;

    _ESTADO_PRODUTO + 3:
      begin
        if TeclaTratar then
        begin
          if (Teclado = '') or (Teclado = DEL) then
          begin
            // VOLTAR PARA PRODUTO
            Estado := _ESTADO_PRODUTO;
          end
          else
          begin
            FProdutoQtd := StrToFloatDef(StringReplace(Teclado, ',', '.', []), 0);
            if (DisplayTipo = dt20x8) and (not FProdutoPeso) then
              Estado := _ESTADO_COMPLEMENTO
            else
              Estado := _ESTADO_PRODUTO + 7;

            Processar;
          end;
        end;
      end;

    _ESTADO_PRODUTO + 5:
    begin
      // PRODUTO POR PESO
      DisplayLimpar;

      case DisplayTipo of
        dt20x2, dt40x2:
        begin
          DisplayPosicionar(1, 1);
          DisplayEnviar(FProdutoDescricao);
          DisplayPosicionar(2, 1);
        end;

        dt20x4:
        begin
          DisplayPosicionar(1, 1);
          DisplayEnviar(FComandaDescricao);
          DisplayPosicionar(2, 1);
          DisplayEnviar(FMesaDescricao);
          DisplayPosicionar(3, 1);
          DisplayEnviar(FProdutoDescricao);
          DisplayPosicionar(4, 1);
        end;

        dt20x8:
        begin
          DisplayPosicionar(1, 1);
          DisplayEnviar(FOperadorNome);
          DisplayPosicionar(2, 1);
          DisplayEnviar(FComandaDescricao);
          DisplayPosicionar(3, 1);
          DisplayEnviar(FMesaDescricao);
          DisplayPosicionar(4, 1);
          DisplayEnviar(FProdutoDescricao);
          DisplayPosicionar(5, 1);
          DisplayEnviar('PRECO: R ' + FormatFloat('0.00', FProdutoValor));
          DisplayPosicionar(6, 1);
        end;
      end;

      DisplayEnviar('AGUARDANDO PESO...');
      Teclado := '';
      Balanca;
      Delay := 0;
      Estado := _ESTADO_PRODUTO + 6;
      TeclaReceber(#3);
    end;

    _ESTADO_PRODUTO + 6:
    begin
      if TeclaTratar then
      begin
        if Teclado = '' then
        begin
          TeclaReceber(#3);
          Estado := _ESTADO_PRODUTO + 5;
          Delay  := _DELAY;
        end
        else
        begin
          FProdutoQtd := StrToFloatDef(Copy(Teclado, 1, 2) + FormatSettings.DecimalSeparator + Copy(Teclado, 3, 3), 0);
          Teclado     := '';
          Estado      := _ESTADO_PRODUTO + 7;
          Processar;
        end;
      end
      else
      begin
        if Delay > 0 then
        begin
          TeclaReceber(#3);
          Teclado := '';
          Balanca;
          Delay   := _DELAY;

//          Processar;
        end;
      end;
    end;

    _ESTADO_PRODUTO + 7:
    begin
      try
        if FVendaCodigo = 0 then
          FVendaCodigo := VendaInserir(FComandaCodigo, FMesaCodigo);


        if VendaItemPesquisar(IntToStr(FVendaCodigo), FProdutoCodigo) then
          FVendaItemCodigo := qryConsulta.FieldByName('Codigo').AsInteger;

        VendaItemInserir(FVendaItemCodigo, FVendaCodigo, FProdutoCodigo, FProdutoQtd, FProdutoValor, FprodutoTotal, Fcancelado);
      finally
        DBFechar;
      end;

      Estado := _ESTADO_PRODUTO;
    end;

    _ESTADO_PRODUTO + 10:
    begin
      DisplayLimpar;

      case DisplayTipo of
        dt20x2, dt40x2:
        begin
          DisplayPosicionar(1, 1);
          DisplayEnviar('FECHAR VENDA?');
          DisplayPosicionar(2, 1);
          DisplayEnviar('1-SIM   2-NAO');
        end;

        dt20x4:
        begin
          DisplayPosicionar(1, 1);
          DisplayEnviar(FComandaDescricao);
          DisplayPosicionar(2, 1);
          DisplayEnviar(FMesaDescricao);
          DisplayPosicionar(3, 1);
          DisplayEnviar('FECHAR VENDA?');
          DisplayPosicionar(4, 1);
          DisplayEnviar('1-SIM          2-NAO');
        end;

        dt20x8:
        begin
          DisplayPosicionar(1, 1);
          DisplayEnviar(FOperadorNome);
          DisplayPosicionar(2, 1);
          DisplayEnviar(FComandaDescricao);
          DisplayPosicionar(3, 1);
          DisplayEnviar(FMesaDescricao);
          DisplayPosicionar(4, 1);
          DisplayEnviar('FECHAR VENDA?');
          DisplayPosicionar(5, 1);
          DisplayEnviar('1-SIM          2-NAO');
        end;
      end;

      TeclaQualquer := True;
      Estado        := _ESTADO_PRODUTO + 11;
    end;

    _ESTADO_PRODUTO + 11:
    begin
      if TeclaTratar then
      begin
        if (Teclado = '1') then
        begin
          try
            VendaFechar(FComandaCodigo, FMesaCodigo);

            if PortaImpressao in ([ppSerial0, ppSerial1, ppParalela]) then
            begin
              Imprimir('..:: VENDA ::..');
              Imprimir('CODIGO   : ' + IntToStr(FVendaCodigo));
              Imprimir('OPERADOR : ' + FOperadorNome);
              Imprimir('COMANDA  : ' + FComandaDescricao);
              Imprimir('MESA     : ' + FMesaDescricao);

              VendaItemImprimir(FVendaCodigo);

              Imprimir('');
              Imprimir('');
              Imprimir('');
              Imprimir('');
              Imprimir('');
              Imprimir('');
              Imprimir('');
            end;
          finally
            DBFechar;
          end;
          Estado := _ESTADO_OPERADOR;
        end
        else if (Teclado = '2') then
        begin
          Estado := _ESTADO_OPERADOR;
        end
        else
        begin
          Estado := _ESTADO_PRODUTO + 10;
        end;
      end;
    end;

  end;
end;

procedure TTerminal.SetConexao(const Value: TADOConnection);
begin
  if qryConsulta.Active then
    qryConsulta.Close;

  if dtsDataSet.Active then
    dtsDataSet.Close;

  if dtsLista.Active then
    dtsLista.Close;

  FConexao := Value;

  qryConsulta.Connection := FConexao;
  qryExecutar.Connection := FConexao;
  dtsDataSet.Connection  := FConexao;
  dtsLista.Connection    := FConexao;
end;

function TTerminal.StringCompletar(sTexto: string; bEsquerda: Boolean;
  iTamanho: Integer): string;
var
  ssTexto: string;
begin
  ssTexto := Trim(sTexto);

  if Length(ssTexto) >= iTamanho then
  begin
    Result := Copy(ssTexto, 1, iTamanho);
    exit;
  end;

  while Length(ssTexto) < iTamanho do
  begin
    if bEsquerda then
      ssTexto := ' ' + ssTexto
    else
      ssTexto := ssTexto + ' ';
  end;

  Result := ssTexto;
end;



procedure TTerminal.OnCreare;
begin
  inherited;
  // CARACTER DE MENU DA LISTA
  ListaCaracter      := F2;
  ListaCaracterTexto := 'F2';
end;

function TTerminal.OperadorPesquisa(Codigo: string): Boolean;
var
  sSQL, sCodigo: string;
begin
  Result := False;

  sCodigo := Trim(Codigo);

  if sCodigo = '' then
    Exit;

  sSQL := ' select first 1 * from operador where codigo = ' + sCodigo +
    ' and Ativa = 1 ';

  Result := Pesquisa(sSQL);
end;

function TTerminal.ComandaPesquisa(Codigo: string): Boolean;
var
  sSQL, sCodigo: string;
begin
  Result := False;

  sCodigo := Trim(Codigo);

  if sCodigo = '' then
    Exit;

  sSQL := ' select first 1 * from mt_comanda where codigo = ' + sCodigo +
    ' and ativa = 1 ';

  Result := Pesquisa(sSQL);
end;

function TTerminal.MesaPesquisa(Codigo: string): Boolean;
var
  sSQL, sCodigo: string;
begin
  Result := False;

  sCodigo := Trim(Codigo);

  if sCodigo = '' then
    Exit;

  sSQL := ' select first 1 * from mt_Mesa where codigo = ' + sCodigo +
    ' and ativa = 1 ';

  Result := Pesquisa(sSQL);
end;

function TTerminal.ComplementoPesquisa(Codigo: string): Boolean;
var
  sSQL, sCodigo: string;
begin
  Result := False;

  sCodigo := Trim(Codigo);

  if sCodigo = '' then
    Exit;

  sSQL := ' select first 1 * from mt_complemento where codigo = ' + sCodigo +
    ' and ativa = 1 ';

  Result := Pesquisa(sSQL);
end;

function TTerminal.MesaPesquisaVenda(Codigo: string): Boolean;
var
  sSQL, sCodigo: string;
begin
  Result := False;

  sCodigo := Trim(Codigo);

  if sCodigo = '' then
    Exit;

  sSQL := ' select first 1 * from R000001 where Codigo = ' + sCodigo ;

  Result := Pesquisa(sSQL);
end;

function TTerminal.VendaPesquisar(sComanda: string): Boolean;
var
  sSQL, sCodigo: string;
begin
  Result := False;

  sCodigo := Trim(sComanda);

  if sCodigo = '' then
    Exit;

  sSQL := ' select first 1 * from R000001 where Codigo = ' + sCodigo ;

  Result := Pesquisa(sSQL);
end;

function TTerminal.ProdutoPesquisa(Codigo: string): Boolean;
var
  sSQL, sCodigo: string;
begin
  Result := False;

  sCodigo := Trim(Codigo);

  Codigo := StringReplace(sCodigo, F1, '', []);
  Codigo := StringReplace(sCodigo, F4, '', []);

  if sCodigo = '' then
    Exit;

  sSQL := ' select first 1 * from produto where ( ean13 = ' + sCodigo +
          ' or codigo = ' + sCodigo + ' ) and ativa = 0 ';

  Result := Pesquisa(sSQL);
end;

function TTerminal.TerminalPesquisa(IP: string): Boolean;
var
  sSQL, sIP: string;
begin
  Result := False;

  sIP := Trim(IP);

  if sIP = '' then
    Exit;

  sSQL := ' select first 1 * from mt_terminal where ip = ' + QuotedStr(sIP) + ' and ativa = 0 ';

  Result := Pesquisa(sSQL);

  if Result then
  begin
    with qryConsulta do
    begin
      case FieldByName('Protocolo').AsInteger of
        0: Protocolo := tpVT100;
        1: Protocolo := tpSTX;
      end;

      case FieldByName('Display').AsInteger of
        0: DisplayTipo := dt20x2;

        1: DisplayTipo := dt20x4;

        2:
        begin
          DisplayTipo := dt20x8;
          if Protocolo = tpSTX then
            DisplayTipo := dt20x4
          else
            DisplayTipo := dt20x8;
        end;

        3: DisplayTipo := dt40x2;
      end;

      case FieldByName('PortaImpressora').AsInteger of
        0 : PortaImpressao := ppNenhuma ;
        1 : PortaImpressao := ppSerial0 ;
        2 : PortaImpressao := ppSerial1 ;
        3 : PortaImpressao := ppParalela ;
      end;

      case FieldByName('PortaBalanca').AsInteger of
        0, 3 : PortaBalanca := ppNenhuma ;
        1 : PortaBalanca    := ppSerial0 ;
        2 : PortaBalanca    := ppSerial1 ;
      end;
    end;
  end;
end;

function TTerminal.VendaFechar(iCodComanda, iCodMesa: Integer): Boolean;
var
  sSQL: string;
begin
  sSQL :=
    ' update R000001 set situacao = 0 where ' +
        ' and Codigo = ' + IntToStr(iCodMesa);

  with qryExecutar do
  begin
    CommandText := sSQL;
    try
      Execute;
    except
      on e: Exception do
        sSQL := e.Message;
    end;
  end;
end;

function TTerminal.VendaInserir(iCodComanda, iCodMesa: Integer): Integer;
begin


  with dtsDataSet do
  begin
    if Active then
      Close;

    Connection := FConexao;

    CommandText :=
    ' SELECT * FROM r000001 where codigo = ' + IntToStr(iCodMesa);

    Open;

    if IsEmpty then
    begin
      Append;
      FieldByName('data').AsDateTime := Date();
      FieldByName('hora').AsString := TimeToStr(now);
      FieldByName('Codigo').AsInteger := iCodMesa;
      FieldByName('cod_funcionario').AsString := tbStrZero(FOperadorCodigo, 6);
      //FieldByName('ValorTotal').AsFloat := 0;
      Post;
    end;

    Result := FieldByName('Codigo').AsInteger;
    Close;
  end;
end;

procedure TTerminal.VendaItemImprimir(iCodigo: Integer);
var
  sSql: string;
begin
  sSql := ' select produto.Descricao, R000002.* from R000002, produto where ' + #13 +
          ' produto.Codigo = R000002.Cod_Produto ' + #13 +
          ' and Cod_mesa = ' + IntToStr(iCodigo);

  if Pesquisa(sSql) then
  begin
    with qryConsulta do
    begin
      First;

      Imprimir(StringCompletar('PRODUTO', False, 20) +
               StringCompletar('QTD', False, 6) +
               StringCompletar('PR. UNIT', False, 8) +
               StringCompletar('TOTAL', False, 8)
              );

      while not Eof do
      begin
        Imprimir(StringCompletar(FieldByName('produto').AsString, False, 20) +
                 StringCompletar('x' + formatfloat('0,000', FieldByName('qtde').AsFloat), False, 6) +
                 StringCompletar(formatfloat('0.00', FieldByName('unitario').AsFloat), True, 8) +
                 StringCompletar(formatfloat('0.00', FieldByName('Valor').AsFloat * FieldByName('qtde').AsFloat), True, 8)
                );

        Next;
      end;
    end;

  end;

end;

function TTerminal.VendaItemInserir(iCodigo, iCodVenda:Integer; iCodProduto: string; rQtd, rPreco, rTotal: Real; rCancelado:Integer): Boolean;
var
  sSQL: string;
begin
  if iCodigo <= 0 then
  begin
    sSQL :=
      ' insert into r000002(Cod_mesa, Cod_Produto, Qtde, unitario, total, cancelado) values (' +
       IntToStr(iCodVenda) + ', ' + tbStrZero(strtoint(iCodProduto),6) + ', ' +
      FormatFloat('0.000', rQtd) + ', ' + FormatFloat('0.00', rPreco) + ', ' +
      FormatFloat('0.000', rQtd*rPreco) + ', 0 ) ';
  end
  else
  begin
    sSQL :=
      ' update r000002 set Qtde = Qtde + ' + FormatFloat('0.000', rQtd) +
      ' where Codigo = ' + IntToStr(iCodigo);
  end;

  qryExecutar.CommandText := sSQL;

  try
    qryExecutar.Execute;
  except
    on e: Exception do
      sSQL := e.Message;
  end;

  sSQL :=
    ' select sum(unitario * qtde) as total from r000002 where Cod_mesa = ' + IntToStr(iCodVenda);

  {if Pesquisa(sSQL) then
  begin
    sSQL := ' select * from r000001 where Codigo = ' + IntToStr(iCodVenda);

    with dtsDataSet do
    begin
      if Active then
        Close;
      CommandText := sSQL;

      Open;

      if not IsEmpty then
      begin
        Edit;
        FieldByName('ValorTotal').AsFloat := qryConsulta.FieldByName('total').AsFloat;
        Post;
        Close;
      end;
    end;
  end; }
end;

function TTerminal.VendaItemPesquisar(sVenda, sProduto: string): Boolean;
var
  sSQL, sCodVenda, sCodProduto: string;
begin
  Result := False;

  sCodVenda   := Trim(sVenda);
  sCodProduto := Trim(sProduto);

  if (sCodVenda = '') or (sCodProduto = '') then
    Exit;

  sSQL := ' select first 1 * from r000002 where Cod_mesa = ' + sCodVenda +
    ' and Cod_Produto = ' + sCodProduto;

  Result := Pesquisa(sSQL);
end;

end.
