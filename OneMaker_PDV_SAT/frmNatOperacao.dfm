object frmnatureza: Tfrmnatureza
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Natureza de Opera'#231#227'o'
  ClientHeight = 121
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 8
    Top = 16
    Width = 705
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 1
    ParentFont = False
    TabOrder = 0
    Text = '5102 - Venda de mercadoria de terceiros '
    Items.Strings = (
      '5101 - Venda de produ'#231#227'o do estabelecimento'
      '5102 - Venda de mercadoria de terceiros '
      
        '5115 - Venda de mercadoria de terceiros, recebida anteriormente ' +
        'em consigna'#231#227'o mercantil '
      
        '5401 - Venda de produ'#231#227'o do estabelecimento em opera'#231#227'o  com pro' +
        'duto sujeito a ST, como contribuinte substituto'
      
        '5403 - Venda de mercadoria de terceiros em opera'#231#227'o com mercador' +
        'ia sujeita a ST, como contribuinte substituto'
      
        '5405 - Venda de mercadoria de terceiros, sujeita a ST, como cont' +
        'ribuinte substitu'#237'do'
      
        '5656 - Venda de combust'#237'vel ou lubrificante de terceiros, para c' +
        'onsumidor final'
      
        '5933 - Presta'#231#227'o de servi'#231'o tributado pelo ISSQN (Nota Fiscal co' +
        'njugada)')
  end
  object Button1: TButton
    Left = 8
    Top = 72
    Width = 145
    Height = 41
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 72
    Width = 153
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = Button2Click
  end
end
