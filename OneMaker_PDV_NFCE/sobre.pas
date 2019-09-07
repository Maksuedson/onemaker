unit sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvReflectionImage, ExtCtrls, StdCtrls, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, dxGDIPlusClasses, NxCollection,
  RzLabel;

type
  TForm_sobre = class(TForm)
    Image1: TImage;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label56: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_sobre: TForm_sobre;

implementation

{$R *.dfm}

procedure TForm_sobre.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

end.

