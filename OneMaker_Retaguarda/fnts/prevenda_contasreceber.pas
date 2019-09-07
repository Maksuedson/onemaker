unit prevenda_contasreceber;

interface
                                                                                                                                                 
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Collection, wwdblook, Mask,
  JvToolEdit, Grids, Wwdbigrd, Wwdbgrid, DB, Buttons,
  AdvGlowButton, RzEdit, RzSpnEdt, wwdbedit, JvExMask, JvBaseEdits;

type
  Tfrmprevenda_contasreceber = class(TForm)
    dsvenda_contasreceber: TDataSource;
    FlatPanel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    combocondpgto: TwwDBLookupCombo;
    rqtde: TRzSpinEdit;
    wwDBGrid1: TwwDBGrid;
    combotipo: TwwDBLookupCombo;
    FlatPanel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    rsoma: TJvCalcEdit;
    rdiferenca: TJvCalcEdit;
    pgravar: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel3: TBevel;
    Button1: TButton;
    wwDBEdit1: TwwDBEdit;
    Label5: TLabel;
    rvalor: TJvCalcEdit;
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure combocondpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BGRAVARClick(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
  TIPO : STRING;
    { Public declarations }
  end;

var
  frmprevenda_contasreceber: Tfrmprevenda_contasreceber;

implementation

uses modulo, prevenda_fechamento, prevenda;

{$R *.dfm}

procedure Tfrmprevenda_contasreceber.combocondpgtoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.SQL.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.open;
  frmmodulo.qrcondpgto.indexfieldnames := 'condpgto';
end;

procedure Tfrmprevenda_contasreceber.combocondpgtoExit(Sender: TObject);
var prestacao : integer;
valor : real;
begin

  tedit(sender).color := clwindow;
  if combocondpgto.text <> '' then
  begin
    if frmmodulo.qrcondpgto.locate('condpgto',combocondpgto.text,[loCaseInsensitive]) then
    begin
      frmmodulo.qrcondpgto_parcela.close;
      frmmodulo.qrcondpgto_parcela.sql.clear;
      frmmodulo.qrcondpgto_parcela.sql.add('select * from c000016 where codcondpgto = '''+frmmodulo.qrcondpgto.fieldbyname('codigo').asstring+''' order by codigo');
      frmmodulo.qrcondpgto_parcela.open;
      if frmmodulo.qrcondpgto_parcela.RecordCount > 0 then
      begin
        FRMPREVENDA.qrvenda_contasreceber.open;
        FRMPREVENDA.qrvenda_contasreceber.First;
        while not FRMPREVENDA.qrvenda_contasreceber.Eof do FRMPREVENDA.qrvenda_contasreceber.Delete;
        frmmodulo.qrcondpgto_parcela.first;
        prestacao := 1;
        while not frmmodulo.qrcondpgto_parcela.eof do
        begin
          FRMPREVENDA.qrvenda_contasreceber.Append;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('vencimento').asdatetime := strtodate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING)+frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;
          valor := rvalor.Value * (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat/100);

          if frmmodulo.qrcondpgto_parcela.FieldByName('juros').asfloat > 0 then
             valor := valor + (valor *  (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));
          FRMPREVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('documento').asstring := NUMERO_VENDAx +'/'+inttostr(prestacao);
          frmprevenda.qrvenda_contasreceber.FieldByName('TIPO').asstring := TIPO;
          FRMPREVENDA.qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          frmmodulo.qrcondpgto_parcela.Next;
        end;
        //FRMPREVENDA.qrvenda_contasreceber.Refresh;
        rsoma.value := rvalor.Value;
        rdiferenca.Value := 0;
        wwdbgrid1.SetFocus;
      end
      else
      begin
        application.messagebox('Esta Condição de Pagamento não possue parcelas! Seu cadastro não foi feito corretamente!','Atenção',mb_ok+MB_ICONWARNING);
        combocondpgto.setfocus;
      end;
    end
    else
    begin
      application.messagebox('Condição de Pagamento não encontrada!','Atenção',mb_ok+MB_ICONERROR);
      combocondpgto.setfocus;
    end;
  end
  else
  begin
    rqtde.setfocus;
  end;
end;

procedure Tfrmprevenda_contasreceber.combocondpgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmprevenda_contasreceber.rqtdeEnter(Sender: TObject);
begin
  IF RQTDE.VALUE = 0 THEN RQTDE.VALUE := 1;
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmprevenda_contasreceber.rqtdeExit(Sender: TObject);
var qtde, prestacao : integer;
valor : real;
begin
  tedit(sender).color := clwindow;
  if rqtde.value > 0 then
  begin
        prestacao := 1;
        qtde := trunc(rqtde.value);
        VALOR := rvalor.value / qtde;
        FRMPREVENDA.qrvenda_contasreceber.open;
        FRMPREVENDA.qrvenda_contasreceber.First;
        while not FRMPREVENDA.qrvenda_contasreceber.Eof do FRMPREVENDA.qrvenda_contasreceber.Delete;
        while QTDE <> 0 do
        begin
          FRMPREVENDA.qrvenda_contasreceber.Append;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('vencimento').asdatetime := incmonth(strtodate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING),prestacao);
          FRMPREVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          FRMPREVENDA.qrvenda_contasreceber.FieldByName('documento').asstring := NUMERO_VENDAx +'/'+inttostr(prestacao);
          frmprevenda.qrvenda_contasreceber.FieldByName('TIPO').asstring := TIPO;
          FRMPREVENDA.qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          qtde := qtde - 1;
        end;
        rsoma.value := rvalor.Value;
        rdiferenca.Value := 0;
        //FRMPREVENDA.qrvenda_contasreceber.Refresh;
        wwdbgrid1.SetFocus;
  end;
end;

procedure Tfrmprevenda_contasreceber.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure Tfrmprevenda_contasreceber.BGRAVARClick(Sender: TObject);
begin
  if FRMPREVENDA.qrvenda_contasreceber.State = dsedit then
  begin
    FRMPREVENDA.qrvenda_contasreceber.post;
  end;
  if rdiferenca.Value <> 0 then
  begin
    application.MessageBox('Os valores informados nas parcelas não confere com o valor total desta venda! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
    wwdbgrid1.setfocus;
    exit;
  end;
  CONTINUAR := TRUE;
  //continua := TRUE;
  CLOSE;
end;

procedure Tfrmprevenda_contasreceber.BCANCELARClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmprevenda_contasreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmprevenda_contasreceber.FormShow(Sender: TObject);
begin
  CONTINUAR := FALSE;
  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.sql.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.Open;
  frmmodulo.qrcondpgto.IndexFieldNames := 'condpgto';
end;

procedure Tfrmprevenda_contasreceber.rqtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then wwdbgrid1.setfocus;
end;

procedure Tfrmprevenda_contasreceber.Button1Click(Sender: TObject);
begin
RSOMA.Value := 0;
FRMPREVENDA.qrvenda_contasreceber.First;
while not FRMPREVENDA.qrvenda_contasreceber.Eof do
  BEGIN
  RSOMA.Value := RSOMA.Value +  FRMPREVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat;
  FRMPREVENDA.qrvenda_contasreceber.NEXT;
  END;
RDIFERENCA.Value := RSOMA.Value - RVALOR.Value;
end;

procedure Tfrmprevenda_contasreceber.wwDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 IF KEY = #13 THEN WWDBGRID1.SetFocus;
end;

procedure Tfrmprevenda_contasreceber.wwDBEdit1Exit(Sender: TObject);
begin
Button1Click(Sender);
end;

end.
