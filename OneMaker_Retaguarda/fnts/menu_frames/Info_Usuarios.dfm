object Frm_Info_Usuarios: TFrm_Info_Usuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informa'#231#245'es de Usu'#225'rio'
  ClientHeight = 403
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 18
    Top = 240
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label6: TLabel
    Left = 22
    Top = 276
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Label7: TLabel
    Left = 18
    Top = 311
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object AdvSmoothPanel1: TAdvSmoothPanel
    Left = 0
    Top = 0
    Width = 318
    Height = 217
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Line = False
    Fill.Color = 8210719
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.5.2.1'
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 348
    TMSStyle = 4
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 33
      Width = 25
      Height = 162
      DataSource = DataSource1
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Insert record'
        'Deletar Foto ?'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data'
        'Apply updates'
        'Cancel updates')
      Kind = dbnVertical
      TabOrder = 0
    end
    object CurvyPanel1: TCurvyPanel
      Left = 39
      Top = 18
      Width = 195
      Height = 190
      BorderColor = 8216098
      Rounding = 20
      TabOrder = 1
      object cxDBImage1: TcxDBImage
        Left = 12
        Top = 15
        DataBinding.DataField = 'FOTO'
        DataBinding.DataSource = DataSource1
        Properties.Caption = 'Foto do Usu'#225'rio'
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.PopupMenuLayout.MenuItems = [pmiDelete, pmiLoad, pmiWebCam, pmiSave]
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 162
        Width = 169
      end
    end
  end
  object CurvyPanel2: TCurvyPanel
    Left = 59
    Top = 232
    Width = 251
    Height = 29
    Rounding = 10
    TabOrder = 1
    object Label1: TLabel
      Left = 30
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object Image1: TImage
      Left = 8
      Top = 6
      Width = 16
      Height = 16
      AutoSize = True
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
        0000001008060000001FF3FF61000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC61050000000B744558745469746C6500496E666F3B6D122D
        860000032D49444154384F4D937D2CD4711CC77FD484DAFC574BFFD57FE98F56
        FF28CFC530392B13235D6917CD299AC79CDDC953F2341767177A9AA4C2686A48
        EEE62E4A17E7D9515CE95272117A1C7BF7FDFCEA56BFEDB57DF6BDF7EBFDFDDC
        EE7E9CE24E1F57516BA19F638F15C39AB18EB1FE2F34D3995545DD9F2CEFB199
        93DFECE500F05028EC649A4381529D545CAD6D28BDD563248AAB354DF9CA27C9
        6151690E94B1E4AF30972BACD45AE475E979F5EE055735930F55068CBFFE84C5
        A5EF3C34D359815233999673D783B20CABA2AAA71C9757AEE2E5949C7B874BAA
        B5AB86A94F985FFA8976FD47E4D68F23F7FE189BE7605EF905032B2AA9D2AEA6
        64D71D21274FA12697B30A3F2573CC2C695B9879BF008D610129B563286C18C5
        ECE79F58F90164D40CE3FCCD11740E9B4199CC92F685A342C93672A9607D7CC6
        6D69E3A3018C995690563781B3D58368EE3661F91BD0C56E3F53A683B8729031
        8421E31750F69CA446462E156C48C8A8D34DBD994779AB11E76F8CB0E0008E5D
        EE8640F20441199D882C7806D1957E88CAFA70A97E02536FE7112FB9F392B9B6
        5460179B5A6B5E66BB26B335639503882AD5A1F0EE289E8D7E867911C8AF1D41
        787E37220B9F2346FE129415A7D698996B4F05F6A284EBE6A5E5EF88CCEB4168
        6E3742B2B4503E98C41C933F3264D7F46C1B3504E96A1C956A40597298BB910A
        EC22A2CB070CAF6691A8E8835F920ADE091D1024B563D60C9E54850E9E71AD38
        18FF1867D9769425872EA7029BC0B08B3995B75478D8F30EDEF11DF08A6B43C8
        850ECCCC814756A5874B740B3C62DBF0403B03CA0A423373C9A5026BA73D87B6
        070B8B16C70C26242B5EC025A6054D9A0F3032D9380BF48C2CC3F9543312E5BD
        A04CF0F1A2C59DBBFD77904B05F45BDAB8FAC409234ECBD774FA2934AAA61195
        DD05B7E866B8899A71E2A20AF59DD3A0CF2244F235571FB1901CDEF53D9C6D29
        B1DDEB7222C05B20351697B7A07F701A2B5F7FF0D04C67DE4152E3DEFDC22096
        B523C7F708730F04CA2CEF02BFC916C75D8ECE5EE22C579FA456CF0089C93320
        DDC4E6C7FB3CC5599BB73AD1BF8FBF999C0381528E73F79770EE7EFF600F7DAF
        0D8C4D0C7AFB089AE9CCFAFFBC87BF84FB0D6B8D1EED35F273C2000000004945
        4E44AE426082}
    end
  end
  object CurvyPanel3: TCurvyPanel
    Left = 59
    Top = 267
    Width = 251
    Height = 29
    Rounding = 10
    TabOrder = 2
    object Label2: TLabel
      Left = 30
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object Image2: TImage
      Left = 8
      Top = 7
      Width = 16
      Height = 16
      AutoSize = True
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
        0000001008060000001FF3FF61000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC610500000032744558745469746C6500437573746F6D6572
        3B456D706C6F7965653B506572736F6E3B436F6E746163743B557365723B436C
        69656E747E1136E80000033949444154384F7592674CD34118C60F4BC5AA2DA8
        11151CA10C07A2808B2A9152DA7FAD8242101290A051410AB80896401D282E0C
        A395221848400D012351541C1009E208613404103038A27E506A0401831A1C8F
        77885A3E78C993CBBDEFFBFCEEBD41525353FFEACF904AA516EBA4EB7872B99C
        AF9429F99C94B3A4311E8BB3FC188FF92224248499C7D59C08726DCE08ACA83B
        B6BEEDA64686A228494746A8474EACC2636A40408085B9670C40A9548EBBA555
        061833360DBCAB3A0253CD49F43DCA4477D901DC4D0B4592DCB9562553599A7B
        C60068CB961589BECF5F1506E38E5605A32E18EDD91B51A7F1C6F57809127CC4
        E07C39BEB9670C402693F12F444B86CBE2BD61EAAAC69D2C35F4E19E3819E80A
        5DD0829F7192B9C30A85E2FF00F95A393F3364E99BDCAD5EF8D6DF816FBDADF8
        D462C08BD2DD38C43961A7A7DD1B76B1E61ED295E2F85794CE4B94BB9CD14778
        7DFDFCBA1ADFDFD660B02103CF4AD438CC89BF84B9CEC8A55DF2DA3562D27A80
        2AD1E11FA033D991BD8285402010E922BC1E765F4BC650B30E3D954968D287E1
        A8CAA991E5584DF3FE79A489AA71DF3C42DA92C4A44DE3407E7667910B6A197B
        66AB940D8BE2CA1314E82A8A4267E17694C44810BFDA6E2FCD4D38EE674F7ED4
        C79087B173C803F56C428C09BF6974B04FC2BB1C31CBB32AD6A1B9F268100C61
        9EC80E5E8CBC700F546CB3371A02A7AF641BB03A565FB5C38E90C771944203D7
        B6CEF2BE176D7FB321D90DAD86407416EFC2939204D4A647E24A8C376EEF5F8E
        DA3D4E280FB7ADD6FB4FE34641233F93772372A6B63EC51D6FAF6EC370532206
        CA37A0F1E012544639E34AA41855F12E3015FB60E856285EE64B51AD76409EFF
        94D3D43B9E01C6576CB1350DDE8BC2D0F58D18BCB40A03175762A06805FA8B96
        A1BFD0031F0BDCD197BF04BD796EE82D58869E022F14F8DBF451EF6406B02ADD
        3C0D46AD0B9EA6B9E065FA027C38B7181F0C0BF1FEEC7C98744EE8C972444FA6
        185D87E7A045638FFBB13360900B41BD4206E0A5F9087D750AD1D91C4E5493C3
        59B7E72945C8558860500891E32784DE6F32B26593706AEDC4CEB435823AED2A
        C1F968372B15F58E1C61E4F6471713A8265131B288CA7A5436A3338BB1B60554
        7C4288C52F112BA580B96999C00000000049454E44AE426082}
    end
  end
  object CurvyPanel4: TCurvyPanel
    Left = 59
    Top = 302
    Width = 251
    Height = 29
    Rounding = 10
    TabOrder = 3
    object Label3: TLabel
      Left = 30
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object Image3: TImage
      Left = 8
      Top = 6
      Width = 16
      Height = 16
      AutoSize = True
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
        0000001008060000001FF3FF61000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC61050000001E744558745469746C65004C65747465723B65
        2D6D61696C3B656D61696C3B6D61696C1A9193DA0000024249444154384FA593
        FD4F526114C79FACB5B2F7BFAD9FFAA5CDCDF2ADAD9609824AD34665A34C57A9
        A5E67286822D14DFB2046C259614D96A4E09098550DEBA08F772B940DF9EE75E
        C6D662ADD6DD3E3BE739E7DCEFB9E79E3D04C07F5132F82FB0A7ACC0DE12ECFB
        032CBF87F41A97EC036617FA4D2EF48D2ECB3C18792B73DF4879FC06BD94EEE1
        25852127EE0D2DE276FFC2822CA46D9F049F9690CFFF8094CD2B487964A96514
        638533AB4BF222547A2BFBFEFDE4DA5D3B8C56373CBE3072B93C847416BC9051
        10155F1024086246CEAF7CF6437D65046D9DF34CE000D1DFB1E1FBAE08F3B41B
        D3B64F7297242F81DBCD146167299BC3E0A803573BADD80824A0EB78C1040E92
        B62E1B625C1ADE2D0E33F655DCEA9D95BB26F90CA23101C914F34534B40EA2E7
        911D6B1B717837393419E6984039B9DC318F2827C2E3E7F0EA5D00C6F1F7D0DD
        18833F10A35B02BC5F77505DDF8DAEFE79D89C3EB96EDD9F80FAFA3326708834
        1B9E23124F63D11D8469EA23122909EBF47FB4DD7C829315065CD43DC4EB650F
        BE857761A679E78720D67C1C2EE96798C061A2699FC3AA37823EBAB6381D8589
        31BEF86270ADF8653636E3728CE507681D6B76BE758A091C210DFA593AB703E1
        188F6D3AF376944728FAAB2D42F3ACCED063C3B916798D474945BD095B410EA1
        1D01C1ED14852FC0FCDF094578B9FE54EDB02250D538E6A86B99445DB315B594
        9AA609D4682750AD1D479546E1ACC682338D1654AAA9553D45A5CA82D317865F
        5281720ADD259B85906325385E821305CB5E2E2B79C3FE1E909F17CCBAA665CB
        97EA0000000049454E44AE426082}
    end
  end
  object bt_mudarsenha_info: TAdvGlowButton
    Left = 144
    Top = 344
    Width = 100
    Height = 41
    Caption = 'Mudar Senha'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 4
    OnClick = bt_mudarsenha_infoClick
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
  end
  object DataSource1: TDataSource
    DataSet = frmmodulo.info_clientes_usercontrol
    Left = 264
    Top = 40
  end
end
