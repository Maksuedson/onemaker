unit GerarNotaFiscalPaulista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, ExtCtrls, XPMan, acPNG;

type
  TFGerarNFP = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BT_GERAR_ATO_COTEPE: TButton;
    ED_DATA_INICIAL: TMaskEdit;
    ED_DATA_FINAL: TMaskEdit;
    XPManifest1: TXPManifest;
    Image1: TImage;
    procedure BT_GERAR_ATO_COTEPEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGerarNFP: TFGerarNFP;

implementation

uses unECF;

{$R *.dfm}

procedure TFGerarNFP.BT_GERAR_ATO_COTEPEClick(Sender: TObject);
var
  Str_DataInicial, Str_DataFinal, cArqDestino: String;
  Int_Confirma, i, iRetorno : Integer;
begin
  BT_GERAR_ATO_COTEPE.Enabled := False;

  Str_DataInicial := Trim(ED_DATA_INICIAL.Text);
  Str_DataFinal := Trim(ED_DATA_FINAL.Text);


  iRetorno := Bematech_FI_GeraRegistrosCAT52MFDEx( pchar( '' ), pchar( ED_DATA_INICIAL.Text ), 'C:\NFP' );

  ShowMessage('Retorno: ' + IntToStr(iRetorno) );
  BT_GERAR_ATO_COTEPE.Enabled := true;

end;

end.
