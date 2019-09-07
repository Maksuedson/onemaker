unit Unit_ativar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  AdvMetroButton, Vcl.StdCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel,
  Vcl.Buttons, cyBaseSpeedButton, cySpeedButton, Data.DB, Vcl.DBCtrls, acPNG;

type
  TForm_ativar = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    cySpeedButton1: TcySpeedButton;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    DataSource1: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    dados: TMemo;
    Panel23: TPanel;
    Image5: TImage;
    procedure FormShow(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cySpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ativar: TForm_ativar;
   const
   sc_DragMove = $f012;
implementation

{$R *.dfm}

uses modulo, principal;

procedure TForm_ativar.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_ativar.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TForm_ativar.cySpeedButton1Click(Sender: TObject);
begin
{   frmPrincipal.ativar.renovar;
     Label1.Caption := '';
   Label1.Caption := 'Chave Nº: : '+ IntToStr(frmPrincipal.ativar.IDInstalacao) + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(frmPrincipal.ativar.Dias_RestantesU) + #13;
   Label1.Caption := Label1.Caption + 'Data de vencimento : ' + frmPrincipal.ativar.Data_VencimentoU + #13;
   Label1.Caption := Label1.Caption + 'Chave de Ativação: ' + frmPrincipal.ativar.Chave_RegistradaU + #13;
   Label1.Caption := Label1.Caption + 'E-mail do cliente : ' + frmPrincipal.ativar.Email_ClienteU + #13;
  // Label1.Caption := Label1.Caption + 'Versão : ' + IntToStr(frmPrincipal.store_protect.Versao_Sistema )+ #13;
   if frmPrincipal.ativar.Sistema_DemoU then
         Label1.Caption := Label1.Caption + 'TRIAL'
   else
         Label1.Caption := Label1.Caption + 'CÓPIA REGISTRADA'}
end;

procedure TForm_ativar.FormShow(Sender: TObject);
begin
  FRMMODULO.qrFilial.CLOSE;
  FRMMODULO.qrFilial.SQL.CLEAR;
  FRMMODULO.qrFilial.SQL.ADD('SELECT * FROM C000004 ORDER BY CODIGO');
  FRMMODULO.qrFilial.OPEN;
end;

end.
