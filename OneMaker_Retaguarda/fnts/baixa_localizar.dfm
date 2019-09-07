object frmbaixa_localizar: Tfrmbaixa_localizar
  Left = 462
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baixa de Estoque - Localizar'
  ClientHeight = 472
  ClientWidth = 579
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
  object wwDBGrid1: TwwDBGrid
    Left = -1
    Top = 73
    Width = 580
    Height = 346
    Selected.Strings = (
      'cliente'#9'50'#9'Cliente'#9#9
      'CODIGO'#9'6'#9'CODIGO'#9#9
      'DATA'#9'10'#9'DATA'#9#9
      'CODCLIENTE'#9'6'#9'COD. CLIENTE'#9'F'
      'CODVENDEDOR'#9'6'#9'COD. VENDEDOR'#9'F'
      'SUBTOTAL'#9'10'#9'SUBTOTAL'#9'F'#9
      'DESCONTO'#9'10'#9'DESCONTO'#9'F'#9
      'ACRESCIMO'#9'10'#9'ACRESCIMO'#9'F'#9
      'TOTAL'#9'10'#9'TOTAL'#9'F'#9
      'OBS1'#9'80'#9'OBS1'#9'F'#9
      'OBS2'#9'80'#9'OBS2'#9'F'#9
      'OBS3'#9'80'#9'OBS3'#9'F'#9
      'OBS4'#9'80'#9'OBS4'#9'F'#9
      'TIPO'#9'10'#9'TIPO'#9'F'#9
      'FINALIZADO'#9'10'#9'FINALIZADO'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = 15461355
    DataSource = dsorcamento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    OnKeyPress = wwDBGrid1KeyPress
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 36
    ExplicitWidth = 580
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 121
      Height = 57
      Caption = 'Localizar por'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object RadioButton1: TRadioButton
        Left = 8
        Top = 16
        Width = 105
        Height = 17
        Caption = 'F2 - N'#250'mero'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 8
        Top = 32
        Width = 105
        Height = 17
        Caption = 'F3 - Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton2Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 136
      Top = 8
      Width = 377
      Height = 57
      Caption = 'Informe o n'#250'mero do Or'#231'amento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Edit1: TEdit
        Left = 16
        Top = 22
        Width = 233
        Height = 21
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
      object combocliente: TwwDBLookupCombo
        Left = 15
        Top = 22
        Width = 233
        Height = 21
        DropDownAlignment = taLeftJustify
        LookupTable = frmmodulo.qrcliente
        LookupField = 'NOME'
        Color = clWhite
        TabOrder = 1
        Visible = False
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = comboclienteEnter
        OnExit = comboclienteExit
        OnKeyPress = comboclienteKeyPress
      end
      object BITBTN1: TAdvGlowButton
        Left = 259
        Top = 15
        Width = 116
        Height = 40
        Align = alRight
        Caption = 'Localizar'
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
        OnClick = BITBTN1Click
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
        ExplicitLeft = 258
      end
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 419
    Width = 579
    Height = 53
    Cursor = crDefault
    Caption.Location = plCenterLeft
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -19
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.ColorStart = clWhite
    Caption.ColorEnd = clWhite
    Caption.Line = False
    Fill.Color = 3355443
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    Align = alBottom
    OnMouseDown = AdvSmoothExpanderPanel1MouseDown
    TabOrder = 2
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    ExplicitTop = 513
    ExplicitWidth = 763
    TMSStyle = 0
    OldHeight = 53.000000000000000000
    object AdvMetroButton1: TAdvMetroButton
      Left = 842
      Top = -2
      Width = 39
      Height = 37
      Appearance.PictureColor = clWhite
      Caption = ''
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002A0000002A0806000000C5C3C9
        5B0000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A3445414132443945303444303131453538344545414445343436
        3535353531312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A344541413244394630344430313145353834454541444534343635353535
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3445414132443943303444303131
        453538344545414445343436353535353131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A344541413244394430344430313145353834
        4545414445343436353535353131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E4B533802000004B14944415478DAD499
        7968554714C65F1215778D2651A352637109C605036EE082A2455C6A5D506825
        54105C402B05A960ABE03F820A2AA2E082FE218A2888FB52975A49085151DBB8
        15375C316AAAC625C6C4EB77E01B3D0EBEF7665EDE7BE0811FF7BE3B73CF7C77
        EEDC9973E6A5044110FA1AAC4E2DEF6F023A806EA02B680B9A8306A012FC0F1E
        82CBE02AB8092A40902CA11DC170F03DE80D5A39DCF3045C007BC1617003BC77
        6D30C5F3D54BEF4D063F832EEAFA6B50069E9337A03E7BB729C8028D54FD5B60
        0BD806AEC75BE838301FF457D72E82425002AEF135BF0255A02E878688EC0CF2
        C1401E8D9D03CBC0CEA8BD2B42A3D0002C02CF824F560C6680AE0EF76BBE05D3
        C029E5EB25580A9A45BA379AE3266003A8A15311FB07E8E029D0A61D980FCA94
        E0ED202B16A10DC13AE5A8147C07D26A29D220C36E083867894DF715BA44F564
        09E81E2781369DC009B6F31E2CE74338099DA8C6E4BF0914A9C76E09DB7B0D0A
        5C84760467D5981C9A6091867EE0A11A66B99184A682DF59B986033E25494285
        59E01DDB972150279CD0CEE0162BFE0D32922832C429EA00DB9719A1A7294B55
        53AA9C8FE6EAF3166CE0B2974C93556D13780932C1789066C4196BCAB55BEC3C
        38E2D140373EE0974C0295EE1EBE8E83629E8F0119F6CAD417BC61B72FF6785D
        23C04D5008BA7C6128FDC5E134CEC3E7AF9CAA64BC0EB3C7E84C8A7C0C463A3A
        1C4691C644540ECB72F8DBD87D30D6D1EF60D617FBCD1EA33D787CC000C3C546
        821CF57B3058CDC065357F1BCBE6AB743169FF2ECFF3EC576FBEB683A091E393
        4BAF1D0E3EB76A50C1A3B6427B6E8C804C4B3BD4ECF3598F9AE0F71143351793
        B8723A38A6AEC957DAD87CADB462C6B0571CFD56333BF8A84B0B35816D95E794
        22AFA8001C0D537E1AFC08FEF3F45BC163335B688A09516398FF5E71EE0D5716
        CB7C1C685DA9563A116264EE6312C16F06A3C2940F67DA91E5E9B7318F2F6CA1
        8FD49868E8E84CEAAE053F58BE6A548FA4B17C9D63126874A5F3BCCC167A57AD
        24998E0EE78109D635F970268193D675590E173AFA95D5E81B9EDFB18596F2D8
        0674727458C47957FB98037683B9E08C2A7BCAFA2E26EDB7E3F9257B1E1D08AA
        F46AE0882C8DF7C025D0DF2AEBC55443E2CC9F3C7CFEC279B8DAAC92BA5042BA
        220A952CB18587E301202F4C9964AA833C7C49AEB65F05D0D9B650099A17A814
        765292635183F46039752C35C1B35D294FA50387A2E5DA094096EE9D6CFF29C8
        0F17E1A7F129028658B3922C742AA864FB6B22A52221060EA5AC2CBDDB274922
        25D3BDCD76AFF3438C9A2E17A820BA280E3B23D16803FE54B9FD6C3BA90C77A3
        7C582B7993D8B1048A6D0BF6A8707023A8EFB353D2925B2C3A9E1C106791BDD5
        2E49C098383B964D32D9B4DAA51CDDE36BC9AAA540E984E9E086F22DB34CFB58
        77F38CD3556ACC1AA753406B4F81999C9FF7295F32BBAC0FD79306D78DDCBA0C
        7E6523375705D812809C026719183F61C05BCD6D7709D55A70773A9F39543FEE
        F187B8DBBC826160653CB7C6257F9FCA88BEB5BA5ECE30F131838F777C3811D9
        927533ACFA5B19C75E48C41EBEE9DD5CEEAA08BD540F4532C900FE0187F88743
        6984AC202E42751297CED7DA93E2B3D973F5D8ABD273F799D45D641A5CCEA1E1
        65B5119A54FB20C0004E7B10B44195D3E70000000049454E44AE426082}
      TabOrder = 0
      Version = '1.1.2.0'
      OnClick = AdvMetroButton1Click
    end
    object tyyr2258: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 100
      Height = 53
      Align = alLeft
      Caption = 'Cancelar'
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
      OnClick = tyyr2258Click
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
      ExplicitLeft = 320
      ExplicitTop = 16
      ExplicitHeight = 41
    end
  end
  object qrorcamento: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000096')
    Params = <>
    Left = 136
    Top = 120
    object qrorcamentocliente: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrorcamentoCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoDATA: TDateField
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrorcamentoCODCLIENTE: TWideStringField
      DisplayLabel = 'COD. CLIENTE'
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrorcamentoCODVENDEDOR: TWideStringField
      DisplayLabel = 'COD. VENDEDOR'
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrorcamentoSUBTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SUBTOTAL'
    end
    object qrorcamentoDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
    end
    object qrorcamentoACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
    end
    object qrorcamentoTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object qrorcamentoOBS1: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS1'
      Size = 80
    end
    object qrorcamentoOBS2: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS2'
      Size = 80
    end
    object qrorcamentoOBS3: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS3'
      Size = 80
    end
    object qrorcamentoOBS4: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS4'
      Size = 80
    end
    object qrorcamentoTIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
    end
    object qrorcamentoFINALIZADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FINALIZADO'
    end
  end
  object dsorcamento: TDataSource
    DataSet = qrorcamento
    Left = 192
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 240
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object LocalizarporNmero1: TMenuItem
      Caption = 'Localizar por N'#250'mero'
      ShortCut = 113
      OnClick = LocalizarporNmero1Click
    end
    object LocalizarporCliente1: TMenuItem
      Caption = 'Localizar por Cliente'
      ShortCut = 114
      OnClick = LocalizarporCliente1Click
    end
  end
end
