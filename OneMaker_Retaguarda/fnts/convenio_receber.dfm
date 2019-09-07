object frmconvenio_receber: Tfrmconvenio_receber
  Left = 457
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CONTAS RECEBER | Conv'#234'nio'
  ClientHeight = 493
  ClientWidth = 784
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -9
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 12
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 41
    ParentColor = True
    ColorHighLight = 5460819
    ColorShadow = 5460819
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = 36
    ExplicitWidth = 782
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 57
      Height = 13
      Caption = 'CONV'#202'NIO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 440
      Top = 16
      Width = 45
      Height = 13
      Caption = 'C'#211'DIGO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 592
      Top = 16
      Width = 59
      Height = 13
      Caption = 'DATA BASE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object locconvenio: TEdit
      Left = 71
      Top = 12
      Width = 337
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = locconvenioKeyPress
    end
    object Edit2: TEdit
      Left = 489
      Top = 11
      Width = 73
      Height = 21
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edata: TJvDateEdit
      Left = 653
      Top = 12
      Width = 103
      Height = 21
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ShowNullDate = False
      TabOrder = 2
      OnKeyPress = edataKeyPress
    end
  end
  object Button1: TButton
    Left = 555
    Top = 86
    Width = 209
    Height = 26
    Caption = 'FILTRAR - PRODUTOS E PARCELAS'
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 0
    Top = 327
    Width = 121
    Height = 25
    Caption = 'FECHAMENTO'
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CCA8D50FFFFFFFFFFFFB7753DA66030
      A25B2D9C552BCFA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59E886136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3ECE9254
      FFFFFFFFFFFFBD7C41B06C39AC6737A86232B16E3BF8F6F5FFFFFFE0D7CCC8B1
      9AC5AE9A9C7758663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FD39857FFFFFFFFFFFFCD904EC28144BF7E42B36F3BAE69
      35BC7C48F1EEEBFBFAF9BF957582431D783F226F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853ED89D55FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFBD7B3FB6733CAF6B39B8763FE8E0D6FFFFFFCDB29785461C7B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EDCA153FFFFFFFFFFFFE4B57BE1AC69E0AA69C1803FBF7E41C38344BA7941B0
      6C38E8E0D7FFFFFFAE794F87461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ADFA551FFFFFFFFFFFFE8BF88E5B67CE4B67CD7
      9C54E0AB71FFFFFFEADED0C3854CE5D9CBFFFFFFBE8E66904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38E0A652FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE8BF8DC58442E8D3B9FFFFFFFFFFFFFFFFFFE1CFBA
      A45F2E98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D29237D8993FD8993ED59741D39442D19344C98942C17F3EBC7A3E
      C28142C7894EB8753DA96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    TabOrder = 2
    Visible = False
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 0
    Top = 343
    Width = 121
    Height = 26
    Caption = 'EXTRATO'
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      7940207D4A266F3D246537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
      A25B2D9C552B954F27AF7A52EDEAE5FFFFFFFAF9F8C4B3A1693B256136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
      D1975CFFFFFFEEE8E1B06C39AC6737A86232A45E2EECE8E1FAF9F8A36C43CDBA
      A5FFFFFFA68669663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
      35A76131A86431975129C49C7DFFFFFFBFA1896F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
      FFFFFFFFFFFFFFE6C29BB6733CAF6B39AA6533E1D1C0FEFEFDE4DDD5945C327B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EB7743CB16D39D3
      A276F8F6F4E3D9CD934F2687461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
      B37CC38241E8CCABEADFD2B8763EE4D7C7FFFFFFAC6E40904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542DEAA73FAF9F7FFFFFFFFFFFFE0CDB7
      A05A2C98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
      BF7E40C7894EBB7A42A96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    TabOrder = 3
    Visible = False
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 136
    Top = 343
    Width = 121
    Height = 25
    Caption = 'FECHAR'
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFF406B00ECE3E0ECE2DFEBE2
      DFECE2DFECE2DFECE2DFECE3E0ECE2DFEBE2DFECE2DFECE3E0ECE3E0ECE2DFEB
      E2DFEBE2DFECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E0539300538E004F87004C8000487900457200416C003F65003C
      61003B5D003A58003A5300395200374D00354B00354A00354A00354B00374E00
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF559700539200528D004F86004C
      7F00487700457000426B003F64003C5F003B5A003A5500385100374D00364B00
      354800344707354800354A00EBE2DF406B00FFFFFF00FFFFFF406B00ECE2DF5A
      9E00589900559500538F005089004D8100487900477400466E00476E003C6100
      3B5B003B5600395200374E003B5300354800344800354A00EBE1DE406B00FFFF
      FF00FFFFFF416C00ECE3E05EA300A2C36EFFFFFFFFFFFFFFFFFFFFFFFF699900
      9CB866FBFBFAFFFFFFD8DFCE5174003C5E008D9E65F4F4F2FFFFFFC8CEBB3B54
      00364B00EBE2DF416C00FFFFFF00FFFFFF406B00ECE2DF63A800A3C572FFFFFF
      BED39BAAC87BA9C6796EA400FDFDFCD1DDC27EA324FAFBFAB1C28C608200FFFF
      FFD3D9C7AAB58DFFFFFF92A071374E00EBE2DF406B00FFFFFF00FFFFFF416C00
      ECE3E068AD00A5C876FFFFFFA0C46D83B6327EB21B65A60082B22178AB00A6C2
      74FFFFFFC1D1A491AC59FFFFFF6A89283C5D009BAA765B7323385200EBE1DE41
      6C00FFFFFF00FFFFFF406B00ECE3E070B200A7C979FFFFFFFFFFFFFFFFFFEAF0
      E56AAE00A0C46DF4F8F4FFFFFFF3F6F275A400ADC481FFFFFF5C82003F64003C
      5E003A59003B5800EBE2DF406B00FFFFFF00FFFFFF406B00ECE3E074B426A7CA
      7AFFFFFF9DC56B85BA4683BA4372B31DF5F8F4E4ECDD9CC16598BD5B6FA4009A
      BA60FFFFFF87A545487200AFBE8C6C892E3C5E00ECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E077B736A7C97AFFFFFFE5EDDEDDE9D2DDE9D17EB83CD9E6CBE6
      EDDFCADBB0FFFFFF94BB54619B00F4F6F3FAFBFAEDEFE9FFFFFF7895383E6400
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF78B73A95C160BBD498BBD498BB
      D498BAD4987CB73982B93EB4CF8BC7D9AAA3C6725EA100589A006B9F00B3C98B
      C0CFA084A440457000436D00EBE2DF406B00FFFFFF00FFFFFF416C00ECE3E078
      B83B7BB93F7BB93F7AB83D79B83A78B73675B52C72B3186DB00067AD0063A800
      5FA2005A9D00559500518D004E84004B7E00487800467400EBE2DF416C00FFFF
      FF00FFFFFF406B00ECE2DF7AB83D7BB93F7AB83D7AB83C78B73676B62F73B422
      71B2006CAF0067AC0064A8005FA3005C9E00579800549100518C004E84004B7F
      004A7C00ECE2DF406B00FFFFFF00FFFFFF406B00ECE2DF7AB83D7AB83E7AB83C
      79B73877B63275B52A72B3186FB1006BAE0067AC0064A80060A4005DA1005A9C
      00569600539100518C004F86004E8300EBE2DF406B00FFFFFF00FFFFFF406B00
      EBE2DFEBE2DFEBE1DEEBE2DFEBE2DFEBE2DFEBE2DFEBE2DFEBE1DEEBE2DFEBE2
      DFEBE2DFEBE2DFEBE1DEEBE1DEEBE2DFEBE2DFEBE1DEEBE2DFEBE1DEEBE1DE40
      6B00FFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    TabOrder = 4
    Visible = False
    OnClick = BitBtn3Click
  end
  object PageView1: TPageView
    Left = 0
    Top = 46
    Width = 782
    Height = 388
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    BackgroundColor = clWhite
    BackgroundKind = bkSolid
    Color = clWhite
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ParentColor = False
    ShowTabs = True
    Spacing = 0
    TabHeight = 17
    TabOrder = 5
    TabStyle = tsClassic
    TopIndent = 3
    object PageSheet1: TPageSheet
      Left = 0
      Top = 21
      Width = 782
      Height = 367
      Caption = ' RESUMO POR CLIENTE '
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = 14085624
      TabWidth = 0
      TransparentColor = clNone
      object Grid: TcxGrid
        Left = 0
        Top = 0
        Width = 782
        Height = 367
        Align = alClient
        TabOrder = 0
        object grid_qrcliente: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dscliente
          DataController.KeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'TOTAL'
              Column = grid_qrclienteTOTAL
            end
            item
              Format = '##0'
              Kind = skCount
              FieldName = 'CODIGO'
              Column = grid_qrclienteCODIGO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Header = cxStyle34
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object grid_qrclienteCODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
            Options.Editing = False
            Width = 61
          end
          object grid_qrclienteNOME: TcxGridDBColumn
            Caption = 'CLIENTE CONVENIADO'
            DataBinding.FieldName = 'NOME'
            Options.Editing = False
            Width = 581
          end
          object grid_qrclienteTOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'TOTAL'
            Options.Filtering = False
            Width = 96
          end
        end
        object cvPeople: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto
          DataController.DetailKeyFieldNames = 'FilmID'
          DataController.KeyFieldNames = 'ID'
          DataController.MasterKeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          Styles.StyleSheet = GridCardViewStyleSheetDevExpress
          object cvPeopleName: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Name'
            Kind = rkCaption
            Position.BeginsLayer = True
          end
          object cvPeoplePersonLineID: TcxGridDBCardViewRow
            Caption = 'Occupation'
            DataBinding.FieldName = 'PersonLineID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Position.BeginsLayer = True
          end
          object cvPeopleFIRSTNAME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FIRSTNAME'
            Position.BeginsLayer = True
          end
          object cvPeopleSECONDNAME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'SECONDNAME'
            Position.BeginsLayer = True
          end
          object cvPeopleNICKNAME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'NICKNAME'
            Position.BeginsLayer = True
          end
          object cvPeopleBIRTHNAME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIRTHNAME'
            Position.BeginsLayer = True
          end
          object cvPeopleDATEOFBIRTH: TcxGridDBCardViewRow
            DataBinding.FieldName = 'DATEOFBIRTH'
            Position.BeginsLayer = True
          end
          object cvPeopleLOCATIONOFBIRTH: TcxGridDBCardViewRow
            DataBinding.FieldName = 'LOCATIONOFBIRTH'
            Position.BeginsLayer = True
          end
          object cvPeopleBIOGRAPHY: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIOGRAPHY'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Position.BeginsLayer = True
          end
          object cvPeopleHOMEPAGE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'HOMEPAGE'
            Position.BeginsLayer = True
          end
          object cvPeopleID: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cvPeopleFilmID: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FilmID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cvPeopleBIRTHCOUNTRY: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIRTHCOUNTRY'
            Visible = False
            Position.BeginsLayer = True
          end
          object cvPeopleGender: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Gender'
            Visible = False
            Position.BeginsLayer = True
          end
        end
        object grid_qrproduto: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto
          DataController.DetailKeyFieldNames = 'CODCLIENTE'
          DataController.MasterKeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle38
          Styles.Content = cxStyle39
          Styles.ContentEven = cxStyle40
          Styles.ContentOdd = cxStyle41
          Styles.FilterBox = cxStyle43
          Styles.IncSearch = cxStyle49
          Styles.Footer = cxStyle44
          Styles.Group = cxStyle45
          Styles.GroupByBox = cxStyle46
          Styles.Header = cxStyle47
          Styles.Inactive = cxStyle48
          Styles.Indicator = cxStyle50
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object grid_qrprodutoCODPRODUTO: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'CODPRODUTO'
            Width = 73
          end
          object grid_qrprodutoColumn1: TcxGridDBColumn
            Caption = 'PRODUTO'
            DataBinding.FieldName = 'PRODUTO_1'
            HeaderAlignmentHorz = taCenter
            Width = 209
          end
          object grid_qrprodutoQTDE: TcxGridDBColumn
            Caption = 'QTDE.'
            DataBinding.FieldName = 'QTDE'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 56
          end
          object grid_qrprodutoUNIDADE: TcxGridDBColumn
            Caption = 'UND.'
            DataBinding.FieldName = 'UNIDADE'
            Options.Filtering = False
            Width = 34
          end
          object grid_qrprodutoUNITARIO: TcxGridDBColumn
            Caption = 'UNIT'#193'RIO-R$'
            DataBinding.FieldName = 'UNITARIO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 91
          end
          object grid_qrprodutoDESCONTO: TcxGridDBColumn
            Caption = 'DESC-R$'
            DataBinding.FieldName = 'DESCONTO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
          object grid_qrprodutoACRESCIMO: TcxGridDBColumn
            Caption = 'ACRESC.-R$'
            DataBinding.FieldName = 'ACRESCIMO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
          object grid_qrprodutoTOTAL: TcxGridDBColumn
            Caption = 'TOTAL-R$'
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
        end
        object cvPhotos: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DetailKeyFieldNames = 'FILMID'
          DataController.KeyFieldNames = 'ID'
          DataController.MasterKeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          OptionsView.CellAutoHeight = True
          Styles.StyleSheet = GridCardViewStyleSheetDevExpress
          object cvPhotosID: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cvPhotosFILMID: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FILMID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cvPhotosSCREEN: TcxGridDBCardViewRow
            DataBinding.FieldName = 'SCREEN'
            PropertiesClassName = 'TcxImageProperties'
            Properties.FitMode = ifmProportionalStretch
            Properties.GraphicClassName = 'TdxSmartImage'
            Options.ShowCaption = False
            Position.BeginsLayer = True
          end
          object cvPhotosICON: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ICON'
            Visible = False
            Position.BeginsLayer = True
          end
        end
        object grid_qrreceber: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsreceber
          DataController.DetailKeyFieldNames = 'CODCLIENTE'
          DataController.MasterKeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle30
          Styles.Content = cxStyle31
          Styles.ContentEven = cxStyle32
          Styles.ContentOdd = cxStyle33
          object grid_qrreceberColumn1: TcxGridDBColumn
            Caption = 'VENDA/N'#186
            DataBinding.FieldName = 'CODIGO'
          end
          object grid_qrreceberDATA_EMISSAO: TcxGridDBColumn
            Caption = 'DATA COMPRA'
            DataBinding.FieldName = 'DATA_EMISSAO'
            Width = 110
          end
          object grid_qrreceberDATA_VENCIMENTO: TcxGridDBColumn
            Caption = 'DATA VENCIMENTO'
            DataBinding.FieldName = 'DATA_VENCIMENTO'
            Width = 141
          end
          object grid_qrreceberVALOR_ATUAL: TcxGridDBColumn
            Caption = 'VALOR - R$'
            DataBinding.FieldName = 'VALOR_ATUAL'
            Options.Editing = False
            Options.Filtering = False
            Width = 91
          end
        end
        object grid_produto_venda2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto2
          DataController.DetailKeyFieldNames = 'CODNOTA'
          DataController.MasterKeyFieldNames = 'CODVENDA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle35
          Styles.Content = cxStyle36
          Styles.Header = cxStyle37
          object grid_produto_venda2CODPRODUTO: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'CODPRODUTO'
            Options.Filtering = False
            Width = 55
          end
          object grid_produto_venda2Column1: TcxGridDBColumn
            Caption = 'PRODUTO'
            DataBinding.FieldName = 'PRODUTO_1'
            Options.Filtering = False
            Width = 201
          end
          object grid_produto_venda2QTDE: TcxGridDBColumn
            Caption = 'QTDE.'
            DataBinding.FieldName = 'QTDE'
            Options.Filtering = False
            Width = 50
          end
          object grid_produto_venda2UNITARIO: TcxGridDBColumn
            Caption = 'UNIT'#193'RIO-R$'
            DataBinding.FieldName = 'UNITARIO'
            Options.Filtering = False
            Width = 86
          end
          object grid_produto_venda2UNIDADE: TcxGridDBColumn
            Caption = 'UND.'
            DataBinding.FieldName = 'UNIDADE'
            Options.Filtering = False
            Width = 43
          end
          object grid_produto_venda2DESCONTO: TcxGridDBColumn
            Caption = 'DESC.-R$'
            DataBinding.FieldName = 'DESCONTO'
            Options.Filtering = False
          end
          object grid_produto_venda2ACRESCIMO: TcxGridDBColumn
            Caption = 'ACRESC.-R$'
            DataBinding.FieldName = 'ACRESCIMO'
            Options.Filtering = False
          end
          object grid_produto_venda2TOTAL: TcxGridDBColumn
            Caption = 'TOTAL-R$'
            DataBinding.FieldName = 'TOTAL'
            Options.Filtering = False
          end
        end
        object grid_cliente: TcxGridLevel
          GridView = grid_qrcliente
          Options.DetailTabsPosition = dtpTop
          object grid_receber: TcxGridLevel
            Caption = 'VENDAS/PRESTA'#199#213'ES'
            GridView = grid_qrreceber
            object GRID_PRODUTO_VENDA: TcxGridLevel
              GridView = grid_produto_venda2
            end
          end
          object grid_produto: TcxGridLevel
            Caption = 'PRODUTOS - TODOS'
            GridView = grid_qrproduto
          end
        end
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 21
      Width = 782
      Height = 367
      Caption = 'RELA'#199#195'O DE PRODUTOS'
      Color = clBtnFace
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      ParentColor = False
      TabColor = 15851719
      TabWidth = 0
      TransparentColor = clNone
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 782
        Height = 367
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto3
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'TOTAL'
              Column = cxGridDBTableView1TOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Header = cxStyle34
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object cxGridDBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'DATA'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object cxGridDBTableView1CODNOTA: TcxGridDBColumn
            Caption = 'VENDA'
            DataBinding.FieldName = 'CODNOTA'
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object cxGridDBTableView1CODPRODUTO: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'CODPRODUTO'
            HeaderAlignmentHorz = taCenter
            Width = 61
          end
          object cxGridDBTableView1PRODUTO: TcxGridDBColumn
            Caption = 'PRODUTO'
            DataBinding.FieldName = 'PRODUTO_1'
            HeaderAlignmentHorz = taCenter
            Width = 173
          end
          object cxGridDBTableView1QTDE: TcxGridDBColumn
            Caption = 'QTDE.'
            DataBinding.FieldName = 'QTDE'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 48
          end
          object cxGridDBTableView1UNIDADE: TcxGridDBColumn
            Caption = 'UN.'
            DataBinding.FieldName = 'UNIDADE'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 28
          end
          object cxGridDBTableView1UNITARIO: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'UNITARIO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 60
          end
          object cxGridDBTableView1DESCONTO: TcxGridDBColumn
            Caption = 'DESC-R$'
            DataBinding.FieldName = 'DESCONTO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 53
          end
          object cxGridDBTableView1TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 75
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'CLIENTE'
            DataBinding.FieldName = 'NOME'
            Options.Filtering = False
            Width = 125
          end
        end
        object cxGridDBCardView1: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto
          DataController.DetailKeyFieldNames = 'FilmID'
          DataController.KeyFieldNames = 'ID'
          DataController.MasterKeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          Styles.StyleSheet = GridCardViewStyleSheetDevExpress
          object cxGridDBCardViewRow1: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Name'
            Kind = rkCaption
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow2: TcxGridDBCardViewRow
            Caption = 'Occupation'
            DataBinding.FieldName = 'PersonLineID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow3: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FIRSTNAME'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow4: TcxGridDBCardViewRow
            DataBinding.FieldName = 'SECONDNAME'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow5: TcxGridDBCardViewRow
            DataBinding.FieldName = 'NICKNAME'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow6: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIRTHNAME'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow7: TcxGridDBCardViewRow
            DataBinding.FieldName = 'DATEOFBIRTH'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow8: TcxGridDBCardViewRow
            DataBinding.FieldName = 'LOCATIONOFBIRTH'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow9: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIOGRAPHY'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow10: TcxGridDBCardViewRow
            DataBinding.FieldName = 'HOMEPAGE'
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow11: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow12: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FilmID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow13: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIRTHCOUNTRY'
            Visible = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow14: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Gender'
            Visible = False
            Position.BeginsLayer = True
          end
        end
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto
          DataController.DetailKeyFieldNames = 'CODCLIENTE'
          DataController.MasterKeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle38
          Styles.Content = cxStyle39
          Styles.ContentEven = cxStyle40
          Styles.ContentOdd = cxStyle41
          Styles.FilterBox = cxStyle43
          Styles.IncSearch = cxStyle49
          Styles.Footer = cxStyle44
          Styles.Group = cxStyle45
          Styles.GroupByBox = cxStyle46
          Styles.Header = cxStyle47
          Styles.Inactive = cxStyle48
          Styles.Indicator = cxStyle50
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'CODPRODUTO'
            Width = 73
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'PRODUTO'
            HeaderAlignmentHorz = taCenter
            Width = 209
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'QTDE.'
            DataBinding.FieldName = 'QTDE'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 56
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'UND.'
            DataBinding.FieldName = 'UNIDADE'
            Options.Filtering = False
            Width = 34
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'UNIT'#193'RIO-R$'
            DataBinding.FieldName = 'UNITARIO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 91
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'DESC-R$'
            DataBinding.FieldName = 'DESCONTO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'ACRESC.-R$'
            DataBinding.FieldName = 'ACRESCIMO'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'TOTAL-R$'
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
          end
        end
        object cxGridDBCardView2: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DetailKeyFieldNames = 'FILMID'
          DataController.KeyFieldNames = 'ID'
          DataController.MasterKeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          OptionsView.CellAutoHeight = True
          Styles.StyleSheet = GridCardViewStyleSheetDevExpress
          object cxGridDBCardViewRow15: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow16: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FILMID'
            Visible = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow17: TcxGridDBCardViewRow
            DataBinding.FieldName = 'SCREEN'
            PropertiesClassName = 'TcxImageProperties'
            Properties.FitMode = ifmProportionalStretch
            Properties.GraphicClassName = 'TdxSmartImage'
            Options.ShowCaption = False
            Position.BeginsLayer = True
          end
          object cxGridDBCardViewRow18: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ICON'
            Visible = False
            Position.BeginsLayer = True
          end
        end
        object cxGridDBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsreceber
          DataController.DetailKeyFieldNames = 'CODCLIENTE'
          DataController.MasterKeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle30
          Styles.Content = cxStyle31
          Styles.ContentEven = cxStyle32
          Styles.ContentOdd = cxStyle33
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'VENDA/N'#186
            DataBinding.FieldName = 'CODIGO'
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'DATA COMPRA'
            DataBinding.FieldName = 'DATA_EMISSAO'
            Width = 110
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'DATA VENCIMENTO'
            DataBinding.FieldName = 'DATA_VENCIMENTO'
            Width = 141
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'VALOR - R$'
            DataBinding.FieldName = 'VALOR_ATUAL'
            Options.Editing = False
            Options.Filtering = False
            Width = 91
          end
        end
        object cxGridDBTableView4: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsproduto2
          DataController.DetailKeyFieldNames = 'CODNOTA'
          DataController.MasterKeyFieldNames = 'CODVENDA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle35
          Styles.Content = cxStyle36
          Styles.Header = cxStyle37
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'CODPRODUTO'
            Options.Filtering = False
            Width = 55
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = 'PRODUTO'
            Options.Filtering = False
            Width = 201
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'QTDE.'
            DataBinding.FieldName = 'QTDE'
            Options.Filtering = False
            Width = 50
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'UNIT'#193'RIO-R$'
            DataBinding.FieldName = 'UNITARIO'
            Options.Filtering = False
            Width = 86
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'UND.'
            DataBinding.FieldName = 'UNIDADE'
            Options.Filtering = False
            Width = 43
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'DESC.-R$'
            DataBinding.FieldName = 'DESCONTO'
            Options.Filtering = False
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'ACRESC.-R$'
            DataBinding.FieldName = 'ACRESCIMO'
            Options.Filtering = False
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'TOTAL-R$'
            DataBinding.FieldName = 'TOTAL'
            Options.Filtering = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
          Options.DetailTabsPosition = dtpTop
        end
      end
    end
  end
  object BitBtn4: TBitBtn
    Left = 215
    Top = 198
    Width = 121
    Height = 26
    Caption = 'RESUMO'
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
      A25B2D9C552B954F278E492386461B7E421DD8CEC3F1EEEC6437266136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
      D1975CFFFFFFEEE8E1B06C39AC6737A86232B77845DAC4AAD7C2ABD3C0ABF2F0
      EEFAFAF9B99F88663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DCA91
      5AFFFFFFF2EEEBE8E2DBFAF9F8FDFDFDCFC0AE6F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
      FFFFFFFFFFFFFFE6C29BB9773EE8DBCCE8DFD5A96431DFD2C3F2EFEC83441C7B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EC18142F1EDE8E2
      CEB7E3D6C7F2EFEC8F4B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
      B37CC38241BB793DC98C50FBFAF8FFFFFFF2EFEC975029904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542BC7A3DB7753CD49F6CFFFFFFF2EFEC
      9E572B98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
      B9773CB5723CC3844CBF814AA45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    TabOrder = 6
    Visible = False
    OnClick = BitBtn4Click
  end
  object bincluir: TAdvGlowButton
    Left = 6
    Top = 303
    Width = 119
    Height = 24
    Caption = 'F2 | Fechamento'
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
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002E14944415478DA
      62FCFFFF3F032500208058D0057AF6942AFFFDF737EACFDFBF717FFEFE91F8F3
      EF2FC3EFBF7F5E00F98B80F4B289E18BEF22AB070820466417F4EC2909FEF3F7
      DF645931654975097D064E561E865FFF7E31BCFAF28CE1F89D7D0CAFDEBC7EFE
      E7CF9FDC5971ABD7C2F4000410DC0088E6BF0B4D54ECB955C57419EE7EBAC5F0
      E2FB5386DFFF7E33F0B3F13388714A331CBDB593E1EA9DEB5F812E8B5F92B219
      6C084000810DE8DE5DA20474F66103252B2955713D8683CF77317CFBFA8DE1F7
      FF3F0C1C1CEC0CFF81F0E7BF9F0C9A7C3A0CC76EEE61B879FFEEB3DF7FFED8AE
      CBDE7D0F20809840A60035C708F08B4A298868301C79B197E1FBEF1F0CDF7E7F
      672834AE66C8D42E61F8F0F33DC3BB8F2F188E3F3FC060A1E6C8C0C8F6570A18
      1E3120BD0001043600E8F458793175861B1FAF30BCF9F486E1D3B74F0C1FBEBE
      8787CDD3FB8F187EFFFCCAF0F5F35B86279FEE3358AB5B8302361624071040E0
      580072A43958B9181E7EBE0F0CB49F0C9566AD283133357809982EDC19C5F0F4
      C33D061D6113B01E90184000415DF087E1EBEFCF0C9F7F7D62F8CDFC1B6FBCFF
      FFFB8F811118264003C07C800082B9E0E9D3F70F5578D879183E7C7FC7507828
      85E1EBAB4F0CB34256C16D06DBC6C8C420C527C7F0E8D57D90A54F41620001C4
      043560F185FB2719E4B81419FEFFFEC9C008345D48901BC5E67F7FFF3330FD63
      6490E55364D876712F580F481C2080602E58F2EF1773FAC93B07A42C955C188E
      3EDCC1F0E7DF1FB0CDFFFF821DCEC0C6C4CC60AFE4C9B0E3C216868F9FBF3C03
      063C38600002089E909216040113D29F85D212E2DCB6EA2E0C8F3FDE0706D87D
      86FFFFFE31C8082A31C8F0C9336CBFB899E1E4F52B5F81C93BFE7CC335704202
      082094A41C39CB2B18E89AC97F99FF48DA6BDA3088F349822C6778FCFE11C3CE
      F3FB183E7DF9F61CA83917A61904000288113D37FA4F7652061A12F51B9E99FE
      00BDF8179C99FEFEFBB3EC7CC37594CC0410408C94666780000300708A7F01A2
      891CF10000000049454E44AE426082}
    TabOrder = 7
    Visible = False
    OnClick = BitBtn1Click
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object bitbtn5: TAdvGlowButton
    Left = 124
    Top = 304
    Width = 103
    Height = 24
    Caption = 'F3 | Extrato'
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
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002B64944415478DA
      62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
      B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
      44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
      CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
      1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
      6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
      40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
      03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
      EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
      C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
      1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
      B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
      7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
      F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
      2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
      E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
      0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
      01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
      F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
      194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
      62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
      13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
      AE426082}
    TabOrder = 8
    Visible = False
    OnClick = BitBtn2Click
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 233
    Top = 304
    Width = 103
    Height = 24
    Caption = 'F4 | Resumo'
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
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002B64944415478DA
      62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
      B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
      44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
      CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
      1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
      6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
      40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
      03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
      EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
      C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
      1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
      B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
      7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
      F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
      2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
      E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
      0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
      01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
      F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
      194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
      62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
      13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
      AE426082}
    TabOrder = 9
    Visible = False
    OnClick = BitBtn4Click
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object bfechar: TAdvGlowButton
    Left = 689
    Top = 304
    Width = 75
    Height = 24
    Caption = 'ESC | Sair'
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
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000467414D410000AFC837058AE90000001974455874536F6674776172
      650041646F626520496D616765526561647971C9653C000002A04944415478DA
      62FCFFFF3F032500208058D005FEB6652BFFFBFF3FEAFFBF7F71FFFEFD930062
      06207E01C48BFEFDFDB74CA063D15D64F50001C488EC82DFAD59C1FFFFFD9FFC
      95914D924D598581858F0F22FEE923C3B7EBD71998BE7D7CFEEFDFDF5CB1BE95
      6B617A0002086EC0AF964CA0E67F0B7F8AC97173A9A932FC7DF690E11F108300
      93A41C0393943CC3A76BD7197EDCBAFCF5DFDFBFF1B2D336800D010820B0013F
      9B3294804E3CFC4B424E8A5B4D8DE1D7D15D608D5CB573C0F497FA2406867FFF
      19D86CDD183E5EB9CAF0E5FAF9677FFFFDB35599BBFD1E40003181FDFDF74FCC
      3726768466A0A140AFC0BDF6EFCF3F86BF7FFE337CDBBB9D814F438BE13F8FB0
      D49FDFBF63407200010436E0CF9F3FB1ECAA40673FB90FD6F8EF2FD000A02664
      03FEFDFECBF0F7D73F869FF7EE32F06BE830FCFEFD3B16240710403003A45905
      0418FE3CBE0FD608B3111E33408D7F7F43C47FDCB9CBC02A20C4F0E7F71F6990
      1C4000410CF8FD87E13FD0569846988DBF6F5D4178E137D490BF409701F19F3F
      BFC17200010475C1EFA73FDFBC0386B63CDCA920C5DF8FEC65F8B26139DCF67F
      409A455681E1DB9B37204B9F82F4020410CC058B3F5CB9C4C02CA500570CA2F9
      92F219780222C11AFF82C48036B32B2831BCBA701AE4EDC520BD000104360018
      204B7EBD7DF6ECFDD52B0C5C4E9E7043DE4DEE62783BB913AC11C417F0F26178
      7DE502C3FBC7B79F010D5802D20B1040F084742DD639189840160A689B710B02
      43F9C7FD7BE00003C9B32B2A81F11BA0E647C7777D05A69978A77D37C0090920
      805092F28550EB60600299CC21242529AC63C4C02E20084A120C3FDEBF637879
      FE24C3FB27778049F95FAECB819BF0A40C10408CE8B9F1A49F893250511430B4
      8199E92F6A66FAF76F99EBC1DB28990920801829CDCE0001060095D1AF4C86CE
      FBDD0000000049454E44AE426082}
    TabOrder = 10
    Visible = False
    OnClick = BitBtn3Click
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 436
    Width = 784
    Height = 57
    Align = alBottom
    BorderOuter = fsNone
    Color = 3355443
    TabOrder = 11
    ExplicitTop = 629
    ExplicitWidth = 1237
    object bgravar: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 89
      Height = 57
      Align = alLeft
      Caption = 'Fechamento'
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
        786D702E6969643A414138323042443232433837313145344131464238373045
        42434346363742382220786D704D4D3A446F63756D656E7449443D22786D702E
        6469643A41413832304244333243383731314534413146423837304542434346
        36374238223E203C786D704D4D3A4465726976656446726F6D2073745265663A
        696E7374616E636549443D22786D702E6969643A414138323042443032433837
        3131453441314642383730454243434636374238222073745265663A646F6375
        6D656E7449443D22786D702E6469643A41413832304244313243383731314534
        41314642383730454243434636374238222F3E203C2F7264663A446573637269
        7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C
        3F787061636B657420656E643D2272223F3E6E0479D8000003684944415478DA
        EC573D681451109E79EFDDEEDE26B953121245883195A2AD1214C14ADB60136D
        442CEC044114B1B2129B80A0BDA241B409B636C642B489C4CA52D42E856272B9
        CDE56EDF3E67DEEDFDACD9CDEDA5482C32306433FBBE99EFCD9B7D3387E79F2E
        02080150AF817EF318A0160028055D3243FA807418FA935FA4F7485FB72D6108
        E0F920A76F00381E401481B02FE8015C1FC4E969002901B46E417CD259D249D2
        729F3A19637DEB897D926F1B8362D998249DADEA10F0C809108810BD7FD50238
        B13316435A65BAA498B16B13BF1B8CFF32D6215F0167599CBB0438711C6063BD
        0D48E49A5FF0025E189330741C1A0CFBB5C1A7206C2C1359914E010D14DC3205
        FB4C9812206A4ABBC90ABE99401709498070E16568A8364048BB3BA1C39F387E
        AC8263133663C9D8CDA3D45F3FAE1026B29848034A152AF20529C1BB09F03915
        1224E8384CFD62F9CFDBE7C8994513E1FEA327C78898306EB17D86090E54BC61
        698431020CBD4781FB2E5C19265FCA707127A5411A207D0599558EB2007ABD52
        2267481C8CF0FC0AEDCCF0CEB224814161647168D5E846E657A2E24A3D945A51
        04A4A0AD9A23125169ABE09B3106E9FF72C652B6CFAAAE2A4F979454F794FC98
        32DF031A764FB4805D963D027B045466799A243789FD7D8E79F1A9046C3B9301
        F592F872A15E548B3CDBEAF2483F7895C67C5005F070F29175C2B2A67DB8FBED
        26AC857ECF4CF48B6702326B07432A48D8A0CF0CE4C04B26B042B91AECE407DB
        3B699D63E73C3107959C78DB2ACC0ABFB91D858D55434DA6A3CD34F1A828622C
        DB926BB6D2DE788EC9B155580BE6C3EAEA1363BB1C5AB64E61DD4E5EF576178D
        60E3F732D41AC55C35D01B4FF38590A11A28CD2BE9B89E744765EB08D881EF54
        6D3BBFFF6CD0DAEE5CD5E08F8C42BD3E908B402E3C52ED19E32914710DC6DF0C
        4D6F10D21C1968175CD11CA1025DB43641532DF6A801C6378C0395860B5E8CAF
        D0CED996C41B5B072A39D0B283082A7517E67E9C85EB97DF59DB0B7A665B4146
        ED75D904221B7CEEFB19B836B3D0C4D3738536E4A4E055DA645D20EB87CA2958
        5C1AB7969A7B008A0306E2E9B887187008FFA93A054B5F0E37F1DEC14C7CFA55
        4C0B8B031E68AFE9A0283167F07FF1133DF16A2B2752749EFB969CF8FFA21D63
        DA75BC03C2319109D4ED75BCF3C231EB5C03DC316E6DF327F876A5F5D33DF82B
        C0009C16C9DAB6822DF50000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
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
      ExplicitTop = 9
      ExplicitHeight = 63
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 89
      Top = 0
      Width = 89
      Height = 57
      Align = alLeft
      Caption = 'Extrato'
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
        786D702E6969643A334632394131383532434338313145344131464238373045
        42434346363742382220786D704D4D3A446F63756D656E7449443D22786D702E
        6469643A33463239413138363243433831314534413146423837304542434346
        36374238223E203C786D704D4D3A4465726976656446726F6D2073745265663A
        696E7374616E636549443D22786D702E6969643A323546443944414132434338
        3131453441314642383730454243434636374238222073745265663A646F6375
        6D656E7449443D22786D702E6469643A33463239413138343243433831314534
        41314642383730454243434636374238222F3E203C2F7264663A446573637269
        7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C
        3F787061636B657420656E643D2272223F3EF4417286000004BD4944415478DA
        C457DF6B1C55143E33F7CECCCEEC74B73409552A69F145FA526B9235084A2B8A
        4241518A2D8816A185808542A9B62241414AA95A5204FD0BF4C13EF820A2F8A6
        45515053D1482B3E88629AFE88F9B19BDDC9EECECCBD7E676637D998A44DBB1B
        7AE12477EF9DF9CEB9E77CE79C3BC6634FEEA5E6A8D56A34D07F3F0DBF76D433
        8579298AA23C756048298B2A56DB4F9E3E1BFC34FA0B398EB3B067B63EC81BDF
        7DFFA337FCE6C96E28EF364D930D684B1883B11893B15B952F330063BF9BC98C
        8D8EFEFC6BA954760DC368FBF48CC1588CC9D858DAB7C400B8A639CF424620F7
        C24A58DE01ED4D25C0624CC66EE8F0945214540232DDAC4B6118360DD848EB3F
        F26118D9B665D3DEE79E21F3F43B6F515FDF4E2A972B11AC8A3188852DECA4A4
        B88A0F1B4B21C2A1970FD281979E2799CBE5E8F091210FC1DA74E9E2EF869371
        28AA4B9A9E99C6C3F5E4A576861026CD95CB94F57D123243D292C6C14307BA06
        1F2AE8D9D96260FCF1F7F87E21C4299CBDBB520936803486264D200C330810BA
        5D1A0242D37CB59ACC6190F67DBF044F4C61E17536601C932DCC56A4CCC26BEC
        B20E3130F504E3A7B650B4887D5936F2151BBA734A1773902825382929A9AED2
        704AAC37FC9A6703E275E13A4E6E4079FEEC99C48EA923C768646C8E0C1871B4
        BF8B2C3846E1CC26DDE1C11C986D86A1F3E8387A14A55384205A1E82A25CD7E3
        31E32C2B9D42B965A6C555B524965C771FABC53AA256C8E83BCE01B99CBC268C
        D6C8D9FFDBA6894BD4ED8502A98670A4D86A75032C4B52A5328F0B84899CAD93
        6EA982B1B2D3AA761B95918B9C83F8D7EB75CA663D948668B90116C8F2F557E7
        E9F34FBFA4E32786E88BBFDEA7A056C2CB828419D13FC5419A98EB47450B6F49
        399F3C97B1E9F8E0661A79F73DDAF3F41EDAFDE8AE66074E0D402FE06E48E73E
        FE8454A869EBB65EF22B06A92A874243A9A29EEC159AB8BA91428D0263ACBD41
        C5CCBCAC43BD5BB7F1C524D131501820CF7393CA2B176B7F442A4613C206EE70
        E85C32F96FC20306F890CB14C9B1D14E63078158DD00D5E0B5D9788679238505
        2C41AEEB5250AD25BA966501C7893DC13D81250975ABF01FDD105A59422D2863
        5613E179EB5E139775B45EF5D654074CB48BF96813DC89A2B24A26845AD223F9
        0BF4C25D9F25BF3FBAFA147D53ECC3BBD14DB0D7C4E298FE0DEE4329CD90B142
        16C4E0856FCED38B507EB73D9908CF792D26A33D0324DC395BEDA589D203E043
        D4F9A6C949B0E206D2ADA9FCE2E4B3142A6F55F6739694954B1FC2ED57EA3D89
        F09CD7C48DEB86600E1421FE92B2C58B50FCE77481AE950B50EEDEF4F416F639
        E617CADB93DF95D84DD6627D4303926E780C720AD2C52BF51A181C5BB9DFAEEF
        33AECF0158C46B763D2BACC6CEC27C6963D41A9F7E25432CF03EB913F2AF7310
        A6AE854B29ED7AF8C1BCEFBA63B59872F85A4407336EB1FAC60D622E16A21037
        6BDFCDCC150676EE38FFED0FC566E24082A639410D05E289C777D389570E474A
        587A830DC5483BD166BFE45BBD6F9B643B8E7E63F8D5A9B7CF7C50615DB8192F
        DC88704A4D9E63D33D9B7BB848E4D1B12E07A1CAEA46FB69EB4ED2C0F02CB382
        6EB80591288E5F9BC489EBC45F7F89076C743FCF12343333C3ED92DF9912087C
        A73E0E19705A6976BDE696CCBA225C4723C4E93F0106005AC16380AA1DDD3B00
        00000049454E44AE426082}
      Transparent = True
      TabOrder = 1
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
      ExplicitLeft = 78
      ExplicitTop = 9
      ExplicitHeight = 63
    end
    object AdvGlowButton3: TAdvGlowButton
      Left = 178
      Top = 0
      Width = 89
      Height = 57
      Align = alLeft
      Caption = 'Resumo'
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
        786D702E6969643A353639343345364432434535313145344131464238373045
        42434346363742382220786D704D4D3A446F63756D656E7449443D22786D702E
        6469643A35363934334536453243453531314534413146423837304542434346
        36374238223E203C786D704D4D3A4465726976656446726F6D2073745265663A
        696E7374616E636549443D22786D702E6969643A353639343345364232434535
        3131453441314642383730454243434636374238222073745265663A646F6375
        6D656E7449443D22786D702E6469643A35363934334536433243453531314534
        41314642383730454243434636374238222F3E203C2F7264663A446573637269
        7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C
        3F787061636B657420656E643D2272223F3E93F92486000004884944415478DA
        EC57CD8B1C45147FD5D51FF3D5F3B119CC8210D9C4F52004228A2018D483E624
        1202C9CD9BF110821B6294E40F88078DC806027AF16C207EE4B6A7154404F120
        04821012F5A44477CDCCEC4C33D3DDF57CAFBA7AA67BA667760F010FA6E06DBD
        7AF59BF75EFD5E7DF4DAAF7DFED32900B84CB20F8ADBD64E5CB9F8E6F2CDEB24
        2749FF601116CA78D1DA70AF5B1BCE49D21763012ED9F4E70AC9E330BF35483E
        24D934FD818788BD621965B7E693544DFF30B10D6620662D56588890960083C1
        140B1817BB1372161BCFC1CA046BEBDF91D43D3B51B28DDC0CC2690702845D2F
        F489F1C0C44EA184F57DDDE781081804BAB779E57EC9864FDF781A6AAE3DC6D2
        1CEC8C2238FDCD6D78D047638B699165583AFC19F519C7EC30EEC1F6ADB74061
        17D2958B720DEA57AF264964E3F77AD03D7B56F763067C133CC62498A481B6CD
        F23C6100D598FAC43685CE32909682A8CFB2A213B068308C15ACFFF03BDCD91A
        E88927F755E09D179ED073799F92E20EA1F7EB2710F5EF244EAAABE0AFACE9B9
        5CB3688F0F8730B8760DA2BB7713ECA14350397326994B13505C0BDA6CEFBEB8
        926380ED0A71AA7C44ADB0A17EF03D1A44262B76A3F45CAE2962C8B6A1B2B696
        6340DB959A2490610CAC8C0EB8E00069809CE8BB61CD8AA737E4B804116DC68F
        BFFF6D6F25A095F7EE7DB4B71244110CD6D7772F81272DB870744527A227AC64
        558525B03C2AC1FB991248BDB2C212781E54CE9DD389248EEDC91C18C639448F
        8E1C9AC02C59DBF4E5805137F9956527C2A3D4367DDEE9A88D039BE0DA661666
        F34D178C6278FBEBDB851751401791B90D13FAE380CEFBE939175100C295E3CD
        C6970D9FF7B9171161EC9481EE305A7415173030F72A2E66A0F82A9E9C82D940
        8B76B5DC3B562EC65AF01FB747093C4AE0FF938098FD5A987D0D93570D67F539
        0F9C985C9873A162CE187309E8874441B8D3C5E8C1DF7ACE6EB68553F5851056
        D16B004110E3FD7F628D7DAC2545A9C45F106226183F669D30C43F49D8B6EC38
        A241C2AF2C4E181010F67B38F8F9DBFEE8D6770E5BDCC347C3CA9197AB6EAD99
        BBC97910040ABFDA0C77BED800976DA78EA9D1F15744AD52960273940B0A3EC2
        1BBDA07F63186BBF27BC283CE14375C9F5042FC4327942C82BFFE547A7592E7B
        2CAC6B1BA81902EF6F47F8E5A6E782D3F6585867DB2C530AFEA095DF44DB11AD
        B6C7C23ADB784EA40C70FD8813ACFA7525A391FE71B5ECAA906C58E096B13E61
        BB0327F94FA45257C2DAC6A2CF22A21AFD9AAF766482ADD5EACA523DCC9C0272
        48BCDAFE9215AF3E172AA714B0B0CE36912B006A16DA5495E32FF5478D6A14B0
        B0DE6E66B7E5F8FB19F64B69BDAE82D05771C0C23ADB782EDD03FAB9726A7511
        AE3EEB87CB0735E7D26F95D866C24AC3BFE441B9645BAF3E3FAA3FF3D496C652
        F052A9640B4380C69ADF40C375C5B1D1C83F12773576BFB44A6C3314484EA043
        35A80922C3F59B026B0D996C36913D5FFCA8F7B9A7518BB3AF941D71A08CE957
        A98619A7392CEFF696E78926E2C4EFE41876F88C9D27B947264EA443D35A58D7
        363D071748FE323D8F3B7CBA108511E8E885146091B1EC53082DE9D860CFFF2B
        C0002FDF27B86C21D0DA0000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = Convenio1Click
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
      ExplicitLeft = 158
      ExplicitTop = -5
      ExplicitHeight = 63
    end
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(rec.valor_atual) total,'
      'cli.codigo,'
      'cli.nome,'
      'cli.codconvenio'
      'from'
      'c000049 rec,'
      'c000007 cli'
      'where'
      'rec.codcliente = cli.codigo '
      'and rec.situacao = 1 '
      'and rec.codigo = '#39'xxxxxx'#39
      'group by'
      'cli.codigo,'
      'cli.nome,'
      'cli.codconvenio'
      'order by'
      'cli.nome ')
    Params = <>
    Left = 688
    Top = 120
    object qrclienteTOTAL: TExtendedField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 19
    end
    object qrclienteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
  end
  object dscliente: TDataSource
    DataSet = qrcliente
    Left = 728
    Top = 120
  end
  object qrreceber: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'CR.*,'
      'CLI.CODCONVENIO'
      'from c000049 CR,'
      'C000007 CLI'
      'where'
      'cr.codcliente = cli.codigo'
      'and cr.situacao = 1'
      'order by data_vencimento')
    Params = <>
    Left = 688
    Top = 176
    object qrreceberCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrreceberCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrreceberCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrreceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrreceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrreceberDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrreceberCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrreceberCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrreceberVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberVALOR_ATUAL: TFloatField
      FieldName = 'VALOR_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object qrreceberTIPO: TWideStringField
      FieldName = 'TIPO'
    end
    object qrreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrreceberNOSSONUMERO: TWideStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrreceberCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrreceberCODCEDENTE: TWideStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrreceberP5: TFloatField
      FieldName = 'P5'
    end
    object qrreceberP3: TFloatField
      FieldName = 'P3'
    end
    object qrreceberNUMERO_CUPOM: TWideStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object qrreceberVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberCOD_VENDA_ORIGINAL: TWideStringField
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object qrreceberVALOR_ATUAL_ANTERIOR: TFloatField
      FieldName = 'VALOR_ATUAL_ANTERIOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrreceberEMAIL_ENVIADO: TIntegerField
      FieldName = 'EMAIL_ENVIADO'
    end
    object qrreceberCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
  end
  object dsreceber: TDataSource
    DataSet = qrreceber
    Left = 896
    Top = 424
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 376
    Top = 536
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15851719
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = 7355399
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor]
      Color = 10928328
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor]
      Color = 13228766
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor]
      Color = 13228766
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor]
      Color = 15725813
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15851719
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor]
      Color = clWindow
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor]
      Color = 15851719
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor]
      Color = 10928328
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor]
      Color = 15851719
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor]
      Color = 15851719
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor]
      Color = 16380136
    end
    object cxStyle42: TcxStyle
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 344
    Top = 536
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'MOV.*,'
      'PRO.PRODUTO'
      ' from c000032 MOV,'
      'c000025 PRO'
      'WHERE '
      'MOV.CODPRODUTO = PRO.CODIGO')
    Params = <>
    Left = 624
    Top = 176
    object qrprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrprodutoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qrprodutoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrprodutoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrprodutoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrprodutoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrprodutoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrprodutoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrprodutoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrprodutoCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrprodutoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrprodutoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrprodutoQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodutoECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
    end
    object qrprodutoECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrprodutoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrprodutoCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrprodutoCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoCST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrprodutoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrprodutoMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrprodutoLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrprodutoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrprodutoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 25
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrprodutoCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoPIS: TFloatField
      FieldName = 'PIS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoCOFINS: TFloatField
      FieldName = 'COFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodutoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrprodutoCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrprodutoORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrprodutoDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 40
    end
    object qrprodutoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object qrprodutoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrprodutoPRODUTO_1: TWideStringField
      FieldName = 'PRODUTO_1'
      Size = 60
    end
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 856
    Top = 392
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 440
    Top = 104
    PixelsPerInch = 96
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 14346217
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14346217
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14346217
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15988984
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10140352
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14872561
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15265520
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clWindow
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor]
      Color = clWindow
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle6
      Styles.Content = cxStyle7
      Styles.ContentEven = cxStyle8
      Styles.ContentOdd = cxStyle9
      Styles.FilterBox = cxStyle10
      Styles.IncSearch = cxStyle16
      Styles.Footer = cxStyle11
      Styles.Group = cxStyle12
      Styles.GroupByBox = cxStyle13
      Styles.Header = cxStyle14
      Styles.Inactive = cxStyle15
      Styles.Indicator = cxStyle17
      Styles.Preview = cxStyle18
      Styles.Selection = cxStyle19
      BuiltIn = True
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle20
      Styles.Content = cxStyle23
      Styles.ContentEven = cxStyle24
      Styles.ContentOdd = cxStyle25
      Styles.IncSearch = cxStyle27
      Styles.CaptionRow = cxStyle21
      Styles.CardBorder = cxStyle22
      Styles.Inactive = cxStyle26
      Styles.RowCaption = cxStyle28
      Styles.Selection = cxStyle29
      BuiltIn = True
    end
  end
  object LookAndFeelController: TcxLookAndFeelController
    SkinName = 'Black'
    Left = 824
    Top = 520
  end
  object qrproduto2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'MOV.*,'
      'PRO.PRODUTO'
      ' from c000032 MOV,'
      'c000025 PRO'
      'WHERE '
      'MOV.CODPRODUTO = PRO.CODIGO')
    Params = <>
    Left = 624
    Top = 120
    object qrproduto2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrproduto2CODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qrproduto2CODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrproduto2UNITARIO: TFloatField
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2ICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2IPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2CFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrproduto2DATA: TDateField
      FieldName = 'DATA'
    end
    object qrproduto2NUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrproduto2CODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrproduto2DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2CODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrproduto2MOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrproduto2CODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrproduto2SERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrproduto2UNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrproduto2QTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2ICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2BASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrproduto2ECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
    end
    object qrproduto2ECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrproduto2CODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrproduto2CUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrproduto2CUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrproduto2CUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrproduto2ALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2CST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrproduto2LOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrproduto2MOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrproduto2LANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrproduto2VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrproduto2CODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 25
    end
    object qrproduto2MARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrproduto2CREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2PIS: TFloatField
      FieldName = 'PIS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2COFINS: TFloatField
      FieldName = 'COFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto2LOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrproduto2CODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrproduto2TIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrproduto2CODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrproduto2ORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrproduto2DESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 40
    end
    object qrproduto2PRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object qrproduto2CODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrproduto2PRODUTO_1: TWideStringField
      FieldName = 'PRODUTO_1'
      Size = 60
    end
  end
  object dsproduto2: TDataSource
    DataSet = qrproduto2
    Left = 816
    Top = 504
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 312
    Top = 536
    PixelsPerInch = 96
    object cxStyle43: TcxStyle
    end
  end
  object cxStyleRepository5: TcxStyleRepository
    Left = 280
    Top = 536
    PixelsPerInch = 96
    object cxStyle44: TcxStyle
    end
  end
  object cxStyleRepository6: TcxStyleRepository
    Left = 248
    Top = 536
    PixelsPerInch = 96
    object cxStyle45: TcxStyle
    end
  end
  object cxStyleRepository7: TcxStyleRepository
    Left = 216
    Top = 536
    PixelsPerInch = 96
    object cxStyle46: TcxStyle
    end
  end
  object cxStyleRepository8: TcxStyleRepository
    Left = 184
    Top = 536
    PixelsPerInch = 96
    object cxStyle47: TcxStyle
    end
  end
  object cxStyleRepository9: TcxStyleRepository
    Left = 152
    Top = 536
    PixelsPerInch = 96
    object cxStyle48: TcxStyle
    end
  end
  object cxStyleRepository10: TcxStyleRepository
    Left = 120
    Top = 536
    PixelsPerInch = 96
    object cxStyle49: TcxStyle
    end
  end
  object cxStyleRepository11: TcxStyleRepository
    Left = 88
    Top = 536
    PixelsPerInch = 96
    object cxStyle50: TcxStyle
    end
  end
  object qrconvenio: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'MOV.*,'
      'PRO.PRODUTO'
      ' from c000032 MOV,'
      'c000025 PRO'
      'WHERE '
      'MOV.CODPRODUTO = PRO.CODIGO')
    Params = <>
    Left = 544
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 176
    object Fechamento1: TMenuItem
      Caption = 'Fechamento'
      ShortCut = 113
      OnClick = BitBtn1Click
    end
    object Extrato1: TMenuItem
      Caption = 'Extrato'
      ShortCut = 114
      OnClick = BitBtn2Click
    end
    object Convenio1: TMenuItem
      Caption = 'Convenio'
      ShortCut = 115
      OnClick = Convenio1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = BitBtn3Click
    end
  end
  object qrproduto3: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select'
      'MOV.*,'
      'CLI.NOME,CLI.CODCONVENIO,'
      'PRO.PRODUTO,'
      'CR.SITUACAO,'
      'CR.DOCUMENTO'
      'from c000032 MOV,'
      'c000025 PRO,'
      'C000007 CLI,'
      'C000049 CR'
      'WHERE'
      'MOV.CODPRODUTO = PRO.CODIGO'
      'AND MOV.CODCLIENTE = CLI.CODIGO'
      'AND MOV.CODNOTA = CR.CODVENDA'
      'AND MOV.MOVIMENTO <> 9'
      'AND CR.SITUACAO = 1'
      'AND CLI.CODCONVENIO = '#39'000042'#39)
    Params = <>
    LinkedFields = 'CODCLIENTE'
    Left = 400
    Top = 288
    object qrproduto3desconto_convenio: TFloatField
      FieldKind = fkLookup
      FieldName = 'desconto_convenio'
      LookupDataSet = frmmodulo.qrconvenio
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCONTO'
      KeyFields = 'CODCONVENIO'
      Lookup = True
    end
    object qrproduto3CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrproduto3CODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qrproduto3CODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrproduto3UNITARIO: TFloatField
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3ICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3IPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3CFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrproduto3DATA: TDateField
      FieldName = 'DATA'
    end
    object qrproduto3NUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrproduto3CODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrproduto3DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3MOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrproduto3ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3CODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrproduto3CODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrproduto3SERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrproduto3UNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrproduto3QTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3ICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3BASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrproduto3ECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
    end
    object qrproduto3ECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrproduto3CODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrproduto3CUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrproduto3CUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrproduto3CUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrproduto3ALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3CST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrproduto3LOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrproduto3MOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrproduto3LANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrproduto3VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrproduto3CODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 25
    end
    object qrproduto3MARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3CREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3PIS: TFloatField
      FieldName = 'PIS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3COFINS: TFloatField
      FieldName = 'COFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto3LOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrproduto3CODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrproduto3TIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrproduto3CODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrproduto3ORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrproduto3DESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 40
    end
    object qrproduto3PRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object qrproduto3CODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrproduto3NOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrproduto3CODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrproduto3PRODUTO_1: TWideStringField
      FieldName = 'PRODUTO_1'
      Size = 60
    end
    object qrproduto3SITUACAO_1: TIntegerField
      FieldName = 'SITUACAO_1'
    end
    object qrproduto3DOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
  end
  object dsproduto3: TDataSource
    DataSet = qrproduto3
    Left = 544
    Top = 160
  end
  object fxconvenio: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39282.595126944400000000
    ReportOptions.LastChange = 41479.834579421290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 32
    Top = 192
    Datasets = <
      item
        DataSet = fscliente
        DataSetName = 'fscliente'
      end
      item
        DataSet = fscontasreceber
        DataSetName = 'fscontasreceber'
      end
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 53.913420000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 34.795300000000000000
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
        object LEMPRESA: TfrxMemoView
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
        object Memo1: TfrxMemoView
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
        object Memo4: TfrxMemoView
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
            'iCloud 2.0')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
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
        object Memo5: TfrxMemoView
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
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 404.409710000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000079000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 3.779530000000079000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ELPRO SOFTWARES')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 249.448980000000000000
          Top = 3.779530000000079000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'www.elpro.com.br')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779530000000079000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'suporte@elpro.com.br')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        Condition = 'fsproduto."CODCLIENTE"'
        OutlineText = 'fsproduto."CODCLIENTE"'
        object Memo6: TfrxMemoView
          Left = 4.559060000000000000
          Top = 0.031508269999989130
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 62.031540000000000000
          Top = 0.031508269999989130
          Width = 506.457020000000000000
          Height = 15.118120000000000000
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsproduto."CODCLIENTE"] - [fsproduto."NOME"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 135.622140000000000000
          Top = 16.795300000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 190.535560000000000000
          Top = 16.795300000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 439.984540000000000000
          Top = 16.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 515.575140000000000000
          Top = 16.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'UNIT'#193'RIO')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 659.197280000000000000
          Top = 16.795300000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 5.338590000000000000
          Top = 16.795300000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DT.COMPRA')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 73.370130000000000000
          Top = 16.795300000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOCTO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 589.386210000000000000
          Top = 16.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = -2.220470000000000000
          Top = 32.133890000000010000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = -3.779530000000000000
          Width = 744.567410000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = -2.000000000000000000
          Top = 15.118120000000010000
          Width = 744.567410000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
        object Line5: TfrxLineView
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          Left = 648.299630000000000000
          Top = 3.779530000000022000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = fsproduto
          DataSetName = 'fsproduto'
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
            '[SUM(<fsproduto."TOTAL">-<fsproduto."DESCONTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 502.677490000000000000
          Top = 3.779529999999965000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO CLIENTE:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
        DataSet = fsproduto
        DataSetName = 'fsproduto'
        RowCount = 0
        object Memo26: TfrxMemoView
          Left = 136.063080000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          DataField = 'CODPRODUTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 188.976500000000000000
          Width = 245.669450000000000000
          Height = 11.338590000000000000
          DataField = 'PRODUTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."PRODUTO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 438.425480000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'QTDE'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsproduto."QTDE"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 514.016080000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'UNITARIO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
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
            '[fsproduto."UNITARIO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 657.638220000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DataSet = fsproduto
          DataSetName = 'fsproduto'
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
            '[<fsproduto."TOTAL">-<fsproduto."DESCONTO">]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'DATA'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."DATA"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 71.811070000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'DOCUMENTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 586.827150000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'DESCONTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
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
            '[fsproduto."DESCONTO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 740.409927000000000000
        object Memo36: TfrxMemoView
          Left = 648.299630000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = fsproduto
          DataSetName = 'fsproduto'
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
            '[SUM(<fsproduto."TOTAL">-<fsproduto."DESCONTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 502.677490000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO CONV'#202'NIO:')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Width = 744.567410000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 132.283550000000000000
        Width = 740.409927000000000000
        object Shape2: TfrxShapeView
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo9: TfrxMemoView
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONV'#202'NIO:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 83.149660000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxrelatorio."LINHA3"]')
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
      'CODCEDENTE=CODCEDENTE'
      'P5=P5'
      'P3=P3'
      'NUMERO_CUPOM=NUMERO_CUPOM'
      'VALOR_VENDA=VALOR_VENDA'
      'COD_VENDA_ORIGINAL=COD_VENDA_ORIGINAL'
      'VALOR_ATUAL_ANTERIOR=VALOR_ATUAL_ANTERIOR'
      'EMAIL_ENVIADO=EMAIL_ENVIADO'
      'CODCONVENIO=CODCONVENIO')
    DataSet = qrreceber
    BCDToCurrency = False
    Left = 104
    Top = 240
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
    Left = 32
    Top = 252
  end
  object fscliente: TfrxDBDataset
    UserName = 'fscliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CONVENIO=convenio'
      'TOTAL=TOTAL'
      'CODIGO=CODIGO'
      'NOME=NOME'
      'CODCONVENIO=CODCONVENIO')
    DataSet = qrcliente
    BCDToCurrency = False
    Left = 88
    Top = 176
  end
  object fsproduto: TfrxDBDataset
    UserName = 'fsproduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'desconto_convenio=desconto_convenio'
      'CODIGO=CODIGO'
      'CODNOTA=CODNOTA'
      'CODPRODUTO=CODPRODUTO'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'ICMS=ICMS'
      'IPI=IPI'
      'CFOP=CFOP'
      'DATA=DATA'
      'NUMERONOTA=NUMERONOTA'
      'CODCLIENTE=CODCLIENTE'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'MOVIMENTO=MOVIMENTO'
      'CODVENDEDOR=CODVENDEDOR'
      'CODGRADE=CODGRADE'
      'SERIAL=SERIAL'
      'UNIDADE=UNIDADE'
      'QTDE=QTDE'
      'VALOR_ICMS=VALOR_ICMS'
      'ICMS_REDUZIDO=ICMS_REDUZIDO'
      'BASE_CALCULO=BASE_CALCULO'
      'VALOR_IPI=VALOR_IPI'
      'SITUACAO=SITUACAO'
      'ECF_SERIE=ECF_SERIE'
      'ECF_CAIXA=ECF_CAIXA'
      'CODALIQUOTA=CODALIQUOTA'
      'CUPOM_NUMERO=CUPOM_NUMERO'
      'CUPOM_MODELO=CUPOM_MODELO'
      'CUPOM_ITEM=CUPOM_ITEM'
      'ALIQUOTA=ALIQUOTA'
      'CST=CST'
      'LOTE_FABRICACAO=LOTE_FABRICACAO'
      'MOVIMENTO_ESTOQUE=MOVIMENTO_ESTOQUE'
      'LANCADO=LANCADO'
      'VENCIMENTO=VENCIMENTO'
      'CODBARRA=CODBARRA'
      'MARGEM_DESCONTO=MARGEM_DESCONTO'
      'CREDITO_ICMS=CREDITO_ICMS'
      'PIS=PIS'
      'COFINS=COFINS'
      'LOJA=LOJA'
      'CODSUBGRUPO=CODSUBGRUPO'
      'TIPO=TIPO'
      'CODUSUARIO=CODUSUARIO'
      'ORIGEM=ORIGEM'
      'DESTINO=DESTINO'
      'PRODUTO=PRODUTO'
      'CODFILIAL=CODFILIAL'
      'NOME=NOME'
      'CODCONVENIO=CODCONVENIO'
      'PRODUTO_1=PRODUTO_1'
      'SITUACAO_1=SITUACAO_1'
      'DOCUMENTO=DOCUMENTO')
    DataSet = qrproduto3
    BCDToCurrency = False
    Left = 136
    Top = 176
  end
  object qrpgto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select cr.*, cli.nome from'
      'c000049 cr, c000007 cli'
      'where'
      'cr.codcliente = cli.codigo')
    Params = <>
    Left = 296
    Top = 337
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(rec.valor_atual) total,'
      'rec.documento,'
      'rec.codvenda,'
      'rec.data_emissao,'
      'cli.codigo,'
      'cli.nome,'
      'cli.codconvenio'
      'from'
      'c000049 rec,'
      'c000007 cli'
      'where'
      'rec.codcliente = cli.codigo'
      'and rec.situacao = 1'
      'and cli.codconvenio = '#39'000001'#39
      
        'group by rec.documento,rec.codvenda,rec.data_emissao,cli.codigo,' +
        'cli.nome,cli.codconvenio'
      'order by cli.nome')
    Params = <>
    Left = 680
    Top = 233
    object queryconvenio: TStringField
      FieldKind = fkLookup
      FieldName = 'convenio'
      LookupDataSet = frmmodulo.qrconvenio
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCONVENIO'
      Size = 40
      Lookup = True
    end
    object queryTOTAL: TExtendedField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 19
    end
    object queryDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object queryCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object queryDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object queryCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object queryNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object queryCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
  end
  object fsconvenio: TfrxDBDataset
    UserName = 'fsconvenio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'convenio=convenio'
      'TOTAL=TOTAL'
      'DOCUMENTO=DOCUMENTO'
      'CODVENDA=CODVENDA'
      'DATA_EMISSAO=DATA_EMISSAO'
      'CODIGO=CODIGO'
      'NOME=NOME'
      'CODCONVENIO=CODCONVENIO')
    DataSet = query
    BCDToCurrency = False
    Left = 256
    Top = 240
  end
  object dsconvenio: TDataSource
    DataSet = qrconvenio
    Left = 568
    Top = 104
  end
  object qrcr_recibo: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'FILTRO'
        DataType = ftInteger
      end
      item
        Name = 'DATA_EMISSAO'
        DataType = ftDateTime
      end
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATA_VENCIMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR_ORIGINAL'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_PAGO'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_ATUAL'
        DataType = ftFloat
      end
      item
        Name = 'CODCEDENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR_JUROS'
        DataType = ftFloat
      end
      item
        Name = 'DATA_PAGAMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'CODVENDEDOR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CODCAIXA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CODCLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VALOR_DESCONTO'
        DataType = ftFloat
      end
      item
        Name = 'SITUACAO'
        DataType = ftInteger
      end
      item
        Name = 'CODVENDA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NOSSONUMERO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODREGIAO'
        DataType = ftString
        Size = 6
      end>
    Left = 472
    Top = 196
    object qrcr_reciboFILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 2
      FieldName = 'FILTRO'
    end
    object qrcr_recibosituacao2: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcr_reciboDATA_EMISSAO: TDateTimeField
      DisplayLabel = 'DT.COMPRA'
      DisplayWidth = 10
      FieldName = 'DATA_EMISSAO'
    end
    object qrcr_reciboCODIGO: TStringField
      DisplayLabel = 'VENDA/NR.'
      DisplayWidth = 9
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcr_reciboDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'VENCTO.'
      DisplayWidth = 10
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcr_reciboDOCUMENTO: TStringField
      DisplayWidth = 11
      FieldName = 'DOCUMENTO'
    end
    object qrcr_reciboVALOR_ORIGINAL: TFloatField
      DisplayLabel = 'VALOR'
      DisplayWidth = 9
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboVALOR_PAGO: TFloatField
      DisplayLabel = 'VLR.PAGO'
      DisplayWidth = 9
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboVALOR_ATUAL: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 9
      FieldName = 'VALOR_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_recibojuros: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcr_reciboDIAS: TIntegerField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Calculated = True
    end
    object qrcr_reciboRESTANTE: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcr_reciboCODCEDENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCEDENTE'
      Visible = False
      Size = 6
    end
    object qrcr_reciboTIPO: TStringField
      DisplayWidth = 11
      FieldName = 'TIPO'
      Visible = False
    end
    object qrcr_reciboVALOR_JUROS: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 11
      FieldName = 'VALOR_JUROS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboDATA_PAGAMENTO: TDateTimeField
      DisplayLabel = #218'LT.PAGTO.'
      DisplayWidth = 11
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcr_reciboCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrcr_reciboCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrcr_reciboCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrcr_reciboVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcr_reciboCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 7
    end
    object qrcr_reciboNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Visible = False
      Size = 30
    end
    object qrcr_reciboCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Visible = False
      Size = 6
    end
    object qrcr_recibobanco: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'banco'
      KeyFields = 'codcedente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrcr_reciboagencia: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'agencia'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'agencia'
      KeyFields = 'CODCEDENTE'
      Visible = False
      Size = 10
      Lookup = True
    end
    object qrcr_reciboconta: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'codigo'
      LookupResultField = 'CODCONTA'
      KeyFields = 'codcedente'
      Visible = False
      Lookup = True
    end
  end
end
