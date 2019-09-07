object frmecfserver: Tfrmecfserver
  Left = 501
  Top = 342
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmecfserver'
  ClientHeight = 66
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 96
    Width = 297
    Height = 8
    Alignment = taCenter
    AutoSize = False
    Font.Charset = OEM_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object PopupMenu1: TPopupMenu
    Left = 52
    Top = 32
    object ECFServer101: TMenuItem
      Caption = 'ECF Server 1.0'
      Enabled = False
    end
    object N1: TMenuItem
      Caption = '-'
      Enabled = False
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 24
    Top = 160
  end
  object tempo_ecf: TTimer
    Enabled = False
    OnTimer = tempo_ecfTimer
    Left = 56
    Top = 168
  end
  object Conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    HostName = ''
    Port = 0
    Database = 'C:\elpro\complus\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-1.5'
    Left = 120
    Top = 32
  end
  object qrecf_comando: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000072')
    Params = <>
    Left = 48
    Top = 64
  end
  object qrecf_item: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000073')
    Params = <>
    Left = 16
    Top = 96
  end
  object qrconfig: TZQuery
    Connection = ConexaoLocal
    SQL.Strings = (
      'select * from c000001')
    Params = <>
    Left = 32
    Top = 120
  end
  object ConexaoLocal: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    HostName = ''
    Port = 0
    Database = 'C:\elpro\Complus\bd\LOCAL.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-1.5'
    Left = 152
    Top = 32
  end
end
