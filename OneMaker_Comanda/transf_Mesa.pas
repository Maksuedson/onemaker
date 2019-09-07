unit transf_Mesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, DB, MemDS, DBAccess, AdvSmoothTouchKeyBoard, Vcl.ExtCtrls,
  dxGDIPlusClasses, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, Uni;

type
  TfrmTransf_Mesa = class(TForm)
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    EDIT1: TRzNumericEdit;
    query: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransf_Mesa: TfrmTransf_Mesa;

implementation

uses Modulo, principal;

{$R *.dfm}

procedure TfrmTransf_Mesa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmTransf_Mesa.AdvMetroButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmTransf_Mesa.EDIT1KeyPress(Sender: TObject; var Key: Char);
var
  edit2: string;
begin
  if Key = #27 then
    close;
  if Key = #13 then // enter
  begin
    //integracao catraca
    edit2 := Copy(EDIT1.Text, 3, 5);
    EDIT1.Text := edit2;

    if EDIT1.value <= 0 then
      exit;
    bContinua_mesa := true;
    sMesa_Numero := EDIT1.Text;
    close;
  end;
end;

end.
