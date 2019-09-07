object FrmZipNfe: TFrmZipNfe
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Compactador de arquivos'
  ClientHeight = 321
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 321
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 5
      Width = 79
      Height = 13
      Caption = 'Selecione Pasta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 183
      Top = 5
      Width = 110
      Height = 13
      Caption = 'Arquivos a Compactar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 260
      Width = 143
      Height = 13
      Caption = 'Caminho Para Salvar Arquivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 8
      Top = 24
      Width = 161
      Height = 225
      TabOrder = 0
      OnChange = DirectoryListBox1Change
    end
    object FileListBox1: TFileListBox
      Left = 175
      Top = 24
      Width = 307
      Height = 225
      ItemHeight = 13
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 8
      Top = 279
      Width = 376
      Height = 21
      TabOrder = 2
      Text = 'C:\OneMaker\Server\Contador\NFe.zip'
    end
    object Button1: TButton
      Left = 390
      Top = 277
      Width = 75
      Height = 25
      Caption = 'Compactar'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 440
    Top = 344
  end
  object OpenDialog2: TOpenDialog
    Left = 352
    Top = 304
  end
  object ZipMaster1: TZipMaster
    ConfirmErase = False
    Version = '1.9.2.0023'
    Left = 496
    Top = 280
  end
end
