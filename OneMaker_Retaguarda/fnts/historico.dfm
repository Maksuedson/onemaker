object frmHistorico: TfrmHistorico
  Left = 452
  Top = 245
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Historico de Vendas'
  ClientHeight = 259
  ClientWidth = 783
  Color = 15461355
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Ltotal: TLabel
    Left = 164
    Top = 199
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ltotal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 94
    Top = 200
    Width = 36
    Height = 13
    Caption = 'TOTAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object wwDBGrid4: TwwDBGrid
    Left = 211
    Top = 2
    Width = 564
    Height = 201
    Selected.Strings = (
      'CODPRODUTO'#9'7'#9'CODIGO'
      'PRODUTO'#9'32'#9'PRODUTO'
      'UNIDADE'#9'3'#9'UN'
      'QTDE'#9'9'#9'QTDE'
      'UNITARIO'#9'9'#9'PRE'#199'O'
      'TOTAL'#9'10'#9'TOTAL'
      'SERIAL'#9'12'#9'SERIAL')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsProdutoVenda
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBGrid3: TwwDBGrid
    Left = 1
    Top = 8
    Width = 204
    Height = 177
    Selected.Strings = (
      'CODIGO'#9'10'#9'CODIGO'#9'F'#9
      'CODCLIENTE'#9'7'#9'CLIENTE'#9'F'#9
      'DATA'#9'14'#9'DATA'#9'F'#9
      'TOTAL'#9'18'#9'TOTAL'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsVendaCli
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid3DblClick
  end
  object btnbbbgg4: TAdvGlowButton
    Left = 671
    Top = 207
    Width = 100
    Height = 48
    Caption = 'Fechar'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
      6D0000001974455874536F6674776172650041646F626520496D616765526561
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
      702E6969643A3237463942453631453238323131453238383933383533304243
      3643463530362220786D704D4D3A446F63756D656E7449443D22786D702E6469
      643A323746394245363245323832313145323838393338353330424336434635
      3036223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
      7374616E636549443D22786D702E6969643A3237463942453546453238323131
      453238383933383533304243364346353036222073745265663A646F63756D65
      6E7449443D22786D702E6469643A323746394245363045323832313145323838
      3933383533304243364346353036222F3E203C2F7264663A4465736372697074
      696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
      7061636B657420656E643D2272223F3E2C4D6F47000004E44944415478DAB459
      7988575514FECD73CB9A512C2D236B7450D4C8254525D7C12C30C18DDC925113
      9242C952C47112973FC4052C95122B484DC71197B29219B3C0724C5C835C2810
      15975CCAD1B1658C5CBF337D570E9777EF7BEFF7FBF5C1C7DCF77EF7DD77DEB9
      F79EF39D3B39A96D275319E021B023980FB6009F0403F022788E3C0EFE9EEE0B
      EAA6F9DC4BE048B00F5810D1F73258096E033F076B92BC282781071F04A78363
      C1B69E7E776BC70DC715703DB80C3C934D0347832BC066EADE6DF05B702F7804
      FC05FC13BC03E671DA9F05BBD0E379EA59E953022ECED4C0FAFCE211EA9E18B3
      1C2C072FC5F4BE185708BE090E50F70F8263C093E918F830B80F6CC36B593B33
      C1F7539961303FB025AFFF05FB82FBC33A078E41647A8E29E37680ADB3609CE0
      4BAEE1956A96C4112F2631F007F071B6578303193A7C9800AE238745F415AF4D
      E6A633F85A39C41B66BE039F60FB3D705A4CCF0CE3F409FE624889C2BBE0553A
      21454F4A3CBDE1F2E0EB603FB62B131827F84DB5AF25786E0D1D61D6FDC7AE29
      6EACD65815F87CCC173CC7716EA87BD71937BBC71C431CB1876D89B33DC20C5C
      02D661FB55F066C4A0031872F6323857ABDFCC7ADDCF25D335869163547BAD6D
      60537012DB47C1AF2206FB08FC06ECE0C91EC6A3B2640E81F322C63C0F7EC876
      5BE37D63E050D5B13862A032F035756D84403D75AF6188C173C1851163CFB1F6
      C37D038BD457947B0698CFB467F001D89EED26EA7E0BA63389A75BAC8F2F8AD8
      6866F6448CD415031B71A10B3EF33C5C607DE102700A379420D7121682B34C93
      65EAB74FB8215DD8A9A45CA118D85B4DCF51CF832B545BBC3CDBFAFD574AABCB
      2139FA156E28137B6778DE53A9DA9D024E87C1CF8E87E48B07A9EBE9217D8A19
      E0854B437E9F65E563177E62F0AE5D2A0155B0493FC71C0F7556EDC3945636EE
      5082DD66DB4685F26C8708A17BC1449740E5DC3F98A25CE2414BA4747097E1C6
      A095A7AFB12337B0C2814B09374A338DB95E1CB7DCC80954D4CF63FC0A43956A
      3F9A81813A14DD8C28C66A3F28E0EE13345031CDC669D5EE95A671F55538F36D
      484173FEBDAA0D143CE378E00817BFA09D4EE609304A2D95031E7DD95ED53EE7
      02AA08F3F2A71D0FD55016E95C9CAC7AFC4F8C186CF0F4EDA7DAC703C61CB3BB
      86781E2C51ED8E96C151D8ADA6AD8A29D28542FEFD07DC65727129FFB66631EE
      CA9313D5F5781940299A30F4616CEDADEEBD0CDE72F4CF5515E417A2884C55D7
      5CAD09F16637CF4B17B1BAD3D84CB97E9E02249F5335D0EAF706B8CA33F652A5
      E2E5F9DDBAEC2C534A45DCFCBD67A0A93C1D888B1A16559B234290497172A6F3
      94ADA8A75975820FCBB9E3B772ADB8600AA28208E3049FAAF64457E15E421965
      D6C0D018DE1135FE02C34F3E23C229E6EB8A988745C54ACC56F0A8C479B27040
      ADC10521B22ADB18CE9910FC4D7555ED2BDCFBAA9CF90E37C5FF8522659CD918
      D551270BB2A67A2A2367B2CA6A9865E3E65BEB6E2CA55CACA30F51D69D944818
      079EB04EB9D245771AA2CB8741AEEC1278063AC5BCB89DD7A2943731388F5375
      475C484CDCC85AB98B49655CEFE5991E60BEC520AA3FA89AE72F3FF2B0E92277
      AC08D307C047E8ADAE94F82D436A9CA9D93A614D3170BECD14D7C4A1988D810D
      AC3A599705A534EE503C9591FC94DFE44B8991FDAD72D3855D3C5E2B653A4C20
      8332FB37442B8A05599F8F716A4D0176855AF3842A3913E39E000300FC4D1C17
      703A52D50000000049454E44AE426082}
    Transparent = True
    TabOrder = 2
    OnClick = btnbbbgg4Click
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
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
  object qrClientesOrc: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    MasterFields = 'CODCLIENTE'
    LinkedFields = 'CODIGO'
    Left = 296
    Top = 48
    object qrClientesOrcCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrClientesOrcNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrClientesOrcAPELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrClientesOrcENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrClientesOrcBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrClientesOrcCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrClientesOrcUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrClientesOrcCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrClientesOrcCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qrClientesOrcMORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrClientesOrcTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrClientesOrcSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrClientesOrcTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qrClientesOrcTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qrClientesOrcTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object qrClientesOrcCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qrClientesOrcEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrClientesOrcRG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrClientesOrcCPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrClientesOrcFILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrClientesOrcESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrClientesOrcCONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrClientesOrcPROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrClientesOrcEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrClientesOrcRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrClientesOrcLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrClientesOrcREF1: TWideStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrClientesOrcREF2: TWideStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrClientesOrcCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object dtfldClientesOrcDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object dtfldClientesOrcDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrClientesOrcOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrClientesOrcOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrClientesOrcOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrClientesOrcOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrClientesOrcOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrClientesOrcOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrClientesOrcNASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrClientesOrcCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrClientesOrcCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrClientesOrcCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrClientesOrcNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrClientesOrcRG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrClientesOrcRG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object dtfldClientesOrcRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object qrClientesOrcSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrClientesOrcHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object dtfldClientesOrcPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qrClientesOrcCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrClientesOrcCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrClientesOrcIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrClientesOrcTAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrClientesOrcTAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrClientesOrcTAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrClientesOrcCORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrClientesOrcCORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrClientesOrcCORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrClientesOrcCORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrClientesOrcCORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrClientesOrcCORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrClientesOrcRG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrClientesOrcRESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrClientesOrcRESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrClientesOrcRESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrClientesOrcRESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrClientesOrcRESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrClientesOrcRESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrClientesOrcRESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrClientesOrcRESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrClientesOrcRESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrClientesOrcRESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrClientesOrcRESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrClientesOrcRESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrClientesOrcRESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrClientesOrcRESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrClientesOrcRESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrClientesOrcRESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrClientesOrcRESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrClientesOrcRESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrClientesOrcRESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrClientesOrcRESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrClientesOrcFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrClientesOrcCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = qrClientesOrc
    Left = 328
    Top = 48
  end
  object qrClienteVenda: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000048')
    Params = <>
    Left = 296
    Top = 88
    object qrClienteVendaCODIGO: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrClienteVendaCODCLIENTE: TWideStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 7
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object dtfldClienteVendaDATA: TDateField
      DisplayWidth = 14
      FieldName = 'DATA'
    end
    object qrClienteVendaTOTAL: TFloatField
      DisplayWidth = 18
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsVendaCli: TDataSource
    DataSet = qrClienteVenda
    Left = 328
    Top = 88
  end
  object qrProdutoVenda: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 296
    Top = 120
    object qrProdutoVendaCODPRODUTO: TWideStringField
      DisplayLabel = 'CODIGO'
      DisplayWidth = 7
      FieldName = 'CODPRODUTO'
    end
    object qrProdutoVendaPRODUTO: TWideStringField
      DisplayWidth = 32
      FieldName = 'PRODUTO'
      Size = 300
    end
    object qrProdutoVendaUNIDADE: TWideStringField
      DisplayLabel = 'UN'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrProdutoVendaQTDE: TFloatField
      DisplayWidth = 9
      FieldName = 'QTDE'
    end
    object qrProdutoVendaUNITARIO: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 9
      FieldName = 'UNITARIO'
    end
    object qrProdutoVendaTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object qrProdutoVendaSERIAL: TWideStringField
      DisplayWidth = 12
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrProdutoVendaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
    end
    object qrProdutoVendaCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 30
    end
    object qrProdutoVendaICMS: TFloatField
      FieldName = 'ICMS'
      Visible = False
    end
    object qrProdutoVendaIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object qrProdutoVendaCFOP: TWideStringField
      FieldName = 'CFOP'
      Visible = False
    end
    object dtfldProdutoVendaDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qrProdutoVendaNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Visible = False
    end
    object qrProdutoVendaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Visible = False
    end
    object qrProdutoVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrProdutoVendaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrProdutoVendaMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrProdutoVendaCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
    end
    object qrProdutoVendaCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Visible = False
    end
    object qrProdutoVendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrProdutoVendaICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
      Visible = False
    end
    object qrProdutoVendaBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      Visible = False
    end
    object qrProdutoVendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Visible = False
    end
    object qrProdutoVendaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrProdutoVendaECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
      Visible = False
      Size = 30
    end
    object qrProdutoVendaECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Visible = False
      Size = 10
    end
    object qrProdutoVendaCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 10
    end
    object qrProdutoVendaCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Visible = False
    end
    object qrProdutoVendaCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Visible = False
    end
    object qrProdutoVendaCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Visible = False
    end
    object qrProdutoVendaALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Visible = False
    end
    object qrProdutoVendaCST: TWideStringField
      FieldName = 'CST'
      Visible = False
      Size = 10
    end
    object qrProdutoVendaLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Visible = False
      Size = 30
    end
    object qrProdutoVendaMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
      Visible = False
    end
    object qrProdutoVendaLANCADO: TIntegerField
      FieldName = 'LANCADO'
      Visible = False
    end
    object dtfldProdutoVendaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Visible = False
    end
    object qrProdutoVendaCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Visible = False
      Size = 40
    end
    object qrProdutoVendaMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
      Visible = False
    end
    object qrProdutoVendaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      Visible = False
    end
    object qrProdutoVendaPIS: TFloatField
      FieldName = 'PIS'
      Visible = False
    end
    object qrProdutoVendaCOFINS: TFloatField
      FieldName = 'COFINS'
      Visible = False
    end
    object qrProdutoVendaLOJA: TWideStringField
      FieldName = 'LOJA'
      Visible = False
      Size = 30
    end
    object qrProdutoVendaCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
    end
    object qrProdutoVendaTIPO: TWideStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 10
    end
    object qrProdutoVendaCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Visible = False
      Size = 10
    end
    object qrProdutoVendaORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Visible = False
      Size = 80
    end
    object qrProdutoVendaDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Visible = False
      Size = 80
    end
    object qrProdutoVendaCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Visible = False
    end
  end
  object dsProdutoVenda: TDataSource
    DataSet = qrProdutoVenda
    Left = 328
    Top = 120
  end
  object qrapoio3: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 384
    Top = 271
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000048')
    Params = <>
    Left = 296
    Top = 149
    object qrvendaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrvendaCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrvendaCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object dtfldDATA: TDateField
      FieldName = 'DATA'
    end
    object qrvendaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrvendaOBS: TWideStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qrvendaMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
    end
    object qrvendaMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
    end
    object qrvendaMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
    end
    object qrvendaMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
    end
    object qrvendaMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
    end
    object qrvendaMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
    end
    object qrvendaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrvendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrvendaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrvendaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrvendaCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
    end
    object qrvendaNUMERO_CUPOM_FISCAL: TWideStringField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object qrvendaRETIRADO: TWideStringField
      FieldName = 'RETIRADO'
      Size = 50
    end
    object qrvendaMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
    end
    object qrvendaP5: TFloatField
      FieldName = 'P5'
    end
    object qrvendaP3: TFloatField
      FieldName = 'P3'
    end
    object qrvendaMEIO_FINANCEIRA: TFloatField
      FieldName = 'MEIO_FINANCEIRA'
    end
    object qrvendaCOD_FINANCEIRA: TWideStringField
      FieldName = 'COD_FINANCEIRA'
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LANCTO: TWideStringField
      FieldName = 'COD_FINANCEIRA_LANCTO'
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LACTO: TWideStringField
      FieldName = 'COD_FINANCEIRA_LACTO'
      Size = 10
    end
    object qrvendaCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 10
    end
    object qrvendaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrvendaCODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 10
    end
    object qrvendaCODVEICULO: TWideStringField
      FieldName = 'CODVEICULO'
      Size = 10
    end
    object qrvendaFRETE_VALOR: TFloatField
      FieldName = 'FRETE_VALOR'
    end
    object qrvendaFRETE_OBS: TWideStringField
      FieldName = 'FRETE_OBS'
      Size = 80
    end
    object qrvendaFRETE_LANCAR: TIntegerField
      FieldName = 'FRETE_LANCAR'
    end
    object qrvendaECF_SERIAL: TWideStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrvendaCODNFSAIDA: TWideStringField
      FieldName = 'CODNFSAIDA'
      Size = 10
    end
    object qrvendaATACADO_VAREJO: TSmallintField
      FieldName = 'ATACADO_VAREJO'
      Required = True
    end
    object qrvendaNRVENDA: TWideStringField
      FieldName = 'NRVENDA'
      Size = 6
    end
    object qrvendaFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
end
