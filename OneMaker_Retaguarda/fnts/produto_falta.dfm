object frmproduto_falta: Tfrmproduto_falta
  Left = 558
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PRODUTOS | Vendas/Faltas'
  ClientHeight = 466
  ClientWidth = 687
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
  object Bevel3: TBevel
    Left = 0
    Top = 406
    Width = 686
    Height = 4
    Visible = False
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 57
    ParentColor = True
    ColorHighLight = clWhite
    ColorShadow = clWhite
    Align = alTop
    TabOrder = 0
    ExplicitTop = 36
    ExplicitWidth = 686
    object Bevel1: TBevel
      Left = 272
      Top = 3
      Width = 2
      Height = 50
    end
    object GroupBox1: TGroupBox
      Left = 9
      Top = 4
      Width = 256
      Height = 45
      Caption = 'Per'#237'odo de Vendas'
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 19
        Width = 12
        Height = 13
        Caption = 'de'
      end
      object Label2: TLabel
        Left = 128
        Top = 19
        Width = 16
        Height = 13
        Caption = 'at'#233
      end
      object DateEdit1: TJvDateEdit
        Left = 25
        Top = 16
        Width = 96
        Height = 21
        Color = clWhite
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
          8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
          F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
          D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
          BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
          F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
          8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
          CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
          F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
          95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
          E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
          F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
          A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
          FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
          FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
          B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
          FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
          FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
          F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
          F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
          7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ImageKind = ikCustom
        ButtonWidth = 20
        ShowNullDate = False
        TabOrder = 0
        OnKeyPress = DateEdit1KeyPress
      end
      object DateEdit2: TJvDateEdit
        Left = 152
        Top = 16
        Width = 97
        Height = 21
        Date = 39083.000000000000000000
        Color = clWhite
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
          8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
          F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
          D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
          BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
          F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
          8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
          CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
          F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
          95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
          E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
          F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
          A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
          FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
          FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
          B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
          FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
          FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
          F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
          F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
          7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ImageKind = ikCustom
        ButtonWidth = 20
        ShowNullDate = False
        TabOrder = 1
        OnKeyPress = DateEdit1KeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 281
      Top = 4
      Width = 176
      Height = 45
      Caption = 'Se'#231#227'o (Subgrupo)'
      TabOrder = 1
      object combo_subgrupo: TComboBox
        Left = 8
        Top = 16
        Width = 161
        Height = 20
        Style = csDropDownList
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'TODOS'
        OnChange = combo_subgrupoChange
        OnKeyPress = combo_subgrupoKeyPress
        Items.Strings = (
          'TODOS'
          'SELECIONAR')
      end
    end
    object GroupBox3: TGroupBox
      Left = 464
      Top = 4
      Width = 129
      Height = 45
      Caption = 'Estoque'
      TabOrder = 2
      object combo_estoque: TComboBox
        Left = 8
        Top = 16
        Width = 113
        Height = 20
        Style = csDropDownList
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'TODOS'
        OnKeyPress = combo_estoqueKeyPress
        Items.Strings = (
          'TODOS'
          'SEM ESTOQUE'
          'M'#205'NIMO')
      end
    end
    object bfiltrar: TAdvGlowButton
      Left = 598
      Top = 4
      Width = 86
      Height = 50
      Caption = 'Filtrar'
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
      OnClick = BFILTRARClick
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
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = -1
    Top = 63
    Width = 687
    Height = 346
    Selected.Strings = (
      'CODIGO'#9'7'#9'CODIGO'
      'PRODUTO'#9'26'#9'PRODUTO'
      'marca'#9'14'#9'MARCA/LAB.'
      'PRECOCUSTO'#9'8'#9'PR.CUSTO'
      'ESTOQUE_ATUAL'#9'7'#9'ESTOQ'
      'PRECOVENDA'#9'9'#9'PR.VENDA'
      'QTDE'#9'8'#9'VENDA'
      'PESO'#9'7'#9'PEDIR')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 7
    ShowHorzScrollBar = True
    DataSource = dsproduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 15265520
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 408
    Width = 687
    Height = 58
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 531
    ExplicitWidth = 1222
    object bitbtn2: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 76
      Height = 58
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
      TabOrder = 0
      OnClick = BitBtn2Click
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
      ExplicitLeft = 8
      ExplicitTop = 18
      ExplicitHeight = 63
    end
    object bitbtn1: TAdvGlowButton
      Left = 76
      Top = 0
      Width = 76
      Height = 58
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
      TabOrder = 1
      OnClick = BitBtn1Click
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
      ExplicitLeft = 90
      ExplicitTop = 18
      ExplicitHeight = 63
    end
  end
  object qrdata: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'pro.codigo,'
      'pro.produto,'
      'pro.precovenda,'
      'pro.precocusto,'
      'est.estoque_atual,'
      'pro.codmarca,'
      'pro.peso,'
      'sum(mov.qtde) qtde'
      'from'
      'c000025 pro,'
      'c000100 est'
      'JOIN'
      'c000032 mov on pro.codigo = mov.codproduto'
      'and pro.codigo = est.codproduto'
      'group by '
      'pro.produto, '
      'pro.codigo,'
      'pro.precovenda,'
      'pro.precocusto,'
      'pro.estoque,'
      'pro.codmarca,'
      'pro.peso,'
      'est.estoque_atual'
      'order by'
      'pro.produto')
    Params = <>
    Left = 192
    Top = 104
    object qrdatamarca: TStringField
      DisplayLabel = 'MARCA/LAB.'
      DisplayWidth = 14
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 40
      Lookup = True
    end
    object qrdataCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrdataPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrdataPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrdataPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrdataESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
    end
    object qrdataCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrdataPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrdataQTDE: TExtendedField
      FieldName = 'QTDE'
      ReadOnly = True
      Precision = 19
    end
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 240
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 448
    Top = 256
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = BitBtn2Click
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      ShortCut = 118
      OnClick = BitBtn1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = BitBtn3Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EditarRelatrio1: TMenuItem
      Caption = 'Editar Relat'#243'rio'
      OnClick = EditarRelatrio1Click
    end
  end
  object fsproduto: TfrxDBDataset
    UserName = 'fsproduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'marca=MARCA'
      'PRECOCUSTO=PRECOCUSTO'
      'PRECOVENDA=PRECOVENDA'
      'ESTOQUE=ESTOQUE'
      'QTDE=QTDE'
      'PESO=PESO'
      'CODMARCA=CODMARCA')
    DataSet = qrproduto
    BCDToCurrency = False
    Left = 104
    Top = 248
  end
  object fxproduto: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 39276.740758275460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 136
    Top = 248
    Datasets = <
      item
        DataSet = fsproduto
        DataSetName = 'fsproduto'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        DataSet = fsproduto
        DataSetName = 'fsproduto'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsproduto."CODIGO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 68.031540000000000000
          Width = 313.700990000000000000
          Height = 15.118120000000000000
          DataField = 'PRODUTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."PRODUTO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 381.732530000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          DataField = 'MARCA'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."MARCA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 631.181510000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'QTDE'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsproduto."QTDE"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          Width = 185.196970000000000000
          Height = 18.897650000000000000
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
          Top = 30.236239999999990000
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
        object Memo29: TfrxMemoView
          Top = 41.574830000000000000
          Width = 298.582870000000000000
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
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 34.015770000000010000
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
        object Memo1: TfrxMemoView
          Top = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Top = 60.472480000000000000
          Width = 313.700990000000000000
          Height = 15.118120000000000000
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Top = 60.472480000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'MARCA/LABORAT'#211'RIO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 631.181510000000000000
          Top = 60.472480000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE.PEDIDO')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Width = 740.787880000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
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
    Left = 168
    Top = 252
  end
  object qrproduto: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'PRODUTO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PRECOCUSTO'
        DataType = ftFloat
      end
      item
        Name = 'ESTOQUE_ATUAL'
        DataType = ftFloat
      end
      item
        Name = 'PRECOVENDA'
        DataType = ftFloat
      end
      item
        Name = 'PESO'
        DataType = ftFloat
      end
      item
        Name = 'CODMARCA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end>
    Left = 320
    Top = 96
    Data = {
      030008000600434F4449474F0100060000000000070050524F4455544F01003C
      00000000000A00505245434F435553544F06000000000000000D004553544F51
      55455F415455414C06000000000000000A00505245434F56454E444106000000
      0000000004005045534F06000000000000000800434F444D4152434101000600
      000000000400515444450600000000000000000000000000}
    object qrprodutoCODIGO: TStringField
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoPRODUTO: TStringField
      DisplayWidth = 26
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutomarca: TStringField
      DisplayLabel = 'MARCA/LAB.'
      DisplayWidth = 14
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 40
      Lookup = True
    end
    object qrprodutoPRECOCUSTO: TFloatField
      DisplayLabel = 'PR.CUSTO'
      DisplayWidth = 8
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoESTOQUE_ATUAL: TFloatField
      DisplayLabel = 'ESTOQ'
      DisplayWidth = 7
      FieldName = 'ESTOQUE_ATUAL'
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = 'PR.VENDA'
      DisplayWidth = 9
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoQTDE: TFloatField
      DisplayLabel = 'VENDA'
      DisplayWidth = 8
      FieldName = 'QTDE'
    end
    object qrprodutoPESO: TFloatField
      DisplayLabel = 'PEDIR'
      DisplayWidth = 7
      FieldName = 'PESO'
    end
    object qrprodutoCODMARCA: TStringField
      DisplayWidth = 6
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Produto/Faltas'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 440
    Top = 368
  end
end
