unit Info_Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxImage, cxDBEdit, AdvSmoothPanel, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Script, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls,
  Vcl.DBCtrls, AdvGlowButton, Vcl.StdCtrls, CurvyControls, dxGDIPlusClasses;

type
  TFrm_Info_Usuarios = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    CurvyPanel1: TCurvyPanel;
    cxDBImage1: TcxDBImage;
    CurvyPanel2: TCurvyPanel;
    CurvyPanel3: TCurvyPanel;
    CurvyPanel4: TCurvyPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    bt_mudarsenha_info: TAdvGlowButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure FormActivate(Sender: TObject);
    procedure bt_mudarsenha_infoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Info_Usuarios: TFrm_Info_Usuarios;

implementation

{$R *.dfm}

uses modulo, principal;

procedure TFrm_Info_Usuarios.bt_mudarsenha_infoClick(Sender: TObject);
begin
  frmprincipal.trocasenha.Execute;
end;

procedure TFrm_Info_Usuarios.FormActivate(Sender: TObject);
begin
  frmmodulo.info_clientes_usercontrol.Active := True;
  label1.caption := frmPrincipal.iCloud.CurrentUser.UserName;
  label2.caption := frmPrincipal.iCloud.CurrentUser.UserLogin;
  label3.caption := frmPrincipal.iCloud.CurrentUser.Email;
  end;

end.
