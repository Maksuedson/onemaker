object frmnotafiscal_menu: Tfrmnotafiscal_menu
  Left = 373
  Top = 196
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'OneMaker - NFe - 4.0'
  ClientHeight = 621
  ClientWidth = 826
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 826
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label8: TLabel
      Left = 31
      Top = 17
      Width = 37
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 8
      Top = 17
      Width = 19
      Height = 13
      Caption = 'F6 |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 321
      Top = 19
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 424
      Top = 17
      Width = 62
      Height = 13
      Caption = 'Lan'#231'amento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 693
      Top = 17
      Width = 6
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object ecliente: TRzButtonEdit
      Left = 70
      Top = 14
      Width = 249
      Height = 21
      Text = ''
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 1
      OnEnter = eclienteEnter
      OnExit = eclienteExit
      OnKeyPress = eclienteKeyPress
      ButtonGlyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ButtonNumGlyphs = 1
      ButtonKind = bkCustom
      AltBtnWidth = 15
      ButtonWidth = 22
      OnButtonClick = eclienteButtonClick
    end
    object ENUMERO: TEdit
      Left = 365
      Top = 15
      Width = 54
      Height = 21
      Color = clWhite
      TabOrder = 2
      Text = '000000'
      OnEnter = ENUMEROEnter
      OnExit = ENUMEROExit
      OnKeyPress = ENUMEROKeyPress
    end
    object DateEdit1: TJvDateEdit
      Left = 486
      Top = 14
      Width = 97
      Height = 21
      Color = clWhite
      NumGlyphs = 2
      ShowNullDate = False
      TabOrder = 3
      OnEnter = DateEdit1Enter
      OnExit = eclienteExit
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TJvDateEdit
      Left = 589
      Top = 14
      Width = 97
      Height = 21
      Color = clWhite
      NumGlyphs = 2
      ShowNullDate = False
      TabOrder = 4
      OnEnter = DateEdit1Enter
      OnExit = eclienteExit
      OnKeyPress = DateEdit2KeyPress
    end
    object bfiltrar: TAdvGlowButton
      Left = 695
      Top = 3
      Width = 79
      Height = 43
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000054D4944415478DAC4D7DF8B9C671507F0EFF79CE77DDF99C4664D50
        CC9A0B830D16B72D0D4D415A6CD6884469ABD874D57AD1D4E642BD30FE01DB48
        525484820822A537B651902E1A0435118D12E8D652286D31E0452F62A9945A54
        D8B524BB3BF3BECF39C78BF9D1D99D992415C407E6EAFDCCFB3C33E79CEFCCCB
        235F3801A9D26D01FF9616F22900B5D576869047F34677D56A0385080FA45601
        6D157B03FE9816FA5900B0C67E43C849EB34AFE74E33B45A2A52BBDA19F0EF6A
        A90B004A6BFC8F847CDBBBF922EF5F589C2B67DA2FBB7B0B1100009000F8E77A
        75ED4E6BAC4321C202A9953E50EEDCF67278EC19B514BE59AFAE1FC8DDFC8F81
        D5525BE5CEED2F00B17FD48A48A77EBB73406FB9E3D04F407C14FD6BC3C5D8CD
        244D6A15CF6A9590DA05B44A3F04313F66113B24C92EADD2AF07565A6991822F
        6FB58148547E58287270FC460002D042EFD552A1A542AB044972789A1595C3A3
        5693DC3BCD52795088A8317D754002ECBF03E84E9544778BED4CA7ACC51A5F82
        70D255E44E7EAAB9D2455E6BD05CA961DD7C1A32E14E0258379F1EB5B9939F02
        2759C21A5BD29B3EF2F13FA556791888D9D14D113C9D2F771FCB1B0DBC715837
        83E073A95D7C0CC0BE514BF277F972FDF5BC5E0F2D1C17B555EE05B17FB3D557
        F25A7D54E76E9DEFC2E3E970EF489236894BDEC9DF09E7A9704744804A808496
        0518FC5998AD48A13710F89B77F3F791F9CD0820DC87560A0529BF0AB337A4D0
        1D04DEF2DA9E448E6300D679E44B2740F6AA92DA090090D76A5012AC697A9F74
        30C7ED12A28A888CB4BD022290D76B90096E86BC51BF33C7558216C566BB9141
        0822BC5F310A36D563D824133BA3777D74E6AF66316A31B409C3261CE9FD084C
        1C85018B2D16EFC646BF1F7B73B5872A4F00780DC0AB4C7A92421DDBBC57EF19
        267D1CC025009798F4712A67C60E100085CAA42701BC0AE035AA3C41953D0880
        9F7F60F183D57BDB2FB9FBEC96C83C5FAFAC7DDA6A03751899ED72D7B617C2E3
        B62D9179B15E59BF3377F2C6C06AA928776DFF3D1087B744E65BDD7F6FDCA1B7
        1C38F42484778D9D9871235556B44C2FA62A415B0952E9F7283C322132775358
        6999FE30B05AA5E3547E633C3271830867450AB96F629D02D0521F4CDB12B45D
        F4B2BAD085A9F15AEA42DAD6DB34B50B68A90F4EB60149725FEA6D4A5C750D0E
        16B8BE15D786E239CEF66A3A3E0A56DB525ECFB04E46DEC8B0C6CE4C3C63CF9E
        D9646B5B9A6C09CF7EF6FFD75C73B7CE5F466029CCDA92E47D24FEE95DFB110C
        5F0BF78808507A21A165CA049F093395A4BB49AC7A6D3F46C6B1F0B812EE432B
        854228CF849B4BD2591297BDB6A5C8F110027F1F89CC406A17FFE3C86CFA9119
        FDE4DA5AE3EB89C1FFD6F623B41F997CF79139ECF46B44A6C7C4A9907EB41554
        2E02781EC005AA1C83707CF39E05558E035806B04C95E39C62D1B3C7005C00F0
        3C958B14160820B9F94C7A4F7521C26E1F1C4C5AE9108277E7357F24CC81E8D5
        2DCC28ADF2B711FCCCD056E96E92F7E40DBB27CC032108778439A494A7417E65
        684BBD8BD407F2DBCD27F5E6DB3FF103267E6EFC5F26F6837C5D0ABDD88BCB04
        2DF504937C7582DD47224BA1CB5AF5AC94FAB014726A829D2531C32F3E726A25
        023B3179D69741CE8FD4FE52046E9C62FF0A725FEF3B26003C1B1E07A7F4DC6A
        8A88F22A91D9DAFC7B8AEA2A8D54BD53E80002ADE9344A098BE5A931D8D839AB
        0D83979B9F9F66DDFCFCA8B56CE7A6D9B058E6FD0B8FCE9533AD6B3FC2782055
        D7F908E3012DAEF1083377F3FCBF009C0DF7F78B724F3FDA7E0AC3C3617625BC
        1F9900B4486B247F196EBB44F5432436BCB15FC070342CDE0CF3A1952459447E
        1E6E3B44752F89EC8D9F0BC35158FCE53F030019534159212DE2410000000049
        454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = BfiltrarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 527
    Width = 826
    Height = 40
    BevelOuter = bvNone
    Color = 5460819
    ParentBackground = False
    TabOrder = 1
    object Panel1: TPanel
      Left = -20
      Top = 0
      Width = 869
      Height = 39
      BevelOuter = bvNone
      Color = clWhite
      Enabled = False
      ParentBackground = False
      TabOrder = 0
      object Label3: TLabel
        Left = 674
        Top = 8
        Width = 28
        Height = 13
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 422
        Top = 8
        Width = 171
        Height = 13
        Caption = 'Quantidade de Documentos Fiscais:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 881
        Top = 8
        Width = 45
        Height = 13
        Caption = 'Empresa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object rtotal: TRzNumericEdit
        Left = 711
        Top = 4
        Width = 122
        Height = 24
        DisabledColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 16774120
        FrameHotTrack = True
        FrameStyle = fsLowered
        FrameVisible = True
        ParentFont = False
        ReadOnly = True
        ReadOnlyColor = clWindow
        TabOrder = 0
        OnEnter = DateEdit1Enter
        OnExit = eclienteExit
        DisplayFormat = ',0.00;(,0.00)'
      end
      object rqde: TRzNumericEdit
        Left = 597
        Top = 4
        Width = 67
        Height = 24
        Ctl3D = True
        DisabledColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 16774120
        FrameHotTrack = True
        FrameStyle = fsLowered
        FrameVisible = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        ReadOnlyColor = clWindow
        TabOrder = 1
        OnEnter = DateEdit1Enter
        OnExit = eclienteExit
        DisplayFormat = ',0;(,0)'
      end
      object RzDBEdit1: TRzDBEdit
        Left = 930
        Top = 5
        Width = 281
        Height = 21
        DataSource = dsnota
        DataField = 'empresa'
        Color = clWhite
        TabOrder = 2
        Visible = False
        OnEnter = DateEdit1Enter
        OnExit = eclienteExit
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 106
    Width = 826
    Height = 419
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object grid: TwwDBGrid
      Left = 1
      Top = 2
      Width = 825
      Height = 418
      ControlType.Strings = (
        'SITUACAO;ImageIndex;Original Size'
        'NFE_SITUACAO;ImageIndex;Original Size')
      Selected.Strings = (
        'SITUACAO'#9'3'#9'SIT'#9#9
        'NUMERO'#9'6'#9'NUMERO'#9'F'
        'MOVIMENTO'#9'2'#9'E/S'#9'F'
        'DATA'#9'10'#9'Emiss'#227'o'#9'F'
        'cliente'#9'38'#9'Destinat'#225'rio'#9'F'
        'MODELO_NF'#9'4'#9'Mod.'#9'F'
        'SERIE_NF'#9'4'#9'S'#233'rie'#9'F'
        'CFOP'#9'5'#9'CFOP'#9#9
        'TOTAL_NOTA'#9'10'#9'Total'#9'F'
        'DESCONTO'#9'7'#9'Desc.'#9'F'
        'DESCONTO_ITEM'#9'7'#9'Desc.It'#9'F'
        'BASE_CALCULO'#9'10'#9'Base C'#225'lc.'#9'F'#9'ICMS'
        'VALOR_ICMS'#9'10'#9'Valor'#9'F'#9'ICMS'
        'NFE_SITUACAO'#9'2'#9'NFe'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      OnRowChanged = gridRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsnota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      RowHeightPercent = 113
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = True
      UseTFields = False
      OnTitleButtonClick = gridTitleButtonClick
      OnKeyPress = gridKeyPress
      ImageList = ImageList2
      PaintOptions.AlternatingRowColor = 16316664
      PaintOptions.ActiveRecordColor = clBlack
    end
    object pn_nfe_log: TPanel
      Left = 59
      Top = 41
      Width = 721
      Height = 343
      Color = 15461355
      ParentBackground = False
      TabOrder = 1
      Visible = False
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 719
        Height = 22
        Align = alTop
        Caption = 'Informa'#231#245'es Nota Fiscal Eletr'#244'nica'
        Color = 3355443
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 320
        Top = 307
        Width = 75
        Height = 29
        Caption = 'Fechar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object PageControl2: TPageControl
        Left = 1
        Top = 23
        Width = 719
        Height = 278
        ActivePage = TabSheet2
        Align = alTop
        TabOrder = 2
        object TabSheet5: TTabSheet
          Caption = 'Respostas'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object MemoResp: TMemo
            Left = 0
            Top = 0
            Width = 711
            Height = 250
            Align = alClient
            TabOrder = 0
          end
          object WebBrowser1: TWebBrowser
            Left = 0
            Top = 0
            Width = 711
            Height = 250
            Align = alClient
            TabOrder = 1
            ExplicitTop = 3
            ExplicitHeight = 256
            ControlData = {
              4C0000007C490000D71900000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'XML Resposta'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object WBResposta: TWebBrowser
            Left = 0
            Top = 0
            Width = 711
            Height = 250
            Align = alClient
            TabOrder = 0
            ExplicitTop = 3
            ExplicitHeight = 256
            ControlData = {
              4C0000007C490000D71900000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Log'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object memoLog: TMemo
            Left = 0
            Top = 0
            Width = 711
            Height = 250
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'NFe'
          ImageIndex = 3
          object trvwNFe: TTreeView
            Left = 0
            Top = 0
            Width = 711
            Height = 250
            Align = alClient
            Indent = 19
            TabOrder = 0
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Configura'#231#245'es'
          ImageIndex = 5
          object PageControl1: TPageControl
            Left = 0
            Top = 0
            Width = 711
            Height = 207
            ActivePage = TabSheet11
            Align = alTop
            MultiLine = True
            TabOrder = 0
            object TabSheet3: TTabSheet
              Caption = 'Certificado'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object GroupBox2: TGroupBox
                Left = 0
                Top = 4
                Width = 265
                Height = 157
                Caption = 'Certificado'
                TabOrder = 0
                object Label5: TLabel
                  Left = 8
                  Top = 16
                  Width = 41
                  Height = 13
                  Caption = 'Caminho'
                end
                object Label9: TLabel
                  Left = 8
                  Top = 56
                  Width = 30
                  Height = 13
                  Caption = 'Senha'
                end
                object sbtnCaminhoCert: TSpeedButton
                  Left = 235
                  Top = 32
                  Width = 23
                  Height = 24
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                    333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                    0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                    07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                    07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                    0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                    33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                    B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                    3BB33773333773333773B333333B3333333B7333333733333337}
                  NumGlyphs = 2
                  OnClick = sbtnCaminhoCertClick
                end
                object Label25: TLabel
                  Left = 8
                  Top = 96
                  Width = 79
                  Height = 13
                  Caption = 'N'#250'mero de S'#233'rie'
                end
                object sbtnGetCert: TSpeedButton
                  Left = 235
                  Top = 110
                  Width = 23
                  Height = 24
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                    333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                    0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                    07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                    07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                    0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                    33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                    B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                    3BB33773333773333773B333333B3333333B7333333733333337}
                  NumGlyphs = 2
                  OnClick = sbtnGetCertClick
                end
                object edtCaminho: TEdit
                  Left = 8
                  Top = 32
                  Width = 225
                  Height = 21
                  TabOrder = 0
                end
                object edtSenha: TEdit
                  Left = 8
                  Top = 72
                  Width = 249
                  Height = 21
                  PasswordChar = '*'
                  TabOrder = 1
                end
                object edtNumSerie: TEdit
                  Left = 8
                  Top = 112
                  Width = 225
                  Height = 21
                  TabOrder = 2
                end
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'Geral'
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label11: TLabel
                Left = 272
                Top = 16
                Width = 55
                Height = 13
                Caption = 'Logo Marca'
              end
              object sbtnLogoMarca: TSpeedButton
                Left = 499
                Top = 28
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnLogoMarcaClick
              end
              object sbtnPathSalvar: TSpeedButton
                Left = 499
                Top = 76
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnPathSalvarClick
              end
              object rgTipoDanfe: TRadioGroup
                Left = 8
                Top = 16
                Width = 249
                Height = 49
                Caption = 'DANFE'
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  'Retrato'
                  'Paisagem')
                TabOrder = 0
              end
              object rgFormaEmissao: TRadioGroup
                Left = 8
                Top = 72
                Width = 249
                Height = 97
                Caption = 'Forma de Emiss'#227'o'
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  'Normal'
                  'Conting'#234'ncia'
                  'SCAN'
                  'DPEC'
                  'FSDA')
                TabOrder = 1
              end
              object edtLogoMarca: TEdit
                Left = 272
                Top = 32
                Width = 228
                Height = 21
                TabOrder = 2
              end
              object edtPathLogs: TEdit
                Left = 272
                Top = 80
                Width = 228
                Height = 21
                TabOrder = 3
              end
              object ckSalvar: TCheckBox
                Left = 272
                Top = 64
                Width = 209
                Height = 15
                Caption = 'Salvar Arquivos de Envio e Resposta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
            end
            object TabSheet7: TTabSheet
              Caption = 'WebService'
              ImageIndex = 2
              object Label12: TLabel
                Left = 8
                Top = 16
                Width = 121
                Height = 13
                Caption = 'Selecione UF de Destino:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object gbProxy: TGroupBox
                Left = 280
                Top = 8
                Width = 265
                Height = 105
                Caption = 'Proxy'
                TabOrder = 0
                object Label13: TLabel
                  Left = 8
                  Top = 16
                  Width = 22
                  Height = 13
                  Caption = 'Host'
                end
                object Label14: TLabel
                  Left = 208
                  Top = 16
                  Width = 26
                  Height = 13
                  Caption = 'Porta'
                end
                object Label15: TLabel
                  Left = 8
                  Top = 56
                  Width = 36
                  Height = 13
                  Caption = 'Usu'#225'rio'
                end
                object Label16: TLabel
                  Left = 138
                  Top = 56
                  Width = 30
                  Height = 13
                  Caption = 'Senha'
                end
                object edtProxyHost: TEdit
                  Left = 8
                  Top = 32
                  Width = 193
                  Height = 21
                  TabOrder = 0
                end
                object edtProxyPorta: TEdit
                  Left = 208
                  Top = 32
                  Width = 50
                  Height = 21
                  TabOrder = 1
                end
                object edtProxyUser: TEdit
                  Left = 8
                  Top = 72
                  Width = 123
                  Height = 21
                  TabOrder = 2
                end
                object edtProxySenha: TEdit
                  Left = 135
                  Top = 72
                  Width = 123
                  Height = 21
                  PasswordChar = '*'
                  TabOrder = 3
                end
              end
              object ckVisualizar: TCheckBox
                Left = 8
                Top = 118
                Width = 153
                Height = 17
                Caption = 'Visualizar Mensagem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object cbUF: TComboBox
                Left = 8
                Top = 32
                Width = 249
                Height = 24
                Style = csDropDownList
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                Items.Strings = (
                  'AC'
                  'AL'
                  'AP'
                  'AM'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MT'
                  'MS'
                  'MG'
                  'PA'
                  'PB'
                  'PR'
                  'PE'
                  'PI'
                  'RJ'
                  'RN'
                  'RS'
                  'RO'
                  'RR'
                  'SC'
                  'SP'
                  'SE'
                  'TO')
              end
              object rgTipoAmb: TRadioGroup
                Left = 8
                Top = 61
                Width = 249
                Height = 52
                Caption = 'Selecione o Ambiente de Destino'
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  'Produ'#231#227'o'
                  'Homologa'#231#227'o')
                TabOrder = 3
              end
            end
            object TabSheet11: TTabSheet
              Caption = 'Email'
              ImageIndex = 4
              object Label31: TLabel
                Left = 8
                Top = 16
                Width = 69
                Height = 13
                Caption = 'Servidor SMTP'
              end
              object Label32: TLabel
                Left = 206
                Top = 16
                Width = 26
                Height = 13
                Caption = 'Porta'
              end
              object Label33: TLabel
                Left = 8
                Top = 56
                Width = 36
                Height = 13
                Caption = 'Usu'#225'rio'
              end
              object Label34: TLabel
                Left = 137
                Top = 56
                Width = 30
                Height = 13
                Caption = 'Senha'
              end
              object Label35: TLabel
                Left = 8
                Top = 96
                Width = 122
                Height = 13
                Caption = 'Assunto do email enviado'
              end
              object Label36: TLabel
                Left = 272
                Top = 16
                Width = 93
                Height = 13
                Caption = 'Mensagem do Email'
              end
              object Label17: TLabel
                Left = 272
                Top = 136
                Width = 127
                Height = 13
                Caption = 'Email Para Remetente NFe'
              end
              object edtSmtpHost: TEdit
                Left = 8
                Top = 32
                Width = 193
                Height = 21
                TabOrder = 0
              end
              object edtSmtpPort: TEdit
                Left = 206
                Top = 32
                Width = 51
                Height = 21
                TabOrder = 1
              end
              object edtSmtpUser: TEdit
                Left = 8
                Top = 72
                Width = 120
                Height = 21
                TabOrder = 2
              end
              object edtSmtpPass: TEdit
                Left = 137
                Top = 72
                Width = 120
                Height = 21
                TabOrder = 3
              end
              object edtEmailAssunto: TEdit
                Left = 8
                Top = 112
                Width = 249
                Height = 21
                TabOrder = 4
              end
              object cbEmailSSL: TCheckBox
                Left = 10
                Top = 144
                Width = 167
                Height = 17
                Caption = 'SMTP exige conex'#227'o segura'
                TabOrder = 5
              end
              object mmEmailMsg: TMemo
                Left = 272
                Top = 32
                Width = 409
                Height = 99
                TabOrder = 6
              end
              object Memo1: TMemo
                Left = 496
                Top = 160
                Width = 409
                Height = 99
                TabOrder = 7
                Visible = False
              end
              object edtnfe: TEdit
                Left = 272
                Top = 152
                Width = 407
                Height = 21
                TabOrder = 8
              end
            end
          end
          object btnSalvarConfig: TBitBtn
            Left = 278
            Top = 213
            Width = 153
            Height = 34
            Caption = 'Salvar Configura'#231#245'es'
            NumGlyphs = 2
            TabOrder = 1
            OnClick = btnSalvarConfigClick
          end
          object RzButtonEdit1: TRzButtonEdit
            Left = 568
            Top = 176
            Width = 121
            Height = 21
            Text = ''
            TabOrder = 2
            Visible = False
            AltBtnWidth = 15
            ButtonWidth = 15
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 567
    Width = 826
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 3
    object Bevel3: TBevel
      Left = 270
      Top = -31
      Width = 2
      Height = 25
    end
    object bincluir: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 97
      Height = 54
      Align = alLeft
      Caption = 'Incluir'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000003CF4944415478DAC497CF6B545714C73FDFF3DEBC31931AADF45730
        A2B504C1AE5CB8D12C046971AD526A4117F9071477C9A28B2E926E6ACD3F60A1
        85DA2EECBA3FB651280A22D285544A43152B8AD5A999C9CC9B774E1733F9A171
        E2D396F40B17DEBBEFBEF3BDE7DC73BFF75C1DF8E2004BF0025506D0D05B84B7
        7A9D1928D222FC7D607F66B62F22B6039B7A031E499A6BBB5F022E26B21F0975
        A00D80AC4AD4FF24F22658B24495D207412018004E4A8C67B2D16E3F20AD1CBA
        25E0EDCCEC0080C3AF119C83980968AA8F7DEB4F9A1E93D2AB66312D188D45D2
        BE13ED36C1A8594C4BE955911E8B3E7F19EE745B015E10E1484C99255F4BC92E
        5E1252B2AB6B83A98865FB8B7C2995CAB2F311586DF397928E13CEBF43F42660
        1356DB3CE270A2BB44DE5BE3A1A1EE4B0C60AA4E49711CF712667B86D1DA03DD
        51563B6E95C15B1EAD49D4040C231CC251C4111113653C35198D7C8146BE80C9
        4A38EF889850C491453EC36BE083A9299D593B7D9671BFF980F1DD4719DF7D94
        FBCD07A5436F4A67F0C114AF619020554E23DB5A96B89ECF7370641F0747F651
        CFE7CBAFB96CAB54394D249829AA6671AA2C294022A3DE7E4CBDFD98A44CA857
        7A6D714A16555BF062CCA461D609260D2F44316689D9A108D60D1150C10E59A6
        646FB07ECC4150B1646F0AB17D95EA208A70EE36EFD1F162D5CFBFD5FFA055B4
        969E9F85D412DE1C789D44C66AC7627B0A31C45322D0F2361B2B83CC8C7DCC6B
        03AFAE32DA2ADABCBB651480D9C3DF524DB2676CB9BFF8FCDA39FECEE7C9ACF2
        34F190F13F2105D5812D2B3BAB96D1ECB43839FB49DF50CF1EFE0680B1EF3E64
        E7D0B6BEA1AE5AB62AD4811EA5A039881D4F2780490CD7DEE83BE36A520560E7
        D036B6BD32FC5C4D7F328798B3DC8BCBCF15FAFF1042E4EE972DC7BFD7FAF122
        418EFF601B94CC7AC49DF522F6883B1B94CC5AB85AEE3ACB0B84BB2B0229154B
        7931F111EE3A1BAE96A18288FC0CE1B7CB924774CF6493515E6E05E1B723F233
        A820D971EC1D50DB89644E4A3F28734A6D48337EAFDFE2E7BBD798EF34482D2D
        733CE0918F638D5F500743063242BA10689A12C7DC605AE3CABDEB5CB9779DC1
        B456C25923D074481716F952EAF5DED7061E3169B5CD23AAD6D6ACBB8A28D894
        6D5C7A5EDB51235A8DAFBCF170F2C9622FCF972B042F703861D9C02DA18995D5
        E2CBECD86E3EC4B4371E4ED26EF46E12EA05DE8C6E4BC012D44D9849F7E2A388
        E2C6CB9FBBC58DAE0D26A565FB8B7CD64F5D82CEF988CE1E774D0037C5DA39BF
        E2FB4D774D4474F6049DF3FD54315D4BDA8026F029CE6739FE5EC0FECC92DEA5
        2D7A9736F52E6DC525C1C514FB09C89F5771FF33005371B84BAF5AC2F4000000
        0049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bincluirClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object balterar: TAdvGlowButton
      Left = 97
      Top = 0
      Width = 97
      Height = 54
      Align = alLeft
      Caption = 'Alterar'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000005154944415478DAB4974B6CD45514877FE73EE63F9D763A43A79D76
        0A08D68AF55921A6D6408C24801263E223B0403446F1B5F015174617C6951BDD
        B8F0012E7C261A13E3C6688CA0B1313E82025628880FC44A4BE7D54E679CCEFF
        758E8BA928A42A53CADDDDCDF9EE39E7BBE7E6D2D8FB2988055409B03F19406B
        0082461655A76033E76174F58B206BE0EB26F84F3C8DE8D8E11EDDBB7853E871
        9736540C2667DE9319D96F5331189C8515860056F4DC628B3FBE29BE448D5210
        06743CFA24A2785CFCF0D905076B6268BF767B69F36DAF39D6739D2F8610A63A
        0022905686349E619F47D442018900CF5710A85B7B339557A33A080A376FF36A
        03AB8FE94216100118101640AB2716062C8C9022487546B7144BFACD4A4DFB97
        756527A2CAD3C54D7727DC8135637538D70F2974D9C2804D13FCE2F81D69F7E0
        1BCB7A92FEA15F9DC93F3C13B9B42B5F8CEA4017366D8BBB036BC67431078840
        08EE8280C589DDA7A64BAF943F7CAC968AED1BEBED6B37233F3BA8B8DAB9A42B
        5F7074A80B9BEF6B7107D68CEBA9021086BBF4A35B628006C805745101AAE1B3
        DC4D2E6D975493C7BDC70AC1FECFC3B6CC20A24B7BECA11F6A924CB05992A854
        F29568B47CF1602A522EE4CD9123779E69C6DBC8553B242E2EAFF4B27AA6CBE0
        BB4277F9ED0713EDB5EF83F3FBDAF5A15F1CA97A267269572E166DC24CE5CAB5
        5BC4DA036702BE875C7A5912ECF215418E7264684425A9351D91E27873F9ED07
        B823365C3AAFAFCD1C3EE274D47C5DEE4E56364AB5FA3188305F70BDBC09F679
        6590A32C5975D02E8281839041C97499978EA2FCC903D451FD36BEF89CA6F244
        516F84E0339A0D301FF0BDE4D20E49488D5706139453561DB04918711002D098
        0EFBBD294A742A7C737C79F5DDA7C2386537C4E2D1AF42A6134154C399D6E825
        69158F570579CA6BAB0EE824EC096889FB831229316A8F4E13DAC06EE986A032
        FDB5287D5220D5B048ADE2F22A3FAB7264D488492202070C4051892F0FCA20D1
        6AAFCDC02362135E07DBB413DAD427D73CC0A788A40C8D98457F9797A6F972BF
        0E1D36DDF048D8F07A001FFDEBCC694CA4F02F91EA3D650006D3DCEF4F83C4A8
        619B864B3E1B5E0760E8BF82AA331729284189D1C3360D17CC96D7FF1FF4FF32
        AE8B9498152937A748D3A4C5A8BDB6537C105BD900C167A7D33B356F91FA4F15
        49AE8360D769BF2B27ED1800E87EF2F082B4718D570679CA2A4307FF21929A15
        498956C326332BD206087636F4A00917200C08B7023A721B9CE00549619ACFE7
        2A65C9D427D229222931EABBD317694E3045D68148835AF66EE58BF3AF936D19
        47DC32E548ABFD66119CD94C4D5D24D262F53E9B96BF4492C6A100605ADA1F02
        B382913D8F9A880B88E53F2A6F5578623C018E38F005B032C5FD41F984485E63
        22CDDD63EF3758ADBAA3D115BD44AD602E66C4F7B208D817C79B244709F7890B
        255AEDB3197804B6DC904873827F1FCDA2B5B565D5E225B1963008C16151D8CF
        3673A6725C2DA302353B197249D3F7260D97C086D7372AD29CE073977543691A
        0C82000400E420D6725355127EAB8D5CD832137C1C0F8EEE895139E97294AF05
        E65FDE93EEF1733B27A04CE41A938A81D90391D14DF15B3A63B1AD9D8E5D9D21
        D818077E95090B06050075D7BA2589F142F99C4F877E81320644020E0B804C01
        3206F10BA304E7FA85840280393A9EBBEA91ED5F2E5DDE11C7DAC1E508CBEE24
        417E0AC2E0D363955F77C7C9FF1C84E30BFDE330373EF9C105575CD4BDFBF987
        AF7E876BFED13094214598082544AE3A89E66680CEC2FFEACF0100BE4AB4F88B
        9A2FD60000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = balterarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object bexcluir: TAdvGlowButton
      Left = 194
      Top = 0
      Width = 97
      Height = 54
      Align = alLeft
      Caption = 'Excluir'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001A0000001F0806000000F987DD
        7D000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000003C24944415478DAAC96BF8B5D5510C73FDF39E7FDD8B79B4D341B82
        BB8A46B00A418862B0B0B20BD82982AD858A602358F80FA4B14E6195CACA26A5
        85A5450A35103B2545DC35448524BB79F7DDBBF79E33167BDF7D777F288A6FE0
        C0853B33DF9939DF99397AE5FD8F11622E52A0AEF7A8EB27C4B06A71B0F695E4
        EF028F016721024EB9EBCBA6DEFBA84905C3E13A31AEE29EE88BE3448E49C66C
        400C13421C7E61F2B752DEBF64367C04ACF4148B94F2F32184EF4218DE03AE49
        11C89C24C780DC9D1086041B9B7BBEDA78FAD034F8E9246333ED644F9F998DDE
        0B61E51ACAB8FBDF00896FD4D89BAAED0EF2191080041A097B51D8A7421F800F
        8E9BABC2F359A49740B7C0B2C0DA9F09D78A0FF2258FE9DB6865BC4EF49BBB97
        EF7FEEA3B4A5C60EBB82974F8EB17F550EF0DAA1CAC48CAAB073EACEF94FAC8C
        3B11F39BBBAFEE506EEDBE634DDCE29FBDFE7B11E4D8FCECA3E6FAFAAD67898F
        AEEC509F9B1276C73389A58A3CCEAAF3531E5DD9C6EAA70BAC88804F8F2A56A9
        26BB77E417623F27F673EA5A424076A74AF509503EB569A43E5B605647308134
        EDF35E88CDC9198621925A26359ED818ADB2315AA5697B25B9330C91CDC91984
        F07EEDA52926AC8E98B2A3ECC8BDE83AC99D2071F1F4269330A46E9D96A9E6C2
        DA0617D63628DB0C6A4F4CC2908BA7370912B9476FB91773FFB1875F1CBDA2E4
        19385CBA7976FDD281B7BA470A075DF0D1D591A43841F118094F6AC893F4E6C1
        CFFDC7C5C850014BA61D5ECC4388649BA7542C1F47056D4A31E78C3B58501124
        96DAB0EE454E8E0431E70A77478A53313E4CCFFF85233CD7D39C1B24117F4B8F
        499E38A5D56293090D69294001E3412E8ABD342528109F199FC3710256254F4B
        BB9EE489A706EBD5FA600D21E28A0DE6D36096591EEF3230B43053BBF2625A6C
        C44A4BA49D808C577376F5974FC9F2A5F36972684FB964B0524E39F76FBE1821
        1507675952F9C1C1016391D20C7C891979897C36F71F7D714D25502E8B0E8E4A
        47E5E215947C0164AAFAC4B3237477C0A4EEBBCF303B8E549117158A5A4C824A
        84AA6F92FCF0409220B77BA7FFBEF056F7F000CA15A46A011427DD3EC4EB1212
        262379E6F6C36DAA5C33B000C0D806FCB2F747F70D30B0C0B4A9B8FD709BC633
        4176D0AE0AA5E2D8BB35F1A4B8D72EB4CC64BC510EC20AD9130EECD633A259B7
        4D834491F6DB080DEFB66E66B79E75019922759A9545B98D7450A1F8E7831F0F
        CA941A36B75EBF3B5A3BFD466E665DB4473769680D8F16AAAF6B61C8FEECC1DD
        DFEF7F4F080723482FDCB8DA37784EB2AF252EB73D95FF23D90C18B9F3837B7E
        DBF15FE73FFE1A0060E1D818B654B67A0000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bexcluirClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object bitbtn6: TAdvGlowButton
      Left = 388
      Top = 0
      Width = 97
      Height = 54
      Align = alLeft
      Caption = 'Relat'#243'rios'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A200000009704859730000093A0000093A01F064924A000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000023E4944415478DAE497BF6B136118C73FEF79E6875C6E2908E6489A
        A1217429A2C592C52193A2462862281467375DA4FE094A163767B7D641B41474
        097429456944BB086D2909454B1382D1547289C99D432F31391212BDFC107CC6
        E77DEFFBE1FBBCCFFBBC9C304D9371840CF0E45DADD35A54928C4927E2862165
        814D7BFEFE25F9042C84D1E9BB7BA649C209580863A5131840624C21016C2417
        D9482E0E1DD6CA915B173E3EBD4B269301E0E6E3370381BD5ABA02402814EAAB
        D4CB85FDEDA853A8A5B1DCD719874221841009FDB818740AD68F8B412144C2EE
        D65EEA53C075605ED3B4CD1FFB5BBE6C21EB7602AE7CCB57344D2B01CF8017C0
        1A506F825555C5308C9716185996291FEE503EDC713E286419200ADC5114654D
        92A41BADA59E02AE0DAB9B772F7AF8E916588CA926B85EAFCF026204D75758AC
        F6EB34AC08A7F57F6C728DED75CAE7F3E172B93C12A0D7EB0D371DEBBABE3B2A
        A70D56C7E6AAD56A54ABD581805C2E57E32E779D5CCDC8E57278676FE30E9C77
        04AD1C7CA0B8F51CBFDFDF1F5855557CE72691CF6A8EC0B5DA574AAADABDB980
        A3D6A4A2285C8804D1669C39FEBCFD9D745AB1A78F9AE0542AB51E8BC5F61AE3
        CC1E9F0E4AACBEFDD23770E956A4DBD25E2A955A6F756C0209E001300FB85A77
        6B131EE2737E27E6ABD6EB94B4586D03E43DB000B801A1CD5C5EF913656DC2C3
        74C0C774C0F73B77A2212CCD058BD1BDB9E28F5EB79F5541EF59EAF89C1FF5CC
        E98E5AAB0FAFF6EE6A3B14B09C44FEBACE9DE0522FE8A0C2AE2DC6F50BF3FF3D
        8BBF06000A89ACCFF90571920000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = bitbtn6Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object bimprimir: TAdvGlowButton
      Left = 1278
      Top = 11
      Width = 104
      Height = 48
      Caption = 'F7 | Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A4442423443394332453238313131453242394338393942364543
        3838344544452220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A444242344339433345323831313145324239433839394236454338383445
        4445223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4442423443394330453238313131
        453242394338393942364543383834454445222073745265663A646F63756D65
        6E7449443D22786D702E6469643A444242344339433145323831313145324239
        4338393942364543383834454445222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB0957FD5000005934944415478DAB458
        796C944514DF6F7771972A68418A55A828A0126F118D174710242A55A99188C4
        A0A051226852A3A2FC2189670C1210E21545413C62A8578C468D8A94C32ACAA1
        50143CD046C156DBDADA935D7F4F7F93BC0CF35D5D7DC92FFB7DB333F3BD79F3
        DEEFBD192FF1FAEE4401520C9C0C1C0D0C0306B37D1FB013A803B6033FF7F403
        E91E8EBB02A800C6024785F46D04D6006F02AB81A6381FF26258F030A012B806
        38A6870B6B0656028B816FFF4B0567008BA8A416B14C35F035B00D680572C021
        DCF2138151C045406F6BECBDC08242153C18781128576DB5C012E0AD18BE25BE
        7A213007B840B56FE68E6CEF8982A5C046A08CEF5DC05DC0A389C2642AE73852
        B58D06D6BA3A277D2619CE2D33CA7DCCB64295137905380E7846B57D024C8E6A
        C15EA487017C7F0998E6183B1F28017600ED4011ADD200FCC13E296028836A36
        F0BB35C7DDC0FDEA5D28EBAB300B562BE51EF7514EE4626E8B44E37EBA80F4AF
        A1C2ED54482C7625B9D29607809BD4FB7A06982F0FDE069CC5E71AAEDA4F44B1
        0DC067C011C04C06CD3C354EA2FA58E053A0DB679E2781D3A8681F600530C565
        C1C3492586AFC685F8529E1FFF15B81E7896ED39D5A705C870ABF30173DD4C83
        982430C665C145EA7916F0578882B2ADFD80D3ADF63FD573378D20CAFD1032DF
        D5800988E74C32300ACA164DE7F337C0AB8E09FA026703597E70180324C5F11E
        FB9558E33AD8E73AE07BBE6FB41622F21DB7F75A600870BEC48351708AEA38CF
        A1DC74A628DB823B494163022CD3C4452DB1DA672AB730720F1534DB5E6D7CD0
        34FE065459834EA1723F311A2F21DE67646642B6EE5046F46C8EABA0B5840747
        5A7D25C8DE5346CBA64929A3D8B8DAF101132C93AC9434993ED816A26086D65E
        C5E013F9859422696F93D5FF1D6022AD3E3EC9BD3696DCE213AD229D8E3CDD19
        2173E4E89F65563248F88CDFA0893B490737B2CB31C0F057918FF2D900E58AA8
        9C4D31073928C9C82665E94169E658530C6C899153F3E4B9462E2277401AFD37
        E535B3AF1771DE6E72ABB046495A95E96D21D5AE6D0549F81358403CE5503049
        4A91FC7A8E9514F2214AB6184BA7AD95B95669B670AFD5FE323F5C4C453CC782
        52F4BDA7C999461AACB903CF24A6E8EC4DC7EFB0FAD4292ED4E5D6E2024AAE49
        8AD6FC7CF71FB74BABC0E8C5ED5863757E0DF8025848EC67A19065FEF6420E5F
        1E5DA75E9C9E054182F56695CF9881FCAD4F93938C1CEF50B0933CF908B734AB
        F2EF97B4788B8332CA18AD397E7004776B1BA9E44E2ED69633E836227B44C175
        EACF9302B8ACD2F2AFE7811FF9DF7292765EEDC6E7AABF649165CC245B43B6FF
        3CF5BC23CD90167A3915B81C981B3241526588264EF8905230C93A70197DBA51
        A5C38111FC739CA2BD0FCDC74C213098D41145C1149DBC2FD1C69CDB41EE2B66
        0957AB22381932773FD68326E535271565185918231A3354A8CBDAFEFECCEB43
        790D3228E27CF7A9E7C7743D58C7AB897246F244555504317E293FEEF99CDEF6
        B1EE6B88A05C094B2C73B7F3816DF239EA7979C454D7C980C83920117F15179C
        8A30DF2AABA23FA0E4DF4313CFE7F1F15D45A87E915D43C7F7AB6A522CD1C2F2
        F002DE3C887CC45B0BDF73F16646B4F1C7DB1DE7E6563E6F55E55410519772D1
        97026F5BFF4F53D6EB62BFFAA0EBB7D1F4810CB94F14BAD5B2DC5EFADEC89829
        CE2E6E67314F1B19AB95F353B0D91C58A8E45C6EE38DFC4FD8FF4CE6CB7C0CE5
        727423230FF2AE479F51D6C7B93C3A813ED64725F64AC7E129AEC8E29FE0D59C
        910ABFBC1C449CB554D2D0CD001E0BC5B237909CA38A7CE73272E35AA5DC2E2A
        5C55E805E61DC0C38EA2F20D160CEBC8A5ADAAA497059DCB6B8D72EBBA2DC122
        F7168BE40BBA021ECE6099C11CEB92769561FC225B6ECB96BAFCAD500575BE9C
        CA63E77875000A926A9EA35FE099F87FB944F70BA411ACFDFAF3EACCE35637F2
        B0BFDB2ABD62C9DF020C009946633A8EAB94390000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
      Visible = False
      OnClick = bimprimirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bcancelar: TAdvGlowButton
      Left = 291
      Top = 0
      Width = 97
      Height = 54
      Align = alLeft
      Caption = 'Cancelar Nota'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000053F4944415478DAC4974F885C551687BF73EE7D55A94E5226817455
        9B40A24C70E3C6859B9861C20C3303AE14375192744750D21D9C888BD1EECDEC
        BA1D611699907F0EE44F47548691590EE8E028C4B8C8226E4517061CD3550D89
        5D095657BD7BEF71F1AA5B43EA75060DCC81BB7A70BE73CFFD9DDF7D57FEB377
        2F2B11A3B1AEE6D83A5AA3DFEB6326281ED43C2EFD0E9327BCEAEE84EDC0E401
        00C49614B91652BA8CD827447D9F24211110312AD50A8BED2ECBDD8873B2CAF2
        94849901D4D47354549E07B74B44300C416035876C3178C8ABDB6B1878BEB0C4
        D914EC989975CBF26B1954D53DEB3377551D73C02E00C3282DF4876FBBD431E7
        337755D53D3BD8C0DDE094A058468C8625438459E7FDDBA2EE112B6795176120
        EA1E71DEBF2DC2AC0D72A764ACF07C960D1A264A561136D6B379900360F013A0
        77D08BCCD31BEB95ED467E50B09523C4D7EB456BB34A46A5529D35EC404A3F87
        7867A464D446FC819191ECEB7EBF3793F7FB88086A565461C633C96CFA7E427F
        0C4F66D3663CB3C25391753857F3CEFB63654248BD1E962288946717C15224F5
        7AA553E2BC3FE65CCD8BAC433187F7EE1555DD5696D0ADDF40EA762186E17011
        8881D4EDE2D66F282D5055B779EF5EC11CEA3D5575BC3C4C49A9B78C78CFCED9
        E38CEE9BA0DF5EC0427E6762112CE4F4DB0B8CEE9B60E7EC71C47B526F79E8D0
        A9E365EFADAAD1C73DA23236ACCB9265846F6FD2B9F4215BF71DA2313149DE5E
        C0F2015C04CB73F2F6028D8949B6EE3B44E7D287846F6F222BE372D798C958F4
        718F3BF2E82FA65474F7D02EAB439C63E9E37F6396688E4F42323A973F4247D6
        434AE4EDEB340E1EA6313EC9C2F993B4CE9EC06FDA8CB8325314CC687B2FFA78
        E9C09A21CE938D36685F388D18340E4D810A0B674F00D07CFE088DF1495AE74E
        D29E3F4DD6182BA0A5CE637891C73DC28E7B1981F88C6C748CD6C53390791AE3
        93C4DBB7000AE85B6FD2BA78866C740CF1D91AD0D54DEFF066525F6B4A56E159
        015FF8DB5F89376FF0E04BAF01F0CDF1D759FCC75B54C6B623DEDF1B0A98495D
        F93F8517B10EC896B55B3350EFE202CD17FE4063FF8B7C73E20D001E7CE935DC
        E62DB4CE9E20DBDA2CD47CCF56DB92C7B886B0734D68C87F50EFFE17695D38C5
        E2DFE701701B36D2189F843CD05A11D73DCE59E19A0F6657BCE8AF862A5B048B
        81BCDD6274FC308D89295AE74ED29A3F4D656C3B00ADF3A720198D435398407B
        FE4DB246730D650B21A52BEEF0A30F27AFEEE05011A448EA76694E4CD1D8FF02
        AD8B67685D385DA837CB1055B43642E7D38F4195E6F824BAAEC6EDAB570A0F50
        1DB21721B7F827EF82BB6462D745B9CBBD2CCFF19B3653DFF36B16DF3D47EBFC
        29B2D1E61DAD2CD4DEA475FE149A55A9FFF237DCF8D73F89B76F21CEDD65E996
        ECBA0BEE927CF6D4936415FEE832F9F3D0DB4904719EB0741357ABC1B0160E2E
        89D85DC63FB0098B61689B458498DBAB799F37E4B3A77F8F083EABEA5722B2AD
        EC5A94CCAFED48033D581ED06AB5EC6AFC6FDE4B3BCD086AB64C8CDD1043382A
        65D759B58AA85B7B4CCC1075A5501121867034C66E305B46458462F19E8ACCA9
        CA7D370B554145E644786F85E73B9D42E2220123CED4EBD9F6DA88BF6FFF5DAA
        42F7BB70B1D3C9678A9FBD62633ECF574F92100CC10ED646DCD720D308FF93F7
        969D79610D3677ABD39FE97E17F15E587909A82A144B704E1015CC9889213C67
        297E2EF21399297E1E4378CE8C1919E45615567965424829BE13F2F8588A4C03
        5FC28F5E2D43FD6835BE4C91E990C7C7528AEF9409D697572D984937055E47F9
        0B2EFD16B3279CB8DD88EDB0C1A34DC49630B9162C5E46E413A27E40222F7453
        5EE8F703002EBE857159353E1E0000000049454E44AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = bcancelarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object btabela: TAdvGlowMenuButton
      Left = 1163
      Top = 14
      Width = 139
      Height = 48
      Caption = 'Fun'#231#245'es'
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3732413442304433453238333131453238393841443236313242
        3830433731312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A373241344230443445323833313145323839384144323631324238304337
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3732413442304431453238333131
        453238393841443236313242383043373131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A373241344230443245323833313145323839
        3841443236313242383043373131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E0B0618CD000004D64944415478DABC98
        696C545514C75FC77106AA45B128E002898A3BB84090A6A16ADDA25631AE485C
        E35221EE267ED0B87C504CF8A0B892A0C12521AE151054026AACDA68DC700143
        68149791452105A1D5B6D0FA3FC9EF2637CF37EDEB9B793DC92FF3B6FBE6DC73
        EFD95E45B0F8A7A004A910C7881A314EEC2BF6143BC446F1855825DA92FE4136
        E1B80BC589A2564C16557D3CBB46B4886FC472F16B5A0AEE2D66881BC5A488FB
        EDA253F462C52122278E8500ABBE299E133FC45BA2784B7CBA7892E574F28758
        2D3E155F89F562ABE8613207F27C1DD69EE08DB589CC164F88EDA5286896982B
        6679D76CA99E121F8ADF625A3F2FA68AABC4D5DEF5EF38FF3E8982FB8957C459
        9C6F160F8857C5DF2538D6F1E261D1C0F9367183688A7A3853E425E68DCB3CE5
        9AF1D4F9252AE7AC7681B897ED60FFF586981E57C14AF1360A992C40D1F541F9
        C41CE951711E16B470B550D4C751701EFBC51D5F2FBA8274C4C2CEE59E2E8BC4
        98BE149CE66DE295E2B6207D5921AEE4789878BC988255B8BDC91666B62B181C
        59486C34B9485C11A5E035622CC777F6919E86A4A4E43D5E96B94FECE12B68D6
        BB9DE36FC56B455E3281B435350505B7910C0232CF745FC173C4E11CDB32777B
        03EF1233397E0F2B1752B2A22DB30BCC67FAB9D8E5D65FF0245F0E42C946D257
        0D21A75A3C220E084D288EE4488F73426377903A0F43C19159D2591D0FAC8DC8
        8D778BBD50F03AF139D7878A73C5210374A60AF6978D7F2C62721FE00F668CDA
        2CFB6A2237BF2CF2D25BC43B62A977AD40DA1A9DC0827956EB9F887B2BC95616
        72A6988253BCA55E55E485BB3CE5EA49EE5BF0F4B632EFC34DEC43AB804664BC
        C86DD96243C480E1CCC6E42196607C2835E6D82A0321C7D8287169B532EB3DB4
        5B74443CFC8C388AB4F72005430BD5CEEBE238927ED296C156ED520A5E27AE20
        C964BD0D5E51A4C27E992A783EFBA3D1F3C483F1E2A419C72CB93FEF6A8F4806
        BD59AA60F787D54512FAD944F79B427BE504C2501715CA40AD97A7320F3BCB28
        5779673DC7B0FD78A4783FE2652D8414371157DDFCEB05D672499E0ED1646786
        B8F63B176AFA196C16FB5A9C1C9A6D754C46C650709267C1B56E899B29798E8E
        18D088755FA2CA360BFEC9DE59CC6CBB06B0E72CD65E82F5A3A481406EFBBA39
        130AD0E3898BBE5867F6AC5847503E8D30D043916125FB8898161CCEEFEE3E26
        51CBEFC7166FB35EF4EE64FD677AE92CA0CA3165EEA02B5BC3F5AD64927DB81F
        C74932FDB499F59E814CC15EBFAB7B911CD84D6C5B17DAB8754C244D7997CAAA
        8D145CF00BD639DE3E793A34B0731094BB0CE59CB10AE18AFA471A72578BDD1A
        0C9E8CF28CB2D133D6FF9A26EB555B399E4B804E5B2CCF2F212AB8CA69533105
        7752F375736F9967F634244F2A9DCCB959F1ADFEFAE216BAAA1E72B3CDEEE614
        941B47CB398DF34551DBAAD8A78F269A962E9C661EB1B0BA4CCA59B4F8C4ABE4
        9BBC063E968201DF4B1A48E601F171352DE9E8044AE570BE1578A94B7BB3C92C
        DD49BF0F1E2AEE17D786CAFD2504D3CFBC5C1E16EB654EE2FBE229E254EF5E2B
        FDCED2727CC07471CABEAE9E11BA5E20F5FDEC65891CEDE918EFEBAA930D14C1
        CF93D38372291890C4CF1717E37947C41CF7179FDD6C795FA09F89593426FFCA
        5F49EE9C41D35F45259CC1B93A506439554F6B923FC996E0891DECC1A1848C61
        2105DB59C28F922A67F29F00030037AC1FC8E837390F0000000049454E44AE42
        6082}
      Transparent = True
      TabOrder = 6
      Visible = False
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      DropDownButton = True
      DropDownSplit = False
      DropDownMenu = menu_tabelas_fiscais
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 709
      Top = 0
      Width = 117
      Height = 54
      Align = alRight
      Caption = 'Legenda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A200000009704859730000093A0000093A01F064924A000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000001E24944415478DAACD7BF8F4C5114C0F1EF39F7BD198AED1484049B
        FD0FB453D0E9484C630B890D3A1D8542B6F43FD88D20128D42E94F50E8242A8C
        D9643B61A390BCB7EFDDA3B0CBC39BF7DEB9E654678A7B3F73EE8F3377E4DBF9
        7348C8F044303D596B7D53CC46A10E0F63669F3CE3B512147F4CA3D433313641
        EED5217E0036BC9378E1A960CF81BC3987996D7B714D40DBF645BCB82E014DC2
        7549A81BD725A22E3C4B4175750D3D7D1680389F113FBE6FC54504E09107EEAC
        349B5C20BF760380FDA7DB94FFC2BDB8A62CAF95456BEE59764DDAD326D60D2F
        C435E5205951B4E61E5C934EAFAFE2565C8163823D735D9966954581F3AA6D01
        675443D800C69ED15696ADF9D06E5987FA9662E21EF91F15FFFCB222A55665FE
        04F8EE1A99B6C787B11F62D8CA80AF6057405E0E5D72DBFB42FDE6F5AFDC1195
        21EBC0AEEC4D2664E302E0A2074F88CA90ABC08B60FAC73D7E057619E8EF082B
        2B8C6EDF657CE73E72FC840B5DD4AB0FF0EECAF3E93AF9A5E9C1878CE2C1A60B
        5DD4AB7B2B8FF3D9EF7C67EE46019A7BFC7774EEB9AEAEC191A3C4776FDD6830
        EDEC569DCB1EDB7F0A7BD1A12F90C107CE830E7D7379F041A8E79539041F8C7A
        DFD55DB80B4DF9277188377B7BE145FB5E990BF1AA189DCAC6E5754C34C6EAB1
        84ECB377921F0300F36B08A5B67DBAEF0000000049454E44AE426082}
      Transparent = True
      TabOrder = 7
      OnClick = legenfe001Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
  end
  object pn_nfe: TPanel
    Left = 1340
    Top = 239
    Width = 1127
    Height = 12
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object Bevel4: TBevel
      Left = 0
      Top = 0
      Width = 989
      Height = 3
    end
    object Bevel5: TBevel
      Left = 0
      Top = 0
      Width = 2
      Height = 12
      Align = alLeft
      ExplicitLeft = 47
      ExplicitTop = 3
      ExplicitHeight = 40
    end
    object bt_nfe_assinar: TBitBtn
      Left = 988
      Top = 4
      Width = 99
      Height = 36
      Caption = 'Transmitir'
      Enabled = False
      TabOrder = 0
      Visible = False
      OnClick = bt_nfe_assinarClick
    end
    object BitBtn1: TBitBtn
      Left = 1111
      Top = 3
      Width = 75
      Height = 36
      Caption = 'Info'
      TabOrder = 1
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 49
    Width = 826
    Height = 58
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 5
    object bt_nfe_validar: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 89
      Height = 58
      Align = alLeft
      Caption = 'Enviar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A200000009704859730000093A0000093A01F064924A000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000016D4944415478DAEC97B14EC2501486BF732B81818541D81C191965
        6766571FC0C4CD04079FC1303998F80648E2A0C177F03974637265B93D0EBD50
        0A95DE429BC68493344DEFFDFFF3F73FF7F6B41555A58A3859BF90E787CB32C5
        F4E6FE2555186552B2D195B0A1A2483A16AEAA115E2B4566D8303A07FB152D3F
        2B5C2C597DA08F7163073AFE3BE62EF929006788797733E7C0F76ABED328C8F1
        7C118B46D1C4EA0CA183D0C1EA0C68EEC0EF21BC9DC020F509486F6D47F6A2B1
        8D5C19E2E9A55E76B3761D428540201410C6C0709B2043DA8D31CA1D46C12A18
        89F3886438568DC1DB710D8C769818394CBA918DBCBEBB7A80F094898A3083A2
        1EA72E2AAF40CD035B73D8EEA1C22D8CF9005A391E512F4E96F08FBB7B890F99
        A6D4789AC4D075DCA23A97EC397790B01484C9252C147B835EC2F94AE8CB4976
        2E93D63CECE6C0236ADE923AF6ABFCD762291F0261E0C3B905BD48B6C4600A7C
        FE43C7C6FA708E6B7C5C63BF1653D54FDBEF006E9C68F3D612391D0000000049
        454E44AE426082}
      Position = bpLeft
      Transparent = True
      TabOrder = 0
      OnClick = bt_nfe_validar1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Enabled = False
      Layout = blGlyphTop
    end
    object bt_nfe_danfe: TAdvGlowButton
      Left = 89
      Top = 0
      Width = 93
      Height = 58
      Align = alLeft
      Caption = 'DANFE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A200000009704859730000093A0000093A01F064924A000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000023E4944415478DAE497BF6B136118C73FEF79E6875C6E2908E6489A
        A1217429A2C592C52193A2462862281467375DA4FE094A163767B7D641B41474
        097429456944BB086D2909454B1382D1547289C99D432F31391212BDFC107CC6
        E77DEFFBE1FBBCCFFBBC9C304D9371840CF0E45DADD35A54928C4927E2862165
        814D7BFEFE25F9042C84D1E9BB7BA649C209580863A5131840624C21016C2417
        D9482E0E1DD6CA915B173E3EBD4B269301E0E6E3370381BD5ABA02402814EAAB
        D4CB85FDEDA853A8A5B1DCD719874221841009FDB818740AD68F8B412144C2EE
        D65EEA53C075605ED3B4CD1FFB5BBE6C21EB7602AE7CCB57344D2B01CF8017C0
        1A506F825555C5308C9716185996291FEE503EDC713E286419200ADC5114654D
        92A41BADA59E02AE0DAB9B772F7AF8E916588CA926B85EAFCF026204D75758AC
        F6EB34AC08A7F57F6C728DED75CAE7F3E172B93C12A0D7EB0D371DEBBABE3B2A
        A70D56C7E6AAD56A54ABD581805C2E57E32E779D5CCDC8E57278676FE30E9C77
        04AD1C7CA0B8F51CBFDFDF1F5855557CE72691CF6A8EC0B5DA574AAADABDB980
        A3D6A4A2285C8804D1669C39FEBCFD9D745AB1A78F9AE0542AB51E8BC5F61AE3
        CC1E9F0E4AACBEFDD23770E956A4DBD25E2A955A6F756C0209E001300FB85A77
        6B131EE2737E27E6ABD6EB94B4586D03E43DB000B801A1CD5C5EF913656DC2C3
        74C0C774C0F73B77A2212CCD058BD1BDB9E28F5EB79F5541EF59EAF89C1FF5CC
        E98E5AAB0FAFF6EE6A3B14B09C44FEBACE9DE0522FE8A0C2AE2DC6F50BF3FF3D
        8BBF06000A89ACCFF90571920000000049454E44AE426082}
      Position = bpLeft
      Transparent = True
      TabOrder = 1
      OnClick = bt_nfe_danfe1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Enabled = False
      Layout = blGlyphTop
    end
    object bt_nfe_consultar: TAdvGlowButton
      Left = 182
      Top = 0
      Width = 87
      Height = 58
      Align = alLeft
      Caption = 'Consultar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000005F34944415478DABC965B8C5E5515C77F7B9FEB77BECB7C33EDDCDA
        7E1DCA8CD3D2522DD45E80D8C4169422248A2115A260E22B98A80F6AD407134D
        4C50135F8CC668C28346084A8294348A8519465A81523A6DA22D36AD0CBDB7D3
        99EF7ABE73CEDECB87999A5E9C4E4B53FFC97AD80F3BBFBDD6DEEBBF97DABAF5
        2900C45AA28525142159DBE2E4A9388ACF8AB0095889480F6051EA24C25EA518
        B5CABEA013E7FC74758223C70E716AE221AA675B80309FDC8B1722A05D895C5F
        7D576B792A6EB40AD6185CCF43690D80B5B6274BD38F7A9EF7849F0B7FE8F8DE
        D3D69A9FA6498C529A6B952B32431463C1527103E78FB1697EBC35D5A677E912
        962E5F4E777F1FB9421E11A151AD716AE2038E1E3CC8E4C9D37DC572F92751B1
        634BB9ABFFD189C34915D43581D5C39FFB2AE2F8E0054B3CDF7BABD1A8F70561
        8EF5F76D61D5BAB544A50226B317954FA1B5667A7292FDBB76B3E7D5113CCFC5
        8F8A7B766E6FAD4F9ACA5E4BA9D5B6479E44DCBCA70A1D6FD627CFAD2994CB6C
        FDE2630C2CBF95663D26896394BA2C0B1182282297F7F9E73BFBF9F3EF9FC324
        295129FFBC341A8FA8CC82BE7AE6CECADB3683EF7EAF9D245FF07C9F07BFFC25
        960E0F529D9CC61A73251440294C9AD28E132A1F594ABED4C5E1F1FD086AA5D2
        FA8068F987688D6835676882A80F37F85612B7587FDF160656CC40E7AF954244
        983E5B63D5BA35ACBE7B23CD5A0D71DC1F89E707E2FA5C2DB4F5CCE7DBAD7AD8
        BB64092BD7ADA5598BB91E196348DB19B76FDC40B15C264D922132F713A40E64
        7387ABE05E9319068687C9178B54CF4FFDEFF2CE99B8A2D56CD1D9DDCDE2C165
        1CDABB0FBF237C20080AAFCCD7C783AEE7B1A0BF1F33D79DCE231141BB0E0BFB
        FA39C43869D65E7EFEDCB1790C44A45B694D54C8F3A12582A335B9429E309767
        7AF244EF5FB7FF6A5EE732337B2D372AB182B582765CE3BAFE3C60A54E596B17
        D7AB3514EA43019552186368D4AA2471835267F78907B77D7D3ECB5407B234BD
        F3F4C4046AE38619C3BECE7B565A932629A7263E40391A8DB3D70F4B57DDA341
        7678BECFBF0F1E62EAEC19827C7E067E1D0F2B2A449C39769CE3478EE2070118
        5ECA5A29593C77689D387FF2C3DCB9C9D367187F633761E4A11DE79AA19EEFA3
        B466DFD8DF889B2D5CDF7F1337DB839792DA167156A59D4DD1CEA667638AB6A9
        E292D6EB38EE7772C5E22FF68E8ED15BA970FB86354C4FD6315936677B5D8096
        BA2276ED18E5D0BBFBF002CFC6E7CF7D8D2CC1E2B278A087CEEE4132E3C285C7
        AB15364970B5D302897EE9E70A0F9934FDCC5F9E7B1E931956DFB596B46D6835
        9B33DFE66CF995525C683FA515BB768C30F6D2CBA084BECAD0EF725EF48689DB
        785117DD5D2DC2A017711682A4B3EFC1216BD471868636921948DBE90B41187E
        D298B47278FC00D5A92AC572078572193F0C09A31C7E18E2BA2E029C38FA3EA3
        2F6EE79DD746505AB1747035C3B76DEC2A2DEC8F8B0BFBDFEEE8A990368E9126
        60F130591B63528CCD48E3166E1C0BD046B246CB71BBEE090BD133693B7D7CDF
        EB63FC6B7C9C45CB6EA57B511FB9FCEC20509B19048E1F394AD28A090B119EEB
        7FBB52195EAC1DE7C9B85EFDB9B5924F53F9B158C35C33893B33D168C475510E
        646D798254BF5CE8ECF866DA4EEF38BCFF00EFBDBB6FD660144A2B1CC7C50B02
        0A9D1D234923FE81D2E92BF51327414A0BC27CF468DC6A3C2D92443A7F8B4F92
        FD019BEDBDDC22DC2B8E62C1643C8B55CF7A9EB7D9F3BCCD28B51AE805ACA08E
        63ED5B2846AC98DD62C14A46E09479F1995F3FB66AD36073CD9D0F7CA5563DFB
        7D9C22E8EC71899BF7203271B13F5C095617FB87EC04765E31475DE87305264B
        E8EC5C46A1BBCC8A8F0D52CC757E2349DA0F83EAC4A6A0544505E1EBD28E3721
        F2FE450672633226239F5F80F2E08E0D77B378D18A9E66B3AA2F1D5DF5800A72
        23283574E1D0370C9EF1E914B142BD5623495BEF69A5EF07A62F85AB5B0873AF
        A2F51022370E9E43BBC5CABD97C395524B08C251945E76B3C0006F8B954F8BD0
        BA2473A15F974ABFBD996080BF23F22991993F7FF6D3463BCE5D371B0C3086C8
        16111AFF6567E6372EFF1F8D20B25E601BA829117EF69F01007684EC3F1FCFFC
        640000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bt_nfe_consultar1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Enabled = False
      Layout = blGlyphTop
    end
    object bt_nfe_cancelar: TAdvGlowButton
      Left = 269
      Top = 0
      Width = 93
      Height = 58
      Align = alLeft
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000053F4944415478DAC4974F885C551687BF73EE7D55A94E5226817455
        9B40A24C70E3C6859B9861C20C3303AE14375192744750D21D9C888BD1EECDEC
        BA1D611699907F0EE44F47548691590EE8E028C4B8C8226E4517061CD3550D89
        5D095657BD7BEF71F1AA5B43EA75060DCC81BB7A70BE73CFFD9DDF7D57FEB377
        2F2B11A3B1AEE6D83A5AA3DFEB6326281ED43C2EFD0E9327BCEAEE84EDC0E401
        00C49614B91652BA8CD827447D9F24211110312AD50A8BED2ECBDD8873B2CAF2
        94849901D4D47354549E07B74B44300C416035876C3178C8ABDB6B1878BEB0C4
        D914EC989975CBF26B1954D53DEB3377551D73C02E00C3282DF4876FBBD431E7
        337755D53D3BD8C0DDE094A058468C8625438459E7FDDBA2EE112B6795176120
        EA1E71DEBF2DC2AC0D72A764ACF07C960D1A264A561136D6B379900360F013A0
        77D08BCCD31BEB95ED467E50B09523C4D7EB456BB34A46A5529D35EC404A3F87
        7867A464D446FC819191ECEB7EBF3793F7FB88086A565461C633C96CFA7E427F
        0C4F66D3663CB3C25391753857F3CEFB63654248BD1E962288946717C15224F5
        7AA553E2BC3FE65CCD8BAC433187F7EE1555DD5696D0ADDF40EA762186E17011
        8881D4EDE2D66F282D5055B779EF5EC11CEA3D5575BC3C4C49A9B78C78CFCED9
        E38CEE9BA0DF5EC0427E6762112CE4F4DB0B8CEE9B60E7EC71C47B526F79E8D0
        A9E365EFADAAD1C73DA23236ACCB9265846F6FD2B9F4215BF71DA2313149DE5E
        C0F2015C04CB73F2F6028D8949B6EE3B44E7D287846F6F222BE372D798C958F4
        718F3BF2E82FA65474F7D02EAB439C63E9E37F6396688E4F42323A973F4247D6
        434AE4EDEB340E1EA6313EC9C2F993B4CE9EC06FDA8CB8325314CC687B2FFA78
        E9C09A21CE938D36685F388D18340E4D810A0B674F00D07CFE088DF1495AE74E
        D29E3F4DD6182BA0A5CE637891C73DC28E7B1981F88C6C748CD6C53390791AE3
        93C4DBB7000AE85B6FD2BA78866C740CF1D91AD0D54DEFF066525F6B4A56E159
        015FF8DB5F89376FF0E04BAF01F0CDF1D759FCC75B54C6B623DEDF1B0A98495D
        F93F8517B10EC896B55B3350EFE202CD17FE4063FF8B7C73E20D001E7CE935DC
        E62DB4CE9E20DBDA2CD47CCF56DB92C7B886B0734D68C87F50EFFE17695D38C5
        E2DFE701701B36D2189F843CD05A11D73DCE59E19A0F6657BCE8AF862A5B048B
        81BCDD6274FC308D89295AE74ED29A3F4D656C3B00ADF3A720198D435398407B
        FE4DB246730D650B21A52BEEF0A30F27AFEEE05011A448EA76694E4CD1D8FF02
        AD8B67685D385DA837CB1055B43642E7D38F4195E6F824BAAEC6EDAB570A0F50
        1DB21721B7F827EF82BB6462D745B9CBBD2CCFF19B3653DFF36B16DF3D47EBFC
        29B2D1E61DAD2CD4DEA475FE149A55A9FFF237DCF8D73F89B76F21CEDD65E996
        ECBA0BEE927CF6D4936415FEE832F9F3D0DB4904719EB0741357ABC1B0160E2E
        89D85DC63FB0098B61689B458498DBAB799F37E4B3A77F8F083EABEA5722B2AD
        EC5A94CCAFED48033D581ED06AB5EC6AFC6FDE4B3BCD086AB64C8CDD1043382A
        65D759B58AA85B7B4CCC1075A5501121867034C66E305B46458462F19E8ACCA9
        CA7D370B554145E644786F85E73B9D42E2220123CED4EBD9F6DA88BF6FFF5DAA
        42F7BB70B1D3C9678A9FBD62633ECF574F92100CC10ED646DCD720D308FF93F7
        969D79610D3677ABD39FE97E17F15E587909A82A144B704E1015CC9889213C67
        297E2EF21399297E1E4378CE8C1919E45615567965424829BE13F2F8588A4C03
        5FC28F5E2D43FD6835BE4C91E990C7C7528AEF9409D697572D984937055E47F9
        0B2EFD16B3279CB8DD88EDB0C1A34DC49630B9162C5E46E413A27E40222F7453
        5EE8F703002EBE857159353E1E0000000049454E44AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = bt_nfe_cancelar1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Enabled = False
      Layout = blGlyphTop
    end
    object bt_nfe_exportar: TAdvGlowButton
      Left = 450
      Top = 0
      Width = 87
      Height = 58
      Align = alLeft
      Caption = 'E-mail'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300001BAF00001BAF015E1A911C000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000003CA4944415478DAEC974D4F545718C77FE79E3BEDDC7961B424C498
        1989347DD18DA921DAC60DE95770DB453F423F83E9E768BA7021686448648569
        D8985663534920032E1406C80C638432732FC3CC7979BA80A1285690FAB2F149
        CEEEE6FCF23FCFFF79B94A44F81011F081E223F8BD450830FDFB1FB9A1C1C15F
        0B85C2F7D6DA77030A433637377F7BB2B4F4E3C877DFC62180B3FEE7C5E5D5AB
        5F7EFA09F96C8EF6F6364AA9B7021411A2749A5612B3B8BC7AD559BF02FC1400
        28158C349B2D1E3E9A214E12A228E26D9499881045117192F0F0D10CCD660BA5
        8291FD39967C3687B3C2BDFB0F8893846C26F3BFE022423693214E12EEDD7F80
        B3423E9B0390FD60E7BCE364A180F770777A9A3849C81C132E226476A177A7A7
        F11E4E160A38EF00DC01575B6B3935308042333935C5567BEB8D95F7946EB5B7
        989C9A42A1393530C0CBA63D504EDD6E97C15209E784DB772669773A4786F7A0
        ED4E87DB7726714E182C95E876BB47AB63D3357CFDF91718E3181D1FA7D3E990
        39C4702242268AE8743A8C8E8F638CDBB9A36B8EDE40BC788C355C38779E384E
        B8512E63ACFD4FE53DA5C65A6E94CBC471C28573E731D6E0C5BF59E7F2DEE345
        B87C719867CFD7B97EEB26C69803CA7B4A8D315CBF759367CFD7B97C71182F82
        F7FE782DD31883568A2BC397A8D5D7182D97B1CEEDB9BDE75EEB1CA3E532B5FA
        1A57862FA195C21873FC5EAD548088B06DBB9C2E16999D9F67AC5CC65A4B944E
        13A5D3586B192B97999D9FE774B1C8B6ED222228151C1F9C0A351B718B27ABCB
        10049C1D1A626E6181B189095410A08280B18909E61616383B340441C093D565
        36E216A9501F3E240E2845914A856CB49A2CADD5F0025A84289BA5582A315BA9
        509E9C0460B652A174E60C51368BB7162FB0B45603E064BE0F632C821C0E5640
        2A0C596F6E526DD411EF09B54600EF1CF9BE3E8AC5227FCECC00502C16C9F7F5
        E19C4380300870CEB1B4564344F82C5FC05873001DBE985345A8357F27CD3DA8
        D6FA05073BE7C8150AF4773A00E40A851DE83EA76BAD71CE516DD4090245219B
        C7BEF44DD0038222A5779E77B15EC3BF04DD0F17EF39D1DFCF89FE7EC4FB57D6
        B6D61AEF3D8BF51A1BAD26291DEE247177DC86BBE020D4011B71936AA3860884
        5ABFB64BF52E785D370BB5C6794FB5514329C5895C1EE77DB0077EBEB19E4A47
        11D5467D4779A88F3C180E5B18526188DD7BF680ED763BB5F7D4738F2BB34F57
        AAB00B73D6E29D7B2BC7F5A692084F57AACC3DAECCEE29DEB6E6DAB346E3AB30
        0CBFF1EF68C10F94C25AFB971177ED5F570741C53AF78BEFD81F4085EF66AF14
        EB95BA8E0E2A00EAE32FCCFB8A7F0600A20D6BB60D6CC5FE0000000049454E44
        AE426082}
      Transparent = True
      TabOrder = 4
      OnClick = bt_nfe_exportar1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Enabled = False
      Layout = blGlyphTop
    end
    object bt_nfe_status: TAdvGlowButton
      Left = 622
      Top = 0
      Width = 110
      Height = 58
      Align = alLeft
      Caption = 'Status do Servidor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000082A4944415478DABC974B8C5C471586BFAABA8F7EDDEEE99E87C733
        E389638213F232218922270B5B421024A4649308B141B008128A58248B48AC60
        859448110214B1446CB200450AAC4041C4482141480989B112391EE3783CD31E
        CFA37BBA6F77DF47DDAA62D19D714F1E8815B5AB5B75CF39F59FFFFC754A3CF9
        E44FC002211058AC150801A200E381B00E619C6F9C7ECC59FB7050A9DDEFACB9
        D55AD304905275855457F2D1E06D21E59B4AF87F704A682705AA003CB00EA472
        9049C800091E9F371C3867E7ACC97EA854F0BD6A75E158D43C4696F419F4DB04
        411900637454AB2FAD868BF53371F7DAB3C9B073CD98ECD74284BFC4C9DDCF33
        AFEEBAEB2CB87164288773E3135B937F5B08F7FB6866F99BF38B7735E68FDE83
        148AEDF6798E2C9F42007E5061A6752B7BDB1F327FE44E5A0BB71396EA0D7067
        74DAFF8EB3A62D95BAE000210123C00002E46745638AFC79BF5A7BF9E8EA838B
        8B2B0F50AB2FA1F32157D75E276A2CD19A3F4951641445466BFE24516389AB6B
        AFA3F321B5FA128B2B0F7074F5C145BF5A7BB928B2E7417CCA87FCB4D3E4D572
        75F6B9D51367683457B126C71ACDD6B5B709821A0BCBF7A2F5089C03E7D07AC4
        C2F2BD04418DAD8DB7B146634D4EA3B9CAEA893394ABB3CF992279D57DD2B170
        20EC38A7D6152F86A5FAE338CBFEDE65B2A44750AA33E8B749932E4756EEC359
        83B3F62615ACC559C39195FB4847DD71FE4B75B2A4C7FEDE65701096A2C7AD35
        2F32F1251C78C617E0399CCD9EF4FDE8D9E5D5D3E459CCEED6057ADDABD46756
        19F4DA349AC7A954E7D1F910CF2F21C4182CCF2F91A79A4A759E46F3387BDB17
        C9B298FEFE3A5278CC2DDE4D10466CAEBFF5AC4EE3BF8B30FC1D42A0EE78F00C
        56D98690EE2F478E9E2A556AB3787E8968E618BE5F21EE6D92265D9C73C4FD36
        79DA274B7A24C33DACD1982263D0BF4E67778D2CE991A5FB00B4E64E32BB7827
        4158C3F34B782A64306C7FDDFAFCCA792E53777EF1619CCD7F14358F3D3A3B7F
        1253A458AB1140B5BEC868B04B1046B4E66FC31419851E9165313A1F626D81B1
        1A670B7CBFCCCCEC711CE0FB65E697EE3EB0E56C41A93C439E0D4A59BC97795A
        9DF34C6142550A9F6EB46E0101CE3940208424197648467BCC1DF91251638572
        750EE72C7E50A5FDD19B002C1D7F189D0F1142E27925AC2DD8BDF101C9B083E7
        0538E7C63605345AAB0CFA5B4F93AB9F4A15AA47CB516BAE546E628AFC26EBA4
        4F3ADA430841A9DC24CF624C91614D8135C581C18FE7A6C8C8B39852B9891082
        74B48794FE7489522AB7A844AD3923B26F4883FD5AB9DC42291FE7A6D88A23CF
        06787E05A58209121349C31D96B8C9DC398752019E5F21CF07B8A97DCE5994F2
        29955B58E7BE2655E09F0A82E850894C76A2F588C0AF82109F70F65F74560802
        BF8ACE27B53EBD6A2D4110A142FF94A7A4B75AAECCE2F965845437B554F95853
        E0576A046144216FCA7A1046C8C9DE208C0E19F7FC327E58238F07F8410569FC
        299B01E54A0B25BD550F68EE5CFF1742CAC3110A89CE07C4BD0DB2641FE7CCD4
        92221D750158BF7C0E67A7D68422CF07982265E3A3B7602A7D08F131B24D7933
        4FFFDFE101DDF9A3F7D44BE526C6E487A0BEBA768E6AB4C8FCD1BB29747208EA
        6B97CF0170EC0B67C9B3F810D43BD72F308CB758397E1A63F421A8D3A4CBFAE5
        BF763D638BF564D4B9C5F34A14457AB0C9AA00A93C74363828A5E96127F0E613
        31B9F9BD406783F1BFF9E8D0619C6748461D8C2DD6A5C9F57B791E8F733C3D84
        C00F2AE47A38C9BDF81F0014E01CB91EE2079549354CD34692E73136CBDF930A
        F95A927430461F08FFD88420086A147A1CB5101229D5A44EC71520A4C2F3CB28
        1520A54208893139851E110435C454B0E3354D9A741042BD264D66FE94C49DDD
        34E9A2BC600AB29C72750E81244DF6F1830A5A270CE31B7477D7D0D9009D0DE8
        EEAE318C6FA075821F5448937D049272750E6BA738E305A4498751DCD9552EF8
        A3A73C95599DBDD4EB5CFD71A532871002104815A0BC12CA0BE86C5F24DEDF20
        CF6284F410421EF0A1BB7B19E72CCE16046184CE87282F20086BE3EF2E9F3470
        D0EBAC6375F69224CCD51D0F7D1594FAA74EFB3F08C37AA9565FC49A825EE72A
        3B5B1728748ACE8754A3059AB327886656985DB89D2CD9C7F72B2C1F3F4DA93C
        43A53A8B3139C3F80600716F13670CA57293B014D1DFBF4667E762CFF9C1B7AC
        2F334FA6129CE839679EEAEC5DFAAD548AEEDEBFC9923E8DE62AD1CC0A3736DF
        457921D1CC31B2B48710F240D7C7B75248585B204D7B84E5198E2C7F99787F83
        CEEE2586C31B34674FD0D9BB04394F29A17A0881BAE78EB3480DC2F7DE2F18B5
        F63B571FAAD616583E7E9A4A6D013FA820809DADF72957E726DD8760D06B0350
        6B1C050169B2CFD6C63BCC2DDC4EADBE48B93ACBCCEC09D251971BEDF338A77F
        A16CF8A2CC403A904E8093807008A19E9142BD628D9EB05CA0F3D1E42E6EB1BD
        F9EE019BA7E55348C5F6E6BB94AB2DA2C60A3A1F2184C0188D351A29D42B42A8
        67100E27C17DAABD15C24AE93DD1EFAEBFB071E50DE25E1BA902A4F2595CB99F
        3C1FB0BD791EDF9FD4A810F87E85EDCDF3E4F980C595FB91CA47AA80B8D766E3
        CA1BF4BBEB2F48E93D8110F6F31B7A6F4C40A5BC3F1769F6E1206E3F9267714D
        4A45B93A4B545F62FBFA0594E7634D8E941E854EE8EC5CE296DBCE128411837E
        9BBDED0FE86C5FDCB2B9FEBE17043F9BF4B388A986FE331D0B403AEF8255FC26
        4DBAD9B0BF756234D86E48CFC7F34A74F72E638A0CAD470CFAD7896656701876
        DAE7E9EEAC5D4B47DD9FA3FCEF7ACEFF07D2F1598EC5F4A3CD850E8C1BEB8D91
        186FD27F15D6B7367FCC3AFB485889BEE24C71F8D1A6BC2BD9287E470AF9B7C3
        8F3601CA8EEF3E2510993878B4FD6700B06D42DE5033317E0000000049454E44
        AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = bt_nfe_status1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object bt_log: TAdvGlowButton
      Left = 733
      Top = 0
      Width = 93
      Height = 58
      Align = alRight
      Caption = 'Configura'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000006DC4944415478DAA4975D8C9C6515C77FE73CEF3BEF7CECCC6CB7DB
        2EBB65B71A42B55C40884211C50F206850048C92AA8917120C774848B83092F8
        7143D29860BC31DE1012122506B93068C4A0608AB590364842881669A1416CB7
        DDED7CBE33F3BECF73BC9899EDCC76DBC678AEDE77CECCF93FCFFF7CFCCFC82B
        875F616C82102CD04B7B944B65CC6CE37DD01FA0AA8410A8D6AB3F4892E4BB21
        0480CCCC3E01BCCD84890981409AA6144B454464D24DC4654C44E8A53DD2768A
        8B1C3EF754662AB7884A9D303C6C5FFA570617DEC6431C629CB8CB85DD1A7874
        13B0E1F3C2150BE496E370C3CF24ECF5B907409D62A9DD747AF5F44B730B7394
        A212C102824CC7DA643AF96218409214938780F9C983F8E0C92DC79BBF1F6371
        E33766242E7978A638B322221B8023DB318A955C12184854F59924499E109597
        4CEC0EA64FB65F447EB6991D17B99D3B1676FC3171C93DDEFB6D18F3C0D754F4
        E524499E50D56780C2540A5F3DFAEA6490E72DD89D5358660705F9C0C4760B72
        E3456B614C2DE1033151848529BFCAF3AAFAA58D1C9FFEF76900729F53ABD7FE
        33539B619C3F0055FD94996DA6F0021BA5094116377FD5458E76B37DAAD96812
        B9615945CD46131161301890149207AAB5EA75C0C72673F8FF9A2047FA69FF81
        C67A8342A18099115DB17405E60D51C1A90B83DEE080C6FA2B2E8117C78EA410
        2122781FE8F533BC3744B64465D01B1C2897CA617965190B8638418BE5228140
        548818F801599E1D53D10BA9342372CA6CBD8CF7811327CFF0F63BA738B5DAA4
        5C2A3033936CDD36A26479766CE00744858840A0582E128510081668341B34D6
        1ACC6D9F5B9EA9CE4CF59F1924850875CA5FFEFA0F8EBC7E82336B6DF2DC532E
        25AC2C6FE73337EF61F7CA3CAD566F3ABFCED1ED7497D7CEAE1DADCFD529C405
        4208C8C1430769369AD467EB842CA0B1BEA84E6F9DA43A724A143B7EF7C21BFC
        F9E05B38E728C46E8389B49F3157AFB0FF2BFBF8C89E459ACDF43CED02C1873F
        852CDCA6B1D238D7A056AF0DFB388480AA2EC749FC94736E0AD40C66668ABC7A
        E41DFE7CF0AD21AD95849D3BAA279796EA2FCECE96A9568A34DB29CF3D7F8473
        E7DA948AD164B9E39CBB354EE2A7547579CC64A4AA3FAAD56BFB809B4CACB6B9
        A80A0547B39572E4F513444E890B11BB16669FDCB5ABFE70B1E41AE7D6FBFB8E
        BF7BF63951593CB5DAE4E8DFDFE373B7EC857E3E551F08DFC2B8A756AFFD4D55
        0FAB883C9624C91D406DAB4A4E0A11A7579B9C596B13C711B3B5D27B2B2BDB1E
        C8F3D0687707944AF1E1DD2BDBBEA722A80A27DF5FDB7A3E0F63D79224B94344
        1E53C05F6C908FE409EF0379EE01218AF5785C503F1620754214EB1155C50C06
        593E4E2D971020AF18EB63F9932D1A31F840B99C502E15300B743A834FB61AFD
        EB1C4A218E08B9D16AF41FF27E38ED6AD5122272017953F18D7545B839847067
        3EC8BF1F4258DB0CDEEB672C2ED4D9BDBC9DB49FD1EEF4A37FFE6BF5F7ED6EFF
        3BFD7EF6F153ABAD9FBFF3EED9FB7D305485BD7B162F1824224208616D847127
        C2CD72E8B54358303ACD0E41C287B7CD6DFB83CFFDD593555DAD24BCF7FE599E
        FCE52BB45A29957282AA8C021ADE075AAD949B6EB88AFBEEBD917E3FC7FB3039
        AB8FADAFAD7F5E4D8F576A1544E5BC2C2A4A27748EB7ADFD88C34DA69876B7CF
        EE9579BE7EEF8DECD85EA5D5EED16AF76834535AED1EBD7EC6BE1BAEE2CB5FB8
        9E1018D5C3081447DBDA8F7442E7B84EA8B01C7AED10DE7B4216082EA04E2B05
        299C306C7EB22005A8558BACAF7738FAC6BB9C7C7F8D41E6A9554BECDDB3C835
        1FDD8599D1ED0E509549813833B0C187820F1D0D8A468A738EC882A1A2B8C40D
        17B4105C70614A06C74F8D668F4AA5C8AD9FBE06EF0306E8A868D2DE803CF753
        A0237D260A9153A7842860C1B06044F8F37A6A66E0B85D90F98B7416BD7E46AF
        9F6D1CC83615D11692381F2CDCEE33FF1BE43C56D46C3637DAA6542D2D9693F2
        E397ECEB0B66C2E52D2A448F773BDD43DD76F703E7860BA37AEFF1DE93E51916
        6CBFA85C3DC9F1F816EA74CB1B4DDE5655B7F6A95C6DD8FEDCE778EFF1C1A3E3
        C676EA009EB660CF6EACADC10EE759FE0D55BDA5D3EADC9765D90B17030F2190
        67F961E0C766F6131139A64EC7BE67319E76E23606C9E6BD7AD5B0AF02BF4DDB
        E929A7EE4113CBC74BBD20BF8E5CF434CA37277956553A9DCEA3CD73CD034B57
        2E91E5193EF33FCCB2ECA74929991FC5BCFC422F227775DB5DCA95326EA4BB22
        820C87C683867D119805F0DE33BB6DF699A4981C70E288E3984136C0E7BED56D
        77BF9D9493CB2FF4538E514E877B95277631C107D26EDAF6B97F7D4CF9D2D212
        8F3EF2E82F6EFBEC6DDC7DD7DDBCF9E69BECDCB9739873A7FFDB5F98ADF6AD62
        B988D9B0E544E465E07A80344DB36BAFBDF678B55A4555A9542AF47ABDCBC6FC
        EF006D7A60F009B29A580000000049454E44AE426082}
      Transparent = True
      TabOrder = 6
      OnClick = bt_log1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object btnCCe_nfe_cce: TAdvGlowButton
      Left = 362
      Top = 0
      Width = 88
      Height = 58
      Align = alLeft
      Caption = 'CCe'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300001BAF00001BAF015E1A911C000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000001CA4944415478DAEC97C14ED4501486BFBF533A6490E81013A32B9E
        800770E146E2529EC6109EC0185FC197704B625C90086B1E820D0A248638C2DC
        FE2CDA617A9B5AB053428C9CA4E94D9BDEEF9E73FE73EFA96C731F96704F96CE
        0667DFC6C8BC96BD8D58EB95624E2C7DB0F8F2E4E5690C967923FC11B1D1BB7B
        02E16758EF80DD28D4B277E00EA073DB2819B51C8BF19D27B6C2482B8F432527
        9095CB72F7F0920317E5B8C6482309CC6C00FA2E9814E34E168065F0D8C5026A
        8CB4F1A301E8587092149E77B10B602DC74F2330ED6017ABE59161A923382BE7
        F00D751CD914F217393C5FBC8C98FE0D78E6F1C08B892B087E47E2E276399EA8
        6F71F120AE7F505C02A62A000D226A0A733FE20AE055C36AB4E9DEFE3CEE2CAE
        09B01E0AF5864A14D4DE782C2EAEA5F2726DEACB8639C5E37EC59594E53328EE
        3A4AD02FC5A754E6730FF9D40E6E7FD31CA152483A4AD00FCD53940319C1199B
        98839BA7CF3BB48D97149ECECEF2005EF61923B680836A85A4B5C2E8A5BFBA5E
        F8902923DE027BF5B24C622DF7643938F34FAFF8551334069BD35EA001C83867
        C41666FF4F1BD035D8D27BE07061F0D0C12BDE04BEB6ED7AE91CCC2E56E8DCD0
        97100FF98C6321354AE1BFFB77BA1A00CF47B0BF904B2CF50000000049454E44
        AE426082}
      Transparent = True
      TabOrder = 7
      OnClick = btnCCe_nfe_cceClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object bt_nfe_retorno: TAdvGlowButton
      Left = 537
      Top = 0
      Width = 85
      Height = 58
      Align = alLeft
      Caption = 'Retonar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001F0806000000F06C7D
        07000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000008764944415478DA8C97698C57E515C67FEF72EFFDDFFF32FBC0C0C0
        0CC308A8C810A11A50DB92D2A6294DB552F583D12E6AD39AB426D518BB494CDB
        44635BA3491362D2464DAA31A6D56028D55AD9DA8A0888585C18864D96D970F6
        FF7697F7F4C380388551CFA7FBE1E47DDE73EE739EE7BC6AF9F2E5003817E305
        75E41A3A014DB5D887E765B1410D5A09AF6C7C06A870E7DAD0DE7973EEA18B5A
        CDF7007A4EA64FAC7FA6F8D3F5CF9713CE445BE7522EEB5AC1F0E031FC9A16B4
        128AA7C748A208A5350096CF106325C395CBE6B2ACED10B7AE09D72F59ECDFD1
        7F641267C962EF9E5BD784B56345F9BE671C4E60EF6013E54AF48967AA4FABD8
        F8058A6547436DC877571D68BD69E55B2706870CCA2800D2046A0A8AB0562FA2
        B9D87DECADD97CF3E12F10CA2824A3D356AC3FAD5A01F299F4CA9E93FAF11777
        CF7AC739853172EEE60AD21470C94C060DEB9E99C7F0B810789F7CEE34C00A71
        0922D2A994BCE494D95CC8A6F3D3CAC0034363E9896C4E230EC4412EAF182FB9
        C1A33DA57D2FBC52C7DE2333985D5FED12914B9C4B00F5D9819D4BF0C386EF98
        20F39E4EF12BA95B555FCF57B6EC1C7EF4D997276ED7193DA12D680B5E4E4D6C
        D85ABDA5E386E2D8AD0F8CD25CE7130666A5F133EF06B9FADBC42517043E8F5C
        E21C9EF57E674CEE9E6A79FC3611F704024A4343ADC72B3B937FB43495977FEB
        EBE12D007FDD54F9F33F7755BB01A258D0065CC2E369945432D9C6271DD12571
        9CDC7B1EB04BA38FC8E55C8CE705BF4E93CA3DEFBCB96D557B47D7B69A9A3A48
        6244C0B31027502CB96EA55907502C39E2334505BE42048CA79838ED9E3AF0CE
        A1A38B97356DF56CBE5C74A3EB5CEA5067E8A183B091206C241336E167EAD604
        61F697FBDFFED7EADE5307B7054138E51F9D05F73D35C93A99FCF62E30944126
        4B5FEFD16DFBDF3CBE3A93F1EEF7C3E05A3F1BE0677DFCAC8FCDD7CD3FCB5E4F
        6BB531217D7878F4F466002D0AA5149F35923406ADD046A3540A1846872A9B5D
        5A7D305B57D890A4910FC40036163759BA52F73BA454AA96EEEBEC5A495C2E53
        0E415C8A529F3C7572A67D331BDA51E33195A4828B6051671BBE6F290E4EFCDC
        66333F52D6FCCAA5EE670056942022D62AFBE3B85CBA378E2BCC2CCC44D759CA
        E531925848BC0C4A1750D38CC6D9AEF88D2D94C31CA56282CE2A9A2E69C339C7
        482922ABF5DD39A57F2FCEAD534AC5DA88C32A75BD23D522D11F7D25B8CA3849
        7118CFA5289DA255847211EE4C77CE6B719C60BC904C3E4BD515C1A6389D50AA
        16A9C46594E788E2F29369128B36FA26145811C1186F6D54197AA3387E343636
        40443E5E0EAAEA2855FB88E3125A9BF3C5C0285C1A73F8CD2DC451E523593C27
        472042B2A0EBAA9D6DED8BAF2D17C79EB6188B23EDF44D7EA3AD5930A9811788
        4C26CBE8C4719C7B7B4A8E02D234A663D14A66CC68218ACAD372219BAB7DB51A
        956E442BAC052D220B2B263D28C64348412B3C2F338554156D29B477D05A6823
        A9F6022100713441DB9C16C6F2CBC8660C699A4CCFFAA47A304DE366A594B2A3
        A988116EE997BE1D63C908B57E131E01959153A41F933B11410779662BA80981
        DA1870A00DAF1FBA8AB6B9CD944B431875CE1D247524C58454C7A412A33C3DA4
        429545F06DC91A91527163C6CF72F9E5DF800F2B9C3CF836EFEE7F9DF1B181F3
        6E7D1C98E80BB8724516109EFA7B89DD7BF633D0D73DE5A200B6E0935FD840EE
        543DB9B001E7C55AA39C80D8B8BF9796964E967DEE3AE6B42E61DFAE0DC47179
        5299A68997772A6EFCC555D810B6ED7A11E8E683E31748AC8519977760572BEA
        7B5BA8F42433A96742A3235DE93D4E56873436B6512C8F3051FC90282A61ECF4
        CB4926A319AFFA8C577DFCCCF4CA96090BA87E0333047B87A0EBD40A19609F13
        419B206476C7921B8BA5E19D51B578B0B9A5F3B119B316D48C0C9F9AF6C04AA5
        442EE3C8860951A5347D5EDF38F9CE869A7CA1FEB1A450EDD6D7A477865FABE9
        EF897763172DFDD20D0B2F5BF5DC406F0F228ED9ED8BEFCA640B4BBBDFDFFE65
        AD4C32751B11824C0D49344A125730158F998BE711D59561549DE7F9923A3B67
        F5FC1773736ABE58395C447529745B7C7B30E46F56F73DB4E3701C953ACE8E8E
        88A08D2108F26B8117CE8AB1D686DA86399C1EE8E1BF3B9FA6F7F007847E487E
        7E0D7C5B50F304E9079229EBC5F569317A5E523739FB1A48051DD823169176E4
        FF361401112E3EEBD3DAF824A963F3A64729174F9054C7F0FC1042884FC5B8F5
        E09655B0D7688CF1D1EE23E48BA7AE36938622D06EA36A718F178457A4C9E442
        60AC8752261AE8EDD92E2E2193AD431373E4E07FD8B1E5292EEEBA9A6CA64075
        AC0C4E438DC0B8103F9D62CB01C52B46B0893F6928C26B5EDE475983240E1498
        C09094E23D46A1DE58B27CCD4D95F27888D2787E96DEA3BBF66CFDDB6FD71D3B
        B297D3FD3D8C0F1D66F8F45192141A9A5AD10AA2528AB10AEB59C4076712B2C3
        750CBC7A8CDD8F6FE2E4C66E4E6C3C70ACF9EAF6FADCACFC8AB49A4E327D5661
        A8FB4FBB6F3056D97E63EC5F66B42E14ADECFE0F070F3DD7F3DE4BABEBEA9A2F
        2A34B66C0A820C71B58C9FC9313232485D43335AA973C0BE4560522A7D455376
        2EC95895A1A153B83445678297B45507F2F3EB4B5AAB2DBD5B8FDCD1F7EF63EF
        5B946274B4FFB0D6E6272E85242E9338B53D08F2AF195C5BEAD4EDC67803531C
        6B9A05DC8923D225BA56AE863D7064701F95A171E2B1EAB3DAEA67D344A80C16
        5128B4D606DF0FCF58A1608C05CC8EB892CE55A2DAB45627B4D1EB80E638AA22
        67244D9C4CB14F710EA5D43C97261DC58911165FF6792EEDBA06ACA0EC643E22
        988C451935CDDB49814A39E144968A72771B63EF126D7ED03A77C1BB567B9BC1
        EDD556F769A303A015A52EF5B3E157956299A07E93B8F4C15254E2A24B57104D
        6C278EA24FDFABA718ED642D8F389147B45237D737B65C9724F15A41FF30D768
        728011A1AC507DDAB307C5B93F086C401BD2D41125D5695F12FF1B00390919D1
        8AE376380000000049454E44AE426082}
      Position = bpLeft
      Transparent = True
      TabOrder = 8
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2003Blue
    Background.Position = bpCenter
    Background.Color = 16185078
    Background.ColorTo = 16185078
    ButtonAppearance.DownColor = 5149182
    ButtonAppearance.DownColorTo = 9556991
    ButtonAppearance.HoverColor = 13432063
    ButtonAppearance.HoverColorTo = 9556223
    ButtonAppearance.DownBorderColor = clNavy
    ButtonAppearance.HoverBorderColor = clNavy
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 16773091
    IconBar.ColorTo = 14986631
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    SelectedItem.BorderColor = clNavy
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -11
    SelectedItem.Font.Name = 'Tahoma'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.Color = 16105118
    RootItem.ColorTo = 16240050
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -11
    RootItem.Font.Name = 'Tahoma'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 16773091
    RootItem.SelectedColorTo = 15185299
    RootItem.SelectedBorderColor = 9841920
    RootItem.HoverColor = 13432063
    RootItem.HoverColorTo = 10147583
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 13339754
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = 9841920
    Left = 1296
    Top = 304
  end
  object ImageList1: TImageList
    Left = 1320
    Top = 520
    Bitmap = {
      494C010171007500200010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D0010000010020000000000000D0
      010000000000000000000000000000000000000000003E3E3E0017171700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000069696900C9C9C900959595001616
      1600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000069696900DEDEDE00313131004545
      450015151500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0043434300818181003535
      35003E3E3E003F3F3F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00474747008383
      8300373737003F3F3F0015151500FFFFFF00FFFFFF00FFFFFF00BAE9FB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF005858
      580084848400373737003F3F3F0015151500FFFFFF00C3EDFC0048C7F500FFFF
      FF00F9FDFF00B7E8FA00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004E4E4E00676767003737370040404000161616006CD4F70003B4F100C6EE
      FC0030C0F40096DEF900FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004E4E4E006767670038383800424242004D4D4D004BCCF50019BD
      F2000DB7F200E1F6FD00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E4F7FE005BD1F7004F4F4F00676767008C8C8C00A9A9A9004197B40077D9
      F80003B6F10033C4F40080D9F800FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ECFAFE0059D1F6004C4C4C00CACACA00F7F7F700D3D3D3004BA1
      BF0074D9F8000CB8F200C7EFFC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0090E0FA0051CFF6004FA5C200F8F8F800FEFEFE005AB0
      CD006AD6F7002AC3F300E0F6FD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EBFAFE0062D3F80025C1F5004ECEF70083DDF8004EA4C2005BB1CF0068BF
      DC0041CAF60008BCF10068D6F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0095E1FA005AD0F7006DD7F8007DDCF8004BCD
      F60019BFF300F4FCFE00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0054CFF70067D4F80067D3F80050CEF70098E3
      FA0027C3F400ACE8FB00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7F8FE00A9E6FB00FFFFFF00C1EEFC0053CEF700FFFF
      FF00E2F7FE00A5E6FA00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8FDFF00ACE8FB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000949FA400A6ACAE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5E8
      E100F0DED500EED8CC00C2883300ECDAC200FEFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3EDED00BE9B9900BF988F00F1DDBB00F9EF
      DF000000000000000000000000000000000021201C0019181A001A141900ECEB
      EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00313131001517180015161A00FEFEFE000000000000000000B0D5E600259A
      C9002CA2CF002A9FCD002A84A90035698200B1B1B10000000000000000000000
      0000000000000000000000000000000000000000000000000000ECD5CA00E7CA
      BC00E7CABC00ECD1C900B1690900C2853800E3C2A900F6ECE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DDC9CA00AA786E009A5A4100914C2400BF801900D597
      2800F7EBD6000000000000000000000000001716120012100F00141211001B1C
      1A00EDEDEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4A
      49001F1D1C0014171500F2F3F200FFFFFF000000000097CCE3002A99C80033A0
      CB003EA2CC0062B2D5007DC4DF0076C4E00044A6D000286D8C00000000000000
      00000000000000000000000000000000000000000000FDFAF900E6C7B900E7CA
      BC00E7CABC00EAD0C800B7731600BC7A2200DAB18D00E7CCBE00F7EEEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4D2CF00B28278009C5E2D0097510F009149000097530A00BF997E00C79E
      7300D8931500E1A933000000000000000000171612001E1C1B001D1B1A001718
      1600191A1600F4F3F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00403C3C001B19
      190016141400C4C4C200FFFFFF00FFFFFF000000000078C1DE00299BC90043A4
      CD0000000000000000000000000000000000000000000000000073A4BB007486
      8F000000000000000000000000000000000000000000F0DED600E7C9BC00E7CA
      BC00E7CABC00E7CABD00CB955700AD600000C48A3D00DFBDA000DCB69600EFDC
      CF00F5EBDF000000000000000000000000000000000000000000F6F2F100CBAC
      A600A7715E00A269420098500A00944C0000A56A2400BA8C5500B7895900BF96
      7100E0AF4000E0A003000000000000000000161511000D0B0A00110F0E001516
      14001314100017171700FFFFFF00FFFFFF00FFFFFF00E6E6E400161519000D0F
      100016141400FFFFFF00FFFFFF00FFFFFF00000000009AD2E900209ACC007AAE
      C6000000000000000000000000000000000000000000000000000000000099BD
      CE000000000000000000000000000000000000000000EDD8CD00ECCFBB00EBCE
      BB00EBCEBB00EBCEBB00EACAB300B3690900B56B0800B3670600B3680700B163
      0100B0610000D9AD6700FEFEFF00000000000000000000000000BB908400A873
      5300A36A38009E6221009B590F00AF793800BC894600B57D3700B7864B00B385
      5800D3A34200E1A20000FDFBF400000000001714100015161400111210008C8D
      8B001D1914001C19150016161600ECECEC00C3C3C100181713001C1B1700171E
      1900FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2DEE40090AFBD0043B0DA007E8F
      9700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0DCD300B7A2C800BBA5
      CA00BBA5CA00BBA5C900BCA5CC00A67D7D00A57C7B00A57C7E00A78184009968
      5500925A3C0092593900F6F5FE0000000000F8F4F200D1B4AC00AA744900A46B
      32009E621B009A550700B8823A00B6782100B3771B00C4944700BF904E00AF77
      3A00C4954E00E3A50A00F4E0B200000000001C1915001718160018191700FFFF
      FF00B1AFAC0019161200211F1E001515150019181400201F1B0014130F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000316F8D00277CA2005E7A
      880000000000C3D1D70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6EAE400DEC1BC00E2C9
      C600E4CFCE00E9DCDD00EAE5ED00EDECFE00EDEDFF00EFF1FF00E2C7C600E6CE
      D600D5B09800A65D1200CEA77C0000000000B07D4E00B17C4500A3641200AB6F
      2500B27B3400AB670900BC7B0D00BC730000C98D2800E1B65500DAAD4100B177
      2200A96C2700D29C2E00E3AA2A00FDFBF4001A1713001717170016161600FFFF
      FF00FFFFFF00A5A3A30018161500181511001412110014121100FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C2E3EF0051AFD5002295
      C200000000000000000000000000000000000000000000000000000000000000
      0000319CCA0000000000000000000000000000000000FCF8F600FCECDC00FFF5
      E700FFF8EC00FFFFF500FFFFFB00000000000000000000000000F4D9C900FAE3
      DD00EFD1B800B2630000CE97460000000000D5B7A2009E5B0E00AF742F00A86A
      2000A35B0100B3711A00DCB37000C67E0100CA840600DDB15200E1AE2500B97A
      1900A35F0A00BC883600DD980000F6E8C5001A1713001616160012121200FFFF
      FF00FFFFFF00FFFFFF000D0A0600110D08001A1818001A181800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005F5E600000000000000000009CD1E500239A
      C900000000000000000000000000000000000000000000000000000000000000
      000024A1D2005C778200000000000000000000000000FFFFFE00EDD6CA00EBD1
      C500EBD1C400EAD0C400EBD1C600D9AE8900C0803000B56E0D00B7721900B773
      1E00B46C0A00AF650000BF7F3100FDF9F800F4EDE6009E5B1600AB703600974D
      0000AB690F00DAC39200DEBF8100D18E0C00D18A0000DCA94400E3B01C00C790
      28009E5A0000A2631400DD990000EFCD8200171514001316140016171500FFFF
      FF00FFFFFF0024222100111210000C0F0D00121212001313130013131300FFFF
      FF00FFFFFF00FDFDFD001E161600171514000000000000000000000000003C7D
      9B00000000000000000000000000000000000000000000000000ACCFDE00ABD4
      E7005BB1D4002690BD00426E83000000000000000000FEFCFB00FBF7F400FBF7
      F400FBF7F400FBF7F400F7EFEB00E3C2AD00D9AF8600C68E4600B5701800AF62
      0500AE630000B0680B00D5A87A00F6EAE50000000000BE8C6200B37E36009D57
      0300A8610500D4B78000DDC38700DAA53E00D3870000D4921D00E1AB1300D49F
      1C00A25E0500944D0400E19B0200E4A82E00171514000F100E0010110F00FCFC
      FC00312F2E001B1918001314120027282600E0E0E0001B1C1A0011121000211F
      1E00FEFEFE00474343001C141400181615000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009BD2E800366C83007099AC00C6CCCD0000000000FAF2EF00000000000000
      00000000000000000000E9CCBE00E7CABC00E7CABC00E7CABD00E9CFC500EACE
      C600E9D0C300F2E2DD00E6C8BB00EFDCD30000000000FDFBFA00A7650D00AD70
      27009D540000B3761F00E2C78E00E0C38300C8861E00B86F0000E1B01A00E2A8
      0400D5A43A00DEA31900E3B13D00F8E8CB00181615000C0D0B000B0908005652
      5100111210001213110013111000FAFAFA00FFFFFF00C9C9C70013120E001513
      12001A1B19001C1817001D1515001A1817000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0D4E800247799008D9DA5000000000000000000F9F3EF00000000000000
      000000000000FDFBFA00E6C8BA00E7CABC00E7CABC00E7CABC00E7CBBD00E8CD
      C100F7ECE800FEFDFD00F0DCD300EFDBD20000000000000000009C570000B378
      2F009F5C0B00A0590000EBD6AD00E7CE9100CE9D4A00AC600000E0B12A00DCA6
      0000E2A50200E3A50E00FEFDFA00000000001614130017151400110F0E00130F
      0E00171A1800191A1800E8E7E600FFFFFF00FFFFFF00FFFFFF001B1814001715
      1400191A18001A161500160E0E001A1817000000000000000000000000000000
      000099B1BD009EA2A60000000000000000000000000000000000000000000000
      000075C0DF00258AB400728A97000000000000000000FDFAFA00000000000000
      0000FEFDFD00F0DCD300E7CABC00E7CABC00E7CABC00E7CABC00E6C8B800FCFA
      F8000000000000000000F6ECE500F3E5DD00000000000000000098510200AF73
      2100A6662000974D0000EEE0BE00ECD29F00DFBD8100AE701C00E0B02500DFA8
      0000E1B63800F7E9C80000000000000000001918140018191700131412001715
      140018161500A8A6A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00BAB8B8001614
      130015161400181413001C141400161713000000000000000000000000000000
      000000000000A9D1E500305B6F007D8A900000000000000000000000000075B2
      CB002DA0CD002A94BF007598A60000000000FBF6F300FCF8F700FBF8F600FBF5
      F400FBF6F40000000000F7ECE700E8CCBF00E7CABB00E7CABC00E6C8BA00F9F1
      EE00FEFBFA00F8EFEB00E5C4B500FEFDFD000000000000000000AE764500A461
      0400AB6F2B00954B0000E7D5AF00F0DDB600EBD29E00E3C58B00E2B32D00F0D5
      8100FDFBF500000000000000000000000000191814000F100E00181917001816
      150075737000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001C1817001715
      140015161400171312001E161600131410000000000000000000000000000000
      00000000000000000000D2EAF6007EC3E0001E8BB600198BB600249AC8002EA0
      CD0030A0CB006DADC9000000000000000000FCF7F500FAF4F200FBF5F200FBF5
      F200FDFBFA000000000000000000F2E2DB00EBD3C600E7C9BB00E7C9BA00ECD5
      CA00F2E1D900E8CCBF00F2E2DA0000000000000000000000000000000000FBF7
      F400CBA4710097532100D0A96100F8F5DF00F2E5C300F0E0B600000000000000
      0000000000000000000000000000000000001B1A16001B1C1A0010110F006968
      6700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E4B4500191514001412
      1100161715001A16150019111100181915000000000000000000000000000000
      00000000000000000000000000000000000000000000AFD6E9005DB3D5004FAE
      D1007DC2DD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBF6F400F1DFD700E9CC
      BF00E8CBBE00FEFDFC0000000000000000000000000000000000000000000000
      000000000000E4D2C600F9F0D900F2DEB700F8F0DF0000000000000000000000
      0000000000000000000000000000000000001B1A160012100F001A151600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005D5A59001C1A1900191A18001515
      1500151515001715150019141500141113000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000015415700285F85004887BA003F899C00357E4A0042864500649C6600B4CF
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003464A85A325B
      A3E5477FB8FF3562AADC355AA20E000000000000000000000000898989038383
      83CC7E7E7EFF797979FF747474FF707070FF6B6B6BCA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F9F60074AE
      78002A65810093C6F80090C8F8004084C8002367A80097C1B1007DBF9900307B
      3300629B6500ECF3EC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B69AB5D5083BBFF7CB4
      D6FF7EB4D5FF5590C2FF3666AADE0000000000000000000000008F8F8F159292
      92FFD5D3D3FFE2E0DFFFDFDCDBFFE1DFDFFF707070F400000000000000000000
      000000000000000000000000000000000000D8D8D800CDCDCD00CACACA000000
      0000C4C4C400C2C2C200BFBFBF00BDBDBD00BABABA00B8B8B800B6B6B600B4B4
      B40000000000B1B1B100AFAFAF00BCBCBC0000000000F6FAF60067AC6C006FB6
      85004288A900DFF1FE005399D7001979BD004897C4004185B90072BF9F009FD9
      BB0065A779004C8C4F00EBF2EC00000000000000000000000000000000000000
      0000000000000000000000000000000000003E6FAE5D578DC0FF8EC4DEFF9FD2
      E6FF92C6DFFF609AC8FF274685DC000000000000000000000000000000009090
      906F8B8B8BBDC4C2C1FFD4CFCEFF7B7B7BF67878789C797979D2747474FF7070
      70FF6B6B6BFF676767FF636363FF606060D7D3D3D300FEFEFE00E1E1E100CBCB
      CB00DEDEDE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00D4D4
      D400B4B4B400D1D1D100FEFEFE00AFAFAF000000000083C28A0075BF8C0098D6
      B200549D8A0079B5D4008FB6D00054C8E3005ADEF40077CFEC004395CF005495
      760080C0980066A87A00629B65000000000000000000000000004985BD374983
      BAAF4A84BAEB4A85BCFD4983BBFD2F7834FF2A702FFF256A29FFA2D4E7FFA4D6
      E8FF7FBAD9FF3C62AAFD3662A51700000000A7A7A78DA2A2A2CC9C9C9CCC9797
      97CC919191DE9E9E9EFF9A9A9AFF828282F8848484FF878786FF878685FFA2A0
      9FFFD3CECDFFD3CECDFFE8E5E5FF646464FFD6D6D600FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00F4F4F400EDEDED00EBEBEB00E9E9E900E8E8E800EFEFEF00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00B1B1B100D0EAD30055AF5F00B4E9D20068BB
      73006DBC700087A4840074B7D200C1F5FC0062DEF6005CE1F70078D2EF004495
      D60055947400A5DBBF002F7A3200B5D0B600000000004D89BE654E8EC1E74B88
      BCCE4682BA7C457EB728457EB72836823DFF7CC181FF2B7331FF98CBE2FF8CC3
      DDFF4E82BBFF3662B0170000000000000000AEAEAEFFE4E2E2FFD7D5D5FFD5D3
      D2FFD1CECDFFCAC4C3FFC8C3C2FFCDC9C8FFCCCACAFFCCCAC9FFD8D6D6FF7473
      73FFB9B1AEFFB7AFAEFFD3CECDFF686868FFD9D9D900FEFEFE00C5B59300E3A8
      6800FEBA6300FEBB6400F6AD5C00CEAC8000D7D7D700EAEAEA00E9E9E900E7E7
      E700E7E7E700E7E7E700FEFEFE00B3B3B3008BCE940091D6AE009FDDB30083C5
      6F00A7CF7F00C4A45B00919A760076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004495D5006AB49E0080BD9B00629B65004D8EC1375394C3E74E8DBF86F5DD
      CC1FF2E2CE414A9D52FF44954CFF5DA664FF84C68AFF529A59FF2D7532FF286E
      2DFF3B6EAD59000000000000000000000000B4B4B4FFE0DDDDFFA7724DFFA772
      4DFFA7724DFFA7724DFFA7724DFFA7724DFFA7724DFFA7724DFFDAD5D4FF7878
      78FFBAB2B1FFB9B1AFFFD4CFCEFF6D6D6DFFDCDCDC00FEFEFE00D3AA7800EEBB
      8D00FEBF6500AFC2C400FEA55B00E3AE7300D7D7D700EDEDED00B6B6B600B6B6
      B600B6B6B600B6B6B600FEFEFE00B5B5B5006EC57900AFE8CE0082D38F00BEDB
      8900C2CA8100CBA15500D9AE5B00A5AE7F0078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F1004299D5008FC9BF00418544005497C5AF5494C5CEEEDECE20F2E0
      CE56F1E2CE6551A75BFF96D19EFF91CE99FF7CC485FF87C98FFF82C58AFF2F78
      34FF00000000000000000000000000000000BABABAFFDEDBDBFFB5805AFFCE98
      70FFD8AE91FFD9AF91FFD9AF91FFDAAF91FFD6A077FFA7724DFFD7D3D1FF7E7E
      7EFFBBB4B3FFBBB3B1FFD4D0CFFF737373FFDEDEDE00FEFEFE00F9C78800CC9A
      7E00A1B4B800AFC2C400AB938900F2B97700D7D7D700F0F0F000EEEEEE00ECEC
      EC00EAEAEA00E9E9E900FEFEFE00B8B8B80065C47100BDEEDC0072D07C008FD0
      6B00BBDF9D00C6A65D00D2AF5D00C598520097BA8E007BD3EC00C3F5FC006BDC
      F5006CC9EC0062A2D600629FD1003B8350005A9EC7EB5395C67CF3E1CC48F2E1
      CE6BF1E1CD6A58B162FF53AA5DFF6CB675FF94D09DFF62AB6AFF3C8A43FF3682
      3DFF00000000000000000000000000000000C0C0C0FFDFDCDCFFB47F59FFCB95
      6EFFCD976FFFCF9971FFD19B72FFD29C74FFD49E75FFA7724DFFD7D4D3FF8484
      84FF3BA142FF379437FFD6D1D0FF787878FFE1E1E100FEFEFE00FBCB8D00B2B0
      B4009CC7F200A0CDF7007499BC00FACB8D00D7D7D700F3F3F300B6B6B600B6B6
      B600B6B6B600B6B6B600FEFEFE00BBBBBB0066C57300BDEFDB0080D7820076DA
      6C00BEE49900CBDEA600C9A75C00C1BC6B00B7D98A0079CB8A007DD4E900B1E2
      F8008ABFE600ADD2F500C3DFFB00639DCD005FA4CBFD5198C428F1E0CE67F2E0
      CD6FF2DFCD6EF2E1CE6BF1E0CC6855AC5EFF9CD4A5FF4A9D52FF457EB7284A85
      BCFD00000000000000000000000000000000C5C5C5FFE1DEDCFFB37D58FFC791
      6BFFC9936DFFCB956EFFCD9770FFCF9971FFD19B73FFA7724DFFD9D5D4FF8B8B
      8BFFA0C8A4FF50A956FFD7D3D1FF7E7E7EFFE3E3E300FEFEFE00FBCB8D008199
      B9004C7FB5002F629600254D7600F7C88C00D7D7D700F6F6F600F4F4F400F2F2
      F200F0F0F000EEEEEE00FEFEFE00BEBEBE0072CA7E00B2EBD1009AE1A1009CE9
      8C00D3ECB600CFE9C600CEB86D00CBB06500CAC8740075DA66004DCC810076BD
      E600B3D1EF00E4F2FE00ABD1EE00478CBC0060A6CDFD5898CB28F2E1CE6BF3E1
      CD74F2E0CE71F2E0CD6FF2E1CE6C5BB566FF56AF60FF51A75BFF457EB7284D89
      BDFD00000000000000000000000000000000CACACAFFE1DFDEFFB17C57FFC48E
      68FFC6906AFFC8926BFFCA946DFFCC966FFFCE9870FFA7724DFFDBD6D6FF9191
      91FFC1BBB9FFC0B9B8FFD7D3D3FF848484FFE4E4E400FEFEFE00FBCB8D00EEC1
      8700B09A7600A5957500CEAA7700FBCB8D00D7D7D700FBFBFB00EBB57300E5AD
      6900DFA45F00DA9C5500FEFEFE00C1C1C10093D69C0097DDB400B4EACB00B0EE
      A600C8EDA800D0E9C800D4CE8C00D8CA8A00CCB36500BBBB660099D5700067CE
      950057A4D70084B0DA00459CCF0057A497005EA5CDEB579FCA7CF1E2CF52F1E0
      CD78F1E1CE76F2E1CD73F2E0CE71F2E1CE6CF1E1CD6AF2E0CD444984BC7C4C87
      BCEB00000000000000000000000000000000CECECEFFE2DFDFFFB07B56FFB17B
      56FFB17C57FFB27D58FFB37E58FFB47F59FFB5805AFFA7724DFFDCD8D7FF9898
      98FF8D8D8DFF8A8A8AFFD9D5D4FF8B8B8BFFE5E5E500F9F9F900F9F9F900F8F8
      F800F8F8F800F8F8F800F7F7F700F7F7F700F6F6F600F6F6F600F5F5F500F5F5
      F500F4F4F400F3F3F300F3F3F300C5C5C500DAF1DD0063C47000BFF2E100B4EE
      B300B4EFAB00C0ECB600D3E2B600D8D79B00D9D29400CCB46C00C6B26C00B4CA
      830093DE9900AEE6CC00479B4E00C4DEC6005DA5CCAF5DA3CCCEF1DECB28F1E0
      CD69F1E0CD79F1E1CE76F3E1CD74F2E0CE71F2E1CE5BEEDECE204E8DC0CE4A87
      BCAF00000000000000000000000000000000D3D3D3FFF1EFEFFFE2DFDFFFE2DF
      DFFFE1DFDEFFE1DEDDFFE0DDDCFFDFDCDBFFDEDBDBFFDEDBD9FFEDECEBFF9E9E
      9EFFC5BFBEFFC3BDBBFFDAD6D5FF919191FFF3F3F300EAEAEA00EAEAEA00E9E9
      E900E8E8E800E6E6E600E5E5E500E3E3E300E1E1E100DFDFDF00DDDDDD00DBDB
      DB00D9D9D900D7D7D700D5D5D500E7E7E7000000000098D8A10086D69F00BFF1
      DD00C6F1D500D4EED400CFE8CE00D4DAA500DBDDAA00DACC8F00D6C78A00C8C0
      8D00BCD4AE0079C690007DBD8400000000005BA5CA3760A6CEE75AA2CC86F1DE
      CC29F1DFCD54F2E0CD6FF2E1CE6CF0E0CF4DEFE0D1224E8FC186518FC2E7498A
      BD3700000000000000000000000000000000D6D6D6F9D3D3D3FFD0D0D0FFCCCC
      CCFFC8C8C8FFC3C3C3FFBFBFBFFFBABABAFFB5B5B5FFB0B0B0FFAAAAAAFFA5A5
      A5FF949393FF929191FFDBD7D6FF989898FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFEFC0085D18F008BD7
      A100CCF4E700D3ECD900CDECD200CEDEAE00D5DDB400D3D3A100CDCFA000C3CF
      A90086C8900071BD7900F5FAF50000000000000000005CA5CE6560A6CEE75DA4
      CCCE599FCA7C589ECB285198C4285399C67C5598C6CE5696C5E74F8EC1650000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CFCFCF48CBCBCBE4DFDFDFFFEAEAEAFFCFCAC9FFCBC6C5FFCAC4
      C3FFC8C3C1FFC7C1C1FFDCD9D8FF9E9E9EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFD0099D8
      A10064C57100A4E0BA00B9E9CB00C4DFBD00C4D9B300BCD6AF00A5D6AB005FBE
      6A0089CD9100F7FCF800000000000000000000000000000000005BA5CA375DA6
      CCAF5FA6CDEB62A7CDFD60A5CCFD5C9FCAEB569AC6AF5293C637000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0D0D00FCCCCCCABDCDCDCFFE6E3E3FFE1DEDCFFDFDC
      DCFFDFDCDBFFDEDBDBFFEEECECFFA5A5A5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9F1DC0095D79E0074CB7F0067C6730064C571006EC87A0090D59900D2ED
      D500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDCDCD9FC9C9C9FBC4C4C4FFC0C0
      C0FFBBBBBBFFB6B6B6FFB0B0B0FFABABABA70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFF000353FF00014D
      FF00E5ECFE00000000000000000000000000000000000000000000000000F4F5
      FF000151FF000353FE00F9F9FD00000000000000000000000000F7FBFD00F6F5
      F500D1967900AA543700AC4B2A00AD492500AC472500A9472800A64C3100C67E
      5F00F4F2F300F7FBFD000000000000000000000000000000000069A8DF0D5A5A
      5A253D3D3DC44D4D4DDF494949F8474747FF474747FF454545FF474747ED3838
      38C65656562A69A9E10D00000000000000000000000000000000F7FBFD00EDE8
      E300A4774A00AE7A4100AD783C00AC773B00AC773B00A9743800A9753C009767
      3A00EAE5E000F7FBFD00000000000000000000000000FCFFFF000151FF000050
      FF00E2E9FF00000000000000000000000000000000000000000000000000F1F7
      FE000050FF000151FF00F6F7FE000000000000000000B9D2EA00277ACD008762
      6200BE5F3400FDB86000FDB86100FDB86100FDB86100FDB86000FDB86000B048
      23007E6972003381CE00B3CFE80000000000000000006DA2D3792579CDFB5E5E
      5EFF4F4F4FFF848484FF848484FF808080FF545454FF838383FF848484FF4A4A
      4AFF454545FF2E7ECEF86DA2D3830000000000000000B9D2EA00277ACD00BF8D
      5300B4804200D2AE8400D2AE8400D0AA7E00B8844600D1AD8200D2AE8400AF7A
      3E00A8753B003381CE00B3CFE80000000000F3F7FF00ABC4FF000858FE000656
      FF00A0BAFD00ADCAFF00ADCAFF00ADCAFF00ADCAFF00ADCAFF00ADCAFF00A8C1
      FF000656FF000854FE00A7C1FC00EFF5FF0000000000297DD00081B9ED009E65
      5700F4BA8300FEAB5A00FDA75900FDA15600FD9B5200FEA25400FE9E4F00F7AD
      7700A35D490082BBEE002A77C9000000000000000000297DD1FE82BAEEFF5F5F
      5FFF8F8F8FFF7A7A7AFF777777FF6D6D6DFF4E4E4EFF727272FF6F6F6FFF8484
      84FF555555FF83BCEFFF2A77CAFE0000000000000000297DD00081B9ED00C08E
      5400D7B89300CDA57700CBA27400B9926F00B17E4300C99E6D00C79B6800D2AD
      8400B783480082BBEE002A77C90000000000DCE8FE00014DFF00115CFF00115C
      FF000C5BFE000C58FE000C58FE000C58FE000C58FE000C58FE000C58FE000C58
      FE00115CFF00135EFD00004CFE00D0E2FF00000000002A7DCE0077B2E900B29D
      9300FEB65F00FEB56200FDB16000FDAB5C00FDA45800FC9D5200FD964D00FE8C
      4200BB8E81007DB7EC002C76C7000000000000000000287CCEFC78B3EAFF7A7A
      7AFF838383FF7E7E7EFF5D5D5DFF494949FF4C4C4CFF555555FF646464FF5F5F
      5FFF6D6D6DFF7EB8EDFF2974C7F800000000000000002A7DCE0077B2E900CDA5
      7800D1AD8200CFA87C00B68758004C4DA50076617B00B5834A00C3925B00C08D
      5400C69966007DB7EC002E77C80000000000DCE8FE000050FF00135EFF00135E
      FF000C58FE000C58FE000C58FE000C58FE000C58FE000C58FE000C58FE000C58
      FE00135EFF00135EFF00004CFE00D3E0FD0000000000E0C9BC0089534300FBC7
      AA00FED09700FDC66C00FDBE6700FDB86300FDB05D00FDA75800FC9F5300FEB6
      7900FDA87F00874F4100D3BBAF0000000000000000004C4C4C6C636363FFA4A4
      A4FF505050FF525252FF5B5B5BFFB8B8B8FFC1C1C1FF575757FF4D4D4DFF5A5A
      5AFF7E7E7EFF606060FE464646730000000000000000D0B9A200C2915A00E1C9
      AF00B5814300B6824400B7875400495ACF004F5FD100B9864B00B27E4000BE89
      4D00CFA87C00BD8C5700CAB29D0000000000DCE7FF000459FF00286CFF004A7E
      FF000B56FF00115CFF00115CFF00115CFF00115CFF00115CFF00115CFF000E59
      FF003F7CFF003B79FE00034FFE00D3E0FD0000000000FFFEFE00DEB9A400C34B
      1E00F5E3D500FEE3A300FED37100FEC86800FEBF6200FEB55E00FEC07F00F5D6
      C500C4481E00D7AF9A00FDFCFB00000000000000000049494902777777894C4C
      4CFF4E4E4EFF979797FF595959FFABABABFFA5A5A5FF545454FF868686FF6262
      62FF4A4A4AFE44444478484848050000000000000000FEFDFD00D8BFA500B17C
      4000B37F4100DBBE9D00BD894B00C3B5BB005D66C700B2804C00D2AF8700C190
      5800AE7A3E00C9AE9500FDFBFA0000000000DDE9FF000053FB00C8D6FF00F2F3
      FF00135EFF00115CFF00115CFF00115CFF00115CFF00115CFF00115CFF000656
      FF00EDEFFE00E6F0FF000047FA00D2E3FF000000000000000000FDFAF900D9B3
      9D00BB471B00F3E1D3004D7AA8004C7AA7004C7AA7004D7AA800F2D5C200BD45
      1B00D4AC9700FBF8F600000000000000000000000000000000004848480E4949
      49834B4B4BFF989898FF5C5C5CFF557CA3FF557CA3FF4C4C4CFF989898FF4E4E
      4EFF4C4C4C844848480C00000000000000000000000000000000F9F5F100C7AA
      8C00B07C3E00D7BD9F00958170005471A300425DB400A1785E00D8BD9F00B37F
      4100CAAB8E00F9F6F3000000000000000000000000000133F300C7D9FF00DFEB
      FD000656FF000450FF000450FF000450FF000450FF000450FF000450FF00004A
      F900D7E3FF00DDE9FF000622EB00F3F7FF00000000000000000000000000FDFB
      FA00A0827400336CA6009BCBF700AED3F600AED3F600A4CEF5003373AD00987B
      7000FBF8F7000000000000000000000000000000000000000000000000006946
      32083D3D3DAB416F9EFF9CCCF8FFAFD4F7FFAFD4F7FFA5CFF6FF4176A6FF3737
      37AC65422E0A000000000000000000000000000000000000000000000000FBF9
      F700AF8E6C00527190009BCBF700AED3F600AED3F600A4CEF50050789900A88A
      6B00FAF8F60000000000000000000000000000000000578AFF002368FF005A8C
      FF001C5DFD002065FF002065FF002065FF002065FF002065FF002065FF001D66
      FF004F87FF003D7AFF004579FC00000000000000000000000000000000000000
      00005B80AA00A5C9ED00AACBE900A6CFF500A7CFF500AACBE900A6CCED005681
      AD00000000000000000000000000000000000000000000000000000000000000
      0000305D8FC8A6CAEEFFABCCEAFFA7D0F6FFA8D0F6FFABCCEAFFA7CDEEFF2E62
      9ACC000000000000000000000000000000000000000000000000000000000000
      0000617FA100A5C9ED00AACBE900A6CFF500A7CFF500AACBE900A6CCED005881
      AD000000000000000000000000000000000000000000000000003B79FE007CA7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000B3C7FF002E69FE0000000000000000000000000000000000000000000000
      00002E68A100D8E7F60096C4F0008DBAE4007EA8D00088B4DE00CCDEED002E6F
      AB00FBFDFE000000000000000000000000000000000000000000000000000000
      0000184878F79BB7D1FFA3C9EDFF9FC5E8FF74A1CDFF81B0DDFF96B3CEFF1A4C
      7EF96AA0D2060000000000000000000000000000000000000000000000000000
      00002C659E00BCD6EE00A2C8EC009EC4E70073A0CC0080AFDC00B6D2EA002C6B
      A700FBFDFE0000000000000000000000000000000000000000008CB5FF002368
      FF00000000000000000000000000000000000000000000000000000000000000
      0000477FFE006597FE0000000000000000000000000000000000000000000000
      00000B3D86007B96B70089B6E300709BC700143F6D001843710021446A00153E
      6800FAFBFC000000000000000000000000000000000000000000000000000000
      0000113667FF2A4B71FF4C759EFF3B638EFF11355BFF28527BFF1C3959FF1032
      55FF58738E0B0000000000000000000000000000000000000000000000000000
      0000103773007792B40089B6E3006692C20010345A0014385E001B3858000F31
      5400F8F9FA000000000000000000000000000000000000000000D7E3FF001D66
      FF00000000000000000000000000000000000000000000000000000000000000
      00002464FD00C8D6FF0000000000000000000000000000000000000000000000
      00000E4A960011579E000E4989000E4A8600104A8600144B8400114074001B3D
      6400000000000000000000000000000000000000000000000000000000000000
      0000375279FF255A93FF0C3E76FF245485FF0E3E73FF265584FF163E69FF1430
      50FE000000000000000000000000000000000000000000000000000000000000
      0000365178000E488E000B3D75000B3D72000D3D7200103E6F000E3560001430
      500000000000000000000000000000000000000000000000000000000000BBCF
      FF007EA4FD00DDE5FF00DCE8FE00DCE8FE00DCE8FE00DCE8FE00DDE5FF00A3BD
      FF00AAC3FF000000000000000000000000000000000000000000000000000000
      0000909FB800114E950011579A0011579800105292000E4986000E3E71008795
      A300000000000000000000000000000000000000000000000000000000000000
      00005F636980284D7DFF2D6196FF0F4988FF2C6093FF0C3E73FF1B3D60FF595E
      638E000000000000000000000000000000000000000000000000000000000000
      0000AEB0B300274C7C000E4889000E4887000D4480000B3D72001A3C5F00A2A5
      A80000000000000000000000000000000000000000000000000000000000FBFD
      FF00195FFE004880FF00477FFE00477FFE00477FFE00477FFE004783FF001D62
      FE00F6FBFE000000000000000000000000000000000000000000000000000000
      0000000000008B9BB5001B4F91000F4A8F000E478900194881008595AA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000565D688D133F7AFF0D3E7DFF0C3C76FF123969FF4E56639D0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A1A5AB00123E79000C3D7C000B3B75001138680091969E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3EA
      F600000000000000000000000000000000000000000000000000000000000000
      0000D0E3F200FCFDFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A812900027A
      1D00DEEEE1000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECECEC00F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000113D55F7285F87FB4988BDFB428DBCC17896AE53AAAAAA1E000000000000
      00000000000000000000000000000000000000000000000000000000000054AF
      DF0051A7D400B6D8EB0000000000000000000000000000000000C4DDEE004F97
      CD001875BB0000000000000000000000000000000000DFB49200D49C7300D095
      6700CD916200CA8D5D00C8895A00C6865500C2835100C283510008822C0042A0
      5E00147B2300A4814800CFA07C00000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00AFAFAF00B5B5B500F4F4F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B6583FB94C7F9FF91C9F9FF4185C9FF2367AAFF9DABB7FFAAAAAA210000
      00000000000000000000000000000000000000000000000000000000000075C8
      EB007FCBEA004BA7D300429DCD00A5CFE700B2D6EB00489BCF003494CE0063B8
      E2003C8FCC0000000000000000000000000000000000D6A07400F7F1EC00F6EF
      E900F5ECE500F3E9E100219651001B904900158E43000F8A3B00399E5D007FC0
      950045A2610016862F00A5875200000000000000000000000000000000000000
      00000000000000000000EEEEEE00B3B3B300DFDFDF00D7D7D700B5B5B500F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      00004389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF458BC3FFA0AEBBFFABAB
      AB210000000000000000000000000000000000000000000000000000000092D5
      F0007ECDEE00ACE4F6008BD0EA0053AED9004AAAD9007AC9E90095DDF5006CC1
      E8005BA4D50000000000000000000000000000000000D8A37900F8F2ED00EAD1
      BD00FEFEFE00EAD2BE00289A5A008FC9A8008CC7A40089C5A00087C49D0069B5
      840081C1960047A465000F7D2500CFE6D4000000000000000000000000000000
      000000000000EEEEEE00B6B6B600E1E1E100FCFCFC00FCFCFC00D8D8D800B5B5
      B500F4F4F4000000000000000000000000000000000000000000000000000000
      00001D699C637AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0EDFF4E9ADAFFA5B1
      BBFFABABAB21000000000000000000000000000000000000000000000000AEE1
      F4006DC7EB00B0E8F80095DFF600A6E5F700A2E3F70090DDF5008BDAF5005FB8
      E3007DB9DF0000000000000000000000000000000000DCA77D00F8F2EE00EACF
      B900EACFBA00EACFBA00309E620093CCAC006EB98D006AB7880065B5840060B2
      7F0066B4810082C197003B9F5B00038027000000000000000000000000000000
      0000EFEFEF00BABABA00E3E3E300FCFCFC00FAEBD400FCD19600FCFAF600D8D8
      D800B6B6B600F4F4F40000000000000000000000000000000000000000000000
      0000BABABA3B83A6B7F976B9D6FFC2F6FDFF63DFF7FF5DE2F8FF79D3F0FF4897
      DBFFA7B2BBFFABABAB210000000000000000000000000000000000000000C5E9
      F70058BFE800B3E9F9005BCFF20051CBF10048C8F0003FC4EF009BE0F60053B0
      DE009DCCE70000000000000000000000000000000000DEA98100F8F2EE00E9CD
      B600FEFEFE00EACFBA0036A26A0095CDAF0093CCAC0090CAA9008FCAA70073BB
      8F0089C6A00045A4670008863400F0F8F300000000000000000000000000EFEF
      EF00BDBDBD00E4E4E400FCFCFC00FAEBD500FCCC8500FECE8B00F9D09600F8F6
      F200D8D8D800B6B6B600F4F4F40000000000000000000000000000000000BDBD
      BD3BBCBCBCF6E5E5E5FFB0D4E5FF77CBE7FFC7F7FDFF5EDCF5FF5AE1F7FF7BD4
      F1FF4A98DCFF9DAEBEFFACACAC21000000000000000000000000FAFDFE006EC4
      E8008FD6F000B4EAF90061D1F20058CEF1004ECAF00044C7EF007ED7F40081CD
      EA00479FD100F2F8FC00000000000000000000000000E0AD8600F9F3EF00E9CA
      B100E9CBB200E9CBB2003CA46E0037A26D0033A067002F9C610054AE7B0090CA
      A9004EAA7300188F4500BB855200000000000000000000000000F0F0F000C1C1
      C100E6E6E600FCFCFC00FAEBD500FCCC8700FED49700FED59B00FECF8D00F6CB
      8C00FCFBFA00D8D8D800B6B6B600F5F5F5000000000000000000C1C1C13BC0C0
      C0F6E7E7E7FFFDFDFDFFFBECD6FFBEC4A0FF79D3EEFFC7F7FDFF5FDCF5FF5BE2
      F7FF7AD6F2FF4E9FDEFFA1AFBBFFACACAC1F00000000FDFEFF0076C7E8006EC7
      E800BCEBF90078DAF50067D4F3005DD0F20054CCF1004AC9F00041C5EF009BDE
      F40056B0DA004EA2D000F4F9FC000000000000000000E2B08B00F9F5F000E9C8
      AD00FEFEFE00E9C8AF00FEFEFE00FEFEFE00FEFEFE00E7C6AB0038A2680059B2
      800027975600E9E1D500C58554000000000000000000F1F1F100C4C4C400E7E7
      E700FCFCFC00FAEBD500FCCC8700FED49700FED69D00FED59A00FECD8800FCE0
      B900FCFCFC00D6D6D600B4B4B400F8F8F80000000000C5C5C53BC3C3C3F6E8E8
      E8FFFDFDFDFFFBECD6FFFDCD88FFFFD598FFC1CEB2FF7DD4EDFFC4F6FDFF6CDD
      F6FF6DCAEDFF63A3D7FF649DD0FF6F9BC1380000000080CDEB0071CAE900C3EE
      F90098E3F70078DAF5006DD6F40063D2F30059CEF20050CAF10046C8F00062CF
      F2009ADEF40054B0DA0057A7D300F7FBFD0000000000E4B38E00F9F5F100E8C5
      A900E8C5AB00E9C6AB00E8C6AC00E8C8AD00E8C8AF00E7C6AB003DA36D00309E
      6400E0C9B100F1E6DD00C789580000000000F2F2F200C8C8C800E8E8E800FCFC
      FC00FAEAD200FECB8200FED39700FED69D00FED59A00FECE8A00FCE1BB00FCFC
      FC00D8D8D800B8B8B800F8F8F80000000000C9C9C93DC7C7C7F6E9E9E9FFFDFD
      FDFFFBEBD3FFFFCC83FFFFD498FFFFD79EFFFFD69BFFB5C6A8FF81D5EDFFB2E3
      F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F791DDF4006AD1F0008CD9F3009FDF
      F500AEE6F700BFEDFA00B9EBF90069D5F3005FD1F20094DFF600A8E5F70090D9
      F2007ECEEE0063C2EA0041ACE10060B3E00000000000E6B69300FAF6F300E8C2
      A500FEFEFE00E7C3A800FEFEFE00FEFEFE00FEFEFE00E7C6AB00FEFEFE00FEFE
      FE00FEFEFE00F6F0EA00CA8E5E0000000000CCCCCC00EAEAEA00FCFCFC00F9F9
      F900FAF2E600FDCD8800FED39500FED49900FECE8A00FCE1BB00FCFCFC00D9D9
      D900BCBCBC00F9F9F9000000000000000000CBCBCBF6EBEBEBFFFDFDFDFFFAFA
      FAFFFBF3E7FFFECE89FFFFD496FFFFD59AFFFFCF8BFFFDE2BCFFAFE4F4FF77BE
      E7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8FBFEFF00D9F5FC00B5EBF90092E0
      F5006DD5F10045C7EC00A1DFF500B5EAF9009DE3F7009CDDF40069C7EC005CC5
      EA0082D4EF00A6E0F400CCECF800F2FAFD0000000000E8B99700FAF6F300E8C2
      A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2A500E8C2
      A500E8C2A500FAF6F300CD92630000000000CCCCCC00FCFCFC00FCFCFC00FBFB
      FB00F6F6F600FCF4E900FDCE8900FECB8200FCE1BB00FCFCFC00DBDBDB00BFBF
      BF00F9F9F900000000000000000000000000CDCDCDFFFDFDFDFFFDFDFDFFFCFC
      FCFFF7F7F7FFFDF5EAFFFECF8AFFFFCC83FFFDE2BCFFFDFDFDFFDCDCDCFF92BB
      CAFF58A5D8FF85B1DBFF469DD0FF2B95D15E0000000000000000000000000000
      000000000000C9F0FA0073D1F100BEEDF900B7EAF90067C6EC00ABDEF3000000
      00000000000000000000000000000000000000000000EABC9A00FAF6F300FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FAF6F300D096690000000000CDCDCD00FCFCFC00DFDFDF00CACA
      CA00CDCDCD00F6F6F600FAF2E700FCE2BC00FCFCFC00DDDDDD00C2C2C200F9F9
      F90000000000000000000000000000000000CECECEFFFDFDFDFFE0E0E0FFCACA
      CAF9C8C8C8E2F7F7F7FFFBF3E8FFFDE3BDFFFDFDFDFFDEDEDEFFC3C3C3FFBDBD
      BD15000000000000000000000000000000000000000000000000000000000000
      0000000000000000000074D5F20099DDF40095DCF30050B9E400FDFEFF000000
      00000000000000000000000000000000000000000000EBBE9D00FAF6F3009BD4
      A40097D2A00093CF9C008FCD97008ACA920086C88D0081C588007DC2830079C0
      7F0075BD7B00FAF6F300D39A6E0000000000CFCFCF00FCFCFC00CCCCCC000000
      0000D4D4D400F2F2F200FAFAFA00FCFCFC00DFDFDF00C6C6C600FAFAFA000000
      000000000000000000000000000000000000D0D0D0FFFDFDFDFFCDCDCDFF0000
      0000CACACACDF3F3F3FFFBFBFBFFFDFDFDFFE0E0E0FFC7C7C7FFC0C0C0150000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCF5FC0048C9ED0062C9EE00C4E8F600000000000000
      00000000000000000000000000000000000000000000EEC5A700FAF6F300FAF6
      F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6
      F300FAF6F300FAF6F300D7A2770000000000D1D1D100FCFCFC00E1E1E100CDCD
      CD00DFDFDF00FCFCFC00FCFCFC00E1E1E100CACACA00FAFAFA00000000000000
      000000000000000000000000000000000000D2D2D2FFFDFDFDFFE2E2E2FFCECE
      CEFFE0E0E0FFFDFDFDFFFDFDFDFFE2E2E2FFCBCBCBFFC4C4C415000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008EE0F5006ED0F00000000000000000000000
      00000000000000000000000000000000000000000000F7E0D100F0C7AB00ECBF
      9E00EABD9C00EABB9900E8B99500E6B69200E5B48F00E3B18B00E1AE8700DFAB
      8300DCA87F00DBA47C00E1B5950000000000D2D2D200FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00E3E3E300CCCCCC00FAFAFA0000000000000000000000
      000000000000000000000000000000000000D3D3D3FFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFE4E4E4FFCDCDCDFFC8C8C81500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECF9FD00DDF4FC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4D4D400D3D3D300D1D1D100D0D0
      D000CFCFCF00CDCDCD00CCCCCC00FBFBFB000000000000000000000000000000
      000000000000000000000000000000000000D5D5D5FFD4D4D4FFD2D2D2FFD1D1
      D1FFD0D0D0FFCECECEFFCDCDCDFFCBCBCB150000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C895
      61FDCA9865FFCA9765FFCA9765FFCA9765FFCA9764FFC99764FFC99764FFCA98
      65FFC89461FD000000000000000000000000000000000000000000000000C795
      6100C9976400C9966400C9966400C9966400C9966300C8966300C8966300C997
      6400C7946100000000000000000000000000000000000000000000000000C795
      6100C9976400C9966400C9966400C9966400C9966300C89663006A7F4B00216C
      3800186A36002472400084B094000000000000000000EEE1D400D3B08C000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA47B0000000000E3CDB700D0AB
      850000000000E5D1BC00E1C9B00000000000636363995D5D5DD2585858FFC795
      61FFF9F7F6FFF9F1ECFFF9F1EBFFC5C0BDFFF7EDE6FFF4EAE1FFF2E8DEFFFAF8
      F6FFC79461FF242424FF232323D12323237AA1A1A100A6A6A60057575700C694
      6000F8F6F500F8F0EB00F8F0EA00F7EFE800F6ECE500F3E9E000F1E7DD00F9F7
      F500C6936000232323004A4A4A0095959500A1A1A1007979790057575700C694
      6000F8F6F500F8F0EB00F8F0EA00F7EFE800F6ECE50082A78800278B520063B9
      8C0094D1B10063B98C00278B5200517E6100E8D7C40000000000E1CAB200CCA3
      7A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E3CDB600E4CFBA006A6A6AFDA7A7A7FFB5B5B5FF8181
      81FFAFACAAFFC5C0BDFFC5C0BDFFC5C0BDFFC5C0BDFFC5C0BDFFC5C0BDFFADAA
      A8FF2C2C2CFFB5B5B5FF9B9B9BFF232323FF6A6A6A00A6A6A600B4B4B4008080
      8000AEABA900C4BFBC00C4BFBC00C4BFBC00C4BFBC00C4BFBC00C4BFBC00ACA9
      A7002B2B2B00B4B4B4009A9A9A00222222006A6A6A00A6A6A600B4B4B4008080
      8000AEABA900C4BFBC00C4BFBC00C4BFBC00C4BFBC001F6E3C0061B98A005FB9
      8600FEFEFE005FB8860066BB8E0018683500E4CFBA00CDA57C0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E4CFB900707070FFB5B5B5FFB5B5B5FF9595
      95FF818181FF818181FF797979FF6E6E6EFF616161FF525252FF434343FF4242
      42FF6E6E6EFFB5B5B5FFB5B5B5FF252525FF6F6F6F00BABABA00B4B4B4009494
      94008080800080808000787878006D6D6D006060600051515100424242004141
      41006D6D6D00B4B4B400B4B4B400242424006F6F6F00B4B4B400B4B4B4008C8C
      8C008080800080808000787878006D6D6D0060606000307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A360000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000757575FFBBBBBBFFBBBBBBFF8D8D
      8DFFD4D4D4FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFD3D3
      D3FF838383FFBBBBBBFFBBBBBBFF2A2A2AFF74747400BABABA00BABABA008C8C
      8C00D3D3D300B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800D2D2
      D20082828200BABABA00BABABA002929290074747400BABABA00BABABA008C8C
      8C00D3D3D300B8B8B800B8B8B800B8B8B800B8B8B80047885F008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E0019683600CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A007A7A7AFFD7D7D7FFD7D7D7FF9797
      97FFD8D8D8FFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFD7D7
      D7FF8E8E8EFFD7D7D7FFD7D7D7FF3F3F3FFF79797900D6D6D600D6D6D6009696
      9600D7D7D700BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00D6D6
      D6008D8D8D00D6D6D600D6D6D6003E3E3E0079797900D6D6D600D6D6D6009696
      9600D7D7D700BEBEBE00BEBEBE00BEBEBE00BEBEBE0087A6920060AA800094D3
      B300B9E5CF0069BA8E002C8E560029563A00E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B1007E7E7EFFF9F9F9FFF9F9F9FFABAB
      ABFFDFDFDFFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFDFDF
      DFFFA3A3A3FFF9F9F9FFF9F9F9FF616161FF7D7D7D00F8F8F800F8F8F800AAAA
      AA00DEDEDE00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00DEDE
      DE00A2A2A200F8F8F800F8F8F800606060007D7D7D00F8F8F800F8F8F800AAAA
      AA00DEDEDE00CACACA00CACACA00CACACA00CACACA00CACACA0093AF9D005E97
      73004E8D65004889600095B9A2006060600000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000818181F9FCFCFCFFFCFCFCFFCBCB
      CBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFC6C6C6FFFCFCFCFFFCFCFCFF707070FE83838300FBFBFB00FBFBFB00CACA
      CA00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100C5C5C500FBFBFB00FBFBFB007070700083838300FBFBFB00FBFBFB00CACA
      CA00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100C5C5C500FBFBFB00FBFBFB0070707000CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A00818181D2D2D2D2FFE8E8E8FF7D7D
      7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D
      7DFF7D7D7DFFE8E8E8FFC4C4C4FF565656DC96969600D1D1D100E7E7E7007C7C
      7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C00E7E7E700C3C3C3006C6C6C0096969600D1D1D100E7E7E7007C7C
      7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C00E7E7E700C3C3C3006C6C6C00E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B100818181459A9A9AFFCCCCCCFFC78B
      4EFFF9F4EDFFFEE8D8FFFEE8D7FFFDE5D3FFFCE4D1FFFAE0C7FFF9DDC3FFFAF4
      EDFFC7854AFFC3C3C3FF747474FF47474745DDDDDD0099999900CBCBCB00C68A
      4D00F8F3EC00FDE7D700FDE7D600FCE4D200FBE3D000F9DFC600F8DCC200F9F3
      EC00C6844900C2C2C20073737300CDCDCD00DDDDDD0099999900CBCBCB00C68A
      4D00F8F3EC00FDE7D700FDE7D600FCE4D200FBE3D000F9DFC600F8DCC200F9F3
      EC00C6844900C2C2C20073737300CDCDCD0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A00000000000000000081818163818181F3C589
      4CFFF9F4EFFFFEE7D7FFFDE7D5FFFCE6D2FFFBE1CCFFF8DCC2FFF6DABDFFFAF4
      EFFFC48348FF595959F3535353630000000000000000CECECE0086868600C488
      4B00F8F3EE00FDE6D600FCE6D400FBE5D100FAE0CB00F7DBC100F5D9BC00F9F3
      EE00C382470060606000BCBCBC000000000000000000CECECE0086868600C488
      4B00F8F3EE00FDE6D600FCE6D400FBE5D100FAE0CB00F7DBC100F5D9BC00F9F3
      EE00C382470060606000BCBCBC0000000000CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A00000000000000000081818109C589
      4BF9F9F4F0FFFCE6D3FFFDE7D3FFFBE3CDFFFAE0C8FFF5D6BBFFF3D4B5FFF8F4
      F0FFC38246F96060600900000000000000000000000000000000FBFBFB00C58B
      4E00F8F3EF00FBE5D200FCE6D200FAE2CC00F9DFC700F4D5BA00F2D3B400F7F3
      EF00C3844900F9F9F90000000000000000000000000000000000FBFBFB00C58B
      4E00F8F3EF00FBE5D200FCE6D200FAE2CC00F9DFC700F4D5BA00F2D3B400F7F3
      EF00C3844900F9F9F9000000000000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1CAB200000000000000000000000000C689
      4BF7F9F5F1FFFCE3CFFFFCE4CFFFFAE1CAFFF9DDC4FFF4E9DFFFF7F2ECFFF5EF
      E9FFC27E45FB000000000000000000000000000000000000000000000000C78C
      5000F8F4F000FBE2CE00FBE3CE00F9E0C900F8DCC300F3E8DE00F6F1EB00F4EE
      E800C27F4700000000000000000000000000000000000000000000000000C78C
      5000F8F4F000FBE2CE00FBE3CE00F9E0C900F8DCC300F3E8DE00F6F1EB00F4EE
      E800C27F470000000000000000000000000000000000E1C9B100CCA37A000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000000000000000000000000000C689
      4CF6F9F5F1FFFCE3CDFFFBE3CDFFF9E0C8FFF8DCC2FFFDFBF8FFFCE6CDFFE2B6
      84FFBF7942A6000000000000000000000000000000000000000000000000C78C
      5100F8F4F000FBE2CC00FAE2CC00F8DFC700F7DBC100FCFAF700FBE5CC00E1B5
      8300D5A78300000000000000000000000000000000000000000000000000C78C
      5100F8F4F000FBE2CC00FAE2CC00F8DFC700F7DBC100FCFAF700FBE5CC00E1B5
      8300D5A78300000000000000000000000000CDA57C0000000000E1C9B100CCA3
      7A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9
      B100CCA37A0000000000E1CAB200D6B69500000000000000000000000000C486
      49FAF7F2ECFFF8F4EEFFF8F3EDFFF8F3EDFFF8F2ECFFF2E6D7FFE2B27DFFDA91
      63F6B46B3E07000000000000000000000000000000000000000000000000C487
      4C00F6F1EB00F7F3ED00F7F2EC00F7F2EC00F7F1EB00F1E5D600E1B17C00DA94
      6800FDFBFA00000000000000000000000000000000000000000000000000C487
      4C00F6F1EB00F7F3ED00F7F2EC00F7F2EC00F7F1EB00F1E5D600E1B17C00DA94
      6800FDFBFA00000000000000000000000000E7D5C100CEA8810000000000E1C9
      B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA37A000000
      0000E1C9B100CCA57C0000000000EFE2D500000000000000000000000000C17D
      4460C88B4DBBC88C4FFEC88C4FFFC88D4FF7C98C4FF7C5894CFEC4763B940000
      000000000000000000000000000000000000000000000000000000000000E7CE
      B800D6A97C00C78B4F00C78B4E00C9905400CA8F5400C4884C00DCAF8D000000
      000000000000000000000000000000000000000000000000000000000000E7CE
      B800D6A97C00C78B4F00C78B4E00C9905400CA8F5400C4884C00DCAF8D000000
      00000000000000000000000000000000000000000000EBDBCA00CEA881000000
      0000E1C9B100CCA37A0000000000E1C9B100CCA37A0000000000E1C9B100CCA3
      7A0000000000E4CFB900E2CBB400000000000000000000000000000000000000
      00000000000000000000C4DFEF005EA6D30057A2D200BDDAED00000000000000
      00000000000000000000000000000000000000000000E2E2E200CBCBCB00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C9006B967A00216F
      3D00186A3600216F3D0076A186000000000000000000E2E2E200CBCBCB00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C9007792C6001B55
      BA000442BB001852BA007796CE0000000000000000000000000000000000C7C7
      C7007B7B7B00757575007676760076767600767676007777770074747400A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000DCEDF60077B7DB002C8DC7008ECCEA006EB6E1003F8DC7006BACD700D5E7
      F3000000000000000000000000000000000000000000CBCBCB00F8F8F800FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB0085B09500278B520063B9
      8C0094D1B10063B98C00278B520080AD910000000000CBCBCB00F8F8F800FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB008AA8DE002765C9002076
      E5000478E9000063DC00054DBC0086A6DD00000000000000000000000000B0B0
      B000C9C9C900C9C9C900C9C9C900C9C9C900CACACA00C9C9C900C8C8C8007070
      7000000000000000000000000000000000000000000000000000EEF6FB0095C9
      E4003E9BCD0081C3E400CBF3FE00C3EEFE008AD1F00089CDEF005EA3D6002E8B
      C60085BADD00E7F2F8000000000000000000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB0021703E0061B98A005FB9
      8600FEFEFE005FB8860066BB8E001F6F3C00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB001D58BF00629CF300177E
      FE000075F7000075ED000267E0001D58C000000000000000000000000000ABAB
      AB00D2D2D200A9A9A900C7C7C700A9A9A900C4C4C400A9A9A900CDCDCD007C7C
      7C0000000000000000000000000000000000FAFDFE00B1D9EC0054AAD4007CBF
      DF00C6EDFB00CBF1FE00A7E7FE0093DFFD0040B9E60044B0E30089C9EE0081C0
      EA005296CF003D92C900A0C9E400F6FAFD00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A3600FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA000442BB00ADCCFD00FEFE
      FE00FEFEFE00FEFEFE00177EEE000442BB00000000000000000000000000A9A9
      A900D4D4D400C2C2C200C1C1C100BFBFBF00BCBCBC00BCBCBC00CECECE007A7A
      7A000000000000000000000000000000000072BCDD0076BCDB00BEE4F500DAF5
      FE00C0EDFE00A4E4FE009EE2FE0093E0FD0045C0E90039B4E50036A9E10055AE
      E40086C5EC0073B2E300498FC90057A0D100FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900498A61008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E001F6F3C00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900235BC1008CB4F5004C91
      FE001076FE002085FE003F89EA00235BC100000000000000000000000000A6A6
      A600D5D5D500A2A2A200C1C1C1009F9F9F00BEBEBE009F9F9F00CECECE007676
      76000000000000000000000000000000000045A9D300E6FAFD00DCF5FE00C0EE
      FE00B6EAFE00AAE7FE00A3E3FE0095E0FD0047C5EA003FBCE8003CB3E50037A8
      E100319EDD006AB5E50082C3ED002987C500FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00FAFAFA00A4C3B00060AA800094D3
      B300B9E5CF0069BA8E002C8E560080AD9100FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00FAFAFA0092ADE0003C75D1008CB4
      F600B7D5FD0071A7F4002E6BC90092ADE000000000000000000000000000A2A2
      A200D7D7D700C5C5C500C3C3C300C0C0C000BFBFBF00BDBDBD00CECECE007373
      7300000000000000000000000000000000004EAED600E1F5FB00D3F2FE00C8EF
      FE00BDECFE00B2E9FE00ACE6FE007BD8FD0047C6EE0042C3E90042BDE7003EB4
      E50039AAE2003FA6E00082C4EB00328DC700FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00AAC7B5005F98
      74004E8D6500498960007DA18A00FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA0091ACDF002960
      C6000442BB001E59C0006B8AC000FEFEFE000000000000000000000000009F9F
      9F00D9D9D9006EBD770075C47E009F9F9F00C1C1C1005D51D300CECECE006F6F
      6F000000000000000000000000000000000051B1D700E1F5FB00D6F3FE00CDF1
      FE00C7EEFE00B9EAFE0091DAFA0055C0F00047C1F8003ABCEF0046C4EB0044BC
      E80041B4E50046B0E50087C9ED003490C800FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F9F9F900F8F8F800F5F5
      F500F5F5F500FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F9F9F900F8F8F800F5F5
      F500F5F5F500FBFBFB00C9C9C900FEFEFE000000000000000000000000009C9C
      9C00DBDBDB00CACACA00C8C8C800C5C5C500C3C3C300C0C0C000CFCFCF006C6C
      6C000000000000000000000000000000000053B4D700E1F5FC00D9F3FE00D4F2
      FE00BCEAFE0088D4F60068C8F4004BB3E8008CD9FA008BDBFE0047C3F80037B5
      EB0047BEE7004EBAE7008BCFEF003793C900FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F5F5F500F2F2
      F200F1F1F100FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F5F5F500F2F2
      F200F1F1F100FBFBFB00C9C9C900FEFEFE000000000000000000000000009999
      9900DDDDDD00F69C2000F69D2000F59E1F00F59F2000F4A02000D5CCBC006868
      68000000000000000000000000000000000055B6D800E1F7FC00D3F2FE00AFE3
      F90085CEF0007ECFF40077CFF4004BB0E300AFE3F900B5E8FE009AE0FE0077D5
      FD003FBCF4003CB4E8008FD4F0003895CA00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F1F1F100EEEE
      EE00ECECEC00FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F1F1F100EEEE
      EE00ECECEC00FBFBFB00C9C9C900FEFEFE000000000000000000000000009595
      9500DFDFDF00F6991F00F6DAA200F5D9A200F5D9A400F4AE2F00D8CDBD006464
      6400000000000000000000000000000000004FB4D800E0F7FD00CCEAF80091D1
      EC0083CBEA006EBEE40055B0DA003A93C700CDEBF900D8F4FE00B8E9FE0094DE
      FD0076D4FE00A4E3FE0083DBFA003193C900FEFEFE00C9C9C900FBFBFB00FAFA
      FA00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F0F0F000EBEBEB00E9E9
      E900E5E5E500FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FAFA
      FA00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F0F0F000EBEBEB00E9E9
      E900E5E5E500FBFBFB00C9C9C900FEFEFE000000000000000000000000009393
      9300E4E4E400F7971E00F7D79C00F6D9A000F6D9A100F5AB2E00D8CEBD006060
      60000000000000000000000000000000000091D1E7004DB4D800A4D8EC00D1EA
      F400BDDDEC0094C8DD0088C2DA006FB7D50068B8DC008FD6F4007ECEF4009CDA
      F700A9E2F90083C9EB0050A5D40079B9DC00FEFEFE00C9C9C900FBFBFB00F8F8
      F800F8F8F800F8F8F800F6F6F600F5F5F500F1F1F100EAEAEA00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00F8F8
      F800F8F8F800F8F8F800F6F6F600F5F5F500F1F1F100EAEAEA00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00C9C9C900FEFEFE000000000000000000000000008F8F
      8F00E7E7E700F8941D00F6982600F7961D00F6961D00F19C2A00DAD4CB005C5C
      5C000000000000000000000000000000000000000000CEEBF40078C6E1007DC5
      DF00D0EDF600F5FEFE00EFFDFE00CAECFA004FACD9008AD6F600A9E0F80094D5
      F10061B1DA0063B1D800C2E0F00000000000FEFEFE00C9C9C900FBFBFB00F6F6
      F600F8F8F800F6F6F600F6F6F600F2F2F200EFEFEF00E9E9E900FBFBFB00F5F5
      F500F3F3F300C4C4C400DFDFDF0000000000FEFEFE00C9C9C900FBFBFB00F6F6
      F600F8F8F800F6F6F600F6F6F600F2F2F200EFEFEF00E9E9E900FBFBFB00F5F5
      F500F3F3F300C4C4C400DFDFDF00000000000000000000000000000000009191
      9100D8D8D800DFDFDF00E3E3E300E3E3E300E0E0E000DDDDDD00DBDBDB005858
      5800000000000000000000000000000000000000000000000000FCFEFE00B8E2
      F00064BEDD0091CEE400E5F7FB00E2F5FD00AEDCF100B1E3F60071BFE00055AE
      D600ACD7EB00F8FCFD00000000000000000000000000C9C9C900FAFAFA00F3F3
      F300F4F4F400F4F4F400F4F4F400F0F0F000EEEEEE00E8E8E800FBFBFB00E6E6
      E600C2C2C200DFDFDF00FDFDFD000000000000000000C9C9C900FAFAFA00F3F3
      F300F4F4F400F4F4F400F4F4F400F0F0F000EEEEEE00E8E8E800FBFBFB00E6E6
      E600C2C2C200DFDFDF00FDFDFD0000000000000000000000000000000000C5C5
      C500ABABAB00A1A1A10099999900979797009898980096969600B2B2B2005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000F0F9FC00A2D8EA0055B6D9009BD4E90087CBE6004DAFD60098D0E700ECF6
      FA000000000000000000000000000000000000000000CCCCCC00F7F7F700FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F7F7F700C2C2
      C200DFDFDF00FDFDFD00000000000000000000000000CCCCCC00F7F7F700FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F7F7F700C2C2
      C200DFDFDF00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000929292005151
      5100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1F2F80083C9E40079C4E100DCEFF700000000000000
      00000000000000000000000000000000000000000000E3E3E300CCCCCC00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900DFDF
      DF00FDFDFD0000000000000000000000000000000000E3E3E300CCCCCC00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900DFDF
      DF00FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000949494008787
      870000000000000000000000000000000000000000000000000060A664315BA2
      5FCC569F5A4B00000000000000000000000000000000000000001D57C4780345
      B9DF0442BCFE0345B9E30345B87A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800E9E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002A8BC6462889C5BE2687C5C42485C44D000000000000
      000000000000000000000000000000000000000000006AAE6E0565AA69AF60A6
      65FD6BAE6FFF4C9750FB529C56344E995222000000001A57C3802564C9FB2177
      E6FF0579EAFF0164DDFF044DBDFC0345B87A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000576B6D00CFCF
      CF00FBFBFB0000000000000000000000000000000000F4F4F40087878800E8E8
      E800000000000000000000000000000000000000000000000000000000000000
      00003093CA2B2E90C9A52C8EC8FE8FCDEBFF6FB7E2FF408EC8FF2485C4AC2383
      C33100000000000000000000000000000000000000006FB274277CBB81FCB7DE
      BBFF67AC6CFF75B67AFF4E9851FE539C57B84F99537A0345B9E3639DF4FF187F
      FFFF0076F8FF0076EEFF0368E1FF0345B9E400000000000000004CA2E900459D
      E7003D99E6003494E5001D8BE1001F8BE100208CE3001888E2001182E2000980
      E000027CDF000078DE0000000000000000000000000000000000CECDCD00CDA7
      870082847D0093939400A8A4A4008A6E590053636600D5D6D60000000000ADAD
      AD00FBFBFB000000000000000000000000000000000000000000369ACD163498
      CC853295CBEF82C4E5FFCCF4FFFFC4EFFFFF8BD2F1FF8ACEF0FF5FA4D7FF2586
      C4F32384C38D2182C21B00000000000000000000000075B67A9B9CCDA0FF6FB2
      73FF8DC792FFAADCAFFF76B67BFF519B55FF77B77BFF0442BCFFAECDFEFFFFFF
      FFFFFFFFFFFFFFFFFFFF187FEFFF0442BCFE000000000000000054A6EA00B5E5
      F80094D0F0004AA6E70059AEEA007CC1ED00BAEDFA00B9EDF800B6ECF800B2EC
      F800B1ECF800007CE10000000000000000000000000000000000ECECEC00CCAA
      8E00D1B09300D6B39800D7B49900D8B99D00DBB89E00D8BAA000EDEEEE00D2CF
      D000A3A3A300F4F4F40000000000000000003DA2D00677BDDCFF399DCEDB7DC0
      E0FFC7EEFCFFCCF2FFFFA8E8FFFF94E1FEFF41BAE7FF45B1E4FF8ACAEFFF82C1
      EBFF5397D0FF2384C3E02282C26D2080C20A7FBE84197BBB80FF77B77CFF91CB
      97FFABDEB1FF9CD7A2FFAADDB0FF77B77CFF60AC65FF1A58B8FF8DB5F6FF4D92
      FFFF1177FFFF2186FFFF408AEBFF0344B9DE00000000000000005CAAEA00B3E2
      F700319EE5003AAAE800A7E8F7004DB9EA0059D5F2004FD3F20047D1F10041D0
      F100B3ECF8000780E200000000000000000000000000F5F5F500FEFEFE00D6B7
      9D00D6B59D00D6B59C00D8B7A000DABDA400DDC0A800E0C4AB0096898600BAAD
      A9008C7C7100F9F9F900000000000000000040A5D2BB77BDDCFFBFE5F6FFDBF6
      FFFFC1EEFFFFA5E5FFFF9FE3FFFF94E1FEFF46C1EAFF3AB5E6FF37AAE2FF56AF
      E5FF87C6EDFF74B3E4FF4A90CAFF2283C3C17FBD84A07FBD84FF97CE9CFFADDF
      B3FF6FB374FF96D59DFF9DD8A3FFAADDB0FF78B87CFF4B8C9AFF3B76D1FF8DB5
      F7FFB8D6FEFF72A8F5FF2D6BCAFD1153A18A00000000000000005CABEB0054AC
      EA0046AEEA00ABE8F800ACE9F90055BAEA0061D8F30059D5F2004FD3F20048D1
      F200B6ECF8001084E3000000000000000000000000007A82820080918100D5B7
      9E00D7BAA100DBBDA600DFC3AC00E1C6AE00E1C6B000E3C8B100BCAA9A00C5B5
      B40025252500E3E3E300000000000000000042A8D3F9E7FBFEFFDDF6FFFFC1EF
      FFFFB7EBFFFFB3EAFFFFA4E4FFFF96E1FEFF48C6EBFF40BDE9FF3DB4E6FF38A9
      E2FF329FDEFF6BB6E6FF83C4EEFF2485C4F87BBB80FF8EC893FFAFDFB5FFA1DA
      A7FF98D79FFF97D69EFF7EC083FF82C187FFABDDB0FF79B97DFF438693FF235F
      C1FF0543BCFF1857BAFF2B7283FF4592491100000000000000005DACEA0082C2
      EF00D2F2FB00D0F2FB00B1ECF9005ABBEC006BD9F30061D8F30059D5F20050D3
      F200B9EDFA001989E400000000000000000000000000AD8E7700DBBFA800DDC2
      AB00DBBFA900DBC0AB00DDBFA900DFC4AE00E2C8B000E5CCB400E7CEB900A394
      9200BDB0AD00C6C5C500000000000000000044AAD4F0E2F6FCFFD4F3FFFFC9F0
      FFFFBEEDFFFFB3EAFFFFADE7FFFF7CD9FEFF48C7EFFF43C4EAFF43BEE8FF3FB5
      E6FF3AABE3FF40A7E1FF83C5ECFF2687C5F08DC9937D7DBB82FF8FC894FFB0E0
      B6FFA2DAA8FF7FC185FFA4D0A7FFDDEEDFFF80B883FFABDEB1FF7AB97FFF569F
      5AFFC4E7C8FF78B87CFF4E99528400000000000000000000000070B5ED009DD0
      F30077C9EF0071C6EF006DC5EF005FBDEC0075DCF4006BDAF30063D8F3005AD5
      F200BDEEFA00228EE700000000000000000000000000CACACA00DBC3AD00DAC0
      AB00DBC2AC00DFC5AF00E4C8B200E5CBB500E5CAB600E5CCB600E6CCB800D7C1
      AE00AE9F9F00B1AAA500FBFBFB000000000047ADD5F0E2F6FCFFD7F4FFFFCEF2
      FFFFC8EFFFFFBAEBFFFF92DBFBFF56C1F1FF48C2F9FF3BBDF0FF47C5ECFF45BD
      E9FF42B5E6FF47B1E6FF88CAEEFF288AC6F0000000008EC993257DBC82FA90C9
      95FFB0E0B6FF85C28AFFF7FCF8FF95C297FFDDEEDFFF82C287FFABDEB1FF7BBA
      7FFF58A05CFF59A15DFF539C570400000000000000000000000078B8EF00DAF5
      FB009BE6F70094E4F7008EE2F60085E0F6007DDEF40075DCF4006CDAF30063D8
      F300BFEFFA002B93E800000000000000000000000000CFCFCF00E0CAB600E5CB
      B900E3CBB700E1C8B500E0C6B300E0C8B600E5CCB700E8D0BB00E9D1BC00D3C3
      B300918281003F3F3F00EAEAEA000000000049B0D6F0E2F6FDFFDAF4FFFFD5F3
      FFFFBDEBFFFF89D5F7FF69C9F5FF4CB4E9FF8DDAFBFF8CDCFFFF48C4F9FF38B6
      ECFF48BFE8FF4FBBE8FF8CD0F0FF2B8DC7F00000000000000000000000007EBD
      83F691CA96FFB1E0B6FFD9F3DDFFF7FCF8FFA4D0A7FF7EC084FF9FD9A5FFACDE
      B2FF7BBB80FF569F5AFB000000000000000000000000000000008BC4F300DCF6
      FC00A1E7F7009CE6F70094E4F7008EE2F60086E0F6007EDEF50076DCF4006CDA
      F300C3EFFA003697E900000000000000000000000000C2C1C200E1CAB900E1CA
      B800E1CBB800E5CDBA00E7D0BC00E8D1BD00E8D1BD00E7D0BB00E5CDBB00D9D9
      DA00FCFAF900AA9E9A00CCCCCC00000000004BB2D7F0E2F8FDFFD4F3FFFFB0E4
      FAFF86CFF1FF7FD0F5FF78D0F5FF4CB1E4FFB0E4FAFFB6E9FFFF9BE1FFFF78D6
      FEFF40BDF5FF3DB5E9FF90D5F1FF2D8FC8F00000000000000000000000000000
      00007FBE85F592CB97FFB1E1B6FF85C38AFF80C185FF99D7A0FF98D79FFF9FD9
      A5FFACDFB2FF7DBB81FF58A05CF600000000000000000000000092C7F400E0F6
      FC00A9E9F800A2E7F8009CE6F70095E4F7008FE2F60087E0F6007FDEF50076DC
      F400C7F0FA003F9DEA000000000000000000F2F2F200F4EEE800F4E9E100E8D2
      C300E8D3C300E7D1C000E4D0BD00E5CEBC00EAD1BF00EAD2C000E5CFBD00F3F3
      F40000000000817C7A00BFB8B300FCFCFC004DB4D8FBE1F8FEFFCDEBF9FF92D2
      EDFF84CCEBFF6FBFE5FF56B1DBFF3B94C8FFCEECFAFFD9F5FFFFB9EAFFFF95DF
      FEFF77D5FFFFA5E4FFFF84DCFBFF2F92C9FB0000000000000000000000000000
      00000000000081BF86F593CC98FFB1E1B7FFA3DBA9FF9BD8A2FF73B477FFAFDF
      B4FF87C38CFF65AA69FF5DA4610E00000000000000000000000096CBF500F8FC
      FE00EFFAFD00EFFAFD00EFFBFD00EDFAFC00EEFAFC00EEFAFC00EFFAFC00EFFA
      FC00F6FCFD0049A2EC000000000000000000777F7D00F7F1EC00F4EDE600F1E8
      DD00EFE4DB00E8D4C500EBD6C600EDD6C600E9D6C400E9D4C300D8C4B300FEFE
      FE0000000000FFFEFE00514F5000F0F0F0004FB7D99F4DB5D9FEA5D9EDFFD2EB
      F5FFBEDEEDFF95C9DEFF89C3DBFF70B8D6FF69B9DDFF90D7F5FF7FCFF5FF9DDB
      F8FFAAE3FAFF84CAECFF51A6D5FF3295CBA60000000000000000000000000000
      0000000000000000000082C087F594CC99FFB2E2B7FFA3DCAAFFB0E0B6FF8CC6
      92FF6EB173FF66AB6B0E00000000000000000000000000000000B1DBFC00F9FD
      FE00F9FDFE00F9FDFE00F9FDFE00F9FDFE00F9FCFD00F9FCFE00F9FDFE00F9FD
      FE00F9FCFE0052A7ED000000000000000000A4917C00F8F2EC00F6EDE700F5EC
      E400F4E7DE00F0E2D600ECDCCF00E9D5C300EAD6C600EBD8C8009EA499000000
      00000000000000000000E3D8D000E9E9E900000000004FB7D9464EB5D9C27EC6
      E0FFD1EEF7FFF6FFFFFFF0FEFFFFCBEDFBFF50ADDAFF8BD7F7FFAAE1F9FF95D6
      F2FF62B2DBFF399DCEC8369ACD4D000000000000000000000000000000000000
      000000000000000000000000000083C188F594CD9AFFB3E2B7FF93CB98FF77B7
      7CFF70B2740E0000000000000000000000000000000000000000B5DEFD00A1D1
      F9009BD0F80096CCF70091C9F6008BC5F50084C1F4007DBEF30075B9F3006DB5
      F00064B1EF005CACEF000000000000000000B8B8B800FAF3EF00F6EFEA00F2EA
      E300F2E7DC00F0E3D900F1E2D600F0DED100EBDACC00E7D5C500D0D0D0000000
      0000000000000000000000000000FDFDFC0000000000000000004FB7DA054EB6
      D9654CB4D8DB92CFE5FFE6F8FCFFE3F6FEFFAFDDF2FFB2E4F7FF72C0E1FF3FA4
      D1E03DA2D06C3BA0CF0900000000000000000000000000000000000000000000
      00000000000000000000000000000000000084C28AF596CD9BFF80BE85FF79B9
      7E0E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE007D7D7D00CACACA00D1D1
      D100A3A3A300E7E7E700BAC2AA00E3D7CB00DFE2DF00DCD9DC00F5F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004EB6D9164DB4D8844BB2D7EF9CD5EAFF88CCE7FF45ACD5F344AAD48C42A7
      D31A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086C38BF582C0870E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C2C2C200B9B9B900555555006969690000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004DB4D82B4BB2D8AF4AB0D7BC48AED631000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000174259002A6188004B89BD006FA8CC00E3EDF50000000000000000000000
      00000000000000000000000000000000000000000000359CD8003098D7002B93
      D600278FD500228BD4001D87D3001983D200147FD100107BD0000D78D0000975
      CF000672CE00036FCE00006DCD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0EEE1007BB4
      7E00CDE2CE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DAB69F00CFA18500C083
      5E002C64810093C6F80090C8F8004084C8002264A50092716200A76E4D00A66D
      4C00A56E4D00A8755600BA8F750000000000000000003CA2D900BBEAF900BBEA
      FB00BEEDFD00C5F3FE00CDF7FE00D2F9FE00CFF7FE00C6F1FE00B9E8FB00B2E3
      F800AFE1F700AFE1F7000470CE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFD
      FE00E7EEF40000000000000000000000000000000000FCFDFC0095C4970060A6
      65006AAD6E004E985200DCEBDC00E7F1E8000000000000000000000000000000
      00000000000000000000000000000000000000000000C7906A00FEFEFE00FEFE
      FE004288A900DFF1FE005399D7001979BD004897C400488EC600DBE9F600FEFE
      FE00FEFEFE00FEFEFE00AB775900000000000000000042A7DA00BEEBFA0058CE
      F40040AFEB004DB9EE0059C1EE005FC5EE005BC3EE004BB5EE0036A4E5002999
      E00037B7ED00B0E2F7000874CF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFBFD006494
      BA0021669C0080A8C500000000000000000000000000E9F3EA007DBB8100B6DD
      BA0066AB6B0074B579004E97510082B78500AACEAC0000000000000000000000
      00000000000000000000000000000000000000000000C1815800FEFEFE00AE66
      2B007465560079B5D4008FB6D00054C8E3005ADEF40077CFEC004F9AD900D6D8
      DC00EFE4DD00FEFEFE00A66F4E00000000000000000048ACDB00C0EDFA005ED2
      F6006BDAFB007EE4FE008EECFE0096F1FE0092ECFE007BDEFE005ACBF70045BD
      EE003BB9ED00B2E2F8000D78D000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFCFD006E9BC100548C
      BB0088B4DC00175E9600000000000000000000000000ABD2AE009BCC9F006EB1
      72008CC69100A9DBAE0075B57A00509A540076B67A0066A76900D0E4D100E1ED
      E2000000000000000000000000000000000000000000C3855900FEFEFE00AE66
      2B00CC9E73007C6D570075B9D600C1F5FC0062DEF6005CE1F70078D2EF004897
      DB00D8D9DC00FEFEFE00A7704E0000000000000000004DB1DC00C2EEFA0064D5
      F7004BB5EB0059BCEE0094EAFE002F96DC004C81AA0083E0FE0040A8E800319E
      E00041BDEE00B3E4F800127DD100000000000000000000000000000000000000
      000000000000000000000000000000000000FBFCFD007AA3C9006396C4009CC0
      E3006598C6003070A4000000000000000000F2F9F3007ABA7F0076B67B0090CA
      9600AADDB0009BD6A100A9DCAF0076B67B005FAB6400ADD7B1008AC390007CB3
      7F0096C29900E6F0E600000000000000000000000000C4855A00FEFEFE00AE66
      2B00CC9F7400AC632A00B0D5E60076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004A98DB00D5E7F600AB714F00000000000000000052B6DD00C5EFFB0069D8
      F7007BE1FC008FE7FE0098E8FE00319EDE00538AB10089E1FE0069CFF8004FC4
      F00045C0EF00B5E6F8001782D200000000000000000000000000FFFEFE00E8CE
      B900DAB29200D2A57F00CFA07B00D1A68400ADA0980074A1CB00AACAE70075A3
      CD003F7AAE00DEE8F1000000000000000000AED5B1007EBC830096CD9B00ACDE
      B2006EB2730095D49C009CD7A200A9DCAF0077B77B0071B97500C2E6C700B1D9
      B4006CB97100559D5800ABCDAC00DAE9DA0000000000C6875900FEFEFE00B36D
      3200CFA47D00B16B2D00FEFEFE00B4D5DC0078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F10050A1E1009C796700000000000000000057BADE00C6F0FB006EDB
      F80055BAEC0060BCEE009AE6FE0034A5E1004AA3E0008FE1FE0048ACE80037A3
      E20048C3EF00B7E7F8001D87D3000000000000000000FFFEFE00E8C9AF00E7C8
      AD00F4E0CC00F6E4D200F6E4D000F2DCC700DEB99B00C6A7900085ADD4004F86
      BA00E1EAF3000000000000000000000000007ABA7F008DC79200AEDEB400A0D9
      A60097D69E0096D59D007DBF820081C08600AADCAF0078B87C0062AD6600C3E6
      C700C0E3C300B8DFBD004E995200F3F8F30000000000C7895A00FEFEFE00B675
      3F00D0A58200B5723700FEFEFE00EFE4DD00BADEE8007CD3ED00C3F5FC006BDC
      F5006CC9EC0062A2D6006397C800E5EFF700000000005BBEDF00C7F2FB0074DE
      F80088E5FC0094E6FE0099E4FE00A9EDFE00A7ECFE0098E2FE0073D4F80058CB
      F2004EC7F000BAE8F900238CD4000000000000000000F1DBC700ECCFB600F7E7
      D800F4DDC700F2D7BC00F2D5BA00F3DAC100F6E3D100DEBA9C009F969400E3EC
      F50000000000000000000000000000000000C7E4CA007CBA81008EC79300AFDF
      B500A1D9A7007EC08400A3CFA600DCEDDE007FB78200AADDB00079B87E00559E
      5900C3E6C70077B77B00A3CAA5000000000000000000C98B5B00FEFEFE00BB7E
      5300B97C4B00B97B4900FEFEFE00EFE4DD00EFE4DD00AAD4DE0080D4ED00B1E2
      F8008ABFE600ADD2F500C3DFFB006AA1D300000000005FC1E000C8F2FB00CAF2
      FC00D3F5FD00D6F5FE00D7F3FE00DFF7FE00DEF7FE00D9F4FE00CCF0FB00C1EC
      F900BCEAF900BCEAF9002A92D5000000000000000000EDCDB100F6E6D600F5E0
      CB00F3DAC100F3D9BF00F2D7BC00F2D6BA00F3DAC100F2DDC800D1A787000000
      00000000000000000000000000000000000000000000EEF7EF007FBC83008FC8
      9400AFDFB50084C18900F6FBF70094C19600DCEDDE0081C18600AADDB0007AB9
      7E00579F5B0058A05C00FCFDFC000000000000000000CA8D5D00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B0E5F40076BD
      E600B3D1EF00E4F2FE00ABD1EE005895CB000000000060C2E000879FA7009090
      90008D8D8D0059B8DB0054B7DE0050B4DD004CB0DC0048ACDB0045A7D6007777
      770075757500647D8C003098D7000000000000000000EFCDAE00F8EBDE00F4DE
      C700F4DCC500F3DBC200F3D9C000F2D8BD00F2D6BC00F7E5D200D2A57F000000
      00000000000000000000000000000000000000000000000000000000000082BE
      860090C99500B0DFB500D8F2DC00F6FBF700A3CFA6007DBF83009ED8A400ABDD
      B1007ABA7F0058A05C00000000000000000000000000CC916000FEFEFE00ECC3
      9A00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00AFBC
      B00057A4D70084B0DA00459CCF00B0D8EE000000000000000000B0B0B000C5C5
      C50093939300FBFBFB0000000000000000000000000000000000FBFBFB007C7C
      7C00AAAAAA0095959500000000000000000000000000F3D2B400F8ECE000F5E0
      CB00F4DEC800F4DDC600F3DBC300F3DAC100F3D9BF00F7E6D500D6AA86000000
      0000000000000000000000000000000000000000000000000000000000000000
      000083C0890091CA9600B0E0B50084C289007FC0840098D69F0097D69E009ED8
      A400ABDEB1007CBA80005DA261000000000000000000CF976700FEFEFE00ECC3
      9B00F3D9C000F3D9C000F3DAC100F3DAC100F3DAC100F3DAC100F3DAC100F3DA
      C100ECC39A00FEFEFE00C0835800000000000000000000000000BBBBBB00C3C3
      C300A0A0A000EDEDED0000000000000000000000000000000000EBEBEB008888
      8800A8A8A800A3A3A300000000000000000000000000F7DBC000F8EADD00F6E6
      D500F5E0CB00F4DFC900F4DDC700F4DCC400F5E0CA00F4E1CF00DEB898000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000085C18A0092CB9700B0E0B600A2DAA8009AD7A10072B37600AEDE
      B30086C28B0064A96800F6FAF6000000000000000000D5A37700FEFEFE00ECC3
      9B00ECC39B00ECC39B00ECC39A00ECC39A00ECC39A00ECC39A00ECC39A00ECC3
      9A00ECC39A00FEFEFE00C78E6400000000000000000000000000D3D3D300B9B9
      B900BEBEBE00A5A5A500F2F2F200FDFDFD00FDFDFD00F1F1F10092929200A7A7
      A7009D9D9D00C3C3C300000000000000000000000000FBE9D700F7E1CB00F9ED
      E200F6E6D500F5E1CD00F5E0CA00F5E2CF00F8E9DC00EBCEB400EBD3BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086C28B0093CB9800B1E1B600A2DBA900AFDFB5008BC5
      91006DB07200F7FAF700000000000000000000000000E1BD9D00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00D5A98800000000000000000000000000FBFBFB00ADAD
      AD00C3C3C300BDBDBD00A0A0A000959595009292920096969600ADADAD00ADAD
      AD0095959500FBFBFB00000000000000000000000000FFFFFE00FAE3CD00F8E1
      CC00F9EBDD00F8EDE100F8ECE100F7E8D900EFD4BC00ECCFB600FFFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000087C28C0093CC9900B2E1B60092CA970076B6
      7B00F7FBF70000000000000000000000000000000000E9CFB800E3C1A400D7A8
      7E00CD925E00CC925F00CC915E00CB8F5E00CC916000CC926200CA906000CD94
      6800D4A78300D7AD8A00D6AB8A0000000000000000000000000000000000EEEE
      EE00ADADAD00BBBBBB00C9C9C900CBCBCB00C9C9C900C1C1C100ACACAC009A9A
      9A00E9E9E900000000000000000000000000000000000000000000000000FBEA
      D900F9DCC200F5D5B800F3D2B400F2D3B700F4E0CD00FFFFFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000088C38E0095CC9A007FBD8400F8FB
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00D0D0D000B9B9B900B0B0B000ADADAD00B2B2B200C8C8C800FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008AC48F00F8FBF8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E9DCA7B3696D1E53390CCEB328B
      CBED3B95C287FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004AA0D5004298CF004092
      CE0097C6DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1E7E300CAAA9B00A16A50008F573D008D563D0099685100C5A99B00EEE7
      E3000000000000000000000000000000000042ACE1CDC4EBF7FF7FE1F6FF9FE6
      F7FF328AC9EF3A90BA91FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066BBE600C3EAF6007EE0F5009EE5
      F6003E90CB008EBFD700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFC8
      BD00A2654700B17F5600D4B69200DAC2A500D9C2A500D1B38F00AA795100915F
      4700D8C6BD0000000000000000000000000044B0E3FFC6F4FBFF43D6F1FF48DB
      F5FF82E1F5FF3188C8F0398DB798FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043AFE200C5F3FA0042D5F00047DA
      F40081E0F4003C8ECA0088BAD300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000045964D00409048003B89420037823D00327C38002E76330029702E00256A
      2A00226526001F6122001C5D1F00195A1D000000000000000000E2CCBD00A25B
      3B00CAA67C00D7BA9E00C29B7600B5896100B3855F00BD957100D0B29600C4A2
      760088563D00D8C6BD00000000000000000044B0E3F2BBEFFAFF39D1F1FF28C5
      EEFF4EDCF6FF85E2F7FF328BCAEE398BB59BFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004DB3E300BAEEF90038D0F00027C4
      ED004DDBF50084E1F6003F92CD0086B8D100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00004B9E53007DB783007AB2800078AE7D0076AB7B0074A7780074A4770073A1
      760073A07600739E7600729C74001C5E200000000000F4ECE400B3774900CEA9
      8000D9BBA100BD906500B98B6100B6885E00B2835D00B0825C00AF825B00CCA9
      8C00C5A4780094614800EFE8E4000000000044B0E3FFF0FCFEFFB0EEFAFF43D8
      F4FF28C8EEFF41D7F4FF89E2F7FF328BCBED3888B2A3FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043AFE200EFFBFD00AFEDF90042D7
      F30027C7ED0040D6F30088E1F6004092CE007FB2CD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000008CBE910089BA
      8E0050A65A005CA56300579E5D00549A5A00509456004D8F520049894E004685
      4A0043804700407C4400709D73002063240000000000DBBC9B00BE905D00DFC1
      A700C4956B00C1906800E0CAB700FDFCFB00FEFEFD00E9DBCF00B3845D00B284
      5D00D3B49800AD7A5500C7A99B000000000044B0E39644B0E3FF44B0E3FFABEA
      F9FF4ED8F3FF2BC9EFFF3DD6F3FF8AE1F7FF328ACAEE3383B8DC297DD6FF2C85
      D8FF368EC1CBFFFFFF00FFFFFF00FFFFFF0090D0EE0043AFE20043AFE200AAE9
      F8004DD7F2002AC8EE003CD5F20089E0F6003F91CD004E93C100287CD5002B84
      D7005EA4CD00FFFFFF00FFFFFF00FFFFFF0000000000000000008FC39400C4DE
      C60056AE60006FB5770069AE710064A86A0060A265005A9B5F0056965B005391
      5800508D5500428147006F9E72002469290000000000C58F5100DABB9B00D4AC
      8800C6976B00C2946800C0926600ECDED200F9F6F300BA8A6200B8896200B789
      6100C49C7700D1B792009F69510000000000FFFFFF00FFFFFF0044B0E3FFF1FC
      FEFFBBF1FBFF7BE4F6FF28D2F0FF37D4F5FF83E0F6FF3EA9E3FFA0F3FCFFA9F5
      FCFF2B82D7FF358BBFCFFFFFFF00FFFFFF00FFFFFF00FFFFFF0043AFE200F0FB
      FD00BAF0FA007AE3F50027D1EF0036D3F40082DFF5003DA8E2009FF2FB00A8F4
      FB002A81D6005AA0CA00FFFFFF00FFFFFF00CDE3CF00CBE1CD007FBC8600A3CB
      A7005BB565006DB5750067AF6F0061A968005BA36200579D5D00529758004E91
      54005492590047874C0070A1730029702E0000000000C0823B00E2C6AE00CFA1
      7500C4986A00C3966900C3956800EDDFD300FAF6F300BE8F6500BD8E6400BD8E
      6300BD916800DEC5A90095553A0000000000FFFFFF00FFFFFF0044B0E39644B0
      E3FF45B2E3FF76C5EAFFACEEFAFF39D6F2FF4DDBF5FF65E4F7FF3CCEF2FF32C9
      EFFF85EFFBFF2B81D7FF3588BBD4FFFFFF00FFFFFF00FFFFFF0090D0EE0043AF
      E20044B1E20075C4E900ABEDF90038D5F1004CDAF40064E3F6003BCDF10031C8
      EE0084EEFA002A80D600569BC600FFFFFF00CEE5D000F3F9F40092CA9800C6E2
      C9005FBB6A0086C58D007CBE840074B87B006CB1740067AB6D0060A467005498
      5B005A9A5F004B8D500071A576002F77340000000000C6884100E3C8AF00CFA2
      7900CB9C7000C6996B00C4976A00FEFEFE00FEFEFD00C2956800C0936700C193
      6700C2976C00DEC4AA0098583A0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0044B0E30244B0E3966FC4EAFF80E5F7FF3DD1F1FF5DDBF5FF69DFF6FF50D7
      F3FF34CDEFFF85EFFBFF297FD6FF3486BAD8FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFF0090D0EE006EC3E9007FE4F6003CD0F0005CDAF40068DEF5004FD6
      F20033CCEE0084EEFA00287ED5005298C400D0E7D200F5FAF60096CF9C00CEE7
      D00063C06E0099D1A0008FC9960084C28B007BBB820073B57A006DAE73005DA1
      630062A468005094560074AA7900347F3A0000000000D19D5B00DFBB9E00DAB2
      9200CE9F7400CC9D7100CA9B7000DCBEA200DCBEA100C4986A00C4986A00C397
      6A00D0AA8400D7B99600AB6D510000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0044B0E3FFD5F7FCFF89E7F8FF7EE4F7FF7EE4F7FF7EE4F7FF82E5
      F7FF47D6F2FF38CEF0FFAEF5FCFF297CD6FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0043AFE200D4F6FB0088E6F7007DE3F6007DE3F6007DE3F60081E4
      F60046D5F10037CDEF00ADF4FB00287BD500D1E9D400F6FBF70098D39F00D3EA
      D50066C57200B1DBB500A5D5AB009CCFA1008FC8950085C18B007BBA820067AB
      6F006FAD7500579B5D007AB17F003A87410000000000E6C8A400CC9B6700E6CA
      B300D3A47900CF9F7600CE9D7300FAF7F400FAF7F400CA9D7000CA9C7000CCA0
      7600DEBFA400B8895A00D2AE9A0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0044B0E3FFBEF2FBFF7EE4F7FF7EE4F7FF81E5F7FF94E9F8FFBCF1
      FBFF8BDAF3FF49DDF5FFC1F8FDFF3090DAFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0043AFE200BDF1FA007DE3F6007DE3F60080E4F60093E8F700BBF0
      FA008AD9F20048DCF400C0F7FC002F8FD900D3EBD500F8FCF8009BD6A200D8EE
      DB007DCE88007DCD86007AC9840076C5800072C27C006FBD78006CB8740061AE
      690065AE6C0055A15D006BAB710067A76D0000000000F9F0E700D2995900D8B1
      8B00E5C9B200D5A87C00D0A47800E1C3A700E0C2A700CFA17500D0A37600DCBC
      A100CFAB8400B3754900F3EAE40000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0044B0E3FFDEF8FCFF8DE7F8FF7EE4F7FF94E9F8FFBCE9F8FF44B0
      E3FF42ACE3FFEEFCFEFF3298DDFF3995C8BFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0043AFE200DDF7FB008CE6F7007DE3F60093E8F700BBE8F70043AF
      E20041ABE200EDFBFD003197DC006AAFD500D4EDD700F9FCF9009EDAA500DEF1
      E000DBEFDD00D6ECD900D4EBD600D0E8D300CCE5CF00C9E2CC00C5DFC800A2C6
      A400C7DEC90085B5890000000000000000000000000000000000F1DCC500D091
      4E00D8B18B00E5CCB700DFB99C00D6AA8400D5A88100D8B29000E0C1AA00D3AD
      8500B3703D00E5D0BD000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0044B0E39644B0E3FFCEF5FCFF8DE7F8FFA1ECF9FF44B0E3FF44B0
      E3FFFFFFFFFF39A1DFFF3995C8BFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0090D0EE0043AFE200CDF4FB008CE6F700A0EBF80043AFE20043AF
      E200FEFEFE0038A0DE006AAFD500FFFFFF00D5EED800F9FDFA00B2E2B800B2E1
      B700B0DFB600AEDDB500ADDBB300ABD9B000A9D6AE00A7D3AB00A5D0A9008ABD
      8F00A3CBA700A1C8A5000000000000000000000000000000000000000000F1DD
      C500D59B5A00CF9F6900DFBE9F00E2C4AD00E2C4AD00DEBB9E00C7966100C389
      4800E9D5BD00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0044B0E39644B0E3FFCEF5FCFF9EEBF9FFBEF2FBFFFEFF
      FFFF44B0E3FF42ABDF9CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0090D0EE0043AFE200CDF4FB009DEAF800BDF1FA00FDFE
      FE0043AFE2008BCBEB00FFFFFF00FFFFFF00D6EFD900FAFDFA00FAFDFA00FAFD
      FA00FAFDFA00FAFCFA00FAFCFA00F9FCFA00F9FCFA00F9FCF900F9FBF900CADF
      CC00000000000000000000000000000000000000000000000000000000000000
      0000FAF1E700E9CBA700D7A16400CE904D00CC904900D09B5A00E3C6A100F7EE
      E40000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0044B0E39644B0E3FFDEF8FCFFDEF8FCFF44B0
      E3FF44B0E396FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0090D0EE0043AFE200DDF7FB00DDF7FB0043AF
      E20090D0EE00FFFFFF00FFFFFF00FFFFFF00DEF3E100DEF2E100DEF2E000DDF1
      E000DCF0DF00DCEFDE00DBEEDD00DAECDC00D9EBDB00D8EADA00D7E8D900D6E7
      D800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0044B0E39644B0E3FF44B0E3FF44B0
      E396FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0090D0EE0043AFE20043AFE20090D0
      EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000067A3D9395282B67AA45537B0FFBA
      66FFD27E41FFD37E41FFD17C41FFCD7A3FFFA94823DF64749380727272FF5C5C
      5CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F91DFE67185ACFFC87E59FFFFBA
      66FFFFB761FFFFB05EFFFFB25DFFB69976FF696969FF83757DFFA2A2A2FF8B8B
      8BFF656565575D5D5DFD595959B9FFFFFF000000000000000000000000000000
      0000F4ECE500D6B9A100B5835900AB734400AA714200B17D5200D2B49B00F2EA
      E300000000000000000000000000000000000000000000000000000000000000
      0000F4ECE500D6B9A100B5835900AB734400AA714200B17D5200D2B49B00F2EA
      E3000000000000000000000000000000000079B88000569D5D00619B65004577
      490058745A007B7B7B0086868600888888008A8A8A008B8B8B00686868005B7C
      5E0047854D005F986300397A3E0058895A003484D2FC93ACCCFFE7AF73FFFFD6
      84FFFEB05FFFFEA75BFFFDA055FFA0A0A0FFC9C9C9FFA5A5A5FFCACACAFFC2C2
      C2FFA1A1A1FFC4C4C4FF6D6D6DFF6E6E6E03000000000000000000000000E7D5
      C600BA885E00D6BAA200E8D9C900EBDFD000EBDFD000E7D7C700D2B49B00AF7A
      4C00E2CEBE00000000000000000000000000000000000000000000000000E7D5
      C600BA885E00D6BAA200E8D9C900EBDFD000EBDFD000E7D7C700D2B49B00AF7A
      4C00E2CEBE0000000000000000000000000069B8720065B36F0071BE7C0061B3
      6C005D906100E4E4E40081818100A8A8A800ABABAB0088888800E1E1E10075BB
      7D0083C98E0073C07F0054A35D0032753700984A2155B46F55F5FDD7B2FFFFD6
      84FFFFCA65FFFFC05EFFF9B35CFFCDA37EFFC9C9C9FFBDBDBDFF989695FB9494
      94F0B5B5B5FFC2C2C2FF6D6D6D9C656565120000000000000000E9D8CB00BD8B
      6100E6D4C300E4D1BE00C8A58400B78D6600B5896400C4A07F00DFCBB900E2CF
      BD00AE754700E3CFC00000000000000000000000000000000000E9D8CB00BD8B
      6100E6D4C300E4D1BE00C8A58400B78D6600B5896400C4A07F00DFCBB900E2CF
      BD00AE754700E3CFC0000000000000000000E2F3E400C3E3C7007BB98200518D
      5700A1C0A300EFEFEF007D7D7D00A3A3A300A5A5A50084848400EFEFEF00A0D5
      A70058AE610069AD71009FC7A300BFD7C100FFFFFF00A83B0164CD7352F3FFE8
      C0FFADAA86FFA79E7DFFA5A5A5FFB7B7B7FFE1E1E1FF9C9C9CFF993F0B0AFFFF
      FF00959595F0D5D5D5FF999999FF656565FF00000000F7F1EB00C89C7800E9D7
      C800E2CCB900BF936A00B98B6100CEAF9300CEAF9300B6885E00B1866000D9BF
      A900E3D0BF00B5825800F4ECE6000000000000000000F7F1EB00C89C7800E9D7
      C800E2CCB900BF936A00B98B6100CEAF9300CEAF9300B6885E00B1866000D9BF
      A900E3D0BF00B5825800F4ECE600000000000000000000000000000000008A8A
      8A00EFEFEF00EEEEEE007A7A7A009D9D9D00A0A0A00080808000EEEEEE00F3F3
      F30070707000E5E5E5000000000000000000FFFFFF00FFFFFF00913302796D79
      94FA73ADE7FF81B1E3FFB4B4B4FFCACACAFFE8E8E8FF868686FF59A868FF59A7
      67FF939794FFE2E2E2FFB6B6B6FF878787FF00000000E5CFBC00E3CBB800E9D5
      C400C6987000BE8F6500BE8F6500F6F0EB00F5EFE900B6885E00B6885E00B488
      6200E1CDBA00D8BCA500D8BDA7000000000000000000E5CFBC00E3CBB800E9D5
      C400C6987000BE8F6500BE8F6500F6F0EB00F5EFE900B6885E00B6885E00B488
      6200E1CDBA00D8BCA500D8BDA700000000000000000000000000000000009090
      9000F0F0F000EEEEEE0076767600989898009B9B9B007B7B7B00EEEEEE00F3F3
      F30075757500E5E5E5000000000000000000FFFFFF00FFFFFF00564A526672A4
      D6FEACD1F2FFAED7FDFFB0D4F5FFA5BACDFFD2D2D2FFABABABFF818181FF8A8A
      8AFFB4B4B4FFCACACAFF7D917DFF4C9BE6FF00000000D8B39500EEE0D200D8B4
      9400C6976B00C2946800C0926600BE8F6500BE8F6500BA8A6200B8896200B789
      6100CAA68500E9DBCB00C1946E000000000000000000D8B39500EEE0D200D8B4
      9400C6976B00C2946800C0926600BE8F6500BE8F6500BA8A6200B8896200B789
      6100CAA68500E9DBCB00C1946E000000000000000000C7DBEA00669CC2008C8E
      9000F5F5F500EEEEEE0073737300757575007676760077777700EEEEEE00F3F3
      F300898A8C004D608D00C1C8D90000000000FFFFFF00FFFFFF00235794ABA7BF
      DBFF96C5F1FFA1D0FBFF96C6F3FFBABABAFFDADADAFFBFBFBFFFD6D6D6FFD8D8
      D8FFB8B8B8FFD4D4D4FF888888FF5095DBFF00000000D9B29200F1E3D800D0A4
      7900C4986A00C3966900C3956800F9F5F100F2E9E000C1946C00BD8E6400BD8E
      6300BF946C00EEE2D400C08F66000000000000000000D9B29200F1E3D800D0A4
      7900C4986A00C3966900C3956800F9F5F100F2E9E000C1946C00BD8E6400BD8E
      6300BF946C00EEE2D400C08F660000000000C7DCEC003A84BA005695C1003E80
      B200DBDDDF00ECECEC00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00DEE0
      E2002C4A8000395E8F00263F7900C1C8D900FFFFFF00FFFFFF0032578FC45069
      9AFF6380AEFF7CA6D6FF5573A5FF7E8CA8FFB6B8BAFF88CBA4FFC0C0C0FFBEBE
      BEFF81C491FFA6ADA7FF8DA88EFF3569399600000000E0BB9C00F1E4D900D0A5
      7D00CB9C7000C6996B00C4976A00E1CBB500F7F2ED00F5EDE700D8BCA000C193
      6700C49A7000EFE1D500C69870000000000000000000E0BB9C00F1E4D900D0A5
      7D00CB9C7000C6996B00C4976A00E1CBB500F7F2ED00F5EDE700D8BCA000C193
      6700C49A7000EFE1D500C698700000000000619AC9005294C50079AED2005696
      C3004286B900CCCECF00EDEDED00EEEEEE00EEEEEE00EEEEEE00D8D9DA003763
      9600436F9E005B8BB0003B639300556A9600FFFFFF00FFFFFF00243B5F434461
      95FD415B90FF415B90FF415B90FF415B90FF6F8F9EFF849993FFB6B7B7FFB4B4
      B4FFA4D5B1FF82BF85FF277E2DA02673300A00000000E9C9AF00F2E4D800DEBA
      9D00CE9F7400CC9D7100F4EAE200E3CAB300E6D2BE00FAF7F500E4D2BE00C397
      6A00D5B39000EDDFD100D2AB8A000000000000000000E9C9AF00F2E4D800DEBA
      9D00CE9F7400CC9D7100F4EAE200E3CAB300E6D2BE00FAF7F500E4D2BE00C397
      6A00D5B39000EDDFD100D2AB8A0000000000FAFCFD003E84BD005192C50078AD
      D2005496C3004186B900C9CACB00ECECEC00EEEEEE00D8DADB003C75A5004C7F
      AD006A99BC004674A100385C9000FAFBFC00FFFFFF00FFFFFF00FFFFFF002541
      6661426195F1415D92FF436096FB2D5769CC6B7792FA73ADE7FF81B1E3FF7DB2
      E7FF6C98C4FF2B652EB62C75350BFFFFFF0000000000F5E4D600F3E2D300EEDB
      CC00D4A77D00CF9F7600FAF7F400FBF7F400FBF7F400FAF7F400D0A78000CEA3
      7A00E9D4C200E9D3C100E8D3C1000000000000000000F5E4D600F3E2D300EEDB
      CC00D4A77D00CF9F7600FAF7F400FBF7F400FBF7F400FAF7F400D0A78000CEA3
      7A00E9D4C200E9D3C100E8D3C1000000000000000000FAFCFD003D80BD004F90
      C50075ACD2005394C5004088BB00D1D3D400D1D3D4004082B300548CBA0076A4
      C6004F83B1003D6FA200FAFBFD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00564A526672A4D6FEACD1F2FFAED7FDFFB0D4
      F5FF92C0E7FF405E82ADFFFFFF00FFFFFF0000000000FDF9F500F0D2BA00F5E8
      DC00EBD7C500D6AB8000DBBA9900F5EBE200F4EBE100E3C7AD00D1A67A00E5CD
      B900F0E1D400DEBA9B00FAF4F0000000000000000000FDF9F500F0D2BA00F5E8
      DC00EBD7C500D6AB8000DBBA9900F5EBE200F4EBE100E3C7AD00D1A67A00E5CD
      B900F0E1D400DEBA9B00FAF4F000000000000000000000000000FAFCFD003B7F
      BB004C8FC30072AAD2005193C5003A82B9003B84B8005594C1007CABCE005490
      BB00427FB000FAFCFD000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000F54968DB8D0E7FF96C5F1FFA1D0FBFF96C6
      F3FFB6CFE4FF3183BFDFFFFFFF00FFFFFF000000000000000000FBF1E900F2D3
      BA00F6E9DE00EDDDCF00E2C0A600D7AD8800D6AB8500DCBA9B00EAD5C600F2E5
      D800E3C0A200F5E9DE0000000000000000000000000000000000FBF1E900F2D3
      BA00F6E9DE00EDDDCF00E2C0A600D7AD8800D6AB8500DCBA9B00EAD5C600F2E5
      D800E3C0A200F5E9DE000000000000000000000000000000000000000000FAFC
      FD003B7DBA004A8CC2006FA9D10070A9D10073ABD10079AED2005596C3004488
      BA00FAFCFD00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00155F9D9234AEE5FF65B8E6FF8DC8F6FF3BAD
      E6FF1DA7E5FF2397D4EFFFFFFF00FFFFFF00000000000000000000000000FCF2
      EA00F5D9C300F8E8DB00F5E7DC00F2E4D900F2E4D900F4E6DB00F4E3D500ECCC
      B300F8ECE300000000000000000000000000000000000000000000000000FCF2
      EA00F5D9C300F8E8DB00F5E7DC00F2E4D900F2E4D900F4E6DB00F4E3D500ECCC
      B300F8ECE3000000000000000000000000000000000000000000000000000000
      0000FAFCFD00397AB800478AC10069A5CF006DA8D0005092C5004288BE00FAFC
      FD0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001C4A6F4321A3DFFD19A6E5FF19A6E5FF19A6
      E5FF19A6E5FF236B9990FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFAF700FBECE100F7DDC800F5D8C000F4D6BE00F4D8C200F8E8DB00FDF8
      F500000000000000000000000000000000000000000000000000000000000000
      0000FEFAF700FBECE100F7DDC800F5D8C000F4D6BE00F4D8C200F8E8DB00FDF8
      F500000000000000000000000000000000000000000000000000000000000000
      000000000000FAFCFD00427EBA003476B600367AB8004687C000FAFCFD000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001A547C612597D3F11BA5E4FF21A0
      DEFB226F9F9D22374E06FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFCFD00E9F0F700E9F0F700FAFCFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C86D8702D88D8A62D87D8EA2D88
      D8F72D88D8F72D88D8F72D88D8F72D88D8F72D88D8F72D88D8F72D88D8F72D87
      D8F72D88D8F12C86D893FFFFFF00FFFFFF0000000000ACC3DC00C0897400CA6F
      3300D17D4000D27D4000D07B4000CC793E00B35E3E00B1B9C800C3DCF300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F453900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000338ED9E6DCF0FAF0A7DDF4FD9EDB
      F4FF96DAF3FF8ED8F3FF86D7F3FF7FD4F2FF79D3F2FF72D2F1FF6CD0F1FF69CF
      F1FFC2EAF8FE338ED9F0FFFFFF00FFFFFF00519BE1007084AB00C77D5800FEB9
      6500FEB66000FEAF5D00FEB15C00FEB35B00DD87560086727D004B9AE500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000ECE3E000ECE2DF00ECE2
      DF00ECE2DF00ECE3E000EBE0DE00ECE2DF00ECE3E000ECE2DF00EBE0DE00ECE2
      DF00ECE2DF00ECE2DF00ECE2DF0000000000000000002C86D8702D88D8A62D87
      D8EA2D88D8F72D88D8F72D88D8F72D88D8F72D88D8F72D88D8F72D88D8F72D88
      D8F72D87D8F72D88D8F12C86D893000000003594DAF7EFFAFEFFA1E9F9FF91E5
      F8FF81E1F7FF72DEF6FF63DAF5FF54D7F4FF47D3F3FF39D0F2FF2ECDF1FF26CB
      F0FFCAF2FBFF3594DAF7FFFFFF00FFFFFF003584D20092ABCB00E6AE7200FEB7
      5E00FDAF5E00FDA65A00FC9F5400FE964C00FC924C00B29EA1004D95DD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000ECE2DF00B16D3900AA65
      3300A15A2C009B542A00904B230088471D00793F2200733C2500663826006437
      26005E35260064382500EBE0DE000000000000000000338ED9E6DCF0FAF0A7DD
      F4FD9EDBF4FF96DAF3FF8ED8F3FF86D7F3FF7FD4F2FF79D3F2FF72D2F1FF6CD0
      F1FF69CFF1FFC2EAF8FE338ED9F000000000369ADAF8F2FAFDFFB3EDFAFFA4E9
      F9FF95E6F8FF85E2F7FF81E1F7FF7AE0F7FF6FDDF6FF62DAF5FF54D6F3FF47D3
      F2FFE8F9FDFF3594DAFFFFFFFF00FFFFFF00DCC2B500B6745B00FCD6B100FED5
      8300FEC96400FEBF5D00FEB35500FEA65600FEC49100D57C5A00B7907E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000ECE2DF00B5723B00B06C
      3800A8623100A35D2D0098522800924D240082441B00794020006C3A26006537
      26005E35270061362600EBDFDD0000000000000000003594DAF7EFFAFEFFA1E9
      F9FF91E5F8FF81E1F7FF72DEF6FF63DAF5FF54D7F4FF47D3F3FF39D0F2FF2ECD
      F1FF26CBF0FFCAF2FBFF3594DAF70000000036A1DAF9F6FCFEFFC8F2FCFFB9EF
      FBFFACECFAFF8CE4F8FF8AE3F8FF82E1F7FF79DFF7FF6DDDF6FF61DAF5FF57D7
      F4FFE7F8FDFF3594DAFFFFFFFF00FFFFFF00FFFFFF00DCB29B00CE795900FEE7
      BF00ACA98500A69D7C009F917400F6C99B00E3937400C8826400FBF7F500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000ECE3E000B9763C00B572
      3B000000000000000000A25B2D009C552B008E49230086461B00F7F5F4000000
      00006136250062362600EBE0DE000000000000000000369ADAF8F2FAFDFFB3ED
      FAFFA4E9F9FF95E6F8FF85E2F7FF76DEF6FF65DBF5FF57D7F4FF49D4F3FF3BD1
      F2FF30CEF1FFCCF2FBFF3598DAF70000000037A6DAFAFEFFFFFFF8FDFFFFF6FD
      FFFFF5FCFFFFDEDBD1FFADCAC5FFA6C5C0FFA4C3BDFF9EBDB6FF97BAB3FF92B8
      B2FFE1CBB7FF3594DAFFC38452FFBB7742B0FFFFFF00FFFFFF00CA9E86006F7B
      950072ACE60080B0E2007CB1E6006B97C30073542B005BA3630058A7670058A6
      660055A2630053935500BFB2B900C3DCF30000000000ECE2DF00BC7A3E00BA78
      3E000000000000000000AC673700A86232009B542900934D2600F7F5F4000000
      00006637260063372600EBE0DE00000000000000000036A1DAF9F6FCFEFFC8F2
      FCFFB9EFFBFFACECFAFF9CE8F9FF8BE3F7FF7CE0F6FF6CDCF6FF5DD9F5FF4FD6
      F4FF44D3F3FFD0F3FCFF359FDAF70000000035ABDAFAE8F6FBFF7EC5EAFF5BAE
      E3FF51A8E1FF61ADDFFFEDF6F7FFEDF5F6FFE7EFF3FFE5ECEEFFE5EBEDFFE5EB
      EDFFF8F3EFFF3594DAFFF0E2D8FFC58A5DFDFFFFFF00FFFFFF00BBB6B90072A3
      D500ABD0F100ADD6FC00AFD3F40091BFE6005382880078CE930076CD8D0075CD
      8E0075CD90006AB37300598E59004B9AE50000000000ECE3E000C17F3D00C17F
      3F000000000000000000BF7E4200BB794000A6603100A0592D00F7F6F4000000
      00006F3C230069392500EBDFDD00000000000000000037A6DAFAFEFFFFFFF8FD
      FFFFF6FDFFFFF5FCFFFFF3FCFEFFD8F6FCFF94E6F8FF85E3F7FF76DFF6FF68DB
      F5FF5CD8F4FFD7F4FCFF35A4DAF70000000036AADAF2F1FAFDFF94DEF5FF93DC
      F4FF81D5F2FFC0A997FF91C1E4FF3594DAFF3594DAFF3594DAFF3594DAFF3594
      DAFF3594DAFF3594DAFFF0E2D8FFC48654FFFFFFFF00FFFFFF006B8EB700A6BE
      DA0095C4F000A0CFFA0095C5F200B5CEE3004079A60077CD8E0074CC88006FCA
      820069CA7A0069C878005F9560004D95DD0000000000ECE3E000C8873C00C989
      3D000000000000000000E0AA6900DDA76A00C4854400FCFCFB00FAF8F7000000
      000087461C007C402000ECE2DF00000000000000000035ABDAFAE8F6FBFF94D4
      EFFF88CEEEFF73C1E9FFC9E9F6FFF2FCFEFFF3FCFEFFF2FCFEFFF0FCFEFFEFFB
      FEFFEEFBFEFFFEFFFFFF36ABDAF70000000035AFDAF0F7FCFEFF8EE4F8FF91DE
      F5FF9FE0F5FFE3B18CFFFAF6F1FFEAC9AEFFFFFFFFFFE8C7ACFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF1E5DBFFC68655FFFFFFFF00FFFFFF00617DA8004F68
      9900627FAD007BA5D5005472A400425C9100436697007BCF9E0076CD960070CC
      8D0071CC87009CD7AA006CAF6F0088A68A0000000000ECE3E000CB8B3B00CE8E
      39000000000000000000E4B67C00E3B37C00BF7E4100E5C5A200000000000000
      0000904B220086451C00ECE2DF00000000000000000036AADAF2F1FAFDFF94DE
      F5FF93DCF4FF81D5F2FF6ACAEDFF6CCBEAFF85D3EFFF80D2EFFF7AD0EFFF76CF
      EEFF72CFEEFFE9F7FBFF34AEDAF30000000036B3DAF8FDFEFEFFFEFFFFFFFEFE
      FFFFFDFEFFFFE5B48FFFFAF6F2FFE9C6AAFFE9C6ACFFE8C7ACFFE8C7ACFFE9C9
      B0FFE8C8B0FFE8CCB5FFF2E7DEFFC88A59FFFFFFFF00FFFFFF00C5CBD5004461
      9500405A8F00405A8F00405A8F00405A8F006E8E9D00839892007C938800748B
      7E00A3D4B00081BE840077AD7B00F6F9F70000000000ECE2DF00CD8D3800D090
      370000000000000000000000000000000000BC7A3D00B7753C00FAF8F6000000
      000098512A008F4B2200EBE0DE00000000000000000035AFDAF0F7FCFEFF8EE4
      F8FF91DEF5FF9FE0F5FFACE1F6FFEFFBFEFFF4FDFEFFF3FCFEFFF1FCFEFFEFFB
      FEFFEEFBFEFFFAFDFFF936AFDAD40000000034B4D9D05EC2E1FA60C3E2FA60C3
      E2FA60C3E2FAE7B794FFFBF7F4FFE9C3A6FFFFFFFFFFE8C7ACFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7F1EBFFCB8F5FFFFFFFFF00FFFFFF00FFFFFF00ACB6
      C4004B699A00405C910045629700567886006D79930072ACE60080B0E2007CB1
      E6006B97C30067906900F6F9F600FFFFFF0000000000ECE3E000CF8F3600D090
      3700D8993E00D5974100D1934400CE904500BC7A3E00B9773C00BE7E4600C184
      4D009F582D0098512800EBE0DE00000000000000000036B3DAF8FDFEFEFFFEFF
      FFFFFEFEFFFFFDFEFFFFFEFFFFFFEAF7FBFF6BC7E4F96BC7E3F86BC7E3F86BC7
      E3F879CDE6F774CAE5E132B1D95600000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E9BA98FFFBF7F4FFE9C3A6FFE9C3A6FFE9C3A6FFE9C3A6FFE9C3
      A6FFE9C3A6FFE9C3A6FFFBF7F4FFCE9364FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BBB6B90072A3D500ABD0F100ADD6FC00AFD3
      F40091BFE6007D91AA00FFFFFF00FFFFFF0000000000ECE2DF00D0903600CF8F
      3800CD8D3900CA8A3B00C6853E00C3833E00BC7A3E00B9773D00B26F3A00AE69
      3700A55F30009F582C00ECE2DF00000000000000000034B4D9D05EC2E1FA60C3
      E2FA60C3E2FA60C3E2FA5FC3E2FA3CB6DBDD2CB2D8162CB2D80F2CB2D80F2CB2
      D80F2CB2D80F2CB3D80F2CB3D80400000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EBBD9BFFFBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBF7F4FFD1976AFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007AA0C400B7CFE60095C4F000A0CFFA0095C5
      F200B5CEE3004A92C600FFFFFF00FFFFFF0000000000EBE0DE00EBE0DE00EBE0
      DE00EBE0DE00EBE0DE00EBDFDD00EBE0DE00EBE0DE00EBE0DE00EBDFDD00EBE0
      DE00EBDFDD00EBDFDD00EBDFDD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ECBF9EFFFBF7F4FF9CD5A5FF98D3A1FF8BCB93FF82C689FF7EC3
      84FF7AC180FF76BE7CFFFBF7F4FFD49B6FFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0078A3C60033ADE40064B7E5008CC7F5003AAC
      E5001CA6E400309DD600FFFFFF00FFFFFF00000000008F4539008F4539008F45
      39008F4539008F4539008F4539008F4539008F4539008F4539008F4539008F45
      39008F4539008F4539008F453900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEC1A1EBFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFD7A074F8FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C3CFD90022A3DE0018A5E40018A5E40018A5
      E40018A5E40082ABC500FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFC2A37EEFC1A2E3EDC09FFFEBBE9DFFE7B793FFE4B28CFFE2AF
      88FFE0AC84FFDDA980FFDCA57DFFDAA37ACAFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8BECD00309CD4001AA4E30023A1
      DE0076A6C300FAFAFB00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007AC8EC002CA6DF002AA3DE0028A0
      DC00269DDB00249AD9002297D8001F92D5001A8BD2001584CE00107DCB000C76
      C8000870C500056BC2000267C0005D9CD6000000000000000000000000000000
      0000E3E6F7009AA6E3004C61CB00354EC400334CC200455CC60094A1DE00E1E4
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E512BBFB06331EFBB7038FABE77
      3CFBC17B40FBC27E42FBC28045FBC38247FBC38649FBC3864AFBC3874BFBC387
      4BFBC3874CFABD8349F4AC7440E18E512BBF47B5E500BDE2F400F3FBFD00EEFA
      FD00EDFAFD00EDFAFD00EEFBFD00EEFBFD00EEFAFD00EDFAFD00ECFAFD00ECFA
      FD00EBFAFD00F1FBFD00AACDEA00297ECA00000000000000000000000000BFC7
      EF004B62D0005163D300838FE600949FED00949EEC00828DE4004B5CCD003C53
      C300B8C0E900000000000000000000000000636363995D5D5DD2585858FF8181
      81FF797979FF6E6E6EFF616161FF525252FF434343FF363636FF2B2B2BFF2323
      23FF232323FF242424FF232323D12323237AA35D31DEF8F3EEFDF5ECE4FEFBF5
      F0FFFBF7F1FFFBF7F3FFFBF8F4FFFCF9F5FFFCF9F5FFFCF9F6FFFCF9F7FFFCFA
      F7FFFCFAF7FFF7F1ECFDEAD9CCF7AB7642DDC3E7F70061BEE700F3FBFD00B4EE
      F90057D9F40057D9F40056D7F20057D6F10057D5F10056D8F30050D7F4004DD6
      F30061D9F500E9FAFD004392D100B5D4ED000000000000000000C1CAF100465F
      D4007483E200A0ABF3007E8AEB005B66E3005A65E2007C86E9009EA7F0006E7B
      DC00314AC100B8C1E90000000000000000006A6A6AFDA7A7A7FFB5B5B5FF8181
      81FF898989FF898989FF898989FF898989FF898989FF898989FF898989FF8080
      80FF2C2C2CFFB5B5B5FF9B9B9BFF232323FFBE6F3CFEFCF9F5FFECD0BCFFF9E4
      D6FF184259FF2B6188FF4C8ABEFF70A4C4FFE2DCD7FFFEEADDFFFDEADBFFFDE8
      D8FFF8E0CDFFEACBB3FFF3EBE3FFC78B50FE000000005DC0EA009CD6F000E6F8
      FC008AE4F70059DAF5005AD9F3003CA0D4003CA0D40053D5F10051D7F4004FD5
      F300D7F5FB0087BEE40054A0D8000000000000000000E7EAFA00586FDD007787
      E500A2AFF4005666E6005564E5008891EC008791EB00525EE100515CE0009EA8
      F1006E7CDC004056C600E2E6F60000000000707070FFB5B5B5FFB5B5B5FF9595
      95FF818181FF818181FF797979FF6E6E6EFF616161FF525252FF434343FF4242
      42FF6E6E6EFFB5B5B5FFB5B5B5FF252525FFC27646FFFDFBF8FFF9E3D2FFECCF
      B9FF2E6784FF94C7F9FF91C9F9FF4185C9FF2668AAFFD0C2BCFFFDE6D4FFF7DE
      C9FFEBCAB0FFF8DBC4FFF8F2ECFFC98C50FF00000000E2F4FB0036B1E400F2FA
      FD00C2F1FA005BDBF5005BD9F30063DEF50056CAEA0054D5F10053D8F40093E6
      F700E2F3FA001B89D000DEEDF8000000000000000000A7B4F0005F72DF00A3B2
      F600596DEA00586BE9005768E700FEFEFE00FEFEFE005461E4005360E200525E
      E1009EA8F1004F60D00097A3E00000000000757575FFBBBBBBFFBBBBBBFF8D8D
      8DFFD4D4D4FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFD3D3
      D3FF838383FFBBBBBBFFBBBBBBFF2A2A2AFFC57D50FFFDFBF9FFFDE9D8FFF9E1
      D0FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF4687BDFFCDB9ACFFEAC5
      A9FFF8DAC2FFFCDFC6FFF8F3EDFFC88D50FF000000000000000078CCEE008BD1
      EF00E9FAFD0093E5F7005BD9F30046B0DC003CA0D40055D6F1005BDAF400DDF7
      FC007CBFE60087C3E8000000000000000000000000006A81E8008D9EEF008398
      F3005B72ED005A6FEB00596DEA008F9CF000A5AEF2005666E6005564E5005461
      E4007C88EA008490E6004D63CD00000000007A7A7AFFD7D7D7FFD7D7D7FF9797
      97FFD8D8D8FFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFD7D7
      D7FF8E8E8EFFD7D7D7FFD7D7D7FF3F3F3FFFC9865BFFFDFBF9FFFDE8D7FFFDE6
      D4FF9CA2A5FF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0EDFF4E96D3FFD5B8
      A4FFFCDBC0FFFCDBC0FFF8F3EDFFC88C50FF0000000000000000F6FCFE0044B9
      E700C7E9F600E5F9FC005CD9F3003CA0D4003CA0D40056D6F100C6F2FB00BFE2
      F3003AA3DC00F5FAFD000000000000000000000000005C75E9009FB2F600647F
      F1005E77EF005C75EE005B72ED00D2D8F900FEFEFE00586BE9005768E7005666
      E6005C6BE60098A4F0003B54CB00000000007E7E7EFFF9F9F9FFF9F9F9FFABAB
      ABFFDFDFDFFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFDFDF
      DFFFA3A3A3FFF9F9F9FFF9F9F9FF616161FFCC8E66FFFDFBF9FFFDE5D3FFF1CC
      B2FFE3B596FFB0C8D2FF76BAD7FFC2F6FDFF63DFF7FF5DE2F8FF79D3F0FF4996
      D8FFD9BAA5FFFCD7B7FFF8F3EDFFC88C50FF000000000000000000000000B8E5
      F70070C7EC00F8FDFE005DDBF3003DA1D4003DA1D4005BD8F300ECFAFD0067BA
      E400B2DCF20000000000000000000000000000000000607AED00A0B5F7006683
      F3005F7BF2005E79F0005E77EF00FEFEFE00FEFEFE005A6FEB00596DEA00586B
      E9005E6EE8009AA7F0004058CF0000000000818181F9FCFCFCFFFCFCFCFFCBCB
      CBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFC6C6C6FFFCFCFCFFFCFCFCFF707070FED09670FFFDFBF9FFF1CDB1FFE3B5
      96FFF9E9DEFFFEF7F1FFB0CAD3FF77CBE7FFC7F7FDFF5EDCF5FF5AE1F7FF7BD4
      F1FF4A96D8FFCAB2A3FFF8F4ECFFC88C50FF0000000000000000000000000000
      000059C2EB00A8DEF300ECF8FC003DA2D5003DA2D500D3F4FB00A1D6F0005CB8
      E5000000000000000000000000000000000000000000758CF20090A5F20087A0
      F700617FF300607DF2005F7BF200FEFEFE00FEFEFE005C75EE005B72ED005A6F
      EB008192F0008897EB00586FD70000000000818181D2D2D2D2FFE8E8E8FF7D7D
      7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D
      7DFF7D7D7DFFE8E8E8FFC4C4C4FF565656DCD39D7BFEFBF6F2FFE3B496FFF9E8
      DCFFFEF5EEFFFDE9DAFFFDEADCFFBEDBDDFF79D3EEFFC7F7FDFF5FDCF5FF5BE2
      F7FF7AD6F2FF4F9BD7FFD0D4D7FFC88C50FE0000000000000000000000000000
      0000DAF2FB0039B7E700F8FCFE0093E8F8009DEAF900EBF9FD0030A9E000D7EE
      F9000000000000000000000000000000000000000000B1BFFA006B80EB00A8BC
      FA006281F4006180F400617FF300FEFEFE00FEFEFE005E79F0005E77EF005C75
      EE00A4B4F7005C6FDC00A2AEEB0000000000818181459A9A9AFFCCCCCCFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFC3C3C3FF747474FF47474745D7AB91DCFDFAF8FEFCF5F1FFFFFC
      F9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCFAFFC1E9F4FF7DD4EEFFC4F6FDFF6CDD
      F6FF6DCAEDFF63A3D7FF69A1D4FF9C7C5AE00000000000000000000000000000
      00000000000073CDEF0093D7F100F2FBFD00E6F9FD008ED2EF0085CEEE000000
      00000000000000000000000000000000000000000000EBEEFE00748BF6008296
      EF00A8BCFA006281F4006281F400FEFEFE00FEFEFE00607DF2005F7BF200A5B8
      F8007A8CE9005C73E000E6EAFA00000000000000000081818163818181F39898
      98FF9B9B9BFF9B9B9BFF9A9A9AFF999999FF979797FF969696FF969696FF9595
      95FF7F7F7FFF595959F35353536300000000C89A7CBFD5A484F0D09770FBCC8F
      64FDCC8E62FDCB8E60FDCA8C5DFDC98B5BFDC88A58FD909785FE80D3EAFFB2E3
      F9FF8BC0E7FFAED3F6FFC4E0FCFF679DCFFD0000000000000000000000000000
      000000000000F1FAFE0043BDE900F0F9FC00D4EEF90042B7E700F1F9FD000000
      0000000000000000000000000000000000000000000000000000CED6FD006C85
      F7008396F000A8BCFA0089A2F7006A88F5006A88F50088A1F700A7BBF9007E91
      EB005971E400C5CEF50000000000000000000000000000000000818181098181
      813F9C9C9CFFD7D7D7FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFD7D7D7FF9696
      96FF6666663F6060600900000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000021B7E35A77BE
      E7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E80000000000000000000000000000
      000000000000000000008CD7F30084D3F00081D0EF00ACE0F500000000000000
      000000000000000000000000000000000000000000000000000000000000CED7
      FD00768DF9006D82ED0091A5F3009FB3F7009FB3F70090A5F200677CE8006880
      EC00C8D0F8000000000000000000000000000000000000000000000000000000
      00009C9C9CFF9C9C9CFF9B9B9BFF9B9B9BFF9A9A9AFF999999FF979797FF9696
      96FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000032B0
      DE5358A5D8FF85B1DBFF469DD0FF2B95D15E0000000000000000000000000000
      00000000000000000000FDFEFF005CC6EE0068C9EE00FDFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEEFE00B5C2FC007C93F9006B85F6006983F500768EF400B0BDF800E9EC
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BA6A368FB96935B5B86935EEB768
      35FFB56835FFB46734FFB26634FFB06533FFAE6433FFAC6332FFAA6232FFA961
      32FFA86031FFA76031FEA66031F1A86131C40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5E7F7009EA9E100536AC6003E58BF003953BE004B66C10097A7DB00E1E6
      F50000000000000000000000000000000000BA6A35DEEBC6ADFFEAC5ADFFFEFB
      F8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
      F8FFFEFBF8FFC89A7CFFC79879FFA76031ED0000000000000000000000000000
      000000000000B96631C5C28357FFD28A67FFE08E6FFFDB8C6BFFD98A6CFFD689
      6DFFCC8A6BFFAA6C43FFA55E2DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C8
      ED005465CB003B51CB007479E7008E91ED008E91ED007077E300324CC0003F5B
      BD00B9C4E700000000000000000000000000BA6B37FEEDCAB3FFE0A27AFFFEFA
      F7FF62C088FF62C088FF62C088FF62C088FF62C088FF62C088FF62C088FF62C0
      88FFFDF9F6FFCA8D65FFC99B7CFFA76031FE0000000000000000000000000000
      000000000000C58254FFEECDB9FFDCFEFEFF86EDC6FFA1F3D6FFA1F5D6FF8BED
      C6FFDFFEFEFFDCA184FFAA693DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5C9EE00505F
      CC005B64DF00A0A5F4007D85EE005A62E800585CE6007C83ED009D9FF300505C
      D6003351B900B9C4E7000000000000000000BB6C38FFEECCB6FFE1A27AFFFEFA
      F7FFBFDCC2FFBFDCC2FFBFDCC2FFBFDCC2FFBFDCC2FFBFDCC2FFBFDCC2FFBFDC
      C2FFFDF9F6FFCD9068FFCC9E81FFA86132FF000000000000000000000000B866
      31ACC28357DEC27E50FFEEB599FFE9F2E7FF50BE83FF6EC897FF70C898FF53BE
      83FFE3F3E8FFDC9B7AFFA96839FF000000008E512BBFB06331EFBB7038FAFBF5
      F0FFC17B40FBC27E42FBC28045FBC38247FBC38649FBC3864AFBC3874BFBC387
      4BFBC3874CFABD8349F4AC7440E18E512BBF00000000E8EAF9006470D300606A
      E200A0ABF400535EEB004F5BE9004C58E8004D58E5004B55E5004F55E5009DA1
      F300535FD5003F5CBE00E2E7F50000000000BB6B38FFEFCEB8FFE1A279FFFEFA
      F7FF62C088FF62C088FF62C088FF62C088FF62C088FF62C088FF62C088FF62C0
      88FFFDF9F6FFCF936AFFCEA384FFAA6132FF000000000000000000000000C481
      53DEEDCCB9DEC38053FFE9B596FFF2F2E9FFECF0E5FFEEF0E5FFEEEFE5FFECF0
      E4FFF2F4ECFFD49B78FFAF6F43FF00000000A35D31DEF8F3EEFDF5ECE4FEFBF5
      F0FFFBF7F1FFFBF7F3FFFBF8F4FFFCF9F5FFFCF9F5FFFCF9F6FFFCF9F7FFFCFA
      F7FFFCFAF7FFF7F1ECFDEAD9CCF7AB7642DD00000000ACB0E9004A55DA00A1AA
      F5005563EF005165ED004C58E8004C58E8004C58E8004C58E8004B57E5005159
      E5009EA2F400334FC30095A5DB0000000000BA6A36FFEFD0BBFFE2A27AFFFEFB
      F8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
      F8FFFEFBF8FFD3966DFFD2A78AFFAB6232FF00000000B866319BC28256C9C47E
      52F8ECB095F8C88A60FFE5B491FFE1A680FFE0A680FFDDA27CFFDBA07AFFDA9E
      78FFD89D76FFD39972FFBA7D56FF00000000BE6F3CFEFCF9F5FFECD0BCFFF9E4
      D6FFFEECDFFFFEEBDFFFFEEBDEFFFEEBDBFFFEEBDCFFFEEADDFFFDEADBFFFDE8
      D8FFF8E0CDFFEACBB3FFF3EBE3FFC78B50FE000000007277DC00808BED007D90
      F6005C72F2004C58E8004C58E8004C58E8004C58E8004C58E8004C58E8004E5A
      E8007A82EF00747AE1004B64C30000000000BB6A36FFF0D2BEFFE2A37AFFE2A3
      7AFFE1A37AFFE2A37BFFE1A37BFFE0A178FFDE9F77FFDD9F76FFDC9D74FFD99B
      72FFD89971FFD69970FFD5AB8EFFAD6333FF00000000C48153C9EDCCB9C9C68C
      64F8DFBB9BF8C98C64FFE9B798FFDCA47DFFDCA57FFFDAA27BFFD89F79FFD89F
      78FFD79E77FFD79D77FFBE835CFF00000000C27646FFFDFBF8FFF9E3D2FFECCF
      B9FFF8E1D0FFFDE7D6FFF4D5BDFFE9BFA0FFE9BFA2FFF4D3BDFFFDE6D4FFF7DE
      C9FFEBCAB0FFF8DBC4FFF8F2ECFFC98C50FF000000006468DA00A0AAF6006F85
      F7006781F500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE004C58
      E8005B65E900959BF0003855BD0000000000BB6A36FFF2D5C2FFE3A37AFFE3A3
      7AFFE2A37BFFE2A37BFFE2A47BFFE1A279FFE0A178FFDEA077FFDE9E75FFDC9D
      74FFDA9B73FFD99B73FFDAB095FFAF6433FF00000000C27D50C9EDB498C9CA95
      6EF8D4B48FF8C7875CFFEEBEA0FFFCFBF9FFFDFBFAFFFDFCFCFFFDFCFBFFFCFA
      F9FFFCFBFAFFDCA784FFC07E52FF00000000C57D50FFFDFBF9FFFDE9D8FFF9E1
      D0FFEBCAB3FFECC5A7FFE3B698FFF7E7DDFFF7E8DEFFE3B697FFECC3A4FFEAC5
      A9FFF8DAC2FFFCDFC6FFF8F3EDFFC88D50FF00000000696DDB00AEB8F8007E92
      F9006F84EF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE004C58
      E8005D69ED00959CF0003C54BF0000000000BB6A36FFF2D8C5FFE3A47BFFE3A3
      7AFFE3A47AFFE2A47BFFE2A37BFFE1A37BFFE1A279FFDFA077FFDE9F76FFDD9E
      74FFDB9C72FFDC9D74FFDDB59AFFB16534FF00000000C28052C9E8B495C9CC97
      72F8E9BDA0F8C6855AFFEEBF9DFFFEFEFEFFCB926DFFFEFEFEFFFEFEFEFFFEFA
      F6FFFEF7F0FFE3AE8BFFC68960FF00000000C9865BFFFDFBF9FFFDE8D7FFFDE6
      D4FFEDC6ABFFDCAA89FFF9ECE3FFFFFBF9FFFFFCFAFFF9EEE6FFDCA887FFEDBF
      9CFFFCDBC0FFFCDBC0FFF8F3EDFFC88C50FF000000007C7EE200A4AEF4009CAA
      F900768BEF00535EEB00535EEB00535EEB00535EEB00535EEB00535EEB006276
      F100808DF300777EE800556AC80000000000BB6B36FFF4D9C7FFE6A67DFFC88C
      64FFC98D65FFC98E67FFCB926CFFCB926DFFCA9069FFC88C65FFC88C64FFC88C
      64FFC88C64FFDA9C74FFE1BA9FFFB36634FF00000000C78A5FC9E4B490C9C989
      5FF8ECBB9DF8CB8C64FFF2CCAFFFFEFEFEFFE2C6B2FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFE9BEA0FFC8885FFF00000000CC8E66FFFDFBF9FFFDE5D3FFF1CC
      B2FFE3B596FFF9EAE0FFFFF9F5FFFEF3EAFFFEF4EDFFFFFBF9FFF9EDE5FFE3B0
      8DFFF0C19EFFFCD7B7FFF8F3EDFFC88C50FF00000000B5B4EF007C82E900CCD3
      FB008A9CF9007D92F6007489ED006B83F5006B83F5006B83F5006B83F5006278
      F200A3AEF7003D4ECF009FAAE00000000000BB6B36FEF4DCC9FFE7A77DFFF9EC
      E1FFF9ECE1FFF9EDE3FFFCF4EEFFFDFAF7FFFDF7F3FFFAEDE5FFF7E7DBFFF7E5
      D9FFF6E5D8FFDEA077FFE4BEA4FFB46734FF00000000C88B64C9E8B698C9C787
      5DF8EBBC9AF8D3966DFFD39D7AFFCF9770FFD5A381FFCC8D67FFCC8F68FFCF99
      74FFD09872FFC78A61FFAD58203600000000D09670FFFDFBF9FFF1CDB1FFE3B5
      96FFF9E9DEFFFEF7F1FFFDEDE1FFFEEFE4FFFEF1E7FFFEF3EAFFFFFAF7FFF9EC
      E3FFE2AE8AFFF0BC95FFF8F4ECFFC88C50FF00000000EBEBFB007877E200A2A6
      F200D3DAFC008699F9007E90EF00798DF0007E93F7007D91F800758BF700A7B5
      F700626DE2005767CC00E6E8F70000000000BC6B36FAF5DDCCFFE7A87EFFFAF0
      E8FFFAF0E8FFC98D66FFFAF0E9FFFDF8F3FFFEFAF8FFFCF4EFFFF9E9DFFFF7E7
      DBFFF7E5D9FFE0A278FFE7C2A9FFB66835FF00000000C7865BC9EDBEA0C9CF98
      74F8F2D0B7F8FDFDFDF8E5CBBAF8FDFDFCF8FDFDFDF8F9F4F0F8F6EFEBF8E9BD
      9FDEC8875FDE000000000000000000000000D39D7BFEFBF6F2FFE3B496FFF9E8
      DCFFFEF5EEFFFDE9DAFFFDEADCFFFDECDEFFFDEDE1FFFEEFE4FFFEF1E7FFFFFA
      F6FFF9EAE0FFE2AA85FFF1E4D9FFC88C50FE0000000000000000CFCFF6006F6F
      E000A9ACF100D7DBFC00ADB9F90090A2F9008A9CF9009BA8FA00B9C6FB006F7A
      E8005361CD00C3C8ED000000000000000000BC6B36F0F6DFD0FFE8A87EFFFCF6
      F1FFFCF6F1FFC88C64FFFAF1E9FFFBF4EEFFFDFAF7FFFDF9F6FFFAF0E8FFF8E8
      DDFFF7E6DBFFE1A37AFFEFD5C3FFB76935FE00000000C6855AC9EDBE9DC9D7A1
      7CF8D19C79F8D3A27EF8D8AC8DF8D09976F8D09A76F8D09B76F8CE9670F8C689
      60DEAC5B1F2F000000000000000000000000D7AB91DCFDFAF8FEFCF5F1FFFFFC
      F9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCFAFFFFFCFAFFFFFCFAFFFFFCFBFFFFFD
      FBFFFFFDFCFFFBF6F3FFF8EFEAFDAB7743DB000000000000000000000000CFCF
      F6007878E1008D92EC00BDC2F700CBD2F800C3CAF800A9B3F300656FE100636D
      D500C6CAEF00000000000000000000000000BC6B36D8F6DFD1FFE9AA80FFFEFA
      F6FFFDFAF6FFC88C64FFFBF3EEFFFBF1EAFFFCF6F2FFFEFBF8FFFCF6F1FFF9EC
      E2FFF8E7DBFFEED0BAFFECD0BDFFBB703EF800000000CB8B64C9F2CCAFC9FDFD
      FDC9E2C6B1C9FDFDFDC9FDFDFDC9FDFDFDC9FDFDFDC9E8BEA0C9C7885FC90000
      000000000000000000000000000000000000C89A7CBFD5A484F0D09770FBCC8F
      64FDCC8E62FDCB8E60FDCA8C5DFDC98B5BFDC88A58FDC78856FDC68653FDC584
      50FDC4824DFCC1834DF7B27948E38E512BBF0000000000000000000000000000
      0000EBEBFB00B6B5F0007C7EE100696ADD00676ADB007378DE00AEB2EA00E8E9
      F90000000000000000000000000000000000BC6B369BF6E0D1FFF7E0D1FFFEFB
      F8FFFEFBF7FFFDF9F6FFFCF5F0FFFAF0EAFFFBF2EDFFFDF9F6FFFDFAF7FFFBF1
      EBFFF8E9DFFEECD0BDFBC9895EECB569356300000000D2956DC9D29D7AC9CF97
      6FC9D5A280C9CC8D67C9CC8F68C9CF9873C9D09872C9C78A60C9AA571C2B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BC6B3671BC6B3690BC6B36CCBC6B
      36EEBC6B36FABB6B36FEBB6B36FFBB6A36FFBB6A36FFBC6C39FFBD6E3BFFBB6D
      3AFFBB6B38EFBB703ECBB6693554FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000174259002A6188004B89BD006FA8CC00E3EDF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C98A6100C2835700D28A6700E08E6F00DB8C6B00D98A
      6C00D6896D00CC8A6B00AA6C4300A55E2D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002D66840093C6F80090C8F8004084C800266AAD00D8E6F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFA00EAEAEA00C5825400EECDB900DCFEFE0086EDC600A1F3D600A1F5
      D6008BEDC600DFFEFE00DCA18400AA693D00000000001838B2001838B2001838
      B2001838B2001838B2001838B2001838B2001838B2001838B2001838B2001838
      B2001838B2001838B2001838B2000000000000000000000000004CA2E900459D
      E7003D99E6003494E5001D8BE1001F8BE100208CE3001888E2001182E2000980
      E000027CDF000078DE0000000000000000000000000000000000F3F3F300C5C5
      C5004288A900DFF1FE005399D7001979BD004897C4003D83BC00A7B5C200F4F4
      F4000000000000000000000000000000000000000000F3F3F300C5C5C500A4A4
      A400A0A0A000AAAAAA00C27E5000EEB59900E9F2E70050BE83006EC8970070C8
      980053BE8300E3F3E800DC9B7A00A968390000000000F1F1F900EFF0F800EFF0
      F800EFF0F800F1F1F900EEEFF800EFF0F800F1F1F900EFF0F800EEEFF800EFF0
      F800EFF0F800EFF0F800EFF0F80000000000000000000000000054A6EA00B5E5
      F80094D0F0004AA6E70059AEEA007CC1ED00BAEDFA00B9EDF800B6ECF800B2EC
      F800B1ECF800007CE100000000000000000000000000E5E5E500A8A8A800CDCD
      CD009BB9CD0079B5D4008FB6D00054C8E3005ADEF40077CFEC004A96D6008893
      9D00E6E6E600000000000000000000000000E5E5E500A8A8A800CDCDCD00ECEC
      EC00F3F3F300F4F4F400C3805300E9B59600F2F2E900ECF0E500EEF0E500EEEF
      E500ECF0E400F2F4EC00D49B7800AF6F430000000000EFF0F8005568ED005062
      E1004858C9004452BC003E4AA5003C469800363F8600343B7D0032376E003136
      6A002F33640031366A00EEEFF8000000000000000000000000005CAAEA00B3E2
      F700319EE5003AAAE800A7E8F7004DB9EA0059D5F2004FD3F20047D1F10041D0
      F100B3ECF8000780E200000000000000000000000000AFAFAF00DDDDDD00F2F2
      F200DADADA0095B7C80074B8D500C1F5FC0062DEF6005CE1F70078D2EF004796
      D90088929C00000000000000000000000000AFAFAF00DDDDDD00F2F2F200DADA
      DA00D1D1D100DADADA00C88A6000E5B49100E1A68000E0A68000DDA27C00DBA0
      7A00DA9E7800D89D7600D3997200BA7D560000000000EFF0F8005B6EF1005668
      EA004E5FDA004A5ACE004350B5003F4CA9003942910037408700333A76003136
      6D002F34660030356800EDEEF7000000000000000000000000005CABEB0054AC
      EA0046AEEA00ABE8F800ACE9F90055BAEA0061D8F30059D5F2004FD3F20048D1
      F200B6ECF8001084E300000000000000000000000000B2B2B200EFEFEF00DDDD
      DD00D3D3D300D1D1D10098BDCE0076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004694D700D6E7F7000000000000000000B2B2B200EFEFEF00DDDDDD00D3D3
      D300D1D1D100DADADA00C98C6400E9B79800DCA47D00DCA57F00DAA27B00D89F
      7900D89F7800D79E7700D79D7700BE835C0000000000F1F1F9006173F3000000
      0000F4F5FA00BBBFF100848CDC00000000000000000000000000B9B9D1000000
      00000000000031366A00EEEFF8000000000000000000000000005DACEA0082C2
      EF00D2F2FB00D0F2FB00B1ECF9005ABBEC006BD9F30061D8F30059D5F20050D3
      F200B9EDFA001989E400000000000000000000000000B4B4B400F1F1F100E1E1
      E100D7D7D700D4D4D400DBDBDB00A3CBD80078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F10050A1E100DCE9F50000000000B4B4B400F1F1F100E1E1E100D7D7
      D700D4D4D400DBDBDB00C7875C00EEBEA000FCFBF900FDFBFA00FDFCFC00FDFC
      FB00FCFAF900FCFBFA00DCA78400C07E520000000000EFF0F8006477F4000000
      0000D2D4F800000000008A94EC0000000000A2A7DE009FA2D500BABCD7000000
      0000AFAFC60031366E00EEEFF80000000000000000000000000070B5ED009DD0
      F30077C9EF0071C6EF006DC5EF005FBDEC0075DCF4006BDAF30063D8F3005AD5
      F200BDEEFA00228EE700000000000000000000000000B6B6B600F2F2F200E6E6
      E600DCDCDC00D8D8D800DFDFDF00DADADA0096BFCC007BD3ED00C3F5FC006BDC
      F5006CC9EC0062A2D60068A2D400E5EFF700B6B6B600F2F2F200E6E6E600DCDC
      DC00D8D8D800DFDFDF00C6855A00EEBF9D00FEFEFE00CB926D00FEFEFE00FEFE
      FE00FEFAF600FEF7F000E3AE8B00C689600000000000F1F1F9006B7CF5000000
      00007383F60000000000929CF70000000000727DE2006C76D400BDBFDF000000
      0000353C7E0032397700EDEEF70000000000000000000000000078B8EF00DAF5
      FB009BE6F70094E4F7008EE2F60085E0F6007DDEF40075DCF4006CDAF30063D8
      F300BFEFFA002B93E800000000000000000000000000B7B7B700F3F3F300E9E9
      E900E0E0E000DCDCDC00E2E2E200DDDDDD00C8C8C80088B9C8007FD3EC00B1E2
      F8008ABFE600ADD2F500C3DFFB006AA1D300B7B7B700F3F3F300E9E9E900E0E0
      E000DCDCDC00E2E2E200CB8C6400F2CCAF00FEFEFE00E2C6B200FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00E9BEA000C8885F0000000000F1F1F9007484F6000000
      000099A3F900000000009DA6F800000000007584F6006F7EF100C1C4ED000000
      00003D479B0038418D00EFF0F8000000000000000000000000008BC4F300DCF6
      FC00A1E7F7009CE6F70094E4F7008EE2F60086E0F6007EDEF50076DCF4006CDA
      F300C3EFFA003697E900000000000000000000000000B9B9B900F4F4F400EDED
      ED00E5E5E500E1E1E100E5E5E500E0E0E000CCCCCC00C1C1C10088BDCD0076BD
      E600B3D1EF00E4F2FE00ABD1EE005895CB00B9B9B900F4F4F400EDEDED00E5E5
      E500E1E1E100E5E5E500D3966D00D39D7A00CF977000D5A38100CC8D6700CC8F
      6800CF997400D0987200C78A6100EDDCD00000000000F1F1F9007988F6000000
      0000FEFEFE00FEFEFE00A1A9F80000000000E0E2F700DFE1F600C3C6F1000000
      00003F4CAB003B469A00EFF0F80000000000000000000000000092C7F400E0F6
      FC00A9E9F800A2E7F8009CE6F70095E4F7008FE2F60087E0F6007FDEF50076DC
      F400C7F0FA003F9DEA00000000000000000000000000BABABA00F5F5F500EAEA
      EA00DDDDDD00D5D5D500D4D4D400D0D0D000C2C2C200BBBBBB00BFBFBF00AAD3
      E20057A4D70084B0DA00459CCF00B0D8EE00BABABA00F5F5F500EAEAEA00DDDD
      DD00D5D5D500D4D4D400D0D0D000C2C2C200BBBBBB00BFBFBF00E4E4E400AAAA
      AA000000000000000000000000000000000000000000EFF0F8007A89F600C7CB
      FA00BFC3FB0097A1F800909BF700C2C6FA00BEC2FA00BAC0FA00969FEE00B6BA
      ED004351BB003E4BA800EEEFF80000000000000000000000000096CBF500F8FC
      FE00EFFAFD00EFFAFD00EFFBFD00EDFAFC00EEFAFC00EEFAFC00EFFAFC00EFFA
      FC00F6FCFD0049A2EC00000000000000000000000000BCBCBC00F6F6F600E6E6
      E600EEEEEE00F5F5F500FAFAFA00F9F9F900EFEFEF00DDDDDD00C2C2C200E5E5
      E500ABABAB00000000000000000000000000BCBCBC00F6F6F600E6E6E600EEEE
      EE00F5F5F500FAFAFA00F9F9F900EFEFEF00DDDDDD00C2C2C200E5E5E500ABAB
      AB000000000000000000000000000000000000000000F1F1F9007B8AF6007E8C
      F6007B8AF6007988F6007484F6007080F5006477F4006173F3005668EA005062
      E1004857C7004350B600EEEFF800000000000000000000000000B1DBFC00F9FD
      FE00F9FDFE00F9FDFE00F9FDFE00F9FDFE00F9FCFD00F9FCFE00F9FDFE00F9FD
      FE00F9FCFE0052A7ED00000000000000000000000000BEBEBE00F7F7F700FDFD
      FD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00E9E9
      E900ADADAD00000000000000000000000000BEBEBE00F7F7F700FDFDFD00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00E9E9E900ADAD
      AD000000000000000000000000000000000000000000EFF0F8007D8BF6007D8B
      F6007988F6007786F6007181F6006F80F5006477F4006274F300576AEE005366
      E8004B5CD4004756C400EFF0F800000000000000000000000000B5DEFD00A1D1
      F9009BD0F80096CCF70091C9F6008BC5F50084C1F4007DBEF30075B9F3006DB5
      F00064B1EF005CACEF00000000000000000000000000CBCBCB00E0E0E000FDFD
      FD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00CECE
      CE00C8C8C800000000000000000000000000CBCBCB00E0E0E000FDFDFD00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAFAFA00CECECE00C8C8
      C8000000000000000000000000000000000000000000EEEFF800EEEFF800EEEF
      F800EEEFF800EEEFF800EDEEF700EEEFF800EEEFF800EEEFF800EDEEF700EEEF
      F800EDEEF700EDEEF700EDEEF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400C6C6C600CFCF
      CF00E7E7E700F2F2F200FCFCFC00FBFBFB00ECECEC00DFDFDF00C1C1C100C0C0
      C000F6F6F600000000000000000000000000F4F4F400C6C6C600CFCFCF00E7E7
      E700F2F2F200FCFCFC00FBFBFB00ECECEC00DFDFDF00C1C1C100C0C0C000F6F6
      F60000000000000000000000000000000000000000001838B2001838B2001838
      B2001838B2001838B2001838B2001838B2001838B2001838B2001838B2001838
      B2001838B2001838B2001838B200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00E8E8
      E800CFCFCF00C3C3C300B7B7B700B7B7B700C2C2C200CCCCCC00E9E9E900FEFE
      FE000000000000000000000000000000000000000000FDFDFD00E8E8E800CFCF
      CF00C3C3C300B7B7B700B7B7B700C2C2C200CCCCCC00E9E9E900FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082CEEC0040B3E100169F
      D70040ADDD0080C7E700E0F1F900FFFFFF00FFFFFF00E0F2FB007FC8EB003DA8
      DE001391D4003DA1D9007EC0E500E0EFF8000000000082CEEC0040B3E100169F
      D70040ADDD0080C7E700E0F1F900FFFFFF00FFFFFF00E0F2FB0048968B001B6E
      3E00186A36001B6D3E0048938800E0EFF8000000000082CEEC0040B3E100169F
      D70040ADDD0080C7E700E0F1F900FFFFFF00FFFFFF00E0F2FB005192D8000950
      BD000341BB00094EBC004485CF00E0EFF8000000000000000000898989038383
      83CC7E7E7EFF797979FF747474FF707070FF6B6B6BCA00000000000000000000
      00000000000000000000000000000000000097DBF2005ECAEC0089DFF50087E2
      F8006ED9F30046C0E5004EB3DF003FABDC001495D3002AA4DC0049C2EB0071D9
      F40070DDF60056D2F20038B7E40094CBEA0097DBF2005ECAEC0089DFF50087E2
      F8006ED9F30046C0E5004EB3DF003FABDC001495D30021868600278B520063B9
      8C0094D1B10063B98C00278B52005095870097DBF2005ECAEC0089DFF50087E2
      F8006ED9F30046C0E5004EB3DF003FABDC001495D300217DCF002564C9002076
      E5000478E9000063DC00044DBC004F8BD20000000000000000008F8F8F159292
      92FFD5D3D3FFE2E0DFFFDFDCDBFFE1DFDFFF707070F400000000000000000000
      00000000000000000000000000000000000064CBEE008DDCF3009DE5FB0084DD
      F9007ADCF9006BD2F10023A8DE0060D0F00071DDF8002BB5EB007DD9F400B4ED
      FD00A6EAFD008EE2FA0057CEF0005FB5E30064CBEE008DDCF3009DE5FB0084DD
      F9007ADCF9006BD2F10023A8DE0060D0F00071DDF8001B6D3E0061B98A005FB9
      8600FEFEFE005FB8860066BB8E001B6D3B0064CBEE008DDCF3009DE5FB0084DD
      F9007ADCF9006BD2F10023A8DE0060D0F00071DDF8000750BE00629CF300177E
      FE000075F7000075ED000267E0000C50BC000000000000000000000000009090
      906F8B8B8BBDC4C2C1FFD4CFCEFF7B7B7BF67878789C797979D2747474FF7070
      70FF6B6B6BFF676767FF636363FF606060D715B6E800BEF0FC0073D8F6005AD0
      F50043CAF4008DE5FB0011A1DB0046C6F3002DB5F00012AEED00D5F6FE00BCEE
      FE00AAEAFE009EE6FE00ADEFFD000E97DB0015B6E800BEF0FC0073D8F6005AD0
      F50043CAF4008DE5FB0011A1DB0046C6F3002DB5F000307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A360015B6E800BEF0FC0073D8F6005AD0
      F50043CAF40062D9F70011A1DB0046C6F3002DB5F0000341BB00ADCCFD00FEFE
      FE00FEFEFE00FEFEFE00177EEE000341BB00A7A7A78DA2A2A2CC9C9C9CCC9797
      97CC919191DE9E9E9EFF9A9A9AFF828282F8848484FF878786FF878685FFA2A0
      9FFFD3CECDFFD3CECDFFE8E5E5FF646464FF17BAEB00BCEEFB0098E2FA0088DE
      F90073D8F80062D9F70012A7DF005AD1F80043C8F60015B4F000C1EFFC00CDF3
      FE00C5F3FE00B7EEFD0088DFF50030AAE50017BAEB00BCEEFB0098E2FA0088DE
      F90073D8F80062D9F70012A7DF005AD1F80043C8F600428761008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E00196C3C0017BAEB00A9E9FA0098E2FA0088DE
      F90073D8F80062D9F70012A7DF005AD1F80043C8F6000552BF008CB4F5004C91
      FE001076FE002085FE003F89EA000850BE00AEAEAEFFE0DDDDFFD7D5D5FFD5D3
      D2FFD1CECDFFCAC4C3FFC8C3C2FFCDC9C8FFCCCACAFFCCCAC9FFD8D6D6FF7473
      73FFB9B1AEFFB7AFAEFFD3CECDFF686868FF18BFEE00A9E9FA0077D9F70060D3
      F50043CCF40065DAF70013ACE30035C0F1002AB6F00019B0F1001AB6F30013B2
      F00012AEEF0019ADED003EB8ED00B5E3F80018BFEE00A9E9FA0077D9F70060D3
      F50043CCF40065DAF70013ACE30035C0F1002AB6F000359FAC0060AA800094D3
      B300B9E5CF0069BA8E002C8E56005EA08D0018BFEE00A9E9FA0077D9F70060D3
      F50043CCF40065DAF70013ACE30035C0F1002AB6F0001B86DC003674D1008CB4
      F600B7D5FD0071A7F4002D6BCA00699EDD00B4B4B4FFE0DDDDFFA7724DFFA772
      4DFFA7724DFFA7724DFFA7724DFFA7724DFFA7724DFFA7724DFFDAD5D4FF7878
      78FFBAB2B1FFB9B1AFFFD4CFCEFF6D6D6DFF1AC3F000CEF4FD00C2EFFD00BCEE
      FD00A1E6FB0098E7FB0014B2E6005DD2F80047CBF70035C1F40060D2F70011A0
      DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF001AC3F000CEF4FD00C2EFFD00BCEE
      FD00A1E6FB0098E7FB0014B2E6005DD2F80047CBF70035C1F4005CB3B4005394
      73004E8D65004989610099BDA600FFFFFF001AC3F000CEF4FD00C2EFFD00BCEE
      FD00A1E6FB0098E7FB0014B2E6005DD2F80047CBF70035C1F4004098DF000D56
      C2000442BB001F59C00088A7DE00FFFFFF00BABABAFFDEDBDBFFB5805AFFCE98
      70FFD8AE91FFCF9971FFD9AF91FFDAAF91FFD6A077FFA7724DFFD7D3D1FF7E7E
      7EFFBBB4B3FFBBB3B1FFD4D0CFFF737373FF1AC7F300D9F6FD00D0F3FE00C2F0
      FE00B6EDFE00BEF1FD0016B6EA0039C3F2002CBAF1001FAFEE0050C6F30011A4
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF001AC7F300D9F6FD00D0F3FE00C2F0
      FE00B6EDFE00BEF1FD0016B6EA0039C3F2002CBAF1001FAFEE0050C6F30011A4
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF001AC7F300D9F6FD00D0F3FE00C2F0
      FE00B6EDFE00BEF1FD0016B6EA0039C3F2002CBAF1001FAFEE0050C6F30011A4
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0FFDFDCDCFFB47F59FFCB95
      6EFFCD976FFFCF9971FFD19B72FFD29C74FFD49E75FFA7724DFFD7D4D3FF8484
      84FF3BA142FF379437FFD6D1D0FF787878FF85E3FA0090E0F900DEF7FE00D6F6
      FE00CBF3FE00A8E8F90029C1EF0063D5F8004BCEF7003AC5F50067D5F80013A9
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF0085E3FA0090E0F900DEF7FE00D6F6
      FE00CBF3FE00A8E8F90029C1EF0063D5F8004BCEF7003AC5F50067D5F80013A9
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF0085E3FA0090E0F900DEF7FE001AC7
      F400CBF3FE00A8E8F90029C1EF0063D5F8004BCEF7003AC5F50067D5F80013A9
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C5C5FFE1DEDCFFB37D58FFC791
      6BFFC9936DFFCB956EFFCD9770FFCF9971FFD19B73FFA7724DFFD9D5D4FF8B8B
      8BFFA0C8A4FF50A956FFD7D3D1FF7E7E7EFFF3FCFF0034D1F7001DCAF5001AC7
      F4001FC6F30019C1F10078DBF7003BC6F3002FBEF20022B4EF006BD6F80013AE
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FCFF0034D1F7001DCAF5001AC7
      F4001FC6F30019C1F10078DBF7003BC6F3002FBEF20022B4EF006BD6F80013AE
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FCFF0034D1F7001DCAF5001AC7
      F4001FC6F30019C1F10078DBF7003BC6F3002FBEF20022B4EF006BD6F80013AE
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00CACACAFFE1DFDEFFB17C57FFC48E
      68FFC6906AFFC8926BFFCA946DFFCC966FFFCE9870FFA7724DFFDBD6D6FF9191
      91FFC1BBB9FFC0B9B8FFD7D3D3FF848484FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018C2F000A1E8FB0068D8F90050D1F8003DC8F60059CBF40014B2
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018C2F000A1E8FB0068D8F90050D1F8003DC8F60059CBF40014B2
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018C2F000A1E8FB0068D8F90050D1F8003DC8F60059CBF40014B2
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECEFFE2DFDFFFB07B56FFB17B
      56FFB17C57FFB27D58FFB37E58FFB47F59FFB5805AFFA7724DFFDCD8D7FF9898
      98FF8D8D8DFF8A8A8AFFD9D5D4FF8B8B8BFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001AC5F20086E1F9003FCAF40033C3F20024B9F0005BCCF50016B6
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001AC5F20086E1F9003FCAF40033C3F20024B9F0005BCCF50016B6
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001AC5F20086E1F9003FCAF40033C3F20024B9F0005BCCF50016B6
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFF1EFEFFFE2DFDFFFE2DF
      DFFFE1DFDEFFE1DEDDFFE0DDDCFFDFDCDBFFDEDBDBFFDEDBD9FFEDECEBFF9E9E
      9EFFC5BFBEFFC3BDBBFFDAD6D5FF919191FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC8F300B9EFFC00A9E9FD00A1E8FD0078DCFA007ADEFA0016BA
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC8F300B9EFFC00A9E9FD00A1E8FD0078DCFA007ADEFA0016BA
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC8F300B9EFFC00A9E9FD00A1E8FD0078DCFA007ADEFA0016BA
      EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D6F9D3D3D3FFD0D0D0FFCCCC
      CCFFC8C8C8FFC3C3C3FFBFBFBFFFBABABAFFB5B5B5FFB0B0B0FFAAAAAAFFA5A5
      A5FF949393FF929191FFDBD7D6FF989898FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BCBF500D5F6FE00BBEEFE00AAEAFE0099E5FE00A6ECFC0017BE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BCBF500D5F6FE00BBEEFE00AAEAFE0099E5FE00A6ECFC0017BE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BCBF500D5F6FE00BBEEFE00AAEAFE0099E5FE00A6ECFC0017BE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000CFCFCF48CBCBCBE4DFDFDFFFEAEAEAFFCFCAC9FFCBC6C5FFCAC4
      C3FFC8C3C1FFC7C1C1FFDCD9D8FF9E9E9EFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028D0F600A1E6FA00D2F5FE00C6F3FE00BAF0FE00A1E8FA0039CA
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028D0F600A1E6FA00D2F5FE00C6F3FE00BAF0FE00A1E8FA0039CA
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0028D0F600A1E6FA00D2F5FE00C6F3FE00BAF0FE00A1E8FA0039CA
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000D0D0D00FCCCCCCABDCDCDCFFE6E3E3FFE1DEDCFFDFDC
      DCFFDFDCDBFFDEDBDBFFEEECECFFA5A5A5FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFF8FE0035D3F80020CEF6001BCBF50021CAF40046D2F500B8ED
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFF8FE0035D3F80020CEF6001BCBF50021CAF40046D2F500B8ED
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFF8FE0035D3F80020CEF6001BCBF50021CAF40046D2F500B8ED
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000CDCDCD9FC9C9C9FBC4C4C4FFC0C0
      C0FFBBBBBBFFB6B6B6FFB0B0B0FFABABABA70000000000000000000000000000
      000000000000000000006D6D6D63585858BF515151BF52525263000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600818181007C7C7C00BBBBBB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600818181007C7C7C00BBBBBB0014863100027A
      1D00FBFDFB0000000000000000000000000013A8DE2113A4DC8711A1DACC119E
      D7F9119AD5CC1097D3871094D121FFFFFF00FFFFFF00109CDE210F98DA870E93
      D7CC0E8FD4F90D8BD1CC0D89CE870D85CC210000000000000000000000006F6F
      6F296A6A6A0E7A7A7A02818181EABDBDBDFFB2B2B2FF5B5B5BEA5A5A5A025C5C
      5C0E4E4E4E29000000000000000000000000000000000000000000000000E8E8
      E800F7F7F700FEFEFE008A8A8A00BCBCBC00B1B1B10068686800FEFEFE00F6F6
      F600E2E2E200000000000000000000000000000000000000000000000000E8E8
      E800F7F7F700FEFEFE008A8A8A00BCBCBC00B1B1B10068686800148C3B0042A0
      5E002D8F4600F9FCFA00000000000000000014ADE2705FCBEDFF8AE0F6FF88E3
      F9FF6FDAF4FF47C1E6FF1099D5BC1097D4CC0F93D3F91099D9E24AC3ECFF72DA
      F5FF71DEF7FF57D3F3FF39B8E5FF0D8AD17000000000000000008181819B6F6F
      6FFD646464E776767619838383E7CBCBCBFFC7C7C7FF626262E75A5A5A195858
      58E74E4E4EFD4949499B00000000000000000000000000000000B2B2B2006F6F
      6F0072727200F1F1F1008E8E8E00CACACA00C6C6C60070707000EFEFEF006767
      67004E4E4E009090900000000000000000000000000000000000B2B2B2006F6F
      6F0072727200F1F1F100219650001B904900158E43000F8A3A00399E5D007FC0
      950045A2610019803300F8FBF9000000000016B2E6A98EDDF4FF9EE6FCFF85DE
      FAFF7BDDFAFF6CD3F2FF24A9DFFF61D1F1FF72DEF9FF2CB6ECFF7EDAF5FFB5EE
      FEFFA7EBFEFF8FE3FBFF58CFF1FF0E91D6A900000000A4A4A47BBCBCBCFFDEDE
      DEFFA6A6A6FF838383F4858585FEC4C4C4FFC2C2C2FF6D6D6DFE6E6E6EF4A6A6
      A6FFD2D2D2FF808080FF5252527B0000000000000000D3D3D300BBBBBB00DDDD
      DD00A5A5A5008787870084848400C3C3C300C1C1C1006D6D6D0073737300A5A5
      A500D1D1D1007F7F7F00ABABAB000000000000000000D3D3D300BBBBBB00DDDD
      DD00A5A5A50087878700289A5A008FC9A8008CC7A40089C5A00087C49D0069B5
      840081C1960047A465001B833600F6FAF70016B7E9FFBFF1FDFF74D9F7FF5BD1
      F6FF44CBF5FF8EE6FCFF12A2DCFF47C7F4FF2EB6F1FF13AFEEFFD6F7FFFFBDEF
      FFFFABEBFFFF9FE7FFFFAEF0FEFF0F98DCFF00000000ABABAB7DA6A6A6FED5D5
      D5FFC5C5C5FFCBCBCBFFD1D1D1FFC9C9C9FFC7C7C7FFCCCCCCFFC5C5C5FFBDBD
      BDFFCBCBCBFF6E6E6EFE6767677D0000000000000000D5D5D500A5A5A500D4D4
      D400C4C4C400CACACA00D0D0D000C8C8C800C6C6C600CBCBCB00C4C4C400BCBC
      BC00CACACA006E6E6E00B4B4B4000000000000000000D5D5D500A5A5A500D4D4
      D400C4C4C400CACACA00309E620093CCAC006EB98D006AB7880065B5840060B2
      7F0066B4810082C197003B9F5B000681290018BBECFFBDEFFCFF99E3FBFF89DF
      FAFF74D9F9FF63DAF8FF13A8E0FF5BD2F9FF44C9F7FF16B5F1FFC2F0FDFFCEF4
      FFFFC6F4FFFFB8EFFEFF89E0F6FF109EE2DC0000000000000000ACACAC85C5C5
      C5FFC1C1C1FFC5C5C5FFC7C7C7FFAAAAAAFFA7A7A7FFC1C1C1FFBEBEBEFFB5B5
      B5FFAAAAAAFF6969698500000000000000000000000000000000D3D3D300C4C4
      C400C0C0C000C4C4C400C6C6C600A9A9A900A6A6A600C0C0C000BDBDBD00B4B4
      B400A9A9A900B0B0B00000000000000000000000000000000000D3D3D300C4C4
      C400C0C0C000C4C4C40036A26A0095CDAF0093CCAC0090CAA9008FCAA70073BB
      8F0089C6A00045A467000A883700FEFFFE0019C0EFFFAAEAFBFF78DAF8FF61D4
      F6FF44CDF5FF66DBF8FF14ADE4FF36C1F2FF2BB7F1FF1AB1F2FF1BB7F4FF14B3
      F1FF13AFF0FF13ACEDF811A8EACE11A5E84FA3A3A3CD8F8F8FE3A0A0A0EECFCF
      CFFFC6C6C6FFCCCCCCFF9E9E9EC699999944949494448F8F8FC6C1C1C1FFBCBC
      BCFFB9B9B9FF646464EE585858E3535353CDB4B4B4009A9A9A00A5A5A500CECE
      CE00C5C5C500CBCBCB00B3B3B300E4E4E400E2E2E200A7A7A700C0C0C000BBBB
      BB00B8B8B8006D6D6D006969690074747400B4B4B4009A9A9A00A5A5A500CECE
      CE00C5C5C500CBCBCB003CA46E0038A36E0034A16800309C620054AE7B0090CA
      A9004EAA7300178D440069696900747474001BC4F1FFCFF5FEFFC3F0FEFFBDEF
      FEFFA2E7FCFFBFF2FEFF15B3E7FF5ED3F9FF48CCF8FF36C2F5FF61D3F8FF12A1
      DCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00BFBFBFFDE2E2E2FFD2D2D2FFC6C6
      C6FFCDCDCDFFB1B1B1FF93939344000000000000000095959544A8A8A8FFC2C2
      C2FFB7B7B7FFC0C0C0FFD2D2D2FF616161FDBFBFBF00E1E1E100D1D1D100C5C5
      C500CCCCCC00B0B0B000E2E2E2000000000000000000E2E2E200A7A7A700C1C1
      C100B6B6B600BFBFBF00D1D1D10061616100BFBFBF00E1E1E100D1D1D100C5C5
      C500CCCCCC00B0B0B000E2E2E2000000000000000000E2E2E200399F670059B2
      800027975600BFBFBF00D1D1D100616161001BC8F4FFDAF7FEFFD1F4FFFFC3F1
      FFFFB7EEFFFFBFF2FEFF17B7EBFF3AC4F3FF2DBBF2FF20B0EFFF51C7F4FF12A5
      DFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C4C4FDE9E9E9FFD6D6D6FFC9C9
      C9FFCECECEFFA5A5A5FF8484844400000000000000009A9A9A44ACACACFFC4C4
      C4FFBABABAFFC6C6C6FFDDDDDDFF6B6B6BFDC3C3C300E8E8E800D5D5D500C8C8
      C800CDCDCD00A4A4A400DEDEDE000000000000000000E4E4E400ABABAB00C3C3
      C300B9B9B900C5C5C500DCDCDC006B6B6B00C3C3C300E8E8E800D5D5D500C8C8
      C800CDCDCD00A4A4A400DEDEDE000000000000000000E4E4E4003FA36F00309E
      6400B9B9B900C5C5C500DCDCDC006B6B6B001CCBF68891E1FAFFDFF8FFFFD7F7
      FFFFCCF4FFFFA9E9FAFF2AC2F0FF64D6F9FF4CCFF8FF3BC6F6FF68D6F9FF14AA
      E2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00C8C8C8CDC4C4C4E3C0C0C0EED8D8
      D8FFCDCDCDFFBCBCBCFF828282C6777777447E7E7E448F8F8FC6C3C3C3FFC2C2
      C2FFCDCDCDFF8C8C8CEE878787E3838383CDD2D2D200CACACA00C3C3C300D7D7
      D700CCCCCC00BBBBBB009D9D9D00DADADA00DCDCDC00A7A7A700C2C2C200C1C1
      C100CCCCCC0093939300939393009B9B9B00D2D2D200CACACA00C3C3C300D7D7
      D700CCCCCC00BBBBBB009D9D9D00DADADA00DCDCDC00A7A7A700C2C2C200C1C1
      C100CCCCCC0093939300939393009B9B9B001ECEF80E1DCCF7E41BCAF6FC1BC8
      F5FF1AC5F4F81AC2F2FF79DCF8FF3CC7F4FF30BFF3FF23B5F0FF6CD7F9FF14AF
      E5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000C5C5C585D4D4
      D4FFCCCCCCFFC9C9C9FFBABABAFF9C9C9CFFA1A1A1FFC2C2C2FFC6C6C6FFC1C1
      C1FFB7B7B7FF8989898500000000000000000000000000000000E0E0E000D3D3
      D300CBCBCB00C8C8C800B9B9B9009B9B9B00A0A0A000C1C1C100C5C5C500C0C0
      C000B6B6B600C1C1C10000000000000000000000000000000000E0E0E000D3D3
      D300CBCBCB00C8C8C800B9B9B9009B9B9B00A0A0A000C1C1C100C5C5C500C0C0
      C000B6B6B600C1C1C1000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0019C3F1FFA2E9FCFF69D9FAFF51D2F9FF3EC9F7FF5ACCF5FF15B3
      E8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CACACA7DC4C4C4FEDCDC
      DCFFD4D4D4FFD9D9D9FFDBDBDBFFD6D6D6FFD4D4D4FFD9D9D9FFD2D2D2FFCBCB
      CBFFC8C8C8FF797979FE7171717D0000000000000000E5E5E500C3C3C300DBDB
      DB00D3D3D300D8D8D800DADADA00D5D5D500D3D3D300D8D8D800D1D1D100CACA
      CA00C7C7C70079797900B9B9B9000000000000000000E5E5E500C3C3C300DBDB
      DB00D3D3D300D8D8D800DADADA00D5D5D500D3D3D300D8D8D800D1D1D100CACA
      CA00C7C7C70079797900B9B9B90000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC6F3FF87E2FAFF40CBF5FF34C4F3FF25BAF1FF5CCDF6FF17B7
      EBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000D0D0D07BDCDCDCFFEDED
      EDFFDBDBDBFFC2C2C2F4BEBEBEFED6D6D6FFD4D4D4FFB0B0B0FEACACACF4CBCB
      CBFFE7E7E7FFB7B7B7FF8B8B8B7B0000000000000000E8E8E800DBDBDB00ECEC
      EC00DADADA00C4C4C400BDBDBD00D5D5D500D3D3D300AFAFAF00AFAFAF00CACA
      CA00E6E6E600B6B6B600C7C7C7000000000000000000E8E8E800DBDBDB00ECEC
      EC00DADADA00C4C4C400BDBDBD00D5D5D500D3D3D300AFAFAF00AFAFAF00CACA
      CA00E6E6E600B6B6B600C7C7C70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001CC9F4FFBAF0FDFFAAEAFEFFA2E9FEFF79DDFBFF7BDFFBFF17BB
      EDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000D1D1D19BCECE
      CEFDCACACAE7C6C6C619C2C2C2E7DEDEDEFFDDDDDDFFB2B2B2E7B1B1B119ACAC
      ACE7A7A7A7FDA3A3A39B00000000000000000000000000000000E2E2E200CDCD
      CD00CECECE00F9F9F900C7C7C700DDDDDD00DCDCDC00B8B8B800F7F7F700B3B3
      B300A7A7A700C6C6C60000000000000000000000000000000000E2E2E200CDCD
      CD00CECECE00F9F9F900C7C7C700DDDDDD00DCDCDC00B8B8B800F7F7F700B3B3
      B300A7A7A700C6C6C6000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001CCCF6FFD6F7FFFFBCEFFFFFABEBFFFF9AE6FFFFA7EDFDFF18BF
      F0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000D1D1
      D129CECECE0ECBCBCB02C7C7C7EAE5E5E5FFE4E4E4FFACACACEAB6B6B602B2B2
      B20EADADAD29000000000000000000000000000000000000000000000000F7F7
      F700FCFCFC0000000000CBCBCB00E4E4E400E3E3E300B2B2B200FEFEFE00FBFB
      FB00F2F2F200000000000000000000000000000000000000000000000000F7F7
      F700FCFCFC0000000000CBCBCB00E4E4E400E3E3E300B2B2B200FEFEFE00FBFB
      FB00F2F2F200000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001ECFF7F3A2E7FBFFD3F6FFFFC7F4FFFFBBF1FFFFA2E9FBFF1AC3
      F2DCFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000CBCBCB63C7C7C7BFC4C4C4BFBFBFBF63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EAEAEA00D4D4D400D2D2D200E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EAEAEA00D4D4D400D2D2D200E6E6E600000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001FD1F9241ECFF8E41ECEF7FC1CCCF6FF1CCAF5F81BC8F4CE1BC6
      F44FFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094AFE300225B
      C1000442BB001E59C00086A6DD00000000000000000000000000000000008585
      850080808000C5C5C50000000000000000000000000000000000BCBCBC006464
      6400616161000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008585
      850080808000C5C5C5000000000000000000000000008CAAE0002764C7002076
      E5000478E9000063DC00064EBD0086A6DD0000000000CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474007070700098989800C4C4
      C400949494007777770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F5
      FE00928EF400504AEE001C14E700D6D5FB000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474000E49B000629CF300177E
      FE000075F7000075ED000267E0001D58C00000000000CDCDCD0000000000CECE
      CE0099999900CACACA0000000000000000000000000000000000C0C0C0007E7E
      7E00BDBDBD006A6A6A00000000000000000057B7630054B5600052B35D004FB1
      5A0000000000000000003CA0440035993C002F923500298B2E00000000000000
      0000207E23001F7D23001F7C22001F7C22000000000000000000CBCAFB00514D
      F2005755EA006B6CE600322CE800D7D6FB00A96A4700A86C4C00C49E8A00F9F6
      F4000000000000000000000000000000000000000000CDCDCD0000000000CECE
      CE0099999900CACACA000000000000000000000000000442BB00ADCCFD00FEFE
      FE00FEFEFE00FEFEFE00177EEE000442BB0000000000F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E007A7A7A00757575007171
      7100000000006F6F6F0000000000000000005BBA6700A7D7AD00A4D6AB0053B4
      5E00000000000000000044A74D007EC5870071BF7B002F933500000000000000
      0000218125004FAC56004EAB54001F7C220000000000C6C6FC006161F2007C7E
      ED009398EA008C90E8003A36EB00D9D7FB00B16F4C00D58D6100B76542009B5A
      3700DDC8BD0000000000000000000000000000000000F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E00124AB0008CB4F5004C91
      FE001076FE002085FE003F89EA00235BC1000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00727272007979790000000000000000005EBD6B00ABD9B000A8D8AE0056B7
      620000000000000000004BAF56008DCB950082C78B00379B3E00000000000000
      00002586290052AE590050AD5700207E2300F3F3FF006666F7009498F100A4A9
      ED007A80E5009699EA00433FEE00DAD9FC00B7765100DA986F00E5A37E00CA7F
      5600A5543000D7BFB30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000096B0E3003C75D1008CB4
      F600B7D5FD0071A7F4002E6CCB0093AEE100000000000000000000000000A0A0
      A0009C9C9C0097979700929292008E8E8E008989890084848400808080007E7E
      7E00B0B0B00074747400000000000000000062C06F005FBE6C005DBC69005ABA
      6700000000000000000053B45E004CB0570046A94F003EA24700000000000000
      00002B8E2F00268729002282250021802500F6F6FF00A6A6FB006565F8008384
      F300A2A7EE009FA4EC004E4BF000DCDBFC00C07D5700DDA07800DD885A00E5A5
      7E00CF865B00944D2600F5EFEC0000000000000000000000000000000000A0A0
      A0009C9C9C0097979700929292008E8E8E008989890084848400516DA0001A52
      B7000441BB000F49B00088A7DE00000000000000000000000000D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB007878780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAD1AE00B1D3B400EEF0FA00A9AA
      FB006363F7007B7DF2005857F300DDDDFD00C5855D00E0A78000DF916300D878
      4B00E6A78300BD6F4900C69E8900000000000000000000000000D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB007878780000000000000000000000000000000000AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D0000000000000000000000000000000000B7B7B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C5C5C0000000000000000006EB575008FBE92004E9B5400A6CA
      A900EBEFF600B1B1FB006160F700E0DFFD00CD8D6400E3AF8A00E29B6C00DC84
      5300E1956600D9966C00AC6D4B00000000000000000000000000AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D00000000000000000000000000B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B900D9DAD9000786350037945000ABABAB00D3D3D300A3A3
      A300CFCFCF0088888800F9F9F900000000000000000000000000BDBDBD00BBBB
      BB00B8B8B800B3B3B300ABABAB00A1A1A100989898008D8D8D00818181007676
      76006C6C6C006363630000000000000000005FB36800C9E7C700AED8AA0091BE
      930047944D009AC19D00F5F4F900F6F2F500D3966A00E6B69200E6A57600DF8F
      5C00DD8D5B00E5AC8700A65A31000000000000000000B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B900DADADA00B2B2B200D6D6D600ABABAB00D3D3D300A3A3
      A300CFCFCF0088888800F9F9F9000000000000000000BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED00198F460045A4670047A46500439B5900ABABAB00E8E8
      E800A4A4A40099999900ECECEC00000000000000000000000000000000000000
      0000000000000000000000000000B5B5B500B0B0B00000000000000000000000
      00000000000000000000000000000000000063B96E00B5DFB0007ACB6E0091D1
      8800ACD8A80088B78A0082B38500F1DAC700D28C5900EEC7A800E5A57200E19A
      6600E1976500E6B28E00AF6539000000000000000000BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED00BABABA00ECECEC00B2B2B200EAEAEA00ABABAB00E8E8
      E800A4A4A40099999900ECECEC0000000000C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000279756004EAA730089C6A00081C1960045A2610056A06900ABAB
      AB00D3D3D300AAAAAA00E0E0E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084CC8E00B9DEB70079CB6C0065C5
      580071C76500A7D9A20067A76C00D0E2D100E0AB8200E5B48D00EFCBAB00E4A5
      7000E8B08300E2AE8700C1805A0000000000C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000C1C1C100DEDEDE00BABABA00DADADA00B3B3B300D7D7D700ABAB
      AB00D3D3D300AAAAAA00E0E0E00000000000C3C3C300FBFBFB00F8F8F800F8F8
      F800309E640059B2800090CAA90073BB8F0069B584007FC0950042A05E001680
      2D00F0F0F000D7D7D7009C9C9C00CECECE000000000000000000000000000000
      00000000000000000000E0A36C00D6985E00CC8B4F00C37D4100000000000000
      000000000000000000000000000000000000B6E2BC00B2D9B400A1D799006CC9
      5E0065C557007FCB7400A2CDA20062A76800F6EBE000D8935F00F1D0B100EAB8
      8C00EFC8A900D79B6F00DCB39A0000000000C3C3C300FBFBFB00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F2F2F200A6A6
      A600F0F0F000D7D7D7009C9C9C00CECECE00C4C4C400C4C4C400C2C2C200BFBF
      BF0041A470003BA0690054AE7B008FCAA70087C49D00399E5D000D8534000C7F
      2A00C4C4C400FAFAFA00E3E3E300A2A2A2000000000000000000000000000000
      00000000000000000000E8AF7C00ECCABF00E9C2B700CD8C5000000000000000
      000000000000000000000000000000000000F6FCF7007ACC8700BDE0BD0093D3
      88006DC961006DC85F009DD5960092C09500B0D3B300EBC4A400E6B38D00F2D2
      B400E8BA9700CC855300FBF5F20000000000C4C4C400C4C4C400C2C2C200BFBF
      BF00BCBCBC00B9B9B900B6B6B600B2B2B200AEAEAE00AAAAAA00A6A6A600A1A1
      A100C4C4C400FAFAFA00E3E3E300A2A2A2000000000000000000000000000000
      0000000000000000000032A0660093CCAC008CC7A400148E4200000000000000
      0000A2A2A2009D9D9D0099999900D8D8D8000000000000000000000000000000
      00000000000000000000EFB88A00EFD3C800EDCCC100D79B5F00000000000000
      00000000000000000000000000000000000000000000D5F0DA009FD4A700B9DF
      BA00A6D99F007CCD6F007ECC7200AFD8AC0056A75D00F1F1E800E0A47200EAC1
      9D00DCA17200F0D9C80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A2A2A2009D9D9D0099999900D8D8D8000000000000000000000000000000
      0000000000000000000039A36E0095CDAF008FC9A8001C914900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3BF9400EFB98A00E9B17E00E1A76F00000000000000
      0000000000000000000000000000000000000000000000000000DFF3E20089D2
      9400B3DBB600BBDFB900B8E0B400CDE9CA00A3CDA50095C89A00F3D9C300E2AB
      7C00F6E6D8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003CA46E0036A26A00289A5A0022975100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9FD
      FA00BCE6C30092D49B006BC2780064BC70007FC58800ABD6B000FEFEFD00FEFB
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084B094002472
      4000186A36002472400084B094000000000000000000D7A27900D2986D00D095
      6700CD916200CA8D5D00C8895A00C6865500C2835100C2835100C2835100C283
      5100C2835100C2835100C0835300000000000000000000000000000000000000
      0000B9BCF000676DDF004048D600434BD7004048D700353ED5005960DC00AFB2
      EE00000000000000000000000000000000000000000000000000000000008686
      86FF818181FF7D7D7D7000000000000000000000000000000000686868706565
      65FF626262FF0000000000000000000000000000000000000000000000008585
      850080808000C5C5C50000000000000000000000000087B29700278B520063B9
      8C0094D1B10063B98C00278B520080AD910000000000D6A07400F7F1EC00F6EF
      E900F5ECE500F3E9E100F2E6DD00F0E3DA00EFE1D700EFE1D700EFE1D700EFE1
      D700EFE1D700EFE1D700C4895C0000000000000000000000000000000000BABD
      F0005760DF008A96F50099A6FB0093A0F800909EF600929FF6007F8BED00404A
      D900AEB1EE00000000000000000000000000000000009595957C909090FFACAC
      ACFFC9C9C9FFA6A6A6FF7E7E7EFF797979FF757575FF717171FF999999FFC5C5
      C5FF959595FF626262DB000000000000000000000000CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474001D6B3A0061B98A005FB9
      8600FEFEFE005FB8860066BB8E001F6F3C0000000000D8A37900F8F2ED00EAD1
      BD00FEFEFE00EAD2BE00FEFEFE00EAD2BF00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00EFE1D700C58B5E00000000000000000000000000BCBEF1005F67
      E000919DF600657CFE003D58FE003B57FE003752FD002F4BF8005269F600808C
      F0003F48D900ABAFED000000000000000000000000009A9A9A7C000000009191
      91708C8C8CE08888887000000000000000000000000000000000717171706D6D
      6DE06A6A6A70666666F7000000000000000000000000CDCDCD0000000000CECE
      CE0099999900CACACA00000000000000000000000000307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A360000000000DCA77D00F8F2EE00EACF
      B900EACFBA00E9CCB400E9CCB400E9CCB400EAD0BC00E9CCB400E9CCB400E9CC
      B400E9CCB400EFE1D700C5895B000000000000000000C0C3F1006970E20098A5
      F7006F87FE004260FE003E5CFE003956FE003552FE00304DFE002B49FE00556C
      FA00828FF300404AD900ADB0EE000000000000000000A0A0A0279B9B9B999797
      97FF929292FF8D8D8DFF888888FF848484FF7F7F7FFF7B7B7BFF767676FF7272
      72FF000000006A6A6AF4000000000000000000000000F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E0045865D008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E001F6F3C0000000000DEA98100F8F2EE00E9CD
      B600FEFEFE00E9CCB400FEFEFE00E9CCB400FEFEFE00E9CEB900FEFEFE00E9CC
      B400FEFEFE00EFE1D700C78C5E0000000000000000008186E5009EACF8007891
      FE004E6DFE006D86FE008EA0FE00405EFE003B5AFE008195FE00647AFE002C4B
      FE00566DFE00828FF500585FDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007777
      7706737373FF6F6F6FEB00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7C6B30060AA800094D3
      B300B9E5CF0069BA8E002C8E560080AD910000000000E0AD8600F9F3EF00E9CA
      B100E9CBB200E9CCB400E9CCB400E9CCB400E9CCB400E9CCB400E9CCB400E9CC
      B400E7C7AD00EFE1D700C385530000000000000000006B70DF00AFBFFD005D7E
      FE005675FE0095A8FE00FEFEFE00AAB8FE009AABFE00FEFEFE009AAAFE003352
      FE003351FE0096A5FD003840D50000000000000000000000000000000000A1A1
      A1FF9D9D9DFF989898FF939393FF8F8F8FFF8A8A8AFF858585FF818181FF7F7F
      7FFFB1B1B1FF747474FE0000000000000000000000000000000000000000A0A0
      A0009C9C9C0097979700929292008E8E8E0089898900848484006D8977005992
      6E004E8D65004282590099BDA6000000000000000000E2B08B00F9F5F000E9C8
      AD00FEFEFE00E9C8AF00FEFEFE00E8CAB200FEFEFE00E9CCB400FEFEFE00E9CC
      B400FEFEFE00EFE1D700C58554000000000000000000767BE100B0BFFC006788
      FE005D7EFE005D7EFE00AEBEFE00FEFEFE00FEFEFE00B8C4FE004867FE003A5A
      FE003C5BFE0096A4FB00444DD800000000000000000000000000ABABAB7CCACA
      CAFFDADADAFFB2B2B2FFD7D7D7FFAAAAAAFFD3D3D3FFA3A3A3FFD0D0D0FF9B9B
      9BFFCCCCCCFF787878FE00000000000000000000000000000000D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB0078787800000000000000000000000000E4B38E00F9F5F100E8C5
      A900E8C5AB00E9C6AB00E8C6AC00E8C8AD00E8C8AF00E9CCB400E9CCB400E9CC
      B400E7CBB400EFE1D700C789580000000000000000007A7FE300B3C4FC006E91
      FE006387FE005F83FE00A7B9FE00FEFEFE00FEFEFE00AFBFFE004A6BFE004162
      FE004363FE0099A8FB004950D900000000000000000000000000B0B0B0FFF4F4
      F4FFB9B9B9FFA3A3A336B2B2B2FF9A9A9A36ABABABFF90909036A4A4A4FF8787
      87369C9C9CFF7E7E7EFF00000000000000000000000000000000AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D00000000000000000000000000E6B69300FAF6F300FEFE
      FE00FEFEFE00E7C3A800FEFEFE00E8C5A900FEFEFE00E7C6AB00FEFEFE00E7C7
      AF00FEFEFE00F6F0EA00CA8E5E000000000000000000797EE300BACBFD007196
      FE006A8FFE009EB5FE00FEFEFE00C1CEFE00B4C4FE00FEFEFE0092A8FE00486A
      FE004668FE009FB0FD00464ED8000000000000000000B8B8B8FFD2D2D2FFC0C0
      C0FFDEDEDEFFBABABAFFDBDBDBFFB3B3B3FFD7D7D7FFACACACFFD4D4D4FFA4A4
      A4FFD0D0D0FF898989FF7E7E7E0C0000000000000000B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B900DADADA00B2B2B200D6D6D600ABABAB00D3D3D300A3A3
      A300CFCFCF0088888800F9F9F9000000000000000000E8B99700FAF6F30064A3
      FE0063A2FE0061A1FE0060A0FE005E9EFE005B9CFE005999FE005697FE005394
      FE005193FE00FAF6F300CD92630000000000000000009499E800AFC0F80093B2
      FE007098FE008FADFE00B0C4FE00678DFE005E84FE009BB1FE007694FE004F73
      FE00718DFE0092A2F6006D73E0000000000000000000BCBCBCFFC6C6C6FFB5B5
      B536C1C1C1FFADADAD36BBBBBBFFA4A4A436B3B3B3FF9B9B9B36ACACACFF9292
      9236A5A5A5FF9A9A9AFF848484280000000000000000BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED00BABABA00ECECEC00B2B2B200EAEAEA00ABABAB00E8E8
      E800A4A4A40099999900ECECEC000000000000000000EABC9A00FAF6F30063A3
      FE0078BCFE0074BAFE0070B8FE006CB7FE0067B2FE0060AFFE0059AAFE0053A6
      FE003A7CFE00FAF6F300D09669000000000000000000CDCFF400868FE700B0C1
      F80095B6FE00739CFE006F98FE006A92FE00658DFE006188FE005B82FE007B99
      FE0099A9F7006069E000BCBEF10000000000C2C2C2FFD8D8D8FFE3E3E3FFC7C7
      C7FFE1E1E1FFC2C2C2FFDFDFDFFFBBBBBBFFDBDBDBFFB4B4B4FFD8D8D8FFACAC
      ACFFD4D4D4FFABABABFF8989894300000000C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000C1C1C100DEDEDE00BABABA00DADADA00B3B3B300D7D7D700ABAB
      AB00D3D3D300AAAAAA00E0E0E0000000000000000000EBBE9D00FAF6F30064A3
      FE0063A2FE005F9FFE005C9DFE005798FE005395FE004C8FFE00468AFE004183
      FE003C7EFE00FAF6F300D39A6E00000000000000000000000000CECFF400878F
      E700B1C2F80096B8FE0078A2FE0076A0FE00729BFE006B94FE0084A3FE00A0B0
      F7006871E200BEC0F1000000000000000000C4C4C4FFFCFCFCFFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF3F3F3FF9D9D
      9DE5F1F1F1FFD8D8D8FF8F8F8FDF8A8A8A6AC3C3C300FBFBFB00F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F2F2F200A6A6
      A600F0F0F000D7D7D7009C9C9C00CECECE0000000000EDC0A100FAF6F300FAF6
      F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6
      F300FAF6F300FAF6F300D69F730000000000000000000000000000000000CFD1
      F5008891E800B1C3F800BDD2FD00B9CDFC00B7CAFC00B7CAFD00A6B7F700727B
      E400C2C4F200000000000000000000000000C5C5C5FFC5C5C5FFC3C3C3FFC0C0
      C0FFBDBDBDFFBABABAFFB7B7B7FFB3B3B3FFAFAFAFFFABABABFFA7A7A7FFA2A2
      A2FFC5C5C5FFFBFBFBFFE4E4E4FF909090D4C4C4C400C4C4C400C2C2C200BFBF
      BF00BCBCBC00B9B9B900B6B6B600B2B2B200AEAEAE00AAAAAA00A6A6A600A1A1
      A100C4C4C400FAFAFA00E3E3E300A2A2A20000000000F2D1BA00EEC1A200ECBF
      9E00EABD9C00EABB9900E8B99500E6B69200E5B48F00E3B18B00E1AE8700DFAB
      8300DCA87F00DBA47C00DBA67F00000000000000000000000000000000000000
      0000CFD1F500989DE9007E83E3008084E4007C82E300747AE1008C91E600C7CA
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3A3A3FF9E9E9EFF9A9A9AFF9595955C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A2A2A2009D9D9D0099999900D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000174259002A6188004B89BD006FA8CC00E3EDF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000909090008887
      8700868585008686860087878600888887008887870087878700878786008685
      8500868584009696960000000000000000000000000000000000000000000000
      00002D66840093C6F80090C8F8004084C800266AAD00D8E6F200000000000000
      00000000000000000000000000000000000000000000DFB49200D49C7300D095
      6700CD916200CA8D5D00C8895A00C6865500C2835100C2835100C2835100C283
      5100C2835100C2835100CFA07C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000087878700C1C1
      C000BBBBBB00BBBBBB00BBBBBA00BBBBBA00BBBBBA00BBBBBA00BBBBBA00BBBB
      BA00C1C1C0008A8A890000000000000000000000000090909000888787008685
      85004288A900DFF1FE005399D7001979BD004897C4003C82BA00788592008685
      84009696960000000000000000000000000000000000D6A07400F7F1EC00F6EF
      E900F5ECE500F3E9E100F2E6DD00F0E3DA00EFE1D700EFE1D700EFE1D700EFE1
      D700EFE1D700EFE1D700C48A5D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008B8B8A00FEFE
      FE00EAEAEA00EAEAEA00E8E8E800E7E7E700E6E6E600E6E6E600E5E5E500E5E5
      E500FEFEFE008D8C8B0000000000000000000000000087878700C1C1C000BBBB
      BB007D9BAF0079B5D4008FB6D00054C8E3005ADEF40077CFEC004B96D600AFBA
      C3008A8A890000000000000000000000000000000000D8A37900F8F2ED00EACF
      BB00E6C0A300E6BEA000E5BD9E00E5BA9900E2B79400E0B48E00DDAF8800DBAA
      8200D8AD8800EFE1D700C58B5E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000091909000FEFE
      FE00B3B3B30093939300E6E6E600B1B1B10092929200E2E2E200AFAFAF009090
      9000FAFAFA00919190000000000000000000000000008B8B8A00FEFEFE00EAEA
      EA00EAEAEA00A4C7D70075B8D500C1F5FC0062DEF6005CE1F70078D2EF004998
      DB00828C950000000000000000000000000000000000DCA77D00F8F2EE00EACF
      B900FEFEFE00FDFDFD00FDFEFD00FDFEFD00FEFEFE00FDFDFD00FEFEFE00FEFE
      FE00DAAF8B00EFE1D700C5895B00000000000000000000000000000000000000
      000000000000E5E5FB00807FE6002D2ACC002E2AC100847FCD00E6E5F2000000
      000000000000000000000000000000000000000000000000000094949400FEFE
      FE00E7E7E700E6E6E600E4E4E400E2E2E200E1E1E100DFDFDF00DEDEDE00DBDB
      DB00FEFEFE009494940000000000000000000000000091909000FEFEFE00B3B3
      B30093939300E6E6E6007DA1B30076CAE600C6F6FC005DDBF40059E0F6007AD3
      F0004594D700D6E7F700000000000000000000000000DEA98100F8F2EE00E9CD
      B600FEFEFE00BFDCC20061AA6800A0CCA400AAD1AE0067AD6D00AAD1AE00FEFE
      FE00DCB39000EFE1D700C78C5E00000000000000000000000000000000000000
      0000000000007F80F1007B7BED008F92F4008487F2007877E300847FCF000000
      000000000000000000000000000000000000000000000000000099999800FEFE
      FE00B0B0B00090909000E1E1E100ACACAC008E8E8E00DBDBDB00A8A8A8008C8C
      8C00FAFAFA009998980000000000000000000000000094949400FEFEFE00E7E7
      E700E6E6E600E4E4E400E2E2E200AAD2DF0078D2ED00C6F6FC005EDBF4005AE1
      F60079D5F10050A1E100DCE9F5000000000000000000E0AD8600F9F3EF00E9CA
      B100FEFEFE00FEFEFE0061AA6800D4E8D6008BC09000FEFEFE0061AA6800FEFE
      FE00DEB79500EFE1D700C3855300000000000000000000000000000000000000
      0000000000002A2BF200A8ABF7006F76F400666BF3008587F2002E2AC6000000
      00000000000000000000000000000000000000000000000000009D9C9C00FEFE
      FE00E2E2E200E0E0E000DBDBDB00DADADA00D6D6D600D2D2D200D2D2D200D0D0
      D000FEFEFE009D9C9B0000000000000000000000000099999800FEFEFE00B0B0
      B00090909000E1E1E100ACACAC008E8E8E00A7D1DD007BD3EC00C3F5FC006BDC
      F5006CC9EC0062A2D60068A2D400E5EFF70000000000E2B08B00F9F5F000E9C8
      AD00FEFEFE00FEFEFE0061AA6800D4E8D60095C69A00F8FBF8006BB07200FEFE
      FE00E0BC9C00EFE1D700C5855400000000000000000000000000000000000000
      0000000000002A2DF900B7BBFA007D85F7006D73F4009093F4002C2AD2000000
      00000000000000000000000000000000000000000000000000009F9F9F00FEFE
      FE00ACACAC008D8D8D00D7D7D700A4A4A40089898900CDCDCD007273E7005157
      DA00FAFAFA009D9D9D000000000000000000000000009D9C9C00FEFEFE00E2E2
      E200E0E0E000DBDBDB00DADADA00D6D6D600D2D2D20097C8D7007FD4EC00B1E2
      F8008ABFE600ADD2F500C3DFFB006AA1D30000000000E4B38E00F9F5F100E8C5
      A900FEFEFE00AAD1AE006BB07200D4E8D600AAD1AE0064AC6B00AAD1AE00FEFE
      FE00E3C0A300F1E6DD00C7895800000000000000000000000000000000000000
      0000000000007F81FE007F80FC00B8BBFA00B0B4F9007C7CEF007F7FEA000000
      0000000000000000000000000000000000000000000000000000A2A2A200FBFB
      FB00D9D9D900D6D6D600D1D1D100CDCDCD00C8C8C800C4C4C400C1C1C100BEBE
      BE00FEFEFE009F9F9F000000000000000000000000009F9F9F00FEFEFE00ACAC
      AC008D8D8D00D7D7D700A4A4A40089898900CDCDCD007273E7004079DD0076BD
      E600B3D1EF00E4F2FE00ABD1EE005895CB0000000000E6B69300FAF6F300E8C2
      A500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E4C5AA00F6F0EA00CA8E5E00000000000000000000000000000000000000
      000000000000E5E5FF007F81FE002A2DFB002A2CF6007F80F500E5E5FC000000
      0000000000000000000000000000000000000000000000000000A2A2A200FEFE
      FE00AF7A5500C28C6600C48E6700C58F6800C7916A00C9936B00C9946D00AF7A
      5500FEFEFE00A09F9E00000000000000000000000000A2A2A200FBFBFB00D9D9
      D900D6D6D600D1D1D100CDCDCD00C8C8C800C4C4C400C1C1C100BEBEBE00BBE4
      F30057A4D70084B0DA00459CCF00B0D8EE0000000000E8B99700FAF6F30064A3
      FE0063A2FE0061A1FE0060A0FE005E9EFE005B9CFE005999FE005697FE005394
      FE005193FE00FAF6F300CD926300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3A3A300FEFE
      FE00AF7A5500C08A6300C28C6500C48E6600C58F6800C7916A00C9936B00AF7A
      5500FEFEFE009F9F9F00000000000000000000000000A2A2A200FEFEFE00AF7A
      5500C28C6600C48E6700C58F6800C7916A00C9936B00C9946D00AF7A5500FEFE
      FE00A09F9E0000000000000000000000000000000000EABC9A00FAF6F30063A3
      FE0078BCFE0074BAFE0070B8FE006CB7FE0067B2FE0060AFFE0059AAFE0053A6
      FE003A7CFE00FAF6F300D0966900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A2A2A200FEFE
      FE00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A671
      4C00FEFEFE009D9D9D00000000000000000000000000A3A3A300FEFEFE00AF7A
      5500C08A6300C28C6500C48E6600C58F6800C7916A00C9936B00AF7A5500FEFE
      FE009F9F9F0000000000000000000000000000000000EBBE9D00FAF6F30064A3
      FE0063A2FE005F9FFE005C9DFE005798FE005395FE004C8FFE00468AFE004183
      FE003C7EFE00FAF6F300D39A6E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A9A900FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00A2A2A200000000000000000000000000A2A2A200FEFEFE00A671
      4C00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00A6714C00FEFE
      FE009D9D9D0000000000000000000000000000000000EEC5A700FAF6F300FAF6
      F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6F300FAF6
      F300FAF6F300FAF6F300D7A27700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B200A8A8
      A800A7A7A700AAAAAA00ABABAB00ACACAC00ABABAB00AAAAAA00A7A7A700A3A3
      A300A2A2A200B5B5B500000000000000000000000000A9A9A900FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00A2A2A20000000000000000000000000000000000F7E0D100F0C7AB00ECBF
      9E00EABD9C00EABB9900E8B99500E6B69200E5B48F00E3B18B00E1AE8700DFAB
      8300DCA87F00DBA47C00E1B59500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200A8A8A800A7A7
      A700AAAAAA00ABABAB00ACACAC00ABABAB00AAAAAA00A7A7A700A3A3A300A2A2
      A200B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004092C800368AC5003588C4003386C3003284C2003083C1002F81
      C0002D7FBF002C7DBE002A7BBE005595CB000000000000000000000000000000
      000000000000000000000000000000000000D7CCC300A47D5D00B17F5500AE7D
      5100A3795800CFC1B70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C9CCE00DCEBF500BCEDF800ABE9F700AAE9F700AAE9F700AAE9
      F700ACE9F700D3F2FA00A3C7E3006DA6D3000000000000000000000000000000
      00000000000000000000E6DFDA00A8876A00B1805700CAAA8800D0B39400BA8D
      6200B4865900AA764C00A27F6200E1D9D30000000000962F0E6B962F19B58B28
      0B80922B0C567D20093E62150536530F03314E0E03314B0D0227500E02120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEE0088AEC3008DC1E00096E7F80060DBF5005ADAF4003187C1005ADA
      F40069DDF500B0E6F5003E8DC600DCEAF5000000000000000000000000000000
      0000F3F6F400FAFBFA00AC7F5600D4BA9E00D5BA9D00D2B79B00D0B29300B688
      5C00B98D6100B78C6000B1805500A7754D0000000000C86E41E1AB4121AE0000
      00009E330F1F8F2B14A29E3224F0992D22F192291FEE832119E061130BAF430B
      0257500D02060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700CCCC
      CC00A2A2A200C1C3C40064ACD400AADAEE0073DFF60057D9F40057D9F4005CDA
      F4008FE5F70091C0E00099C5E200000000000000000000000000C6D4C7006799
      6B0062A1690060A06800B07D5100E0CCB700D7BFA400D7BFA600D3B99C00B78B
      5F00B6895F00B78C6000B98D6100B07D510000000000CC7540DBAF4322BB8D26
      0C37AA3C23C6C76E4DFFD08764FFCE8867FFCC8063FFC6755CFFB65444FF922A
      21FA4A0D0487510E020C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00DADADA00ADADAD00C0C0
      C000E7E7E700EAEAEA00B3CDDA007ABCDE00A1E9F80060DBF5003086C10076E0
      F600B5DDEF004A95C200C9CED100FBFBFB00DCE4DD00759F790065A26B0092BF
      98009DC6A30070AB7700AE7D5000E2CFBB00D9C2AA00D2B79D00C6A27C00C097
      6E00B5885B00B6895F00B98D6100B07F530000000000C55E2594D18249F2C15B
      34E0D18659FFD89A70FFD28B63FFC36644F2BA5439DBBF6246F9C97B5FFFC572
      59FFA43B30FF510E036E63120302000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCBCBC00BDBDBD00E2E2E200F0F0
      F000E6E6E600DCDCDC00D8D9D9007DB9D400ABD8EB0081E2F7003287C100ABEC
      F900439DCE0096B3C400A5A5A500ADADAD00639E6B00A8CCAE00A5CBAB00A1C8
      A80098C49E006AA87300AD7B4E00DBC7AF00BE9E8000B78C6400D0B28E00D0B2
      8E00BA8F6500BB906700B6895F00B07D510000000000C8621E39D68E4CEFE0A8
      71FFDEA574FFDA9C6CFFC16137CCAC3F1343A73B1128A3370F58BB573DE5BF61
      47FCC6745AFF983425D56D17052B000000000000000000000000000000000000
      000000000000EAF5EB0096CA9B004EA055004B98530090B89500E8EFE9000000
      000000000000000000000000000000000000A7A7A700F4F4F400F1F1F100E6E6
      E600E3E3E300DEDEDE00DADADA00BFCFD50058AFD400B3EAF7008DE5F700B4DC
      ED006BACCB00BBBCBD00C8C8C8009797970061A06800BFD9C400ACCFB200AACD
      B0009DC7A5006CA97500947A7D005960C7004F57E2004E55DF00575EC7008F77
      8300BA8F6500D0B28E00C5A17A00A8784F0000000000D0702102CD6E258AE0A6
      67FFE2AD77FFD8965EFFAA3A199F94290D378E270C3B99310E43A73B168FAA40
      1EA2A53B1A9E902D18A9711A0736000000000000000000000000000000000000
      00000000000099D29C0090CA9400A0D3A20098CF9A008BC18F0091BA96000000
      000000000000000000000000000000000000ADADAD00F2F2F200EFEFEF00EBEB
      EB00E9E9E900E3E3E300D9D9D900D7D7D7008DBCCE00A3D6EA00DBF3FA0057AF
      D500AABDC600BFBFBF00CACACA009D9D9D005F9F6700C4DDC800B3D3B800A3C8
      A90080AA9900606CC2004F57DF006567EA009292F3006062E900575AE3004851
      DB005F62BD00A5887E00C0997000B89F8A000000000000000000D2752328D98E
      42D1E3AE71FFE1A76DFFC96C38F6C25B32F5BD502FF7BD5533F4BA5434ECB64F
      32E8B34B32E6A83D2CEE731C0765000000000000000000000000000000000000
      00000000000057BC5D00B3DBB40089CB8A0082C9840099CF9C004D9C55000000
      000000000000000000000000000000000000AEAEAE00F2F2F200F0F0F000EDED
      ED00E0E0E000C6C6C600CACACA00D0D0D000CACFD1006ABCD900AADAEC0083B7
      CC00BFBFBF00BFBFBF00CDCDCD009E9E9E005C9E6400B8D5BD0086B98E0070AB
      77005258DB006569EA009795F3009090F2008889EF005A5EE6005E61E8005C60
      E7005057E3004954D700E3DDDB00FBFAFA0000000000DC862614D984250BD479
      235AE09F50F0E5B477FFD9914CECD48445DED07D44DECC7844E2CF804DFBD696
      6AFFD49067FFC26547FF8323096B000000000000000000000000000000000000
      00000000000059C15E00BFE0BF0094D1940087CB8800A1D3A30050A557000000
      000000000000000000000000000000000000AFAFAF00F2F2F200E8E8E800DCDC
      DC00DDDDDD00C1C1C100D9D9D900FCFCFC00FCFCFC00B0D0DB0071BDD700CBD4
      D700BABABA00BABABA00CECECE009F9F9F00649F6B0085B98E0098C5A10073AC
      7B004E56E100B3B0F8009695F3009292F3008B8CEF005B5FE7005B60E6005C60
      E7005E61E8004E56E100E3E5F2000000000000000000E2962916DF922E98D983
      252CD67F257EE7B26AFFD1742BA1CB641F1DC45B1D09C0541B46D07D44E3DB9E
      6EFFD99C70FFC0623EF498300E44000000000000000000000000000000000000
      0000000000009CDC9F0096D59A00C0E1C100B9DEBA0091CB940097CD9B000000
      000000000000000000000000000000000000ACACAC00D7D7D700CCCCCC00CDCD
      CD00D0D0D000ABABAB00FEFEFE00FEFEFE00FEFEFE00FEFEFE00ABABAB00D0D0
      D000CBCBCB00C0C0C000BDBDBD009C9C9C0092B296007BB3840075AE7D006EAA
      77004D53E000B3B0F8009495F4006569EA006E70EB006D71EB00595BE4005B60
      E6005E61E8005057E100E3E5F200000000000000000000000000E59B2A59EDBB
      5BFDDE9031A6DF973FD7D88533EDBD391496B336107EC55D29BBDE9F64FFE0AA
      76FFDA9A66FFB74C25ACAD411310000000000000000000000000000000000000
      000000000000EBF8EB009CDC9F0059C25E0058BF5E009AD59D00EAF6EB000000
      000000000000000000000000000000000000CCCCCC00ADADAD00D4D4D400FCFC
      FC00FCFCFC00C6C6C600B4B4B400A2A2A200A2A2A200B4B4B400C6C6C600FBFB
      FB00FAFAFA00D1D1D100ADADAD00BFBFBF00FAFBFA00DEE6DF00CAD7CB006DA7
      76004B51DF00A1A1F300696BEB006062E9009692F6009692F6006367E8006465
      E9005B60E6004E56E100E3E5F200000000000000000000000000EAA52C0DE7A5
      3293F0C56FFFEFC67CFFECBD70FFE3AA55FFE2A453FFE3AB65FFE6B479FFDFA7
      6AFFD18144DEBC501A3400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AAAAAA00FEFEFE00FEFE
      FE00FEFEFE00DFDFDF00ABABAB00D0D0D000D0D0D000AAAAAA00DFDFDF00FEFE
      FE00FEFEFE00FEFEFE00AAAAAA00000000000000000000000000000000000000
      0000545ADA007B7BF1009692F6006367E8005157E2005157E2006367E8009692
      F6007B7BF1004D56D800E9EAF50000000000000000000000000000000000EBA7
      2D13E9A62F89EDBA52E6EEC36DFFEDC070FFEBBC70FFE9BA72FFE2A756FDD27C
      36BDBB4B173000000000B2431527AC3F13150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00BCBCBC00A2A2
      A200A1A1A100B0B0B000D5D5D500FCFCFC00FBFBFB00D2D2D200B0B0B000A1A1
      A100A2A2A200BCBCBC00DEDEDE00000000000000000000000000000000000000
      00009094D8006D6EEB006567EA005E61E8007777EF007373EF005E61E800686A
      EA006E70EB009094D60000000000000000000000000000000000000000000000
      0000EEAB2D02EAA62C36E79F2B6FE59E3194E2993196E19839AEE5AA53F3E19F
      4CE5CC6327C0B73C1263B7431686B64617270000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F800AAAAAA00FEFEFE00FEFEFE00FEFEFE00FEFEFE00AAAAAA00F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      0000FAFAFD00DFE0F000CBCDE7006062E2005056E1005056E1005E61E200C8CB
      E600DFE0F000FAFAFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000EAA32B07E69B2A08E2952911DE8D2737DC8A
      2B8FE19F4ADDDC9242CCCD6E2282C8621E0E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00BABABA00A1A1A100A1A1A100BABABA00DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3916D9BC38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB6805EFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD76
      56FFAB7554FFA97353FFA97151FFA370519B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0947600855E330081593000A3825F00000000000000
      000000000000000000000000000000000000A97151A9C38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD7656FFAB75
      54FFA97353FFA97151FFA97151A900000000C8926CFF525252FF535353FF5454
      54FF555555FF565656FF575757FF575757FF585858FF595959FF5A5A5AFF5B5B
      5BFF5C5C5CFF5C5C5CFF5D5D5DFFA97251FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A27541009D6F3C00976A37009264
      32008C5F2D008659280081532300926738008F643500714415006C3F1000683B
      0C0064370900603305005D3002005A2D0000C8926CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA97251FF00000000CA946EFF4E4E4EFF3D3D3DFF3D3D
      3DFF3E3E3EFF3F3F3FFF414141FF424242FF434343FF444444FF454545FF4646
      46FF464646FF484848FF5A5A5AFFAA7353FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AA7D4900B28A5C00B28A5C00B28A
      5C00B28A5C00B28A5C00B28A5C007C502000784B1C00B28A5C00B28A5C00B28A
      5C00B28A5C00B28A5C00B28A5C00673B0D00CA946EFFFFFFFFFFEBB060FFFFFF
      FFFFB2B2B2FFAEAEAEFFA5A5A5FFFEFAF7FFA2A2A2FFFEFAF7FF989898FF9595
      95FF919191FFFFFFFFFFAA7353FF00000000CC976FFF4B4B4BFF383838FF3939
      39FF3A3A3AFF3C3C3CFF3D3D3DFF3F3F3FFF3F3F3FFF414141FF424242FF4242
      42FF444444FF454545FF575757FFAC7554FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005E8E
      6000FAFBFA00000000000000000000000000AF824E009D6F3C00976A3700F8F8
      F8008C5F2D008659280081532300AA8F7300A98E7200714415006C3F1000683B
      0C0064370900603305005D3002006B3E1100CC976FFFFFFFFFFFFEFDFBFFFEFC
      FBFFFEFBF9FFFEFBF9FFFEFAF7FFFEFAF7FFFEFAF7FFFEFAF7FFFDF8F4FFFCF6
      F3FFFCF6F3FFFFFFFFFFAC7554FF00000000CF9A72FF474747FF333333FF3434
      34FF363636FF373737FF393939FF3A3A3AFF3B3B3BFF3C3C3CFF3E3E3EFF3F3F
      3FFF404040FF414141FF555555FFAD7856FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0DFD1002B6D
      2F0041794400000000000000000000000000B5875300A4764200F8F8F800F8F8
      F800F8F8F800F7F7F700F0F0F000E2E2E200F2F2F200F7F7F700F8F8F800F7F7
      F700E8E8E800F7F7F700613406006F431500D19C73FFFFFFFFFFEFB462FFFFFF
      FFFFB5B5B5FFB3B3B3FFABABABFFFEFAF7FFA8A8A8FFFDF8F5FFA2A2A2FF9E9E
      9EFF9B9B9BFFFFFFFFFFB07A58FF00000000D19C73FF424242FF2F2F2FFF3030
      30FF313131FF333333FF343434FF363636FF363636FF383838FF3A3A3AFF3B3B
      3BFF3D3D3DFF3D3D3DFF525252FFB07A58FF0000000060BD6C005CB7670057B0
      610052A85B004CA0550046984E00409048003A874100347F3A003E87440058A0
      5D00438A48004A804C000000000000000000B98C5700AA7C4800F8F8F800F0F0
      F000ECECEC00E6E6E600D2D2D200A4A4A400D6D6D600F3F3F300EDEDED00E9E9
      E900DBDBDB00F7F7F70065380A0073471900D49E75FFFFFFFFFFFEFCFAFFFEFB
      F9FFFEFAF8FFFEFAF8FFFEFAF6FFFEFAF7FFFCF7F4FFFCF7F2FFFCF6F0FFFCF5
      EFFFFCF4EEFFFFFFFFFFB27C5AFF00000000D49E75FF3D3D3DFF292929FFD1D1
      D1FFADADADFF2E2E2EFF2F2F2FFF313131FF323232FF343434FF363636FF3737
      37FF383838FF3A3A3AFF4E4E4EFFB27C5AFF0000000064C270009FD6A8009BD4
      A40097D2A00093CF9C008FCD97008ACA920086C88D0081C588007DC2830079C0
      7F0075BD7B00448B49005486560000000000BD905B00B0824D00F8F8F800CBCB
      CB00C8C8C800C4C4C400D2D2D200A5A5A500D7D7D700F3F3F300C9C9C900C5C5
      C500B9B9B900F7F7F7006A3D0F00794C1D00D5A076FFFFFFFFFFF3B663FFFFFF
      FFFFBABABAFFB8B8B8FFB2B2B2FFFEFAF7FFAFAFAFFFFCF6F0FFA9A9A9FFA7A7
      A7FFA5A5A5FFFFFFFFFFB57E5CFF00000000D5A076FF393939FF252525FF2626
      26FFDEDEDEFF747474FF2A2A2AFF2C2C2CFF2D2D2DFF2F2F2FFF313131FF3232
      32FF343434FF353535FF4B4B4BFFB57E5CFF0000000067C67300A4D9AD00A1D7
      AA009DD5A60099D3A20095D19E0092CE99008DCB940088C98F0084C68A0080C4
      86007CC1810049904F005288560000000000C1945F00B6885200F9F9F900F0F0
      F000ECECEC00E8E8E800D3D3D300A5A5A500D7D7D700F4F4F400EEEEEE00EAEA
      EA00DBDBDB00F7F7F700704314007E522200D8A279FFFFFFFFFFFEFAF8FFFEFA
      F7FFFEFAF6FFFDF8F6FFFCF7F2FFFEFAF7FFFCF6F0FFFCF5EFFFFBF3ECFFFAF1
      EAFFFAF0E8FFFFFFFFFFB7815EFF00000000D8A279FF343434FF202020FFCFCF
      CFFFA8A8A8FF242424FF252525FF262626FF282828FF2A2A2AFF2C2C2CFF2D2D
      2DFF2F2F2FFF313131FF464646FFB7815EFF0000000067C6730067C6730064C2
      700060BD6C005CB7670057B0610052A85B004CA0550046984E004090480059A2
      6100549C5B00549059000000000000000000C5976100BB8D5700F9F9F900CBCB
      CB00C9C9C900C4C4C400D3D3D300A6A6A600D7D7D700F4F4F400CACACA00C6C6
      C600BABABA00F7F7F7007649190083572700D9A379FFFFFFFFFFF6B965FFFFFF
      FFFFBDBDBDFFBBBBBBFFB7B7B7FFFEFAF7FFB5B5B5FFFCF3EDFFB1B1B1FFB0B0
      B0FFADADADFFFFFFFFFFBA8560FF00000000D9A379FF343434FF202020FF2121
      21FF222222FF242424FF252525FF262626FF282828FF2A2A2AFF2C2C2CFF2D2D
      2DFF2F2F2FFF313131FF464646FFBA8560FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004693
      4E0056985C00000000000000000000000000C5986200C0925B00F9F9F900F1F1
      F100EEEEEE00E9E9E900D4D4D400B4B4B400DEDEDE00F4F4F400F0F0F000EBEB
      EB00DDDDDD00F8F8F8007C4F1F00895D2C00DBA47AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBD8763FF00000000DBA47AFF313131FF323232FF3333
      33FF343434FF353535FF363636FF373737FF393939FF3B3B3BFF3C3C3CFF3D3D
      3DFF3F3F3FFF414141FF434343FFBD8763FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000077B3
      7D00FBFCFB00000000000000000000000000C5986200C4965F00F9F9F900CCCC
      CC00C9C9C900C5C5C500F1F1F100DCD7D100EAE4DE00FBFBFB00CBCBCB00C8C8
      C800BCBCBC00F8F8F8008356250090623200DCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFC08B66FF00000000DCA77BFFDBA47AFFDAA379FFD8A2
      79FFD7A178FFD59F76FFD39E74FFD19C73FFCF9A72FFCD9770FFCB956EFFC994
      6CFFC7916BFFC48F69FFC38D67FFC08B66FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5986200C7996200F9F9F900F9F9
      F900F9F9F900F7F7F700D8C5B000B88E5E00B38A5B00D6C3AE00F8F8F800F8F8
      F800F8F8F800F8F8F8008A5C2B0096683700DDAC85FDE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFC1906FFD00000000DDAC85FDF1DCCEFFEAC1A0FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFCDC8C5FFE8B992FFCDC8
      C5FFE8B992FF4464FFFFE8C4A7FFC1906FFD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4EBE000C89A6300D2AD8100CFAB
      7F00CDA87C00CAA57A00C59F7300F2EAE000F1E9E000BA946900B7936900B38F
      6500AE8A6100AA865D0091633100EAE1D700A971516BDDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A72FFCE9970FFCB96
      6FFFC9946CFFC49A7AF4A971516B00000000DDAC86C2DDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD8A179FFD5A076FFD49E75FFD29D73FFCF9A72FFCE99
      70FFCB966FFFC9946CFFC49A7AF4C39371C20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4EBE000F4EBE000F4EB
      E000F3EADF00F3EADF00F2E9DE000000000000000000F0E6DC00EFE5DB00EEE4
      DA00ECE3D900EBE2D800EAE1D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0EEE0008FBF91003A8C3E0024792800247628003A843E008FB99100E0EB
      E000000000000000000000000000000000000000000000000000000000000000
      0000E5F0E7009FC8A500559B5E003F8E48003B8C44004C95520097C19B00E1ED
      E200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5D9
      B600308E3400419F510086C999009AD2AA009AD1AA0082C695003C964B00307B
      3300B4D0B600000000000000000000000000000000000000000000000000C3DD
      C800569F630040984F007CC18E0095CFA50095CEA50077BD8800358C4100408C
      4700B9D5BB00000000000000000000000000A97151A9C38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD7656FFAB75
      54FFA97353FFA97151FFA97151A900000000A97151A9C38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD7656FFAB75
      54FFA97353FFA97151FFA97151A9000000000000000000000000B5DBBA00248E
      29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA9700A4D8B30065B6
      7C0023712600B4D0B60000000000000000000000000000000000C6DFCB00549F
      630063B37700A7DAB40086CB970065BB7C0063B97B0085CA9700A4D8B30057A9
      6A0034853C00B9D5BB000000000000000000C8926CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA97251FF00000000C8926CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA97251FF0000000000000000E1F2E40032A0430071C1
      8600A7DAB1005FBB76005BB9720058B76F0058B46E0057B46E005AB67300A4D8
      B20068B77E00307F3400E0ECE1000000000000000000E9F3EB0066AB750069B8
      7C00A7DAB1005FBB76005BB9720058B76F0058B46E0057B46E005AB67300A4D8
      B20059A96B00418E4800E2EEE30000000000CA946EFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFAFFFEFE
      FAFFFCFCF9FFFFFFFFFFAA7353FF00000000CA946EFFFFFFFFFFEBB060FFFFFF
      FFFFB2B2B2FFAEAEAEFFA5A5A5FFFEFAF7FFA2A2A2FFFEFAF7FF989898FF9595
      95FF919191FFFFFFFFFFAA7353FF00000000000000008FD29F004BAF6300A9DC
      B30063C078005EBD700074C48400D3EBD80089CC980055B56B0057B46D005BB6
      7300A5D9B300409A4D008EBB90000000000000000000AED4B80052AA6700A9DC
      B30063C078005EBD70005FBB7600FEFEFE00FEFEFE0058B76F0057B46D005BB6
      7300A5D9B300378E420096C19A0000000000CC976FFFFFFFFFFFFFFFFCFFFFFF
      FDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFDFAFFFDFDFAFFFDFDFAFFFDFDFAFFFCFC
      F7FFFBFBF6FFFFFFFFFFAC7554FF00000000CC976FFFFFFFFFFFFEFDFBFFFEFC
      FBFFFEFBF9FFFEFBF9FFFEFAF7FFFEFAF7FFFEFAF7FFFEFAF7FFFDF8F4FFFCF6
      F3FFFCF6F3FFFFFFFFFFAC7554FF00000000000000003EB45C0090D19E008CD3
      990063C2730078C88600F1F9F300FEFEFE00FCFDFC0085CA950056B66C005AB8
      710084CB960086C699003A8A3E00000000000000000076B7880089CB970088D2
      95006AC5790062C06F0054AA6400FEFEFE00FEFEFE0058B76F0058B76F005AB8
      710084CB96007ABD8C004C95540000000000D19C73FFFFFFFFFFFEFEFCFFFEFE
      FCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FFFBFBF9FFFBFAF7FFFBFA
      F6FFFBF8F4FFFFFFFFFFB07A58FF00000000D19C73FFFFFFFFFFEFB462FFFFFF
      FFFFB5B5B5FFB3B3B3FFABABABFFFEFAF7FFA8A8A8FFFDF8F5FFA2A2A2FF9E9E
      9EFF9B9B9BFFFFFFFFFFB07A58FF000000000000000026AF4800A5DBAE006FC9
      7E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFCFB0087CC95005AB8
      700066BD7C009FD6AE00227E2500000000000000000069B17E00A8DCB2007CCE
      890074CB8000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0058B7
      6F0066BD7C009BD3AA003A8B430000000000D49E75FFFFFFFFFFFEFEFCFFFDFD
      FBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFFBF9F7FFFBF9F5FFFBF8F4FFFBF7
      F2FFFBF5F2FFFFFFFFFFB27C5AFF00000000D49E75FFFFFFFFFFFEFCFAFFFEFB
      F9FFFEFAF8FFFEFAF8FFFEFAF6FFFEFAF7FFFCF7F4FFFCF7F2FFFCF6F0FFFCF5
      EFFFFCF4EEFFFFFFFFFFB27C5AFF00000000000000002DB65000A6DCB00071CB
      7F0065C67200AFE0B600D1EDD50062C06F00B7E2BE00FEFEFE00FAFCFB008BCF
      980068C07D00A0D6AD002283250000000000000000006DB48200B5E1BD008AD4
      960079C88500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0058B7
      6F0068C07D009CD3A9003E8E480000000000D5A076FFFFFFFFFFFDFDFCFFFDFD
      FBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7F3FFFBF5F2FFFAF3
      EFFFF8F2ECFFFFFFFFFFB57E5CFF00000000D5A076FFFFFFFFFFF3B663FFFFFF
      FFFFBABABAFFB8B8B8FFB2B2B2FFFEFAF7FFAFAFAFFFFCF6F0FFA9A9A9FFA7A7
      A7FFA5A5A5FFFFFFFFFFB57E5CFF00000000000000004AC46B0094D6A00090D6
      9A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3BF00FEFEFE00E2F3
      E5008AD098008ACD9C003B983F00000000000000000081BF9400ABDCB500A5DE
      AE0080CA8B007BC885006DBC7800FEFEFE00FEFEFE005AAB69005FBB76005BB9
      72008AD098007FC49100579D600000000000D8A279FFFFFFFFFFFDFDFAFFFCFC
      FAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4EEFFF7F2EBFFF7F0
      EAFFF6ECE8FFFFFFFFFFB7815EFF00000000D8A279FFFFFFFFFFFEFAF8FFFEFA
      F7FFFEFAF6FFFDF8F6FFFCF7F2FFFEFAF7FFFCF6F0FFFCF5EFFFFBF3ECFFFAF1
      EAFFFAF0E8FFFFFFFFFFB7815EFF00000000000000009ADEAC0056BE6F00AEE0
      B6006CCB790067C7710064C66F0062C46D0061C36D0062C37000B5E2BD006EC6
      7D00ABDEB40047A85D008EC793000000000000000000B8DBC30084C69600D1ED
      D60094D89F0089D293007EC78800FEFEFE00FEFEFE0078CC84006AC27B006EC6
      7D00ABDEB400449D5600A0C8A60000000000D9A379FFFFFFFFFFFCFBF9FFFCFB
      F8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EA
      E4FFF2E7DEFFFFFFFFFFBA8560FF00000000D9A379FFFFFFFFFFF6B965FFFFFF
      FFFFBDBDBDFFBBBBBBFFB7B7B7FFFEFAF7FFB5B5B5FFFCF3EDFFB1B1B1FFB0B0
      B0FFADADADFFFFFFFFFFBA8560FF0000000000000000E4F7E90048C465007ECD
      8F00ADE0B4006CCB790069C9750067C7710067C7730067C774006AC87800ABDE
      B30075C3880032A04200E1F1E3000000000000000000ECF6EF007EBE9200A9D9
      B600D7F0DB0091D79C0087CC920083CB8D008AD3950089D3940082D18D00AEDF
      B6006AB87C005AA26600E6F1E80000000000DBA47AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBD8763FF00000000DBA47AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBD8763FF000000000000000000000000BFECCA003CC2
      5B007ECD8F00AEE0B60091D79C0076CD820076CD820091D79C00ADE0B40077C7
      8A0026A03A00B5DFBD0000000000000000000000000000000000D1E9D90075BA
      8B00AEDBBA00DBF1DF00B5E3BC009ADAA40095D89F00A4DEAE00BFE7C40078C1
      890057A16500C4DEC9000000000000000000DCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFC08B66FF00000000DCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFC08B66FF00000000000000000000000000000000C0EC
      CB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5A0004FB8690034B2
      5400B6E3C100000000000000000000000000000000000000000000000000D1E9
      D9007EBE920093CDA300C2E5CA00CEEAD300C8E8CD00AEDCB7006CB87E0067AD
      7700C7E0CD00000000000000000000000000DDAC85FDE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFC1906FFD00000000DDAC85FDE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFC1906FFD000000000000000000000000000000000000
      0000E5F7E9009EE2B00054CA71003ABF5B0036BD590048C26A0097DBAA00E1F5
      E700000000000000000000000000000000000000000000000000000000000000
      0000ECF6EF00B9DCC40082BF950070B685006DB4810078B98900B1D5BA00E8F3
      EB0000000000000000000000000000000000A971516BDDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A72FFCE9970FFCB96
      6FFFC9946CFFC49A7AF4A971516B00000000A971516BDDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A72FFCE9970FFCB96
      6FFFC9946CFFC49A7AF4A971516B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000369DD9FF3199D8FF2C94
      D7FF2890D6FF238CD5FF1E88D4FF1A84D3FF1580D2FF117CD1FF0E79D1FF0A76
      D0FF0773CFFF0470CFFF016ECEFF0000000000000000000000000000000027A8
      DC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000027A8
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003DA3DAFFBCEBFAFFBCEB
      FCFFBFEEFEFFC6F4FFFFCEF8FFFFD3FAFFFFD0F8FFFFC7F2FFFFBAE9FCFFB3E4
      F9FFB0E2F8FFB0E2F8FF0571CFFF0000000000000000000000000000000029AC
      DE0027A9DC0025A6DB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000029AC
      DE0027A9DC0025A6DB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C811F231B7E1F7D1B7A1FDB1A731EF31A701EF31B711FDB1B711F7D1B6C
      1F23000000000000000000000000000000000000000043A8DBFFBFECFBFF59CF
      F5FF41B0ECFF4EBAEFFF5AC2EFFF60C6EFFF5CC4EFFF4CB6EFFF37A5E6FF2A9A
      E1FF38B8EEFFB1E3F8FF0975D0FF000000000000000000000000000000002BAF
      DF002DAEDF002BABDE0025A6DB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002BAF
      DF002DAEDF002BABDE0025A6DB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001C8A
      21531B831FE642A052FF87CA9AFF9BD3ABFF9BD2ABFF83C796FF3D974CFF1A6E
      1EE61B701F530000000000000000000000000000000049ADDCFFC1EEFBFF5FD3
      F7FF6CDBFCFF7FE5FFFF8FEDFFFF97F2FFFF93EDFFFF7CDFFFFF5BCCF8FF46BE
      EFFF3CBAEEFFB3E3F9FF0E79D1FF000000000000000000000000000000000000
      00002BAFDF004FBCE7004CBAE60026A7DC0024A4DB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002BAFDF004FBCE7004CBAE60026A7DC0024A4DB0000000000000000000000
      00000000000000000000000000000000000000000000000000001C912B531B8A
      20F46DBE83FFA8DBB5FF87CC98FF66BC7DFF64BA7CFF86CB98FFA5D9B4FF66B7
      7DFF1A6C1DF41B711F530000000000000000000000004EB2DDFFC3EFFBFF65D6
      F8FF4CB6ECFF5ABDEFFF95EBFFFF3097DDFF4D82ABFF84E1FFFF41A9E9FF329F
      E1FF42BEEFFFB4E5F9FF137ED2FF000000000000000000000000000000000000
      0000000000002BAFDF0084D3F20055BDE7002EAADE0024A4DB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002BAFDF0084D3F20055BDE7002EAADE0024A4DB00000000000000
      000000000000000000000000000000000000000000001D9B36221C962FE572C2
      87FFA8DBB2FF60BC77FF5CBA73FF59B870FF59B56FFF58B56FFF5BB774FFA5D9
      B3FF69B87FFF1A711EE51B711F22000000000000000053B7DEFFC6F0FCFF6AD9
      F8FF7CE2FDFF90E8FFFF99E9FFFF329FDFFF548BB2FF8AE2FFFF6AD0F9FF50C5
      F1FF46C1F0FFB6E7F9FF1883D3FF000000000000000000000000000000000000
      0000000000002DB2E00070CCEE0083D2F2007ECEF1004AB6E40024A5DB0022A2
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000002DB2E00070CCEE0083D2F2007ECEF1004AB6E40024A5DB0022A2
      DA0000000000000000000000000000000000000000001EA43D7E4CB064FFAADD
      B4FF64C179FF5FBE71FF75C585FFD4ECD9FF8ACD99FF56B66CFF58B56EFF5CB7
      74FFA6DAB4FF419B4EFF1B771F7E000000000000000058BBDFFFC7F1FCFF6FDC
      F9FF56BBEDFF61BDEFFF9BE7FFFF35A6E2FF4BA4E1FF90E2FFFF49ADE9FF38A4
      E3FF49C4F0FFB8E8F9FF1E88D4FF0000000038C2E70036C0E60035BDE50033BB
      E40031B8E3002FB6E20086D7F3002FB6EB004ABCEC0080CEF10051B9E6002CA8
      DD0023A2DA0000000000000000000000000038C2E70036C0E60035BDE50033BB
      E40031B8E3002FB6E20086D7F3002FB6EB004ABCEC0080CEF10051B9E6002CA8
      DD0023A2DA00000000000000000000000000000000001FA942DB91D29FFF8DD4
      9AFF64C374FF79C987FFF2FAF4FFFFFFFFFFFDFEFDFF86CB96FF57B76DFF5BB9
      72FF85CC97FF87C79AFF1B781FDB00000000000000005CBFE0FFC8F3FCFF75DF
      F9FF89E6FDFF95E7FFFF9AE5FFFFAAEEFFFFA8EDFFFF99E3FFFF74D5F9FF59CC
      F3FF4FC8F1FFBBE9FAFF248DD5FF000000003AC4E80075DAF20093E6F80091E3
      F7008DE0F6008ADCF5008ADBF50088D7F40084D3F2007FCFF1007CCCF0007AC9
      EF0048B4E30023A3DA00209ED800000000003AC4E80075DAF20093E6F80091E3
      F7008DE0F6008ADCF5008ADBF50088D7F40084D3F2007FCFF1007CCCF0007AC9
      EF0048B4E30023A3DA00209ED80000000000000000001FAD42F6A6DCAFFF70CA
      7FFF73CA80FFF0F9F1FFFFFFFFFFEBF7EDFFFFFFFFFFFBFDFCFF88CD96FF5BB9
      71FF67BE7DFFA0D7AFFF1B7A1EF6000000000000000060C2E1FFC9F3FCFFCBF3
      FDFFD4F6FEFFD7F6FFFFD8F4FFFFE0F8FFFFDFF8FFFFDAF5FFFFCDF1FCFFC2ED
      FAFFBDEBFAFFBDEBFAFF2B93D6FF000000003BC7E9004FCDEC0098E9F9004AD5
      F30045CFF10040CAF00038C2EE0089D9F4002EB4E1002CB1E0002BAEDF0029AC
      DE0027A9DC0025A6DB0023A3DA00000000003BC7E9004FCDEC0098E9F9004AD5
      F30045CFF10040CAF00038C2EE0089D9F4002EB4E1002CB1E0002BAEDF0029AC
      DE0027A9DC0025A6DB0023A3DA00000000000000000026B44BF6A7DDB1FF72CC
      80FF66C773FFB0E1B7FFD2EED6FF63C170FFB8E3BFFFFFFFFFFFFBFDFCFF8CD0
      99FF69C17EFFA1D7AEFF1B7F1EF6000000000000000061C3E1FF88A0A8FF9191
      91FF8E8E8EFF5AB9DCFF55B8DFFF51B5DEFF4DB1DDFF49ADDCFF46A8D7FF7878
      78FF767676FF657E8DFF3199D8FF00000000000000003BC7E90080E1F5008EE6
      F80043D2F3003FCDF10039C7EF008CDCF50058C6EA002EB4E100000000000000
      000000000000000000000000000000000000000000003BC7E90080E1F5008EE6
      F80043D2F3003FCDF10039C7EF008CDCF50058C6EA002EB4E100000000000000
      000000000000000000000000000000000000000000002DBB54DB95D7A1FF91D7
      9BFF69C976FF64C66FFF61C46EFF61C36FFF61C26FFFB9E4C0FFFFFFFFFFE3F4
      E6FF8BD199FF8BCE9DFF1C8820DB000000000000000000000000999999C3C6C6
      C6FF949494FF8F8F8F08000000000000000000000000000000007E7E7E087D7D
      7DFFABABABFF767676C30000000000000000000000003DC9EA005BD4EF0099EA
      F90047D6F40042D0F2003DCBF0006ED5F3007FD7F3004AC0E7002FB4E1000000
      000000000000000000000000000000000000000000003DC9EA005BD4EF0099EA
      F90047D6F40042D0F2003DCBF0006ED5F3007FD7F3004AC0E7002FB4E1000000
      0000000000000000000000000000000000000000000034BE597E57BF70FFAFE1
      B7FF6DCC7AFF68C872FF65C770FF63C56EFF62C46EFF63C471FFB6E3BEFF6FC7
      7EFFACDFB5FF48A95EFF1C8F267E0000000000000000000000009D9D9DAEC4C4
      C4FFA1A1A1FF9393932900000000000000000000000000000000828282298989
      89FFA9A9A9FF797979AE000000000000000000000000000000003DCAEA0093E9
      F90072E1F70045D4F30041CEF2003CC9F0008ADCF50070D0EF003DBBE4002FB5
      E1000000000000000000000000000000000000000000000000003DCAEA0093E9
      F90072E1F70045D4F30041CEF2003CC9F0008ADCF50070D0EF003DBBE4002FB5
      E100000000000000000000000000000000000000000039C25C2234BE55E57FCE
      90FFAEE1B5FF6DCC7AFF6ACA76FF68C872FF68C874FF68C875FF6BC979FFACDF
      B4FF76C489FF1C962DE51C942D22000000000000000000000000A1A1A175BABA
      BAFFBFBFBFFF989898DD9494941F919191058E8E8E058A8A8A1F878787E5A8A8
      A8FF9E9E9EFF7D7D7D75000000000000000000000000000000003FCCEB0064D9
      F1009AEBFA0048D8F40044D3F3003FCEF1003AC8F0008CDCF50062CBED0031B8
      E3000000000000000000000000000000000000000000000000003FCCEB0064D9
      F1009AEBFA0048D8F40044D3F3003FCEF1003AC8F0008CDCF50062CBED0031B8
      E3000000000000000000000000000000000000000000000000003BC55E5334C0
      55F47FCE90FFAFE1B7FF92D89DFF77CE83FF77CE83FF92D89DFFAEE1B5FF78C8
      8BFF1D9D32F41D9D365300000000000000000000000000000000A4A4A40CA1A1
      A1DBC4C4C4FFBEBEBEFFA1A1A1FF969696FF939393FF979797FFAEAEAEFFAEAE
      AEFF848484DB8181810900000000000000000000000000000000000000003FCC
      EB009AEDFA0099EBF90097E8F90094E5F80091E2F7008EDFF6008BDBF50056C7
      EB0031B8E3000000000000000000000000000000000000000000000000003FCC
      EB009AEDFA0099EBF90097E8F90094E5F80091E2F7008EDFF6008BDBF50056C7
      EB0031B8E3000000000000000000000000000000000000000000000000003DC7
      605336C259E659C274FF96D7A3FFA5DCAEFFA5DCAEFF95D6A1FF50B96AFF1FAB
      42E61FA94253000000000000000000000000000000000000000000000000A4A4
      A430A2A2A2DEBCBCBCFFCACACAFFCCCCCCFFCACACAFFC2C2C2FFADADADFF8C8C
      8CDE8989893000000000000000000000000000000000000000000000000040CE
      EC003FCCEB003ECBEA003CC9E9003BC7E9003AC4E80038C2E70036C0E60035BD
      E50033BBE40031B8E300000000000000000000000000000000000000000040CE
      EC003FCCEB003ECBEA003CC9E9003BC7E9003AC4E80038C2E70036C0E60035BD
      E50033BBE40031B8E30000000000000000000000000000000000000000000000
      000040C962233BC55E7D39C25BDB31BD54F32DBB52F32BB952DB2BB7527D28B4
      4E23000000000000000000000000000000000000000000000000000000000000
      0000A5A5A50CA3A3A381A0A0A0BA9D9D9DCC9A9A9ACC979797BA949494819090
      900C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008585
      850080808000C5C5C50000000000000000000000000000000000BCBCBC006464
      6400616161000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000369DD9FF3199D8FF2C94
      D7FF2890D6FF238CD5FF1E88D4FF1A84D3FF1580D2FF117CD1FF0E79D1FF0A76
      D0FF0773CFFF0470CFFF016ECEFF0000000013A8DE2113A4DC8711A1DACC119E
      D7F9119AD5CC1097D3871094D121FFFFFF00FFFFFF00109CDE21186FCCBF044D
      BCF90442BCFF044BBBF9075EC0C00D85CC2100000000CBCBCB008F8F8F00ABAB
      AB00C8C8C800A5A5A5007D7D7D0078787800747474007070700098989800C4C4
      C400949494007777770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003DA3DAFFBCEBFAFFBCEB
      FCFFBFEEFEFFC6F4FFFFCEF8FFFFD3FAFFFFD0F8FFFFC7F2FFFFBAE9FCFFB3E4
      F9FFB0E2F8FFB0E2F8FF0571CFFF0000000014ADE2705FCBEDFF8AE0F6FF88E3
      F9FF6FDAF4FF47C1E6FF1099D5BC1097D4CC0F93D3F91576CDF12665CAFF2177
      E6FF0579EAFF0164DDFF054EBDFF065BC0B400000000CDCDCD0000000000CECE
      CE0099999900CACACA0000000000000000000000000000000000C0C0C0007E7E
      7E00BDBDBD006A6A6A00000000000000000000000000000000006363630D5959
      594A505050CF484848E54545456E414141100000000000000000000000000000
      0000000000000000000000000000000000000000000043A8DBFFBFECFBFF59CF
      F5FF41B0ECFF4EBAEFFF5AC2EFFF60C6EFFF5CC4EFFF4CB6EFFF37A5E6FF2A9A
      E1FF38B8EEFFB1E3F8FF0975D0FF0000000016B2E6A98EDDF4FF9EE6FCFF85DE
      FAFF7BDDFAFF6CD3F2FF24A9DFFF61D1F1FF72DEF9FF0851BFFF639DF4FF187F
      FFFF0076F8FF0076EEFF0368E1FF044BBBF600000000F0F0F000C2C2C2009696
      9600919191008C8C8C0087878700838383007E7E7E007A7A7A00757575007171
      7100000000006F6F6F000000000000000000000000007777770B6E6E6EB56464
      64B45C5C5C255252523B494949D3454545DE4242421C00000000000000000000
      0000000000000000000000000000000000000000000049ADDCFFC1EEFBFF5FD3
      F7FF6CDBFCFF7FE5FFFF8FEDFFFF97F2FFFF93EDFFFF7CDFFFFF5BCCF8FF46BE
      EFFF3CBAEEFFB3E3F9FF0E79D1FF0000000016B7E9FFBFF1FDFF74D9F7FF5BD1
      F6FF44CBF5FF8EE6FCFF12A2DCFF47C7F4FF2EB6F1FF0442BCFFAECDFEFFFFFF
      FFFFFFFFFFFFFFFFFFFF187FEFFF0442BCFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0072727200797979000000000000000000000000008282822E787878E97070
      70150000000000000000535353254B4B4BA3464646D943434316000000000000
      000000000000000000000000000000000000000000004EB2DDFFC3EFFBFF65D6
      F8FF4CB6ECFF5ABDEFFF95EBFFFF3097DDFF4D82ABFF84E1FFFF41A9E9FF329F
      E1FF42BEEFFFB4E5F9FF137ED2FF0000000018BBECFFBDEFFCFF99E3FBFF89DF
      FAFF74D9F9FF63DAF8FF13A8E0FF5BD2F9FF44C9F7FF0653C0FF8DB5F6FF4D92
      FFFF1177FFFF2186FFFF408AEBFF044EBEFA000000000000000000000000A0A0
      A0009C9C9C0097979700929292008E8E8E008989890084848400808080007E7E
      7E00B0B0B000747474000000000000000000000000008C8C8C47848484E27B7B
      7B1800000000000000005F5F5F895656565C4C4C4C99474747DB444444120000
      0000000000000000000000000000000000000000000053B7DEFFC6F0FCFF6AD9
      F8FF7CE2FDFF90E8FFFF99E9FFFF329FDFFF548BB2FF8AE2FFFF6AD0F9FF50C5
      F1FF46C1F0FFB6E7F9FF1883D3FF0000000019C0EFFFAAEAFBFF78DAF8FF61D4
      F6FF44CDF5FF66DBF8FF14ADE4FF36C1F2FF2BB7F1FF1C87DDFF3775D2FF8DB5
      F7FFB8D6FEFF72A8F5FF2D6BCBFE0860C89A0000000000000000D6D6D600C9C9
      C900D9D9D900B1B1B100D6D6D600A9A9A900D2D2D200A2A2A200CFCFCF009A9A
      9A00CBCBCB0078787800000000000000000000000000989898278F8F8FEF8585
      85A77D7D7D01737373AC6A6A6AD7606060E6585858804F4F4FA0484848EC4444
      440E000000000000000000000000000000000000000058BBDFFFC7F1FCFF6FDC
      F9FF56BBEDFF61BDEFFF9BE7FFFF35A6E2FF4BA4E1FF90E2FFFF49ADE9FF38A4
      E3FF49C4F0FFB8E8F9FF1E88D4FF000000001BC4F1FFCFF5FEFFC3F0FEFFBDEF
      FEFFA2E7FCFF99E8FCFF15B3E7FF5ED3F9FF48CCF8FF36C2F5FF4199E0FF0E57
      C3FF0442BCFE0345B9E20345B978FFFFFF000000000000000000AFAFAF00F3F3
      F300B8B8B800EBEBEB00B1B1B100E9E9E900AAAAAA00E7E7E700A3A3A300E5E5
      E5009B9B9B007D7D7D0000000000000000000000000000000000999999219191
      91E0888888987E7E7E8B7676764B6C6C6C09636363D95959597F505050A24848
      48EA4545451F000000000000000000000000000000005CBFE0FFC8F3FCFF75DF
      F9FF89E6FDFF95E7FFFF9AE5FFFFAAEEFFFFA8EDFFFF99E3FFFF74D5F9FF59CC
      F3FF4FC8F1FFBBE9FAFF248DD5FF000000001BC8F4FFDAF7FEFFD1F4FFFFC3F1
      FFFFB7EEFFFFBFF2FEFF17B7EBFF3AC4F3FF2DBBF2FF20B0EFFF51C7F4FF12A5
      DFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B7B7B700D1D1D100BFBF
      BF00DDDDDD00B9B9B90041AB77003AA870002B9F5F00229A5500D3D3D300A3A3
      A300CFCFCF0088888800F9F9F900000000000000000000000000000000009B9B
      9B25929292E48A8A8A9F808080977777775E6E6E6E09646464DA5C5C5C8A5252
      52A1494949E24545451900000000000000000000000060C2E1FFC9F3FCFFCBF3
      FDFFD4F6FEFFD7F6FFFFD8F4FFFFE0F8FFFFDFF8FFFFDAF5FFFF369AD5FF369A
      D5FF369AD5FFBDEBFAFF2B93D6FF000000001CCBF68891E1FAFFDFF8FFFFD7F7
      FFFFCCF4FFFFA9E9FAFF2AC2F0FF64D6F9FF4CCFF8FF3BC6F6FF68D6F9FF14AA
      E2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BBBBBB00C5C5C500EFEF
      EF00C0C0C000EDEDED003FAC79009FD2B70098CDAF001D984D00ABABAB00E8E8
      E800A4A4A40099999900ECECEC00000000000000000000000000000000000000
      00009C9C9C1F949494ED8B8B8BB08282829A7878786570707012666666C55D5D
      5D88535353944B4B4BD946464615000000000000000061C3E1FF909395FF9191
      91FF8E8E8EFF5AB9DCFF55B8DFFF51B5DEFF4DB1DDFF49ADDCFF46A8D7AF369A
      D55F369AD5B6359AD6FF3199D8FF000000001ECEF80E1DCCF7E41BCAF6FC1BC8
      F5FF1AC5F4F81AC2F2FF79DCF8FF3CC7F4FF30BFF3FF23B5F0FF6CD7F9FF14AF
      E5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00C1C1C100D7D7D700E2E2E200C6C6
      C600E0E0E000C1C1C1003AB07800A1D3B70098CEAE0016974800D7D7D700ABAB
      AB00D3D3D300AAAAAA00E0E0E000000000000000000000000000000000000000
      0000000000009E9E9E17959595F08C8C8CB48484849F7B7B7B527171710B6969
      69C15F5F5F84565656B54C4C4CE7000000000000000000000000939393F6B9B9
      B9FF919191EB0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0019C3F1FFA2E9FCFF69D9FAFF51D2F9FF3EC9F7FF5ACCF5FF15B3
      E8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00C3C3C300FBFBFB00F8F8F800F8F8
      F80054BE90004CB9850069BF9600A3D3B70099CCAC0040A9690013933D000C85
      2D00F0F0F000D7D7D7009C9C9C00CECECE000000000000000000000000000000
      000000000000000000009F9F9F14989898DE8F8F8FB3858585AF7D7D7D4F0000
      0000000000006060602B585858E7000000000000000000000000939393F3BCBC
      BCFF929292EE000000000000000000000000000000008F8F8FEB939393FF8F8F
      8FE700000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001BC6F3FF87E2FAFF40CBF5FF34C4F3FF25BAF1FF5CCDF6FF17B7
      EBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C4C400C4C4C400C2C2C200BFBF
      BF0044BF8D007BCAA800AED9C00091CCAA007FC39B0092C9A5004AAA69001686
      3000C4C4C400FAFAFA00E3E3E300A2A2A2000000000000000000000000000000
      0000000000000000000000000000A2A2A21B999999DF919191B1888888D17E7E
      7E52000000006C6C6C38636363F6000000000000000000000000939393ECC0C0
      C0FFACACACFF9292925B00000000000000008686865E8F8F8FFFA2A2A2FE7A7A
      7ADB00000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001CC9F4FFBAF0FDFFAAEAFEFFA2E9FEFF79DDFBFF7BDFFBFF17BB
      EDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000003ABF80006FC79E00ABD7BC009ED0AF0054B3750067B67B000000
      0000A2A2A2009D9D9D0099999900D8D8D8000000000000000000000000000000
      000000000000000000000000000000000000A3A3A3219B9B9BE9929292D78A8A
      8AE2808080B58E8E8EFF6E6E6E7E000000000000000000000000A1A1A128ADAD
      ADF2C7C7C7FFAAAAAAFF929292FF929292FF9F9F9FFFB4B4B4FF929292F22121
      215300000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001CCCF6FFD6F7FFFFBCEFFFFFABEBFFFF9AE6FFFFA7EDFDFF18BF
      F0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000025BD690063C493005EBE86004AB06300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A51B9C9C9CE99494
      94CA8B8B8B3C828282310000000000000000000000000000000000000000A1A1
      A168AEAEAEFEC8C8C8FFCACACAFFCACACAFFBEBEBEFF9B9B9BFE878787680000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001ECFF7F3A2E7FBFFD3F6FFFFC7F4FFFFBBF1FFFFA2E9FBFF1AC3
      F2DCFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FEFFFE000BB7500044B6630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A4A442A1A1A1B19A9A9AEA9A9A9AF5969696B192929242000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001FD1F9241ECFF8E41ECEF7FC1CCCF6FF1CCAF5F81BC8F4CE1BC6
      F44FFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001277
      A90004609700000000000000000000000000000000000000000000000000036C
      A300086FA5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C689A0056CA
      E90034B0D700025D9300000000000000000000000000000000001080B20081E0
      F3000D8BBD000C689A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002892
      BF005DF0FF0038B6DC0004659A0000000000000000001F8BBA00A1EEFB0041D4
      F7002892BF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A67
      9A0048D3F60050E9FF0048C2E300076B9F002392BF00B5F2FB0050EAFF0048D3
      F600005A91000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A679A0035DDFF0055E3FF0058D7F300A5EEFC0081EEFF0043DEFC000A67
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A679A0030D4FF0057E1FF0075E7FF0084F3FF000A679A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000462
      97000A679A000FC6FB0018CBFF0035D5FF0055DDFF007FEDFF0063CEE7000A67
      9A000A679A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000005A91001A79A90056C4
      E50047E0FF001CCCFF000AC6FE001CCCFE003AD7FF0059E0FF0083EEFF0075E5
      F7002EA5CC002EA5CC00005A9100000000000000000000000000000000000000
      0000938378003A342F000D0C0B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000106EA0006BB8D300D3FFFF00BFFF
      FF0080F2FF0050E5FF001CCEFF000AC5FE001DCCFE003EDDFF0064EDFF008FF8
      FF0089FEFF004CD3ED006BB8D300005A91000000000000000000000000009181
      7500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005A9100005A9100005A9100005A
      9100005A9100005A910055CEF00019CEFF000CC9FF0016A7DA00005A9100005A
      9100005A9100005A9100005A9100005A91000000000000000000000000003A34
      2F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000005A910049E2FF0014CBFF00036FA700000000000000
      0000000000000000000000000000000000000000000000000000000000000E0D
      0B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000005A910073EDFF0031CCF700066BA000000000000000
      0000000000000000000000000000000000000000000000000000000000003C36
      3200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000005A910093EFFC0041BCE10003609700000000000000
      000000000000000000000000000000000000000000000000000000000000988A
      7E0000000000000000000000000000000000887C71000000000000000000887C
      7100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000005A9100ADEEF80041A4CA00005A9100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000978A7E003C36320000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000005A9100B8E3EF0046A0C500005A9100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001875A5000B699D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000299C
      DE00299CDE00A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD735200C65A0000AD4A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000299CDE008CD6
      EF0084D6F700CEC6BD00FFEFDE00F7EFE700F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00A57B7300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B55A3100C65A0000CE63
      0000B55210000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00A5E7FF0094EF
      FF008CF7FF00CEC6BD00F7E7D600F7E7D600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7DEC600F7E7D600A57B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B55A3100C663
      0000CE630000B55A210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00A5E7FF0094EF
      FF0084EFFF00CEC6BD00F7E7DE00FFE7CE00F7DEBD00F7DEBD00F7DEBD00F7DE
      BD00F7DEC600F7E7D600A57B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B55A
      2100CE630000C6630000C6846300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00ADEFFF00A5EF
      FF0094EFFF00CEC6BD00F7E7E700F7E7D600F7DEC600F7DEC600F7DEBD00F7DE
      BD00F7DEC600F7E7D600A57B73000000000000000000AD4A0000BD5A0000BD5A
      0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000C6846300000000000000
      0000AD4A0000CE630000B54A0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00B5EFFF00ADEF
      FF00A5EFFF00CEC6BD00F7EFE700F7EFDE00FFE7CE00FFE7CE00FFE7CE00F7DE
      C600F7E7D600EFE7DE00A57B73000000000000000000B5520000D6730000CE6B
      0000CE630000CE630000CE630000CE630000C6630000BD6B4200000000000000
      0000CE9C8400C6630000C6630000C68463000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00BDEFFF00BDF7
      FF00ADF7FF00CEC6BD00FFF7EF00FFE7CE00FFDEBD00F7DEBD00F7DEBD00FFDE
      B500F7DEC600F7EFE700A57B73000000000000000000BD5A0000DE7B0000D673
      0000CE630000A5421000CE9C8400CE9C8400CE9C840000000000000000000000
      000000000000AD4A0000CE630000B55210000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00C6EFFF00CEF7
      FF00BDF7FF00CEC6BD00FFF7F700FFF7EF00F7EFE700F7EFE700F7EFDE00F7EF
      DE00F7EFE700EFE7DE00A57B73000000000000000000C6630000E7840000CE63
      0000DE730000CE630000C6846300000000000000000000000000000000000000
      000000000000C6734200CE630000B54A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00CEEFFF00DEF7
      FF00CEF7FF00CEC6BD00FFF7F700FFFFFF00FFFFFF00FFF7F700F7F7F700EFE7
      DE00D6BDB500C6ADA500A57B73000000000000000000CE630000F7940000B552
      1000B5520000DE7B0000CE6B0000BD7B52000000000000000000000000000000
      000000000000C6734200CE630000B54A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00CEEFFF00E7FF
      FF00DEF7FF00CEC6BD00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00DECE
      C600E7AD7300C6AD8C00000000000000000000000000CE6B0800FF9C0800CE84
      420000000000B5520000E7840000CE6B0000BD63310000000000000000000000
      000000000000B54A0000CE630000B55210000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00D6F7FF00F7FF
      FF00E7FFFF00CEC6BD00FFEFE700FFF7EF00FFF7EF00FFEFEF00FFF7EF00E7C6
      BD00C6AD8C00299CDE00000000000000000000000000CE732100FFAD3100CE84
      4A000000000000000000C6631000E7840000E77B0000BD520000C67B5200C68C
      7300B5521000C6630000C6630000C68463000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00DEF7FF00FFFF
      FF00F7FFFF00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6
      BD0084C6DE00299CDE00000000000000000000000000CE7B3900FFBD6300C67B
      5200000000000000000000000000B55A2100E77B0000E7840000DE7B0000D673
      0000CE6B0000C6630000AD4A1000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00DEF7FF00F7F7
      F700ADC6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00B5D6D600DEFF
      FF0084D6F700299CDE00000000000000000000000000CE947B00C6845A000000
      000000000000000000000000000000000000CE9C8400C6631000CE6B0000CE6B
      0000BD5A0000BD6B420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00DEF7FF00DECE
      C600BDA59C00A57B7300A57B7300A57B7300A57B7300A57B7300BD9C9400E7EF
      E70094DEF700299CDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000299CDE00B5D6
      E700949C9C00E7DED600F7E7D600F7E7D600F7E7D600CEC6BD00849CA5008CCE
      E700299CDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000299C
      DE00299CDE009C948C009C948C009C948C009C948C009C948C00299CDE00299C
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD5A5A00AD52
      5200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CEC600C6CEC600B59C
      9C009C4242009C424200A5525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A00000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD7B7300CE636300CE6B
      6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFFF700F7F7F700CEB5
      B500942929009C313100C65A5A00AD5A5A000000000000000000000000000000
      0000AD390000A54200008C290000000000000000000000000000A5420000A542
      00008C2900000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7E7CE008C5A5A00000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      00000000000000000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7F700FFFFFF00D6B5
      B500943131009C313100BD5A5A00AD5A5A00000000000000000000000000C65A
      0000A5420000A5420000A54200008C29000000000000A5420000AD390000A542
      0000AD3900008C29000000000000000000000000000000000000000000000000
      000000000000B58C8C00F7EFDE00F7DECE00F7DEC600F7DEC600F7DEC600F7DE
      C600EFDECE00EFDECE008C5A5A00000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C6000000000000000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A00AD8484009C3939009C393900CEBDBD00EFEFEF00FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A00000000000000000000000000AD39
      00000000000000000000000000008C29000000000000AD390000000000000000
      0000000000008C29000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFDECE008C5A5A00000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD60000000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6D600FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A00000000000000000000000000AD39
      00008C29000000000000000000008C29000000000000AD390000000000000000
      0000C65A00008C290000000000000000000000000000B58C8C008C5A5A008C5A
      5A008C5A5A00B58C8C00FFF7EF00F7DEC600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7E7CE00EFDECE009C6B6300000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF0000000000000000000000000000000000BD7B7300CE636300CE63
      6300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5A500E7C6C600DEAD
      AD00A5393900A5393900C65A5A00AD5A5A00000000000000000000000000C65A
      0000AD390000A5420000AD390000AD39000000000000AD390000AD390000A542
      0000AD3900008C290000000000000000000000000000B58C8C00FFF7E700F7EF
      DE00F7EFDE00B58C8C00FFF7EF00F7E7CE00F7DEC600F7DEC600F7DEC600F7DE
      C600F7E7D600EFDECE009C6B6B00000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C600000000000000000000000000BD7B7300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300C65A5A00C65A5A00CE63
      6300CE636300CE636300CE6B6B00AD525A000000000000000000000000000000
      0000C65A0000A5420000A54200009C4A18008C634A00AD390000A5420000A542
      00008C29000000000000000000000000000000000000B58C8C00F7EFDE00F7DE
      CE00F7DEC600B58C8C00FFFFF700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFE7D600A57B7300000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C600000000000000000000000000BD7B7300B5525200B55A
      5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5A500D6A5A500D6AD
      A500D6ADAD00D69C9C00CE636300AD5252000000000000000000000000000000
      00000000000000000000000000008C736B004242420063524200000000000000
      00000000000000000000000000000000000000000000B58C8C00FFF7E700FFD6
      A500FFD6A500B58C8C00FFFFF700FFE7D600FFE7D600F7E7D600F7E7CE00FFE7
      D600FFF7E700EFDEDE00A57B7300000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C6000000000000000000BD7B7300AD524A00E7CE
      CE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      000000000000000000008C736B009C847B009C847B009C847B00635242000000
      00000000000000000000000000000000000000000000B58C8C00FFF7EF00F7DE
      C600F7DEC600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700EFDE
      DE00D6C6C600BDADAD00B5847300000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A00007308000000000000000000BD7B7300B5524A00EFD6
      D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7F7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000008C736B009C847B00B5A59C0000000000B5A59C009C847B006352
      42000000000000000000000000000000000000000000B58C8C00FFF7EF00F7E7
      CE00F7DEC600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700B58C
      8C00B58C8C00B58C8C00B58C8C00000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C6000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000000000
      00008C736B009C847B00B5A59C00000000000000000000000000B5A59C009C84
      7B006352420000000000000000000000000000000000B58C8C00FFFFF700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00EFB56B00C68C7B0000000000000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD290008841000000000000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DED6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000008C73
      6B009C847B00B5A59C000000000000000000000000000000000000000000B5A5
      9C009C847B0063524200000000000000000000000000B58C8C00FFFFF700FFE7
      D600FFE7D600B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C
      8C00BD8484000000000000000000000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A5180000000000000000000000000000000000BD7B7300B5524A00EFD6
      D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000009C84
      7B00B5A59C000000000000000000000000000000000000000000000000000000
      0000B5A59C009C847B00000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700EFDEDE00D6C6C600BDADAD00B58473000000
      000000000000000000000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000088C100008A5
      18000884100000000000000000000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A00000000000000000000000000B5A5
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000B5A59C00000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700B58C8C00B58C8C00B58C8C00B58C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000087B
      08000000000000000000000000000000000000000000BD7B7300B5524A00E7D6
      CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD524A00CEB5
      B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600CEADAD00A54A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00BD84840000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000D00100000100010000000000800E00000000000000000000
      000000000000000000000000FFFFFF0080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F3FFE07FFE0F0000C07FC03FFC070000
      803F801FF00300008FCF8007C00300008FEF8001C00100000FFF800100010000
      8BFF8001000000008FF781C100000000CFF3800000000000EFC1800080000000
      FFF0BC0080000000FFF1B800C0010000F3F1B00CC0030000F8E10400C0070000
      FC030601E03F0000FF87FF83F87F0000FFFFF00FFFC1C07FFFFFC003FF81C07F
      10088001FF01E00000008001C001000000000000800300000000000000070000
      00000000000F000000000000000F000000000000000F000000000000000F0000
      00000000000F000000000000000F000000008001000F0000FFFF8001801FF800
      FFFFC003C03FFC00FFFFF00FFFFFFF00FFFFFFFFFFFFFFFF87E1C003C003C003
      87E1800180018001000080018001800100008001800180010000800180018001
      00008001800180010000C003C003C0038000E007E007E0078001F00FF00FF00F
      CFF3F007F007F007CFF3F007F007F007CFF3F00FF00FF00FE007F00FF00FF00F
      E007F81FF81FF81FFFFFFFFFFFFFFFFFEFF3FFC7FF3FF03FE3C78001FE1FF01F
      E0078001FC0FF00FE0078000F807F007E0078000F003F003E0078000E001E001
      C0038001C000C000800180018000800080008001000100000000800100030000
      0000800100070000F81F8001000F000FFC1F8001101F101FFC3F8001003F003F
      FE7F8001007F007FFE7FFFFF00FF00FFE007E007E00192490000000000004924
      0000000000002492000000000000924900000000000049240000000000002492
      0000000000009249000000000000492400000000000024920000000000009249
      8001800180014924C003C003C0032492E007E007E0079249E007E007E0074924
      E007E007E0072492E01FE01FE01F9249FC3F80018001E00FF00F80008000E00F
      C00300000000E00F000000000000E00F000000000000E00F000000000000E00F
      000000000000E00F000000000000E00F000000000000E00F000000000000E00F
      000000000000E00F000000000000E00F800100010001E00FC00380018001E00F
      F00F80038003FFCFFC3F80078007FFCFC7C1FFFFFF9FFC3F8080FFFFC78FF00F
      8000C003C027C0038000C003C00300000000C003800300000000C00380030000
      0000C003800300000001C003800100008001C00380010000E003C00380010000
      F001C00300080000F801C00300080000FC03C003001C8001FE07C003001EC003
      FF0FFFFF001FF00FFF9FFFFFF87FFC3FF07F8001FFFFC7FF80018001FFE780FF
      80018001FFC3807F80018001FF83800F80018001FF03000380018001C0030000
      800180018007000080008001800F000180008001801F800180008001801FE003
      8000C3C3801FF0018001C3C3801FF8018001C003801FFC038001C003801FFE07
      8001E007E03FFF0FFFFFF00FFFFFFF9FFFFF00008000FFFFF00F00000000FFFF
      E00700000000F000C00300000000F000800100000000C000800100000000C000
      8001000000000000800100000000000080010000000000008001000000000000
      80010000000000008001000000000003C003000000000003E00700000000000F
      F00F00000000000FFFFF00000000FFFF0000FFFFFFFFFFFF0000F00FF00F0000
      0000E007E00700000000C003C0030000000080018001E003000080018001E003
      0000800180018001000080018001000000008001800100000000800180010000
      0000800180018001000080018001C0030000C003C003E0070000E007E007F00F
      0000F00FF00FF81F0000FFFFFFFFFC3FFFFFFFFF000080008001FFFF00000000
      8001800100000000800180010000000080018001000000008C11800100000000
      8C118001000000008C118001000000008C118001000000008C31800100000000
      8F11800100000000800180010000000080018001000000008001FFFF00000000
      8001FFFF00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFF0000F00FFFFF
      00000000E007000000000000C003000000008001800100000000800180010000
      0000C003800100000000C003800100000000E007800100000000F00F80010000
      0000F00F800100000000F81F800180010000F81FC003C003FFC0FC3FE007F00F
      FFE0FC3FF00FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFF00F0000F801FFFF
      E0070000F801FFFFC0030000E001000080010000E00100008001000080010000
      8001000080010000800100008001000080010000800100008001000080010000
      80010000800100008001000080070000C003000080070000E0070000801F0000
      F00F0000801FFFFFFFFF0000FFFFFFFFFFFFF07FFC00FFFFFFFFF03FF0008001
      C003C00F80008001C003800700008001C003800700008001C0038003000091D9
      C003800100009511C003800000009511C003800000009511C003800000009111
      C0038000000F8001C0038007000F8001C0038007000F8001C0038007000F8001
      FFFF8007000F8001FFFFC00F801FFFFF800080008000C07F000000000000C07F
      000000000000E000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F800
      000000000000FC00000000000000FF00FC3FFC3FFC070000E007E007E0030000
      C003C003C001000080018001800000008001800180000000C003C003C0000000
      0000000000000000018001800180000001800180018000000000000000000000
      C003C003C003000080018001800100008001800180010000C003C003C0030000
      E007E407E4070000FC3FFC3FFC3F0000FFC1E3C7FFFFFFFFE3808003FFFFE0FF
      8000A3C30C30C00FA380800B0C3080078000FFE30C300003FF80E0030C300001
      E001C003FFFF0001C003C003DFFB0001C0038001C003000180018001FE7F0001
      80010001FFFF000100010000FC3F000100000000FC3F00010000FC30FC3F8003
      FFF0FC3FFC3FC007FFFFFC3FFFFFE00FFFFFFFFFFFFFFFC18001F00FE3C7E380
      8001E007800380008001C003A3C3A38080018001800B800080018001FFE3FF80
      80018001E003E00180018001C003C00380018001C003C0038001800180018001
      800180018001800180018001000100018001C003000000008001E00700000000
      8001F00FFFF0FFF0FFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFC003F03F8001
      FFFFC00380078001FFFFC00380078001FFFFC00380078001F81FC00380038001
      F81FC00380018001F81FC00380008001F81FC00380008001F81FC00380008001
      F81FC00380008001FFFFC00380078001FFFFC00380078001FFFFC00380078001
      FFFFC00380078001FFFFFFFF8007FFFFF800FF03FFFFFFFFF800FC00801FFFFF
      F000F0009007FFFFC001C0008003FFFF000000008001FFFF000000008001F81F
      000000008001F81F00000000C001F81F000000008001F81F000000018001F81F
      00000001C001F81F00000001C003FFFF8001F001E004FFFF8001F003F000FFFF
      F00FF003FE00FFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFC3F
      00010000FFFF000000010000FFFF000000010000FFE7000000010000FFC70000
      0001000080030000000100008001000000010000800100000001000080030000
      00010000FFE7000000010000FFE7000000010000FFFF000000010000FFFF0000
      00010000FFFF8181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00FFFFFFFFF
      E007E00700010001C003C0030001000180018001000100018001800100010001
      8001800100010001800180010001000180018001000100018001800100010001
      80018001000100018001800100010001C003C00300010001E007E00700010001
      F00FF00F00010001FFFFFFFFFFFFFFFF8001EFFFEFFFFFFF8001E3FFE3FFF00F
      8001E1FFE1FFE0078001F07FF07FC0038001F83FF83F80018001F80FF80F8001
      8001000700078001800100010001800180010001000180018001803F803F8001
      C3C3801F801F8001C3C3C00FC00F8001C003C00FC00FC003C003E007E007E007
      E007E003E003F00FF00FFFFFFFFFFFFFE3C7FFFF800100008003FFFF80010000
      A3C3C0FF80010000800B807F80010000FFE38C3F80010000E0038C1F80010000
      C003800F80010000C003C007800100008001E003800100008001F00180010000
      0001F801C7FF00000000FC19C78F00000000FE09C30F0000F810FF01C00F0000
      FC3FFF83E01F0000FC7FFFFFF03F0000FFFFFFFFE7E7FFFFFFFFFFFFC3C3FFFF
      FFFFFFFFE187FEDFC007C007E007FEDFFFFFFFFFF00FFEDFF807F83FF81FFEDF
      FFFFFFFFE007FEDFC007C0078001F0DFFFFFFFFF0000E0DFF807F01F0000E0DF
      FFFFFFFFFC3FE0DFC007C007FC3FE0DFFFFFFFFFFC3FE04FF807F83FFC3FF007
      FFFFFFFFFC3FFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E00FFFFF8FFFFFFFFFFFFFFF8C03C007F83F10388FFFFFFFF39FBAD7FFFFC03F
      F39F0000FFFFFFFFF39FD6378FFFC007F39FC6D78C03FFFFF39FEED68FFFC03F
      F39FEC38FFFFFFFFF39FFFFFFFFFC007E10FFFFF8FFFFFFFFFFFFFFF8C03C03F
      FFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFE001FF8FFFFFFFFFC001FF87FFFFFFFF
      8001FFC3FFFFFFFF8001FFE1FFFFFFFF80018031F00F81FF80018030F8C7E3FF
      80018078F8C7F1FF800181F8F8C7F8FF800180F8F80FFC7F80038878F8C7FE3F
      80038C00F8C7FF1F80038E01F8C7FF8F80039F03F00FFF038003FFFFFFFFFFFF
      C007FFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFC001FFFFF8018FFF8000F1C7F801
      807F8000E083F801800F8000EEBBF80180078000E6B3800180078000E0838001
      80038000F007800180038000FE3F800180018000FC1F800180018000F88F8001
      80018000F1C7800380038000E3E3800780078000E7F3801FC3C78000EFFB801F
      FE0F8000FFFF803FFFFFC001FFFF807F00000000000000000000000000000000
      000000000000}
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 1249
    Top = 208
  end
  object menu_tabelas_fiscais: TAdvPopupMenu
    Images = ImageList1
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.6.2.1'
    Left = 1280
    Top = 384
    object NFeExportarNotaFiscal1: TMenuItem
      Caption = 'Nfe - Exportar Nota Fiscal'
      OnClick = NFeExportarNotaFiscal1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Inutilizar1: TMenuItem
      Caption = 'Inutilizar Nota Fiscal Eletronica'
      OnClick = Inutilizar1Click
    end
    object ZerarNotaFiscal1: TMenuItem
      Caption = 'Zerar Nota Fiscal Cancelada'
      OnClick = ZerarNotaFiscal1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ModelosdeNotasFiscais1: TMenuItem
      Caption = 'Modelos de Notas Fiscais'
      ImageIndex = 89
      OnClick = ModelosdeNotasFiscais1Click
    end
    object CFOP1: TMenuItem
      Caption = 'CFOP'
      ImageIndex = 105
      OnClick = CFOP1Click
    end
    object ClassesdeRecolhimento1: TMenuItem
      Caption = 'CST'
      ImageIndex = 33
      OnClick = ClassesdeRecolhimento1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MemorandodeExportao1: TMenuItem
      Caption = 'Memorando de Exporta'#231#227'o'
      ImageIndex = 27
    end
  end
  object pop: TAdvPopupMenu
    Images = ImageList1
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.6.2.1'
    Left = 1224
    Top = 456
    object Incluir2: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 115
      OnClick = Cancelar1Click
    end
    object LocalizarFiltro2: TMenuItem
      Caption = 'Localizar / Filtro'
      ShortCut = 117
      OnClick = b
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 118
      OnClick = Imprimir1Click
    end
    object Relatrios2: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 119
      OnClick = bitbtn6Click
    end
    object ConfirmarNotaFiscal1: TMenuItem
      Caption = 'Confirmar Nota Fiscal'
      ShortCut = 121
    end
    object Sair2: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object espelho: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmManyPages
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 42059.666292222200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '       if <Parametros."Imagem"> = '#39#39' then                       ' +
        '                                               '
      '       begin                              '
      
        '               ReportTitle1.Visible := false;                   ' +
        '                                    '
      '       end;'
      
        '       // esconde informa'#231#227'o do protocolo quando em contingencia' +
        '                                                                ' +
        '                                                                ' +
        '                      '
      '       if <Parametros."Contingencia_Valor"> = '#39#39' then'
      '       begin'
      
        '               Memo5.Visible := false;                          ' +
        '                                        '
      
        '       end;                                                     ' +
        '                                    '
      'end;'
      ''
      'procedure DadosProdutosOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  DadosDesconto.Visible  := <DadosProdutos."vDesc"> > 0;'
      '  DadosAcrescimo.Visible := <DadosProdutos."vOutro"> > 0;      '
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Observacoes.Visible := Trim(<InformacoesAdicionais."OBS">) <> ' +
        #39#39'                '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 1248
    Top = 256
    Datasets = <
      item
        DataSetName = 'CalculoImposto'
      end
      item
        DataSetName = 'DadosProdutos'
      end
      item
        DataSetName = 'Destinatario'
      end
      item
        DataSetName = 'Duplicatas'
      end
      item
        DataSetName = 'Emitente'
      end
      item
        DataSetName = 'Eventos'
      end
      item
        DataSetName = 'Fatura'
      end
      item
        DataSetName = 'Identificacao'
      end
      item
        DataSetName = 'InformacoesAdicionais'
      end
      item
        DataSetName = 'ISSQN'
      end
      item
        DataSetName = 'LocalEntrega'
      end
      item
        DataSetName = 'LocalRetirada'
      end
      item
        DataSetName = 'Pagamento'
      end
      item
        DataSetName = 'Parametros'
      end
      item
        DataSetName = 'Transportador'
      end
      item
        DataSetName = 'Veiculo'
      end
      item
        DataSetName = 'Volumes'
      end>
    Variables = <
      item
        Name = ' User'
        Value = Null
      end
      item
        Name = 'LinhasImpressas'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 72.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      TopMargin = 0.500000000000000000
      EndlessHeight = True
      LargeDesignHeight = True
      PrintIfEmpty = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object ValorTributos: TfrxMasterData
        FillType = ftBrush
        Height = 32.015752910000000000
        Top = 631.181510000000000000
        Width = 272.126160000000000000
        RowCount = 1
        object Memo17: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 177.637934410000000000
          Height = 26.456690470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Informa'#231#227'o dos Tributos Totais Incidentes '
            '(Lei Federal 12.741/2012): ')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baRight
          Left = 177.637934410000000000
          Top = 3.779530000000000000
          Width = 94.488225590000000000
          Height = 26.456690470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[CalculoImposto."vTotTrib" #n%2,2f] [CalculoImposto."VTribFonte"' +
              ']')
          ParentFont = False
          WordWrap = False
        end
      end
      object MensagemFiscal: TfrxMasterData
        FillType = ftBrush
        Height = 111.385882910000000000
        Top = 729.449290000000000000
        Width = 272.126160000000000000
        RowCount = 1
        Stretched = True
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 48.897650000000000000
          Width = 272.126160000000000000
          Height = 26.456710000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Consulte pela chave de acesso em:'
            '[Identificacao."URL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 77.472480000000000000
          Width = 272.126160000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CHAVE DE ACESSO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          Top = 18.559060000000000000
          Width = 272.126160000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              'N'#250'mero: [Identificacao."NNF"] - S'#233'rie: [Identificacao."Serie" #n' +
              '#000]'
            
              'Emiss'#227'o [Identificacao."DEmi"] - [Parametros."DescricaoViaEstabe' +
              'lec"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          Top = 91.267762910000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."Chave"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Top = 1.220470000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."MensagemFiscal"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object Consumidor: TfrxMasterData
        FillType = ftBrush
        Height = 41.574768980000000000
        Top = 865.512370000000000000
        Width = 272.126160000000000000
        RowCount = 1
        Stretched = True
        object Memo58: TfrxMemoView
          Align = baWidth
          Top = 0.779530000000000000
          Width = 272.126160000000000000
          Height = 16.251970940000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CONSUMIDOR')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo46: TfrxMemoView
          Align = baWidth
          Top = 20.787369840000000000
          Width = 272.126160000000000000
          Height = 17.007839840000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Destinatario."Consumidor"]')
          ParentFont = False
        end
      end
      object Rodape: TfrxMasterData
        FillType = ftBrush
        Height = 175.637892910000000000
        Top = 929.764380000000000000
        Width = 272.126160000000000000
        RowCount = 1
        object ImgQrCode: TfrxPictureView
          Align = baWidth
          Top = 20.322834650000000000
          Width = 272.126160000000000000
          Height = 117.165322600000000000
          Center = True
          Frame.Color = clFuchsia
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Top = 158.181200000000000000
          Width = 272.126160000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Contingencia_Valor"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Consulta via leitor de QR Code')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Top = 141.401670000000000000
          Width = 272.126160000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Protocolo de Autoriza'#231#227'o')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object DadosProdutos: TfrxMasterData
        FillType = ftBrush
        Height = 26.456702680000000000
        Top = 325.039580000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'DadosProdutosOnBeforePrint'
        DataSetName = 'DadosProdutos'
        RowCount = 0
        Stretched = True
        object Memo131: TfrxMemoView
          ShiftMode = smDontShift
          Width = 75.590560940000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DadosProdutos."CProd"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo132: TfrxMemoView
          ShiftMode = smDontShift
          Left = 76.031500940000000000
          Width = 196.535599060000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DadosProdutos."DescricaoProduto"]')
          ParentFont = False
        end
        object memqCom: TfrxMemoView
          Top = 13.496065430000000000
          Width = 79.370093390000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."QCom"] [DadosProdutos."UCom"]')
          ParentFont = False
          WordWrap = False
        end
        object memvUnCom: TfrxMemoView
          Left = 79.370078740000000000
          Top = 13.496065430000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VUnTrib"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          Left = 173.858267720000000000
          Top = 13.496065430000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VProd"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object DadosProdutosHeader: TfrxGroupHeader
        FillType = ftBrush
        Height = 27.590560940000000000
        Top = 275.905690000000000000
        Width = 272.126160000000000000
        Condition = 'DadosProdutos."ChaveNFe"'
        object Memo121: TfrxMemoView
          Left = 56.692913390000000000
          Top = 14.472448270000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UN')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 79.370078740000000000
          Top = 14.472448270000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VL.UNIT')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Top = 1.354328270000000000
          Width = 68.031500940000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 68.472440940000000000
          Top = 1.354328270000000000
          Width = 204.094659060000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Top = 14.472448270000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 173.858267720000000000
          Top = 14.472448270000000000
          Width = 98.267892280000000000
          Height = 11.338572910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'VL.TOTAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object DadosPagamentoHeader: TfrxGroupHeader
        FillType = ftBrush
        Height = 98.401630940000000000
        Top = 472.441250000000000000
        Width = 272.126160000000000000
        Condition = 'DadosProdutos."ChaveNFe"'
        ReprintOnNewPage = True
        object memTitDadosPagamento: TfrxMemoView
          Top = 6.338590000000000000
          Width = 128.504020000000000000
          Height = 91.842570940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'QTD. TOTAL DE ITENS'
            ''
            'Valor Produtos'
            'Descontos'
            'Acr'#233'scimos'
            'VALOR A PAGAR'
            ''
            'FORMA DE PAGAMENTO  ')
          ParentFont = False
          WordWrap = False
        end
        object memDadosPagamento: TfrxMemoView
          Left = 128.504020000000000000
          Top = 6.338590000000000000
          Width = 143.622140000000000000
          Height = 91.842570940000000000
          DataSetName = 'Parametros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."QtdeItens"]'
            ''
            '[CalculoImposto."VProd" #n%2.2f]'
            '[CalculoImposto."VDesc" #n%2.2f]'
            '[CalculoImposto."VOutro" #n%2.2f]'
            
              '[<CalculoImposto."VProd"> - <CalculoImposto."VDesc"> + <CalculoI' +
              'mposto."VOutro"> #n%2.2f]'
            ''
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 272.126160000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object DadosPagamento: TfrxMasterData
        FillType = ftBrush
        Height = 14.740159920000000000
        Top = 593.386210000000000000
        Width = 272.126160000000000000
        DataSetName = 'Pagamento'
        RowCount = 0
        Stretched = True
        object Memo19: TfrxMemoView
          Top = 2.000000000000000000
          Width = 128.504020000000000000
          Height = 12.472440940000000000
          DataSetName = 'Pagamento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Pagamento."tPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 128.504020000000000000
          Top = 2.110233780000000000
          Width = 143.622140000000000000
          Height = 12.472440940000000000
          DataSetName = 'Pagamento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pagamento."vPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        PrintChildIfInvisible = True
        object ImgLogo: TfrxPictureView
          Left = 45.354360000000000000
          Top = 2.677180000000000000
          Width = 177.637910000000000000
          Height = 64.252010000000000000
          Center = True
          DataField = 'LogoCarregado'
          DataSetName = 'Parametros'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object DadosDesconto: TfrxDetailData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 374.173470000000000000
        Width = 272.126160000000000000
        RowCount = 1
        object Memo7: TfrxMemoView
          Left = 173.858380000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '- [DadosProdutos."vDesc"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 71.811070000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 173.858380000000000000
          Top = 11.338590000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<DadosProdutos."vProd"> - <DadosProdutos."vDesc">]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 71.811070000000000000
          Top = 11.338590000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor l'#237'quido')
          ParentFont = False
          WordWrap = False
        end
      end
      object DadosAcrescimo: TfrxDetailData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 423.307360000000000000
        Width = 272.126160000000000000
        RowCount = 1
        object Memo11: TfrxMemoView
          Left = 173.858380000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '+ [DadosProdutos."VOutro"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 71.811070000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Acr'#233'scimo')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 173.858380000000000000
          Top = 11.338590000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<DadosProdutos."vProd"> + <DadosProdutos."VOutro">]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 11.338590000000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor l'#237'quido')
          ParentFont = False
          WordWrap = False
        end
      end
      object Observacoes: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 687.874460000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        RowCount = 1
        Stretched = True
        object Memo21: TfrxMemoView
          Align = baWidth
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[InformacoesAdicionais."OBS"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 113.385900000000000000
        Width = 272.126160000000000000
        object Memo9: TfrxMemoView
          Align = baWidth
          ShiftMode = smWhenOverlapped
          Top = 60.929190000000000000
          Width = 272.126160000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DANFE NFC-e - Documento Auxiliar '
            'da Nota Fiscal de Consumidor Eletr'#244'nica')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Align = baWidth
          ShiftMode = smWhenOverlapped
          Top = 85.370130000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#227'o permite aproveitamento de cr'#233'dito do ICMS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          ShiftMode = smWhenOverlapped
          Width = 272.126160000000000000
          Height = 58.582691810000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          LineSpacing = 4.000000000000000000
          Memo.UTF8W = (
            '[Emitente."XNome"]'
            
              'CNPJ: [Emitente."CNPJ"] - IE: [Emitente."IE"] - IM: [Emitente."I' +
              'M"]'
            '[Emitente."XLgr"], [Emitente."nro"] - [Emitente."xBairro"]'
            '[Emitente."XMun"] - [Emitente."UF"]')
          ParentFont = False
        end
      end
    end
  end
  object ImageList2: TImageList
    Left = 1304
    Top = 440
    Bitmap = {
      494C010109000D00200010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000099000000
      99000000990000000000000000000000000000000000000000000000FF000000
      9900000099000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000CC000000
      CC000000CC00000099000000000000000000000000000000FF000000CC000000
      CC000000CC000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      CC000000CC000000CC0000009900000000000000FF000000CC000000CC000000
      CC00000099000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000CC000000CC000000CC00000099000000CC000000CC000000CC000000
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000CC000000CC000000CC0000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000CC000000CC000000CC00000099000000CC000000CC000000CC000000
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      CC000000CC000000CC0000009900000000000000FF000000CC000000CC000000
      CC00000099000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000CC000000
      CC000000CC00000099000000000000000000000000000000FF000000CC000000
      CC000000CC000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000FFFFFF0099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009999CC0000008000000080000000800000008000000080009999CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000FFFFFF00FFFFFF0099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CC00000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000CC000000FF000000FF000000FF000000FF000000FF000000CC000000
      8000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600993300009933000099330000FFFFFF00FFFFFF009933000099330000CC99
      66000000000000000000000000000000000000000000000000000000000000CC
      0000009900000099000000660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000008000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      660099330000000000000000000000000000000000000000000000CC00000099
      0000009900000099000000990000006600000000000000000000000000000000
      00000000000000000000000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000099330000FFFFFF00FFFF
      FF00FFFFFF009933000099330000993300009933000099330000FFFFFF00FFFF
      FF00FFFFFF009933000000000000000000000000000000CC0000009900000099
      0000009900000099000000990000009900000066000000000000000000000000
      0000000000000000000000000000000000009999CC000000CC000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000CC009999CC00000000000000000099330000CC660000CC66
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      000000000000000000000000000000000000CC996600CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600CC996600000000000000000000CC0000009900000099
      00000066000000CC000000990000009900000099000000660000000000000000
      000000000000000000000000000000000000000080000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF0000008000000000000000000099330000CC6600009933
      0000000000000000000099330000CC660000CC660000CC660000993300000000
      00000000000000000000000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099330000000000000000000000CC0000009900000066
      0000000000000000000000CC0000009900000099000000990000006600000000
      000000000000000000000000000000000000000080000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF0000008000000000000000000099330000993300000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      00000000000000000000000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099330000000000000000000000CC0000006600000000
      000000000000000000000000000000CC00000099000000990000009900000066
      000000000000000000000000000000000000000080000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF0000008000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC660000CC660000CC66
      00009933000000000000000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099330000993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099330000000000000000000000000000000000000000
      00000000000000000000000000000000000000CC000000990000009900000099
      000000660000000000000000000000000000000080000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF0000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC66000099330000000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CC0000009900000099
      000000990000006600000000000000000000000080000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF0000008000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC66000099330000000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660099330000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099330000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CC00000099
      0000009900000066000000000000000000009999CC000000CC000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000CC009999CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000993300000000000000000000CC996600CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600CC996600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CC
      00000099000000660000000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000099330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660099330000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CC00000066000000000000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600993300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000CC000000FF000000FF000000FF000000FF000000FF000000CC000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      660099330000993300009933000099330000993300009933000099330000CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009999CC0000008000000080000000800000008000000080009999CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4ECE500D6B9A100B5835900AB734400AA714200B17D5200D2B49B00F2EA
      E300000000000000000000000000000000000000000000000000000000000000
      0000E0EEE0008FBF91003A8C3E0024792800247628003A843E008FB99100E0EB
      E000000000000000000000000000000000000000000000000000000000000000
      0000B9BCF000676DDF004048D600434BD7004048D700353ED5005960DC00AFB2
      EE00000000000000000000000000000000000000000066CCFF003399CC003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC0066CCFF000000000000000000000000000000000000000000E7D5
      C600BA885E00D6BAA200E8D9C900EBDFD000EBDFD000E7D7C700D2B49B00AF7A
      4C00E2CEBE00000000000000000000000000000000000000000000000000B5D9
      B600308E3400419F510086C999009AD2AA009AD1AA0082C695003C964B00307B
      3300B4D0B600000000000000000000000000000000000000000000000000BABD
      F0005760DF008A96F50099A6FB0093A0F800909EF600929FF6007F8BED00404A
      D900AEB1EE0000000000000000000000000066CCFF003399CC0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF003399CC0066CCFF00000000000000000000000000E9D8CB00BD8B
      6100E6D4C300E4D1BE00C8A58400B78D6600B5896400C4A07F00DFCBB900E2CF
      BD00AE754700E3CFC00000000000000000000000000000000000B5DBBA00248E
      29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA9700A4D8B30065B6
      7C0023712600B4D0B60000000000000000000000000000000000BCBEF1005F67
      E000919DF600657CFE003D58FE003B57FE003752FD002F4BF8005269F600808C
      F0003F48D900ABAFED0000000000000000003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC00003366003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC000000000000000000F7F1EB00C89C7800E9D7
      C800E2CCB900BF936A00B98B6100CEAF9300CEAF9300B6885E00B1866000D9BF
      A900E3D0BF00B5825800F4ECE6000000000000000000E1F2E40032A0430071C1
      8600A7DAB1005FBB76005BB9720058B76F0058B46E0057B46E005AB67300A4D8
      B20068B77E00307F3400E0ECE1000000000000000000C0C3F1006970E20098A5
      F7006F87FE004260FE003E5CFE003956FE003552FE00304DFE002B49FE00556C
      FA00828FF300404AD900ADB0EE00000000003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000336600003366000033660000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC000000000000000000E5CFBC00E3CBB800E9D5
      C400C6987000BE8F6500BE8F6500F6F0EB00F5EFE900B6885E00B6885E00B488
      6200E1CDBA00D8BCA500D8BDA70000000000000000008FD29F004BAF6300A9DC
      B30063C078005EBD700074C48400D3EBD80089CC980055B56B0057B46D005BB6
      7300A5D9B300409A4D008EBB900000000000000000008186E5009EACF8007891
      FE004E6DFE006D86FE008EA0FE00405EFE003B5AFE008195FE00647AFE002C4B
      FE00566DFE00828FF500585FDC00000000003399CC0066CCFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC00003366003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0066CCFF003399CC000000000000000000D8B39500EEE0D200D8B4
      9400C6976B00C2946800C0926600BE8F6500BE8F6500BA8A6200B8896200B789
      6100CAA68500E9DBCB00C1946E0000000000000000003EB45C0090D19E008CD3
      990063C2730078C88600F1F9F300FEFEFE00FCFDFC0085CA950056B66C005AB8
      710084CB960086C699003A8A3E0000000000000000006B70DF00AFBFFD005D7E
      FE005675FE0095A8FE00FEFEFE00AAB8FE009AABFE00FEFEFE009AAAFE003352
      FE003351FE0096A5FD003840D5000000000066CCFF003399CC0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF003399CC0066CCFF000000000000000000D9B29200F1E3D800D0A4
      7900C4986A00C3966900C3956800F9F5F100F2E9E000C1946C00BD8E6400BD8E
      6300BF946C00EEE2D400C08F6600000000000000000026AF4800A5DBAE006FC9
      7E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFCFB0087CC95005AB8
      700066BD7C009FD6AE00227E25000000000000000000767BE100B0BFFC006788
      FE005D7EFE005D7EFE00AEBEFE00FEFEFE00FEFEFE00B8C4FE004867FE003A5A
      FE003C5BFE0096A4FB00444DD80000000000000000003399CC0066CCFF0000FF
      FF0000FFFF0000FFFF0066CCFF000033660066CCFF0000FFFF0000FFFF0000FF
      FF0066CCFF003399CC00000000000000000000000000E0BB9C00F1E4D900D0A5
      7D00CB9C7000C6996B00C4976A00E1CBB500F7F2ED00F5EDE700D8BCA000C193
      6700C49A7000EFE1D500C698700000000000000000002DB65000A6DCB00071CB
      7F0065C67200AFE0B600D1EDD50062C06F00B7E2BE00FEFEFE00FAFCFB008BCF
      980068C07D00A0D6AD002283250000000000000000007A7FE300B3C4FC006E91
      FE006387FE005F83FE00A7B9FE00FEFEFE00FEFEFE00AFBFFE004A6BFE004162
      FE004363FE0099A8FB004950D900000000000000000066CCFF003399CC0000FF
      FF0000FFFF0000FFFF003399CC00003366003399CC0000FFFF0000FFFF0000FF
      FF003399CC0066CCFF00000000000000000000000000E9C9AF00F2E4D800DEBA
      9D00CE9F7400CC9D7100F4EAE200E3CAB300E6D2BE00FAF7F500E4D2BE00C397
      6A00D5B39000EDDFD100D2AB8A0000000000000000004AC46B0094D6A00090D6
      9A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3BF00FEFEFE00E2F3
      E5008AD098008ACD9C003B983F000000000000000000797EE300BACBFD007196
      FE006A8FFE009EB5FE00FEFEFE00C1CEFE00B4C4FE00FEFEFE0092A8FE00486A
      FE004668FE009FB0FD00464ED8000000000000000000000000003399CC0066CC
      FF0000FFFF0000FFFF0033669900003366003366990000FFFF0000FFFF0066CC
      FF003399CC0000000000000000000000000000000000F5E4D600F3E2D300EEDB
      CC00D4A77D00CF9F7600FAF7F400FBF7F400FBF7F400FAF7F400D0A78000CEA3
      7A00E9D4C200E9D3C100E8D3C10000000000000000009ADEAC0056BE6F00AEE0
      B6006CCB790067C7710064C66F0062C46D0061C36D0062C37000B5E2BD006EC6
      7D00ABDEB40047A85D008EC7930000000000000000009499E800AFC0F80093B2
      FE007098FE008FADFE00B0C4FE00678DFE005E84FE009BB1FE007694FE004F73
      FE00718DFE0092A2F6006D73E00000000000000000000000000066CCFF003399
      CC0000FFFF0000FFFF0000336600003366000033660000FFFF0000FFFF003399
      CC0066CCFF0000000000000000000000000000000000FDF9F500F0D2BA00F5E8
      DC00EBD7C500D6AB8000DBBA9900F5EBE200F4EBE100E3C7AD00D1A67A00E5CD
      B900F0E1D400DEBA9B00FAF4F0000000000000000000E4F7E90048C465007ECD
      8F00ADE0B4006CCB790069C9750067C7710067C7730067C774006AC87800ABDE
      B30075C3880032A04200E1F1E3000000000000000000CDCFF400868FE700B0C1
      F80095B6FE00739CFE006F98FE006A92FE00658DFE006188FE005B82FE007B99
      FE0099A9F7006069E000BCBEF100000000000000000000000000000000003399
      CC0066CCFF0000FFFF0000336600003366000033660000FFFF0066CCFF003399
      CC00000000000000000000000000000000000000000000000000FBF1E900F2D3
      BA00F6E9DE00EDDDCF00E2C0A600D7AD8800D6AB8500DCBA9B00EAD5C600F2E5
      D800E3C0A200F5E9DE0000000000000000000000000000000000BFECCA003CC2
      5B007ECD8F00AEE0B60091D79C0076CD820076CD820091D79C00ADE0B40077C7
      8A0026A03A00B5DFBD0000000000000000000000000000000000CECFF400878F
      E700B1C2F80096B8FE0078A2FE0076A0FE00729BFE006B94FE0084A3FE00A0B0
      F7006871E200BEC0F100000000000000000000000000000000000000000066CC
      FF003399CC0000FFFF003399CC00003366003399CC0000FFFF003399CC0066CC
      FF0000000000000000000000000000000000000000000000000000000000FCF2
      EA00F5D9C300F8E8DB00F5E7DC00F2E4D900F2E4D900F4E6DB00F4E3D500ECCC
      B300F8ECE300000000000000000000000000000000000000000000000000C0EC
      CB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5A0004FB8690034B2
      5400B6E3C100000000000000000000000000000000000000000000000000CFD1
      F5008891E800B1C3F800BDD2FD00B9CDFC00B7CAFC00B7CAFD00A6B7F700727B
      E400C2C4F2000000000000000000000000000000000000000000000000000000
      00003399CC0066CCFF0000FFFF0000FFFF0000FFFF0066CCFF003399CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFAF700FBECE100F7DDC800F5D8C000F4D6BE00F4D8C200F8E8DB00FDF8
      F500000000000000000000000000000000000000000000000000000000000000
      0000E5F7E9009EE2B00054CA71003ABF5B0036BD590048C26A0097DBAA00E1F5
      E700000000000000000000000000000000000000000000000000000000000000
      0000CFD1F500989DE9007E83E3008084E4007C82E300747AE1008C91E600C7CA
      F300000000000000000000000000000000000000000000000000000000000000
      000066CCFF003399CC003399CC003399CC003399CC003399CC0066CCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCFF0066CCFF0066CCFF0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF00000000000087C30000000000008383000000000000C107000000000000
      E00F000000000000F01F000000000000F83F000000000000F01F000000000000
      E00F000000000000C107000000000000838300000000000087C3000000000000
      FFFF000000000000FFFF000000000000FFFFFF3FFFFFFFFFFFFFFE3FFFFFF01F
      F3FFFC3FF3FFE00FE1FFE00FE1FFC007C0FFC007C0FF8003807F8003807F0001
      803F0001803F00018C1F00018C1F00019E0F00019E0F0001FF070001FF070001
      FF830001FF830001FFC30001FFC30001FFE30001FFE38003FFF38003FFF3C007
      FFFFC007FFFFE00FFFFFE00FFFFFF01FFFFFFFFFFFFFFFFFF00FF00FF00F8003
      E007E007E0070001C003C003C003000180018001800100018001800180010001
      800180018001000180018001800180038001800180018003800180018001C007
      800180018001C007800180018001E00FC003C003C003E00FE007E007E007F01F
      F00FF00FF00FF01FFFFFFFFFFFFFFC7F00000000000000000000000000000000
      000000000000}
  end
  object query: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1240
    Top = 528
  end
  object qrnota: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000061')
    Params = <>
    Left = 1184
    Top = 536
    object qrnotacliente: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 33
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrnotaempresa: TStringField
      DisplayLabel = 'EMPRESA'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'empresa'
      LookupDataSet = frmmodulo.qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FILIAL'
      KeyFields = 'CODFILIAL'
      Size = 40
      Lookup = True
    end
    object qrnotaendereco: TStringField
      FieldKind = fkLookup
      FieldName = 'endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrnotacpf: TStringField
      FieldKind = fkLookup
      FieldName = 'cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'CODCLIENTE'
      Size = 14
      Lookup = True
    end
    object qrnotarg: TStringField
      FieldKind = fkLookup
      FieldName = 'rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RG'
      KeyFields = 'CODCLIENTE'
      Lookup = True
    end
    object qrnotatransp_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_endereco'
      LookupDataSet = frmmodulo.qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'ENDERECO'
      KeyFields = 'codtransportador'
      Size = 50
      Lookup = True
    end
    object qrnotatransp_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cidade'
      LookupDataSet = frmmodulo.qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codtransportador'
      Size = 30
      Lookup = True
    end
    object qrnotatransp_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cpf'
      LookupDataSet = frmmodulo.qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codtransportador'
      Size = 25
      Lookup = True
    end
    object qrnotatransp_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_rg'
      LookupDataSet = frmmodulo.qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codtransportador'
      Size = 25
      Lookup = True
    end
    object qrnotanatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = frmmodulo.qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Size = 30
      Lookup = True
    end
    object qrnotaABC: TStringField
      FieldKind = fkLookup
      FieldName = 'ABC'
      LookupDataSet = frmmodulo.qrtransportador
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'CODTRANSPORTADOR'
      Size = 10
      Lookup = True
    end
    object qrnotaTRANSPORTADOR: TStringField
      FieldKind = fkLookup
      FieldName = 'TRANSPORTADOR'
      LookupDataSet = frmmodulo.qrtransportador
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODTRANSPORTADOR'
      Size = 50
      Lookup = True
    end
    object qrnotafilial: TStringField
      FieldKind = fkLookup
      FieldName = 'filial'
      LookupDataSet = frmmodulo.qrFilial
      LookupKeyFields = 'codigo'
      LookupResultField = 'FILIAL'
      KeyFields = 'codfilial'
      Size = 30
      Lookup = True
    end
    object qrnotatransp_tipo: TIntegerField
      FieldKind = fkLookup
      FieldName = 'transp_tipo'
      LookupDataSet = frmmodulo.qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'TIPO'
      KeyFields = 'CODTRANSPORTADOR'
      Lookup = True
    end
    object qrnotatransp_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_uf'
      LookupDataSet = frmmodulo.qrtransportador
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'CODTRANSPORTADOR'
      Lookup = True
    end
    object qrnotaespecie: TStringField
      FieldKind = fkLookup
      FieldName = 'especie'
      LookupDataSet = frmmodulo.qrfiscal_modelo
      LookupKeyFields = 'SINTEGRA'
      LookupResultField = 'SIGLA'
      KeyFields = 'MODELO_NF'
      Size = 10
      Lookup = True
    end
    object qrnotaTIPO_FINALIDADE: TIntegerField
      FieldName = 'TIPO_FINALIDADE'
    end
    object qrnotaSEQEVENTO: TIntegerField
      FieldName = 'SEQEVENTO'
      Required = True
    end
    object qrnotaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrnotaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrnotaCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrinventarioDATA: TDateField
      FieldName = 'DATA'
    end
    object qrnotaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrnotaVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '#,##0.00'
    end
    object qrnotaTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '#,##0.00'
    end
    object qrnotaBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrnotaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotaBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrnotaICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrnotaFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrnotaSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrnotaOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrnotaVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrnotaITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrnotaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnotaCODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 6
    end
    object qrnotaFRETE_CONTA: TIntegerField
      FieldName = 'FRETE_CONTA'
    end
    object qrnotaPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrnotaPLACA_UF: TWideStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object qrnotaVOL_QTDE: TFloatField
      FieldName = 'VOL_QTDE'
    end
    object qrnotaVOL_ESPECIE: TWideStringField
      FieldName = 'VOL_ESPECIE'
    end
    object qrnotaVOL_MARCA: TWideStringField
      FieldName = 'VOL_MARCA'
    end
    object qrnotaVOL_NUMERO: TWideStringField
      FieldName = 'VOL_NUMERO'
    end
    object qrnotaPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrnotaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object qrnotaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrnotaMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Size = 40
    end
    object qrinventarioFATURAMENTO_DATA1: TDateField
      FieldName = 'FATURAMENTO_DATA1'
    end
    object qrinventarioFATURAMENTO_DATA2: TDateField
      FieldName = 'FATURAMENTO_DATA2'
    end
    object qrinventarioFATURAMENTO_DATA3: TDateField
      FieldName = 'FATURAMENTO_DATA3'
    end
    object qrinventarioFATURAMENTO_DATA4: TDateField
      FieldName = 'FATURAMENTO_DATA4'
    end
    object qrnotaFATURAMENTO_NUMERO1: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO1'
      Size = 15
    end
    object qrnotaFATURAMENTO_NUMERO2: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO2'
      Size = 15
    end
    object qrnotaFATURAMENTO_NUMERO3: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO3'
      Size = 15
    end
    object qrnotaFATURAMENTO_NUMERO4: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO4'
      Size = 15
    end
    object qrnotaFATURAMENTO_VALOR1: TFloatField
      FieldName = 'FATURAMENTO_VALOR1'
    end
    object qrnotaFATURAMENTO_VALOR2: TFloatField
      FieldName = 'FATURAMENTO_VALOR2'
    end
    object qrnotaFATURAMENTO_VALOR3: TFloatField
      FieldName = 'FATURAMENTO_VALOR3'
    end
    object qrnotaFATURAMENTO_VALOR4: TFloatField
      FieldName = 'FATURAMENTO_VALOR4'
    end
    object qrnotaCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrnotaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrnotaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrnotaOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrnotaINF1: TWideStringField
      FieldName = 'INF1'
      Size = 80
    end
    object qrnotaINF2: TWideStringField
      FieldName = 'INF2'
      Size = 80
    end
    object qrnotaINF3: TWideStringField
      FieldName = 'INF3'
      Size = 80
    end
    object qrnotaINF4: TWideStringField
      FieldName = 'INF4'
      Size = 80
    end
    object qrnotaINF5: TWideStringField
      FieldName = 'INF5'
      Size = 80
    end
    object qrinventarioDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
    end
    object qrnotaHORA: TWideStringField
      FieldName = 'HORA'
    end
    object qrnotaSITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
    object qrnotaMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrnotaSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrnotaVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrnotaALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrnotaSIT: TWideStringField
      FieldName = 'SIT'
      Size = 1
    end
    object qrnotaCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Size = 10
    end
    object qrnotaMOVIMENTO: TWideStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object qrnotaBAIXA_ESTOQUE: TWideStringField
      FieldName = 'BAIXA_ESTOQUE'
      Size = 1
    end
    object qrnotaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrnotaOS_COD1: TWideStringField
      FieldName = 'OS_COD1'
      Size = 10
    end
    object qrnotaOS_COD2: TWideStringField
      FieldName = 'OS_COD2'
      Size = 10
    end
    object qrnotaOS_COD3: TWideStringField
      FieldName = 'OS_COD3'
      Size = 10
    end
    object qrnotaOS_COD4: TWideStringField
      FieldName = 'OS_COD4'
      Size = 10
    end
    object qrnotaOS_COD5: TWideStringField
      FieldName = 'OS_COD5'
      Size = 10
    end
    object qrnotaOS_COD6: TWideStringField
      FieldName = 'OS_COD6'
      Size = 10
    end
    object qrnotaOS_SERV1: TWideStringField
      FieldName = 'OS_SERV1'
      Size = 60
    end
    object qrnotaOS_SERV2: TWideStringField
      FieldName = 'OS_SERV2'
      Size = 60
    end
    object qrnotaOS_SERV3: TWideStringField
      FieldName = 'OS_SERV3'
      Size = 60
    end
    object qrnotaOS_SERV4: TWideStringField
      FieldName = 'OS_SERV4'
      Size = 60
    end
    object qrnotaOS_SERV5: TWideStringField
      FieldName = 'OS_SERV5'
      Size = 60
    end
    object qrnotaOS_SERV6: TWideStringField
      FieldName = 'OS_SERV6'
      Size = 60
    end
    object qrnotaOS_COMP1: TWideStringField
      FieldName = 'OS_COMP1'
      Size = 60
    end
    object qrnotaOS_COMP2: TWideStringField
      FieldName = 'OS_COMP2'
      Size = 60
    end
    object qrnotaOS_COMP3: TWideStringField
      FieldName = 'OS_COMP3'
      Size = 60
    end
    object qrnotaOS_COMP4: TWideStringField
      FieldName = 'OS_COMP4'
      Size = 60
    end
    object qrnotaOS_COMP5: TWideStringField
      FieldName = 'OS_COMP5'
      Size = 60
    end
    object qrnotaOS_COMP6: TWideStringField
      FieldName = 'OS_COMP6'
      Size = 60
    end
    object qrnotaOS_QTDE1: TFloatField
      FieldName = 'OS_QTDE1'
    end
    object qrnotaOS_QTDE2: TFloatField
      FieldName = 'OS_QTDE2'
    end
    object qrnotaOS_QTDE3: TFloatField
      FieldName = 'OS_QTDE3'
    end
    object qrnotaOS_QTDE4: TFloatField
      FieldName = 'OS_QTDE4'
    end
    object qrnotaOS_QTDE5: TFloatField
      FieldName = 'OS_QTDE5'
    end
    object qrnotaOS_QTDE6: TFloatField
      FieldName = 'OS_QTDE6'
    end
    object qrnotaOS_UNIT1: TFloatField
      FieldName = 'OS_UNIT1'
    end
    object qrnotaOS_UNIT2: TFloatField
      FieldName = 'OS_UNIT2'
    end
    object qrnotaOS_UNIT3: TFloatField
      FieldName = 'OS_UNIT3'
    end
    object qrnotaOS_UNIT4: TFloatField
      FieldName = 'OS_UNIT4'
    end
    object qrnotaOS_UNIT5: TFloatField
      FieldName = 'OS_UNIT5'
    end
    object qrnotaOS_UNIT6: TFloatField
      FieldName = 'OS_UNIT6'
    end
    object qrnotaOS_TOTAL1: TFloatField
      FieldName = 'OS_TOTAL1'
    end
    object qrnotaOS_TOTAL2: TFloatField
      FieldName = 'OS_TOTAL2'
    end
    object qrnotaOS_TOTAL3: TFloatField
      FieldName = 'OS_TOTAL3'
    end
    object qrnotaOS_TOTAL4: TFloatField
      FieldName = 'OS_TOTAL4'
    end
    object qrnotaOS_TOTAL5: TFloatField
      FieldName = 'OS_TOTAL5'
    end
    object qrnotaOS_TOTAL6: TFloatField
      FieldName = 'OS_TOTAL6'
    end
    object qrnotaOS_ISS: TFloatField
      FieldName = 'OS_ISS'
    end
    object qrnotaOS_TOTAL_GERAL: TFloatField
      FieldName = 'OS_TOTAL_GERAL'
    end
    object qrnotaOS_TOTAL_ISS: TFloatField
      FieldName = 'OS_TOTAL_ISS'
    end
    object qrnotaDESCONTO_ITEM: TFloatField
      FieldName = 'DESCONTO_ITEM'
    end
    object qrnotaOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrnotaOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrnotaCODIGOMODELO: TWideStringField
      FieldName = 'CODIGOMODELO'
      Size = 6
    end
    object qrnotaCUSTO_VENDA: TWideStringField
      FieldName = 'CUSTO_VENDA'
      Size = 1
    end
    object qrnotaFAT_FORMA_PGTO: TWideStringField
      FieldName = 'FAT_FORMA_PGTO'
      Size = 50
    end
    object qrnotaFAT_CONDI_PGTO: TWideStringField
      FieldName = 'FAT_CONDI_PGTO'
      Size = 50
    end
    object qrnotaFAT_QTDE_PRESTACAO: TIntegerField
      FieldName = 'FAT_QTDE_PRESTACAO'
    end
    object qrnotaFAT_GERAR_RECEBER: TIntegerField
      FieldName = 'FAT_GERAR_RECEBER'
    end
    object qrnotaFAT_GERAR_DUPLICATA: TIntegerField
      FieldName = 'FAT_GERAR_DUPLICATA'
    end
    object qrnotaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrnotaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrnotaFAT_TIPO: TIntegerField
      FieldName = 'FAT_TIPO'
    end
    object qrnotaCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrnotaOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object qrnotaINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object qrnotaNFE_SITUACAO: TIntegerField
      FieldName = 'NFE_SITUACAO'
    end
    object qrnotaNFE_XML: TWideStringField
      FieldName = 'NFE_XML'
      Size = 240
    end
    object qrnotaVAREJO_ATACADO: TWideStringField
      FieldName = 'VAREJO_ATACADO'
      Size = 1
    end
    object qrnotaINDUSTRIALIZACAO: TWideStringField
      FieldName = 'INDUSTRIALIZACAO'
      Size = 1
    end
    object qrnotaPERDA: TWideStringField
      FieldName = 'PERDA'
      Size = 1
    end
    object qrinventarioFATURAMENTO_DATA5: TDateField
      FieldName = 'FATURAMENTO_DATA5'
    end
    object qrinventarioFATURAMENTO_DATA6: TDateField
      FieldName = 'FATURAMENTO_DATA6'
    end
    object qrnotaFATURAMENTO_NUMERO5: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO5'
      Size = 15
    end
    object qrnotaFATURAMENTO_NUMERO6: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO6'
      Size = 15
    end
    object qrnotaFATURAMENTO_VALOR5: TFloatField
      FieldName = 'FATURAMENTO_VALOR5'
    end
    object qrnotaFATURAMENTO_VALOR6: TFloatField
      FieldName = 'FATURAMENTO_VALOR6'
    end
    object qrinventarioFATURAMENTO_DATA7: TDateField
      FieldName = 'FATURAMENTO_DATA7'
    end
    object qrinventarioFATURAMENTO_DATA8: TDateField
      FieldName = 'FATURAMENTO_DATA8'
    end
    object qrinventarioFATURAMENTO_DATA9: TDateField
      FieldName = 'FATURAMENTO_DATA9'
    end
    object qrnotaFATURAMENTO_NUMERO7: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO7'
      Size = 15
    end
    object qrnotaFATURAMENTO_NUMERO8: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO8'
      Size = 15
    end
    object qrnotaFATURAMENTO_NUMERO9: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO9'
      Size = 15
    end
    object qrnotaFATURAMENTO_VALOR7: TFloatField
      FieldName = 'FATURAMENTO_VALOR7'
    end
    object qrnotaFATURAMENTO_VALOR8: TFloatField
      FieldName = 'FATURAMENTO_VALOR8'
    end
    object qrnotaFATURAMENTO_VALOR9: TFloatField
      FieldName = 'FATURAMENTO_VALOR9'
    end
    object qrnotaCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 50
    end
    object qrnotaREFNFE: TWideStringField
      FieldName = 'REFNFE'
      Size = 50
    end
    object qrnotaVBCUFDEST: TFloatField
      FieldName = 'VBCUFDEST'
    end
    object qrnotaVICMSUFDEST: TFloatField
      FieldName = 'VICMSUFDEST'
    end
    object qrnotaVICMSUFREMET: TFloatField
      FieldName = 'VICMSUFREMET'
    end
    object qrnotaPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
    end
    object qrnotaPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
    end
    object qrnotaPICMSINTER: TFloatField
      FieldName = 'PICMSINTER'
    end
    object qrnotaPICMSITERPART: TFloatField
      FieldName = 'PICMSITERPART'
    end
    object qrnotaVFCPUFDESTTOTAL: TFloatField
      FieldName = 'VFCPUFDESTTOTAL'
    end
    object qrnotaVFCPUFDEST: TFloatField
      FieldName = 'VFCPUFDEST'
    end
    object qrnotaVICMSUFDESTTOTAL: TFloatField
      FieldName = 'VICMSUFDESTTOTAL'
    end
    object qrnotaVICMSUFREMETTOTAL: TFloatField
      FieldName = 'VICMSUFREMETTOTAL'
    end
    object qrnotaDIFAL: TFloatField
      FieldName = 'DIFAL'
    end
    object qrnotaORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object qrnotaIND_PAG: TIntegerField
      FieldName = 'IND_PAG'
    end
    object qrnotaIND_PRESS: TIntegerField
      FieldName = 'IND_PRESS'
    end
  end
  object qrproduto2: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1424
    Top = 144
  end
  object qrcliente2: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 1384
    Top = 152
    object qrcliente2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcliente2NOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrcliente2APELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrcliente2ENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrcliente2BAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrcliente2CIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrcliente2UF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrcliente2CEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrcliente2COMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qrcliente2MORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrcliente2TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrcliente2SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcliente2TELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qrcliente2TELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qrcliente2TELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object qrcliente2CELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qrcliente2EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrcliente2RG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrcliente2CPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrcliente2FILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrcliente2ESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrcliente2CONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrcliente2PROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrcliente2EMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrcliente2RENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrcliente2LIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrcliente2REF1: TWideStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrcliente2REF2: TWideStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrcliente2CODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrinventarioqrcliente2DATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrinventarioqrcliente2DATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrcliente2OBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrcliente2OBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrcliente2OBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrcliente2OBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrcliente2OBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrcliente2OBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrcliente2NASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrcliente2CODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcliente2CODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrcliente2CODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrcliente2NUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrcliente2RG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrcliente2RG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrinventarioqrcliente2RG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object qrcliente2SEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrcliente2HISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrinventarioqrcliente2PREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qrcliente2CNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrcliente2COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrcliente2IBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrcliente2TAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrcliente2TAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrcliente2TAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrcliente2CORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrcliente2CORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrcliente2CORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrcliente2CORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrcliente2CORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrcliente2CORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrcliente2RG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrcliente2RESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrcliente2RESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrcliente2RESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrcliente2RESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrcliente2RESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrcliente2RESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrcliente2RESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrcliente2RESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrcliente2RESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrcliente2RESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrcliente2RESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrcliente2RESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrcliente2RESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrcliente2RESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrcliente2RESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrcliente2RESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrcliente2RESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrcliente2RESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrcliente2RESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrcliente2RESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrcliente2FOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrcliente2CONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
  end
  object qrempresa: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000004')
    Params = <>
    Left = 1144
    Top = 352
    object qrempresaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrempresaFILIAL: TWideStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrempresaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qrempresaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrempresaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrempresaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrempresaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrempresaTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object qrempresaCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrempresaIE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrempresaSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object qrempresaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qrempresaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrempresaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrempresaCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qrempresaSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qrempresaEMPRESA_ESTADUAL: TWideStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object qrempresaOPTANTE_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object qrempresaOPTANTE_SUPER_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object qrempresaECF: TWideStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrempresaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrempresaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrempresaISS: TFloatField
      FieldName = 'ISS'
    end
    object qrempresaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrempresaRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qrempresaCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qrempresaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrempresaFARMACIA_RESP_TECNICO: TWideStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object qrempresaFARMACIA_CRF: TWideStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object qrempresaFARMACIA_CPF: TWideStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object qrempresaFARMCIA_DATA: TDateField
      FieldName = 'FARMCIA_DATA'
    end
    object qrempresaFARMACIA_UF: TWideStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object qrempresaFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object qrempresaFARMACIA_EMAIL: TWideStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object qrempresaFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrempresaFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object qrempresaCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qrempresaINDUSTRIA: TWideStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object qrempresaFARMACIA_NUMEROLICENCA: TWideStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object qrempresaCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrempresaIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qrempresaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrempresaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrempresaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qrempresaATIVIDADE: TWideStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object qrempresaCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrempresaCONTADOR_NOME: TWideStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object qrempresaCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
    end
    object qrempresaCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object qrempresaCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object qrempresaCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object qrempresaCONTADOR_ENDERECO: TWideStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object qrempresaCONTADOR_NUMERO: TWideStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object qrempresaCONTADOR_COMPLEMENTO: TWideStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object qrempresaCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object qrempresaCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object qrempresaCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object qrempresaCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object qrempresaINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qrempresaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object qrempresaCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrempresaCRT: TWideStringField
      FieldName = 'CRT'
      Size = 1
    end
    object qrempresaCONTADOR_CIDADE: TWideStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object qrempresaCONTADOR_COD_MUNICIPIO: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object qrempresaCONTADOR_UF: TWideStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object qrempresaPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object qrempresaFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object qrempresaDFIXAS: TSingleField
      FieldName = 'DFIXAS'
    end
    object qrempresaTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
    object qrempresaSERIE_CTE: TWideStringField
      FieldName = 'SERIE_CTE'
      Size = 6
    end
    object qrempresaSEQ_CTE: TWideStringField
      FieldName = 'SEQ_CTE'
      Size = 6
    end
    object qrempresaCOD_PAIS: TWideStringField
      FieldName = 'COD_PAIS'
    end
    object qrempresaPAIS: TWideStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object qrempresaHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 100
    end
  end
  object qrmodelo: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000082')
    Params = <>
    Left = 1160
    Top = 184
    object qrmodeloCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrmodeloMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 100
    end
    object qrmodeloSIGLA: TWideStringField
      FieldName = 'SIGLA'
      Size = 5
    end
    object qrmodeloSINTEGRA: TWideStringField
      FieldName = 'SINTEGRA'
      Size = 2
    end
    object qrmodeloTIPO_REGISTRO: TWideStringField
      FieldName = 'TIPO_REGISTRO'
      Size = 10
    end
    object qrmodeloSEQUENCIANF: TIntegerField
      FieldName = 'SEQUENCIANF'
    end
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 1216
    Top = 168
    object qrclienteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteAPELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrclienteENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrclienteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrclienteCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrclienteUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrclienteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrclienteCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qrclienteMORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrclienteTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrclienteSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrclienteTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qrclienteTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qrclienteTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object qrclienteCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qrclienteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrclienteRG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrclienteCPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrclienteFILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrclienteESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrclienteCONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrclientePROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrclienteEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrclienteRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrclienteLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrclienteREF1: TWideStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrclienteREF2: TWideStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrclienteCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrinventarioDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrinventarioDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrclienteOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrclienteOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrclienteOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrclienteOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrclienteOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrclienteOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrclienteNASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrclienteCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrclienteCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrclienteCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrclienteNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrclienteRG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrclienteRG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrinventarioRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object qrclienteSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrclienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrinventarioPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qrclienteCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrclienteCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrclienteIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrclienteTAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrclienteTAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrclienteTAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrclienteCORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrclienteCORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrclienteCORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrclienteCORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrclienteCORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrclienteCORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrclienteRG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrclienteRESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrclienteRESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrclienteRESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrclienteRESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrclienteRESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrclienteRESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrclienteRESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrclienteRESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrclienteRESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrclienteRESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrclienteRESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrclienteRESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrclienteRESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrclienteRESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrclienteRESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrclienteRESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrclienteRESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrclienteRESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrclienteRESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrclienteRESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrclienteFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrclienteCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
  end
  object qrnota_item: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000062')
    Params = <>
    Left = 1272
    Top = 480
  end
  object qrnota_total: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1096
    Top = 520
  end
  object qrnota_antes: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1064
    Top = 520
  end
  object qritem_antes: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1176
    Top = 288
  end
  object qrgrade_entrada: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000033')
    Params = <>
    Left = 1232
    Top = 272
  end
  object query2: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1200
    Top = 336
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    OnStatusChange = ACBrNFe1StatusChange
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.Arquivos.PathSalvar = 'C:\OneMaker\Server\nfe\XML\NFe\'
    Configuracoes.Arquivos.PathSchemas = 'C:\OneMaker\Server\nfe\Schemas\'
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.PathNFe = 'C:\OneMaker\Server\nfe\XML\NFe'
    Configuracoes.Arquivos.PathInu = 'C:\OneMaker\Server\nfe\XML\Inu'
    Configuracoes.Arquivos.PathEvento = 'C:\OneMaker\Server\nfe\XML\CCe'
    Configuracoes.WebServices.UF = 'AL'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFEFR1
    Left = 1259
    Top = 25
  end
  object qrNFE_Cliente: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 1136
    Top = 424
    object qrNFE_ClienteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrNFE_ClienteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrNFE_ClienteAPELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrNFE_ClienteENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrNFE_ClienteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrNFE_ClienteCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrNFE_ClienteUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrNFE_ClienteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrNFE_ClienteCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qrNFE_ClienteMORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrNFE_ClienteTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrNFE_ClienteSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrNFE_ClienteTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qrNFE_ClienteTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qrNFE_ClienteTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object qrNFE_ClienteCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qrNFE_ClienteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrNFE_ClienteRG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrNFE_ClienteCPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrNFE_ClienteFILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrNFE_ClienteESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrNFE_ClienteCONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrNFE_ClientePROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrNFE_ClienteEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrNFE_ClienteRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrNFE_ClienteLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrNFE_ClienteREF1: TWideStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrNFE_ClienteREF2: TWideStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrNFE_ClienteCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrinventarioNFE_ClienteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrinventarioNFE_ClienteDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrNFE_ClienteOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrNFE_ClienteOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrNFE_ClienteOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrNFE_ClienteOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrNFE_ClienteOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrNFE_ClienteOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrNFE_ClienteNASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrNFE_ClienteCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrNFE_ClienteCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrNFE_ClienteCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrNFE_ClienteNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrNFE_ClienteRG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrNFE_ClienteRG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrinventarioNFE_ClienteRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object qrNFE_ClienteSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrNFE_ClienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrinventarioNFE_ClientePREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qrNFE_ClienteCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrNFE_ClienteCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrNFE_ClienteIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrNFE_ClienteTAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrNFE_ClienteTAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrNFE_ClienteTAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrNFE_ClienteCORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrNFE_ClienteCORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrNFE_ClienteCORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrNFE_ClienteCORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrNFE_ClienteCORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrNFE_ClienteCORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrNFE_ClienteRG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrNFE_ClienteRESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrNFE_ClienteRESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrNFE_ClienteRESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrNFE_ClienteRESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrNFE_ClienteRESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrNFE_ClienteRESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrNFE_ClienteRESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrNFE_ClienteRESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrNFE_ClienteRESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrNFE_ClienteRESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrNFE_ClienteRESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrNFE_ClienteRESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrNFE_ClienteRESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrNFE_ClienteRESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrNFE_ClienteRESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrNFE_ClienteRESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrNFE_ClienteRESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrNFE_ClienteRESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrNFE_ClienteRESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrNFE_ClienteRESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrNFE_ClienteFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrNFE_ClienteCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 1176
    Top = 528
  end
  object qrtransportador2: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000010')
    Params = <>
    Left = 1112
    Top = 480
    object qrtransportador2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrtransportador2NOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrtransportador2ENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrtransportador2BAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrtransportador2CIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrtransportador2UF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrtransportador2CEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrtransportador2CPF: TWideStringField
      FieldName = 'CPF'
      Size = 25
    end
    object qrtransportador2RG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrtransportador2TELEFONE: TWideStringField
      FieldName = 'TELEFONE'
    end
    object qrtransportador2CELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qrtransportador2PLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrtransportador2UFPLACA: TWideStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object qrtransportador2OBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrtransportador2OBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrtransportador2OBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrinventarioqrtransportador2DATA: TDateField
      FieldName = 'DATA'
    end
    object qrtransportador2TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrtransportador2NUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrtransportador2COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrtransportador2IBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrtransportador2ANTT: TWideStringField
      FieldName = 'ANTT'
      Size = 10
    end
  end
  object qryapoio: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 1144
    Top = 460
  end
  object UCControls1: TUCControls
    GroupName = 'Relacao Nota Fiscal Eletronica'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 1016
    Top = 192
  end
  object qryApoioCCE: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1392
    Top = 344
  end
  object qrTrib: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1098
    Top = 351
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    ACBrNFe = ACBrNFe1
    Sistema = 'OneMaker'
    PathPDF = 'C:\OneMaker\SERVER\PDF\'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiSemGeracao
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    FastFile = 'C:\OneMaker\Server\nfe\danfe\DANFE.fr3'
    FastFileEvento = 'C:\OneMaker\Server\rel\EVENTOS.fr3'
    EspessuraBorda = 1
    ExibirTotalTributosItem = True
    ExibeCampoFatura = True
    TributosPercentual = ptValorProdutos
    ImprimirUnQtVlComercial = iuComercial
    Detalhado = False
    DescricaoViaEstabelec = 'Via Consumidor'
    ExpandirDadosAdicionaisAuto = False
    ImprimirDadosArma = True
    QuebraLinhaEmDetalhamentoEspecifico = True
    IncorporarBackgroundPdf = True
    IncorporarFontesPdf = True
    ImprimirDadosDocReferenciados = True
    Left = 1144
    Top = 22
  end
  object qrcompl: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 1312
    Top = 502
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 1048
    Top = 38
  end
  object qryaux: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1188
    Top = 411
  end
end