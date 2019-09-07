object frmcliente_info: Tfrmcliente_info
  Left = 886
  Top = 341
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cliente - Informa'#231#245'es'
  ClientHeight = 288
  ClientWidth = 574
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 688
    Top = 513
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Panel1: TPanel
    Left = -1
    Top = -1
    Width = 760
    Height = 289
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 136
      Top = 12
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 8
      Top = 36
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label5: TLabel
      Left = 8
      Top = 60
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label6: TLabel
      Left = 264
      Top = 60
      Width = 69
      Height = 13
      Caption = 'Complemento:'
    end
    object Label7: TLabel
      Left = 8
      Top = 84
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label8: TLabel
      Left = 400
      Top = 84
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object Label9: TLabel
      Left = 464
      Top = 84
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object Label10: TLabel
      Left = 8
      Top = 108
      Width = 51
      Height = 13
      Caption = 'Telefones:'
    end
    object Label11: TLabel
      Left = 8
      Top = 140
      Width = 31
      Height = 13
      Caption = 'Limite:'
    end
    object Label12: TLabel
      Left = 8
      Top = 164
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label13: TLabel
      Left = 8
      Top = 196
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 8
      Width = 49
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'CODIGO'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 8
      Width = 393
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'NOME'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 32
      Width = 489
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'ENDERECO'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 80
      Top = 56
      Width = 169
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'BAIRRO'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 344
      Top = 56
      Width = 225
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'COMPLEMENTO'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 80
      Top = 80
      Width = 305
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'CIDADE'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 424
      Top = 80
      Width = 33
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'UF'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 496
      Top = 80
      Width = 73
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'CEP'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 80
      Top = 104
      Width = 89
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'TELEFONE1'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 176
      Top = 104
      Width = 89
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'TELEFONE2'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 272
      Top = 104
      Width = 89
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'TELEFONE3'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 368
      Top = 104
      Width = 89
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'CELULAR'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 11
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 80
      Top = 136
      Width = 121
      Height = 19
      DataSource = dscliente
      DataField = 'LIMITE'
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      DisplayFormat = '###,###,##0.00'
    end
    object ed_situacao: TEdit
      Left = 80
      Top = 160
      Width = 121
      Height = 19
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit13: TDBEdit
      Left = 80
      Top = 192
      Width = 489
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'OBS1'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 14
    end
    object DBEdit14: TDBEdit
      Left = 80
      Top = 216
      Width = 489
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'OBS2'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 15
    end
    object DBEdit15: TDBEdit
      Left = 80
      Top = 240
      Width = 489
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'OBS3'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 16
    end
    object DBEdit16: TDBEdit
      Left = 80
      Top = 264
      Width = 489
      Height = 19
      Color = clWhite
      Ctl3D = False
      DataField = 'OBS4'
      DataSource = dscliente
      ParentCtl3D = False
      TabOrder = 17
    end
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 528
    Top = 392
  end
  object dscliente: TDataSource
    DataSet = qrcliente
    Left = 624
    Top = 424
  end
  object PopupMenu1: TPopupMenu
    Left = 664
    Top = 384
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end
