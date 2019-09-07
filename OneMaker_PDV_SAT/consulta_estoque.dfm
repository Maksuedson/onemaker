object frmConsulta_Estoque: TfrmConsulta_Estoque
  Left = 570
  Top = 374
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Estoque'
  ClientHeight = 133
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -37
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PopupMenu = MENU_FISCAL
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 45
  object StatusBar1: TStatusBar
    Left = 0
    Top = 114
    Width = 403
    Height = 19
    Panels = <
      item
        Text = 'Atualizado em 01/01/2009 '#224's 13:00 hs'
        Width = 50
      end>
    ExplicitTop = 143
    ExplicitWidth = 409
  end
  object lb_estoque: TPanel
    Left = 0
    Top = 0
    Width = 403
    Height = 114
    Align = alClient
    BevelOuter = bvNone
    Caption = '1,00 kg'
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 409
    ExplicitHeight = 97
  end
  object MENU_FISCAL: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.2.1'
    Left = 384
    Top = 184
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end
