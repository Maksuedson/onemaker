unit lista_cliente_financeiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Buttons, TFlatPanelUnit, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxDesgn, frxClass,
  frxDBSet, Menus, AdvGlowButton, AdvReflectionImage, Vcl.Imaging.jpeg,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmlista_cliente_financeiro = class(TForm)
    Panel1: TPanel;
    pnl1: TPanel;
    Label1: TLabel;
    combo_relatorio: TComboBox;
    fxcliente: TfrxReport;
    fscontas_receber: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    qrcontasreceber: TZQuery;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrcontasreceberCODIGO: TWideStringField;
    qrcontasreceberCODVENDA: TWideStringField;
    qrcontasreceberCODVENDEDOR: TWideStringField;
    qrcontasreceberCODCAIXA: TWideStringField;
    qrcontasreceberCODCLIENTE: TWideStringField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TWideStringField;
    qrcontasreceberTIPO: TWideStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TWideStringField;
    qrcontasreceberCODREGIAO: TWideStringField;
    qrcontasreceberCODCEDENTE: TWideStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TWideStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberNOME: TWideStringField;
    qrcontasreceberCODIGO_1: TWideStringField;
    qrcontasreceberjuros: TFloatField;
    qrcontasreceberDIAS: TIntegerField;
    qrcontasreceberRESTANTE: TFloatField;
    qrcontasrecebercliente_situacao: TIntegerField;
    qrcontasrecebercliente_endereco: TStringField;
    qrcontasrecebercliente_bairro: TStringField;
    qrcontasrecebercliente_cidade: TStringField;
    qrcontasrecebercliente_uf: TStringField;
    qrcontasrecebercliente_cep: TStringField;
    qrcontasrecebercliente_telefone: TStringField;
    qrcontasrecebercliente_celular: TStringField;
    qrcontasrecebercliente_ref: TStringField;
    dtfldDATA_EMISSAO: TDateField;
    dtfldDATA_VENCIMENTO: TDateField;
    dtfldDATA_PAGAMENTO: TDateField;
    qrcontasreceberHISTORICO: TWideStringField;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bimprimirClick(Sender: TObject);
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_cliente_financeiro: Tfrmlista_cliente_financeiro;
    const
   sc_DragMove = $f012;
implementation

uses modulo, cliente_financeiro;

{$R *.dfm}

procedure Tfrmlista_cliente_financeiro.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_cliente_financeiro.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_cliente_financeiro.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_cliente_financeiro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_cliente_financeiro.bimprimirClick(Sender: TObject);
begin
{RELAÇÃO SINTÉTICA
RELAÇÃO AGRUPADA POR CLIENTE
CARTA DE COBRANÇA - 1a. Cobrança
CARTA DE COBRANÇA - 2a. Cobrança
CARTA DE COBRANÇA - Registro SPC/SERASA}
  FRMMODULO.QRRELATORIO.Open;
  FRMMODULO.QRRELATORIO.Edit;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';


  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    if frmcliente_financeiro.ratrazo.Checked then FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := 'DIAS DE ATRAZO: ' + frmcliente_financeiro.rdias.Text + ' DIA(S)';
    if frmcliente_financeiro.rperiodo.Checked then FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO DE VENCIMENTO: ' + frmcliente_financeiro.DATEEDIT1.TEXT + ' A ' + frmcliente_financeiro.DATEEDIT1.TEXT;
    if FRMCLIENTE_FINANCEIRO.RCLIENTE.CHECKED then FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := 'CLIENTE ' + frmcliente_financeiro.ecodigo.TEXT + ' ' + frmcliente_financeiro.eNOME.TEXT;
    if FRMCLIENTE_FINANCEIRO.RREGIAO.CHECKED then FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := 'REGIÃO ' + frmcliente_financeiro.ecodigo.TEXT + ' ' + frmcliente_financeiro.eNOME.TEXT;

    QRCONTASRECEBER.CLOSE;
    QRCONTASRECEBER.SQL.CLEAR;
    QRCONTASRECEBER.SQL.Text := FRMCLIENTE_FINANCEIRO.qrcontasreceber.SQL.Text;
    if frmcliente_financeiro.ratrazo.Checked then
    begin
      qrcontasreceber.Params.ParamByName('datai').asdatetime := (date - frmcliente_financeiro.rdias.value);
    end;
    if frmcliente_financeiro.rperiodo.Checked then
    begin
      qrcontasreceber.Params.ParamByName('datai').asdatetime := frmcliente_financeiro.dateedit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := frmcliente_financeiro.dateedit2.date;
    end;

    QRCONTASRECEBER.OPEN;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := emitente_cidade + FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date);
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\F000056.fr3');
    FXCLIENTE.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CLIENTE' then
  begin
    if frmcliente_financeiro.ratrazo.Checked then FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := 'DIAS DE ATRAZO: ' + frmcliente_financeiro.rdias.Text + ' DIA(S)';
    if frmcliente_financeiro.rperiodo.Checked then FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO DE VENCIMENTO: ' + frmcliente_financeiro.DATEEDIT1.TEXT + ' A ' + frmcliente_financeiro.DATEEDIT1.TEXT;
    if FRMCLIENTE_FINANCEIRO.RCLIENTE.CHECKED then FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := 'CLIENTE ' + frmcliente_financeiro.ecodigo.TEXT + ' ' + frmcliente_financeiro.eNOME.TEXT;
    if FRMCLIENTE_FINANCEIRO.RREGIAO.CHECKED then FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := 'REGIÃO ' + frmcliente_financeiro.ecodigo.TEXT + ' ' + frmcliente_financeiro.eNOME.TEXT;

    QRCONTASRECEBER.CLOSE;
    QRCONTASRECEBER.SQL.CLEAR;
    QRCONTASRECEBER.SQL.Text := FRMCLIENTE_FINANCEIRO.qrcontasreceber.SQL.Text;
    if frmcliente_financeiro.ratrazo.Checked then
    begin
      qrcontasreceber.Params.ParamByName('datai').asdatetime := (date - frmcliente_financeiro.rdias.value);
    end;
    if frmcliente_financeiro.rperiodo.Checked then
    begin
      qrcontasreceber.Params.ParamByName('datai').asdatetime := frmcliente_financeiro.dateedit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := frmcliente_financeiro.dateedit2.date;
    end;

    QRCONTASRECEBER.OPEN;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := emitente_cidade + FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date);
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\F000057.fr3');
    FXCLIENTE.ShowReport;
  end;




  if combo_relatorio.Text = 'CARTA DE COBRANÇA - 1a. Cobrança' then
  begin
    QRCONTASRECEBER.CLOSE;
    QRCONTASRECEBER.SQL.CLEAR;
    QRCONTASRECEBER.SQL.Text := FRMCLIENTE_FINANCEIRO.qrcontasreceber.SQL.Text;
    if frmcliente_financeiro.ratrazo.Checked then
    begin
      qrcontasreceber.Params.ParamByName('datai').asdatetime := (date - frmcliente_financeiro.rdias.value);
    end;
    if frmcliente_financeiro.rperiodo.Checked then
    begin
      qrcontasreceber.Params.ParamByName('datai').asdatetime := frmcliente_financeiro.dateedit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := frmcliente_financeiro.dateedit2.date;
    end;

    QRCONTASRECEBER.OPEN;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := emitente_cidade + FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date);
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\F000053.fr3');
    FXCLIENTE.ShowReport;
  end;
  if combo_relatorio.Text = 'CARTA DE COBRANÇA - 2a. Cobrança' then
  begin
    QRCONTASRECEBER.CLOSE;
    QRCONTASRECEBER.SQL.CLEAR;
    QRCONTASRECEBER.SQL.Text := FRMCLIENTE_FINANCEIRO.qrcontasreceber.SQL.Text;
    if frmcliente_financeiro.ratrazo.Checked then
    begin
      qrcontasreceber.Params.ParamByName('datai').asdatetime := (date - frmcliente_financeiro.rdias.value);
    end;
    if frmcliente_financeiro.rperiodo.Checked then
    begin
      qrcontasreceber.Params.ParamByName('datai').asdatetime := frmcliente_financeiro.dateedit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := frmcliente_financeiro.dateedit2.date;
    end;

    QRCONTASRECEBER.OPEN;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := emitente_cidade + FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date);
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\f000054.fr3');
    FXCLIENTE.ShowReport;
  end;
  if combo_relatorio.Text = 'CARTA DE COBRANÇA - Registro SPC/SERASA' then
  begin
    QRCONTASRECEBER.CLOSE;
    QRCONTASRECEBER.SQL.CLEAR;
    QRCONTASRECEBER.SQL.Text := FRMCLIENTE_FINANCEIRO.qrcontasreceber.SQL.Text;
    if frmcliente_financeiro.ratrazo.Checked then
    begin
      qrcontasreceber.Params.ParamByName('datai').asdatetime := (date - frmcliente_financeiro.rdias.value);
    end;
    if frmcliente_financeiro.rperiodo.Checked then
    begin
      qrcontasreceber.Params.ParamByName('datai').asdatetime := frmcliente_financeiro.dateedit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := frmcliente_financeiro.dateedit2.date;
    end;

    QRCONTASRECEBER.OPEN;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := emitente_cidade + FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date);
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\f000055.fr3');
    FXCLIENTE.ShowReport;
  end;

  if combo_relatorio.Text = 'RESUMO POR CLIENTE' then
  begin
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\f000060.fr3');
    FXCLIENTE.ShowReport;
  end;

  if combo_relatorio.Text = 'COMPRAS' then
  begin
    FRMMODULO.QRRELATORIO.EDIT;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'CLIENTES QUE NÃO COMPRAM A MAIS DE ' + FRMCLIENTE_FINANCEIRO.rdias_inativo.Text + ' DIA(S)';

    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\f000151.fr3');
    FXCLIENTE.ShowReport;
  end;


end;

procedure Tfrmlista_cliente_financeiro.qrcontasreceberCalcFields(DataSet: TDataSet);
var valor, juro, multa: real;
  dias: integer;
begin


  valor := qrcontasreceber.fieldbyname('valor_ATUAL').asfloat;


  qrcontasreceber.FieldByName('restante').asfloat := 0;

  if qrcontasreceber.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if qrcontasreceber.FieldByName('data_pagamento').asfloat > 0 then // puxar pelo ultimo pagamento
      begin
        if qrcontasreceber.FieldByName('data_pagamento').asfloat > qrcontasreceber.fieldbyname('data_vencimento').asdatetime then
          dias := trunc(date - qrcontasreceber.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa / 100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        if (DIAS - JURO_CARENCIA) > 0 then
        begin
          juro := (valor * ((juro_taxa / 100) * (DIAS {- juro_carencia})));
          valor := valor + juro + multa;
        end;
      end;
      if (dias - juro_carencia) > 0 then
      begin
        qrcontasreceber.FieldByName('dias').AsInteger := dias;
        qrcontasreceber.fieldbyname('restante').asfloat := valor;
        qrcontasreceber.fieldbyname('juros').asfloat := juro + multa;
      end
      else
      begin
        qrcontasreceber.fieldbyname('restante').asfloat := qrcontasreceber.fieldbyname('valor_atual').asfloat;
      end;

    end
    else
    begin
      qrcontasreceber.FieldByName('dias').AsInteger := 0;
      qrcontasreceber.fieldbyname('restante').asfloat := valor;
      qrcontasreceber.fieldbyname('juros').asfloat := 0;
      qrcontasreceber.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    qrcontasreceber.FieldByName('dias').AsInteger := 0;
    qrcontasreceber.fieldbyname('restante').asfloat := valor;
    qrcontasreceber.fieldbyname('juros').asfloat := 0;
  end;



end;

procedure Tfrmlista_cliente_financeiro.BitBtn1Click(Sender: TObject);
begin
  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\F000056.fr3');
    FXCLIENTE.DesignReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CLIENTE' then
  begin
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\F000057.fr3');
    FXCLIENTE.DesignReport;
  end;




  if combo_relatorio.Text = 'CARTA DE COBRANÇA - 1a. Cobrança' then
  begin
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\F000053.fr3');
    FXCLIENTE.DesignReport;
  end;
  if combo_relatorio.Text = 'CARTA DE COBRANÇA - 2a. Cobrança' then
  begin
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\f000054.fr3');
    FXCLIENTE.DesignReport;
  end;
  if combo_relatorio.Text = 'CARTA DE COBRANÇA - Registro SPC/SERASA' then
  begin
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\f000055.fr3');
    FXCLIENTE.DesignReport;
  end;

  if combo_relatorio.Text = 'RESUMO POR CLIENTE' then
  begin
    FXCLIENTE.LoadFromFile('\OneMaker\server\rel\f000060.fr3');
    FXCLIENTE.DESIGNREPORT;
  end;
end;

end.
