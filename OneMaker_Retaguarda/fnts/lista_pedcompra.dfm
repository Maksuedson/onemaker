object FRMLISTA_PEDCOMPRA: TFRMLISTA_PEDCOMPRA
  Left = 504
  Top = 360
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PEDIDO DE COMPRA | Relat'#243'rios'
  ClientHeight = 123
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
    Top = 16
    Width = 60
    Height = 13
    Caption = 'Relat'#243'rio: '
  end
  object Bevel1: TBevel
    Left = 16
    Top = 40
    Width = 385
    Height = 2
  end
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 62
    Width = 425
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 137
  end
  object combo_relatorio: TComboBox
    Left = 93
    Top = 11
    Width = 300
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'PEDIDO DE COMPRA')
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 67
    Width = 425
    Height = 56
    Color = 3355443
    ColorHighLight = 3355443
    ColorShadow = 3355443
    Align = alBottom
    TabOrder = 1
    object bimprimir: TAdvGlowButton
      Left = 1
      Top = 1
      Width = 115
      Height = 54
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
      Left = 322
      Top = 1
      Width = 102
      Height = 54
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
    ReportOptions.LastChange = 39366.682490231480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure MasterData2OnAfterCalcHeight(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure Memo21OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  '
      '  '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 192
    Top = 18
    Datasets = <
      item
        DataSet = fspedido
        DataSetName = 'fspedido'
      end
      item
        DataSet = fspedido_item
        DataSetName = 'fspedido_item'
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
        Height = 99.267780000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Top = 77.897650000000010000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 94.692950000000010000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Top = 79.897650000000010000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 174.133890000000000000
          Top = 79.897650000000010000
          Width = 309.921460000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESTINAT'#193'RIO')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 586.527830000000000000
          Top = 79.897650000000010000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 650.590910000000000000
          Top = 79.897650000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR DA NOTA')
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
          Left = 60.252010000000000000
          Top = 78.897650000000010000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 118.944960000000000000
          Top = 78.897650000000010000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SA'#205'DA')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 498.457020000000000000
          Top = 78.897650000000010000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MOD')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 544.252320000000000000
          Top = 79.677180000000010000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 623.622450000000000000
          Top = 79.897650000000010000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SIT')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 12.779530000000000000
          Top = 39.779530000000010000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOTA FISCAL:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 192.756030000000000000
          Top = 39.779530000000010000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA :')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 317.480520000000000000
          Top = 39.779530000000010000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PREVIS'#195'O DE ENTREGA:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 100.488250000000000000
          Top = 39.779530000000010000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          DataField = 'NUMERO'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido."NUMERO"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 241.448980000000000000
          Top = 39.779530000000010000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          DataField = 'DATA'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido."DATA"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 461.102660000000000000
          Top = 39.779530000000010000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          DataField = 'PREVISAO'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido."PREVISAO"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 54.897650000000010000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COND. DE PAGAMENTO:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 147.401670000000000000
          Top = 54.897650000000010000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          DataField = 'CONDPGTO'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido."CONDPGTO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORNECEDOR :')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 39.779530000000000000
          Top = 20.677180000000010000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 98.267780000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          DataField = 'CODFORNECEDOR'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido."CODFORNECEDOR"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          DataField = 'fornecedor'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido."fornecedor"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 98.267780000000000000
          Top = 20.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          DataField = 'CODIGO'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido."CODIGO"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 194.976500000000000000
          Top = 22.677180000000010000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 241.889920000000000000
          Top = 22.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          DataField = 'CFOP'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido."CFOP"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 461.102660000000000000
          Top = 56.692950000000010000
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
        object Memo1: TfrxMemoView
          Left = 390.480520000000000000
          Top = 56.692950000000010000
          Width = 64.252010000000100000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SITUA'#199#195'O:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 393.071120000000000000
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
        object Memo6: TfrxMemoView
          Top = 34.015770000000000000
          Width = 298.582870000000000000
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
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 340.157700000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          Left = 146.252010000000000000
          Top = 3.314958190000027000
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
          Top = 3.314958190000027000
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
          Left = 620.425480000000000000
          Top = 1.535428190000005000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
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
            '[SUM(<fsnota."TOTAL_NOTA">,MasterData1)]'
            ' ')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 471.882190000000000000
          Top = 3.314958190000027000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DAS NOTAS:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        DataSet = fspedido_item
        DataSetName = 'fspedido_item'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = 507.393940000000000000
          Top = 3.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'UNITARIO'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido_item."UNITARIO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 63.220470000000000000
          Top = 3.000000000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DataField = 'produto'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido_item."produto"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 399.598640000000000000
          Top = 3.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'QTDE'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido_item."QTDE"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 8.779530000000000000
          Top = 4.440939999999955000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          DataField = 'CODPRODUTO'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido_item."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 672.299630000000000000
          Top = 4.661409999999989000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido_item."TOTAL"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 340.819110000000000000
          Top = 3.000000000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'unidade'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fspedido_item."unidade"]')
          ParentFont = False
        end
      end
    end
  end
  object fspedido: TfrxDBDataset
    UserName = 'fspedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'fornecedor=fornecedor'
      'CODIGO=CODIGO'
      'NUMERO=NUMERO'
      'CFOP=CFOP'
      'DATA=DATA'
      'CODFORNECEDOR=CODFORNECEDOR'
      'TOTAL_NOTA=TOTAL_NOTA'
      'ITENS=ITENS'
      'SITUACAO=SITUACAO'
      'PREVISAO=PREVISAO'
      'CONDPGTO=CONDPGTO')
    DataSource = dspedido
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
  object fspedido_item: TfrxDBDataset
    UserName = 'fspedido_item'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'produto=produto'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'RECEBIDO=RECEBIDO'
      'FALTA=FALTA'
      'unidade=unidade'
      'CODIGO=CODIGO'
      'CODNOTA=CODNOTA')
    DataSource = dspedido_item
    BCDToCurrency = False
    Left = 312
    Top = 34
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 384
    Top = 2
  end
  object qrpedido_item: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000038')
    Params = <>
    Left = 344
    Top = 32
    object qrpedido_itemproduto: TStringField
      DisplayLabel = 'PRODUTO'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrpedido_itemunidade: TStringField
      FieldKind = fkLookup
      FieldName = 'unidade'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'UNIDADE'
      KeyFields = 'codproduto'
      Visible = False
      Size = 5
      Lookup = True
    end
    object qrpedido_itemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrpedido_itemCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrpedido_itemCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrpedido_itemQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrpedido_itemUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrpedido_itemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrpedido_itemRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
  end
  object dspedido_item: TDataSource
    DataSet = qrpedido_item
    Left = 376
    Top = 32
  end
  object qrpedido_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000037')
    Params = <>
    DataSource = dspedido
    Left = 96
    Top = 24
    object qrpedido_produtofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrpedido_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrpedido_produtoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrpedido_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object dtfld_produtoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrpedido_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrpedido_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrpedido_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrpedido_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object dtfld_produtoPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qrpedido_produtoCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 50
    end
    object qrpedido_produtoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrpedido_produtoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrpedido_produtoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrpedido_produtoOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
  end
  object dspedido: TDataSource
    DataSet = frmmodulo.qrpedido_produto
    Left = 128
    Top = 24
  end
end