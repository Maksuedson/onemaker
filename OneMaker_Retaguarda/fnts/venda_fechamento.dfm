object frmvenda_fechamento: Tfrmvenda_fechamento
  Left = 737
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PEDIDO DE VENDA | Fechamento'
  ClientHeight = 501
  ClientWidth = 403
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
  object Shape6: TShape
    Left = 4
    Top = 296
    Width = 145
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object Shape1: TShape
    Left = 4
    Top = 176
    Width = 145
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object Shape2: TShape
    Left = 4
    Top = 200
    Width = 145
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object Shape3: TShape
    Left = 4
    Top = 224
    Width = 145
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object Shape4: TShape
    Left = 4
    Top = 248
    Width = 145
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object Shape5: TShape
    Left = 4
    Top = 272
    Width = 145
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object Label5: TLabel
    Left = 12
    Top = 181
    Width = 80
    Height = 13
    Caption = 'Dinheiro/Outros:'
    Transparent = True
  end
  object Label6: TLabel
    Left = 12
    Top = 205
    Width = 76
    Height = 13
    Caption = 'Cheque '#224' Vista:'
    Transparent = True
  end
  object Label7: TLabel
    Left = 12
    Top = 229
    Width = 80
    Height = 13
    Caption = 'Cheque '#224' Prazo:'
    Transparent = True
  end
  object Label8: TLabel
    Left = 12
    Top = 253
    Width = 90
    Height = 13
    Caption = 'Cart'#227'o de Cr'#233'dito:'
    Transparent = True
  end
  object Label9: TLabel
    Left = 12
    Top = 277
    Width = 86
    Height = 13
    Caption = 'Cart'#227'o de D'#233'bito:'
    Transparent = True
  end
  object Label10: TLabel
    Left = 12
    Top = 301
    Width = 47
    Height = 13
    Caption = 'Credi'#225'rio:'
    Transparent = True
  end
  object edinheiro: TShape
    Left = 148
    Top = 176
    Width = 250
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object echequeav: TShape
    Left = 148
    Top = 200
    Width = 250
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object echequeap: TShape
    Left = 148
    Top = 224
    Width = 250
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object ecartaocred: TShape
    Left = 148
    Top = 248
    Width = 250
    Height = 29
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object ecartaodeb: TShape
    Left = 148
    Top = 272
    Width = 250
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object ecrediario: TShape
    Left = 148
    Top = 296
    Width = 250
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object Shape13: TShape
    Left = 3
    Top = 162
    Width = 146
    Height = 15
    Brush.Color = 3355443
    Pen.Color = clWhite
  end
  object Shape14: TShape
    Left = 148
    Top = 162
    Width = 251
    Height = 15
    Brush.Color = 3355443
    Pen.Color = clWhite
  end
  object Label11: TLabel
    Left = 12
    Top = 163
    Width = 28
    Height = 12
    Caption = 'TIPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 236
    Top = 164
    Width = 57
    Height = 12
    Caption = 'VALOR-R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape7: TShape
    Left = 4
    Top = 320
    Width = 145
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object Label15: TLabel
    Left = 12
    Top = 325
    Width = 49
    Height = 13
    Caption = 'Conv'#234'nio:'
    Transparent = True
  end
  object econvenio: TShape
    Left = 148
    Top = 320
    Width = 250
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object Shape8: TShape
    Left = 4
    Top = 344
    Width = 145
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object Label22: TLabel
    Left = 12
    Top = 349
    Width = 53
    Height = 13
    Caption = 'Financeira:'
    Transparent = True
  end
  object efinanceira: TShape
    Left = 148
    Top = 344
    Width = 250
    Height = 25
    Brush.Color = clSilver
    Pen.Color = 8623776
  end
  object lb_credito: TLabel
    Left = 238
    Top = 253
    Width = 25
    Height = 13
    Caption = 'parc:'
    Transparent = True
  end
  object lb_debito: TLabel
    Left = 238
    Top = 277
    Width = 25
    Height = 13
    Caption = 'parc:'
    Transparent = True
  end
  object pconvenio: TFlatPanel
    Left = 643
    Top = 218
    Width = 419
    Height = 175
    Color = clWindow
    Visible = False
    TabOrder = 0
    object HeaderView3: THeaderView
      Left = 2
      Top = 2
      Width = 415
      Height = 14
      AdaptiveColors = False
      BorderStyle = bsNone
      Color = clRed
      HeaderColor = clGreen
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindow
      HeaderFont.Height = -11
      HeaderFont.Name = 'Verdana'
      HeaderFont.Style = [fsBold]
      HeaderSize = 21
      ParentColor = False
      object Label16: TLabel
        Left = 168
        Top = 1
        Width = 68
        Height = 12
        Caption = '  CONV'#202'NIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
    object FlatPanel7: TFlatPanel
      Left = 144
      Top = 22
      Width = 419
      Height = 158
      ParentColor = True
      TabOrder = 1
      object Label17: TLabel
        Left = 8
        Top = 16
        Width = 89
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CLIENTE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 8
        Top = 40
        Width = 89
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'RETIRADO POR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object econvenio_codcliente: TEdit
        Left = 104
        Top = 12
        Width = 57
        Height = 21
        TabOrder = 0
        OnEnter = econvenio_codclienteEnter
        OnExit = econvenio_codclienteExit
        OnKeyPress = econvenio_codclienteKeyPress
      end
      object bconvenio_cliente: TBitBtn
        Left = 161
        Top = 11
        Width = 25
        Height = 22
        Glyph.Data = {
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
        TabOrder = 1
        OnClick = bconvenio_clienteClick
      end
      object econvenio_cliente: TEdit
        Left = 187
        Top = 12
        Width = 222
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object convenio_combo: TwwDBComboBox
        Left = 104
        Top = 36
        Width = 305
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'O MESMO')
        ItemIndex = 0
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
        OnExit = convenio_comboExit
      end
      object FlatPanel4: TFlatPanel
        Left = 1
        Top = 64
        Width = 415
        Height = 81
        ParentColor = True
        Enabled = False
        ColorHighLight = clWindow
        ColorShadow = clWindow
        TabOrder = 4
        object Label19: TLabel
          Left = 31
          Top = 16
          Width = 65
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CONV'#202'NIO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 7
          Top = 40
          Width = 89
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DESCONTO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 167
          Top = 44
          Width = 106
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL L'#205'QUIDO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object econvenio_codconvenio: TEdit
          Left = 103
          Top = 12
          Width = 57
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object econvenio_convenio: TEdit
          Left = 159
          Top = 12
          Width = 249
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object rconvenio_desconto: TJvCalcEdit
          Left = 103
          Top = 36
          Width = 57
          Height = 21
          Margins.Left = 2
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '###,###,##0.00%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90909088878786858586868687878688
            8887888787878787878786868585868584969696FFFFFFFFFFFFFFFFFFFFFFFF
            878787C1C1C0BBBBBBBBBBBBBBBBBABBBBBABBBBBABBBBBABBBBBABBBBBAC1C1
            C08A8A89FFFFFFFFFFFFFFFFFFFFFFFF8B8B8AFEFEFEEAEAEAEAEAEAE8E8E8E7
            E7E7E6E6E6E6E6E6E5E5E5E5E5E5FEFEFE8D8C8BFFFFFFFFFFFFFFFFFFFFFFFF
            919090FEFEFEB3B3B3939393E6E6E6B1B1B1929292E2E2E2AFAFAF909090FAFA
            FA919190FFFFFFFFFFFFFFFFFFFFFFFF949494FEFEFEE7E7E7E6E6E6E4E4E4E2
            E2E2E1E1E1DFDFDFDEDEDEDBDBDBFEFEFE949494FFFFFFFFFFFFFFFFFFFFFFFF
            999998FEFEFEB0B0B0909090E1E1E1ACACAC8E8E8EDBDBDBA8A8A88C8C8CFAFA
            FA999898FFFFFFFFFFFFFFFFFFFFFFFF9D9C9CFEFEFEE2E2E2E0E0E0DBDBDBDA
            DADAD6D6D6D2D2D2D2D2D2D0D0D0FEFEFE9D9C9BFFFFFFFFFFFFFFFFFFFFFFFF
            9F9F9FFEFEFEACACAC8D8D8DD7D7D7A4A4A4898989CDCDCD7273E75157DAFAFA
            FA9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2FBFBFBD9D9D9D6D6D6D1D1D1CD
            CDCDC8C8C8C4C4C4C1C1C1BEBEBEFEFEFE9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
            A2A2A2FEFEFEAF7A55C28C66C48E67C58F68C7916AC9936BC9946DAF7A55FEFE
            FEA09F9EFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3FEFEFEAF7A55C08A63C28C65C4
            8E66C58F68C7916AC9936BAF7A55FEFEFE9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
            A2A2A2FEFEFEA6714CA6714CA6714CA6714CA6714CA6714CA6714CA6714CFEFE
            FE9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9FEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEA2A2A2FFFFFFFFFFFFFFFFFFFFFFFF
            B2B2B2A8A8A8A7A7A7AAAAAAABABABACACACABABABAAAAAAA7A7A7A3A3A3A2A2
            A2B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ImageKind = ikCustom
          ParentFont = False
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object rconvenio_liquido: TJvCalcEdit
          Left = 279
          Top = 36
          Width = 130
          Height = 26
          Margins.Left = 2
          Margins.Top = 1
          AutoSize = False
          Color = clRed
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90909088878786858586868687878688
            8887888787878787878786868585868584969696FFFFFFFFFFFFFFFFFFFFFFFF
            878787C1C1C0BBBBBBBBBBBBBBBBBABBBBBABBBBBABBBBBABBBBBABBBBBAC1C1
            C08A8A89FFFFFFFFFFFFFFFFFFFFFFFF8B8B8AFEFEFEEAEAEAEAEAEAE8E8E8E7
            E7E7E6E6E6E6E6E6E5E5E5E5E5E5FEFEFE8D8C8BFFFFFFFFFFFFFFFFFFFFFFFF
            919090FEFEFEB3B3B3939393E6E6E6B1B1B1929292E2E2E2AFAFAF909090FAFA
            FA919190FFFFFFFFFFFFFFFFFFFFFFFF949494FEFEFEE7E7E7E6E6E6E4E4E4E2
            E2E2E1E1E1DFDFDFDEDEDEDBDBDBFEFEFE949494FFFFFFFFFFFFFFFFFFFFFFFF
            999998FEFEFEB0B0B0909090E1E1E1ACACAC8E8E8EDBDBDBA8A8A88C8C8CFAFA
            FA999898FFFFFFFFFFFFFFFFFFFFFFFF9D9C9CFEFEFEE2E2E2E0E0E0DBDBDBDA
            DADAD6D6D6D2D2D2D2D2D2D0D0D0FEFEFE9D9C9BFFFFFFFFFFFFFFFFFFFFFFFF
            9F9F9FFEFEFEACACAC8D8D8DD7D7D7A4A4A4898989CDCDCD7273E75157DAFAFA
            FA9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2FBFBFBD9D9D9D6D6D6D1D1D1CD
            CDCDC8C8C8C4C4C4C1C1C1BEBEBEFEFEFE9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
            A2A2A2FEFEFEAF7A55C28C66C48E67C58F68C7916AC9936BC9946DAF7A55FEFE
            FEA09F9EFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3FEFEFEAF7A55C08A63C28C65C4
            8E66C58F68C7916AC9936BAF7A55FEFEFE9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
            A2A2A2FEFEFEA6714CA6714CA6714CA6714CA6714CA6714CA6714CA6714CFEFE
            FE9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9FEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEA2A2A2FFFFFFFFFFFFFFFFFFFFFFFF
            B2B2B2A8A8A8A7A7A7AAAAAAABABABACACACABABABAAAAAAA7A7A7A3A3A3A2A2
            A2B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ImageKind = ikCustom
          ParentFont = False
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
      end
    end
  end
  object Button1: TButton
    Left = 99
    Top = 552
    Width = 75
    Height = 25
    Caption = 'DUPLICATA'
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 403
    Height = 154
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Label2: TLabel
      Left = 141
      Top = 39
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Desconto:'
    end
    object Label3: TLabel
      Left = 141
      Top = 64
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Acr'#233'scimo:'
    end
    object Label4: TLabel
      Left = 141
      Top = 89
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total:'
    end
    object Label1: TLabel
      Left = 134
      Top = 12
      Width = 96
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Subtotal:'
    end
    object Bevel3: TBevel
      Left = -15
      Top = 7
      Width = 2
      Height = 104
    end
    object AdvShapeButton1: TAdvShapeButton
      Left = 32
      Top = 11
      Width = 117
      Height = 111
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000080000000800806000000C33E61
        CB000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000093B49444154785EED9C5B
        90145719C7A96819F545F3E0A58C2F462E5996DDE1B23BBB842CBB0B6B165C96
        85704962104AB240B82806CB0062ED427C895AC417AB8C154322A009311A4B4D
        8240048699BDCECECE2E1B282E5554B04A5F427C30D14CF74C7F7EDF99D3EC80
        6DD1D33D310CE7FFABFAD7CCF49CE93EE77CFFFECEE9D3BD3B01000000000000
        0000000000000000000000000840D7EAD5B7EF686BFBF4C6B6395011923E93BE
        D3DD58BE743FB2EABBDBEF6F7D7BCBA226A808499FEDEE5CF5B8EEC6F2654FE7
        AA3DDF5BB190BEBD783E5484A4CF9E58F7F013BA1BCB177671D7F665ADF4CD45
        CD5011923EDBB3EEE16EDD8DE50B0C104C3080E182010C170C60B86000C30503
        182E18C070C100860B06305C3080E182010C170C60B86000C30503182E18C070
        C100860B06305C3080E182010C170C60B86000C30503182E18C070C100860B06
        305C3080E182010C170C60B86000C30503182E18C070C100860B06305C3080E1
        82010C170C60B86000C30503182E18C070C100860B06305C3080E182010C170C
        60B86E1D03ACFD5AD7CEE50B686BFB3CA808499F753FF250F91B60DBCAC55DDF
        E206ADBFEF5EA808499F7DE781F6F237C0FA258BBA96D7CFA4F659555011923E
        DBB0B4EDD630C08AD9B368714D355484A4CF6000830503182E18C070C100860B
        06305C3080E182010CD72D6380751D6D3F5C35B78E56D4CF0C24591069A9ACA2
        C6BBABA9A994AA605546F292F75E65024AEA2A7596BA7BB5C98FA4CFD62F69FB
        91EEC6F265C3B28EC607E6D47677D44602E9AB3322BB7EB66DF6C517764FA783
        BB4AA89D113AB0792A1DD8544107B747E8E0F73DCA0494D4F5E96DF75C94BA7B
        B5C98FA4CF3673DFE96E341722FA84737ACE3B343C8D2859155C83FA35554D34
        CCEAA9243A7417D18BAC38BF4F47F2DF15960D2AAEAB3336E71DC7713EA99B01
        82620F2CD9432333C93E5E45F689103A9997F5DA54CAFC6632650E4EA4CCF35F
        A6CC732C79CFDBE43BB79CE73EFC8AEB4A2333C81E58FA03DD0C10043EFB3F62
        9F6AB840BDD3BC3BDAAF24A07FA9A2CC210EFCB377E525811703B82670B7BF38
        89CBF2F1429A40D5393EF722B7E1A3BA39A058AC91C7EA68B08EB227421A8095
        796112657EC1017683BE4FBFBA0670DF8B097ECD2690DF853081D459EAEE9CD9
        5AAF9B038AC5EA5DF038A539FD7B74B06FC5AAC9FAFDDDD7065F02CE41CEFC52
        7F9621A0D0045C567E23BFF5DCA74FC9D065F5B5EED0CD01C562C51BFF4843E1
        8220520176CFF87D1CDC5738B86F4CBB6A06FB4825592F4F191F1AE4753F6F0F
        39EFA0249B2FD1F4AA6E0E28063A44B759B17A1EFFBD3BD79724851FAD1C3FBB
        E5F5C0C4FCF6630506E032F671FD592486E12143CA84190654DD63F5320FB84D
        370BF8E5BD737BBF60C5A2FF724E8518FF25FDFFB9C000920524B0A738AB1C1D
        3780945165C508127439F3434E0245AAEEB1E8BF9DF34FDEA99B05FC9219EE8C
        E41235943B19C6002C4EEFD764001EF7D52C9F75BD0154D04B1078575277A7A7
        869CF4A3D375B3805FECB1CE661A8C86BB0290604AA0793C1FCF023CBEF3E5A0
        75786A7E12586800AF7D8490BA124846C91E5D375F370BF8C51E5CDC4403B328
        1B26038838B06AE147267662006502967B05200638CC0688B3014A6C02A93B0D
        CE22BB7FD13CDD2CE0173BB9BC99066AC21B80B380E58EF75ED7FEF2BA9F277D
        2F15AC0496C8087903D4903DB01219A058AC914D0D3410720870C501554BC012
        ECC24C506806D92EFAD5A47C46288109D410C06D704637CED5CD027E793FBD79
        921DE30954AC04061089096442282B82320F105D6F0491FECE7A95B341481348
        DDB3D286B38F4ED6CD027EF9C7A5E73EC597816F53BC44061049406548E009A0
        25F302771890A0BBEFD567965C2DBCC1C70E7155A0EA1E8B5E216E8B6E162806
        3BDE304CFDDE9D1B4AB20EE0AE048ADCBB838559818703B51C2C65BDF6E143AA
        EEF186B46E0E2816BBA7651F0D473C3B3790DCB3595E65855002CD67BE4C1265
        BBBA3FE09A405EE5CE60980C90E2BAF7B63CAF9B038A25D3BF6C35A5F932CAA3
        737D4B022892D53D49E9EE2A5FA101641D20A1570DAFDE3360F184D0739F3E25
        75CF2657ACD1CD01C5F2DE48F79DF6A9E8FB81978339D0D6EFA6E4CF6C75C74F
        A775B9E6BFDE00EEB0A017879401DCDBC201A4268071AEFBE95D5FD4CD0141B0
        12CD47E4AE9A5727DF5032F3E7EBFBCC335FD241E5B4EE71334819804D21977F
        E31980CD726872E02B017527303EEF986E06084A36FDF59594AEE14E0D9005C4
        0072FD7FDDE42EF3DB29D7DC0E567380987E68C42D2B93C03F54049C04F2F53F
        D7399B5AFDA06E06088AE3381FB3134D97C33C16F65F337C3DBEBBCBC1D62B3C
        4C14065FB2853C0F10F0D13055D744E35FE9D2A5DB75334018ACE1359B6894B3
        C0F18059E0759D0524B0AE090ADFCB7785C197B33FE84210D751EA9A1D5AB345
        571F84451EA8E02CF0A63CAE1DE8291D31C19F2AAE06F79AE0BB2AF84ECA060B
        3E9FFD03FCDAD374060F8194187B786313A5EA2917E3099B57E7DF48620299F9
        CBA45052BF3BD97383BF7F22592F4FD6F38160133FA91BA5EAC84E6F69D6D506
        A5C4EEEFD84BA333820D052209AC8827802A23E8E0AB33DEFD3EC098AFA4523F
        D7ADAFFD27BABAA0D4485ACDF6DFD7237FD913682870254F0A1D2B580738A2D7
        01BCCAFA91A4FE14FFBEAFB50FA9FF03E6DD4B3FFD5C7670FE5BF22758814DE0
        AE04CA30F02C1B20CC1341127CAE0BD7E9F2BB679EFABCAE26F82071CEFFB822
        9B9CF737F5C878D0E18003A7EE0AB2D4E59E57991B49D23ED7219B6CFEBB73E1
        C9A9BA7AE0FF8136C139F9A3CED07302AFEF6E24093E1F3BC775702E3C85E07F
        183817F77F2637B4F0088DD510C9FD8230F302BF9294CFC7A2D335944B2D3CFA
        CFD1673EABAB033E0C78D2352137B4B43BDB1FB5553A2EC52364FF43EA112F3E
        468E8FC5C7DC2DC7063709D6D863B5B9D48213948EAAC5985C098D20FB927DCA
        BEF91827ADF4D6A83E2CB8D970CEAEBD3F976C49C8F3F8949E4ED4332D505650
        673BFF9686791FBCAFDCD0577A9CB16F2CD38701373BCEF98D7373A9D6A7B3BD
        F7BC4583B56C86999CBE23447D7C264B60E3AC44755E71BD4DBE933252967F23
        BFCD0DB5FEDC3EBB01FFAAA55C917FD3E29CEBBC379B6ADF91ED6F7929DBDB38
        6427665FB6E3B557EC13D557ECE32C79CFDBB2BD0D43B9012E93ECD869BDB9B6
        01FFE2E5168503FB71E7F2DE3B9C9EBA3B9CC32C79CFDBF4D700000000000000
        000000000000000000000040793361C27F00F84F2F5980E08F16000000004945
        4E44AE426082}
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      Version = '6.1.0.6'
    end
    object rdesconto2: TJvCalcEdit
      Left = 307
      Top = 35
      Width = 95
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
      OnEnter = rdesconto1Enter
      OnExit = rdesconto2Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object racrescimo2: TJvCalcEdit
      Left = 307
      Top = 60
      Width = 95
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnEnter = rdesconto1Enter
      OnExit = racrescimo2Exit
      OnKeyPress = racrescimo2KeyPress
    end
    object rdesconto1: TJvCalcEdit
      Left = 237
      Top = 35
      Width = 69
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.00%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
      OnEnter = rdesconto1Enter
      OnExit = rdesconto1Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object racrescimo1: TJvCalcEdit
      Left = 237
      Top = 60
      Width = 69
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.00%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
      OnEnter = rdesconto1Enter
      OnExit = racrescimo1Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object Panel1: TPanel
      Left = 230
      Top = 9
      Width = 185
      Height = 22
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 4
      object rsubtotal: TJvCalcEdit
        Left = 7
        Top = 1
        Width = 165
        Height = 24
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
    end
    object Panel2: TPanel
      Left = 233
      Top = 84
      Width = 185
      Height = 23
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 5
      object rtotal: TJvCalcEdit
        Left = 4
        Top = 1
        Width = 165
        Height = 24
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
    end
    object bduplicata: TButton
      Left = 237
      Top = 110
      Width = 164
      Height = 33
      Caption = 'F2 | Condi'#231#245'es de Pagamento'
      TabOrder = 6
      OnClick = bduplicataClick
    end
  end
  object rdinheiro: TJvCalcEdit
    Left = 269
    Top = 179
    Width = 121
    Height = 21
    Margins.Top = 0
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ShowButton = False
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
    OnEnter = rdinheiroEnter
    OnExit = rdinheiroExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rchequeav: TJvCalcEdit
    Left = 269
    Top = 203
    Width = 121
    Height = 21
    Margins.Top = 0
    AutoSize = False
    BorderStyle = bsNone
    ClickKey = 0
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    ShowButton = False
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
    OnEnter = rchequeavEnter
    OnExit = rchequeavExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rchequeap: TJvCalcEdit
    Left = 269
    Top = 227
    Width = 121
    Height = 21
    Margins.Top = 0
    AutoSize = False
    BorderStyle = bsNone
    ClickKey = 0
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    ShowButton = False
    TabOrder = 5
    DecimalPlacesAlwaysShown = False
    OnEnter = rchequeapEnter
    OnExit = rchequeapExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rcartaocred: TJvCalcEdit
    Left = 310
    Top = 251
    Width = 80
    Height = 21
    Margins.Top = 0
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    ShowButton = False
    TabOrder = 8
    DecimalPlacesAlwaysShown = False
    OnEnter = rcartaocredEnter
    OnExit = rcartaocredExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rcartaodeb: TJvCalcEdit
    Left = 310
    Top = 275
    Width = 80
    Height = 21
    Margins.Top = 0
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    ShowButton = False
    TabOrder = 11
    DecimalPlacesAlwaysShown = False
    OnEnter = rcartaodebEnter
    OnExit = rcartaodebExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rcrediario: TJvCalcEdit
    Left = 269
    Top = 299
    Width = 121
    Height = 21
    Margins.Top = 0
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    ShowButton = False
    TabOrder = 12
    DecimalPlacesAlwaysShown = False
    OnEnter = rcrediarioEnter
    OnExit = rcrediarioExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rconvenio: TJvCalcEdit
    Left = 269
    Top = 323
    Width = 121
    Height = 21
    Margins.Top = 0
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    ShowButton = False
    TabOrder = 13
    DecimalPlacesAlwaysShown = False
    OnEnter = rconvenioEnter
    OnExit = rconvenioExit
    OnKeyPress = rconvenioKeyPress
  end
  object Panel4: TPanel
    Left = 0
    Top = 435
    Width = 403
    Height = 66
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 14
    ExplicitTop = 612
    ExplicitWidth = 1051
    object bgravar: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 90
      Height = 66
      Align = alLeft
      Caption = 'F5 | Confirmar'
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
      ExplicitLeft = 5
      ExplicitTop = 19
      ExplicitHeight = 77
    end
    object bitbtn1: TAdvGlowButton
      Left = 90
      Top = 0
      Width = 90
      Height = 66
      Align = alLeft
      Caption = 'F8 | Obs.'
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
      ExplicitLeft = 109
      ExplicitTop = 19
      ExplicitHeight = 77
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 374
    Width = 403
    Height = 61
    Align = alBottom
    BevelOuter = bvNone
    Color = 5460819
    Enabled = False
    ParentBackground = False
    TabOrder = 15
    object Shape15: TShape
      Left = 6
      Top = 4
      Width = 145
      Height = 25
      Brush.Color = 11796479
      Pen.Color = 8623776
    end
    object Shape16: TShape
      Left = 150
      Top = 4
      Width = 249
      Height = 25
      Brush.Color = 11796479
      Pen.Color = 8623776
    end
    object Label13: TLabel
      Left = 14
      Top = 9
      Width = 66
      Height = 13
      Caption = 'SOMAT'#211'RIO:'
      Transparent = True
    end
    object Shape17: TShape
      Left = 6
      Top = 28
      Width = 145
      Height = 25
      Brush.Color = 14811135
      Pen.Color = 8623776
    end
    object Shape18: TShape
      Left = 150
      Top = 28
      Width = 249
      Height = 25
      Brush.Color = 14811135
      Pen.Color = 8623776
    end
    object Label14: TLabel
      Left = 14
      Top = 33
      Width = 61
      Height = 13
      Caption = 'DIFEREN'#199'A:'
      Transparent = True
    end
    object rsoma: TJvCalcEdit
      Left = 231
      Top = 7
      Width = 121
      Height = 21
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      BorderStyle = bsNone
      Color = 11796479
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
    end
    object rdiferenca: TJvCalcEdit
      Left = 231
      Top = 31
      Width = 121
      Height = 21
      Margins.Top = 0
      AutoSize = False
      BorderStyle = bsNone
      Color = 14811135
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ReadOnly = True
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
  end
  object bgrava_fiscal: TButton
    Left = 238
    Top = 371
    Width = 121
    Height = 25
    Caption = 'Grava Dados Fiscais'
    TabOrder = 16
    Visible = False
  end
  object rfinanceira: TJvCalcEdit
    Left = 269
    Top = 346
    Width = 121
    Height = 21
    Margins.Top = 0
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    ShowButton = False
    TabOrder = 17
    DecimalPlacesAlwaysShown = False
    OnEnter = rfinanceiraEnter
    OnExit = rfinanceiraExit
    OnKeyPress = rfinanceiraKeyPress
  end
  object PTEF1: TFlatPanel
    Left = 110
    Top = 248
    Width = 39
    Height = 25
    Caption = 'TEF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Color = 63744
    Visible = False
    TabOrder = 18
  end
  object ptef2: TFlatPanel
    Left = 110
    Top = 272
    Width = 39
    Height = 25
    Caption = 'TEF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Color = 63744
    Visible = False
    TabOrder = 19
  end
  object BCH_TECBAN: TButton
    Left = 86
    Top = 312
    Width = 105
    Height = 25
    Caption = 'CHEQUE TECBAN'
    TabOrder = 20
    Visible = False
    OnClick = BCH_TECBANClick
  end
  object BCH_REDECARD: TButton
    Left = 86
    Top = 336
    Width = 105
    Height = 25
    Caption = 'CHEQUE REDECARD'
    TabOrder = 21
    Visible = False
    OnClick = BCH_REDECARDClick
  end
  object bcartao: TButton
    Left = 86
    Top = 360
    Width = 105
    Height = 25
    Caption = 'CARTAO'
    TabOrder = 22
    Visible = False
    OnClick = bcartaoClick
  end
  object bpgto: TButton
    Left = 85
    Top = 387
    Width = 105
    Height = 25
    Caption = 'bpgto'
    TabOrder = 23
    Visible = False
    OnClick = bpgtoClick
  end
  object cb_credito: TComboBox
    Left = 150
    Top = 250
    Width = 86
    Height = 21
    Style = csDropDownList
    TabOrder = 6
    OnKeyPress = cb_creditoKeyPress
  end
  object spin_credito: TRzSpinEdit
    Left = 265
    Top = 250
    Width = 40
    Height = 21
    AllowKeyEdit = True
    Max = 100.000000000000000000
    Min = 1.000000000000000000
    Value = 1.000000000000000000
    TabOrder = 7
    OnKeyPress = spin_creditoKeyPress
  end
  object cb_debito: TComboBox
    Left = 150
    Top = 274
    Width = 86
    Height = 21
    Style = csDropDownList
    TabOrder = 9
    OnKeyPress = cb_debitoKeyPress
  end
  object spin_debito: TRzSpinEdit
    Left = 265
    Top = 274
    Width = 40
    Height = 21
    AllowKeyEdit = True
    Max = 100.000000000000000000
    Min = 1.000000000000000000
    Value = 1.000000000000000000
    TabOrder = 10
    OnKeyPress = spin_debitoKeyPress
  end
  object PopupMenu1: TPopupMenu
    Left = 920
    Top = 782
    object CondiesdePgto1: TMenuItem
      Caption = 'Condi'#231#245'es de Pgto'
      ShortCut = 113
      OnClick = bduplicataClick
    end
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 116
      OnClick = Gravar1Click
    end
    object Observaes1: TMenuItem
      Caption = 'Observa'#231#245'es'
      ShortCut = 119
      OnClick = BitBtn1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object query: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 944
    Top = 794
  end
  object qrcaixa_mov: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 832
    Top = 748
  end
  object IBQuery1: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 800
    Top = 794
  end
  object query1: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 968
    Top = 820
  end
  object Query2: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 824
    Top = 820
  end
  object query3: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 920
    Top = 820
  end
  object qrduplicata: TJvMemoryData
    FieldDefs = <
      item
        Name = 'emitente_fantasia'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'emitente_razao'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'emitente_slogan'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'emitente_telefone'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'emitente_endereco'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'emitente_cnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'emitente_ie'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'data_emissao'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'fatura_numero'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'fatura_valor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'duplicata_numero'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'duplicata_valor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'data_vencimento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'desconto'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'desconto_ate'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'condicoes_especiais'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'sacado_nome'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'sacado_endereco'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sacado_municipio'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sacado_uf'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'sacado_cep'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'sacado_praca'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sacado_cnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'sacado_ie'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'notas_ficais'
        DataType = ftString
        Size = 240
      end
      item
        Name = 'extenso'
        DataType = ftString
        Size = 240
      end>
    Left = 968
    Top = 782
    object qrduplicataemitente_fantasia: TStringField
      FieldName = 'emitente_fantasia'
      Size = 80
    end
    object qrduplicataemitente_razao: TStringField
      FieldName = 'emitente_razao'
      Size = 80
    end
    object qrduplicataemitente_slogan: TStringField
      FieldName = 'emitente_slogan'
      Size = 80
    end
    object qrduplicataemitente_telefone: TStringField
      FieldName = 'emitente_telefone'
      Size = 40
    end
    object qrduplicataemitente_endereco: TStringField
      FieldName = 'emitente_endereco'
      Size = 100
    end
    object qrduplicataemitente_cnpj: TStringField
      FieldName = 'emitente_cnpj'
      Size = 25
    end
    object qrduplicataemitente_ie: TStringField
      FieldName = 'emitente_ie'
      Size = 25
    end
    object qrduplicatadata_emissao: TStringField
      FieldName = 'data_emissao'
      Size = 15
    end
    object qrduplicatafatura_numero: TStringField
      FieldName = 'fatura_numero'
      Size = 30
    end
    object qrduplicatafatura_valor: TStringField
      FieldName = 'fatura_valor'
      Size = 30
    end
    object qrduplicataduplicata_numero: TStringField
      FieldName = 'duplicata_numero'
      Size = 30
    end
    object qrduplicataduplicata_valor: TStringField
      FieldName = 'duplicata_valor'
      Size = 30
    end
    object qrduplicatadata_vencimento: TStringField
      FieldName = 'data_vencimento'
      Size = 30
    end
    object qrduplicatadesconto: TStringField
      FieldName = 'desconto'
      Size = 30
    end
    object qrduplicatadesconto_ate: TStringField
      FieldName = 'desconto_ate'
      Size = 30
    end
    object qrduplicatacondicoes_especiais: TStringField
      FieldName = 'condicoes_especiais'
      Size = 50
    end
    object qrduplicatasacado_nome: TStringField
      FieldName = 'sacado_nome'
      Size = 80
    end
    object qrduplicatasacado_endereco: TStringField
      FieldName = 'sacado_endereco'
      Size = 100
    end
    object qrduplicatasacado_municipio: TStringField
      FieldName = 'sacado_municipio'
      Size = 40
    end
    object qrduplicatasacado_uf: TStringField
      FieldName = 'sacado_uf'
      Size = 2
    end
    object qrduplicatasacado_cep: TStringField
      FieldName = 'sacado_cep'
      Size = 15
    end
    object qrduplicatasacado_praca: TStringField
      FieldName = 'sacado_praca'
      Size = 100
    end
    object qrduplicatasacado_cnpj: TStringField
      FieldName = 'sacado_cnpj'
      Size = 25
    end
    object qrduplicatasacado_ie: TStringField
      FieldName = 'sacado_ie'
      Size = 25
    end
    object qrduplicatanotas_ficais: TStringField
      FieldName = 'notas_ficais'
      Size = 240
    end
    object qrduplicataextenso: TStringField
      FieldName = 'extenso'
      Size = 240
    end
  end
  object fsduplicata: TfrxDBDataset
    UserName = 'fsduplicata'
    CloseDataSource = False
    FieldAliases.Strings = (
      'emitente_fantasia=emitente_fantasia'
      'emitente_razao=emitente_razao'
      'emitente_slogan=emitente_slogan'
      'emitente_telefone=emitente_telefone'
      'emitente_endereco=emitente_endereco'
      'emitente_cnpj=emitente_cnpj'
      'emitente_ie=emitente_ie'
      'data_emissao=data_emissao'
      'fatura_numero=fatura_numero'
      'fatura_valor=fatura_valor'
      'duplicata_numero=duplicata_numero'
      'duplicata_valor=duplicata_valor'
      'data_vencimento=data_vencimento'
      'desconto=desconto'
      'desconto_ate=desconto_ate'
      'condicoes_especiais=condicoes_especiais'
      'sacado_nome=sacado_nome'
      'sacado_endereco=sacado_endereco'
      'sacado_municipio=sacado_municipio'
      'sacado_uf=sacado_uf'
      'sacado_cep=sacado_cep'
      'sacado_praca=sacado_praca'
      'sacado_cnpj=sacado_cnpj'
      'sacado_ie=sacado_ie'
      'notas_ficais=notas_ficais'
      'extenso=extenso')
    DataSet = qrduplicata
    BCDToCurrency = False
    Left = 832
    Top = 672
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
    Left = 824
    Top = 782
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 832
    Top = 710
  end
  object fxvenda: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39575.642958252300000000
    ReportOptions.LastChange = 39721.694649884300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 872
    Top = 782
    Datasets = <
      item
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 487.559370000000000000
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape17: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Shape16: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape18: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape1: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape2: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape3: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape5: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape6: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape7: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape8: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape9: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape10: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000001000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590599999999990000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133889999999990000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000001000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000001000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000010000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 532.913730000000000000
          Top = 51.133889999999990000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 1 - EMPRESA')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape12: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape13: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Shape14: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape15: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Line3: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Memo24: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRA'#199'A DE PGTO.:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape20: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clBlack
          Shape = skRoundRectangle
        end
        object Shape21: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBlack
        end
        object Memo45: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E31363239397D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B66736475706C69636174612E22656D6974656E74655F72617A
            616F225D205C62305C6930204F55205C27633020535541204F5244454D204E41
            205052415C2763374120452056454E43494D454E544F204143494D4120494E44
            494341444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo47: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo48: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo49: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape22: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape23: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Shape24: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape25: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape26: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape27: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape28: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape29: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape30: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape31: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape32: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape33: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape34: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo57: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo58: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo62: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo68: TfrxMemoView
          Left = 537.693260000000000000
          Top = 50.133890000000000000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 15720447
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 2 - CLIENTE')
          ParentFont = False
        end
        object Shape35: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape36: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape37: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Shape38: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape39: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Line17: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo69: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape40: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Memo80: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo82: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRA'#199'A DE PGTO.:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape41: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clBlack
          Shape = skRoundRectangle
        end
        object Shape42: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBlack
        end
        object Memo101: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E31363239397D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B66736475706C69636174612E22656D6974656E74655F72617A
            616F225D205C62305C6930204F55205C27633020535541204F5244454D204E41
            205052415C2763374120452056454E43494D454E544F204143494D4120494E44
            494341444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo103: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo104: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo105: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line28: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo106: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape43: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape44: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Shape45: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape46: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape47: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape48: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape49: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape50: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape51: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape52: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape53: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape54: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape55: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo113: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo114: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line29: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo118: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line30: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo124: TfrxMemoView
          Left = 537.693260000000000000
          Top = 50.133890000000000000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 12910576
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 3 - CONTABILIDADE/FATURAMENTO')
          ParentFont = False
        end
        object Shape56: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape57: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape58: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Shape59: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape60: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Line31: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line32: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo125: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape61: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Memo136: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line35: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line36: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line37: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo138: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRA'#199'A DE PGTO.:')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape62: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clBlack
          Shape = skRoundRectangle
        end
        object Shape63: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBlack
        end
        object Memo157: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich3: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E31363239397D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B66736475706C69636174612E22656D6974656E74655F72617A
            616F225D205C62305C6930204F55205C27633020535541204F5244454D204E41
            205052415C2763374120452056454E43494D454E544F204143494D4120494E44
            494341444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo159: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line38: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line39: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line40: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo160: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line41: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo161: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line42: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo162: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape64: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape65: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Shape66: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape67: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape68: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape69: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape70: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape71: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape72: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape73: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape74: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape75: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape76: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo169: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture4: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo170: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line43: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo174: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line44: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo180: TfrxMemoView
          Left = 537.693260000000000000
          Top = 50.133890000000000000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 13434879
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 4 - CONTABILIDADE/RECEBIMENTO')
          ParentFont = False
        end
        object Shape77: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape78: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape79: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Shape80: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape81: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Line45: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line46: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line48: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo181: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape82: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Memo192: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line49: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line50: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line51: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo194: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRA'#199'A DE PGTO.:')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape83: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clBlack
          Shape = skRoundRectangle
        end
        object Shape84: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBlack
        end
        object Memo213: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich4: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E31363239397D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B66736475706C69636174612E22656D6974656E74655F72617A
            616F225D205C62305C6930204F55205C27633020535541204F5244454D204E41
            205052415C2763374120452056454E43494D454E544F204143494D4120494E44
            494341444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo215: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line52: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line53: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo216: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line55: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo217: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line56: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo218: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
  end
  object qrcontasreceber: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 872
    Top = 820
    object qrcontasrecebercliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 60
      Lookup = True
    end
    object qrcontasreceberCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcontasreceberCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrcontasreceberCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcontasreceberCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcontasreceberCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrinventarioDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrinventarioDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrinventarioDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontasreceberVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
    end
    object qrcontasreceberVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qrcontasreceberVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
    end
    object qrcontasreceberVALOR_ATUAL: TFloatField
      FieldName = 'VALOR_ATUAL'
    end
    object qrcontasreceberVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object qrcontasreceberDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberTIPO: TWideStringField
      FieldName = 'TIPO'
    end
    object qrcontasreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcontasreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontasreceberNOSSONUMERO: TWideStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrcontasreceberCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcontasreceberCODCEDENTE: TWideStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrcontasreceberP5: TFloatField
      FieldName = 'P5'
    end
    object qrcontasreceberP3: TFloatField
      FieldName = 'P3'
    end
    object qrcontasreceberNUMERO_CUPOM: TWideStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object qrcontasreceberVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField
      FieldName = 'VALOR_ATUAL_ANTERIOR'
    end
    object qrcontasreceberEMAIL_ENVIADO: TIntegerField
      FieldName = 'EMAIL_ENVIADO'
    end
    object qrcontasreceberHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
  end
  object qrproduto_mov: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 896
    Top = 794
    object qrproduto_movproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'PRODUTO'
      KeyFields = 'codproduto'
      Size = 44
      Lookup = True
    end
    object qrproduto_movCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrproduto_movCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 30
    end
    object qrproduto_movCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
    end
    object qrproduto_movUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrproduto_movTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrproduto_movICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrproduto_movIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrproduto_movCFOP: TWideStringField
      FieldName = 'CFOP'
    end
    object qrinventario_movDATA: TDateField
      FieldName = 'DATA'
    end
    object qrproduto_movNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
    end
    object qrproduto_movCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
    end
    object qrproduto_movDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrproduto_movACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrproduto_movMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrproduto_movCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
    end
    object qrproduto_movCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
    end
    object qrproduto_movSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrproduto_movUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrproduto_movQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrproduto_movVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrproduto_movICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrproduto_movBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrproduto_movVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrproduto_movSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrproduto_movECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
      Size = 30
    end
    object qrproduto_movECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrproduto_movCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 10
    end
    object qrproduto_movCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object qrproduto_movCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
    end
    object qrproduto_movCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
    end
    object qrproduto_movALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrproduto_movCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrproduto_movLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 30
    end
    object qrproduto_movMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrproduto_movLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrinventario_movVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrproduto_movCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 40
    end
    object qrproduto_movMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrproduto_movCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrproduto_movPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrproduto_movCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrproduto_movLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 30
    end
    object qrproduto_movCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
    end
    object qrproduto_movTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrproduto_movCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 10
    end
    object qrproduto_movORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object qrproduto_movDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 80
    end
    object qrproduto_movCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'fsvenda_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATA=DATA'
      'CODNOTA=CODNOTA'
      'NUMERONOTA=NUMERONOTA'
      'MOV=MOV'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'CODPRODUTO=CODPRODUTO'
      'ICMS=ICMS'
      'IPI=IPI'
      'CFOP=CFOP'
      'CODCLIENTE=CODCLIENTE'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'CODIGO=CODIGO'
      'CODVENDEDOR=CODVENDEDOR'
      'MOVIMENTO=MOVIMENTO'
      'CODGRADE=CODGRADE'
      'SERIAL=SERIAL'
      'UNIDADE=UNIDADE'
      'produto=PRODUTO'
      'NUMERACAO=NUMERACAO')
    DataSet = qrproduto_mov
    BCDToCurrency = False
    Left = 968
    Top = 744
  end
  object fscontasreceber: TfrxDBDataset
    UserName = 'fscontasreceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDEDOR=CODVENDEDOR'
      'CODCAIXA=CODCAIXA'
      'CODCLIENTE=CODCLIENTE'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'DATA_PAGAMENTO=DATA_PAGAMENTO'
      'VALOR_ORIGINAL=VALOR_ORIGINAL'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_JUROS=VALOR_JUROS'
      'VALOR_ATUAL=VALOR_ATUAL'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'DOCUMENTO=DOCUMENTO'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'FILTRO=FILTRO'
      'CODVENDA=CODVENDA'
      'NOSSONUMERO=NOSSONUMERO'
      'CODREGIAO=CODREGIAO'
      'cliente=cliente')
    DataSet = qrcontasreceber
    BCDToCurrency = False
    Left = 920
    Top = 744
  end
  object fsvenda: TfrxDBDataset
    UserName = 'fsvenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SITUACAO=SITUACAO'
      'CODIGO=CODIGO'
      'NUMERO_CUPOM_FISCAL=NUMERO_CUPOM_FISCAL'
      'DATA=DATA'
      'cliente=cliente'
      'TOTAL=TOTAL'
      'vendedor=vendedor'
      'CODCAIXA=CODCAIXA'
      'CUPOM_FISCAL=CUPOM_FISCAL'
      'CODVENDEDOR=CODVENDEDOR'
      'CODCLIENTE=CODCLIENTE'
      'OBS=OBS'
      'MEIO_DINHEIRO=MEIO_DINHEIRO'
      'MEIO_CHEQUEAV=MEIO_CHEQUEAV'
      'MEIO_CHEQUEAP=MEIO_CHEQUEAP'
      'MEIO_CARTAOCRED=MEIO_CARTAOCRED'
      'MEIO_CARTAODEB=MEIO_CARTAODEB'
      'MEIO_CREDIARIO=MEIO_CREDIARIO'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'RETIRADO=RETIRADO'
      'MEIO_CONVENIO=MEIO_CONVENIO'
      'P5=P5'
      'P3=P3'
      'CODCONVENIO=CODCONVENIO'
      'MEIO_FINANCEIRA=MEIO_FINANCEIRA'
      'COD_FINANCEIRA=COD_FINANCEIRA'
      'COD_FINANCEIRA_LACTO=COD_FINANCEIRA_LACTO'
      'COD_FINANCEIRA_LANCTO=COD_FINANCEIRA_LANCTO')
    DataSet = frmmodulo.qrvenda
    BCDToCurrency = False
    Left = 872
    Top = 744
  end
  object FSCLIENTE: TfrxDBDataset
    UserName = 'FSCLIENTE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME=NOME'
      'CODIGO=CODIGO'
      'CPF=CPF'
      'ENDERECO=ENDERECO'
      'APELIDO=APELIDO'
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
      'regiao=regiao'
      'vendedor=vendedor')
    DataSet = frmmodulo.qrcliente
    BCDToCurrency = False
    Left = 824
    Top = 744
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 848
    Top = 794
    object StringField12: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'PRODUTO'
      KeyFields = 'codproduto'
      Size = 44
      Lookup = True
    end
    object ZQuery1CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object ZQuery1CODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 30
    end
    object ZQuery1CODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
    end
    object ZQuery1UNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object ZQuery1TOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object ZQuery1ICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ZQuery1IPI: TFloatField
      FieldName = 'IPI'
    end
    object ZQuery1CFOP: TWideStringField
      FieldName = 'CFOP'
    end
    object qrinventarioZQuery1DATA: TDateField
      FieldName = 'DATA'
    end
    object ZQuery1NUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
    end
    object ZQuery1CODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
    end
    object ZQuery1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ZQuery1ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object ZQuery1MOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object ZQuery1CODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
    end
    object ZQuery1CODGRADE: TWideStringField
      FieldName = 'CODGRADE'
    end
    object ZQuery1SERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object ZQuery1UNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object ZQuery1QTDE: TFloatField
      FieldName = 'QTDE'
    end
    object ZQuery1VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object ZQuery1ICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object ZQuery1BASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object ZQuery1VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object ZQuery1SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object ZQuery1ECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
      Size = 30
    end
    object ZQuery1ECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object ZQuery1CODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 10
    end
    object ZQuery1CUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object ZQuery1CUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
    end
    object ZQuery1CUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
    end
    object ZQuery1ALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object ZQuery1CST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object ZQuery1LOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 30
    end
    object ZQuery1MOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object ZQuery1LANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrinventarioZQuery1VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object ZQuery1CODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 40
    end
    object ZQuery1MARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object ZQuery1CREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object ZQuery1PIS: TFloatField
      FieldName = 'PIS'
    end
    object ZQuery1COFINS: TFloatField
      FieldName = 'COFINS'
    end
    object ZQuery1LOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 30
    end
    object ZQuery1CODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
    end
    object ZQuery1TIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object ZQuery1CODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 10
    end
    object ZQuery1ORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object ZQuery1DESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 80
    end
    object ZQuery1CODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
    end
  end
  object qrcartao: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 832
    Top = 792
  end
end
