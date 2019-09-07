object frmvenda_impressao: Tfrmvenda_impressao
  Left = 375
  Top = 384
  BorderStyle = bsToolWindow
  Caption = 'Impress'#227'o de Or'#231'amento'
  ClientHeight = 161
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 345
    Height = 161
  end
  object Label2: TLabel
    Left = 117
    Top = 30
    Width = 29
    Height = 13
    Caption = 'Tipo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 197
    Top = 57
    Width = 81
    Height = 13
    Caption = 'Qtde. de vias:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object bgravar: TBitBtn
    Left = 120
    Top = 129
    Width = 97
    Height = 25
    Caption = 'Imprimir '
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EEE08FBF913A8C3E24
      79282476283A843E8FB991E0EBE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFB5D9B6308E34419F5186C9999AD2AA9AD1AA82C6953C964B307B33B4D0
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA248E296CBD82A7DAB486CB9765
      BB7C63B97B85CA97A4D8B365B67C237126B4D0B6FFFFFFFFFFFFFFFFFFE1F2E4
      32A04371C186A7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B268B7
      7E307F34E0ECE1FFFFFFFFFFFF8FD29F4BAF63A9DCB363C0785EBD7074C484D3
      EBD889CC9855B56B57B46D5BB673A5D9B3409A4D8EBB90FFFFFFFFFFFF3EB45C
      90D19E8CD39963C27378C886F1F9F3FEFEFEFCFDFC85CA9556B66C5AB87184CB
      9686C6993A8A3EFFFFFFFFFFFF26AF48A5DBAE6FC97E72C97FEFF8F0FEFEFEEA
      F6ECFEFEFEFAFCFB87CC955AB87066BD7C9FD6AE227E25FFFFFFFFFFFF2DB650
      A6DCB071CB7F65C672AFE0B6D1EDD562C06FB7E2BEFEFEFEFAFCFB8BCF9868C0
      7DA0D6AD228325FFFFFFFFFFFF4AC46B94D6A090D69A68C87563C56E60C36D60
      C26E60C16EB8E3BFFEFEFEE2F3E58AD0988ACD9C3B983FFFFFFFFFFFFF9ADEAC
      56BE6FAEE0B66CCB7967C77164C66F62C46D61C36D62C370B5E2BD6EC67DABDE
      B447A85D8EC793FFFFFFFFFFFFE4F7E948C4657ECD8FADE0B46CCB7969C97567
      C77167C77367C7746AC878ABDEB375C38832A042E1F1E3FFFFFFFFFFFFFFFFFF
      BFECCA3CC25B7ECD8FAEE0B691D79C76CD8276CD8291D79CADE0B477C78A26A0
      3AB5DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0ECCB49C76858C17395D6A2A4
      DBADA4DBAD94D5A04FB86934B254B6E3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5F7E99EE2B054CA713ABF5B36BD5948C26A97DBAAE1F5E7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 0
    OnClick = bgravarClick
  end
  object bcancelar: TBitBtn
    Left = 224
    Top = 129
    Width = 97
    Height = 25
    Caption = 'Cancelar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9BCF0676DDF4048D643
      4BD74048D7353ED55960DCAFB2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFBABDF05760DF8A96F599A6FB93A0F8909EF6929FF67F8BED404AD9AEB1
      EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEF15F67E0919DF6657CFE3D58FE3B
      57FE3752FD2F4BF85269F6808CF03F48D9ABAFEDFFFFFFFFFFFFFFFFFFC0C3F1
      6970E298A5F76F87FE4260FE3E5CFE3956FE3552FE304DFE2B49FE556CFA828F
      F3404AD9ADB0EEFFFFFFFFFFFF8186E59EACF87891FE4E6DFE6D86FE8EA0FE40
      5EFE3B5AFE8195FE647AFE2C4BFE566DFE828FF5585FDCFFFFFFFFFFFF6B70DF
      AFBFFD5D7EFE5675FE95A8FEFEFEFEAAB8FE9AABFEFEFEFE9AAAFE3352FE3351
      FE96A5FD3840D5FFFFFFFFFFFF767BE1B0BFFC6788FE5D7EFE5D7EFEAEBEFEFE
      FEFEFEFEFEB8C4FE4867FE3A5AFE3C5BFE96A4FB444DD8FFFFFFFFFFFF7A7FE3
      B3C4FC6E91FE6387FE5F83FEA7B9FEFEFEFEFEFEFEAFBFFE4A6BFE4162FE4363
      FE99A8FB4950D9FFFFFFFFFFFF797EE3BACBFD7196FE6A8FFE9EB5FEFEFEFEC1
      CEFEB4C4FEFEFEFE92A8FE486AFE4668FE9FB0FD464ED8FFFFFFFFFFFF9499E8
      AFC0F893B2FE7098FE8FADFEB0C4FE678DFE5E84FE9BB1FE7694FE4F73FE718D
      FE92A2F66D73E0FFFFFFFFFFFFCDCFF4868FE7B0C1F895B6FE739CFE6F98FE6A
      92FE658DFE6188FE5B82FE7B99FE99A9F76069E0BCBEF1FFFFFFFFFFFFFFFFFF
      CECFF4878FE7B1C2F896B8FE78A2FE76A0FE729BFE6B94FE84A3FEA0B0F76871
      E2BEC0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD1F58891E8B1C3F8BDD2FDB9
      CDFCB7CAFCB7CAFDA6B7F7727BE4C2C4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCFD1F5989DE97E83E38084E47C82E3747AE18C91E6C7CAF3FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 1
    OnClick = bcancelarClick
  end
  object combo_modelo: TComboBox
    Left = 157
    Top = 26
    Width = 177
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    OnKeyPress = combo_modeloKeyPress
    Items.Strings = (
      '01 - Papel Raz'#227'o '
      '02 - Or'#231'amento Timbrado (A4)')
  end
  object evias: TSpinEdit
    Left = 285
    Top = 54
    Width = 49
    Height = 22
    MaxValue = 10
    MinValue = 1
    TabOrder = 3
    Value = 1
    OnKeyPress = eviasKeyPress
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 88
    object Razomodelo21: TMenuItem
      Caption = 'Raz'#227'o modelo 2'
      OnClick = Razomodelo21Click
    end
    object OramentoA41: TMenuItem
      Caption = 'Or'#231'amento A4'
      OnClick = OramentoA41Click
    end
  end
  object fxvenda: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39209.833059294000000000
    ReportOptions.LastChange = 39973.483586041700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 40
    Top = 72
    Datasets = <
      item
        DataSet = fsorcamento
        DataSetName = 'fsorcamento'
      end
      item
        DataSet = fsorcamento_cliente
        DataSetName = 'fsorcamento_cliente'
      end
      item
        DataSet = fsorcamento_produto
        DataSetName = 'fsorcamento_produto'
      end
      item
        DataSet = fsorcamento_receber
        DataSetName = 'fsorcamento_receber'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 191.196970000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo37: TfrxMemoView
          Left = 1.000000000000000000
          Top = 160.960730000000000000
          Width = 715.842519685039000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'DISCRIMINA'#199#195'O DOS PRODUTOS')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 3.779530000000000000
          Top = 178.078850000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 49.133890000000000000
          Top = 178.078850000000000000
          Width = 294.803340000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 347.716760000000000000
          Top = 178.078850000000000000
          Width = 18.897650000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'UN.')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 370.393940000000000000
          Top = 178.078850000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 423.307360000000000000
          Top = 178.078850000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'UNIT'#193'RIO')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 646.299630000000000000
          Top = 178.078850000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 514.016080000000000000
          Top = 177.858380000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 578.268090000000000000
          Top = 177.858380000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ACR'#201'SCIMO')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 191.196970000000000000
          Width = 716.220472440945000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Shape22: TfrxShapeView
          Left = 525.354670000000000000
          Top = 83.149660000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Shape23: TfrxShapeView
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo47: TfrxMemoView
          Left = -3.779530000000000000
          Top = 2.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DOCUMENTO AUXILIAR DE VENDA - OR'#199'AMENTO')
          ParentFont = False
        end
        object Shape24: TfrxShapeView
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo48: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#195'O '#201' DOCUMENTO FISCAL - N'#195'O '#201' VALIDO COMO RECIBO E COMO '
            'GARANTIA DE MERCADORIA - N'#195'O COMPROVA PAGAMENTO')
          ParentFont = False
        end
        object Shape25: TfrxShapeView
          Top = 64.252010000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo49: TfrxMemoView
          Top = 65.031540000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Identifica'#231#227'o do Estabelecimento Emitente')
          ParentFont = False
        end
        object Shape26: TfrxShapeView
          Top = 83.149660000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 84.929190000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Denomina'#231#227'o:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 90.708720000000000000
          Top = 85.149660000000000000
          Width = 427.086890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 529.134200000000000000
          Top = 85.149660000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
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
          Left = 570.709030000000000000
          Top = 85.370130000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."CNPJ"]')
          ParentFont = False
        end
        object Shape27: TfrxShapeView
          Left = 525.354670000000000000
          Top = 120.944960000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Shape28: TfrxShapeView
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo66: TfrxMemoView
          Top = 102.826840000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Identifica'#231#227'o do Destinat'#225'rio')
          ParentFont = False
        end
        object Shape29: TfrxShapeView
          Top = 120.944960000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo69: TfrxMemoView
          Left = 3.779530000000000000
          Top = 122.724490000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 52.913420000000000000
          Top = 122.944960000000000000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 529.134200000000000000
          Top = 122.944960000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 597.165740000000000000
          Top = 123.165430000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsorcamento_cliente."CPF"]')
          ParentFont = False
        end
        object Shape30: TfrxShapeView
          Left = 340.157700000000000000
          Top = 139.842610000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Shape31: TfrxShapeView
          Top = 139.842610000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo89: TfrxMemoView
          Left = 3.779530000000000000
          Top = 141.622140000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N'#186' do Documento:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 102.047310000000000000
          Top = 141.842610000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '0001+[fsorcamento."CODIGO"]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 343.937230000000000000
          Top = 141.842610000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N'#186' do Documento Fiscal:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 476.220780000000000000
          Top = 142.063080000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'XXXXXX')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = fsorcamento_produto
        DataSetName = 'fsorcamento_produto'
        RowCount = 0
        object Memo78: TfrxMemoView
          Left = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'CODPRODUTO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento_produto."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 49.133890000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataField = 'PRODUTO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento_produto."PRODUTO"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'NUMERACAO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento_produto."NUMERACAO"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 377.953000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'QTDE'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_produto."QTDE"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 442.205010000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'UNITARIO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_produto."UNITARIO"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 642.520100000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_produto."TOTAL"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 514.016080000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'DESCONTO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_produto."DESCONTO"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 578.268090000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'ACRESCIMO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_produto."ACRESCIMO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 136.842610000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Shape14: TfrxShapeView
          Left = 1.000000000000000000
          Top = 4.559060000000000000
          Width = 715.842519685039000000
          Height = 98.267780000000000000
          Fill.BackColor = clBtnFace
          Frame.Color = clWhite
          Frame.Width = 0.100000000000000000
        end
        object Shape15: TfrxShapeView
          Left = 585.827150000000000000
          Top = 11.338589999999900000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Shape16: TfrxShapeView
          Left = 585.827150000000000000
          Top = 34.015770000000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Shape17: TfrxShapeView
          Left = 585.827150000000000000
          Top = 78.370130000000200000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 423.307360000000000000
          Top = 14.118119999999900000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR DOS PRODUTOS - R$:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 423.307360000000000000
          Top = 36.015770000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO - R$:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 423.307360000000000000
          Top = 79.590600000000200000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO OR'#199'AMENTO - R$:')
          ParentFont = False
        end
        object Shape18: TfrxShapeView
          Left = 8.338590000000000000
          Top = 11.338589999999900000
          Width = 408.189240000000000000
          Height = 83.905526460000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Memo56: TfrxMemoView
          Left = 11.338590000000000000
          Top = 15.118119999999900000
          Width = 102.047310000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 11.338590000000000000
          Top = 22.677180000000200000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.015770000000000000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA4'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 11.338590000000000000
          Top = 45.354360000000000000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA5'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA5"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 11.338590000000000000
          Top = 56.692950000000100000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 589.606680000000000000
          Top = 11.338589999999900000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'SUBTOTAL'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 589.606680000000000000
          Top = 34.015770000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'DESCONTO'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."DESCONTO"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 589.606680000000000000
          Top = 77.370130000000200000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."TOTAL"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 1.000000000000000000
          Top = 105.826840000000000000
          Width = 715.842519690000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'CONDI'#199#213'ES DE PAGAMENTO')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 136.063080000000000000
          Top = 122.590026380000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR - R$')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 7.559060000000000000
          Top = 122.590026380000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 135.063080000000000000
          Width = 238.110390000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Shape21: TfrxShapeView
          Left = 585.827150000000000000
          Top = 56.692950000000100000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Memo44: TfrxMemoView
          Left = 423.307360000000000000
          Top = 58.692950000000290000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ACR'#201'SCIMO - R$:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 589.606680000000000000
          Top = 56.692950000000100000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'ACRESCIMO'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."ACRESCIMO"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        DataSet = fsorcamento_receber
        DataSetName = 'fsorcamento_receber'
        RowCount = 0
        object Memo67: TfrxMemoView
          Left = 8.338590000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_VENCIMENTO'
          DataSet = fsorcamento_receber
          DataSetName = 'fsorcamento_receber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento_receber."DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 165.299320000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_ORIGINAL'
          DataSet = fsorcamento_receber
          DataSetName = 'fsorcamento_receber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_receber."VALOR_ORIGINAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 548.031850000000000000
        Width = 718.110700000000000000
        object Memo65: TfrxMemoView
          Left = 1.000000000000000000
          Top = 3.779530000000000000
          Width = 715.842519690000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURAS')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Top = 21.677180000000000000
          Width = 336.378170000000000000
          Height = 56.692950000000000000
        end
        object Shape20: TfrxShapeView
          Left = 343.937230000000000000
          Top = 21.677180000000000000
          Width = 374.173470000000000000
          Height = 56.692950000000000000
        end
        object Memo71: TfrxMemoView
          Left = 3.779530000000000000
          Top = 25.456710000000000000
          Width = 136.063080000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'RESPONS'#193'VEL PELO OR'#199'AMENTO')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 347.716760000000000000
          Top = 25.456710000000000000
          Width = 136.063080000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'AUTORIZA'#199#195'O DO CLIENTE')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 402.732530000000000000
          Top = 70.252010000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 436.748300000000000000
          Top = 70.252010000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 375.275820000000000000
          Top = 70.432450870000000000
          Width = 102.047310000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          Left = 347.716760000000000000
          Top = 59.692950000000000000
          Width = 26.456710000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 536.693260000000000000
          Top = 70.432450870000000000
          Width = 170.078850000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo74: TfrxMemoView
          Left = 480.000310000000000000
          Top = 59.472480000000000000
          Width = 56.692950000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'ASSINATURA:')
          ParentFont = False
        end
        object Shape32: TfrxShapeView
          Top = 83.149660000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo93: TfrxMemoView
          Top = 83.929190000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #201' vedada a autentica'#231#227'o deste documento')
          ParentFont = False
        end
      end
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
    Left = 40
    Top = 104
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
    Left = 8
    Top = 72
  end
  object qrcontasreceber: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 8
    Top = 104
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
    object qrcontasreceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberDATA_PAGAMENTO: TDateField
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
    object qrcontasreceberINSTRUCAO: TWideStringField
      FieldName = 'INSTRUCAO'
      Size = 100
    end
    object qrcontasreceberDIRBOLETO: TWideStringField
      FieldName = 'DIRBOLETO'
      Size = 100
    end
    object qrcontasreceberCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 15
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'fsvenda_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ITEM=ITEM'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'NUMERACAO=NUMERACAO'
      'SERIAL=SERIAL'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'CODGRADE=CODGRADE'
      'CODBARRAS=CODBARRAS'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'TIPO=TIPO')
    DataSet = frmvenda_pdv.qrvenda_produto
    BCDToCurrency = False
    Left = 8
    Top = 40
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
    Left = 40
    Top = 136
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
    Left = 8
    Top = 136
  end
  object dsvenda: TDataSource
    Left = 136
    Top = 80
  end
  object qrRel: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'linha1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha3'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha4'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha5'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha6'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha7'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha8'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha9'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha10'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha11'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha12'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha13'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha14'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'linha15'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha16'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha17'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha18'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha19'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha20'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'linha21'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'valor1'
        DataType = ftFloat
      end
      item
        Name = 'valor2'
        DataType = ftFloat
      end
      item
        Name = 'valor3'
        DataType = ftFloat
      end
      item
        Name = 'valor4'
        DataType = ftFloat
      end
      item
        Name = 'valor5'
        DataType = ftFloat
      end
      item
        Name = 'valor6'
        DataType = ftFloat
      end
      item
        Name = 'valor7'
        DataType = ftFloat
      end
      item
        Name = 'valor8'
        DataType = ftFloat
      end
      item
        Name = 'valor9'
        DataType = ftFloat
      end
      item
        Name = 'valor10'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 30
      end>
    Left = 64
    Top = 8
    Data = {
      0300200006006C696E686131010064000000000006006C696E68613201006400
      0000000006006C696E686133010064000000000006006C696E68613401006400
      0000000006006C696E686135010064000000000006006C696E68613601006400
      0000000006006C696E686137010064000000000006006C696E68613801006400
      0000000006006C696E686139010064000000000007006C696E68613130010064
      000000000007006C696E68613131010064000000000007006C696E6861313201
      0064000000000007006C696E68613133010064000000000007006C696E686131
      340100F4010000000007006C696E68613135010064000000000007006C696E68
      613136010064000000000007006C696E68613137010064000000000007006C69
      6E68613138010064000000000007006C696E6861313901006400000000000700
      6C696E68613230010064000000000007006C696E686132310100640000000000
      060076616C6F72310600000000000000060076616C6F72320600000000000000
      060076616C6F72330600000000000000060076616C6F72340600000000000000
      060076616C6F72350600000000000000060076616C6F72360600000000000000
      060076616C6F72370600000000000000060076616C6F72380600000000000000
      060076616C6F72390600000000000000070076616C6F72313006000000000000
      0004005449504F01001E0000000000000000000000}
    object qrRellinha1: TStringField
      FieldName = 'linha1'
      Size = 100
    end
    object qrRellinha2: TStringField
      FieldName = 'linha2'
      Size = 100
    end
    object qrRellinha3: TStringField
      FieldName = 'linha3'
      Size = 100
    end
    object qrRellinha4: TStringField
      FieldName = 'linha4'
      Size = 100
    end
    object qrRellinha5: TStringField
      FieldName = 'linha5'
      Size = 100
    end
    object qrRellinha6: TStringField
      FieldName = 'linha6'
      Size = 100
    end
    object qrRellinha7: TStringField
      FieldName = 'linha7'
      Size = 100
    end
    object qrRellinha8: TStringField
      FieldName = 'linha8'
      Size = 100
    end
    object qrRellinha9: TStringField
      FieldName = 'linha9'
      Size = 100
    end
    object qrRellinha10: TStringField
      FieldName = 'linha10'
      Size = 100
    end
    object qrRellinha11: TStringField
      FieldName = 'linha11'
      Size = 100
    end
    object qrRellinha12: TStringField
      FieldName = 'linha12'
      Size = 100
    end
    object qrRellinha13: TStringField
      FieldName = 'linha13'
      Size = 100
    end
    object qrRellinha15: TStringField
      FieldName = 'linha15'
      Size = 100
    end
    object qrRellinha16: TStringField
      FieldName = 'linha16'
      Size = 100
    end
    object qrRellinha17: TStringField
      FieldName = 'linha17'
      Size = 100
    end
    object qrRellinha18: TStringField
      FieldName = 'linha18'
      Size = 100
    end
    object qrRellinha19: TStringField
      FieldName = 'linha19'
      Size = 100
    end
    object qrRellinha20: TStringField
      FieldName = 'linha20'
      Size = 100
    end
    object qrRellinha21: TStringField
      FieldName = 'linha21'
      Size = 100
    end
    object qrRelvalor1: TFloatField
      FieldName = 'valor1'
    end
    object qrRelvalor2: TFloatField
      FieldName = 'valor2'
    end
    object qrRelvalor3: TFloatField
      FieldName = 'valor3'
    end
    object qrRelvalor4: TFloatField
      FieldName = 'valor4'
    end
    object qrRelvalor5: TFloatField
      FieldName = 'valor5'
    end
    object qrRelvalor6: TFloatField
      FieldName = 'valor6'
    end
    object qrRelvalor7: TFloatField
      FieldName = 'valor7'
    end
    object qrRelvalor8: TFloatField
      FieldName = 'valor8'
    end
    object qrRelvalor9: TFloatField
      FieldName = 'valor9'
    end
    object qrRelvalor10: TFloatField
      FieldName = 'valor10'
    end
    object qrRellinha14: TStringField
      FieldName = 'linha14'
      Size = 500
    end
    object qrRelTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
  end
  object fxRel: TfrxDBDataset
    UserName = 'fsRel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'linha1=linha1'
      'linha2=linha2'
      'linha3=linha3'
      'linha4=linha4'
      'linha5=linha5'
      'linha6=linha6'
      'linha7=linha7'
      'linha8=linha8'
      'linha9=linha9'
      'linha10=linha10'
      'linha11=linha11'
      'linha12=linha12'
      'linha13=linha13'
      'linha15=linha15'
      'linha16=linha16'
      'linha17=linha17'
      'linha18=linha18'
      'linha19=linha19'
      'linha20=linha20'
      'linha21=linha21'
      'valor1=valor1'
      'valor2=valor2'
      'valor3=valor3'
      'valor4=valor4'
      'valor5=valor5'
      'valor6=valor6'
      'valor7=valor7'
      'valor8=valor8'
      'valor9=valor9'
      'valor10=valor10'
      'linha14=linha14'
      'TIPO=TIPO')
    DataSet = qrRel
    BCDToCurrency = False
    Left = 96
    Top = 8
  end
  object fsSimples_produto: TfrxDBDataset
    UserName = 'fsSimples_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ITEM=Item'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=produto'
      'NUMERACAO=NUMERACAO'
      'QTDE=qtde'
      'UNITARIO=unitario'
      'TOTAL=total'
      'MIX=MIX'
      'SERIAL=SERIAL'
      'CODGRADE=CODGRADE'
      'CODBARRAS=CODBARRAS'
      'DESCONTO=desconto'
      'ACRESCIMO=acrescimo'
      'TIPO=TIPO'
      'TERMINAL=TERMINAL')
    DataSet = frmvenda_pdv.qrvenda_produto
    BCDToCurrency = False
    Left = 104
    Top = 80
  end
  object fsorcamento_cliente: TfrxDBDataset
    UserName = 'fsorcamento_cliente'
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
      'CODUSUARIO=CODUSUARIO'
      'SEXO=SEXO'
      'HISTORICO=HISTORICO'
      'PREVISAO=PREVISAO')
    DataSet = frmmodulo.qrcliente
    BCDToCurrency = False
    Left = 184
    Top = 8
  end
  object fsorcamento_receber: TfrxDBDataset
    UserName = 'fsorcamento_receber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDA=CODVENDA'
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
      'NOSSONUMERO=NOSSONUMERO'
      'CODREGIAO=CODREGIAO'
      'CODCEDENTE=CODCEDENTE')
    DataSet = frmmodulo.qrorcamento_receber
    BCDToCurrency = False
    Left = 216
    Top = 8
  end
  object fsorcamento_produto: TfrxDBDataset
    UserName = 'fsorcamento_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ITEM=ITEM'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'NUMERACAO=NUMERACAO'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'MIX=MIX'
      'SERIAL=SERIAL'
      'CODGRADE=CODGRADE'
      'CODBARRAS=CODBARRAS'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'TIPO=TIPO'
      'TERMINAL=TERMINAL')
    DataSet = frmvenda_pdv.qrvenda_produto
    BCDToCurrency = False
    Left = 248
    Top = 8
  end
  object fsorcamento: TfrxDBDataset
    UserName = 'fsorcamento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODCAIXA=CODCAIXA'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA=DATA'
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
      'TOTAL=TOTAL'
      'CUPOM_FISCAL=CUPOM_FISCAL'
      'NUMERO_CUPOM_FISCAL=NUMERO_CUPOM_FISCAL'
      'RETIRADO=RETIRADO'
      'TIPO=TIPO'
      'MEIO_CONVENIO=MEIO_CONVENIO')
    DataSet = frmmodulo.qrorcamento
    BCDToCurrency = False
    Left = 280
    Top = 8
  end
end
