object frmentrada: Tfrmentrada
  Left = 414
  Top = 301
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'frmentrada'
  ClientHeight = 99
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object fltpnl1: TFlatPanel
    Left = 1
    Top = 43
    Width = 332
    Height = 41
    Caption = '1 - Dinheiro   2 - Cheque '#224' Vista   3 - Cart'#227'o de D'#233'bito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = True
    ColorHighLight = 16776176
    TabOrder = 0
  end
  object fltpnl2: TFlatPanel
    Left = 2
    Top = 1
    Width = 330
    Height = 41
    ParentColor = True
    ColorHighLight = 16776176
    TabOrder = 1
    object lbl1: TLabel
      Left = 62
      Top = 8
      Width = 134
      Height = 20
      Caption = 'Tipo de Entrada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt1: TEdit
      Left = 210
      Top = 4
      Width = 29
      Height = 32
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '1'
      OnKeyPress = edt1KeyPress
    end
  end
end
