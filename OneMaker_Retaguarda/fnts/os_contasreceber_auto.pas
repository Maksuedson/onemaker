unit os_contasreceber_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, Collection, wwdblook, Mask,
  Grids, Wwdbigrd, Wwdbgrid, DB, Buttons,
  AdvGlowButton, RzEdit, RzSpnEdt, JvExMask, JvToolEdit, JvBaseEdits;

type
  Tfrmos_contasreceber_auto = class(TForm)
    dsvenda_contasreceber: TDataSource;
    combotipo: TwwDBLookupCombo;
    FlatPanel3: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    combocondpgto: TwwDBLookupCombo;
    rqtde: TRzSpinEdit;
    Bevel2: TBevel;
    wwDBGrid1: TwwDBGrid;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    FlatPanel2: TFlatPanel;
    Label3: TLabel;
    Label4: TLabel;
    rsoma: TJvCalcEdit;
    rdiferenca: TJvCalcEdit;
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure combocondpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BGRAVARClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmos_contasreceber_auto: Tfrmos_contasreceber_auto;

implementation

uses modulo, os_auto, os_fechamento_auto;

{$R *.dfm}

procedure Tfrmos_contasreceber_auto.combocondpgtoEnter(Sender: TObject);
begin
  lancando_contasreceber := false;

  tedit(sender).Color := $00A0FAF8;

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.SQL.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.open;
  frmmodulo.qrcondpgto.indexfieldnames := 'condpgto';



end;

procedure Tfrmos_contasreceber_auto.combocondpgtoExit(Sender: TObject);
var prestacao: integer;
  valor: real;
begin
  tedit(sender).color := clwindow;

  if combocondpgto.text <> '' then
  begin
    if frmmodulo.qrcondpgto.locate('condpgto', combocondpgto.text, [loCaseInsensitive]) then
    begin
      frmmodulo.qrcondpgto_parcela.close;
      frmmodulo.qrcondpgto_parcela.sql.clear;
      frmmodulo.qrcondpgto_parcela.sql.add('select * from c000016 where codcondpgto = ''' + frmmodulo.qrcondpgto.fieldbyname('codigo').asstring + ''' order by codigo');
      frmmodulo.qrcondpgto_parcela.open;
      if frmmodulo.qrcondpgto_parcela.RecordCount > 0 then
      begin
        frmos_auto.qrOS_contasreceber.close;
        frmos_auto.qrOS_contasreceber.sql.clear;
        frmos_auto.qrOS_contasreceber.SQL.Add('delete from cl00002 where terminal = ''' + numero_terminal + '''');
        frmos_auto.qrOS_contasreceber.ExecSQL;
        frmos_auto.qrOS_contasreceber.sql.clear;
        frmos_auto.qrOS_contasreceber.SQL.Add('select * from cl00002 where  terminal = ''' + numero_terminal + ''' order by prestacao');
        frmos_auto.qrOS_contasreceber.open;

        frmmodulo.qrcondpgto_parcela.first;
        prestacao := 1;


        while not frmmodulo.qrcondpgto_parcela.eof do
        begin
          frmos_auto.qrOS_contasreceber.Insert;
          frmos_auto.qrOS_contasreceber.FieldByName('prestacao').asinteger := prestacao;
          frmos_auto.qrOS_contasreceber.FieldByName('vencimento').asdatetime := strtodate(frmmodulo.qros.fieldbyname('data').asstring) + frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;
          valor := frmOS_fechamento_auto.rCREDIARIO.Value *
            (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat / 100);
          if frmmodulo.qrcondpgto_parcela.FieldByName('juros').asfloat > 0 then
            valor := valor + (valor * (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));

          frmos_auto.qrOS_contasreceber.fieldbyname('valor').asfloat := valor;
          frmos_auto.qrOS_contasreceber.FieldByName('documento').asstring := frmmodulo.qros.fieldbyname('codigo').asstring + 's' + inttostr(prestacao);
          frmos_auto.qrOS_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';
          frmos_auto.qrOS_contasreceber.post;
          prestacao := prestacao + 1;
          frmmodulo.qrcondpgto_parcela.Next;
        end;
        frmos_auto.qrOS_contasreceber.Refresh;
        rsoma.value := frmOS_fechamento_auto.rCREDIARIO.Value;
        rdiferenca.Value := 0;

        wwdbgrid1.SetFocus;
      end
      else
      begin
        application.messagebox('Esta Condi��o de Pagamento n�o possue parcelas! Seu cadastro n�o foi feito corretamente!', 'Aten��o', mb_ok + MB_ICONWARNING);
        combocondpgto.setfocus;
      end;
    end
    else
    begin
      application.messagebox('Condi��o de Pagamento n�o encontrada!', 'Aviso', mb_ok + MB_ICONERROR);
      combocondpgto.setfocus;
    end;
  end
  else
  begin
    rqtde.setfocus;
  end;


end;

procedure Tfrmos_contasreceber_auto.combocondpgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmos_contasreceber_auto.rqtdeEnter(Sender: TObject);
begin
  if RQTDE.VALUE = 0 then RQTDE.VALUE := 1;
  lancando_contasreceber := false;
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmos_contasreceber_auto.rqtdeExit(Sender: TObject);
var qtde, prestacao: integer;
  valor: real;
begin
  tedit(sender).color := clwindow;

  if rqtde.value > 0 then
  begin
    prestacao := 1;
    qtde := trunc(rqtde.value);

    VALOR := frmOS_fechamento_auto.rCREDIARIO.Value / qtde;

    frmos_auto.qrOS_contasreceber.close;
    frmos_auto.qrOS_contasreceber.sql.clear;
    frmos_auto.qrOS_contasreceber.SQL.Add('delete from cl00002 where terminal = ''' + numero_terminal + '''');
    frmos_auto.qrOS_contasreceber.ExecSQL;
    frmos_auto.qrOS_contasreceber.sql.clear;
    frmos_auto.qrOS_contasreceber.SQL.Add('select * from cl00002 where terminal = ''' + numero_terminal + ''' order by prestacao');
    frmos_auto.qrOS_contasreceber.open;
    while QTDE <> 0 do
    begin
      frmos_auto.qrOS_contasreceber.Insert;
      frmos_auto.qrOS_contasreceber.FieldByName('prestacao').asinteger := prestacao;
      frmos_auto.qrOS_contasreceber.FieldByName('vencimento').asdatetime := incmonth(strtodate(frmmodulo.qros.fieldbyname('data').asstring), prestacao);
      frmos_auto.qrOS_contasreceber.fieldbyname('valor').asfloat := valor;
      frmos_auto.qrOS_contasreceber.FieldByName('documento').asstring := frmmodulo.qros.fieldbyname('codigo').asstring + 's' + inttostr(prestacao);
      frmos_auto.qrOS_contasreceber.FieldByName('TIPO').asstring := 'CARTEIRA';
      frmos_auto.qrOS_contasreceber.post;
      prestacao := prestacao + 1;
      qtde := qtde - 1;
    end;
    rsoma.value := frmOS_fechamento_auto.rCREDIARIO.Value;
    rdiferenca.Value := 0;

    frmos_auto.qrOS_contasreceber.Refresh;
    wwdbgrid1.SetFocus;
  end;

end;

procedure Tfrmos_contasreceber_auto.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then BGRAVAR.SETFOCUS;
end;

procedure Tfrmos_contasreceber_auto.BGRAVARClick(Sender: TObject);
begin
  if frmos_auto.qros_contasreceber.State = dsedit then
  begin
    frmos_auto.qrOS_contasreceber.post;
    lancando_contasreceber := false;
  end;

  if rdiferenca.Value <> 0 then
  begin
    application.MessageBox('Os valores informados nas parcelas n�o confere com o valor total desta O.S.! Favor verificar!', 'Aten��o', mb_ok + MB_ICONWARNING);
    wwdbgrid1.setfocus;
    exit;
  end;



  CONTINUAR := TRUE;
  CLOSE;











end;

procedure Tfrmos_contasreceber_auto.wwDBGrid1Enter(Sender: TObject);
begin
  lancando_contasreceber := true;
end;

procedure Tfrmos_contasreceber_auto.BCANCELARClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmos_contasreceber_auto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmos_contasreceber_auto.FormShow(Sender: TObject);
begin
  CONTINUAR := FALSE;

  frmmodulo.qrformapgto.close;
  frmmodulo.qrformapgto.sql.clear;
  frmmodulo.qrformapgto.sql.add('select * from c000014 order by formapgto');
  frmmodulo.qrformapgto.Open;
  frmmodulo.qrformapgto.IndexFieldNames := 'formapgto';
end;

procedure Tfrmos_contasreceber_auto.rqtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

end.
