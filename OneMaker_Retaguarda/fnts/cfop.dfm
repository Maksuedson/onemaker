object frmcfop: Tfrmcfop
  Left = 201
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CFOP | Ficha de Cadastro'
  ClientHeight = 390
  ClientWidth = 635
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pficha: TFlatPanel
    Left = 1
    Top = -3
    Width = 634
    Height = 325
    ParentColor = True
    ColorHighLight = clWhite
    ColorShadow = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 12
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CFOP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 36
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Natureza:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LRENDA: TLabel
      Left = 6
      Top = 106
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ICMS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 81
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tipo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 150
      Top = 82
      Width = 251
      Height = 13
      Caption = '1 - Entrada   2 - Sa'#237'da    3 - Servi'#231'o    4 - Exporta'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 213
      Top = 106
      Width = 12
      Height = 13
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 35
      Top = 226
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Observa'#231#245'es:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 6
      Top = 177
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CST Principal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 6
      Top = 201
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Classifica'#231#227'o Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 6
      Top = 130
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ICMS Reduzido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 213
      Top = 130
      Width = 12
      Height = 13
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 6
      Top = 154
      Width = 107
      Height = 13
      Caption = 'Margem Agregada ST:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 213
      Top = 154
      Width = 12
      Height = 13
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 6
      Top = 60
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Simplificado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 8
      Width = 73
      Height = 21
      Color = clWhite
      DataField = 'CFOP'
      DataSource = dscfop2
      TabOrder = 0
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 32
      Width = 472
      Height = 21
      Color = clWhite
      DataField = 'NATUREZA'
      DataSource = dscfop2
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object ERENDA: TJvDBCalcEdit
      Left = 120
      Top = 102
      Width = 89
      Height = 21
      Margins.Left = 2
      Margins.Top = 1
      Color = clWhite
      DecimalPlaces = 15
      DisplayFormat = '###,###,##0.00'
      NumGlyphs = 2
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = ERENDAKeyPress
      DataField = 'ICMS'
      DataSource = dscfop2
    end
    object DBEdit3: TDBEdit
      Left = 120
      Top = 78
      Width = 25
      Height = 21
      Color = clWhite
      DataField = 'TIPO'
      DataSource = dscfop2
      TabOrder = 2
      OnEnter = DBEdit1Enter
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 120
      Top = 222
      Width = 472
      Height = 21
      Color = clWhite
      DataField = 'OBS1'
      DataSource = dscfop2
      TabOrder = 8
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 120
      Top = 246
      Width = 472
      Height = 21
      Color = clWhite
      DataField = 'OBS2'
      DataSource = dscfop2
      TabOrder = 9
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 120
      Top = 270
      Width = 472
      Height = 21
      Color = clWhite
      DataField = 'OBS3'
      DataSource = dscfop2
      TabOrder = 10
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 120
      Top = 294
      Width = 472
      Height = 21
      Color = clWhite
      DataField = 'OBS4'
      DataSource = dscfop2
      TabOrder = 11
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit7KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 120
      Top = 174
      Width = 49
      Height = 21
      Color = clWhite
      DataField = 'ST'
      DataSource = dscfop2
      TabOrder = 6
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit9: TDBEdit
      Left = 120
      Top = 198
      Width = 97
      Height = 21
      Color = clWhite
      DataField = 'CLASSIFICACAO_FISCAL'
      DataSource = dscfop2
      TabOrder = 7
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object RxDBCalcEdit1: TJvDBCalcEdit
      Left = 120
      Top = 126
      Width = 89
      Height = 21
      Margins.Left = 2
      Margins.Top = 1
      Color = clWhite
      DecimalPlaces = 15
      DisplayFormat = '###,###,##0.00'
      NumGlyphs = 2
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = ERENDAKeyPress
      DataField = 'REDUCAO_ICMS'
      DataSource = dscfop2
    end
    object RxDBCalcEdit2: TJvDBCalcEdit
      Left = 120
      Top = 150
      Width = 89
      Height = 21
      Margins.Left = 2
      Margins.Top = 1
      Color = clWhite
      DecimalPlaces = 15
      DisplayFormat = '###,###,##0.00'
      NumGlyphs = 2
      ShowButton = False
      TabOrder = 5
      DecimalPlacesAlwaysShown = False
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = ERENDAKeyPress
      DataField = 'MARGEM_AGREGADA'
      DataSource = dscfop2
    end
    object DBEdit10: TDBEdit
      Left = 120
      Top = 55
      Width = 472
      Height = 21
      Color = clWhite
      DataField = 'SIMPLIFICADO'
      DataSource = dscfop2
      TabOrder = 12
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit1KeyPress
    end
  end
  object plocalizar2: THeaderView
    Left = 912
    Top = 72
    Width = 605
    Height = 243
    AdaptiveColors = True
    BorderStyle = bsNone
    Caption = 'Rela'#231#227'o de Registros'
    HeaderColor = clHighlight
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    HeaderSize = 15
    ParentColor = False
    Visible = False
    object DBGrid1: TDBGrid
      Left = 0
      Top = 15
      Width = 605
      Height = 228
      Align = alClient
      BorderStyle = bsNone
      DataSource = dscfop
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CFOP'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NATUREZA'
          Title.Caption = 'NATUREZA DE OPERA'#199#195'O'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 514
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 326
    Width = 635
    Height = 64
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 588
    ExplicitWidth = 1285
    object bincluir: TAdvGlowButton
      Left = 119
      Top = 11
      Width = 76
      Height = 45
      Caption = 'Incluir'
      Font.Charset = ANSI_CHARSET
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
      Left = 198
      Top = 11
      Width = 76
      Height = 45
      Caption = 'Alterar'
      Font.Charset = ANSI_CHARSET
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
      Left = 277
      Top = 11
      Width = 76
      Height = 45
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
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
    object blocalizar: TAdvGlowButton
      Left = 356
      Top = 11
      Width = 76
      Height = 45
      Caption = 'Localizar'
      Font.Charset = ANSI_CHARSET
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
      TabOrder = 3
      OnClick = blocalizarClick
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
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 656
      Top = 82
      Width = 44
      Height = 32
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033E494441544889
        8D95C18B1C4514C67FDFA43D444583E061BDE9218B2B314E6FE2450FEA5E82D9
        83DDA241C583202222994E0E4A349B109218D643B65B4444041121829A690F4A
        F660CC1FB0D84D4232620E7A5B0F8210317871E7F390EA75323B339B7729AAEA
        BDEFABEFD57B55B2CD386B77BA0F487ACEF653C00C70AF246CFF21A967FB47E0
        EBBA487F1D87A151047156DE6FFB14904ABACD034E9264DBCD08FC2BA96BFB50
        5DA4BF6D4A1067E5CBC087C05D401FB80074819F80DF83DB14B00B4880278116
        F017F06695275F8C256877BA878013925AB62F0007EA22BD384E7E88D92969C9
        F61380251DAEF2E4D40682382B5FB1FD6948C3A2ED85BA48D726810FA8DE62FB
        38F076B8A357EB22FD6C9D20CECAED21057700EF557972F8568047109D04DE01
        FE0666AB3CB91A01D85E9474A7ED1FEA225D07DF7DF05B03AC9C7E464369E907
        A5B24D5DA40A3847243D6A7B0E580492A8DDE94E03F3C01AD0D9EC940D78005C
        0707A88B742DCECA0E7009988FB3723A92B40F8880737591F63649415F5273DA
        9BC01BABF2A41767E532B017D817053996F4CD66271FA87D8D021F50D6059E96
        3417013BC2FACA24F0C179DFBCB8737FF78561BF8B1FA45F0E61ED88806D61B2
        DAEE745B7591F6870387AD25CE0084925C1F818660358CDBA2905242C056E0FA
        30A0069C9ACA9964839891ED6BC0DD92A6AA3CB93C2AA0798B9A3BE89B97C206
        378DFFFB4F05FF6B91A4CBC0E3C02C3092A02ED2569C95EB242D7C66D2254B9A
        05045C89C293FB98A46781CFC7055579A2382BDDA86977BA1E47623BE546659E
        D723FBCFCE009782FA87EA22BDDA388EEAE4A18ADA50AE71566EB77D25887D38
        AA8BB41767E539605ED212371A64AC0DA66B58499C952D20971401DF5579D293
        6DDA9DEE8CA415DB5B812375919E984432CEDA9DEE82A463B6FF0176D745DA1B
        7CAE5FB7FD11D00F4E276FA5279A93DB7E17381AFE9237EA22FD18863E9C382B
        8F010B61BA0C1CA8F2E4974DC0A78125604F583A5EE5C9D1667F43D3B43BDDD7
        249DB67D3BB02669D9F659A0025643D7DE276997ED04D82329B27D1D385817E9
        278378E33EFD69DBEF037B256DD9E4D3EF4BFADEF65B75916E503BB1EDE3AC9C
        019E07E68007817BC2D69FC0CFC079E0AB2A4FC63EF3FF018B09C93EC7530589
        0000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dscfop2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 11
      Top = 11
      Width = 49
      Height = 42
      Hint = 'Prior record'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
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
        1F90000005F94944415478DAC4975B6C1D571586BFB567CE9C737C89633B8D6B
        BBB61B431A1A478D026D78485C0548A008A13E70895011A4458AF200484588A7
        3C200802840AA8426A8D844028951011CA431215A1205A5C45428424AD9A86C8
        E482EBC4761C27F6F1B9CC99D97B2F1E8E13C73E7692F292258D341ACDEC7FAF
        F5AFF5EF7F4455791061784011DEBA913B1EB65EBC417E3A61EDF9985CB98A75
        111897F7CAA0819D08EB80CEF9D7C7512E79386E84617C50098384B821CBB50D
        392AED1137FBDB6EAFAD4B81570A1140F463C0378DF059A0A3FE2530F035E075
        447F25C2BFFEFF520BA8D2E19C3988F893C09E654117A203D883F893CE9983AA
        742C2AE3FD00AB40E364FC84B17AC2AB3CF741F9F32ACF19AB271A27E32754EE
        019C9F4DC8CF2618A7648B6CEA3A5D3C19C6AE7FB9AD8940215162AB18597ED5
        3076FD5DA78B27B3453619A7B7D7BFBDC6AD717AFA37E71081AA0DBA9C337FC1
        C8C0422B2C34A053B8117B3EDA11514C3CE325472E107425BEBC9E0D02FFE96C
        E8AEAAC2DFBFF1F8E28CBD0B70CE80E700500F2A907AB85A743CDD93E5B567DB
        D9BDB18999D8B3B21228C0009E03CE19BC0BEA4B9DD82CD534DA6AC53CBFB4BC
        46A0922AD315C70B9B9B78E59936720D219F7FBC998FB44714AAFEAE5D64C53C
        5F4DA3AD89CDD6CFB137698B087B9752660466AB4AEC94179F5AC5B7B6361366
        33D8AAE5D8DB5798293BB29908EE92B700046EAF57771E985D94B1AA3C05EC5A
        5ADEEB654FC6C04F77ACE6C56DAB08B311133763F6BE7686EF1EB94CEC0CF950
        EEA7D977CD632C512E71CF80E9BDB54305264B8ECEA6809F7DB295C175794A15
        CFD1B3637CFFCF17F8F74C4867772F73D6309BA48B109C8755596155CEE01658
        E8AD61707CB17279BF0523F35255CB74E39A889776AE66E3DA882451DEBE5AE0
        D0A971D6753EC4F62D1DA873A8D6F39B0D84D18265B460C90672ABA4358CBA8C
        8D69B9053A53F57CEEB1467EBC6335CD91325D74A8C2636B9B38B8670BB98C01
        E756E6350AF9F53F66D8FFE60C7D2DE16DDEC498963A604516144E04572DA3B6
        01F27920593A226082BB9F3D6296192EA9EF6A75291264400CADF98023E7AE73
        F6C2FBBCB27B8081DE569238E5E4FB057EF1B74BCC94AA3CD410AED8C7119609
        56D3D9D20AD879E1F7A84B9719276B2B62328801F59EAEB5ED5C9854BEF2BB77
        78F90B1BD831F0309BBB9BF9E2E60E0EBC31C1F1314B5B634014D4E8BB33AC15
        DA560BEDAD601770F1D656EA805D5C1A09A268BB48807A0FAAF4747630311DF1
        C21FDEE3079FA9F0D5EDFDECFE780F9F18E8E287C3B31C19A9D09A1372A1E075
        F11CAAB3D834AD712B82E2707169A44EB95C3C77D455E3C93BB971D6F2707B2B
        615B0FDF39F65F7E72EC3D5CEA58DB24FC7C47233F1A6C248BA35449F0365DB8
        D2A4B6F9F966450CAE1A4FBA78EE681DB077E9A9B43C7B863B3F407136A5ADB9
        918EEE3E5E7A6B8AEFFDE95D2A654B269F63D78772346794BB292622E03D6979
        F68C77E9A93AE040B8AC95B9A1B45CC0048B8D897396865C444FDF3A7EFB4E89
        AFFFFE3471A9C2E1D3939C9B2CD1925BD9C89820242D17D0CADC50205CAE6FAE
        C8A1AA8793E2D47090C90D9A6C0E7576415F9C230C0CFD8FF6F2D6C404CF0EFD
        9324D34C7B4B7BAD73964B3608717185A43835ECB3EEB088D49F4E41A94818CF
        115EBBBEDF8E8E261E8F2CC95CBDC7A0F47477F19F641593364F3E6358CE224B
        10E2F1D8D1D124BC767D7F18CF11948AF546A0E5EC1808B85C8EA677AF7EA9FB
        AF97FF28EBD713E41BF0CE2E9E190191A0369B4B4145304188AB94D19111AE7C
        EAD12F1737751D0AE2181466071E595CEAC2FC0380284E0E95CE4FEE93C2F8AB
        F9B495B0A9A5A654AAF3408A7A77A70D45645EE7D593166E50A9DC441FC9EF4B
        3EBCE650A97FCDFD993D010A4FF60DD98C6C8BA7AF5C2C4F8D91166FE26DB526
        7C62902053BBC4008AB755D2E24DCA5363C4D3572EDA8C6C2B3CD93724F732F4
        4B1D8B2A48604E9063BD8F8BDF8EE3D23E13663698288B981099D76AF50EF516
        9F54F1363D2FE8ABE4785902E3E78BF3018017E7EF4D20BFF4C8907A3768CBC5
        9D82AEF3AA9D358722E38A5C12638E4B20C3062A9E7B1B0379503F6DFF1B00C3
        71DA68E6AB3AA60000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dscfop2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 65
      Top = 11
      Width = 49
      Height = 42
      Hint = 'Next record'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
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
        1F90000005E94944415478DAC4976D885C5719C77FCFB97766EEECDBEC4BB26B
        B2DDBCAC8D4D9B90224D2B1A37586C4A2C9682600B16B45509114A2128825005
        A17E10514445BB1FB42029D886980FB6886984D2C47C284936D62C3506372166
        B33BDD6E7677765EEEDC7BCF79FC30B3BB999D59B7F54B1EB8CCCCE5707EE779
        CEFFF99F33A2AADC8930DCA1F097BEC86D2F7B266E919D8DE8BF1C1294AB2436
        0DC6669D3262E01184EDC0A6FAF02994AB0E4E19E134CEABF85E44D896E1FD7B
        022A7D69E6867B97E7D6D5E0B54204107D0078CE085F00069A078181AF027F46
        F457229CFFFF4B2DA0CA80B5E628E2CE01CFB484AEC400F00CE2CE596B8EAA32
        D050C60F035681F67CB8C7247AD6A93CFD51F7CFA93C6D123DDB9E0FF7A8AC03
        CE2E446417228C553245766F1E2B9EF3433BDC6A6946204C9442A4B5AD6831AB
        1FDAE1CD63C5739922BB8DD5E5F9970BBAD44EFB7FFB1E22504DBCCDD69A9318
        D9B52285861D20B4CAA6768F8EB4E1423EA2373078B2C668A7E39EE71ECDF8F6
        A62ABCFD8D7B1B3376D6C35A038E178196D02555CE878EA7EEEBE09527FAD83F
        94E166D1123B5A64AF00BB70BC68ADC159AFB9D45192A11AA71F4AC43CFBBFBA
        BB5075ECEC4BF3F8BD9D046D3EBF39D8CBD7EFEF60B662A9C48A91E6B227629E
        ADC6E987A224D30C7626CEE1D943B28E7032298FF972C81B7FFF0F49D5D1D69E
        E687FB731C79B08BC55859A836C305C0B3879C89734D6055791038B09E62B3BE
        105AC377FE748D43AF5C647A2EC4CFA439B2AF8B1F7FAE9B94810FCAAE95E80E
        D4198D60117B10D8B2F4DB33508A1C538B96F74B2BCFF462CC6262486FDCC2CB
        97221EFEE53BBCFACE0D4A15E5A93D1DFCFA602F1BDB0DF9925DED885BEA8C55
        CEE5DC2731B2AC9072AC0CF7A4D8D2E553B52DF42A06F9C44E26A7F31CBB30C5
        504FC0DEA11C23DB027EF7C53EBE7D6A9E7F7E10B3B1CD2C95B4C668F26A6372
        B7D767BA6879EE814E0E7DAA1BA2646D7BF37A086347B19A50082D5285FB36A4
        78ED4BFD7CEFAD794EFEBB442E6340A4C6580D56A4D9E1C4D486AC7B86ADAA88
        E7A349055B2D37F498DE465801DB18F1527598B22917707C6C92BF8D8D13AD71
        960830534EE86ECF70E4E1EDEC1DEA221DA418BF3EC7B75E1D6722EA64706003
        CE3A5087DAB819EC92A42226B5C4A5CD87AB73C2F979C1F7A5E9C48A2CDC2A59
        76F7A7F9E66706B87FB0937490E2ADF1699E3F7E9959936370A00F75AE76E0B8
        1AA3096CC3D2152F9DFEAC8887AA92C431DDB92E7A7A7B6BC258E5D373A1F295
        4F67F9FE488EFE0E0F108E9E99E0077FB98AEBFC18437D3DD8245ED20F8AC586
        A52B2DC08BAFDB4CF631930A06A0E67FEA1CEAA2866C2B89D29632FC68A49327
        77664965051B5B7E72F25FFCEC4C9EEEFE217ABB3AB049D2A0155B0DF3365C7C
        BDD9B96C7C212E2F5CC4B534DDE5A83AE84C29073E1E90CA0654CA09DF3D7E89
        9F9E996160702BBD9DEDF54C75655F9C232E2F5C7436BED004F6846B5A591C8D
        CB058CB7F6C52417F8BC972F71622C4F58AAF0B5DF8FF1F2BB2586B66EA72D48
        636D63EB19CF272E17D0CAE2A8275C6B1657DAA2AA27A2E2CC692F158C984C80
        DA16FDAB8EBE5C077F7877963F9EBFCE3F8A5986B70D62049CB58D22F47C6C58
        212ACE9C76197B42A4453B79A522188729945F4816F54D7FC7DD69E3F94D7055
        259BF2C88759AA913034B811B51675DA04753892EBD723BF32FB82EBB2E04CF3
        4520377E03046C10D071E9E69707FF7AED35D9B1032FDB86B34983B26B5B2720
        0655DBE81F2218CFC756CAE8952B4C7E7EDB93C5DD9B8F7961080A0BBBEE6ACC
        B8507F01900EA363A5CBF9C352987A291BF7E077E4C078A04A6DA1F54FB535F1
        88D417526BD8B8708B4A650EBD2B7B38BA7BC3B1D2F0860F77D913A0B077EB68
        92927DE1ECE44479E60671710E97546BC62706F152B5A7EE382EA91217E728CF
        DC209C9D9C4852B2AFB077EBA8AC77A15F6DBDAA209E394BC00E17169F0FC3D2
        61E3A7EE31E90C627CC47875AD59D425B8A88A4BE2CB82BE44C02FC433AE5E9C
        8F006ECCDF194F7EEE905175762429171F1174BB53DD5473329952E4AA18734A
        3C396DA0E290F567BD537FDAFE3B008FBFCCE1F19531F60000000049454E44AE
        426082}
      Transparent = True
      TabOrder = 6
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dscfop2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 663
      Top = 49
      Width = 43
      Height = 32
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033A494441544889
        8D9541881C451486BF7FB62F12D12078D05B3CECE2620CD38B087A4AD6C34673
        B0266830E041101111A7938321EE26216C34C443B646444404118912956E0F06
        8398E83DB196C83A620E7A4B0EA210215E4CE67998AAB1333B339B7769AAEBD5
        FFBFFF55D55F3233C645B35D3E003C23698799CD4ABA37E6FF0174259D37B32F
        563BADDFC661681441B35D6E9174DCCC5A4026496666E93B58DC1FFF0B94920E
        06EF7EDF90202FAAE7817781BB801EF03D50011781AB31ED3E600E6801DB8106
        F037F06AF0EE93B10479511D34B363B1B81FCC6CDF6AA775699CFCA8761BB022
        69BB99F580A5D54EEBF83A8266BB7C41D287717C42D2A1E0DDCD49E035922949
        CB6676807E752F06EF3E1A10E445350DFC08DC09BC15BC5BBC1DE0E1C88BEA18
        F006701D980BDE5DCE00CCEC04B049D2776676B8569949226DEC6AA7D5A8033E
        B2FF2B03B870F2690104EF969AEDF251494F444CA766BB9C31B3B5BE323D1CBC
        EB0EC93760B05175926182983F2BE9A758D44319B04752069C19068F804A4A62
        1B7AC1BBC6705E2DBF9B17D5B79276027B32603EB2951316292991A466BBEC0D
        B76B28BE34B305603E03B6C69F17D2ECB6D7CAE7462CDADB10A7D2A0D92E7BD9
        D4588E84B5350336C7C19534DB109FC6CD257D638CF795FF891B9212D6E60C20
        F577A3504CD4840592EEA86366C03533BB9BFEF5FF13A067EC25555DBBE90DEC
        D4AD7EB49E2878773D2FAA2D31E55A06FC2CE971FADEB20670E99DD66723A40F
        4E922405EF948EE988988B2AD732E09C993D46DFB83E1E959D4E50DC1305EF36
        EAE9EEA8F27C069C06168127F3A29A0EDE5D1E055E6BC144F066BB9C8E77A007
        9CCE8277DDBCA8BE0176013E2FAA5DC1BB5E024FFB7A3BE0009256E8BF215F07
        EFBAC98B0E003B242D98D922B00CFD0B3609AC6E11B1A02560A7A47F06CE5AB3
        EB9725BD173DFDA8A43793928D229EFD45333B023424BD12BC7BFF160280BCA8
        8E0287E2F02CB02F78F7EB24F0BCA86680156021FE5A0EDE1D49F3EB9ECC66BB
        7C093829699399DD00CE4AAACCECA2A42B31FF7E2097B43B7ACE546CCBFED54E
        EB833ADEB8477F46D2DB66F654943CE9D1BF099C91F4FA28B523096AF2678167
        8179E041E09E38F517F00B700EF87C94CDA7F80FC741A7152023101900000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 7
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dscfop2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object pgravar: TFlatPanel
      Left = 471
      Top = 0
      Width = 490
      Height = 63
      Color = 3355443
      Visible = False
      ColorHighLight = 3355443
      ColorShadow = 3355443
      TabOrder = 8
      object bgravar: TAdvGlowButton
        Left = 6
        Top = 11
        Width = 76
        Height = 45
        Caption = 'Gravar'
        Font.Charset = ANSI_CHARSET
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
        Left = 84
        Top = 11
        Width = 76
        Height = 45
        Caption = 'Cancelar'
        Font.Charset = ANSI_CHARSET
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
      end
    end
  end
  object Pop1: TPopupMenu
    Left = 928
    Top = 384
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = balterarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = blocalizarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
    end
    object Regies1: TMenuItem
      Caption = 'Grupos'
      ShortCut = 119
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object Pop2: TPopupMenu
    Left = 992
    Top = 424
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object dscfop2: TDataSource
    DataSet = frmmodulo.qrCFOP
    Left = 1104
    Top = 352
  end
  object qrcfop: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000030')
    Params = <>
    Left = 1000
    Top = 304
    object qrcfopCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 5
    end
    object qrcfopNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 200
    end
    object qrcfopTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrcfopICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrcfopISS: TFloatField
      FieldName = 'ISS'
    end
    object qrcfopOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrcfopOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrcfopOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrcfopOBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrcfopFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcfopVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object qrcfopVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object qrcfopVALOR3: TFloatField
      FieldName = 'VALOR3'
    end
    object qrcfopVALOR4: TFloatField
      FieldName = 'VALOR4'
    end
    object qrcfopVALOR5: TFloatField
      FieldName = 'VALOR5'
    end
    object qrcfopVALOR6: TFloatField
      FieldName = 'VALOR6'
    end
    object qrcfopVALOR7: TFloatField
      FieldName = 'VALOR7'
    end
    object qrcfopVALOR8: TFloatField
      FieldName = 'VALOR8'
    end
    object qrcfopVALOR9: TFloatField
      FieldName = 'VALOR9'
    end
    object qrcfopVALOR10: TFloatField
      FieldName = 'VALOR10'
    end
    object qrcfopST: TStringField
      FieldName = 'ST'
      Size = 11
    end
    object qrcfopCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrcfopREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object qrcfopMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
  end
  object dscfop: TDataSource
    DataSet = qrcfop
    Left = 1096
    Top = 416
  end
  object POP3: TPopupMenu
    Left = 1160
    Top = 400
    object InciodoNome1: TMenuItem
      Caption = 'In'#237'cio do Nome'
      ShortCut = 112
    end
    object PartedoNome1: TMenuItem
      Caption = 'Parte do Nome'
      ShortCut = 113
    end
    object FecharLocalizao1: TMenuItem
      Caption = 'Fechar Localiza'#231#227'o'
      ShortCut = 27
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Form.CFOP'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 1048
    Top = 392
  end
end
