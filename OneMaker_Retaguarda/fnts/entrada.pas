unit entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit;

type
  Tfrmentrada = class(TForm)
    fltpnl1: TFlatPanel;
    fltpnl2: TFlatPanel;
    edt1: TEdit;
    lbl1: TLabel;
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

    x: Integer;
    y: string;
  end;

var
  frmentrada: Tfrmentrada;


implementation

uses venda_fechamento, venda_contasreceber;

{$R *.dfm}

procedure Tfrmentrada.edt1KeyPress(Sender: TObject; var Key: Char);

begin
  x := StrToInt(edt1.Text);

  if key = #13 then
  begin
    if (x > 3) or (x = 0) then
    begin
      ShowMessage('Escolha Inválida!!!');
      Exit;
    end
    else
     //guarda a entrada escolhida
     //y:=edt1.Text;
     //chama parcelamento
      frmvenda_contasreceber.tipo := edt1.Text;


  end;

end;

end.
