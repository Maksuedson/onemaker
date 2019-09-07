unit produto_total;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Collection, TFlatPanelUnit,
  AdvGlowButton, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, acPNG;

type
  Tfrmproduto_total = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_total: Tfrmproduto_total;
    const
   sc_DragMove = $f012;
implementation

{$R *.dfm}

procedure Tfrmproduto_total.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_total.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmproduto_total.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_total.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_total.FormShow(Sender: TObject);
begin
  //bitbtn1.setfocus;
end;

end.
