object frmVendasSat: TfrmVendasSat
  Left = 192
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Registros de Vendas'
  ClientHeight = 421
  ClientWidth = 679
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 576
    Top = 47
    Width = 85
    Height = 19
    Caption = 'Opera'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 41
    Align = alTop
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -1
    object Label1: TLabel
      Left = 240
      Top = 9
      Width = 166
      Height = 19
      Alignment = taCenter
      Caption = 'Registros de Vendas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 401
    Width = 679
    Height = 20
    Color = 5987163
    Panels = <>
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 560
    Height = 360
    Align = alLeft
    BorderStyle = bsNone
    Ctl3D = True
    DataSource = dsVendas
    FixedColor = 13160660
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HORA'
        Title.Caption = 'Hora'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAVE'
        Title.Caption = 'Chave'
        Width = 350
        Visible = True
      end>
  end
  object btnOp1: TButton
    Left = 757
    Top = 81
    Width = 105
    Height = 26
    Caption = '2a. VIA CF-e'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnOp1Click
  end
  object btnOp2: TButton
    Left = 757
    Top = 123
    Width = 105
    Height = 26
    Caption = 'Cancelar CF-e'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnOp2Click
  end
  inline mCancelamentoEnviar: TMemo
    Left = 8
    Top = 264
    Width = 540
    Height = 126
    ScrollBars = ssBoth
    TabOrder = 5
    Visible = False
  end
  object btnCancela: TButton
    Left = 772
    Top = 171
    Width = 75
    Height = 25
    Caption = 'btnCancela'
    TabOrder = 6
    Visible = False
    OnClick = btnCancelaClick
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 571
    Top = 96
    Width = 100
    Height = 58
    Caption = '2'#170' VIA CF-e'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
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
      1F900000031E4944415478DABC95CF8E1B451087BFAAEE99B1C73B76D681DD24
      8A940509122912E2CA85338FC00BF10E3C000FC00971E012F11C082904106C22
      6267BD6BCF747771F0DA6B7BED5DCFF2A72E339A6ED5375DBF5F55CB8B1FBEF9
      05A8F8F7E34BE07B000F3C1611628C84D0202D3319867319DE7BCC6C75A9BB78
      F1C038C6D8CFF29CFEE07073E3ADA1A2CC6617F5F4E23C57E756979A550821D4
      DC3BBCCFD3679F5237B356903CEBF0FB6F3F35AF5EFE3C8D31F6DD3AE80A0282
      9911422086D00A12249052EC956567D2041B4FA7B3BE73BA7EDACD0AB70FC30C
      8CD42BCBC2753AC538A50466626698D926E4EE7199B0579685CBF3826436DA28
      D7F5BF13712CEABB389F5C268B31EC0481F5BADD8CAA5F3D76CE61296D878838
      42A8399F5C80C8D2D66686AAA3E89488C85627CE3F2584F4755E94BF022FB642
      9CF34CCEFEE2CF3F5EA2EA109963528C149D2EC78F3E44453133E63D16A8EBE9
      5A8ED9745A4DA7E7DF75CB832FB64242A829CB3E4F4E9EB3D69D36AF9920A494
      2EF73654D5215996A1BA9E2EA554FA2CFBD6EF12525451D10DD709604B00408C
      8183FE90C1E1D155F9164F014B36F037394644B6985AD8E86CCC1221D497598D
      94E2EAF2642BC4FB8CF1E80DAF4F5FA1AA4B4D6EB5714AA8CF383E3E212F3A4B
      176E85A494C8B29CAA7F1F11D91F6286AAA2AA6B25DD0A893150744ACADEA0E5
      24100C238406B3C8C235CAFF103BFB64369D707636BA53B9AA6A883A8F59DA0D
      51559AA6E6DDF8CD9D84EFF5EEE13325C61B202134F40E0654FDE1A51AFB6BB2
      B0F0EA7CF3B71DBFFD1560FB69B2387AB248EB4B1F10D1DB21DEE78C47A7D706
      E43E9A389FF1E0E107E445F7E6669CF7498FE307276BA37E1F77892AEAFCDA68
      F1DB3747BCCF298A6E5BD9319BFFE4EA5DB30302AA82AAC330646F8A2066C404
      966C59E69D03F27C32E2EDDB5344943D25C192A1CE311C3EC467F9B2647ED768
      3133528C885A2BE1E77BED9ABB0EC08831AE3563D91B500DDEBBBA805A88D284
      8694C272407AE0F31082CFF3E23311F96A7159A5144975FC0763F1EAF47E36BB
      F8F1FDA3473C39F9B80EA1F92F8670DF1F0E8FF8E8E9276056851047FBD6BF45
      BCFB7B009A8D894FE100469C0000000049454E44AE426082}
    Transparent = True
    TabOrder = 7
    OnClick = btnOp1Click
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
  end
  object AdvGlowButton2: TAdvGlowButton
    Left = 571
    Top = 155
    Width = 100
    Height = 58
    Caption = 'Cancelar CF-e'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
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
    TabOrder = 8
    OnClick = btnOp2Click
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
  end
  object qVendas: TZQuery
    Connection = frmPdv.Conexao
    SQL.Strings = (
      'select * from TEMP_SAT')
    Params = <>
    Left = 720
    Top = 300
    object qVendasCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object qVendasXML_TEMP: TMemoField
      FieldName = 'XML_TEMP'
      BlobType = ftMemo
    end
    object qVendasXML_CFE: TMemoField
      FieldName = 'XML_CFE'
      BlobType = ftMemo
    end
    object qVendasXML_CFE_CANC: TBlobField
      FieldName = 'XML_CFE_CANC'
    end
    object qVendasTERMINAL: TIntegerField
      FieldName = 'TERMINAL'
    end
    object qVendasSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object qVendasDATA: TDateField
      FieldName = 'DATA'
    end
    object qVendasHORA: TTimeField
      FieldName = 'HORA'
      DisplayFormat = 'HH:MM'
    end
    object qVendasCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 47
    end
    object qVendasARQ_XML: TStringField
      FieldName = 'ARQ_XML'
      Size = 51
    end
    object qVendasULT_SESSAO: TIntegerField
      FieldName = 'ULT_SESSAO'
    end
    object qVendasRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 200
    end
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = qVendas
    Left = 751
    Top = 300
  end
  object qTempSat: TZQuery
    Connection = frmPdv.Conexao
    SQL.Strings = (
      'insert into TEMP_SAT'
      '('
      'CONTROLE,'
      'XML_TEMP,'
      'CHAVE,'
      'TERMINAL,'
      'STATUS'
      ')'
      'values'
      '('
      ':CONTROLE,'
      ':XML_TEMP,'
      ':CHAVE,'
      ':TERMINAL,'
      ':STATUS'
      ')')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CONTROLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XML_TEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TERMINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end>
    Left = 781
    Top = 300
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONTROLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XML_TEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TERMINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end>
  end
  object qRetornoSat: TZQuery
    Connection = frmPdv.Conexao
    SQL.Strings = (
      'select * from TEMP_SAT')
    Params = <>
    Left = 812
    Top = 300
    object qRetornoSatCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object qRetornoSatXML_TEMP: TMemoField
      FieldName = 'XML_TEMP'
      BlobType = ftMemo
    end
    object qRetornoSatXML_CFE: TMemoField
      FieldName = 'XML_CFE'
      BlobType = ftMemo
    end
    object qRetornoSatTERMINAL: TIntegerField
      FieldName = 'TERMINAL'
    end
    object qRetornoSatSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object qRetornoSatDATA: TDateField
      FieldName = 'DATA'
    end
    object qRetornoSatHORA: TTimeField
      FieldName = 'HORA'
    end
    object qRetornoSatCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 47
    end
    object qRetornoSatARQ_XML: TStringField
      FieldName = 'ARQ_XML'
      Size = 51
    end
    object qRetornoSatULT_SESSAO: TIntegerField
      FieldName = 'ULT_SESSAO'
    end
    object qRetornoSatRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 200
    end
  end
  object qLimpaRetorno: TZQuery
    Connection = frmPdv.Conexao
    SQL.Strings = (
      'delete from TEMP_SAT where TERMINAL = :vPdv')
    Params = <
      item
        DataType = ftUnknown
        Name = 'vPdv'
        ParamType = ptUnknown
      end>
    Left = 842
    Top = 300
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vPdv'
        ParamType = ptUnknown
      end>
  end
end
