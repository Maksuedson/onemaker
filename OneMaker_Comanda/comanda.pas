unit comanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, AdvSmoothTouchKeyBoard, Vcl.ExtCtrls,
  dxGDIPlusClasses, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  TfrmComanda = class(TForm)
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    EDIT1: TRzNumericEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComanda: TfrmComanda;

implementation

uses principal, Modulo, mesa_abertura;

{$R *.dfm}

procedure TfrmComanda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmComanda.AdvMetroButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmComanda.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  edit2: string;
begin
  if Key = #13 then
  begin
    if EDIT1.value <= 0 then
      exit;
    edit2 := Copy(EDIT1.Text, 3, 5);
    EDIT1.Text := edit2;

    with frmprincipal do
    begin
      EDIT1.Text := frmprincipal.zerarcodigo(EDIT1.Text, 3);
      lb_mesa.caption := EDIT1.Text;

      // verificar se a mesa já estah aberta
      query.close;
      query.sql.clear;
      query.sql.add('select * from r000001');
      query.sql.add('where codigo = ' + inttostr(strtoint(EDIT1.Text)));
      query.open;
      if query.RecordCount > 0 then
      begin
        lb_data.caption := query.fieldbyname('data').asstring;
        lb_hora.caption := query.fieldbyname('hora').asstring;

        qrapoio.close;
        qrapoio.sql.clear;
        qrapoio.sql.add('select nome from c000008 where codigo = ''' +
          query.fieldbyname('cod_funcionario').asstring + '''');
        qrapoio.open;

        lb_funci.caption := qrapoio.fieldbyname('nome').asstring;

        qrconsumo.close;
        qrconsumo.sql.clear;
        qrconsumo.sql.add('select sum(total) as soma from r000002');
        qrconsumo.sql.add('where cod_mesa = ' + inttostr(strtoint(EDIT1.Text)));
        qrconsumo.sql.add('and cancelado = 0');
        qrconsumo.open;
        ed_total_comanda.value := qrconsumo.fieldbyname('soma').asfloat;
        bContinua_mesa := true;
      end
      else
      begin
        bContinua_mesa := false;
        sFunci := '';
        snome_funci := '';
        frmmesa_abertura := tfrmmesa_abertura.create(self);
        frmmesa_abertura.lb_mesa.caption := EDIT1.Text;
        frmmesa_abertura.showmodal;

        if bContinua_mesa then
        begin
          // lancar a data e hora
          lb_funci.caption := snome_funci;
          lb_mesa.caption := EDIT1.Text;
          lb_data.caption := DateToStr(date);
          lb_hora.caption := TimeToStr(time);
          ed_total_comanda.value := 0;
          frmmodulo.st_Mesa_Abertura.close;
          frmmodulo.st_Mesa_Abertura.ParamByName('codigo').asinteger :=
            strtoint(EDIT1.Text);
          frmmodulo.st_Mesa_Abertura.ParamByName('data').asdatetime := date;
          frmmodulo.st_Mesa_Abertura.ParamByName('hora').asstring :=
            TimeToStr(time);
          frmmodulo.st_Mesa_Abertura.ParamByName('cod_funcionario').asstring
            := sFunci;
          frmmodulo.st_Mesa_Abertura.Prepare;
          frmmodulo.st_Mesa_Abertura.Execute;
          bContinua_mesa := true;
        end
        else
        begin
          bContinua_mesa := false;
        end;
      end;
    end;
    close;
  end;
  if Key = #27 then
    close;
end;

end.
