object frmlista_entrada_sintegra: Tfrmlista_entrada_sintegra
  Left = 454
  Top = 222
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NOTA DE ENTRADA | Relat'#243'rios'
  ClientHeight = 126
  ClientWidth = 425
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 60
    Height = 13
    Caption = 'Relat'#243'rio: '
  end
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 77
    Width = 425
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 70
  end
  object combo_relatorio: TComboBox
    Left = 93
    Top = 19
    Width = 300
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'RELA'#199#195'O DE NOTAS FISCAIS - FORNECEDOR'
      'RELA'#199#195'O POR CFOP'
      'RESUMO DAS NOTAS FISCAIS')
  end
  object Panel1: TPanel
    Left = 0
    Top = 80
    Width = 425
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 1
    object bimprimir: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 115
      Height = 46
      Align = alLeft
      Caption = 'Visualizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
      OfficeHint.Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002B64944415478DA
        62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
        B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
        44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
        CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
        1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
        6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
        40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
        03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
        EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
        C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
        1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
        B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
        7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
        F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
        2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
        E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
        0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
        01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
        F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
        194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
        62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
        13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
        AE426082}
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
      TabOrder = 0
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
      Layout = blGlyphTop
    end
    object bitbtn1: TAdvGlowButton
      Left = 323
      Top = 0
      Width = 102
      Height = 46
      Align = alRight
      Caption = 'Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
      OnClick = BitBtn1Click
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
      Layout = blGlyphTop
    end
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 224
    Top = 18
  end
  object fxnota: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 39510.468741319400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 18
    Datasets = <
      item
        DataSet = fsnota
        DataSetName = 'fsnota'
      end
      item
        DataSet = frmmodulo.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = frmmodulo.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 38.795300000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Top = 18.897650000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = -2.000000000000000000
          Top = 34.692950000000010000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Top = 20.031496059999990000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 173.472480000000000000
          Top = 20.031496059999990000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'D')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 479.496290000000000000
          Top = 20.031496059999990000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 0.779529999999994100
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '000#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 52.472480000000000000
          Top = 20.031496059999990000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP SE    ESP  MOD.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 200.992270000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 288.141930000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 370.512060000000000000
          Top = 18.897650000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 397.189240000000000000
          Top = 18.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 547.913730000000000000
          Top = 18.897650000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ALQ.')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 587.268090000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'B.ICMS')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 634.622450000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ISENTAS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 686.756340000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OUTRAS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        DataSet = fsnota
        DataSetName = 'fsnota'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = 53.614100000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'CFOP'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsnota."CFOP"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 459.653897000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_CONTABIL'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota."VALOR_CONTABIL"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 396.866420000000000000
          Top = 1.779529999999994000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_ESCRITURACAO'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsnota."DATA_ESCRITURACAO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 4.338590000000000000
          Top = 1.440940000000012000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'NOTAFISCAL'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsnota."NOTAFISCAL"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 145.315090000000000000
          Top = 1.661409999999989000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'MODELO_NF'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsnota."MODELO_NF"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 113.063080000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'ESPECIE'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsnota."ESPECIE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 90.488250000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'SERIE'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsnota."SERIE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 167.771800000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO_CLIENTE'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota."CODIGO_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 200.023810000000000000
          Width = 86.929190000000010000
          Height = 18.897650000000000000
          DataField = 'CNPJ_CLIENTE'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsnota."CNPJ_CLIENTE"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 287.512060000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'FORNECEDOR'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsnota."FORNECEDOR"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 370.543600000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'UF_IE_CLIENTE'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsnota."UF_IE_CLIENTE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 523.252320000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'ALIQUOTA_ICMS'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota."ALIQUOTA_ICMS"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 578.842920000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'BASE_ICMS'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota."BASE_ICMS"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 628.858690000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_ICMS_ISENTAS'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota."VALOR_ICMS_ISENTAS"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 683.772110000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_ICMS_OUTRAS'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota."VALOR_ICMS_OUTRAS"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 729.449290000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DataField = 'NOTA_CANCELADA'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsnota."NOTA_CANCELADA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 332.598640000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Top = 10.779530000000020000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ELPRO SOFTWARES')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 249.448980000000000000
          Top = 10.779530000000020000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'www.elpro.com.br')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 521.575140000000000000
          Top = 10.779530000000020000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'suporte@elpro.com.br')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = -7.559060000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          DataField = 'NOME'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 188.976500000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA1'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxrelatorio."LINHA1"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Com'#233'rcio Plus! 7')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA2'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 30.236240000000000000
          Width = 298.582869999998000000
          Height = 18.897650000000000000
          DataField = 'LINHA3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Top = 41.574830000000000000
          Width = 298.582869999998000000
          Height = 15.118120000000000000
          DataField = 'LINHA4'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o: [Date]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA5'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA5"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 306.141930000000000000
          Top = 30.236240000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 306.141930000000000000
          Top = 41.574830000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA7'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          Left = 146.252010000000000000
          Top = 12.094488189999990000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '######'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Top = 12.094488188976410000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'QUANTIDADE DE NOTAS:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 429.779840000000000000
          Top = 12.094488189999990000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fsnota."VALOR_CONTABIL">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 192.968770000000000000
          Top = 12.094488189999990000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAL DAS NOTAS FISCAIS DE ENTRADA: ')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 5.000000000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object fsnota: TfrxDBDataset
    UserName = 'fsnota'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'TURBO=TURBO'
      'TIPO=TIPO'
      'CODIGO_EMPRESA=CODIGO_EMPRESA'
      'CFOP=CFOP'
      'NOTAFISCAL=NOTAFISCAL'
      'SERIE=SERIE'
      'SUBSERIE=SUBSERIE'
      'ESPECIE=ESPECIE'
      'SINTEGRA=SINTEGRA'
      'MODELO_NF=MODELO_NF'
      'S_TRIB=S_TRIB'
      'CODIGO_CLIENTE=CODIGO_CLIENTE'
      'CPF_CLIENTE=CPF_CLIENTE'
      'CNPJ_CLIENTE=CNPJ_CLIENTE'
      'IE_CLIENTE=IE_CLIENTE'
      'UF_IE_CLIENTE=UF_IE_CLIENTE'
      'TIPO_VENDA=TIPO_VENDA'
      'TIPO_FRETE=TIPO_FRETE'
      'DATA=DATA'
      'DATA_ESCRITURACAO=DATA_ESCRITURACAO'
      'CODIGO_CONTABIL=CODIGO_CONTABIL'
      'DESDOBRAMENTO=DESDOBRAMENTO'
      'VALOR_CONTABIL=VALOR_CONTABIL'
      'VALOR_MERCADORIAS=VALOR_MERCADORIAS'
      'ALIQUOTA_ICMS=ALIQUOTA_ICMS'
      'CONDPGTO=CONDPGTO'
      'CONDICAO_PAGAMENTO=CONDICAO_PAGAMENTO'
      'CODEMPRESA=CODEMPRESA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'CODLANCAMENTO=CODLANCAMENTO'
      'BASE_ICMS=BASE_ICMS'
      'VALOR_ICMS_CREDITADO=VALOR_ICMS_CREDITADO'
      'VALOR_ICMS_ISENTAS=VALOR_ICMS_ISENTAS'
      'VALOR_ICMS_OUTRAS=VALOR_ICMS_OUTRAS'
      'ALIQUOTA_IPI=ALIQUOTA_IPI'
      'BASE_IPI=BASE_IPI'
      'VALOR_IPI_CREDITADO=VALOR_IPI_CREDITADO'
      'VALOR_IPI_CREDITADO50=VALOR_IPI_CREDITADO50'
      'VALOR_IPI_ISENTAS=VALOR_IPI_ISENTAS'
      'VALOR_IPI_OUTRAS=VALOR_IPI_OUTRAS'
      'VALOR_IPI_NAO_CREDITADO=VALOR_IPI_NAO_CREDITADO'
      'BASE_SUBSTITUICAO=BASE_SUBSTITUICAO'
      'VALOR_SUBSTITUICAO=VALOR_SUBSTITUICAO'
      'VALOR_FRETE=VALOR_FRETE'
      'VALOR_SEGURO=VALOR_SEGURO'
      'VALOR_DESPESAS=VALOR_DESPESAS'
      'ALIQUOTA_ISS=ALIQUOTA_ISS'
      'VALOR_ISS=VALOR_ISS'
      'OBS3=OBS3'
      'CONTABIL=CONTABIL'
      'VALOR_ICMS=VALOR_ICMS'
      'CODIGO_MINICIPIO=CODIGO_MINICIPIO'
      'CNPJ=CNPJ'
      'INSC_ESTADUAL=INSC_ESTADUAL'
      'UF=UF'
      'CODIGO_PISCONFINS=CODIGO_PISCONFINS'
      'NOTA_CANCELADA=NOTA_CANCELADA'
      'OBSERVACAO=OBSERVACAO'
      'TRANSPORTE_NOME=TRANSPORTE_NOME'
      'TRANSPORTE_PLACA=TRANSPORTE_PLACA'
      'TRANSPORTE_UF=TRANSPORTE_UF'
      'TRANSPORTE_CNPJCPF=TRANSPORTE_CNPJCPF'
      'TRANSPORTE_ENDERECO=TRANSPORTE_ENDERECO'
      'TRANSPORTE_CIDADE=TRANSPORTE_CIDADE'
      'TRANSPORTE_MUNICIPIO_UF=TRANSPORTE_MUNICIPIO_UF'
      'TRANSPORTE_IE=TRANSPORTE_IE'
      'TRANSPORTE_QUANTIDADE=TRANSPORTE_QUANTIDADE'
      'TRANSPORTE_MARCA=TRANSPORTE_MARCA'
      'TRANSPORTE_ESPECIE=TRANSPORTE_ESPECIE'
      'TRANSPORTE_NUMERO=TRANSPORTE_NUMERO'
      'TRANSPORTE_PESO_BRUTO=TRANSPORTE_PESO_BRUTO'
      'TRANSPORTE_PESO_LIQUIDO=TRANSPORTE_PESO_LIQUIDO'
      'FORNECEDOR=FORNECEDOR')
    DataSet = qrnota
    BCDToCurrency = False
    Left = 160
    Top = 18
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 8
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object qrnota_item: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODNOTA'
    SQL.Strings = (
      'select * from c000088')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = dsnota
    IndexFieldNames = 'CODNOTA Asc'
    Left = 352
    Top = 18
    object qrnota_itemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qrnota_itemITEM: TWideStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object qrnota_itemCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 10
    end
    object qrnota_itemCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qrnota_itemCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
    end
    object qrnota_itemUN_COMPRA: TWideStringField
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object qrnota_itemUN_FRACAO: TWideStringField
      FieldName = 'UN_FRACAO'
      Size = 5
    end
    object qrnota_itemFRACAO: TFloatField
      FieldName = 'FRACAO'
    end
    object qrnota_itemCST: TWideStringField
      FieldName = 'CST'
      Size = 5
    end
    object qrnota_itemCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrnota_itemQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrnota_itemUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrnota_itemSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrnota_itemDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnota_itemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrnota_itemDESCONTO_P: TFloatField
      FieldName = 'DESCONTO_P'
    end
    object qrnota_itemICMS_RETIDO: TWideStringField
      FieldName = 'ICMS_RETIDO'
      Size = 1
    end
    object qrnota_itemICMS_ALIQUOTA: TFloatField
      FieldName = 'ICMS_ALIQUOTA'
    end
    object qrnota_itemICMS_REDUCAO: TFloatField
      FieldName = 'ICMS_REDUCAO'
    end
    object qrnota_itemICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object qrnota_itemICMS_VALOR: TFloatField
      FieldName = 'ICMS_VALOR'
    end
    object qrnota_itemICMS_VALORRETIDO: TFloatField
      FieldName = 'ICMS_VALORRETIDO'
    end
    object qrnota_itemICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qrnota_itemICMS_NAOTRIBUTADO: TFloatField
      FieldName = 'ICMS_NAOTRIBUTADO'
    end
    object qrnota_itemSUB_MARGEM: TFloatField
      FieldName = 'SUB_MARGEM'
    end
    object qrnota_itemSUB_BASE: TFloatField
      FieldName = 'SUB_BASE'
    end
    object qrnota_itemSUB_VALOR: TFloatField
      FieldName = 'SUB_VALOR'
    end
    object qrnota_itemIPI_TIPO: TWideStringField
      FieldName = 'IPI_TIPO'
      Size = 25
    end
    object qrnota_itemIPI_ALIQUOTA: TFloatField
      FieldName = 'IPI_ALIQUOTA'
    end
    object qrnota_itemIPI_BASE: TFloatField
      FieldName = 'IPI_BASE'
    end
    object qrnota_itemIPI_VALOR: TFloatField
      FieldName = 'IPI_VALOR'
    end
    object qrnota_itemDATA: TDateField
      FieldName = 'DATA'
    end
    object qrnota_itemTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrnota_itemNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object qrnota_itemFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrnota_itemOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qrnota_itemSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrnota_itemCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 25
    end
    object qrnota_itemSUB_PRODUTOS: TFloatField
      FieldName = 'SUB_PRODUTOS'
    end
    object qrnota_itemCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qrnota_itemITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object qrnota_itemICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object qrnota_itemALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
    end
    object qrnota_itemCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrnota_itemCREDITO_ICMS_BASE: TFloatField
      FieldName = 'CREDITO_ICMS_BASE'
    end
    object qrnota_itemPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object qrnota_itemPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrnota_itemCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object qrnota_itemCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrnota_itemLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 15
    end
    object qrnota_itemLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrnota_itemLOTE_FABRICACAO_DATA: TDateField
      FieldName = 'LOTE_FABRICACAO_DATA'
    end
    object qrnota_itemCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrnota_itemPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrnota_itemPMARGEM: TSingleField
      FieldName = 'PMARGEM'
    end
    object qrnota_itemPRECOVENDA: TSingleField
      FieldName = 'PRECOVENDA'
    end
    object qrnota_itemPRECOCUSTO: TSingleField
      FieldName = 'PRECOCUSTO'
    end
  end
  object fsnota_item: TfrxDBDataset
    UserName = 'fsnota_item'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'ITEM=ITEM'
      'CODNOTA=CODNOTA'
      'CODPRODUTO=CODPRODUTO'
      'CODLANCAMENTO=CODLANCAMENTO'
      'UN_COMPRA=UN_COMPRA'
      'UN_FRACAO=UN_FRACAO'
      'FRACAO=FRACAO'
      'CST=CST'
      'CFOP=CFOP'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'TOTAL=TOTAL'
      'DESCONTO_P=DESCONTO_P'
      'ICMS_RETIDO=ICMS_RETIDO'
      'ICMS_ALIQUOTA=ICMS_ALIQUOTA'
      'ICMS_REDUCAO=ICMS_REDUCAO'
      'ICMS_BASE=ICMS_BASE'
      'ICMS_VALOR=ICMS_VALOR'
      'ICMS_VALORRETIDO=ICMS_VALORRETIDO'
      'ICMS_ISENTO=ICMS_ISENTO'
      'ICMS_NAOTRIBUTADO=ICMS_NAOTRIBUTADO'
      'SUB_MARGEM=SUB_MARGEM'
      'SUB_BASE=SUB_BASE'
      'SUB_VALOR=SUB_VALOR'
      'IPI_TIPO=IPI_TIPO'
      'IPI_ALIQUOTA=IPI_ALIQUOTA'
      'IPI_BASE=IPI_BASE'
      'IPI_VALOR=IPI_VALOR'
      'DATA=DATA'
      'TIPO=TIPO'
      'NOTAFISCAL=NOTAFISCAL'
      'FRETE=FRETE'
      'OUTRAS=OUTRAS'
      'SEGURO=SEGURO'
      'CLASSIFICACAO_FISCAL=CLASSIFICACAO_FISCAL'
      'PRODUTO=produto')
    DataSet = qrnota_item
    BCDToCurrency = False
    Left = 304
    Top = 26
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 80
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 336
    Top = 170
  end
  object qrnota: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrnotaCalcFields
    SQL.Strings = (
      'SELECT * FROM SINTEGRA_ENTRADA ORDER BY NOTAFISCAL')
    Params = <>
    Left = 128
    Top = 18
    object qrnotaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 15
    end
    object qrnotaTURBO: TIntegerField
      FieldName = 'TURBO'
    end
    object qrnotaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrnotaCODIGO_EMPRESA: TIntegerField
      FieldName = 'CODIGO_EMPRESA'
    end
    object qrnotaCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qrnotaNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qrnotaSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrnotaSUBSERIE: TWideStringField
      FieldName = 'SUBSERIE'
      Size = 2
    end
    object qrnotaESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 3
    end
    object qrnotaSINTEGRA: TWideStringField
      FieldName = 'SINTEGRA'
      Size = 2
    end
    object qrnotaMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrnotaS_TRIB: TWideStringField
      FieldName = 'S_TRIB'
      Size = 3
    end
    object qrnotaCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qrnotaCPF_CLIENTE: TWideStringField
      FieldName = 'CPF_CLIENTE'
      Size = 11
    end
    object qrnotaCNPJ_CLIENTE: TWideStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object qrnotaIE_CLIENTE: TWideStringField
      FieldName = 'IE_CLIENTE'
      Size = 14
    end
    object qrnotaUF_IE_CLIENTE: TWideStringField
      FieldName = 'UF_IE_CLIENTE'
      Size = 2
    end
    object qrnotaTIPO_VENDA: TWideStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qrnotaTIPO_FRETE: TWideStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object dtfldDATA: TDateField
      FieldName = 'DATA'
    end
    object dtfldDATA_ESCRITURACAO: TDateField
      FieldName = 'DATA_ESCRITURACAO'
    end
    object qrnotaCODIGO_CONTABIL: TIntegerField
      FieldName = 'CODIGO_CONTABIL'
    end
    object qrnotaDESDOBRAMENTO: TWideStringField
      FieldName = 'DESDOBRAMENTO'
      Size = 1
    end
    object qrnotaVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
    end
    object qrnotaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
    end
    object qrnotaALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrnotaCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 30
    end
    object qrnotaCONDICAO_PAGAMENTO: TWideStringField
      FieldName = 'CONDICAO_PAGAMENTO'
      Size = 1
    end
    object qrnotaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object qrnotaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrnotaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrnotaCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Size = 6
    end
    object qrnotaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qrnotaVALOR_ICMS_CREDITADO: TFloatField
      FieldName = 'VALOR_ICMS_CREDITADO'
    end
    object qrnotaVALOR_ICMS_ISENTAS: TFloatField
      FieldName = 'VALOR_ICMS_ISENTAS'
    end
    object qrnotaVALOR_ICMS_OUTRAS: TFloatField
      FieldName = 'VALOR_ICMS_OUTRAS'
    end
    object qrnotaALIQUOTA_IPI: TFloatField
      FieldName = 'ALIQUOTA_IPI'
    end
    object qrnotaBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object qrnotaVALOR_IPI_CREDITADO: TFloatField
      FieldName = 'VALOR_IPI_CREDITADO'
    end
    object qrnotaVALOR_IPI_CREDITADO50: TFloatField
      FieldName = 'VALOR_IPI_CREDITADO50'
    end
    object qrnotaVALOR_IPI_ISENTAS: TFloatField
      FieldName = 'VALOR_IPI_ISENTAS'
    end
    object qrnotaVALOR_IPI_OUTRAS: TFloatField
      FieldName = 'VALOR_IPI_OUTRAS'
    end
    object qrnotaVALOR_IPI_NAO_CREDITADO: TFloatField
      FieldName = 'VALOR_IPI_NAO_CREDITADO'
    end
    object qrnotaBASE_SUBSTITUICAO: TFloatField
      FieldName = 'BASE_SUBSTITUICAO'
    end
    object qrnotaVALOR_SUBSTITUICAO: TFloatField
      FieldName = 'VALOR_SUBSTITUICAO'
    end
    object qrnotaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object qrnotaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object qrnotaVALOR_DESPESAS: TFloatField
      FieldName = 'VALOR_DESPESAS'
    end
    object qrnotaALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
    end
    object qrnotaVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
    end
    object qrnotaOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrnotaCONTABIL: TIntegerField
      FieldName = 'CONTABIL'
    end
    object qrnotaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotaCODIGO_MINICIPIO: TIntegerField
      FieldName = 'CODIGO_MINICIPIO'
    end
    object qrnotaCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrnotaINSC_ESTADUAL: TWideStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 18
    end
    object qrnotaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrnotaCODIGO_PISCONFINS: TWideStringField
      FieldName = 'CODIGO_PISCONFINS'
      Size = 6
    end
    object qrnotaNOTA_CANCELADA: TWideStringField
      FieldName = 'NOTA_CANCELADA'
      Size = 1
    end
    object qrnotaOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
    end
    object qrnotaTRANSPORTE_NOME: TWideStringField
      FieldName = 'TRANSPORTE_NOME'
      Size = 40
    end
    object qrnotaTRANSPORTE_PLACA: TWideStringField
      FieldName = 'TRANSPORTE_PLACA'
      Size = 10
    end
    object qrnotaTRANSPORTE_UF: TWideStringField
      FieldName = 'TRANSPORTE_UF'
      Size = 2
    end
    object qrnotaTRANSPORTE_CNPJCPF: TWideStringField
      FieldName = 'TRANSPORTE_CNPJCPF'
      Size = 18
    end
    object qrnotaTRANSPORTE_ENDERECO: TWideStringField
      FieldName = 'TRANSPORTE_ENDERECO'
      Size = 50
    end
    object qrnotaTRANSPORTE_CIDADE: TWideStringField
      FieldName = 'TRANSPORTE_CIDADE'
      Size = 30
    end
    object qrnotaTRANSPORTE_MUNICIPIO_UF: TWideStringField
      FieldName = 'TRANSPORTE_MUNICIPIO_UF'
      Size = 2
    end
    object qrnotaTRANSPORTE_IE: TWideStringField
      FieldName = 'TRANSPORTE_IE'
    end
    object qrnotaTRANSPORTE_QUANTIDADE: TFloatField
      FieldName = 'TRANSPORTE_QUANTIDADE'
    end
    object qrnotaTRANSPORTE_MARCA: TWideStringField
      FieldName = 'TRANSPORTE_MARCA'
      Size = 10
    end
    object qrnotaTRANSPORTE_ESPECIE: TWideStringField
      FieldName = 'TRANSPORTE_ESPECIE'
    end
    object qrnotaTRANSPORTE_NUMERO: TWideStringField
      FieldName = 'TRANSPORTE_NUMERO'
    end
    object qrnotaTRANSPORTE_PESO_BRUTO: TFloatField
      FieldName = 'TRANSPORTE_PESO_BRUTO'
    end
    object qrnotaTRANSPORTE_PESO_LIQUIDO: TFloatField
      FieldName = 'TRANSPORTE_PESO_LIQUIDO'
    end
    object qrnotaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
    end
    object qrnotaDESCONOT: TFloatField
      FieldName = 'DESCONOT'
    end
    object qrnotaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 56
    Top = 16
  end
end
