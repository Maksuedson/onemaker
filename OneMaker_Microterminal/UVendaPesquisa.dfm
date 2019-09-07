inherited FVendaPesquisa: TFVendaPesquisa
  Caption = 'Pesquisa de Vendas'
  ClientHeight = 405
  OnShow = FormShow
  ExplicitWidth = 510
  ExplicitHeight = 439
  PixelsPerInch = 96
  TextHeight = 13
  object lblItemVenda: TLabel [0]
    Left = 0
    Top = 292
    Width = 502
    Height = 21
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Itens da Venda'
    Color = 33023
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitTop = 302
    ExplicitWidth = 422
  end
  object Splitter1: TSplitter [1]
    Left = 0
    Top = 288
    Width = 502
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 252
    ExplicitWidth = 422
  end
  object lblVenda: TLabel [2]
    Left = 0
    Top = 141
    Width = 502
    Height = 21
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Vendas'
    Color = 33023
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitTop = 86
    ExplicitWidth = 422
  end
  inherited DBGrid1: TDBGrid
    Top = 162
    Height = 126
    Align = alTop
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescComanda'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCMESA'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorTotal'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Ativa'
        Visible = True
      end>
  end
  inherited ToolBar1: TToolBar
    Height = 38
    EdgeBorders = [ebBottom]
    ExplicitHeight = 38
  end
  object DBGVendaItem: TDBGrid [6]
    Left = 0
    Top = 313
    Width = 502
    Height = 92
    Align = alClient
    DataSource = dsDetalhe
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNITARIO'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Width = 97
        Visible = True
      end>
  end
  object pnlFiltro: TPanel [7]
    Left = 0
    Top = 87
    Width = 502
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Bevel1: TBevel
      Left = 0
      Top = 52
      Width = 502
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
      ExplicitTop = 40
      ExplicitWidth = 320
    end
    object rgStatus: TRadioGroup
      Left = 6
      Top = 6
      Width = 209
      Height = 43
      Caption = '  Apenas vendas  '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Abertas'
        'Fechadas')
      TabOrder = 0
      OnClick = rgStatusClick
    end
  end
  inherited ALPadrao: TActionList
    Left = 56
    Top = 144
  end
  inherited imgPadrao: TImageList
    Top = 160
  end
  inherited dsLista: TDataSource
    DataSet = DMTabelas.adoVenda
    Top = 144
  end
  object dsDetalhe: TDataSource
    DataSet = DMTabelas.adoVendaItem
    Left = 192
    Top = 208
  end
end
