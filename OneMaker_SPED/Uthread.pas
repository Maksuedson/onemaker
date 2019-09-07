unit Uthread;

interface

uses
  Classes, SysUtils, Dialogs, Graphics, Windows, Forms, ComCtrls;

  type
  TThreadUtil = class(TThread)
  private
    { private declarations }
  protected
    { protected declarations }
    procedure Execute; override;
  public
    { public declarations }

  published
    { published declarations }
  end;


implementation

{ TThreadUtil }

uses UPrincipal;

procedure TThreadUtil.Execute;
begin
//  inherited;
  FPrincipal.ThreadUtil.Resume;

end;

end.
