unit uACBR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrBase, ACBrECF;

type
  TfrmACBR = class(TForm)
    ACBR: TACBrECF;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmACBR: TfrmACBR;

implementation

{$R *.dfm}

end.
