object frmCartao: TfrmCartao
  Left = 202
  Top = 133
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CART'#195'O | Movimento'
  ClientHeight = 509
  ClientWidth = 808
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
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 808
    Height = 0
    Align = alTop
    ExplicitTop = 53
    ExplicitWidth = 796
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 808
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 168
    ExplicitTop = 136
    object Label1: TLabel
      Left = 6
      Top = 18
      Width = 46
      Height = 13
      Caption = 'Bandeira:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 246
      Top = 18
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 471
      Top = 18
      Width = 6
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 574
      Top = 18
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ed_cod_cartao: TRzButtonEdit
      Left = 58
      Top = 15
      Width = 51
      Height = 21
      Text = ''
      Color = clWhite
      FocusColor = 12713983
      TabOrder = 0
      OnKeyPress = ed_cod_cartaoKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = ed_cod_cartaoButtonClick
    end
    object ed_cartao: TRzEdit
      Left = 113
      Top = 15
      Width = 128
      Height = 21
      Text = ''
      Enabled = False
      TabOrder = 1
    end
    object combo_periodo: TComboBox
      Left = 290
      Top = 15
      Width = 81
      Height = 21
      Style = csDropDownList
      Color = clWhite
      ItemIndex = 0
      TabOrder = 2
      Text = 'Recebto.'
      OnKeyPress = combo_periodoKeyPress
      Items.Strings = (
        'Recebto.'
        'Venda'
        'Baixa')
    end
    object DateEdit1: TJvDateEdit
      Left = 378
      Top = 15
      Width = 87
      Height = 21
      Date = 36526.000000000000000000
      Color = clWhite
      NumGlyphs = 2
      ShowNullDate = False
      TabOrder = 3
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TJvDateEdit
      Left = 482
      Top = 14
      Width = 87
      Height = 21
      Color = clWhite
      NumGlyphs = 2
      ShowNullDate = False
      TabOrder = 4
      OnEnter = DateEdit2Enter
      OnExit = DateEdit2Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object blocalizar: TAdvGlowButton
      Left = 719
      Top = 0
      Width = 89
      Height = 50
      Align = alRight
      Caption = 'Procurar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032469545874584D4C3A636F6D2E61646F62652E786D7000
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
        20284D6163696E746F7368292220786D704D4D3A496E7374616E636549443D22
        786D702E6969643A383545384531343232434338313145344131464238373045
        42434346363742382220786D704D4D3A446F63756D656E7449443D22786D702E
        6469643A38354538453134333243433831314534413146423837304542434346
        36374238223E203C786D704D4D3A4465726976656446726F6D2073745265663A
        696E7374616E636549443D22786D702E6969643A383545384531343032434338
        3131453441314642383730454243434636374238222073745265663A646F6375
        6D656E7449443D22786D702E6469643A38354538453134313243433831314534
        41314642383730454243434636374238222F3E203C2F7264663A446573637269
        7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C
        3F787061636B657420656E643D2272223F3E6886D51B000004E94944415478DA
        BC574D881C4514AEAAEEEABFEDF95D85B05E166260252A6ADCC3AE4A4E0A9A80
        1E2407054513F122DE924BCE9E44416F12351830074D0EC26E12415037E81257
        A391842C4421100881FCECCECE4CCFF4547797EFF556CFF63AD3BDD3C25AF0B1
        3D55F5DEFBEAD5FBA9D59F3BFE2BC91914F00CE079C01EC02E4055ADAD02AE01
        7E039C059C07485270E8396BFB0087150136641D894C029E051C5104DE07CC17
        2190A5F818600EB037D983478BE466C8CD7AF62A9963292F152630A1941C4A26
        D050378CFF06B64684033E43E037CEA9B5F438A4744C14BD820AE06BC06C32D1
        03E5B64EC493E3D47BB4C6E4A4AB49CE687C3AB0DEBADE0AE99F2B11BDB4229D
        4E40B8A1F5753DA574BD00688C4AE0C3B4713CD95499365F9EE4D1D4B8E598A6
        C5A5A613C6D69D1645516D671890A7FDAE58BEDBF54E5D176C794D96AC0D12B3
        4AE7C151086094BF99363E3D4E5B6FEF2E69E39552296283B1AA31B0A473629B
        36DFE30695C96AD3FBE44AB3B57457BA2912A8F394CA92CC18C0ED4793093F94
        E4A10A6BBDF3589DDD5FAF39685C4A990BDC837B51066551476A1C55363209CC
        24AEC760B2352A5EDB5D0DE1E40E46191AD86AE01EDC8B32288B3A528139AB6C
        6412D8A70A4E7CFA9907C6BC4776941D3F8C8AD6148232288B3A525EA0CA4626
        81E924CF3923627A871D514AB82C5CD3D013600D645107EA4AA9984E0E398CC0
        CEC4FD2EE4D1AE9A19F582FF603D495D90451DA82B750D68C3CECA0255B52461
        C0DE60B486BF1CC789673DCF2B4C0275802EB6EE579A54573E52298E454006F3
        5DD3B47EDE6FD760AAABC54CC165A217C99524B2293041C88201813A5057EADA
        D186C822F077FC017B5B507BFF5AF1990EDF4110ACBBD3308AB95FA3E41AE840
        5D6C23ECD046278BC052922B90BC7CE95687C10F0103CB2DE19C13D334FB4567
        84215007EA4A85FD52D65B81A9FE1D2F9A1A238B37DBCEF23DDFE35412DFF7E3
        4D9665C5418964F04AB286A53372F55ED7431DA82B1556F37931B008F839B986
        8E88F889CB2BCC0FA4474241BC4E273E391A4712AEEB12DBB60788409724DD20
        F2501675C4EEC718E2E67962DA8BC4802C1C024C43683DE43DC099D80B708A3F
        6E774A1FFD7EA7F5EE13F779360D1CAFDD269AAE0FF50055321D30FEF1C53B11
        CA3AF09B503C9B8C7A572F7CA0B55743AAE9B9DD10BBD5E7494744050B375A6E
        A31B365F7FB8D698AA9B8E0C05F703D1AF7878422376B314CBE0F62FE0E497FA
        C6A10818A65C5B381D885FCEBE512ED7BE979434873E3A538FD28AF2C2C69B00
        AA9AC3A99899186B4379950FD64C09515E5D7FACC855C8180A0147E1CEC73C21
        B9A5C77E27D47248F7F24F5EE3CC67BC52AD736EDA73708DAFC062338F40F224
        FB4ABD68FA4F326C3270A902CB2B9C5C57F301A61A463B065CFFCE0D8B74AE2C
        B61BE78E6B25C7B52CB70C171137367CA60D90F87799BB09D80FF8B4BF81E2B3
        0CAA22A3BC0DC1D5EC851481DF38876B89711285A4B970DAC793C7C6C7FAC689
        D27B1250DAEA558C55EB2D25F0231E360936A83100AAB0A9BD4510A53F84B76F
        1C1017BF3B57A9D48DD8B81C68E90324F2FE2F98573131FA3F2691948E5BF9D6
        30CC2F2319EDCFD09B9088AF43DFAAC5031614E2044975354C096F88C09A0AB8
        93CA581E89578BB63A4F3DB31BC38CA746539D702E670F9238B19DBD7614128F
        6F6FB3CF27710B7060BB09649140E32F012EFC1F04D224BE5199F3221AC7857F
        041800694932100F5267FE0000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = blocalizarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
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
      ExplicitLeft = 701
      ExplicitHeight = 48
    end
    object combo_situacao: TComboBox
      Left = 624
      Top = 15
      Width = 71
      Height = 21
      Style = csDropDownList
      Color = clWhite
      ItemIndex = 1
      TabOrder = 6
      Text = 'Aberto'
      OnKeyPress = combo_situacaoKeyPress
      Items.Strings = (
        'Todas'
        'Aberto'
        'Baixada')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 450
    Width = 808
    Height = 59
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 558
    ExplicitWidth = 1312
    object bincluir: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 84
      Height = 59
      Align = alLeft
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
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
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
      Layout = blGlyphTop
      ExplicitTop = 13
      ExplicitHeight = 63
    end
    object balterar: TAdvGlowButton
      Left = 84
      Top = 0
      Width = 84
      Height = 59
      Align = alLeft
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
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
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
      Layout = blGlyphTop
      ExplicitLeft = 73
      ExplicitTop = 13
      ExplicitHeight = 63
    end
    object bexcluir: TAdvGlowButton
      Left = 168
      Top = 0
      Width = 84
      Height = 59
      Align = alLeft
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
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
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
      Layout = blGlyphTop
      ExplicitLeft = 153
      ExplicitTop = 13
      ExplicitHeight = 63
    end
    object bitbtn5: TAdvGlowButton
      Left = 336
      Top = 0
      Width = 84
      Height = 59
      Align = alLeft
      Caption = 'Relat'#243'rios'
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
      TabOrder = 3
      OnClick = bitbtn5Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
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
      Layout = blGlyphTop
      ExplicitLeft = 297
      ExplicitTop = 13
      ExplicitHeight = 63
    end
    object bliquidar: TAdvGlowButton
      Left = 252
      Top = 0
      Width = 84
      Height = 59
      Align = alLeft
      Caption = 'Baixar'
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
        A2000000097048597300001BAF00001BAF015E1A911C000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000058D4944415478DABC964B6C9C5715C77FE77EAF99F1244E6411BB2A
        AA8D2B3F0875701E05AC9887547515108B2EDA859556482CA2AE404415122A42
        05545245DD75C7823D3BDA3D949210A92894B4447695B4A994DA895F19CFE37B
        DE7B587C63D7137B528A44FEA36FF37DF79EDF3D67EE7988AAD2FAFD1000F55A
        CC1FFE7594F3EF7C8B23D5988120C7A9B04B7F02BE0F6CD2ABC3C09BC00FB65F
        1851DA79C0DDB8CA6BF37FE7F963D76976AA3B1BFCDDBBDB9D2ACFCFBE8FE759
        7EF2E7D30CD7945A6051DD5952DF05BA5FDBDF108176EE73A753E5F5EFFD8D85
        99EBB45BF59EC53D60A7D0E9545998FD80A2F0F9F9A52711126A4171BFE77D65
        44E9E43EEB4985D7E6AFB030FB019DE6004E01E9031601EB0C49B3CE0BA7DEC3
        012FBDF34D866B1D6A41817E0E5C44BB9ED6F8DDFC155E38F51E49B38E73D203
        DD03A67BA8DC1AB439C08F4EFE93D0B3FCECED39BE243155BF3F5C44890B9FB5
        B8CAEBDFBDC4C2EC35E2669DC21A44746F64FA19B1CE10B7EA2C1CBFC62B73EF
        B21A57E9E401663F23A274F280D5B8CA2B73EFB270FC1A71AB8E75FB43F7F578
        B70A6B489B757EFCE455A220E7B7574E905B83677A8DE5D65038E1C2B72F7376
        F67DD21D4FFBDBF6F7498B7340CD39C92B514E1864600D674F5F6D5EFA7464EC
        AD9BA38C0C747A36ADC655CE8CDF1A3B7BFAEA4FD98A0E449504C9439234C094
        87AC036FA2F2971EB08F034091AF5BE437000361C1E2C620371B8354FD824351
        46238D887CBBE7F4916F69A4D1D83FFE3D7EF15E1A12173EE3830DA60E6F1117
        5E77954E8971BD60F7594C26E846D1ABC7FCF1F234BF7C7B8EF14762AC834351
        CA5025D9935A439584EB1B8778E6ADA7F10CDC5CAEF2ABEF5CE6E5A7EFC0BDFA
        F6BD9956BFE8BD5C4EA57C9053E239C47390863C77F416F3A34B6445CEF04042
        60DCBEF9EC54088C637820212B72E6479778EEE82D4843B6ED897044F2F071C9
        43240F4BB08F233016CDCD64FBD341DACB0759F978884955DE38B9C8101BACC5
        06634CFFC2610C6BB161880DDE38B9C8A42A2B1F0FD15E3E48EBF62069A31220
        7A4C297F064045C06358ADF94AB61592B7426C3BE0F6DD03CC0C645C3CBE44CD
        DE6323113CB3D763CF081B8950B3F7B8787C8999818CDB770F60DB01792B246F
        4614EDB08667A7083308F2125CA8503879C2591935BE627CB7F3AC24014F8D34
        7875E643B2B8CD66EA6176E589116133F5C8E236AFCE7CC853230D5692A0C786
        F1CBCB2BCE1C9522448AA00407588C72CCEDDCC05DFF1F70278E38F3E8261766
        16C9E236ADC260443022B40A4316B7B930B3C8994737B91347DD1CD95D9114B5
        82B3E6042A3554BA954B4061DC1506D03D25D401AB49C8B363EB9C9FBCC17A33
        21B686D81AD69B09E7276FF0ECD83AAB4988634F592E93C919B430D304D98886
        69994E055E043A5B82F757AEC25A12706E6285D4197EBD3405C02F266F706E62
        85B5242057D9172A02EAC059F13CF5A67172D307F0D0C7AC9363FA00B000990A
        8DDCE7C589656E752A00BC38B14C23F7C9FA403F0BB5410B8338F9865AF357BF
        7CAF632EF30EBACCA056EE8F760FBD83A150E1E5AF7D02C0D636D481BAFEC5D9
        E582263E1CEA9CC02B1EF3016CC89C1606891413BAFD3B8A0005B8DC900151B7
        51642A48B7C99B9AEB7B6809C0F9A0C63C2EA25F2DC1A3EE1134A33A95F50FB5
        AF68EC115F1EC4B53CB24A09934270A9219A69114EB6D1D43C7058B0862111F9
        72D99D02ACA088D1078F35B58CE84493F4EA01DC968F2A48E00827DB44D36DC4
        53D4B8BEFB5501158788F5BBC9AAE5957FF068A385873F9C62E62D7639C41582
        77B8C03F92A10A9A18F8FCD14C01F5F982D2CC20354B30DD460C682E686E4A73
        F25F1A11E40B83CBD144D0C243F9DF6576B9FF505576276BC28746141451E777
        C14352B10F038A165275A91C2C2B5783400A7908F15548A5AA1DAFEE0398BB5C
        17353F041ADD66F4FFD261113E12D18FFE33007D7796A2E73F01250000000049
        454E44AE426082}
      Transparent = True
      TabOrder = 4
      OnClick = bliquidarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
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
      Layout = blGlyphTop
      ExplicitLeft = 225
      ExplicitTop = 13
      ExplicitHeight = 63
    end
  end
  object grid: TwwDBGrid
    Left = -1
    Top = 50
    Width = 806
    Height = 343
    Selected.Strings = (
      'BANDEIRA'#9'16'#9'Bandeira'#9'F'#9'Cart'#227'o'
      'TIPO'#9'8'#9'Tipo'#9'F'#9'Cart'#227'o'
      'NOME'#9'22'#9'Cliente'#9'F'#9'Venda'
      'COD_VENDA'#9'8'#9'N'#250'mero'#9'F'#9'Venda'
      'DATA_VENDA'#9'10'#9'Data'#9'F'#9'Venda'
      'VALOR_TOTAL'#9'10'#9'Total-R$'#9'F'#9'Venda'
      'PARCELA'#9'4'#9'N'#186#9'F'#9'Parcela do Cart'#227'o'
      'VALOR'#9'10'#9'Valor'#9'F'#9'Parcela do Cart'#227'o'
      'DATA_RECEBIMENTO'#9'10'#9'Data Receb'#9'F'#9'Recebimento'
      'LIQUIDO'#9'10'#9'Valor-R$'#9'F'#9'Recebimento'
      'SITUACAO'#9'8'#9'Situa'#231#227'o'#9'F'#9'Recebimento')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dscartap
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    ImageList = ImageList1
  end
  object Panel3: TPanel
    Left = 0
    Top = 398
    Width = 808
    Height = 52
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = -2
    ExplicitTop = 433
    object Label5: TLabel
      Left = 17
      Top = 16
      Width = 123
      Height = 13
      Caption = 'Quantidade de Registros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 528
      Top = 17
      Width = 110
      Height = 13
      Caption = 'Total l'#237'quido a receber:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object rqtde: TRzNumericEdit
      Left = 144
      Top = 13
      Width = 56
      Height = 21
      Color = clWhite
      TabOrder = 0
      DisplayFormat = ',0;(,0)'
    end
    object rtotal: TRzNumericEdit
      Left = 647
      Top = 13
      Width = 122
      Height = 21
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrcartao: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select c000124.*,'
      'c000007.nome,'
      'c000013.banco bandeira'
      'from'
      'c000124,'
      'c000007,'
      'c000013'
      'where'
      'c000124.cod_cliente = c000007.codigo and'
      'c000124.banco = c000013.numero'
      'order by'
      'data_venda')
    Params = <>
    Left = 488
    Top = 296
    object qrcartaoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrcartaoCOD_VENDA: TWideStringField
      FieldName = 'COD_VENDA'
      Size = 10
    end
    object qrcartaoBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 10
    end
    object qrcartaoCOD_CLIENTE: TWideStringField
      FieldName = 'COD_CLIENTE'
      Size = 10
    end
    object qrcartaoDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qrcartaoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrcartaoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrcartaoLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
    end
    object qrcartaoDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object qrcartaoDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object qrcartaoSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object qrcartaoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrcartaoPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object qrcartaoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object qrcartaoNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrcartaoBANDEIRA: TWideStringField
      FieldName = 'BANDEIRA'
      Size = 50
    end
  end
  object dscartap: TDataSource
    DataSet = qrcartao
    Left = 520
    Top = 296
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 296
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
      ShortCut = 115
      OnClick = bexcluirClick
    end
    object Baixar1: TMenuItem
      Caption = 'Baixar'
      ShortCut = 116
      OnClick = bliquidarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = bitbtn5Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object query: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 552
    Top = 296
  end
  object fxcartao: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39758.671900127300000000
    ReportOptions.LastChange = 39758.751544768520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure frmListaOnShow(Sender: TfrxComponent);'
      'begin'
      '  conexao.Connected := true;'
      '  qrbanco.open;'
      '  combo_banco.Clear;'
      
        '  combo_banco.items.add('#39'Todas'#39');                               ' +
        '                                             '
      '  qrbanco.first;'
      '  while not qrbanco.eof do'
      '  begin'
      
        '     combo_banco.Items.add(qrbanco.fieldbyname('#39'banco'#39').asstring' +
        ');'
      '     qrbanco.next;                                   '
      '  end;'
      '  combo_banco.itemindex := 0;'
      ''
      '  eddata1.text := '#39'01/01/1900'#39';'
      
        '  eddata2.text := '#39'31/12/2100'#39';                                 ' +
        '                                     '
      'end;'
      ''
      ''
      ''
      'procedure ComboBox1OnChange(Sender: TfrxComponent);'
      'begin'
      '  qrcliente.close;'
      '  qrcliente.sql.clear;'
      '  qrcliente.sql.add('#39'select * from c000007'#39');'
      
        '  qrcliente.sql.add('#39'where nome like "'#39'+combo_cliente.text+'#39'%" O' +
        'RDER BY NOME'#39');'
      '  qrcliente.open;'
      '  qrcliente.first;'
      '  while not qrcliente.eof do'
      '  begin'
      
        '    combo_cliente.items.add(qrcliente.fieldbyname('#39'nome'#39').asstri' +
        'ng);'
      
        '    qrcliente.next;                                             ' +
        '         '
      '  end;'
      'end;'
      ''
      'procedure combo_clienteOnExit(Sender: TfrxComponent);'
      'begin'
      
        '   if combo_cliente.text = '#39#39' then combo_cliente.text := '#39'TODOS'#39 +
        ';'
      'end;'
      ''
      
        'procedure combo_clienteOnKeyPress(Sender: TfrxComponent; var Key' +
        ': Char);'
      'begin'
      
        '  if key = #13 then combo_periodo.setfocus;                     ' +
        '                                                                ' +
        '                                                                ' +
        '    '
      'end;'
      ''
      
        'procedure MaskEdit1OnKeyPress(Sender: TfrxComponent; var Key: Ch' +
        'ar);'
      'begin'
      
        '  if key = #13 then edData2.setfocus;                           ' +
        '                                                              '
      'end;'
      ''
      
        'procedure Combo_PeriodoOnKeyPress(Sender: TfrxComponent; var Key' +
        ': Char);'
      'begin'
      '  if key = #13 then edData1.setfocus;'
      'end;'
      ''
      
        'procedure edData2OnKeyPress(Sender: TfrxComponent; var Key: Char' +
        ');'
      'begin'
      '  if key = #13 then bOk.setfocus;'
      'end;'
      ''
      
        'procedure combo_situacaoOnKeyPress(Sender: TfrxComponent; var Ke' +
        'y: Char);'
      'begin'
      '  if key = #13 then combo_cliente.setfocus;'
      'end;'
      ''
      
        'procedure combo_bancoOnKeyPress(Sender: TfrxComponent; var Key: ' +
        'Char);'
      'begin'
      '  if key = #13 then combo_situacao.setfocus;'
      'end;'
      ''
      '(**************************************************************)'
      
        '(*******************  BLOCO DE ALTER'#199#195'O ***********************)' +
        '    '
      'procedure BitBtn1OnClick(Sender: TfrxComponent);'
      
        'var banco, cliente, situacao, periodo : string;                 ' +
        '                                                                ' +
        '                         '
      'begin'
      '  if combo_banco.itemIndex = 0 then'
      '     banco := '#39#39
      '  else'
      '     banco := '#39' and c000013.banco = "'#39'+combo_banco.text+'#39'"'#39';'
      '  '
      ''
      '  if combo_cliente.itemIndex = 0 then'
      '     cliente := '#39#39
      '  else'
      '     cliente := '#39' and c000007.nome = "'#39'+combo_cliente.text+'#39'"'#39';'
      '  '
      '  if combo_situacao.itemIndex = 0 then situacao := '#39#39';'
      
        '  if combo_situacao.itemIndex = 1 then situacao := '#39' and c000123' +
        '.situacao = 1'#39';'
      
        '  if combo_situacao.itemIndex = 2 then situacao := '#39' and c000123' +
        '.situacao = 2'#39';'
      ''
      
        '  if combo_periodo.itemIndex = 0 then periodo := '#39' and data betw' +
        'een :datai and :dataf'#39';'
      
        '  if combo_periodo.itemIndex = 1 then periodo := '#39' and data_pgto' +
        ' between :datai and :dataf'#39';'
      ''
      '  qrfinanceira.close;'
      '  qrfinanceira.sql.clear;'
      '  qrfinanceira.sql.add('#39'select'#39');      '
      '  qrfinanceira.sql.add('#39'c000123.*,'#39');  '
      '  qrfinanceira.sql.add('#39'c000007.nome,'#39');  '
      '  qrfinanceira.sql.add('#39'c000013.banco'#39');  '
      '  qrfinanceira.sql.add('#39'from'#39');  '
      '  qrfinanceira.sql.add('#39'c000123,'#39');  '
      '  qrfinanceira.sql.add('#39'c000007,'#39');  '
      '  qrfinanceira.sql.add('#39'c000013'#39');  '
      '  qrfinanceira.sql.add('#39'where'#39');  '
      
        '  qrfinanceira.sql.add('#39'c000123.codcliente = c000007.codigo and'#39 +
        ');           '
      '  qrfinanceira.sql.add('#39'c000123.codbanco   = c000013.numero'#39');'
      
        '  qrfinanceira.sql.add(banco+cliente+situacao+periodo);         ' +
        '                                                             '
      '  qrfinanceira.sql.add('#39'order by'#39');'
      '  qrfinanceira.sql.add('#39'c000123.data'#39');'
      
        '  qrfinanceira.ParamByName('#39'datai'#39').Value := strtodate(edData1.t' +
        'ext);'
      
        '  qrfinanceira.ParamByName('#39'dataf'#39').value := strtodate(edData2.t' +
        'ext);'
      '  qrfinanceira.open;'
      ''
      
        '                                                                ' +
        '                                                      '
      '    '
      'end;'
      '  '
      ''
      
        '(**************************************************************)' +
        '      '
      ''
      'begin'
      ''
      'end.')
    OnBeforeConnect = fxcartaoBeforeConnect
    OnGetValue = fxcartaoGetValue
    Left = 376
    Top = 248
    Datasets = <
      item
        DataSetName = 'qrbanco'
      end
      item
        DataSetName = 'qrcliente'
      end
      item
        DataSetName = 'qrfinanceira'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object frmLista: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      BorderStyle = bsToolWindow
      Caption = 'Financeira | Relat'#243'rio'
      Height = 177.000000000000000000
      ClientHeight = 138.000000000000000000
      Left = 479.000000000000000000
      Top = 154.000000000000000000
      Width = 437.000000000000000000
      ClientWidth = 421.000000000000000000
      OnShow = 'frmListaOnShow'
      object Label1: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 12.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Financeira:'
        Color = clBtnFace
      end
      object combo_banco: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 8.000000000000000000
        Width = 313.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Style = csDropDownList
        ItemIndex = -1
        OnKeyPress = 'combo_bancoOnKeyPress'
      end
      object Label2: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 36.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Situa'#231#227'o:'
        Color = clBtnFace
      end
      object combo_situacao: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 32.000000000000000000
        Width = 313.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Items.Strings = (
          'Todas'
          'Aberto'
          'Baixadas')
        Style = csDropDownList
        Text = 'Todas'
        ItemIndex = 0
        OnKeyPress = 'combo_situacaoOnKeyPress'
      end
      object Panel1: TfrxPanelControl
        Top = 112.000000000000000000
        Width = 433.000000000000000000
        Height = 41.000000000000000000
        ShowHint = True
        BevelOuter = bvNone
        Color = clBtnFace
        object Bok: TfrxBitBtnControl
          Left = 112.000000000000000000
          Top = 4.000000000000000000
          Width = 95.000000000000000000
          Height = 25.000000000000000000
          ShowHint = True
          Caption = 'Ok'
          ModalResult = 1
          OnClick = 'BitBtn1OnClick'
        end
        object Bevel1: TfrxBevelControl
          Width = 574.000000000000000000
          Height = 2.000000000000000000
          ShowHint = True
        end
        object BCancelar: TfrxBitBtnControl
          Left = 216.000000000000000000
          Top = 4.000000000000000000
          Width = 95.000000000000000000
          Height = 25.000000000000000000
          ShowHint = True
          Caption = 'Cancelar'
          ModalResult = 2
        end
      end
      object Label3: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 60.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente:'
        Color = clBtnFace
      end
      object combo_cliente: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 56.000000000000000000
        Width = 313.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Items.Strings = (
          'Todos')
        Text = 'Todos'
        ItemIndex = 0
        OnChange = 'ComboBox1OnChange'
        OnExit = 'combo_clienteOnExit'
        OnKeyPress = 'combo_clienteOnKeyPress'
      end
      object Label4: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 84.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Per'#237'odo:'
        Color = clBtnFace
      end
      object Combo_Periodo: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 80.000000000000000000
        Width = 89.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Items.Strings = (
          'Venda'
          'Pagamento')
        Style = csDropDownList
        Text = 'Pagamento'
        ItemIndex = 1
        OnKeyPress = 'Combo_PeriodoOnKeyPress'
      end
      object edData1: TfrxMaskEditControl
        Left = 216.000000000000000000
        Top = 80.000000000000000000
        Width = 81.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        EditMask = '##/##/####'
        MaxLength = 10
        Text = '01/01/1900'
        OnKeyPress = 'MaskEdit1OnKeyPress'
      end
      object Label5: TfrxLabelControl
        Left = 308.000000000000000000
        Top = 84.000000000000000000
        Width = 9.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taCenter
        AutoSize = False
        Caption = 'a'
        Color = clBtnFace
      end
      object edData2: TfrxMaskEditControl
        Left = 328.000000000000000000
        Top = 80.000000000000000000
        Width = 81.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        EditMask = '##/##/####'
        MaxLength = 10
        Text = '01/01/1900'
        OnKeyPress = 'edData2OnKeyPress'
      end
      object Label6: TfrxLabelControl
        Left = 192.000000000000000000
        Top = 84.000000000000000000
        Width = 13.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taCenter
        AutoSize = False
        Caption = 'de'
        Color = clBtnFace
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        DataSetName = 'qrfinanceira'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'BANCO'
          DataSetName = 'qrfinanceira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[qrfinanceira."BANCO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 222.992270000000000000
          Top = 3.779530000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSetName = 'qrfinanceira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[qrfinanceira."NOME"]')
          ParentFont = False
        end
      end
    end
  end
  object fscartao: TfrxDBDataset
    UserName = 'fscartao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'COD_VENDA=COD_VENDA'
      'BANCO=BANCO'
      'COD_CLIENTE=COD_CLIENTE'
      'DATA_VENDA=DATA_VENDA'
      'VALOR=VALOR'
      'COMISSAO=COMISSAO'
      'LIQUIDO=LIQUIDO'
      'DATA_RECEBIMENTO=DATA_RECEBIMENTO'
      'DATA_BAIXA=DATA_BAIXA'
      'SITUACAO=SITUACAO'
      'TIPO=TIPO'
      'PARCELA=PARCELA'
      'VALOR_TOTAL=VALOR_TOTAL'
      'NOME=NOME'
      'BANDEIRA=BANDEIRA')
    DataSet = qrcartao
    BCDToCurrency = False
    Left = 440
    Top = 224
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
    Left = 456
    Top = 296
  end
  object fsDialog: TfrxDialogControls
    Left = 328
    Top = 296
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 200
    Top = 296
    Bitmap = {
      494C01010600090020000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000003C0000001E0000000100200000000000201C
      0000000000000000000000000000000000007AC8EC002CA6DF002AA3DE0028A0
      DC00269DDB00249AD9002297D8001F92D5001A8BD2001584CE00107DCB000C76
      C8000870C500056BC2000267C000000000006AAE6E0565AA69AF60A665FD6BAE
      6FFF4C9750FB529C56344E995222000000001A57C3802564C9FB2177E6FF0579
      EAFF0164DDFF044DBDFC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000047B5E500BDE2F400F3FBFD00EEFAFD00EDFAFD00EDFAFD00EEFBFD00EEFB
      FD00EEFAFD00EDFAFD00ECFAFD00ECFAFD00EBFAFD00F1FBFD00AACDEA000000
      00006FB274277CBB81FCB7DEBBFF67AC6CFF75B67AFF4E9851FE539C57B84F99
      537A0345B9E3639DF4FF187FFFFF0076F8FF0076EEFF0368E1FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3E7F70061BEE700F3FBFD00B4EE
      F90057D9F40057D9F40056D7F20057D6F10057D5F10056D8F30050D7F4004DD6
      F30061D9F500E9FAFD004392D1000000000075B67A9B9CCDA0FF6FB273FF8DC7
      92FFAADCAFFF76B67BFF519B55FF77B77BFF0442BCFFAECDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF187FEFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005DC0EA009CD6F000E6F8FC008AE4F70059DAF5005AD9F3003CA0
      D4003CA0D40053D5F10051D7F4004FD5F300D7F5FB0087BEE40054A0D8007FBE
      84197BBB80FF77B77CFF91CB97FFABDEB1FF9CD7A2FFAADDB0FF77B77CFF60AC
      65FF1A58B8FF8DB5F6FF4D92FFFF1177FFFF2186FFFF408AEBFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2F4FB0036B1E400F2FA
      FD00C2F1FA005BDBF5005BD9F30063DEF50056CAEA0054D5F10053D8F40093E6
      F700E2F3FA001B89D000DEEDF8007FBD84A07FBD84FF97CE9CFFADDFB3FF6FB3
      74FF96D59DFF9DD8A3FFAADDB0FF78B87CFF4B8C9AFF3B76D1FF8DB5F7FFB8D6
      FEFF72A8F5FF2D6BCAFD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000078CCEE008BD1EF00E9FAFD0093E5F7005BD9F30046B0
      DC003CA0D40055D6F1005BDAF400DDF7FC007CBFE60087C3E800000000007BBB
      80FF8EC893FFAFDFB5FFA1DAA7FF98D79FFF97D69EFF7EC083FF82C187FFABDD
      B0FF79B97DFF438693FF235FC1FF0543BCFF1857BAFF2B7283FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6FCFE0044B9
      E700C7E9F600E5F9FC005CD9F3003CA0D4003CA0D40056D6F100C6F2FB00BFE2
      F3003AA3DC00F5FAFD00000000008DC9937D7DBB82FF8FC894FFB0E0B6FFA2DA
      A8FF7FC185FFA4D0A7FFDDEEDFFF80B883FFABDEB1FF7AB97FFF569F5AFFC4E7
      C8FF78B87CFF4E99528400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8E5F70070C7EC00F8FDFE005DDBF3003DA1
      D4003DA1D4005BD8F300ECFAFD0067BAE400B2DCF20000000000000000000000
      00008EC993257DBC82FA90C995FFB0E0B6FF85C28AFFF7FCF8FF95C297FFDDEE
      DFFF82C287FFABDEB1FF7BBA7FFF58A05CFF59A15DFF539C5704000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059C2EB00A8DEF300ECF8FC003DA2D5003DA2D500D3F4FB00A1D6F0005CB8
      E5000000000000000000000000000000000000000000000000007EBD83F691CA
      96FFB1E0B6FFD9F3DDFFF7FCF8FFA4D0A7FF7EC084FF9FD9A5FFACDEB2FF7BBB
      80FF569F5AFB0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAF2FB0039B7E700F8FCFE0093E8
      F8009DEAF900EBF9FD0030A9E000D7EEF9000000000000000000000000000000
      00000000000000000000000000007FBE85F592CB97FFB1E1B6FF85C38AFF80C1
      85FF99D7A0FF98D79FFF9FD9A5FFACDFB2FF7DBB81FF58A05CF6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073CDEF0093D7F100F2FBFD00E6F9FD008ED2EF0085CEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000081BF86F593CC98FFB1E1B7FFA3DBA9FF9BD8A2FF73B477FFAFDFB4FF87C3
      8CFF65AA69FF5DA4610E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1FAFE0043BDE900F0F9
      FC00D4EEF90042B7E700F1F9FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082C087F594CC99FFB2E2
      B7FFA3DCAAFFB0E0B6FF8CC692FF6EB173FF66AB6B0E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008CD7F30084D3F00081D0EF00ACE0F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000083C188F594CD9AFFB3E2B7FF93CB98FF77B77CFF70B2
      740E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF005CC6
      EE0068C9EE00FDFEFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000084C2
      8AF596CD9BFF80BE85FF79B97E0E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086C38BF582C0870E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1E7E300CAAA9B00A16A50008F573D008D56
      3D0099685100C5A99B00EEE7E300000000000000000000000000000000000000
      00000000000000000000E0EEE0008FBF91003A8C3E0024792800247628003A84
      3E008FB99100E0EBE00000000000000000000000000000000000000000000000
      000000000000E3E6F7009AA6E3004C61CB00354EC400334CC200455CC60094A1
      DE00E1E4F500000000000000000000000000A97151A9C38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD7656FFAB75
      54FFA97353FFA97151FFA97151A9000000000000000000000000DFC8BD00A265
      4700B17F5600D4B69200DAC2A500D9C2A500D1B38F00AA795100915F4700D8C6
      BD000000000000000000000000000000000000000000B5D9B600308E3400419F
      510086C999009AD2AA009AD1AA0082C695003C964B00307B3300B4D0B6000000
      000000000000000000000000000000000000BFC7EF004B62D0005163D300838F
      E600949FED00949EEC00828DE4004B5CCD003C53C300B8C0E900000000000000
      0000C8926CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA97251FF0000
      000000000000E2CCBD00A25B3B00CAA67C00D7BA9E00C29B7600B5896100B385
      5F00BD957100D0B29600C4A2760088563D00D8C6BD0000000000000000000000
      0000B5DBBA00248E29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA
      9700A4D8B30065B67C0023712600B4D0B600000000000000000000000000C1CA
      F100465FD4007483E200A0ABF3007E8AEB005B66E3005A65E2007C86E9009EA7
      F0006E7BDC00314AC100B8C1E90000000000CA946EFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFAFFFEFE
      FAFFFCFCF9FFFFFFFFFFAA7353FF00000000F4ECE400B3774900CEA98000D9BB
      A100BD906500B98B6100B6885E00B2835D00B0825C00AF825B00CCA98C00C5A4
      780094614800EFE8E40000000000E1F2E40032A0430071C18600A7DAB1005FBB
      76005BB9720058B76F0058B46E0057B46E005AB67300A4D8B20068B77E00307F
      3400E0ECE10000000000E7EAFA00586FDD007787E500A2AFF4005666E6005564
      E5008891EC008791EB00525EE100515CE0009EA8F1006E7CDC004056C600E2E6
      F600CC976FFFFFFFFFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFD
      FAFFFDFDFAFFFDFDFAFFFDFDFAFFFCFCF7FFFBFBF6FFFFFFFFFFAC7554FF0000
      0000DBBC9B00BE905D00DFC1A700C4956B00C1906800E0CAB700FDFCFB00FEFE
      FD00E9DBCF00B3845D00B2845D00D3B49800AD7A5500C7A99B00000000008FD2
      9F004BAF6300A9DCB30063C078005EBD700074C48400D3EBD80089CC980055B5
      6B0057B46D005BB67300A5D9B300409A4D008EBB900000000000A7B4F0005F72
      DF00A3B2F600596DEA00586BE9005768E700FEFEFE00FEFEFE005461E4005360
      E200525EE1009EA8F1004F60D00097A3E000D19C73FFFFFFFFFFFEFEFCFFFEFE
      FCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FFFBFBF9FFFBFAF7FFFBFA
      F6FFFBF8F4FFFFFFFFFFB07A58FF00000000C58F5100DABB9B00D4AC8800C697
      6B00C2946800C0926600ECDED200F9F6F300BA8A6200B8896200B7896100C49C
      7700D1B792009F695100000000003EB45C0090D19E008CD3990063C2730078C8
      8600F1F9F300FEFEFE00FCFDFC0085CA950056B66C005AB8710084CB960086C6
      99003A8A3E00000000006A81E8008D9EEF008398F3005B72ED005A6FEB00596D
      EA008F9CF000A5AEF2005666E6005564E5005461E4007C88EA008490E6004D63
      CD00D49E75FFFFFFFFFFFEFEFCFFFDFDFBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFC
      F8FFFBF9F7FFFBF9F5FFFBF8F4FFFBF7F2FFFBF5F2FFFFFFFFFFB27C5AFF0000
      0000C0823B00E2C6AE00CFA17500C4986A00C3966900C3956800EDDFD300FAF6
      F300BE8F6500BD8E6400BD8E6300BD916800DEC5A90095553A000000000026AF
      4800A5DBAE006FC97E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFC
      FB0087CC95005AB8700066BD7C009FD6AE00227E2500000000005C75E9009FB2
      F600647FF1005E77EF005C75EE005B72ED00D2D8F900FEFEFE00586BE9005768
      E7005666E6005C6BE60098A4F0003B54CB00D5A076FFFFFFFFFFFDFDFCFFFDFD
      FBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7F3FFFBF5F2FFFAF3
      EFFFF8F2ECFFFFFFFFFFB57E5CFF00000000C6884100E3C8AF00CFA27900CB9C
      7000C6996B00C4976A00FEFEFE00FEFEFD00C2956800C0936700C1936700C297
      6C00DEC4AA0098583A00000000002DB65000A6DCB00071CB7F0065C67200AFE0
      B600D1EDD50062C06F00B7E2BE00FEFEFE00FAFCFB008BCF980068C07D00A0D6
      AD002283250000000000607AED00A0B5F7006683F3005F7BF2005E79F0005E77
      EF00FEFEFE00FEFEFE005A6FEB00596DEA00586BE9005E6EE8009AA7F0004058
      CF00D8A279FFFFFFFFFFFDFDFAFFFCFCFAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7
      F4FFFBF6F1FFF8F4EEFFF7F2EBFFF7F0EAFFF6ECE8FFFFFFFFFFB7815EFF0000
      0000D19D5B00DFBB9E00DAB29200CE9F7400CC9D7100CA9B7000DCBEA200DCBE
      A100C4986A00C4986A00C3976A00D0AA8400D7B99600AB6D5100000000004AC4
      6B0094D6A00090D69A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3
      BF00FEFEFE00E2F3E5008AD098008ACD9C003B983F0000000000758CF20090A5
      F20087A0F700617FF300607DF2005F7BF200FEFEFE00FEFEFE005C75EE005B72
      ED005A6FEB008192F0008897EB00586FD700D9A379FFFFFFFFFFFCFBF9FFFCFB
      F8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EA
      E4FFF2E7DEFFFFFFFFFFBA8560FF00000000E6C8A400CC9B6700E6CAB300D3A4
      7900CF9F7600CE9D7300FAF7F400FAF7F400CA9D7000CA9C7000CCA07600DEBF
      A400B8895A00D2AE9A00000000009ADEAC0056BE6F00AEE0B6006CCB790067C7
      710064C66F0062C46D0061C36D0062C37000B5E2BD006EC67D00ABDEB40047A8
      5D008EC7930000000000B1BFFA006B80EB00A8BCFA006281F4006180F400617F
      F300FEFEFE00FEFEFE005E79F0005E77EF005C75EE00A4B4F7005C6FDC00A2AE
      EB00DBA47AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FF0000
      0000F9F0E700D2995900D8B18B00E5C9B200D5A87C00D0A47800E1C3A700E0C2
      A700CFA17500D0A37600DCBCA100CFAB8400B3754900F3EAE40000000000E4F7
      E90048C465007ECD8F00ADE0B4006CCB790069C9750067C7710067C7730067C7
      74006AC87800ABDEB30075C3880032A04200E1F1E30000000000EBEEFE00748B
      F6008296EF00A8BCFA006281F4006281F400FEFEFE00FEFEFE00607DF2005F7B
      F200A5B8F8007A8CE9005C73E000E6EAFA00DCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFC08B66FF0000000000000000F1DCC500D0914E00D8B1
      8B00E5CCB700DFB99C00D6AA8400D5A88100D8B29000E0C1AA00D3AD8500B370
      3D00E5D0BD00000000000000000000000000BFECCA003CC25B007ECD8F00AEE0
      B60091D79C0076CD820076CD820091D79C00ADE0B40077C78A0026A03A00B5DF
      BD00000000000000000000000000CED6FD006C85F7008396F000A8BCFA0089A2
      F7006A88F5006A88F50088A1F700A7BBF9007E91EB005971E400C5CEF5000000
      0000DDAC85FDE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFD0000
      00000000000000000000F1DDC500D59B5A00CF9F6900DFBE9F00E2C4AD00E2C4
      AD00DEBB9E00C7966100C3894800E9D5BD000000000000000000000000000000
      000000000000C0ECCB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5
      A0004FB8690034B25400B6E3C100000000000000000000000000000000000000
      0000CED7FD00768DF9006D82ED0091A5F3009FB3F7009FB3F70090A5F200677C
      E8006880EC00C8D0F8000000000000000000A971516BDDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A72FFCE9970FFCB96
      6FFFC9946CFFC49A7AF4A971516B00000000000000000000000000000000FAF1
      E700E9CBA700D7A16400CE904D00CC904900D09B5A00E3C6A100F7EEE4000000
      0000000000000000000000000000000000000000000000000000E5F7E9009EE2
      B00054CA71003ABF5B0036BD590048C26A0097DBAA00E1F5E700000000000000
      00000000000000000000000000000000000000000000EAEEFE00B5C2FC007C93
      F9006B85F6006983F500768EF400B0BDF800E9ECFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      280000003C0000001E0000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF0000010100000000000001000000000000
      000100000000000080000000000000008000000000000000C002000000000000
      C002000000000000E007000000000000F00FC00400000000F00FE00000000000
      F81FF00000000000F81FF80400000000FC3FFC0C00000000FC3FFE1C00000000
      FFFFFF3C00000000FFFFE01FC03F80700001C00F801F003000018007000E0010
      0001000200040000000100020004000000010002000400000001000200040000
      0001000200040000000100020004000000010002000400000001000200040000
      00018007000E00100001C00F801F00300001E01FC03F8070FFFFFFFFFFFFFFF0
      00000000000000000000000000000000000000000000}
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Movimento Cartao de Credito'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 736
    Top = 144
  end
end
