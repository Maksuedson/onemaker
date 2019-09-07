object frmTransf_Mesa: TfrmTransf_Mesa
  Left = 467
  Top = 556
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Transfer'#234'ncia de Produtos para outra Mesa / Comanda'
  ClientHeight = 172
  ClientWidth = 433
  Color = 8440061
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 512
    Top = 272
    Width = 221
    Height = 19
    Caption = 'N'#250'mero da Mesa/Comanda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Caption = 'N'#250'mero da Mesa/Comanda'
    Color = 5460819
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 40
    Width = 433
    Height = 132
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 7
    ExplicitTop = 53
    ExplicitWidth = 423
    ExplicitHeight = 141
    object EDIT1: TRzNumericEdit
      Left = 48
      Top = 38
      Width = 345
      Height = 48
      Alignment = taCenter
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
      DisplayFormat = ',0;(,0)'
    end
  end
  object query: TUniQuery
    Connection = frmModulo.Conexao
    Left = 416
    Top = 223
  end
end
