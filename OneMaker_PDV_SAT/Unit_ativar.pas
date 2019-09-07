unit Unit_ativar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  AdvMetroButton, Vcl.StdCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel,
  Vcl.Buttons, cyBaseSpeedButton, cySpeedButton, Data.DB, Vcl.DBCtrls;

type
  TForm_ativar = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    cySpeedButton1: TcySpeedButton;
    Panel6: TPanel;
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
    procedure FormShow(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ativar: TForm_ativar;

implementation

{$R *.dfm}

uses modulo, principal;

procedure TForm_ativar.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_ativar.FormShow(Sender: TObject);
begin
  FRMMODULO.ZFilial.CLOSE;
  FRMMODULO.ZFilial.SQL.CLEAR;
  FRMMODULO.ZFilial.SQL.ADD('SELECT * FROM C000004 ORDER BY CODIGO');
  FRMMODULO.ZFilial.OPEN;
end;

end.
