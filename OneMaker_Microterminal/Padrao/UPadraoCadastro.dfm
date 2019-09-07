inherited FPadraoCadastro: TFPadraoCadastro
  BorderIcons = []
  Caption = 'FPadraoCadastro'
  ClientHeight = 190
  ClientWidth = 456
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  ExplicitWidth = 464
  ExplicitHeight = 224
  PixelsPerInch = 96
  TextHeight = 13
  object lblDescricao: TLabel [0]
    Left = 19
    Top = 78
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label1: TLabel [1]
    Left = 19
    Top = 52
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object dbtCodigo: TDBText [2]
    Left = 128
    Top = 52
    Width = 121
    Height = 17
    DataSource = dsCadastro
  end
  inherited pnlCabecalho: TPanel
    Width = 456
    ExplicitWidth = 456
    DesignSize = (
      456
      49)
    inherited imgCabecalho: TImage
      Width = 402
      ExplicitWidth = 456
    end
    inherited bvCabecalho: TBevel
      Width = 456
      ExplicitWidth = 456
    end
    inherited lblCabecalho: TLabel
      Width = 408
      ExplicitWidth = 408
    end
  end
  inherited pnlRodape: TPanel
    Top = 128
    Width = 456
    ExplicitTop = 128
    ExplicitWidth = 456
    DesignSize = (
      456
      62)
    inherited bvRodape: TBevel
      Width = 456
      ExplicitWidth = 456
    end
    inherited sbCancelar: TSpeedButton
      Left = 354
      ExplicitLeft = 354
    end
    inherited sbOk: TSpeedButton
      Left = 251
      ExplicitLeft = 251
    end
  end
  object dbeDescricao: TDBEdit [5]
    Left = 128
    Top = 75
    Width = 320
    Height = 21
    CharCase = ecUpperCase
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBCheckBox1: TDBCheckBox [6]
    Left = 128
    Top = 102
    Width = 97
    Height = 17
    Caption = 'Ativo'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited ALPadrao: TActionList
    Left = 216
    Top = 8
  end
  inherited imgPadrao: TImageList
    Left = 272
    Top = 8
  end
  object dsCadastro: TDataSource
    Left = 328
    Top = 8
  end
  object adoPesquisa: TADOQuery
    Connection = DMConexao.Conexao
    Parameters = <>
    Left = 392
    Top = 8
  end
end
