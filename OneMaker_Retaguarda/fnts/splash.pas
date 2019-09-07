
unit splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VrProgressBar, VrControls, VrGauge,
  TFlatProgressBarUnit, ComCtrls, ExtCtrls, StdCtrls, jpeg, ExeInfo, RzPrgres, AdvShapeButton,
  dxGDIPlusClasses, acPNG, Vcl.WinXCtrls;

type
  Tfrmsplash = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    ExeInfo1: TExeInfo;
    p: TRzProgressBar;
    Label3: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsplash: Tfrmsplash;
  I: INTEGER;

implementation

{$R *.dfm}

procedure Tfrmsplash.Timer1Timer(Sender: TObject);
begin
  I := I + 5;

  P.percent := P.percent + 5;

  if (P.percent mod 5) = 0 then
  begin
    if LABEL1.Font.Color = CLWHITE then
      LABEL1.FoNT.Color := clGray else
      LABEL1.FoNT.Color := clWHITE;
  end;

  if P.percent = 100 then
  begin
    LABEL1.CAPTION := 'SISTEMA CARREGADO COM SUCESSO!';
  end;

  if I = 120 then CLOSE;

end;

procedure Tfrmsplash.FormShow(Sender: TObject);
begin
  label2.caption := ExeInfo1.fileVersion;
end;

end.
