object frmEntrega_ficha: TfrmEntrega_ficha
  Left = 296
  Top = 170
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'ENTREGA DE MERCADORIAS | Lan'#231'amento Avulso'
  ClientHeight = 499
  ClientWidth = 713
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 432
    Width = 713
    Height = 2
    Align = alBottom
    ExplicitTop = 400
    ExplicitWidth = 707
  end
  object Bevel2: TBevel
    Left = 0
    Top = 399
    Width = 713
    Height = 2
    Align = alBottom
    ExplicitTop = 367
    ExplicitWidth = 707
  end
  object wwDBGrid1: TwwDBGrid
    Left = -1
    Top = 0
    Width = 715
    Height = 399
    ControlType.Strings = (
      'qtde_entregue;CustomEdit;ed_entregue;F')
    Selected.Strings = (
      'Item'#9'3'#9'Item'
      'codvenda'#9'6'#9'Venda'
      'data_venda'#9'10'#9'Data'
      'Codigo'#9'8'#9'C'#243'digo'
      'Produto'#9'31'#9'Produto'
      'Unidade'#9'5'#9'Un.'
      'qtde_vendida'#9'10'#9'Vendido'
      'qtde_ja_entregue'#9'10'#9'Entregue'
      'qtde_entregue'#9'10'#9'Entregar'
      'qtde_saldo'#9'10'#9'Saldo')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 8
    ShowHorzScrollBar = True
    DataSource = dsEntrega
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 434
    Width = 713
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 558
    ExplicitWidth = 932
    object bgravar: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 117
      Height = 65
      Align = alLeft
      Caption = 'Gravar e Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
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
        1F90000002754944415478DAC497314B1C4114C77F6F569354827042BC08769E
        B781408C972241B92A4D0AD1DCA58A1FC426AD5F43B0947858A4499AE3B44B38
        6C2CD2046CAE3AAE10E450B333296676A3B7E7EDEEDD061F0C2C3B33FF1FEFCD
        BC9937628CE1216C0AE0FDE187E887521A00AD95FD16034610AD56B4176C8891
        75A0E81A4007E818312D15784746E9763827D2707AA17DDDFA62C109B609EC1A
        A54B626458FF12B02446AA46E9CFC02F6007688C125523FA168116460E815286
        2896DC9C96D3C804AE2AA57F026B132CE39AD3A8A6055705BE01851CF650C169
        5593C08BC08181E9BC76AFD33A180CBB02505E609BD2FB39791AF35C29BD1F72
        063DDE9C704D23F394E2F1542C61D61CE31F58020F8CECE603153EBEF6D97EFB
        8227D3037023BB1278773C5EC99832F742EB95E7949E1658989D61E365299E6A
        9665C1DA0B36F2822ECFDB2D72D1BFE2FBD9EFD8B89065436D8FC15CA17B27A7
        F42EFBB1B1212B0C757112682D25F4362B11BC303BC3D6AB329E8A9FD34A84DA
        AA4F393D34628DBC249ECDCEF0E98DDD9D8FA63C0E7E9C11681341EB159F7271
        2E0B347672758675F6AF6FB8FE63137E79BE406DD54789584FC7877612C1BDCB
        3E7B27A75CF4AF002817E7A8557C6A151F7F4C4FEF808D98D67DA306E17E716E
        1268C4B26775E01D8D1A3C081F177A9B1586BAED2A8754F071A18ED18E76B5B1
        37C68EAB1C12E1E1776613B36386DC4E0DE038696EEFB23F1ED46A37EEA4930E
        3CDBB4DA06BAFFE13EEE6AADB643CEB00AE41CA80BDCE445745A75A73DB2E66A
        1A789793E75DA7D54C5B6536B556AB69D67CD49A3A8D66D6BAFA1C5847CC5652
        AAC552C6CE591F0C6FEC0993600DA091E909932AB31EE8D1F677002FBD397636
        4708BE0000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bgravarClick
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
    object bcancelar: TAdvGlowButton
      Left = 605
      Top = 0
      Width = 108
      Height = 65
      Align = alRight
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
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
      TabOrder = 1
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
      ExplicitLeft = 824
    end
  end
  object ed_entregue: TwwDBEdit
    Left = 392
    Top = 56
    Width = 97
    Height = 21
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = ed_entregueExit
  end
  object Panel2: TPanel
    Left = 0
    Top = 401
    Width = 713
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 378
    ExplicitWidth = 707
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 106
      Height = 13
      Caption = 'Modelo da Impress'#227'o:'
    end
    object Label2: TLabel
      Left = 352
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Vias:'
    end
    object ComboBox1: TComboBox
      Left = 129
      Top = 4
      Width = 216
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        '1 - BOBINA'
        '2 - RAZ'#195'O MATRICIAL'
        '4 - CARTA MATRICIAL'
        '3 - RAZ'#195'O LASER/TINTA')
    end
    object evias: TRzSpinEdit
      Left = 384
      Top = 2
      Width = 47
      Height = 21
      Max = 100.000000000000000000
      TabOrder = 1
    end
  end
  object bt_razao: TButton
    Left = 456
    Top = 144
    Width = 113
    Height = 25
    Caption = 'Razao - Matricial'
    TabOrder = 4
    Visible = False
    OnClick = bt_razaoClick
  end
  object bt_bobina: TButton
    Left = 456
    Top = 168
    Width = 113
    Height = 25
    Caption = 'Bobina - Matricial'
    TabOrder = 5
    Visible = False
    OnClick = bt_bobinaClick
  end
  object bt_carta: TButton
    Left = 456
    Top = 192
    Width = 113
    Height = 25
    Caption = 'Carta - Matricial'
    TabOrder = 6
    Visible = False
    OnClick = bt_cartaClick
  end
  object bt_laser: TButton
    Left = 456
    Top = 216
    Width = 113
    Height = 25
    Caption = 'Razao - Laser'
    TabOrder = 7
    Visible = False
    OnClick = bt_laserClick
  end
  object Pop1: TPopupMenu
    Left = 352
    Top = 256
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
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
    Left = 88
    Top = 264
  end
  object rel_entrega: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.758111979200000000
    ReportOptions.LastChange = 39643.381793252300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      'BEGIN'
      'END.            ')
    Left = 120
    Top = 264
    Datasets = <
      item
        DataSet = fscliente
        DataSetName = 'fscliente'
      end
      item
        DataSet = fs_entrega
        DataSetName = 'fs_entrega'
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
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      LeftMargin = 7.800000000000000000
      RightMargin = 8.200000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      OnAfterPrint = 'Page2OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Shape11: TfrxShapeView
          Top = 64.929190000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo34: TfrxMemoView
          Left = 5.559060000000000000
          Top = 66.708720000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 64.252010000000000000
          Top = 66.708720000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 589.606680000000000000
          Top = 66.708720000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 646.299630000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 268.346630000000000000
          Top = 1.000000000000000000
          Width = 464.882190000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'G U I A    D E   E N T R E G A    N'#186': [fxrelatorio."LINHA10"]')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 53.913420000000000000
          Top = 66.141732280000000000
          Height = 457.322839530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 589.606680000000000000
          Top = 66.141732280000000000
          Height = 457.322839530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 642.520100000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 1.133858270000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 37.795300000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo87: TfrxMemoView
          Left = 0.755905510000000000
          Top = 22.677180000000000000
          Width = 442.205010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CODIGO"]  [FSCLIENTE."NOME"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 449.764070000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Top = 15.118120000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 566.929500000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 570.709030000000000000
          Top = 15.118120000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Identidade / Insc.Estadual')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 661.417750000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Data da Compra')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 664.197280000000000000
          Top = 23.677180000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 452.543600000000000000
          Top = 24.456710000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CPF"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 568.709030000000000000
          Top = 24.677180000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'RG'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."RG"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1.133858270000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Line20: TfrxLineView
          Left = 245.669450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 2.779530000000000000
          Top = 44.354360000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."ENDERECO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 3.000000000000000000
          Top = 53.692949999999990000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataField = 'BAIRRO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."BAIRRO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 249.448980000000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade/UF')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 355.275820000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 245.669450000000000000
          Top = 49.133889999999990000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CIDADE"] / [FSCLIENTE."UF"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 359.055350000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Complemento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 358.055350000000000000
          Top = 44.354360000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DataField = 'COMPLEMENTO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."COMPLEMENTO"]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 502.677490000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 507.457020000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Telefones')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 506.457020000000000000
          Top = 44.354360000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[FSCLIENTE."TELEFONE1"]  [FSCLIENTE."TELEFONE2"]  [FSCLIENTE."CE' +
              'LULAR"]')
          ParentFont = False
        end
        object Line23: TfrxLineView
          Left = 623.622450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          Left = 625.401980000000000000
          Top = 39.795300000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Caixa:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 623.622450000000000000
          Top = 51.913420000000000000
          Width = 109.606370000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo100: TfrxMemoView
          Left = 659.638220000000000000
          Top = 39.795300000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA9'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxrelatorio."LINHA9"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 625.401980000000000000
          Top = 53.133889999999990000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 660.417750000000000000
          Top = 53.133889999999990000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA8'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxrelatorio."LINHA8"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 1.000000000000000000
          Top = 1.000000000000000000
          Width = 268.346630000000000000
          Height = 15.118110240000000000
          DataField = 'FANTASIA'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[fxemitente."FANTASIA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 238.110390000000000000
        Width = 733.228820000000000000
        object Shape1: TfrxShapeView
          Width = 733.228820000000000000
          Height = 52.913420000000000000
          Fill.BackColor = clWhite
          Frame.Width = 0.500000000000000000
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Reconhe'#231'o que recebi a(s) mercadoria(s) acima relacionada(s) em ' +
              'perfeito estado.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.236239999999900000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 41.574830000000000000
          Top = 41.574830000000020000
          Width = 192.756030000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 325.039580000000000000
          Top = 26.456709999999820000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Assinatura:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 393.071120000000000000
          Top = 37.795299999999880000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 94.488250000000000000
          Top = 41.574830000000020000
          Width = 15.118120000000000000
          Height = -18.897650000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 147.401670000000000000
          Top = 41.574830000000020000
          Width = 15.118120000000000000
          Height = -18.897650000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 162.519790000000000000
        Width = 733.228820000000000000
        DataSet = fs_entrega
        DataSetName = 'fs_entrega'
        RowCount = 0
        object Memo22: TfrxMemoView
          Left = 5.779530000000000000
          Top = 1.779529999999994000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataField = 'Codigo'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fs_entrega."Codigo"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 64.472480000000000000
          Top = 1.779529999999994000
          Width = 514.016080000000000000
          Height = 11.338590000000000000
          DataField = 'PRODUTO'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fs_entrega."PRODUTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 589.827150000000000000
          Top = 1.779529999999994000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'Unidade'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fs_entrega."Unidade"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 646.520100000000000000
          Top = 1.779529999999994000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'qtde_entregue'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fs_entrega."qtde_entregue"]')
          ParentFont = False
        end
      end
    end
  end
  object fs_entrega: TfrxDBDataset
    UserName = 'fs_entrega'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Item=ITEM'
      'Codigo=Codigo'
      'Produto=PRODUTO'
      'Unidade=Unidade'
      'qtde_vendida=qtde_vendida'
      'qtde_entregue=qtde_entregue'
      'qtde_saldo=qtde_saldo')
    DataSet = qrEntrega
    BCDToCurrency = False
    Left = 56
    Top = 264
  end
  object fscliente: TfrxDBDataset
    UserName = 'fscliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'APELIDO=APELIDO'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'MORADIA=MORADIA'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'TELEFONE3=TELEFONE3'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'RG=RG'
      'CPF=CPF'
      'FILIACAO=FILIACAO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'CONJUGE=CONJUGE'
      'PROFISSAO=PROFISSAO'
      'EMPRESA=EMPRESA'
      'RENDA=RENDA'
      'LIMITE=LIMITE'
      'REF1=REF1'
      'REF2=REF2'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'NASCIMENTO=NASCIMENTO'
      'CODREGIAO=CODREGIAO'
      'CODCONVENIO=CODCONVENIO'
      'CODUSUARIO=CODUSUARIO')
    DataSet = frmentrega.qrcliente2
    BCDToCurrency = False
    Left = 240
    Top = 264
  end
  object dsEntrega: TDataSource
    DataSet = qrEntrega
    Left = 344
    Top = 136
  end
  object qrEntrega: TClientDataSet
    PersistDataPacket.Data = {
      0D0100009619E0BD01000000180000000A0000000000030000000D0104497465
      6D010049000000010005574944544802000200030008636F6476656E64610100
      4900000001000557494454480200020006000A646174615F76656E6461080008
      000000000006436F6469676F0100490000000100055749445448020002000600
      0750726F6475746F010049000000010005574944544802000200500007556E69
      646164650100490000000100055749445448020002000A000C717464655F7665
      6E64696461080004000000000010717464655F6A615F656E7472656775650800
      0400000000000D717464655F656E74726567756508000400000000000A717464
      655F73616C646F08000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 136
    object qrEntregaItem: TStringField
      DisplayWidth = 3
      FieldName = 'Item'
      Size = 3
    end
    object qrEntregacodvenda: TStringField
      DisplayLabel = 'Venda'
      DisplayWidth = 6
      FieldName = 'codvenda'
      Size = 6
    end
    object qrEntregadata_venda: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'data_venda'
    end
    object qrEntregaCodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'Codigo'
      Size = 6
    end
    object qrEntregaProduto: TStringField
      DisplayWidth = 31
      FieldName = 'Produto'
      Size = 80
    end
    object qrEntregaUnidade: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 5
      FieldName = 'Unidade'
      Size = 10
    end
    object qrEntregaqtde_vendida: TFloatField
      DisplayLabel = 'Vendido'
      DisplayWidth = 10
      FieldName = 'qtde_vendida'
    end
    object qrEntregaqtde_ja_entregue: TFloatField
      DisplayLabel = 'Entregue'
      DisplayWidth = 10
      FieldName = 'qtde_ja_entregue'
    end
    object qrEntregaqtde_entregue: TFloatField
      DisplayLabel = 'Entregar'
      DisplayWidth = 10
      FieldName = 'qtde_entregue'
    end
    object qrEntregaqtde_saldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'qtde_saldo'
    end
  end
  object qrentrega2: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 128
    Top = 120
  end
end