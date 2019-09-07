object frm_mercadorias_cte: Tfrm_mercadorias_cte
  Left = 0
  Top = 0
  Caption = 'Mercadorias Transportadas'
  ClientHeight = 422
  ClientWidth = 878
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 736
    Top = 16
    Width = 41
    Height = 13
    Caption = 'CODIGO'
    FocusControl = cxDBTextEdit7
  end
  object Label13: TLabel
    Left = 736
    Top = 56
    Width = 41
    Height = 13
    Caption = 'CODCTE'
    FocusControl = cxDBTextEdit8
  end
  object cxDBTextEdit7: TcxDBTextEdit
    Left = 736
    Top = 32
    DataBinding.DataField = 'CODIGO'
    DataBinding.DataSource = DataSource1
    TabOrder = 0
    Width = 121
  end
  object cxDBTextEdit8: TcxDBTextEdit
    Left = 736
    Top = 72
    DataBinding.DataField = 'CODCTE'
    DataBinding.DataSource = DataSource1
    TabOrder = 1
    Width = 121
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 689
    Height = 121
    Caption = 'Dados Nota Fiscal'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 37
      Height = 13
      Caption = 'N.Fiscal'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 168
      Top = 21
      Width = 27
      Height = 13
      Caption = 'CFOP'
      FocusControl = cxDBTextEdit2
    end
    object Label3: TLabel
      Left = 312
      Top = 21
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = cxDBDateEdit1
    end
    object Label4: TLabel
      Left = 16
      Top = 69
      Width = 34
      Height = 13
      Caption = 'Modelo'
      FocusControl = cxDBTextEdit3
    end
    object Label5: TLabel
      Left = 168
      Top = 69
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
      FocusControl = cxDBTextEdit4
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 37
      DataBinding.DataField = 'NUMERO'
      DataBinding.DataSource = DataSource1
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 168
      Top = 37
      DataBinding.DataField = 'CFOP'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 312
      Top = 37
      DataBinding.DataField = 'DATA_EMISSAO'
      DataBinding.DataSource = DataSource1
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 16
      Top = 85
      DataBinding.DataField = 'MODELO'
      DataBinding.DataSource = DataSource1
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 168
      Top = 85
      DataBinding.DataField = 'SERIE'
      DataBinding.DataSource = DataSource1
      TabOrder = 4
      Width = 121
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 143
    Width = 689
    Height = 97
    Caption = 'Mercadoria'
    TabOrder = 3
    object Label6: TLabel
      Left = 16
      Top = 32
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = cxDBCalcEdit1
    end
    object Label7: TLabel
      Left = 168
      Top = 32
      Width = 24
      Height = 13
      Caption = 'Qtde'
      FocusControl = cxDBCalcEdit2
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 16
      Top = 51
      DataBinding.DataField = 'VALOR_NOTA'
      DataBinding.DataSource = DataSource1
      TabOrder = 0
      Width = 121
    end
    object cxDBCalcEdit2: TcxDBCalcEdit
      Left = 168
      Top = 48
      DataBinding.DataField = 'QTDE'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 121
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 246
    Width = 689
    Height = 107
    Caption = 'Volumes'
    TabOrder = 4
    object Label8: TLabel
      Left = 15
      Top = 29
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = cxDBCalcEdit3
    end
    object Label9: TLabel
      Left = 167
      Top = 32
      Width = 24
      Height = 13
      Caption = 'Qtde'
      FocusControl = cxDBCalcEdit4
    end
    object Label10: TLabel
      Left = 343
      Top = 32
      Width = 36
      Height = 13
      Caption = 'Esp'#233'cie'
      FocusControl = cxDBTextEdit5
    end
    object Label11: TLabel
      Left = 503
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Marca'
      FocusControl = cxDBTextEdit6
    end
    object cxDBCalcEdit3: TcxDBCalcEdit
      Left = 15
      Top = 48
      DataBinding.DataField = 'VALOR_PRODUTOS'
      DataBinding.DataSource = DataSource1
      TabOrder = 0
      Width = 121
    end
    object cxDBCalcEdit4: TcxDBCalcEdit
      Left = 167
      Top = 48
      DataBinding.DataField = 'QTDE_VOLUMES'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 343
      Top = 48
      DataBinding.DataField = 'ESPECIE'
      DataBinding.DataSource = DataSource1
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 503
      Top = 48
      DataBinding.DataField = 'MARCA'
      DataBinding.DataSource = DataSource1
      TabOrder = 3
      Width = 121
    end
  end
  object DataSource1: TDataSource
    DataSet = frmmodulo.qrNF_CTE
    Left = 808
    Top = 376
  end
end
