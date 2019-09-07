object frmnotas_venda_impressao: Tfrmnotas_venda_impressao
  Left = 436
  Top = 346
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aviso de Impress'#227'o'
  ClientHeight = 144
  ClientWidth = 412
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu2
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 20
    Top = 12
    Width = 380
    Height = 25
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 58
    Top = 18
    Width = 305
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pedido de Venda - Reimpress'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 14
    Top = 49
    Width = 44
    Height = 13
    Caption = 'Modelo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 14
    Top = 81
    Width = 26
    Height = 13
    Caption = 'Vias:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object combo_modelo: TComboBox
    Left = 62
    Top = 47
    Width = 340
    Height = 21
    Style = csDropDownList
    Color = clWhite
    TabOrder = 0
    OnKeyPress = combo_modeloKeyPress
    Items.Strings = (
      '01 - Formul'#225'rio Cont'#237'nuo - Raz'#227'o'
      '02 - Contrato | Guia de Entrega | Carn'#234
      '03 - Pedido + Carn'#234
      '04 - Pedido + Carn'#234' com c'#243'digo de barras'
      '05 - Papel Raz'#227'o - Laser / Tinta 2 ')
  end
  object bgravar: TAdvGlowButton
    Left = 338
    Top = 78
    Width = 60
    Height = 53
    Caption = 'Imprimir'
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
    OnClick = bgravarClick
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
  end
  object bitbtn1: TAdvGlowButton
    Left = 727
    Top = 133
    Width = 103
    Height = 48
    Caption = 'Editar'
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
      89504E470D0A1A0A0000000D4948445200000020000000200802000000FC18ED
      A30000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
      000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
      312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
      2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
      3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
      7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
      626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
      62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
      74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
      6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
      7861702F312E302F73547970652F5265736F75726365526566232220786D703A
      43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
      2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
      6969643A46463633354235363539453931314532394139453933323439383941
      333537342220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
      4646363335423537353945393131453239413945393332343938394133353734
      223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
      616E636549443D22786D702E6969643A46463633354235343539453931314532
      39413945393332343938394133353734222073745265663A646F63756D656E74
      49443D22786D702E6469643A4646363335423535353945393131453239413945
      393332343938394133353734222F3E203C2F7264663A4465736372697074696F
      6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
      636B657420656E643D2272223F3E4DA11873000001D54944415478DA6264D870
      978196808981C680E616B0506A8004F7610D415156C6E4C75F8EDE784F6D0B64
      79FF1B89429847D405EBB8589ACFBDA65E1071B2307CFCF9E6F73FB840932C6F
      2DCC3E4A2D001AF4DA5106C8103DF20CBF1D8CE424533EB6FF60D38146032D00
      325EDB4889B022DC6A73F33D3C3E48F641A28E30C85DE0B0061A0A341AD31F45
      229C640611D0FBF394F94186BEF98EDF0E722C009A0E0C622063D28BAF0CDFFF
      E0B123F8CE47922D809B5EF7F833302D4223F9E34F4C3B40224017906401A6E9
      402ED4D0C79F51EC00FAE0F167D28208ABE91029D1CB6F41142CACA04147524E
      C6633AC8D0C79F81227912DCA090D9FF84E1D32FD2229918D321619528C78BD5
      747C1610693A44C1FC2B6F492BAE49321DB380236001154DC76281B58620154D
      C76241870437154DC7B08093C5869F0D48375F7E4315D3312C009782EBDEFE60
      F8FD1F680723386D50623ABA0553A5B84045D5737049F2FB3FC3EBEF149A8E9E
      93C384C1E5F8EBEF503E30EF7CFF4D89E9A8164870436B257E76509925C5BD56
      923B48980322499EE92816248A40CDFA8F5AA91EF9F8ABE2C557AC4D12D22C28
      97E4429698F6E26BF6B36FC09212B38024D382BDE0D2AAF3F9B7F96F7E20D718
      1402C6D1C62F21001060002D6E5C01F73BAB830000000049454E44AE426082}
    Transparent = True
    TabOrder = 2
    Visible = False
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
  end
  object evias: TRzSpinEdit
    Left = 62
    Top = 76
    Width = 47
    Height = 21
    Max = 100.000000000000000000
    Color = clWhite
    TabOrder = 3
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 312
    object TPCupom_Fiscal: TMenuItem
      Caption = 'Cupom Fiscal'
      OnClick = TPCupom_FiscalClick
    end
    object TPNota_Fiscal: TMenuItem
      Caption = 'Nota Fiscal'
      OnClick = TPNota_FiscalClick
    end
    object TPBobina: TMenuItem
      Caption = 'Bobina'
      OnClick = TPBobinaClick
    end
    object TPRazao: TMenuItem
      Caption = 'Formul'#225'rio Cont'#237'nuo - Raz'#227'o'
      OnClick = TPRazaoClick
    end
    object TPCarta: TMenuItem
      Caption = 'Formul'#225'rio Cont'#237'nuo - Carta'
      OnClick = TPCartaClick
    end
    object TPImpresso: TMenuItem
      Caption = 'Pr'#233'-Impresso'
      OnClick = TPImpressoClick
    end
    object TPContrato: TMenuItem
      Caption = 'Contrato'
      OnClick = TPContratoClick
    end
    object TPPersonalizado: TMenuItem
      Caption = 'Personalizado'
      OnClick = TPPersonalizadoClick
    end
    object TPA4: TMenuItem
      Caption = 'Papel A4 - Laser / Tinta'
      OnClick = TPA4Click
    end
    object TPRazaoA4: TMenuItem
      Caption = 'Papel Raz'#227'o - Laser / Tinta'
      OnClick = TPRazaoA4Click
    end
    object FormulrioContnuoRazo1: TMenuItem
      Caption = 'Formul'#225'rio Cont'#237'nuo - Raz'#227'o 2'
      OnClick = FormulrioContnuoRazo1Click
    end
    object ContratoCapa1: TMenuItem
      Caption = 'Contrato + Capa'
    end
    object Bobinasemformatao1: TMenuItem
      Caption = 'Bobina sem formata'#231#227'o'
      OnClick = Bobinasemformatao1Click
    end
    object PedidoCarn1: TMenuItem
      Caption = 'Pedido + Carn'#234
      OnClick = PedidoCarn1Click
    end
    object PedidoCarncomcdigodebarras1: TMenuItem
      Caption = 'Pedido + Carn'#234' com c'#243'digo de barras'
      OnClick = PedidoCarncomcdigodebarras1Click
    end
    object Laser21: TMenuItem
      Caption = 'Laser 2'
      OnClick = Laser21Click
    end
  end
  object qrproduto_mov: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrproduto_movCalcFields
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 496
    Top = 304
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
    object dtfld_movDATA: TDateField
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
    object dtfld_movVENCIMENTO: TDateField
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
    object qrproduto_movNUMERACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUMERACAO'
      Size = 2
      Calculated = True
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 320
    Top = 304
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
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
    Left = 576
    Top = 232
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
    Top = 392
  end
  object fxvenda: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.758111979200000000
    ReportOptions.LastChange = 43040.970652731480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 312
    Datasets = <
      item
        DataSet = FSCLIENTE
        DataSetName = 'FSCLIENTE'
      end
      item
        DataSet = fscontasreceber
        DataSetName = 'fscontasreceber'
      end
      item
        DataSet = fsvenda
        DataSetName = 'fsvenda'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'fsvenda_produto'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      TopMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 517.795610000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        RowCount = 1
        object Shape27: TfrxShapeView
          Left = 483.779840000000000000
          Top = 394.779840000000000000
          Width = 272.126160000000000000
          Height = 90.708720000000000000
        end
        object Shape26: TfrxShapeView
          Left = 483.779840000000000000
          Top = 454.661720000000000000
          Width = 272.126160000000000000
          Height = 49.133890000000000000
        end
        object Memo54: TfrxMemoView
          Left = 482.779840000000000000
          Top = 488.338900000000000000
          Width = 272.126160000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Cliente')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 22.677180000000000000
          Top = 376.645950000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
        end
        object Shape6: TfrxShapeView
          Left = 551.811380000000000000
          Top = 376.645950000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
        end
        object Shape5: TfrxShapeView
          Left = 389.291590000000000000
          Top = 376.645950000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
        end
        object Shape3: TfrxShapeView
          Left = 226.771800000000000000
          Top = 376.645950000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
        end
        object Shape17: TfrxShapeView
          Left = 423.307360000000000000
          Top = 67.708720000000000000
          Width = 60.472480000000000000
          Height = 309.543285120000000000
        end
        object Shape16: TfrxShapeView
          Left = 83.149660000000000000
          Top = 67.708720000000000000
          Width = 340.157700000000000000
          Height = 309.543285120000000000
        end
        object Shape19: TfrxShapeView
          Left = 570.709030000000000000
          Top = 67.708720000000000000
          Width = 86.929190000000000000
          Height = 309.543285120000000000
        end
        object Shape18: TfrxShapeView
          Left = 483.779840000000000000
          Top = 67.708720000000000000
          Width = 86.929190000000000000
          Height = 309.543285120000000000
        end
        object Shape15: TfrxShapeView
          Left = 22.677180000000000000
          Top = 67.708720000000000000
          Width = 60.472480000000000000
          Height = 309.543285120000000000
        end
        object Shape11: TfrxShapeView
          Left = 22.677180000000000000
          Top = 67.708720000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
        end
        object Subreport1: TfrxSubreport
          Left = 22.677180000000000000
          Top = 86.606370000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          Page = fxvenda.Page3
        end
        object Memo34: TfrxMemoView
          Left = 28.236240000000000000
          Top = 69.488250000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
          Left = 86.929190000000000000
          Top = 69.488250000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
          Left = 427.086890000000000000
          Top = 69.488250000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
          Left = 487.559370000000000000
          Top = 69.488250000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
        object Memo38: TfrxMemoView
          Left = 574.488560000000000000
          Top = 69.488250000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O-R$')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 661.417750000000000000
          Top = 69.488250000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL-R$')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 230.551330000000000000
          Top = 380.425387240000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTOS:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 393.071120000000000000
          Top = 380.425387240000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ACR'#201'SCIMOS:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 563.149970000000000000
          Top = 380.425387240000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 298.582870000000000000
          Top = 379.425387240000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'DESCONTO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."DESCONTO"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 472.220780000000000000
          Top = 379.425387240000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DataField = 'ACRESCIMO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."ACRESCIMO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 661.197280000000000000
          Top = 379.425387240000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DataField = 'TOTAL'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."TOTAL"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 30.236240000000000000
          Top = 380.425480000000000000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAL DOS PRODUTOS:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 147.401670000000000000
          Top = 379.425480000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DataField = 'SUBTOTAL'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 408.189240000000000000
          Top = 2.779530000000001000
          Width = 347.716760000000000000
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
            'VENDA N'#186': [fsvenda."CODIGO"]')
          ParentFont = False
        end
        object Shape35: TfrxShapeView
          Left = 22.677180000000000000
          Top = 18.677180000000000000
          Width = 733.228820000000000000
          Height = 49.133890000000000000
        end
        object Memo85: TfrxMemoView
          Left = 26.456710000000000000
          Top = 22.456710000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 26.456710000000000000
          Top = 37.574830000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 83.149660000000000000
          Top = 22.456710000000000000
          Width = 646.299630000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CODIGO"]  [FSCLIENTE."NOME"]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 83.149660000000000000
          Top = 37.574830000000000000
          Width = 653.858690000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[FSCLIENTE."ENDERECO"]  [FSCLIENTE."BAIRRO"]  [FSCLIENTE."CIDADE' +
              '"]/[FSCLIENTE."UF"]   [FSCLIENTE."COMPLEMENTO"]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 26.456710000000000000
          Top = 52.692949999999990000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 83.149660000000000000
          Top = 52.692949999999990000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[FSCLIENTE."TELEFONE1"]  [FSCLIENTE."TELEFONE2"]  [FSCLIENTE."CE' +
              'LULAR"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 234.330860000000000000
          Top = 52.692949999999990000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 302.362400000000000000
          Top = 52.692949999999990000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."DATA"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 411.968770000000000000
          Top = 52.692949999999990000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 480.000310000000000000
          Top = 52.692949999999990000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'vendedor'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."vendedor"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 646.299630000000000000
          Top = 52.692949999999990000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Caixa:')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 687.874460000000000000
          Top = 52.692949999999990000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'CODCAIXA'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."CODCAIXA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 2.779530000000001000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[fxemitente."FANTASIA"]  ')
          ParentFont = False
        end
        object Shape24: TfrxShapeView
          Left = 22.677180000000000000
          Top = 394.866420000000000000
          Width = 461.102660000000000000
          Height = 109.606370000000000000
        end
        object Line1: TfrxLineView
          Top = 511.338899999999900000
          Width = 812.598950000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Shape12: TfrxShapeView
          Left = 657.638220000000000000
          Top = 68.031540000000010000
          Width = 98.267780000000000000
          Height = 309.543285120000000000
        end
        object Memo53: TfrxMemoView
          Left = 22.677180000000000000
          Top = 395.866420000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Condi'#231#245'es de Pagamento:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 139.842610000000000000
          Top = 394.866420000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA7'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 22.897650000000000000
          Top = 410.205010000000000000
          Width = 461.102660000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo59: TfrxMemoView
          Left = 316.819110000000000000
          Top = 395.866420000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ap'#243's Vencimento juros de 0,20% ao dia')
          ParentFont = False
        end
        object Subreport3: TfrxSubreport
          Left = 229.889920000000000000
          Top = 411.984540000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Page = fxvenda.Page1
        end
        object Rich1: TfrxRichView
          Left = 487.559370000000000000
          Top = 397.850650000000000000
          Width = 264.567100000000000000
          Height = 60.472480000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302056657264616E613B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E31363239397D5C
            766965776B696E64345C756331200D0A5C706172645C716A5C66305C66733134
            205265636F6E68655C2765376F206F2076616C6F72206163696D6120636F6D6F
            2063725C2765396469746F20656D206661766F72206461205C62205B6678656D
            6974656E74652E2246414E5441534941225D20205C6230202C5C6220205C6230
            207265666572656E7465205C27653020645C2765647669646120636F6E666F72
            726D6520636F6D7072617320646173206D65726361646F72696173206163696D
            61206469736372696D696E61646173207175652072656365626920656D207065
            72666569746F2065737461646F2E5C7061720D0A7D0D0A00}
        end
        object Memo60: TfrxMemoView
          Left = 133.456710000000000000
          Top = 415.748300000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_DINHEIRO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_DINHEIRO"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 133.456710000000000000
          Top = 434.645950000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CHEQUEAV'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CHEQUEAV"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 133.456710000000000000
          Top = 453.543600000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CHEQUEAP'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CHEQUEAP"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 133.456692910000000000
          Top = 471.441250000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CARTAODEB'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CARTAODEB"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 133.456692910000000000
          Top = 487.559370000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CARTAOCRED'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CARTAOCRED"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 28.236240000000000000
          Top = 415.748300000000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DINHEIRO         ')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 28.236240000000000000
          Top = 432.866420000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CHEQUE A VISTA ')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 28.236240000000000000
          Top = 449.764070000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CHEQUE APRAZO ')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 28.236240000000000000
          Top = 469.441250000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CARTAO D'#201'BITO  ')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 28.236220470000000000
          Top = 487.559370000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CARTAO CR'#201'DITO')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 227.330860000000000000
          Top = 410.189240000000000000
          Height = 94.488250000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 517.795610000000000000
        Top = 559.370440000000000000
        Width = 793.701300000000000000
        RowCount = 1
        object Shape1: TfrxShapeView
          Left = 483.779840000000000000
          Top = 394.779840000000100000
          Width = 272.126160000000000000
          Height = 90.708720000000000000
        end
        object Shape4: TfrxShapeView
          Left = 483.779840000000000000
          Top = 455.661719999999900000
          Width = 272.126160000000000000
          Height = 49.133890000000000000
        end
        object Memo2: TfrxMemoView
          Left = 482.779840000000000000
          Top = 488.338900000000100000
          Width = 272.126160000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Cliente')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Left = 22.677180000000000000
          Top = 376.645950000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
        end
        object Shape8: TfrxShapeView
          Left = 551.811380000000000000
          Top = 376.645950000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
        end
        object Shape9: TfrxShapeView
          Left = 389.291590000000000000
          Top = 376.645950000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
        end
        object Shape10: TfrxShapeView
          Left = 226.771800000000000000
          Top = 376.645950000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
        end
        object Shape13: TfrxShapeView
          Left = 423.307360000000000000
          Top = 67.708719999999970000
          Width = 60.472480000000000000
          Height = 309.543285120000000000
        end
        object Shape14: TfrxShapeView
          Left = 83.149660000000000000
          Top = 67.708719999999970000
          Width = 340.157700000000000000
          Height = 309.543285120000000000
        end
        object Shape20: TfrxShapeView
          Left = 570.709030000000000000
          Top = 67.708719999999970000
          Width = 86.929190000000000000
          Height = 309.543285120000000000
        end
        object Shape21: TfrxShapeView
          Left = 483.779840000000000000
          Top = 67.708719999999970000
          Width = 86.929190000000000000
          Height = 309.543285120000000000
        end
        object Shape22: TfrxShapeView
          Left = 22.677180000000000000
          Top = 67.708719999999970000
          Width = 60.472480000000000000
          Height = 309.543285120000000000
        end
        object Shape23: TfrxShapeView
          Left = 22.677180000000000000
          Top = 67.708719999999970000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
        end
        object Subreport2: TfrxSubreport
          Left = 22.677180000000000000
          Top = 86.606369999999970000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          Page = fxvenda.Page3
        end
        object Memo3: TfrxMemoView
          Left = 28.236240000000000000
          Top = 69.488250000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
        object Memo4: TfrxMemoView
          Left = 86.929190000000000000
          Top = 69.488250000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
        object Memo5: TfrxMemoView
          Left = 427.086890000000000000
          Top = 69.488250000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
        object Memo6: TfrxMemoView
          Left = 487.559370000000000000
          Top = 69.488250000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
        object Memo7: TfrxMemoView
          Left = 574.488560000000000000
          Top = 69.488250000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O-R$')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 661.417750000000000000
          Top = 69.488250000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL-R$')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 230.551330000000000000
          Top = 380.425387239999900000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTOS:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 393.071120000000000000
          Top = 380.425387239999900000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ACR'#201'SCIMOS:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 563.149970000000000000
          Top = 380.425387239999900000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 298.582870000000000000
          Top = 378.425387239999900000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'DESCONTO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."DESCONTO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 472.220780000000000000
          Top = 378.425387239999900000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'ACRESCIMO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."ACRESCIMO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 661.197280000000000000
          Top = 378.425387239999900000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."TOTAL"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 30.236240000000000000
          Top = 380.425480000000000000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAL DOS PRODUTOS:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 147.401670000000000000
          Top = 378.425480000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'SUBTOTAL'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 408.189240000000000000
          Top = 2.779530000000022000
          Width = 347.716760000000000000
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
            'VENDA N'#186': [fsvenda."CODIGO"]')
          ParentFont = False
        end
        object Shape25: TfrxShapeView
          Left = 22.677180000000000000
          Top = 18.677180000000020000
          Width = 733.228820000000000000
          Height = 49.133890000000000000
        end
        object Memo18: TfrxMemoView
          Left = 26.456710000000000000
          Top = 22.456710000000040000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 26.456710000000000000
          Top = 37.574830000000020000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 83.149660000000000000
          Top = 22.456710000000040000
          Width = 646.299630000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CODIGO"]  [FSCLIENTE."NOME"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 83.149660000000000000
          Top = 37.574830000000020000
          Width = 653.858690000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[FSCLIENTE."ENDERECO"]  [FSCLIENTE."BAIRRO"]  [FSCLIENTE."CIDADE' +
              '"]/[FSCLIENTE."UF"]   [FSCLIENTE."COMPLEMENTO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 26.456710000000000000
          Top = 52.692949999999990000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 83.149660000000000000
          Top = 52.692949999999990000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[FSCLIENTE."TELEFONE1"]  [FSCLIENTE."TELEFONE2"]  [FSCLIENTE."CE' +
              'LULAR"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 234.330860000000000000
          Top = 52.692949999999990000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 302.362400000000000000
          Top = 52.692949999999990000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."DATA"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 411.968770000000000000
          Top = 52.692949999999990000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 480.000310000000000000
          Top = 52.692949999999990000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'vendedor'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."vendedor"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 646.299630000000000000
          Top = 52.692949999999990000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Caixa:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 687.874460000000000000
          Top = 52.692949999999990000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'CODCAIXA'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."CODCAIXA"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 22.677180000000000000
          Top = 2.779530000000022000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[fxemitente."FANTASIA"]  ')
          ParentFont = False
        end
        object Shape28: TfrxShapeView
          Left = 22.677180000000000000
          Top = 394.866419999999900000
          Width = 461.102660000000000000
          Height = 109.606370000000000000
        end
        object Line3: TfrxLineView
          Top = 511.338900000000100000
          Width = 812.598950000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Shape29: TfrxShapeView
          Left = 657.638220000000000000
          Top = 68.031540000000060000
          Width = 98.267780000000000000
          Height = 309.543285120000000000
        end
        object Memo56: TfrxMemoView
          Left = 22.677180000000000000
          Top = 396.866419999999900000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Condi'#231#245'es de Pagamento:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 139.842610000000000000
          Top = 395.866419999999900000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA7'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 22.897650000000000000
          Top = 410.205010000000000000
          Width = 461.102660000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo58: TfrxMemoView
          Left = 316.819110000000000000
          Top = 396.866419999999900000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ap'#243's Vencimento juros de 0,20% ao dia')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Left = 487.559370000000000000
          Top = 397.850650000000000000
          Width = 264.567100000000000000
          Height = 60.472480000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302056657264616E613B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E31363239397D5C
            766965776B696E64345C756331200D0A5C706172645C716A5C66305C66733134
            205265636F6E68655C2765376F206F2076616C6F72206163696D6120636F6D6F
            2063725C2765396469746F20656D206661766F72206461205C62205B6678656D
            6974656E74652E2246414E5441534941225D20205C6230202C5C6220205C6230
            207265666572656E7465205C27653020645C2765647669646120636F6E666F72
            726D6520636F6D7072617320646173206D65726361646F72696173206163696D
            61206469736372696D696E61646173207175652072656365626920656D207065
            72666569746F2065737461646F2E5C7061720D0A7D0D0A00}
        end
        object Subreport4: TfrxSubreport
          Left = 229.889939530000000000
          Top = 412.764069999999900000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Page = fxvenda.Page1
        end
        object Memo73: TfrxMemoView
          Left = 133.456729530000000000
          Top = 416.527830000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_DINHEIRO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_DINHEIRO"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 133.456729530000000000
          Top = 435.425480000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CHEQUEAV'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CHEQUEAV"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 133.456729530000000000
          Top = 454.323130000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CHEQUEAP'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CHEQUEAP"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 133.456712440000000000
          Top = 472.220780000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CARTAODEB'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CARTAODEB"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 133.456712440000000000
          Top = 488.338900000000100000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CARTAOCRED'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CARTAOCRED"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 28.236259530000000000
          Top = 416.527830000000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DINHEIRO         ')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 28.236259530000000000
          Top = 433.645950000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CHEQUE A VISTA ')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 28.236259530000000000
          Top = 450.543600000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CHEQUE APRAZO ')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 28.236259530000000000
          Top = 470.220780000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CARTAO D'#201'BITO  ')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 28.236240000000000000
          Top = 488.338900000000100000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CARTAO CR'#201'DITO')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 227.330879530000000000
          Top = 410.968769999999900000
          Height = 94.488250000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      TopMargin = 10.000000000000000000
      PrintIfEmpty = False
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 11.716535430000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataset1
        DataSetName = 'fsvenda_produto'
        PrintIfDetailEmpty = True
        RowCount = 28
        Stretched = True
        object Memo27: TfrxMemoView
          Left = 7.559060000000000000
          Top = -0.000012204724409770
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'CODPRODUTO'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsvenda_produto."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 64.252010000000000000
          Top = -0.000012204724409770
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          DataField = 'PRODUTO'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsvenda_produto."PRODUTO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 404.409710000000000000
          Top = -0.000012204724409770
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'NUMERACAO'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsvenda_produto."NUMERACAO"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 462.882190000000000000
          Top = -0.000012204724409770
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'QTDE'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
            '[fsvenda_produto."QTDE"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 549.811380000000000000
          Top = -0.000012204724409770
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'UNITARIO'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
            '[fsvenda_produto."UNITARIO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 648.079160000000000000
          Top = -0.000012204724409770
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'TOTAL'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
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
            '[fsvenda_produto."TOTAL"]')
          ParentFont = False
        end
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
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 15.496065430000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = fscontasreceber
        DataSetName = 'fscontasreceber'
        PrintIfDetailEmpty = True
        RowCount = 28
        Stretched = True
        object Memo52: TfrxMemoView
          Left = 52.677180000000000000
          Top = -0.000012200000000462
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_ORIGINAL'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fscontasreceber."VALOR_ORIGINAL"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 172.078850000000000000
          Top = -0.000012200000000462
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_VENCIMENTO'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fscontasreceber."DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 105.149660000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' - Vencimento:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Valor : R$ ')
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
    Left = 192
    Top = 272
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
    object dtfldDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object dtfldDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object dtfldDATA_PAGAMENTO: TDateField
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
    Left = 224
    Top = 272
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
    Left = 192
    Top = 304
  end
  object fsvenda: TfrxDBDataset
    UserName = 'fsvenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CUPOM_FISCAL=CUPOM_FISCAL'
      'NUMERO_CUPOM_FISCAL=NUMERO_CUPOM_FISCAL'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'cliente=cliente'
      'TOTAL=TOTAL'
      'vendedor=vendedor'
      'CODCAIXA=CODCAIXA'
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
      'ACRESCIMO=ACRESCIMO')
    DataSet = frmmodulo.qrvenda
    BCDToCurrency = False
    Left = 224
    Top = 304
  end
end
