unit mesa_consumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, StdCtrls, ExtCtrls, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, AdvGlowButton, Menus, Mask,
  RzEdit, DB, MemDS, DBAccess, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, Uni;

type
  TfrmMesa_consumo = class(TForm)
    grid_consumo: TNextGrid;
    Panel19: TPanel;
    GroupBox1: TGroupBox;
    lb_mesa: TLabel;
    GroupBox2: TGroupBox;
    lb_data: TLabel;
    lb_hora: TLabel;
    GroupBox3: TGroupBox;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    Panel1: TPanel;
    bt_cancel: TAdvGlowButton;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    bt_transf: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    CancelarItem1: TMenuItem;
    ransferirparamesa1: TMenuItem;
    Sair1: TMenuItem;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn5: TNxNumberColumn;
    ed_total_comanda: TRzNumericEdit;
    Shape1: TShape;
    Label1: TLabel;
    bt_marcar: TAdvGlowButton;
    bt_desmarcar: TAdvGlowButton;
    MarcarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    SaveDialog1: TSaveDialog;
    query: TUniQuery;
    procedure bt_sairClick(Sender: TObject);
    procedure bt_cancelClick(Sender: TObject);
    procedure bt_transfClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_consumoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_consumoCellFormating(Sender: TObject; ACol, ARow: Integer;
      var TextColor: TColor; var FontStyle: TFontStyles; CellState: TCellState);
    procedure bt_marcarClick(Sender: TObject);
    procedure bt_desmarcarClick(Sender: TObject);
    procedure AdvMetroButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMesa_consumo: TfrmMesa_consumo;

implementation

uses Modulo, principal, transf_Mesa;

{$R *.dfm}

procedure TfrmMesa_consumo.bt_sairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMesa_consumo.AdvMetroButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmMesa_consumo.bt_cancelClick(Sender: TObject);
var
  i: Integer;
  consumo: Boolean;
  DataHora: TDateTime;
  str: string;
begin
  if grid_consumo.RowCount = 0 then
    exit;

  if application.messagebox
    ('Confirma o cancelamento do(s) item(s) selecionado(s)?', 'Atenção',
    mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    exit;

  for i := 0 to grid_consumo.RowCount - 1 do
  begin
    if grid_consumo.cell[1, i].AsBoolean then
    begin
      if grid_consumo.cell[8, i].AsInteger = 0 then
      begin
        grid_consumo.cell[8, i].AsInteger := 1;
        ed_total_comanda.Value := ed_total_comanda.Value - grid_consumo.cell
          [6, i].asfloat;

        query.close;
        query.sql.clear;
        query.sql.add('update r000002 set cancelado = 1 where codigo = ' +
          grid_consumo.cell[0, i].asstring);
        query.ExecSQL;
      end;
    end;
    grid_consumo.cell[1, i].AsBoolean := false;
  end;
  grid_consumo.Refresh;
 end;

procedure TfrmMesa_consumo.bt_transfClick(Sender: TObject);
var
  i, x, z: Integer;
  s: string;
  bParar: Boolean;
  DataHora: TDateTime;
  str: string;
  SR: TSearchRec;
  Origem, Destino: string;
begin
  if grid_consumo.RowCount = 0 then
    exit;

  x := 0;
  for i := 0 to grid_consumo.RowCount - 1 do
  begin
    if grid_consumo.cell[1, i].AsBoolean then
    begin
      inc(x);
      break;
    end;
  end;

  if x = 0 then
  begin
    application.messagebox('Favor selecionar um produto!', 'Erro',
      mb_ok + MB_ICONERROR);
    exit;
  end;

  frmTransf_Mesa := tfrmTransf_Mesa.create(self);
  frmTransf_Mesa.showmodal;

  if bContinua_Mesa then
  begin

    if strtoint(sMesa_Numero) = strtoint(lb_mesa.caption) then
    begin
      application.messagebox('Mesa de destino igual a de Origem!', 'Erro',
        mb_ok + MB_ICONERROR);
      exit;
    end;

    query.close;
    query.sql.clear;
    query.sql.add('select * from r000001');
    query.sql.add('where codigo = ' + sMesa_Numero);
    query.open;
    if query.RecordCount = 0 then
    begin

      // lancar a data e hora
      lb_data.caption := DateToStr(date);
      lb_hora.caption := TimeToStr(time);
      ed_total_comanda.Value := 0;

      frmmodulo.st_Mesa_Abertura.close;
      frmmodulo.st_Mesa_Abertura.ParamByName('codigo').AsInteger :=
        strtoint(sMesa_Numero);
      frmmodulo.st_Mesa_Abertura.ParamByName('data').asdatetime := date;
      frmmodulo.st_Mesa_Abertura.ParamByName('hora').asstring :=
        TimeToStr(time);
      frmmodulo.st_Mesa_Abertura.Prepare;
      frmmodulo.st_Mesa_Abertura.Execute;

    end;

    // passa pelos produtos
    for i := 0 to grid_consumo.RowCount - 1 do
    begin
      if grid_consumo.cell[1, i].AsBoolean then
      begin
        if grid_consumo.cell[8, i].AsInteger = 0 then
        begin
          s := lb_mesa.caption;
          while length(s) < 3 do
            s := '0' + s;
          // transferir o produto para outra mesa
          query.close;
          query.sql.clear;
          query.sql.add('update r000002 set cod_mesa = ' + sMesa_Numero + ',');
          query.sql.add('complemento = ''Transf. da Mesa ' + s + ''',');
          query.sql.add('transf_mesa = ' + lb_mesa.caption);
          query.sql.add('where codigo = ' + grid_consumo.cell[0, i].asstring);
          query.ExecSQL;

        end;
      end;

    end;

    if strtoint(sMesa_Numero) < 117 then
    begin
      with frmPrincipal do
      begin
        for x := 0 to ComponentCount - 1 do
          if (Components[x] is TAdvGlowButton) then
          begin
            if TAdvGlowButton(Components[x]).Tag = strtoint(sMesa_Numero) then
            begin
              TAdvGlowButton(Components[x]).Down := True;
              break;
            end;
          end;
      end;
    end
    else
    begin
      bParar := false;
      with frmPrincipal do
      begin
        for z := 0 to 9 do
        begin
          for x := 0 to 12 do
          begin
            if grid.cell[x, z].asstring = '' then
            begin
              grid.cell[x, z].asstring := sMesa_Numero;
              bParar := True;
              break;
            end;
          end;
          if bParar then
            break;
        end;
      end;
    end;

    // realimentar o grid
    query.close;
    query.sql.clear;
    query.sql.add('select R000002.*, C000025.produto, C000025.unidade');
    query.sql.add('from r000002, c000025');
    query.sql.add('where r000002.cod_produto = c000025.codigo');
    query.sql.add('and R000002.cod_mesa = ' +
      IntToStr(strtoint(lb_mesa.caption)));
    query.sql.add('order by codigo');
    query.open;
    query.first;
    frmMesa_consumo.grid_consumo.ClearRows;
    while not query.Eof do
    begin
      i := frmMesa_consumo.grid_consumo.AddRow(1);
      frmMesa_consumo.grid_consumo.cell[0, i].AsInteger :=
        query.fieldbyname('codigo').AsInteger;
      frmMesa_consumo.grid_consumo.cell[2, i].asstring :=
        query.fieldbyname('cod_produto').asstring;
      frmMesa_consumo.grid_consumo.cell[3, i].asstring :=
        query.fieldbyname('produto').asstring;
      frmMesa_consumo.grid_consumo.cell[4, i].asfloat :=
        query.fieldbyname('qtde').asfloat;
      frmMesa_consumo.grid_consumo.cell[5, i].asfloat :=
        query.fieldbyname('unitario').asfloat;
      frmMesa_consumo.grid_consumo.cell[6, i].asfloat :=
        query.fieldbyname('total').asfloat;
      frmMesa_consumo.grid_consumo.cell[7, i].asstring :=
        query.fieldbyname('complemento').asstring;
      frmMesa_consumo.grid_consumo.cell[8, i].AsInteger :=
        query.fieldbyname('cancelado').AsInteger;
      query.Next;
    end;

    application.messagebox('Transferência feita com sucesso!', 'Aviso',
      mb_ok + MB_ICONQUESTION);

    begin
      // comanda integrada
      // nova
      If Not frmmodulo.cdsComandas.Active Then
        // Verifica se o DataSet está ativo
        frmmodulo.cdsComandas.open // Caso esteja fechado
      else
      begin
        frmmodulo.cdsComandas.Insert; // Cria um novo registro

      end;

      begin
        try
          frmmodulo.cdsComandas.fieldbyname('ID_COMANDA').asstring :=
            'W0' + sMesa_Numero;
          frmmodulo.cdsComandas.fieldbyname('EVENTO').asstring := 'C';
          // Pega a data atual da maquina
          frmmodulo.cdsComandas.MergeChangeLog;
          // Atualiza o ParamsLog e a linha de dados, não cria uma nova.
          frmmodulo.cdsComandas.Post; // Confirma as modificações no DatSet

        except // Caso Aconteça algum erro exibe mensagem ao usuário

        end;
      end;

      // integracao catatra
      DataHora := time; // armazena a data e hora corrente
      str := frmPrincipal.somenteNumero(FormatDateTime('ddddd', date));
      // salva xml no servidor
      if (frmmodulo.Conexao.Server <> 'localhost') and
        (frmmodulo.Conexao.Server <> '') and
        (frmmodulo.Conexao.Server <> '127.0.0.1') then
      begin
        showmessage('É estacao');
        frmmodulo.cdsComandas.SaveToFile('\\' + frmmodulo.Conexao.Server +
          '\OneMaker\PDV\XML\W0' + sMesa_Numero + str + '.xml');
      end;
      // backup
      frmmodulo.cdsComandas.SaveToFile('C:\OneMaker\PDV\XML\W0' + sMesa_Numero +
        str + '.xml');

      if DirectoryExists('C:\Arquivos de programas\Emulador EC\XML\') then
        frmmodulo.cdsComandas.SaveToFile
          ('C:\Arquivos de programas\Emulador EC\XML\W0' + sMesa_Numero + str
          + '.xml');

      frmmodulo.cdsComandas.close;
      frmmodulo.cdsComandas.CreateDataSet;

    end;

    if grid_consumo.RowCount = 0 then
    begin
      application.messagebox('Mesa sem consumo!' + #13 +
        'A mesma será encerrada!', 'Atenção', mb_ok + MB_ICONWARNING);

      query.close;
      query.sql.clear;
      query.sql.add('delete from r000001 where codigo = ' +
        IntToStr(strtoint(lb_mesa.caption)));
      query.ExecSQL;

      frmPrincipal.desmarca;

      begin
        // comanda integrada
        // nova
        If Not frmmodulo.cdsComandas.Active Then
          // Verifica se o DataSet está ativo
          frmmodulo.cdsComandas.open // Caso esteja fechado
        else
        begin
          frmmodulo.cdsComandas.Insert; // Cria um novo registro

        end;

        begin
          try
            frmmodulo.cdsComandas.fieldbyname('ID_COMANDA').asstring :=
              'W0' + lb_mesa.caption;
            frmmodulo.cdsComandas.fieldbyname('EVENTO').asstring := 'L';
            // Pega a data atual da maquina
            frmmodulo.cdsComandas.MergeChangeLog;
            // Atualiza o ParamsLog e a linha de dados, não cria uma nova.
            frmmodulo.cdsComandas.Post; // Confirma as modificações no DatSet

          except // Caso Aconteça algum erro exibe mensagem ao usuário

          end;
        end;

        // integracao catatra
        DataHora := time; // armazena a data e hora corrente
        str := frmPrincipal.somenteNumero(FormatDateTime('ddddd', date));
        // salvar xml no servidor
        if (frmmodulo.Conexao.Server <> 'localhost') and
          (frmmodulo.Conexao.Server <> '') and
          (frmmodulo.Conexao.Server <> '127.0.0.1') then
        begin
          showmessage('É estacao');
          frmmodulo.cdsComandas.SaveToFile('\\' + frmmodulo.Conexao.Server +
            '\OneMaker\PDV\XML\W0' + lb_mesa.caption + str + '.xml');
        end;
        // backup
        frmmodulo.cdsComandas.SaveToFile('C:\OneMaker\PDV\XML\W0' +
          lb_mesa.caption + str + '.xml');

        // emulador
        if DirectoryExists('C:\Arquivos de programas\Emulador EC\XML\') then
          frmmodulo.cdsComandas.SaveToFile
            ('C:\Arquivos de programas\Emulador EC\XML\W0' + lb_mesa.caption +
            str + '.xml');

        frmmodulo.cdsComandas.close;
        frmmodulo.cdsComandas.CreateDataSet;

      end;

      close;
    end;

  end;
end;

procedure TfrmMesa_consumo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmMesa_consumo.FormShow(Sender: TObject);
begin
  grid_consumo.setfocus;
  if grid_consumo.RowCount > 0 then
  begin
    grid_consumo.SelectedRow := 0;
  end;
end;

procedure TfrmMesa_consumo.grid_consumoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #32 then
  begin
    if grid_consumo.cell[1, grid_consumo.SelectedRow].AsBoolean then
      grid_consumo.cell[1, grid_consumo.SelectedRow].AsBoolean := false
    else
      grid_consumo.cell[1, grid_consumo.SelectedRow].AsBoolean := True;
  end;
end;

procedure TfrmMesa_consumo.grid_consumoCellFormating(Sender: TObject;
  ACol, ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
  if grid_consumo.cell[8, ARow].AsInteger = 1 then
  begin
    TextColor := clred;
  end;
end;

procedure TfrmMesa_consumo.bt_marcarClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to grid_consumo.RowCount - 1 do
  begin
    grid_consumo.cell[1, i].AsBoolean := True;
  end;
end;

procedure TfrmMesa_consumo.bt_desmarcarClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to grid_consumo.RowCount - 1 do
  begin
    grid_consumo.cell[1, i].AsBoolean := false;
  end;

end;

end.
