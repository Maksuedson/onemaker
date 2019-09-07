unit Comanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBAccess, Vcl.Mask, RzEdit, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, Uni, MemDS;

type
  TFComanda = class(TForm)
    Label1: TLabel;
 //   qrMesa: TIBCQuery;
  //  QRITEM: TIBCQuery;
    editComanda: TRzNumericEdit;
    QRITEM: TUniQuery;
    qrMesa: TUniQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditComandaKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FechaComanda;
  end;

var
  FComanda: TFComanda;

implementation

uses modulo, principal, funcoes;

{$R *.dfm}

procedure TFComanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
  Close;
end;

procedure TFComanda.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFComanda.EditComandaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
   FechaComanda;

  end;
  
end;

procedure TFComanda.FechaComanda;
begin

  if EditComanda.Value = 0 then exit;
  if EditComanda.Value < 0 then
  begin
    application.MessageBox('Favor digitar o numero da comanda','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;


  // filtrar os produtos
   frmmodulo.query_servidor.close;
   frmmodulo.query_servidor.sql.clear;
   frmmodulo.query_servidor.SQL.add('select r000002.*, C000025.produto, C000025.unidade,');
   frmmodulo.query_servidor.sql.add('c000025.cst, c000025.aliquota, c000025.codbarra');
   frmmodulo.query_servidor.sql.add('from r000002, c000025');
   frmmodulo.query_servidor.sql.add('where r000002.cod_produto = c000025.codigo');
   frmmodulo.query_servidor.sql.add('and r000002.cod_mesa = '+FloatToStr(EditComanda.Value));
   frmmodulo.query_servidor.sql.add('order by r000002.codigo');
   frmmodulo.query_servidor.open;


   qritem.close;
   qritem.sql.clear;
   qritem.sql.add('select * from r000001');
   qritem.sql.add('where codigo = '+FloatToStr(EditComanda.Value));
   qritem.open;


  if (frmmodulo.query_servidor.RecordCount = 0) and
     (qritem.RecordCount = 0) then
  begin
    MessageBeep(32);
    Application.messagebox('Não tem itens lançados para esta comanda!','Atenção!',mb_ok);
  end
  else
  begin
    if application.messagebox('Confirma a impressão do cupom para esta comanda?','Atenção',mb_yesno+
                              MB_ICONQUESTION) = idYes then
    begin
      bLanca_Comanda := true;
      imesa_codigo := frmPrincipal.IsInteger( EditComanda.Text);
      smesa_Numero := 'ECF: '+zerar(qritem.fieldbyname('ecf').asstring,3)+' - Conferência de Mesa - '+
                      'CER No. '+zerar(qritem.fieldbyname('Cer').asstring,4)+' - '+
                      'COO No. '+zerar(qritem.fieldbyname('coo').asstring,6) + ' - Mesa: ' + Zerar(EditComanda.Text ,6);

      close;
    end;
  end;

end;

end.
