object frmProtetor_tela: TfrmProtetor_tela
  Left = 3
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmProtetor_tela'
  ClientHeight = 768
  ClientWidth = 1024
  Color = clBlack
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 512
    Top = 112
    Width = 594
    Height = 77
    Caption = 'Caixa Indispon'#237'vel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 768
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Caixa Indispon'#237'vel'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -264
  end
  object Timer1: TTimer
    Interval = 5000
    Left = 400
    Top = 80
  end
end
