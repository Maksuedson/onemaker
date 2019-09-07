unit unVendasSat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Grids, DBGrids, ComCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, StdCtrls, Dialogs, Buttons, Mask, AdvGlowButton;

type
  TfrmVendasSat = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    qVendas: TZQuery;
    dsVendas: TDataSource;
    Label2: TLabel;
    btnOp1: TButton;
    btnOp2: TButton;
    mCancelamentoEnviar: TMemo;
    btnCancela: TButton;
    Label1: TLabel;
    qTempSat: TZQuery;
    qRetornoSat: TZQuery;
    qRetornoSatCONTROLE: TIntegerField;
    qRetornoSatXML_TEMP: TMemoField;
    qRetornoSatXML_CFE: TMemoField;
    qRetornoSatTERMINAL: TIntegerField;
    qRetornoSatSTATUS: TIntegerField;
    qRetornoSatDATA: TDateField;
    qRetornoSatHORA: TTimeField;
    qRetornoSatCHAVE: TStringField;
    qRetornoSatARQ_XML: TStringField;
    qRetornoSatULT_SESSAO: TIntegerField;
    qRetornoSatRETORNO: TStringField;
    qLimpaRetorno: TZQuery;
    qVendasCONTROLE: TIntegerField;
    qVendasXML_TEMP: TMemoField;
    qVendasXML_CFE: TMemoField;
    qVendasTERMINAL: TIntegerField;
    qVendasSTATUS: TIntegerField;
    qVendasDATA: TDateField;
    qVendasHORA: TTimeField;
    qVendasCHAVE: TStringField;
    qVendasARQ_XML: TStringField;
    qVendasULT_SESSAO: TIntegerField;
    qVendasRETORNO: TStringField;
    qVendasXML_CFE_CANC: TBlobField;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure btnOp2Click(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnOp1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendasSat: TfrmVendasSat;

implementation

uses unPDV;

{$R *.dfm}

procedure TfrmVendasSat.FormCreate(Sender: TObject);
begin
qVendas.SQL.Clear;
qVendas.SQL.Text := 'select * from TEMP_SAT where DATA = :vIni'+#13+
                    'order by HORA desc';
qVendas.ParamByName('vIni').AsDate := Date;
qVendas.Open;
if qVendas.IsEmpty then begin
   btnOp1.Enabled := False;
   btnOp2.Enabled := False;
end;
end;

procedure TfrmVendasSat.btnOp2Click(Sender: TObject);
begin
if MessageDlg('CONFIRMAÇÃO!'+#13+'Deseja realmente cancelar o cupom ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
   mCancelamentoEnviar.Lines.Clear;
   frmPDV.ACBrSAT.CFe.Clear;
   frmPDV.ACBrSAT.CFe.AsXMLString := qVendasXML_CFE.AsString;
   frmPDV.ACBrSAT.CFe2CFeCanc;
   mCancelamentoEnviar.Lines.Text := frmPDV.ACBrSAT.CFeCanc.GerarXML(True);
   btnCancela.Click;
end;
end;

procedure TfrmVendasSat.btnCancelaClick(Sender: TObject);
var NumControle, i: Integer;
begin
Randomize;
NumControle := frmPDV.nPdv * Round(Random(9999));
qTempSat.ParamByName('CONTROLE').AsInteger := NumControle;
qTempSat.ParamByName('XML_TEMP').AsString := mCancelamentoEnviar.Lines.Text;
qTempSat.ParamByName('CHAVE').AsString := qVendasCHAVE.AsString;
qTempSat.ParamByName('TERMINAL').AsInteger := frmPDV.nPdv;
qTempSat.ParamByName('STATUS').AsInteger := -1;
qTempSat.ExecSQL;

i := 0;
while i < 6 do begin
   sleep(1000);
   qRetornoSat.Close;
   qRetornoSat.SQL.Clear;
   qRetornoSat.SQL.Text := 'select * from TEMP_SAT where CONTROLE = :vNum and STATUS = 2';
   qRetornoSat.ParamByName('vNum').AsInteger := NumControle;
   qRetornoSat.Open;
   if not(qRetornoSat.IsEmpty) then begin
         if qRetornoSatRETORNO.AsString = '.' then begin
            qVendas.Edit;
            qVendasXML_CFE_CANC.Clear;
            qVendasXML_CFE_CANC.AsString := qRetornoSatXML_CFE.AsString;
            qVendasSTATUS.AsInteger := 2;
            qVendasULT_SESSAO.AsInteger := qRetornoSatULT_SESSAO.AsInteger;
            qVendas.Post;
            qRetornoSat.Delete;
            frmPDV.ACBrSAT.CFeCanc.Clear;
            frmPDV.ACBrSAT.CFe.AsXMLString := qVendasXML_CFE.AsString;
            frmPDV.ACBrSAT.CFeCanc.AsXMLString := qVendasXML_CFE_CANC.AsString;
            frmPDV.ACBrSAT.ImprimirExtratoCancelamento;
            Abort;
         end else begin
         ShowMessage(qRetornoSatRETORNO.AsString);
         qRetornoSat.Delete;
         Abort;
         end;
   end else inc(i);
end;
// Sem retorno (Monitor ou SAT)
ShowMessage('NÃO FOI POSSÍVEL CANCELAR O CUPOM !');
qLimpaRetorno.ParamByName('vPdv').AsInteger := frmPDV.nPdv;
qLimpaRetorno.ExecSQL;
end;

procedure TfrmVendasSat.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if qVendasSTATUS.AsInteger = 2 then begin
   DBGrid1.Canvas.Font.Color := clRed;
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;
end;

procedure TfrmVendasSat.btnOp1Click(Sender: TObject);
begin
  if qVendasSTATUS.AsInteger = 1 then
  begin
     frmPDV.ACBrSAT.CFe.Clear;
     frmPDV.ACBrSAT.CFe.AsXMLString := qVendasXML_CFE.AsString;
     frmPDV.ACBrSAT.ImprimirExtrato;
  end
  else
  if qVendasSTATUS.AsInteger = 2 then
  begin
    frmPDV.ACBrSAT.CFe.Clear;
    frmPDV.ACBrSAT.CFe.AsXMLString := qVendasXML_CFE.AsString;
    frmPDV.ACBrSAT.CFeCanc.AsXMLString := qVendasXML_CFE_CANC.AsString;
    frmPDV.ACBrSAT.ImprimirExtratoCancelamento;
  end;
end;

end.
