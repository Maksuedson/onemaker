unit UClassHelper;

interface

uses
  StdCtrls, DBCtrls, Graphics, Controls;

type
  TEditX = class(TEdit)
  private
    FOldColor: TColor;
  protected
    procedure DoEnter; override;
    procedure DoExit; override;
  end;

  TEdit = class(TEditX)
  end;

  TDBEditX = class(TDBEdit)
  private
    FOldColor: TColor;
  protected
    procedure DoEnter; override;
    procedure DoExit; override;
  end;

  TDBEdit = class(TDBEditX)
  end;

  TComboBoxX = class(TComboBox)
  private
    FOldColor: TColor;
  protected
    procedure DoEnter; override;
    procedure DoExit; override;
  end;

  TComboBox = class(TComboBoxX)
  end;

const
  _COR = clYellow;

Implementation

{ TDBEditX }

procedure TDBEditX.DoEnter;
begin
  inherited;
  FOldColor := Color;
  Color     := _COR;
end;

procedure TDBEditX.DoExit;
begin
  inherited;
  Color     := FOldColor;
end;

{ TComboBoxX }

procedure TComboBoxX.DoEnter;
begin
  inherited;
  FOldColor := Color;
  Color     := _COR;
end;

procedure TComboBoxX.DoExit;
begin
  inherited;
  Color := FOldColor;
end;

{ TEditX }

procedure TEditX.DoEnter;
begin
  inherited;

end;

procedure TEditX.DoExit;
begin
  inherited;

end;

end.
