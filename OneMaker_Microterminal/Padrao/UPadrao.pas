unit UPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Dialogs, ActnList, ImgList, jpeg,
  System.ImageList, System.Actions
  ;

type
  wDireccao = (dHorizontal, dVertical);
  TTipoMensagem = (tmAviso, tmAlerta, tmErro, tmQuestao);

  TFPadrao = class(TForm)
    pnlCabecalho: TPanel;
    imgCabecalho: TImage;
    bvCabecalho: TBevel;
    lblCabecalho: TLabel;
    ALPadrao: TActionList;
    imgPadrao: TImageList;
    imgLogotipo: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function MsgPadrao(sCaption, sTexto: string; TipoMensagem: TTipoMensagem): Boolean;
  protected
    procedure degrade(xcanvas: TCanvas; xwidth, xheight: Integer; xcorInicio, xcorFim: TColor; xdirecao: wDireccao);
    procedure degradeCabecalho;

    function MsgAviso(sCaption, sTexto: string): Boolean;
    function MsgAlerta(sCaption, sTexto: string): Boolean;
    function MsgErro(sCaption, sTexto: string): Boolean;
    function MsgQuestao(sCaption, sTexto: string): Boolean;
  public
    { Public declarations }
  end;
var
  FPadrao: TFPadrao;

const
  _CORINI = clWhite;
  _CORFIM = $00479AED;

implementation

uses
  UMensagem;

{$R *.dfm}

{ TFPadrao }

procedure TFPadrao.degrade(xcanvas: TCanvas; xwidth, xheight: Integer;
  xcorInicio, xcorFim: TColor; xdirecao: wDireccao);
var
  RGBInicio, RGBFim, RGBDif: array[0..2] of byte;
  contador, Vermelho, Verde, Azul: integer;
  Banda: TRect;
  Factor: array[0..2] of shortint;
begin
  with xcanvas do
  begin
    { Origem }
    RGBInicio[0] := GetRValue(ColorToRGB(xcorInicio));
    RGBInicio[1] := GetGValue(ColorToRGB(xcorInicio));
    RGBInicio[2] := GetBValue(ColorToRGB(xcorInicio));

    { Destino }
    RGBFim[0] := GetRValue(ColorToRGB(xcorFim));
    RGBFim[1] := GetGValue(ColorToRGB(xcorFim));
    RGBFim[2] := GetBValue(ColorToRGB(xcorFim));

    for contador := 0 to 2 do
    begin
      RGBDif[contador] := Abs(RGBFim[contador] - RGBInicio[contador]);
      if RGBFim[contador] > RGBInicio[contador] then
        factor[contador] := 1
      else
        factor[contador] := -1;
    end;

    Pen.Style := psSolid;
    Pen.Mode := pmCopy;

    if (xdirecao = dhorizontal) or (xdirecao = dvertical) then
    begin
      copymode := cmSrcPaint;

      if xdirecao = dhorizontal then
      begin
        Banda.Left := 0;
        Banda.Right := xWidth;
      end
      else
      begin
        Banda.Top := 0;
        Banda.Bottom := xheight;
      end;

      for contador := 0 to 255 do
      begin

        if xdirecao = dhorizontal then
        begin
          Banda.Top := MulDiv(contador, xHeight, 256);
          Banda.Bottom := MulDIv(contador + 1, xHeight, 256);
        end
        else
        begin
          Banda.Left := MulDiv(contador, xwidth, 256);
          Banda.Right := MulDIv(contador + 1, xwidth, 256);
        end;

        Vermelho := RGBInicio[0] + factor[0] * MulDiv(contador, RGBDif[0], 255);
        Verde := RGBInicio[1] + factor[1] * MulDiv(contador, RGBDif[1], 255);
        Azul := RGBInicio[2] + factor[2] * MulDiv(contador, RGBDif[2], 255);
        Brush.Color := RGB(Vermelho, Verde, Azul);
        FillRect(Banda);
      end;
    end;
  end;
end;

procedure TFPadrao.degradeCabecalho;
begin
  with imgCabecalho do
  begin
    degrade(Canvas, Width, Height, _CORINI, _CORFIM, dVertical);
    Repaint;
  end;
end;

procedure TFPadrao.FormCreate(Sender: TObject);
begin
  degradeCabecalho;
  lblCabecalho.Caption := Caption;
end;

function TFPadrao.MsgPadrao(sCaption, sTexto: string; TipoMensagem: TTipoMensagem): Boolean;
var
  frm: TFMensagem;
begin
  try
    frm := TFMensagem.Create(nil);
    Result := frm.Mensagem(sCaption, sTexto, TipoMensagem);
  finally
    frm.Destroy;
    frm := nil;
  end;
end;

function TFPadrao.MsgAlerta(sCaption, sTexto: string): Boolean;
begin
  Result := MsgPadrao(sCaption, sTexto, tmAlerta);
end;

function TFPadrao.MsgAviso(sCaption, sTexto: string): Boolean;
begin
  Result := MsgPadrao(sCaption, sTexto, tmAviso);
end;

function TFPadrao.MsgErro(sCaption, sTexto: string): Boolean;
begin
  Result := MsgPadrao(sCaption, sTexto, tmErro);
end;

function TFPadrao.MsgQuestao(sCaption, sTexto: string): Boolean;
begin
  Result := MsgPadrao(sCaption, sTexto, tmQuestao);
end;

end.
