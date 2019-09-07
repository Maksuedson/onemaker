object frmResultadoWebService: TfrmResultadoWebService
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Resultado WebService'
  ClientHeight = 264
  ClientWidth = 619
  Color = 8421440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 619
    Height = 264
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 48
    ExplicitWidth = 625
    ExplicitHeight = 245
    object WBResposta: TWebBrowser
      Left = 10
      Top = 10
      Width = 599
      Height = 203
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 569
      ExplicitHeight = 261
      ControlData = {
        4C000000E93D0000FB1400000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126200000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object pnTexto: TPanel
      Left = 10
      Top = 213
      Width = 599
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'pnTexto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 194
      ExplicitWidth = 605
    end
  end
end
