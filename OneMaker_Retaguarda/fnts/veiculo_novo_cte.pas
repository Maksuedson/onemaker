unit veiculo_novo_cte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, cxTextEdit, StdCtrls, DB,
  sGroupBox, AdvGlowButton, ExtCtrls, RzPanel, ACBrBase, ACBrEnterTab,
  Menus;

type
  TfrmVeiculo_novo = class(TForm)
    RzPanel2: TRzPanel;
    btincluir: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    sGroupBox1: TsGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    edtcor: TcxDBTextEdit;
    Label2: TLabel;
    edtdesccor: TcxDBTextEdit;
    Label3: TLabel;
    codmarca: TcxDBTextEdit;
    Label4: TLabel;
    edtchassi: TcxDBTextEdit;
    Label5: TLabel;
    edtunit: TcxDBCalcEdit;
    Label6: TLabel;
    edtfrete: TcxDBCalcEdit;
    ACBrEnterTab1: TACBrEnterTab;
    pop1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    procedure btincluirClick(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVeiculo_novo: TfrmVeiculo_novo;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmVeiculo_novo.btincluirClick(Sender: TObject);
begin
  if self.tag = 100 then
  begin
    frmmodulo.qrveiculosnovos.Open;
    frmmodulo.qrveiculosnovos.Edit;
    frmmodulo.qrveiculosnovos.FieldByName('COR').asstring := edtcor.Text;
    frmmodulo.qrveiculosnovos.FieldByName('DESCRICAO_COR').AsString := edtdesccor.Text;
    frmmodulo.qrveiculosnovos.FieldByName('COD_MARC_MODELO').asstring := codmarca.Text;
    frmmodulo.qrveiculosnovos.FieldByName('CHASSI').asstring := edtchassi.Text;
    frmmodulo.qrveiculosnovos.FieldByName('VALOR_UNIT').Value := edtunit.Value;
    frmmodulo.qrveiculosnovos.FieldByName('FRETE_UNIT').Value := edtfrete.Value;
    frmmodulo.qrveiculosnovos.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrveiculosnovos.post;
  end
  else
  begin
    frmmodulo.qrveiculosnovos.FieldByName('codcte').asstring := frmmodulo.qrconhecimento.Fields.fieldbyname('numero').AsString;
    frmmodulo.qrveiculosnovos.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrveiculosnovos.post;
  end;
  frmmodulo.Conexao.Commit;
  close;
end;

procedure TfrmVeiculo_novo.AdvGlowButton14Click(Sender: TObject);
begin
  close;
end;

end.

