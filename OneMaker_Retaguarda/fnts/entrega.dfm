object frmentrega: Tfrmentrega
  Left = 693
  Top = 140
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Entrega de Mercadorias'
  ClientHeight = 447
  ClientWidth = 670
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -1
    ExplicitWidth = 668
    object Label1: TLabel
      Left = 7
      Top = 12
      Width = 37
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 426
      Top = 4
      Width = 2
      Height = 27
    end
    object RadioButton1: TRadioButton
      Left = 440
      Top = 8
      Width = 81
      Height = 17
      Caption = 'A Entregar'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 520
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Todas as Notas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object ecliente: TRzButtonEdit
      Left = 48
      Top = 7
      Width = 297
      Height = 21
      Text = ''
      CharCase = ecUpperCase
      Color = clWhite
      FocusColor = 11465460
      TabOrder = 0
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
    object ed_codigo: TRzEdit
      Left = 352
      Top = 7
      Width = 65
      Height = 21
      Text = ''
      Enabled = False
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 395
    Width = 670
    Height = 52
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 581
    object bincluir: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 120
      Height = 52
      Align = alLeft
      Caption = 'Nova Entrega'
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
        89504E470D0A1A0A0000000D494844520000001D0000001E0806000000D00715
        A1000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000058B4944415478DAE4564B6C1C55163DF77DBAAABA5DDDB6DB6EBBB1
        1D3B4EDB494C0464080824466246F240101F89051B162C404220766C904002F1
        114159B06194150C8B91469A59CD20081F21CD84BF10DF104C14E543009BA493
        B8DBDDF5EB7A1F16765AEDB89DC40856734A4F25BD7BDF3B75EF7BF7DCA2A87E
        00DDA094FE8F31F60E22D4B1317022E62E544FFE214EC2839C8B350E62A07CCB
        AA096B2DC228C61BFF7E31B7FBCE5934CE9E2E000011208400D15A166B01A514
        AC058808448466FD9C6C34162165662DE99EBDF7AF998CA2185B2A57701B3797
        9D04471425F8F28BA3485305C658DBD71803290566AE1C87E739504AC35A8DE9
        CDD7F864BBA7423CF2F0FD5DA619C2A57A76A9D104630CC65830C6501CC8436B
        03EA08D75A0BCE59DBAF7D3C50FE7AF917F5EAB9AE062272CE47A4B586101C95
        CA08C000744640000C902429B4D6ED0F22900F5A87741D430E047F851C52F236
        39F43A1B090680412903632C88614C88EE9B8B8EE3E9B8191883C568C69538B5
        700E870FFF08CED9AAB4AEBD4C165A1B6CDD3A8A4D13033879B2B9F3E3CFEA70
        32AC4BA489BD9010E0988024A99581EB653032526CDFCA8B915A6BE17A19A489
        86EBB0D12DE31E385FBB46D8AEFBD026C27219F4F478E8EFCFC3C25EB2400984
        562B4518A5C8E5F8F4353BFC1240A771C1198A7C71A86315431A361026CD5958
        B44BA3D54A37A60E9C411B538A2275ADC7E57E46AB532CF67FF8763B3DA9D198
        2C8DCAE991B1EB5986E1C4F19F71ECD80284E0174D6D678A95D2989C2C636AA6
        82373F7FFFEEBD1FFC6BFF593E0F431A0CCBE4E2B6671E3D5F584000DCFBE0DD
        F7FEFDBE2736A571083F9FC5C4C4D02A31B8148C31F0F359C010728EF7C07BDF
        7FFB51CAAAAF40A29D6551DC5404AC8526A08660664779FC4930096D348686FB
        303C3AB8AC73970B2258A5805684EB46A7ECADD3BB9EDE7FE28343360D3ED15A
        030C10438512A02D22AE512E4FFE75F7D6EB26A0129C3A5D43AD168073868D42
        6B83426F161353DB68F7F4AE910F8F1F79BEB9F4D39F7512010210559F208990
        C6D1B33BFBAEB869A6341E1BD572C320C6996A0D528A0D93A6A95A16945680D9
        CACEDA4B9FBCFE2747EAA7D2983FA514873092C038BFA911B61EFBCB96AB2399
        CBF72C2D5631B1791895A99176FD31C6209DCCBA3298262D1863DAF5AC9446D8
        6CA0521ACFDC3CBEE3DC3FBEF9DF93C5ECC09B41AC3F163DDAFA26895FAEF40E
        F3D9C99D0192B84732066840697D5EFF1186218E7D750C69AAC118755C1C0B29
        3926B70CC3751CA043F40916104EF6AEED3736FE79F000988CFEE66ABA9E6538
        7F2154ADE91BC767E6274B63C5300A60AC85B1A63D08B45CFA8CC0385B3388AD
        D841ABD6190BB49A8BF8E3C44CF686B16D676A71B84D48DA43BBFF7B4F4D195D
        18CC1562DFF11C65743B0C65350471F378F9B664B337E0296921A4582D301650
        A9824809C7A333D1730B6F38CA6A2688AF982D1C9EB1D5662DA925812B39AF0B
        A7E0C123C2A28ADD1F82C55522A0AD41685AC9A1786161737E7CB21954F1DDDC
        0F68362208C1A194468FEF61DBF631F4E6067168F1E0C2E7C1C97296653CDEA1
        4216960A6ECECDE7F230D642E896825EE971BD22DBE56709DEBBF539F7F6E2AE
        C0176EAED8EFC3EF71579AB6412623E10B17D02A78B73EE7E658C6EB13B92EFB
        58A42A5DE9329740BFC8E1D3E044DFBEF9B7AA0F9567D95465CAB33682B10A8C
        04883CA0D58AF6CDBF75F6D3E0C4607F37C235ADED929D03C873CF7BF5CC47A5
        F956BD7647DF558BDBBDB2E7F36C6F4387B5B9E868F4DAE2D7ECEDA56F4B45D1
        E3D20515F5AB482D00491C83D277DF69CC0D1F681C39BBD51BA2027751D7311D
        8E4E3909547150FAE06097D5022F4B6E2C2C180843228F14BA78383E85D46848
        C67B73C2412FB2B02BCFE560431A676121C050E01EC057CF6F041B57F3DF00FF
        3FA402C01280FCCAFBF7461EC0D22F0300FB526D870A6F86ED0000000049454E
        44AE426082}
      PopupMenu = PopupMenu1
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
      ExplicitLeft = -6
      ExplicitHeight = 95
    end
    object bgravar: TAdvGlowButton
      Left = 120
      Top = 0
      Width = 120
      Height = 52
      Align = alLeft
      Caption = 'Imprimir Produtos'
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
        1F90000003CB4944415478DAC496CB6F555514C67F6BEF7D5EF7716E5BB8A584
        87A50DAF844A420D2490C0C43875C04426CC1CFB1730E11F50C21F803A73A689
        89094E74E200470E148CA446B1CAA3ED85D27BEF79EEEDA0F4062CE246AEF14B
        CE68AFB3BFBDD6FAD697259F7EF01E5BA8EA9A3409CECDCD743F7322CA39C7F3
        50E543A6E78E03707FE93B4C943C374E4410E7ECD2DD076FAF0FCBAF8DD6A333
        B31C0F4120739669AB5898EC5E535A77AABAE655E19C436BCD6B9313D76EB03C
        775F596251E04075B5D0558A29EB9869B42F27CDE440652DE342652D49333930
        D3685F9EB28EAE5274B560A6F308EB1CFB82E8E0747BEA52612DFC4D89FF65DA
        14D632D79EBAD4CAAA8F8799BDAD44506BB9623577C4ADF4431D06D83166BB05
        6B2D3A0C885BE947AB99632D57A8BBF106BB26A28B13ADD6E9B2AAF9AF505635
        13ADD6E95D93D1C5BBF106AAA955BAA3D3B92222B87196F83942131176743A57
        9A5AA566319DB99A36DB1355551198C0EB12A94BA22806203006E3F99F03D266
        7B62B19CB92A5FBCFF6E2DA39915BF0B6C4DD44801C807EB88D2BE79F3A4B2D6
        ACACAD0D9D734D7999BA8950AFDC07409BF0A5A6C06D1ACBD08441E02DE3C028
        B4524F7892A7DF416D2D65E57D9535BEAF344AC88A8A2CAF10257F29BD238E0C
        A1D154D67935CC8B38329A7E5670FDC612EB838C403FDBD3B2AE491B316F9D9C
        A31987141E63E999F1A62892D850D6C13662532B92D86C0A07BF7E7B11179525
        0C346FBE314759D688C8B6190D023D8A1D5BA905B0D6A1951087665B4E0258E7
        A83DFBEB4DBC85DA3A6AC6E36E8AFF09CADF33045BD76483FEC877B7FC3D1BF4
        B1F5F6DEBF32B1885016394A6B76CFCE5357D533DFEED97994D69445EE4DEE45
        5C571522C2C299739C3D7F81C38BA7A88A9CAAC839BC788AB3E72FB070E61C22
        425D55E3232EB221F3AF9F60E79EFDAC2CDF61EFA1A374F7CDD2DD37CBDE4347
        5959BEC3CE3DFB995F3841910DC7A7EA306EF0FBD26DD6D7563970EC3837BFFA
        9222CB00F8F6FAE71C3D799A9B37BE61E3618F306E8C8F581B4DEFC13D4C1092
        B452FA0F7B9445B16997D990A49D92F5FBF41EDCA39576BC160A3FCB748E200C
        D1418073161386A3DDCC8421CE5A74101084A1F716239F5C7E671D68BF304829
        F2411F6B2DADCE248F7BABB827C4A214EDC91D6C3CEAA194226A3447672FC063
        AF8CF3C180FD478EB1F7E011868FD709A2783436CE39CA3C2369A7FCF6D32D7E
        BDF53D611C8FC9AB95A2C886F41FF5A8CA72BB7245B0B6A6C8868852DEE26AFF
        B3AA63EEFDF233777EFC613353D9BE2938E708E38430497C4ADD36C01F40EBC5
        CB9D2588228228F25804BDD69F8D3F07009312AB9992D0270F0000000049454E
        44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bgravarClick
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
      ExplicitLeft = 126
      ExplicitTop = 6
      ExplicitHeight = 57
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 240
      Top = 0
      Width = 120
      Height = 52
      Align = alLeft
      Caption = 'Produtos a Entregar'
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
        89504E470D0A1A0A0000000D4948445200000019000000200806000000E79CD3
        06000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000024B4944415478DAC457C16ED340107D333671931047E014D2420FC0
        0109090915891F8003BFCB95430F70417C0207040295B6D056D0D4F63ABB331C
        E2B44D6227B61BC4482B5BF2ECBC9D79F3466B3A3EFAF40DC07D007FD0C08838
        FCF5F3FB476BCD6B66EFB4C8C707D0CBDFC366200493C62FACCBF6BADDF09588
        1CCFFB30AE6B043033B2347E96A5E95B66AFBF7E109D0011335273BE6B4CB2C7
        ECB5D70B722525664666E25D6392F7CC5E07A0552054B0560311314C1A3F3726
        FE404CD194F84232CB82AAEA82AFB363586BF2DA4D1EE7A3DF4FED387B17049D
        97FE5C3B425570B0FF19493282E75D7E76CEE2D6ED21A2C136AC1D5F011574BA
        2198BD197F4021AA4F5AAD8D37FE228B40AF1FA1D30D41C433C1828D2E44DCCC
        0E11C1607327F7D585CC45E5B15F548A5E2F2AD84410B110B10BA574CE2E65AA
        9413265A3897E7F9732599A11CA2026BB3E520440455C5C9F13EEC380371F50E
        5711F8375A08FB838B38259910008531314C1A83D9AB0C22E2106C7466E21482
        A80A0060B8F5A894C8651A51153837BE88B39413110722577FC2680DE227A7D1
        4613B9A8C485623C3AFC0A938CC0259D5498BDB308DA3731DC7A7811672927D1
        E01E44241F2F554BA5E0BC1B2B7112049D5A005781E627422908B3D7B8BB5682
        4C457478F0055996D4D649ABD54634D85E25C6CB4CA6AB8E95F9170EC8CD3B3B
        8DCB656DB6D0FEC56254C9E76C7D90CA624CE2B35CF5755BD84310B4AB89F1F4
        E4C7BF17E3DDE183EBDD92AA8871A25C6A12BE70E6F9E53712C5BA6C8D97BBFF
        0CE2033803D06FFAEBB0C24200677F0700883A2879057A4A9C0000000049454E
        44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = AdvGlowButton1Click
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
      ExplicitLeft = 252
      ExplicitTop = 6
      ExplicitHeight = 57
    end
  end
  object Panel4: TPanel
    Left = -1
    Top = 39
    Width = 670
    Height = 258
    BevelOuter = bvNone
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Top = 0
      Width = 670
      Height = 256
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
      object wwDBGrid1: TwwDBGrid
        Left = -1
        Top = 0
        Width = 670
        Height = 256
        Selected.Strings = (
          'CODVENDA'#9'7'#9'Venda'#9#9
          'DATA_VENDA'#9'10'#9'Data'#9#9
          'CODPRODUTO'#9'6'#9'C'#243'digo'#9#9
          'PRODUTO'#9'44'#9'Produto'#9#9
          'UNIDADE'#9'2'#9'Un.'#9#9
          'VENDIDO'#9'9'#9'Vendido'#9#9
          'QTDE_ENTREGUE'#9'8'#9'Entregue'#9#9
          'QTDE_SALDO'#9'8'#9'A Entregar'#9#9)
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsprodutos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      object bfiltrar: TButton
        Left = 424
        Top = 112
        Width = 129
        Height = 25
        Caption = 'Filtrar Produtos'
        TabOrder = 1
        Visible = False
        OnClick = bfiltrarClick
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 297
    Width = 670
    Height = 97
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Bevel6: TBevel
      Left = 0
      Top = 0
      Width = 2
      Height = 97
      Align = alLeft
      ExplicitTop = 16
    end
    object wwDBGrid3: TwwDBGrid
      Left = 1
      Top = 0
      Width = 668
      Height = 97
      Selected.Strings = (
        'DATA_ENTREGA'#9'14'#9'Data'
        'QTDE_ENTREGUE'#9'17'#9'Quantidade Entregue')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsentrega
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
  end
  object qrprodutos: TZQuery
    Connection = frmmodulo.Conexao
    AfterScroll = qrprodutosAfterScroll
    SQL.Strings = (
      'select '
      'ven.codnota codvenda,'
      'ven.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ven.data data_venda,'
      'sum(ven.qtde) vendido,'
      'sum(ent.qtde_entregue) qtde_entregue,'
      '(sum(ven.qtde)- sum(ent.qtde_entregue)) qtde_saldo'
      'from '
      'c000032 ven,'
      'c000025 pro,'
      'c000115 ent'
      'where'
      'ven.codproduto = ent.codproduto and'
      'ven.codproduto = pro.codigo'
      'group by'
      'ven.codnota, '
      'ven.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ven.qtde,'
      'ven.data'
      'having'
      '(sum(ven.qtde)- sum(ent.qtde_entregue)) > 0')
    Params = <>
    Left = 144
    Top = 173
  end
  object dsprodutos: TDataSource
    DataSet = qrprodutos
    Left = 176
    Top = 173
  end
  object qrcliente2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 208
    Top = 176
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
    object dtfldqrcliente2DATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object dtfldqrcliente2DATA_ULTIMACOMPRA: TDateField
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
    object dtfldqrcliente2RG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object qrcliente2SEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrcliente2HISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object dtfldqrcliente2PREVISAO: TDateField
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
  object qrentrega: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000115')
    Params = <>
    Left = 248
    Top = 176
  end
  object dsentrega: TDataSource
    DataSet = qrentrega
    Left = 280
    Top = 181
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000115')
    Params = <>
    Left = 344
    Top = 200
  end
  object dsvenda: TDataSource
    DataSet = qrvenda
    Left = 376
    Top = 205
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 213
    object NovaEntrega1: TMenuItem
      Caption = 'Nova Entrega'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bfecharClick
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
    ReportOptions.LastChange = 40127.747116203710000000
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
        DataSet = fsentr
        DataSetName = 'fsentr'
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Shape11: TfrxShapeView
          Top = 41.252010000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo34: TfrxMemoView
          Left = 5.559060000000000000
          Top = 43.031540000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataSet = fsentr
          DataSetName = 'fsentr'
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
          Top = 43.031540000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          DataSet = fsentr
          DataSetName = 'fsentr'
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
          Top = 43.031540000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataSet = fsentr
          DataSetName = 'fsentr'
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
          Top = 43.031540000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = fsentr
          DataSetName = 'fsentr'
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
            'PRODUTOS A ENTREGAR    [Date]')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 589.606680000000000000
          Top = 42.464552280000000000
          Height = 457.322839530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 642.520100000000000000
          Top = 42.464552280000000000
          Height = 457.322839530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 1.133858270000000000
          Top = 14.118120000000000000
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
          Top = 36.795300000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo87: TfrxMemoView
          Left = 0.755905510000000000
          Top = 21.677180000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          DataField = 'NOME'
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fscliente."NOME"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 1.000000000000000000
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
        object Line1: TfrxLineView
          Left = 56.692950000000000000
          Top = 41.574830000000000000
          Height = 457.322839530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 408.189240000000000000
          Top = 13.984251968503900000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 408.189240000000000000
          Top = 21.543307090000000000
          Width = 423.307360000000000000
          Height = 15.118120000000000000
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[fscliente."ENDERECO"] [fscliente."BAIRRO"] [fscliente."CIDADE"]' +
              ' [fscliente."COMPLEMENTO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 136.063080000000000000
        Width = 733.228820000000000000
        DataSet = fsentr
        DataSetName = 'fsentr'
        RowCount = 0
        object Memo22: TfrxMemoView
          Left = 5.779530000000000000
          Top = 1.779529999999990000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataField = 'CODPRODUTO'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsentr."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 64.472480000000000000
          Top = 1.779529999999990000
          Width = 514.016080000000000000
          Height = 11.338590000000000000
          DataField = 'PRODUTO'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsentr."PRODUTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 589.827150000000000000
          Top = 1.779529999999990000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'Unidade'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsentr."Unidade"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 646.520100000000000000
          Top = 1.779529999999990000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'qtde_saldo'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsentr."qtde_saldo"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 211.653680000000000000
        Width = 733.228820000000000000
        object Shape1: TfrxShapeView
          Width = 733.228820000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clWhite
          Frame.Width = 0.500000000000000000
        end
        object Memo2: TfrxMemoView
          Left = 593.386210000000000000
          Top = 8.779529999999990000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 646.299630000000000000
          Top = 8.559059999999990000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fsentr."qtde_saldo">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object fsentr: TfrxDBDataset
    UserName = 'fsentr'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODVENDA=CODVENDA'
      'DATA_VENDA=DATA_VENDA'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'UNIDADE=Unidade'
      'VENDIDO=VENDIDO'
      'QTDE_ENTREGUE=qtde_entregue'
      'QTDE_SALDO=qtde_saldo')
    DataSet = qrprodutos
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
    DataSet = qrcliente2
    BCDToCurrency = False
    Left = 152
    Top = 264
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select'
      'ent.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ent.codvenda,'
      'ent.data_venda,'
      'ent.codcliente,'
      'cli.nome,'
      'sum(ent.qtde_vendida) vendido,'
      'sum(ent.qtde_entregue) qtde_entregue,'
      '(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) qtde_saldo'
      'from'
      'c000025 pro,'
      'c000115 ent,'
      'c000007 cli'
      'where'
      'ent.codproduto = pro.codigo'
      'and ent.codcliente = cli.codigo'
      'group by'
      'ent.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ent.codvenda,'
      'ent.data_venda,'
      'ent.codcliente,'
      'cli.nome'
      'having'
      
        'sum(ent.qtde_vendida) > 0 and (sum(ent.qtde_vendida)- sum(ent.qt' +
        'de_entregue)) > 0')
    Params = <>
    Left = 344
    Top = 253
  end
  object fsent_todos: TfrxDBDataset
    UserName = 'fsent_todos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'CODVENDA=CODVENDA'
      'DATA_VENDA=DATA_VENDA'
      'CODCLIENTE=CODCLIENTE'
      'NOME=NOME'
      'VENDIDO=VENDIDO'
      'QTDE_ENTREGUE=QTDE_ENTREGUE'
      'QTDE_SALDO=QTDE_SALDO')
    DataSet = query
    BCDToCurrency = False
    Left = 376
    Top = 256
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Controle de Entregas'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 792
    Top = 472
  end
end
