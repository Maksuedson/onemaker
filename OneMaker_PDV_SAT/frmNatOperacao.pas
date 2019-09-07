unit frmNatOperacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrmnatureza = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnatureza: Tfrmnatureza;

implementation

{$R *.dfm}

uses modulo, venda;

procedure Tfrmnatureza.Button1Click(Sender: TObject);
begin
  with frmModulo do
  begin
    edtNatOperacao := ComboBox1.Items[ComboBox1.ItemIndex];
    bContinuaNFCE := True;
    Close;
  end;
end;

procedure Tfrmnatureza.Button2Click(Sender: TObject);
begin
  bContinuaNFCE := False;
  Close;
end;

procedure Tfrmnatureza.FormShow(Sender: TObject);
begin
  bContinuaNFCE := False;
end;

end.
