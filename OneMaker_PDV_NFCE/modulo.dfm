object frmModulo: TfrmModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 579
  Width = 959
  object Balanca: TACBrBAL
    Porta = 'COM1'
    Left = 643
    Top = 430
  end
  object estilo_menu: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2007Obsidian
    Background.Position = bpCenter
    Background.Color = 16185078
    Background.ColorTo = 16185078
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15658729
    IconBar.ColorTo = 15658729
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    IconBar.Size = 16
    SelectedItem.Color = 15465983
    SelectedItem.ColorTo = 11267071
    SelectedItem.ColorMirror = 6936319
    SelectedItem.ColorMirrorTo = 9889023
    SelectedItem.BorderColor = 10079963
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -12
    SelectedItem.Font.Name = 'Segoe UI'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.Color = 12105910
    RootItem.ColorTo = 10526878
    RootItem.GradientDirection = gdVertical
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -12
    RootItem.Font.Name = 'Segoe UI'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 7778289
    RootItem.SelectedColorTo = 4296947
    RootItem.SelectedColorMirror = 946929
    RootItem.SelectedColorMirrorTo = 5021693
    RootItem.SelectedBorderColor = 4548219
    RootItem.HoverColor = 15465983
    RootItem.HoverColorTo = 11267071
    RootItem.HoverColorMirror = 6936319
    RootItem.HoverColorMirrorTo = 9889023
    RootItem.HoverBorderColor = 10079963
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 12961221
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = clSilver
    Left = 888
    Top = 488
  end
  object docValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 645
    Top = 491
  end
  object tbForma_Pgto: TVirtualTable
    IndexFieldNames = 'id'
    FieldDefs = <
      item
        Name = 'Nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Valor_Acumulado'
        DataType = ftFloat
      end
      item
        Name = 'Valor_Ultimo_Cupom'
        DataType = ftFloat
      end
      item
        Name = 'id'
        DataType = ftInteger
      end>
    Left = 792
    Top = 488
    Data = {
      0300040004004E6F6D6501001400000000000F0056616C6F725F4163756D756C
      61646F0600000000000000120056616C6F725F556C74696D6F5F4375706F6D06
      00000000000000020069640300000000000000000000000000}
    object tbForma_PgtoNome: TStringField
      FieldName = 'Nome'
    end
    object tbForma_PgtoValor_Acumulado: TFloatField
      FieldName = 'Valor_Acumulado'
    end
    object tbForma_PgtoValor_Ultimo_Cupom: TFloatField
      FieldName = 'Valor_Ultimo_Cupom'
    end
    object tbForma_Pgtoid: TIntegerField
      FieldName = 'id'
    end
  end
  object tbAliquota: TVirtualTable
    IndexFieldNames = 'codigo'
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Aliquota'
        DataType = ftFloat
      end>
    Left = 712
    Top = 420
    Data = {
      030002000600436F6469676F01001400000000000800416C6971756F74610600
      000000000000000000000000}
    object tbAliquotaCodigo: TStringField
      FieldName = 'Codigo'
    end
    object tbAliquotaAliquota: TFloatField
      FieldName = 'Aliquota'
    end
  end
  object Dlg_arquivo: TOpenDialog
    Filter = 'Arquivo Texto|*.txt'
    Left = 704
    Top = 488
  end
  object cdsComandas1: TClientDataSet
    PersistDataPacket.Data = {
      540000009619E0BD01000000180000000200000000000300000054000A49445F
      434F4D414E44410100490000000100055749445448020002001400064556454E
      544F01004900000001000557494454480200020001000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 784
    Top = 424
    object cdsComandas1ID_COMANDA: TStringField
      FieldName = 'ID_COMANDA'
    end
    object cdsComandas1EVENTO: TStringField
      FieldName = 'EVENTO'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsComandas1
    Left = 864
    Top = 424
  end
  object conexao: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'C:\OneMaker\PDV\BD\NFCE_DATPDV.FDB'
    Username = 'sysdba'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 24
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object query_servidor2: TUniQuery
    Left = 560
    Top = 24
  end
  object qrtransportador: TUniQuery
    SQL.Strings = (
      'select * from c000010')
    Left = 656
    Top = 24
    object qrtransportadorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrtransportadorNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrtransportadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrtransportadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrtransportadorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrtransportadorUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrtransportadorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrtransportadorCPF: TStringField
      FieldName = 'CPF'
      Size = 25
    end
    object qrtransportadorRG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrtransportadorTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object qrtransportadorCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrtransportadorPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrtransportadorUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object qrtransportadorOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrtransportadorOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrtransportadorOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrtransportadorDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrtransportadorTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrtransportadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrtransportadorCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrtransportadorIBGE: TStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrtransportadorANTT: TStringField
      FieldName = 'ANTT'
      Size = 10
    end
  end
  object qrfilial: TUniQuery
    Connection = conexao
    SQL.Strings = (
      'select * from c000004')
    Left = 496
    Top = 24
    object qrfilialCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfilialFILIAL: TStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrfilialNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qrfilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrfilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrfilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrfilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrfilialTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object qrfilialCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrfilialIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrfilialSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object qrfilialFAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qrfilialOBS1: TStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrfilialOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrfilialCONTRIBUINTE_IPI: TStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qrfilialSUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qrfilialEMPRESA_ESTADUAL: TStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object qrfilialOPTANTE_SIMPLES: TStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object qrfilialOPTANTE_SUPER_SIMPLES: TStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object qrfilialECF: TStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrfilialTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrfilialIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrfilialISS: TFloatField
      FieldName = 'ISS'
    end
    object qrfilialNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrfilialRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qrfilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qrfilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrfilialFARMACIA_RESP_TECNICO: TStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object qrfilialFARMACIA_CRF: TStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object qrfilialFARMACIA_CPF: TStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object qrfilialFARMCIA_DATA: TDateTimeField
      FieldName = 'FARMCIA_DATA'
    end
    object qrfilialFARMACIA_UF: TStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object qrfilialFARMACIA_SENHA: TStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object qrfilialFARMACIA_EMAIL: TStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object qrfilialFARMACIA_LOGIN: TStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrfilialFARMACIA_ENVIO: TStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object qrfilialCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qrfilialINDUSTRIA: TStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object qrfilialFARMACIA_NUMEROLICENCA: TStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object qrfilialCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrfilialIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qrfilialPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrfilialCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrfilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qrfilialATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object qrfilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrfilialCONTADOR_NOME: TStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object qrfilialCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
    end
    object qrfilialCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object qrfilialCONTADOR_CNPJ: TStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object qrfilialCONTADOR_CEP: TStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object qrfilialCONTADOR_ENDERECO: TStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object qrfilialCONTADOR_NUMERO: TStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object qrfilialCONTADOR_COMPLEMENTO: TStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object qrfilialCONTADOR_BAIRRO: TStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object qrfilialCONTADOR_FONE: TStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object qrfilialCONTADOR_FAX: TStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object qrfilialCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object qrfilialINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qrfilialDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object qrfilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrfilialCRT: TStringField
      FieldName = 'CRT'
      Size = 1
    end
    object qrfilialCONTADOR_CIDADE: TStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object qrfilialCONTADOR_COD_MUNICIPIO: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object qrfilialCONTADOR_UF: TStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object qrfilialPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object qrfilialFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object qrfilialDFIXAS: TFloatField
      FieldName = 'DFIXAS'
    end
    object qrfilialTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
    object qrfilialSERIE_CTE: TStringField
      FieldName = 'SERIE_CTE'
      Size = 6
    end
    object qrfilialSEQ_CTE: TStringField
      FieldName = 'SEQ_CTE'
      Size = 6
    end
    object qrfilialCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
    end
    object qrfilialPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
  end
  object qrlancamento_conta: TUniQuery
    SQL.Strings = (
      'select * from c000042')
    Left = 760
    Top = 24
    object qrlancamento_contaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrlancamento_contaCODCONTACORRENTE: TStringField
      FieldName = 'CODCONTACORRENTE'
      Size = 6
    end
    object qrlancamento_contaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrlancamento_contaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object qrlancamento_contaCODCONTA: TStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrlancamento_contaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrlancamento_contaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrlancamento_contaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 15
    end
  end
  object qrcaixa_operador: TUniQuery
    SQL.Strings = (
      'select * from c000045')
    Left = 872
    Top = 24
    object qrcaixa_operadorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcaixa_operadorCODFUNCIONARIO: TStringField
      FieldName = 'CODFUNCIONARIO'
      Size = 6
    end
    object qrcaixa_operadorSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object qrcaixa_operadorDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrcaixa_operadorSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcaixa_operadorSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrcaixa_operadorSITUACAO_ATUAL: TStringField
      FieldName = 'SITUACAO_ATUAL'
      Size = 50
    end
  end
  object qrconfig: TUniQuery
    Connection = conexao
    SQL.Strings = (
      'select * from c000001')
    Left = 760
    Top = 88
    object qrconfigCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconfigULTIMO_BACKUP: TDateTimeField
      FieldName = 'ULTIMO_BACKUP'
    end
    object qrconfigPAPEL_PAREDE: TStringField
      FieldName = 'PAPEL_PAREDE'
      Size = 150
    end
    object qrconfigAVISO_CONTAS_PAGAR: TIntegerField
      FieldName = 'AVISO_CONTAS_PAGAR'
    end
    object qrconfigAVISO_CHEQUE: TIntegerField
      FieldName = 'AVISO_CHEQUE'
    end
    object qrconfigESTOQUE_NEGATIVO: TIntegerField
      FieldName = 'ESTOQUE_NEGATIVO'
    end
    object qrconfigCASAS_DECIMAIS_QTDE: TIntegerField
      FieldName = 'CASAS_DECIMAIS_QTDE'
    end
    object qrconfigCASAS_DECIMAIS_VALOR: TIntegerField
      FieldName = 'CASAS_DECIMAIS_VALOR'
    end
    object qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField
      FieldName = 'VENDA_CADASTRO_CHEQUE'
    end
    object qrconfigVENDA_CADASTRO_CARTAO: TIntegerField
      FieldName = 'VENDA_CADASTRO_CARTAO'
    end
    object qrconfigVENDA_TIPONOTA: TIntegerField
      FieldName = 'VENDA_TIPONOTA'
    end
    object qrconfigVENDA_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'VENDA_QTDE_VIAS_NOTA'
    end
    object qrconfigVENDA_PORTA_IMPRESSORA: TStringField
      FieldName = 'VENDA_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigVENDA_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'VENDA_TIPO_IMPRESSORA'
    end
    object qrconfigVENDA_LIMITE_CLIENTE: TIntegerField
      FieldName = 'VENDA_LIMITE_CLIENTE'
    end
    object qrconfigOS_TIPONOTA: TIntegerField
      FieldName = 'OS_TIPONOTA'
    end
    object qrconfigOS_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'OS_QTDE_VIAS_NOTA'
    end
    object qrconfigOS_PORTA_IMPRESSORA: TStringField
      FieldName = 'OS_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigOS_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'OS_TIPO_IMPRESSORA'
    end
    object qrconfigORCAMENTO_TIPONOTA: TIntegerField
      FieldName = 'ORCAMENTO_TIPONOTA'
    end
    object qrconfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'ORCAMENTO_QTDE_VIAS_NOTA'
    end
    object qrconfigORCAMENTO_PORTA_IMPRESSORA: TStringField
      FieldName = 'ORCAMENTO_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'ORCAMENTO_TIPO_IMPRESSORA'
    end
    object qrconfigCONTASRECEBER_CARENCIA: TIntegerField
      FieldName = 'CONTASRECEBER_CARENCIA'
    end
    object qrconfigCONTASRECEBER_TAXAJUROS: TFloatField
      FieldName = 'CONTASRECEBER_TAXAJUROS'
    end
    object qrconfigCONTASRECEBER_MULTA: TFloatField
      FieldName = 'CONTASRECEBER_MULTA'
    end
    object qrconfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField
      FieldName = 'CONTASRECEBER_DESCONTO_PERCENT'
    end
    object qrconfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField
      FieldName = 'CONTASRECEBER_DESCONTO_PERMITIR'
    end
    object qrconfigECF_MODELO: TStringField
      FieldName = 'ECF_MODELO'
      Size = 30
    end
    object qrconfigECF_PORTA: TStringField
      FieldName = 'ECF_PORTA'
      Size = 50
    end
    object qrconfigECF_TEF: TIntegerField
      FieldName = 'ECF_TEF'
    end
    object qrconfigECF_TIPO: TStringField
      FieldName = 'ECF_TIPO'
    end
    object qrconfigBALANCAPDV_MODELO: TStringField
      FieldName = 'BALANCAPDV_MODELO'
      Size = 50
    end
    object qrconfigBALANCAPDV_PORTA: TStringField
      FieldName = 'BALANCAPDV_PORTA'
      Size = 10
    end
    object qrconfigIMPRESSORACHEQUE_MODELO: TStringField
      FieldName = 'IMPRESSORACHEQUE_MODELO'
      Size = 50
    end
    object qrconfigIMPRESSORACHEQUE_PORTA: TStringField
      FieldName = 'IMPRESSORACHEQUE_PORTA'
      Size = 10
    end
    object qrconfigBALANCA_MODELO: TStringField
      FieldName = 'BALANCA_MODELO'
      Size = 50
    end
    object qrconfigIMPRESSORABARRAS_MODELO: TStringField
      FieldName = 'IMPRESSORABARRAS_MODELO'
      Size = 50
    end
    object qrconfigBALANCA_CAMINHO: TStringField
      FieldName = 'BALANCA_CAMINHO'
      Size = 100
    end
    object qrconfigCADASTRO_PRODUTO: TStringField
      FieldName = 'CADASTRO_PRODUTO'
    end
    object qrconfigRAMO_ATIVIDADE: TIntegerField
      FieldName = 'RAMO_ATIVIDADE'
    end
    object qrconfigEXTRATO_TIPONOTA: TIntegerField
      FieldName = 'EXTRATO_TIPONOTA'
    end
    object qrconfigBOBINA_SUBIRPAPEL: TIntegerField
      FieldName = 'BOBINA_SUBIRPAPEL'
    end
    object qrconfigCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 10
    end
    object qrconfigBOLETO_FORMAPGTO: TStringField
      FieldName = 'BOLETO_FORMAPGTO'
    end
    object qrconfigPLANO_VENDA_AV: TStringField
      FieldName = 'PLANO_VENDA_AV'
      Size = 30
    end
    object qrconfigPLANO_VENDA_AP: TStringField
      FieldName = 'PLANO_VENDA_AP'
      Size = 30
    end
    object qrconfigPLANO_OS_AV: TStringField
      FieldName = 'PLANO_OS_AV'
      Size = 30
    end
    object qrconfigPLANO_OS_AP: TStringField
      FieldName = 'PLANO_OS_AP'
      Size = 30
    end
    object qrconfigPLANO_OUTRAS_ENTRADAS: TStringField
      FieldName = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
    end
    object qrconfigPLANO_OUTRAS_SAIDAS: TStringField
      FieldName = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
    end
    object qrconfigPLANO_RECEBTO_CREDIARIO: TStringField
      FieldName = 'PLANO_RECEBTO_CREDIARIO'
      Size = 30
    end
    object qrconfigNF_ITENS_PAGINA: TIntegerField
      FieldName = 'NF_ITENS_PAGINA'
    end
    object qrconfigNF_ITENS_TRANSPORTE: TIntegerField
      FieldName = 'NF_ITENS_TRANSPORTE'
    end
    object qrconfigNF_LINHA_TRANSPORTE: TIntegerField
      FieldName = 'NF_LINHA_TRANSPORTE'
    end
    object qrconfigNF_SALTO_PAGINA: TIntegerField
      FieldName = 'NF_SALTO_PAGINA'
    end
    object qrconfigNF_TIPO: TIntegerField
      FieldName = 'NF_TIPO'
    end
    object qrconfigNF_IMPRESSORA: TStringField
      FieldName = 'NF_IMPRESSORA'
      Size = 100
    end
    object qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField
      FieldName = 'VENDA_FECHAMENTO_CAIXA'
    end
    object qrconfigDESCONTO_AVISTA: TFloatField
      FieldName = 'DESCONTO_AVISTA'
    end
    object qrconfigDESCONTO_PRODUTO: TFloatField
      FieldName = 'DESCONTO_PRODUTO'
    end
    object qrconfigDESCONTO_TOTALNOTA: TFloatField
      FieldName = 'DESCONTO_TOTALNOTA'
    end
    object qrconfigTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
    end
    object qrconfigVENDA_ALTERAR_PRECO: TIntegerField
      FieldName = 'VENDA_ALTERAR_PRECO'
    end
    object qrconfigNF_LINHA_SUBTOTAL: TIntegerField
      FieldName = 'NF_LINHA_SUBTOTAL'
    end
    object qrconfigNF_LINHA_TOTAL: TIntegerField
      FieldName = 'NF_LINHA_TOTAL'
    end
    object qrconfigECF_CAIXA: TStringField
      FieldName = 'ECF_CAIXA'
      Size = 3
    end
    object qrconfigECF_SERIAL: TStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrconfigFARMACIA_ENVIO: TStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 60
    end
    object qrconfigFARMACIA_RESPOSTA: TStringField
      FieldName = 'FARMACIA_RESPOSTA'
      Size = 60
    end
    object qrconfigFARMACIA_ENVIO_RESPOSTA: TStringField
      FieldName = 'FARMACIA_ENVIO_RESPOSTA'
      Size = 60
    end
    object qrconfigFARMACIA_LOGIN: TStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrconfigFARMACIA_SENHA: TStringField
      FieldName = 'FARMACIA_SENHA'
    end
    object qrconfigULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField
      FieldName = 'IMPRIME_CUPOM_VINCULADO'
    end
    object qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField
      FieldName = 'IMPRIME_PRODUTOS_VINCULADOS'
    end
    object qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField
      FieldName = 'IMPRIME_COMPROVANTE_DEBITO'
    end
    object qrconfigIMPRIME_DUPLICATA: TIntegerField
      FieldName = 'IMPRIME_DUPLICATA'
    end
    object qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField
      FieldName = 'CONTASRECEBER_BLOQUEIO'
    end
    object qrconfigRECIBO_TIPONOTA: TIntegerField
      FieldName = 'RECIBO_TIPONOTA'
    end
    object qrconfigNR_CONTROLE_ECF: TStringField
      FieldName = 'NR_CONTROLE_ECF'
      Size = 6
    end
    object qrconfigBALANCA_PROGRAMA: TStringField
      FieldName = 'BALANCA_PROGRAMA'
      Size = 150
    end
    object qrconfigTIPO_DUPLICATA: TStringField
      FieldName = 'TIPO_DUPLICATA'
    end
    object qrconfigCONCILIA_VENDA: TIntegerField
      FieldName = 'CONCILIA_VENDA'
    end
    object qrconfigCONTROLA_ENTREGA: TIntegerField
      FieldName = 'CONTROLA_ENTREGA'
    end
    object qrconfigENTREGA_IMPRESSAO: TIntegerField
      FieldName = 'ENTREGA_IMPRESSAO'
    end
    object qrconfigENTREGA_VIAS: TIntegerField
      FieldName = 'ENTREGA_VIAS'
    end
    object qrconfigCONDICIONAL: TIntegerField
      FieldName = 'CONDICIONAL'
    end
    object qrconfigCONDICIONAL_PRAZO: TIntegerField
      FieldName = 'CONDICIONAL_PRAZO'
    end
    object qrconfigVS_ATIVAR: TIntegerField
      FieldName = 'VS_ATIVAR'
    end
    object qrconfigVS_DINHEIRO: TIntegerField
      FieldName = 'VS_DINHEIRO'
    end
    object qrconfigVS_CHEQUEAV: TIntegerField
      FieldName = 'VS_CHEQUEAV'
    end
    object qrconfigVS_CHEQUEAP: TIntegerField
      FieldName = 'VS_CHEQUEAP'
    end
    object qrconfigVS_CARTRAOCRED: TIntegerField
      FieldName = 'VS_CARTRAOCRED'
    end
    object qrconfigVS_CARTAODEB: TIntegerField
      FieldName = 'VS_CARTAODEB'
    end
    object qrconfigVS_CREDIARIO: TIntegerField
      FieldName = 'VS_CREDIARIO'
    end
    object qrconfigVS_CLIENTE_VISTA: TStringField
      FieldName = 'VS_CLIENTE_VISTA'
      Size = 6
    end
    object qrconfigVS_CAIXA: TIntegerField
      FieldName = 'VS_CAIXA'
    end
    object qrconfigVS_RELATORIO: TIntegerField
      FieldName = 'VS_RELATORIO'
    end
    object qrconfigVS_VIAS: TIntegerField
      FieldName = 'VS_VIAS'
    end
    object qrconfigVS_VISUALIZAR: TIntegerField
      FieldName = 'VS_VISUALIZAR'
    end
    object qrconfigCONDICIONAL_MODELO: TIntegerField
      FieldName = 'CONDICIONAL_MODELO'
    end
    object qrconfigALTERAR_UNITARIO: TIntegerField
      FieldName = 'ALTERAR_UNITARIO'
    end
    object qrconfigCONTASRECEBER_VALORJUROS: TFloatField
      FieldName = 'CONTASRECEBER_VALORJUROS'
    end
    object qrconfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField
      FieldName = 'CONTASRECEBER_JUROS_DINHEIRO'
    end
    object qrconfigPLANO_DUPLICATA_NFE: TStringField
      FieldName = 'PLANO_DUPLICATA_NFE'
      Size = 30
    end
    object qrconfigVAREJO_ATACADO: TIntegerField
      FieldName = 'VAREJO_ATACADO'
    end
    object qrconfigVISUALIZA_MENSAGEM: TIntegerField
      FieldName = 'VISUALIZA_MENSAGEM'
    end
    object qrconfigSERIAL_REPETIDO: TIntegerField
      FieldName = 'SERIAL_REPETIDO'
    end
    object qrconfigOCULTAR_CUSTO: TIntegerField
      FieldName = 'OCULTAR_CUSTO'
    end
    object qrconfigOCULTAR_PRODUTO_INATIVO: TIntegerField
      FieldName = 'OCULTAR_PRODUTO_INATIVO'
    end
    object qrconfigOCULTAR_CLIENTE_INATIVO: TIntegerField
      FieldName = 'OCULTAR_CLIENTE_INATIVO'
    end
    object qrconfigOBS_FARMA: TIntegerField
      FieldName = 'OBS_FARMA'
    end
    object qrconfigOBS_FARMA_TEXTO: TStringField
      FieldName = 'OBS_FARMA_TEXTO'
      Size = 45
    end
    object qrconfigCUSTO_MAIOR_VENDA: TIntegerField
      FieldName = 'CUSTO_MAIOR_VENDA'
    end
    object qrconfigVENDER_ABAIXO_CUSTO: TIntegerField
      FieldName = 'VENDER_ABAIXO_CUSTO'
    end
    object qrconfigNF_GERAR_RECEBER: TIntegerField
      FieldName = 'NF_GERAR_RECEBER'
    end
    object qrconfigNF_CODIGOBARRA_NFE: TIntegerField
      FieldName = 'NF_CODIGOBARRA_NFE'
    end
    object qrconfigNF_GRADE_NFE: TIntegerField
      FieldName = 'NF_GRADE_NFE'
    end
    object qrconfigNF_SERIAL_NFE: TIntegerField
      FieldName = 'NF_SERIAL_NFE'
    end
    object qrconfigNF_REFERENCIA_NFE: TIntegerField
      FieldName = 'NF_REFERENCIA_NFE'
    end
    object qrconfigNF_GERAR_DUPLICATA: TIntegerField
      FieldName = 'NF_GERAR_DUPLICATA'
    end
    object qrconfigVALE_CAIXA: TIntegerField
      FieldName = 'VALE_CAIXA'
    end
    object qrconfigCONTAS_RECEBER_BLOQUEIO: TIntegerField
      FieldName = 'CONTAS_RECEBER_BLOQUEIO'
    end
    object qrconfigCUPOM_IMPRIMIR_CODIGO: TIntegerField
      FieldName = 'CUPOM_IMPRIMIR_CODIGO'
    end
    object qrconfigCLIENTE_PEDE_CPF: TIntegerField
      FieldName = 'CLIENTE_PEDE_CPF'
    end
    object qrconfigVERIFICA_COD_BARRA: TIntegerField
      FieldName = 'VERIFICA_COD_BARRA'
    end
    object qrconfigVERIFICA_NOME_PRODUTO: TIntegerField
      FieldName = 'VERIFICA_NOME_PRODUTO'
    end
    object qrconfigVS_FRETE: TIntegerField
      FieldName = 'VS_FRETE'
    end
    object qrconfigINVENTARIO_AUTOMATICO: TIntegerField
      FieldName = 'INVENTARIO_AUTOMATICO'
    end
    object qrconfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField
      FieldName = 'BAIXAR_ESTOQUE_NOTA_SAIDA'
    end
    object qrconfigETIQUETA_07: TIntegerField
      FieldName = 'ETIQUETA_07'
    end
    object qrconfigETIQUETA_07_1: TIntegerField
      FieldName = 'ETIQUETA_07_1'
    end
    object qrconfigETIQUETA_07_2: TIntegerField
      FieldName = 'ETIQUETA_07_2'
    end
    object qrconfigEMAIL_SERVIDOR_SMTP: TStringField
      FieldName = 'EMAIL_SERVIDOR_SMTP'
      Size = 100
    end
    object qrconfigEMAIL_PORTA: TStringField
      FieldName = 'EMAIL_PORTA'
      Size = 10
    end
    object qrconfigEMAIL_USUARIO: TStringField
      FieldName = 'EMAIL_USUARIO'
      Size = 100
    end
    object qrconfigEMAIL_SENHA: TStringField
      FieldName = 'EMAIL_SENHA'
    end
    object qrconfigEMAIL_ASSUNTO: TStringField
      FieldName = 'EMAIL_ASSUNTO'
      Size = 100
    end
    object qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField
      FieldName = 'EMAIL_EXIGE_CONEXAO'
    end
    object qrconfigEMAIL_MENSAGEM: TBlobField
      FieldName = 'EMAIL_MENSAGEM'
    end
    object qrconfigINESTRA: TIntegerField
      FieldName = 'INESTRA'
    end
    object qrconfigFARMACIA_INVENTARIO_FECHA: TIntegerField
      FieldName = 'FARMACIA_INVENTARIO_FECHA'
    end
    object qrconfigFARMACIA_ENVIO_NOVARTIS: TStringField
      FieldName = 'FARMACIA_ENVIO_NOVARTIS'
      Size = 60
    end
    object qrconfigFARMACIA_RESPOSTA_NOVARTIS: TStringField
      FieldName = 'FARMACIA_RESPOSTA_NOVARTIS'
      Size = 60
    end
    object qrconfigFARMACIA_INVENTARIO_CONFIRMA: TStringField
      FieldName = 'FARMACIA_INVENTARIO_CONFIRMA'
      Size = 1
    end
    object qrconfigFARMACIA_INVENTARIO_DATA: TDateTimeField
      FieldName = 'FARMACIA_INVENTARIO_DATA'
    end
    object qrconfigCALCULA_ISENTAS_OUTRAS: TIntegerField
      FieldName = 'CALCULA_ISENTAS_OUTRAS'
    end
    object qrconfigUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrconfigUSA_PRODUTOR_RURAL: TIntegerField
      FieldName = 'USA_PRODUTOR_RURAL'
    end
    object qrconfigIND_CLIE_ENTRADA: TStringField
      FieldName = 'IND_CLIE_ENTRADA'
      Size = 6
    end
    object qrconfigIND_CFOP_ENTRADA: TStringField
      FieldName = 'IND_CFOP_ENTRADA'
      Size = 5
    end
    object qrconfigIND_CLIE_SAIDA: TStringField
      FieldName = 'IND_CLIE_SAIDA'
      Size = 6
    end
    object qrconfigIND_CFOP_SAIDA: TStringField
      FieldName = 'IND_CFOP_SAIDA'
      Size = 5
    end
    object qrconfigIND_CLIE_PERDA: TStringField
      FieldName = 'IND_CLIE_PERDA'
      Size = 6
    end
    object qrconfigIND_CFOP_PERDA: TStringField
      FieldName = 'IND_CFOP_PERDA'
      Size = 5
    end
    object qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField
      FieldName = 'IND_MOSTRA_COMPOSICAO'
    end
    object qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField
      FieldName = 'CHECA_SERIAL_NOTA_SAIDA'
    end
    object qrconfigCOR_COMERCIO: TStringField
      FieldName = 'COR_COMERCIO'
      Size = 10
    end
    object qrconfigLOGO_COMERCIO: TStringField
      FieldName = 'LOGO_COMERCIO'
      Size = 100
    end
    object qrconfigCOR_FARMACIA: TStringField
      FieldName = 'COR_FARMACIA'
      Size = 10
    end
    object qrconfigLOGO_FARMACIA: TStringField
      FieldName = 'LOGO_FARMACIA'
      Size = 100
    end
    object qrconfigCOR_PECAS: TStringField
      FieldName = 'COR_PECAS'
      Size = 10
    end
    object qrconfigLOGO_PECAS: TStringField
      FieldName = 'LOGO_PECAS'
      Size = 100
    end
    object qrconfigCOR_MERCADO: TStringField
      FieldName = 'COR_MERCADO'
      Size = 10
    end
    object qrconfigLOGO_MERCADO: TStringField
      FieldName = 'LOGO_MERCADO'
      Size = 100
    end
    object qrconfigCOR_POSTO: TStringField
      FieldName = 'COR_POSTO'
      Size = 10
    end
    object qrconfigLOGO_POSTO: TStringField
      FieldName = 'LOGO_POSTO'
      Size = 100
    end
    object qrconfigIND_CLIE_ENTRADA_DESC: TStringField
      FieldName = 'IND_CLIE_ENTRADA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_ENTRADA_DESC: TStringField
      FieldName = 'IND_CFOP_ENTRADA_DESC'
      Size = 30
    end
    object qrconfigIND_CLIE_SAIDA_DESC: TStringField
      FieldName = 'IND_CLIE_SAIDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_SAIDA_DESC: TStringField
      FieldName = 'IND_CFOP_SAIDA_DESC'
      Size = 30
    end
    object qrconfigIND_CLIE_PERDA_DESC: TStringField
      FieldName = 'IND_CLIE_PERDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_PERDA_DESC: TStringField
      FieldName = 'IND_CFOP_PERDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_VENDA_DENTRO: TStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_VENDA_FORA: TStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrconfigIND_CFOP_DEVOLUCAO_DENTRO: TStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_DEVOLUCAO_FORA: TStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrconfigIND_CFOP_SERVICO_DENTRO: TStringField
      FieldName = 'IND_CFOP_SERVICO_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_SERVICO_FORA: TStringField
      FieldName = 'IND_CFOP_SERVICO_FORA'
      Size = 6
    end
    object qrconfigCFOP_VENDA_DENTRO_DESC: TStringField
      FieldName = 'CFOP_VENDA_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_VENDA_FORA_DESC: TStringField
      FieldName = 'CFOP_VENDA_FORA_DESC'
      Size = 30
    end
    object qrconfigCFOP_DEVOLUCAO_DENTRO_DESC: TStringField
      FieldName = 'CFOP_DEVOLUCAO_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_DEVOLUCAO_FORA_DESC: TStringField
      FieldName = 'CFOP_DEVOLUCAO_FORA_DESC'
      Size = 30
    end
    object qrconfigCFOP_SERVICO_DENTRO_DESC: TStringField
      FieldName = 'CFOP_SERVICO_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_SERVICO_FORA_DESC: TStringField
      FieldName = 'CFOP_SERVICO_FORA_DESC'
      Size = 30
    end
    object qrconfigTIPO_NF: TIntegerField
      FieldName = 'TIPO_NF'
    end
    object qrconfigCOR_ESTOQUE_POSITIVO: TStringField
      FieldName = 'COR_ESTOQUE_POSITIVO'
      Size = 10
    end
    object qrconfigCOR_ESTOQUE_NEGATIVO: TStringField
      FieldName = 'COR_ESTOQUE_NEGATIVO'
      Size = 10
    end
    object qrconfigCOR_ESTOQUE_ZERADO: TStringField
      FieldName = 'COR_ESTOQUE_ZERADO'
      Size = 10
    end
    object qrconfigTIPO_PESQUISA: TIntegerField
      FieldName = 'TIPO_PESQUISA'
    end
    object qrconfigECF_CONCOMITANTE: TIntegerField
      FieldName = 'ECF_CONCOMITANTE'
    end
    object qrconfigPLANO_PAGTO_FORN: TStringField
      FieldName = 'PLANO_PAGTO_FORN'
      Size = 30
    end
    object qrconfigHAB_PREVENDA: TIntegerField
      FieldName = 'HAB_PREVENDA'
    end
    object qrconfigCODCLIENTEAV: TStringField
      FieldName = 'CODCLIENTEAV'
      Size = 6
    end
    object qrconfigCODCLIENTEMODELO: TStringField
      FieldName = 'CODCLIENTEMODELO'
      Size = 6
    end
    object qrconfigCODPRODUTOMODELO: TStringField
      FieldName = 'CODPRODUTOMODELO'
      Size = 6
    end
    object qrconfigCODFORNECEDORMODELO: TStringField
      FieldName = 'CODFORNECEDORMODELO'
      Size = 6
    end
    object qrconfigUSA_CAIXA_DIARIO: TIntegerField
      FieldName = 'USA_CAIXA_DIARIO'
    end
    object qrconfigIMPRIMI_ORCAMENTO_AUTO: TIntegerField
      FieldName = 'IMPRIMI_ORCAMENTO_AUTO'
    end
    object qrconfigFIXA_FORMA_PGTO_CLIENTE: TIntegerField
      FieldName = 'FIXA_FORMA_PGTO_CLIENTE'
    end
    object qrconfigVERSAOBD: TStringField
      FieldName = 'VERSAOBD'
      Size = 8
    end
    object qrconfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField
      FieldName = 'USA_CAIXA_PADRAO_USUARIO'
    end
    object qrconfigTEXTO_PADRAO_VENDA: TStringField
      FieldName = 'TEXTO_PADRAO_VENDA'
      Size = 200
    end
    object qrconfigTEXTO_PADRAO_DEVOLUCAO: TStringField
      FieldName = 'TEXTO_PADRAO_DEVOLUCAO'
      Size = 200
    end
    object qrconfigTEXTO_PADRAO_GARANTIA: TStringField
      FieldName = 'TEXTO_PADRAO_GARANTIA'
      Size = 200
    end
    object qrconfigAVISA_ESTOQUE_MINIMO: TIntegerField
      FieldName = 'AVISA_ESTOQUE_MINIMO'
    end
  end
  object qrcaixa_mov: TUniQuery
    SQL.Strings = (
      'select * from c000044')
    Left = 136
    Top = 136
    object qrcaixa_movCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrcaixa_movCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcaixa_movCODOPERADOR: TStringField
      FieldName = 'CODOPERADOR'
      Size = 6
    end
    object qrcaixa_movDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrcaixa_movSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object qrcaixa_movENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object qrcaixa_movCODCONTA: TStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrcaixa_movHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrcaixa_movMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrcaixa_movVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrcaixa_movCODNFSAIDA: TStringField
      FieldName = 'CODNFSAIDA'
      Size = 10
    end
  end
  object qrcontacorrente: TUniQuery
    SQL.Strings = (
      'select * from c000041')
    Left = 872
    Top = 88
    object qrcontacorrenteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcontacorrenteCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object qrcontacorrenteCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object qrcontacorrenteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qrcontacorrenteSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrcontacorrenteTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 30
    end
    object qrcontacorrenteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 30
    end
    object qrcontacorrenteCONTADIG: TStringField
      FieldName = 'CONTADIG'
    end
    object qrcontacorrenteAGENCIADIG: TStringField
      FieldName = 'AGENCIADIG'
    end
    object qrcontacorrenteCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
    end
    object qrcontacorrenteFISICAJURIDICA: TStringField
      FieldName = 'FISICAJURIDICA'
      Size = 10
    end
    object qrcontacorrenteINSTRUCOES1: TStringField
      FieldName = 'INSTRUCOES1'
      Size = 80
    end
    object qrcontacorrenteINSTRUCOES2: TStringField
      FieldName = 'INSTRUCOES2'
      Size = 80
    end
    object qrcontacorrenteINSTRUCOES3: TStringField
      FieldName = 'INSTRUCOES3'
      Size = 80
    end
    object qrcontacorrenteCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
    end
    object qrcontacorrenteNOSSONUM: TStringField
      FieldName = 'NOSSONUM'
    end
    object qrcontacorrenteTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrcontacorrenteLAYOUT: TIntegerField
      FieldName = 'LAYOUT'
    end
    object qrcontacorrenteCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 2
    end
  end
  object qrbanco: TUniQuery
    SQL.Strings = (
      'select * from c000013')
    Left = 48
    Top = 80
    object qrbancoNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 6
    end
    object qrbancoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object qrbancoLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object qrbancoCARTAO_CREDITO: TIntegerField
      FieldName = 'CARTAO_CREDITO'
    end
    object qrbancoFINANCEIRA: TIntegerField
      FieldName = 'FINANCEIRA'
    end
    object qrbancoRESSARCIMENTO: TIntegerField
      FieldName = 'RESSARCIMENTO'
    end
    object qrbancoPRAZO: TIntegerField
      FieldName = 'PRAZO'
    end
    object qrbancoCOMISSAO_CREDITO: TFloatField
      FieldName = 'COMISSAO_CREDITO'
    end
    object qrbancoCOMISSAO_DEBITO: TFloatField
      FieldName = 'COMISSAO_DEBITO'
    end
    object qrbancoREC_DEBITO: TIntegerField
      FieldName = 'REC_DEBITO'
    end
    object qrbancoREC_CREDITO: TIntegerField
      FieldName = 'REC_CREDITO'
    end
    object qrbancoCONTA_PADRAO: TStringField
      FieldName = 'CONTA_PADRAO'
      Size = 15
    end
    object qrbancoTITULAR_CONTA_PADRAO: TStringField
      FieldName = 'TITULAR_CONTA_PADRAO'
      Size = 100
    end
  end
  object qrproduto: TUniQuery
    SQL.Strings = (
      'select * from c000025')
    Left = 496
    Top = 80
    object qrprodutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrprodutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrprodutoCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrprodutoCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrprodutoNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrprodutoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      BlobType = ftMemo
    end
    object qrprodutoLOCALICAZAO: TStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrprodutoVALIDADE: TStringField
      FieldName = 'VALIDADE'
    end
    object qrprodutoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrprodutoCODRECEITA: TStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrprodutoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrprodutoAUTO_APLICACAO: TStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrprodutoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrprodutoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrprodutoCST: TStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrprodutoNBM: TStringField
      FieldName = 'NBM'
    end
    object qrprodutoNCM: TStringField
      FieldName = 'NCM'
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrprodutoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrprodutoFARMACIA_CONTROLADO: TStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrprodutoULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrprodutoULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrprodutoDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrprodutoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrprodutoAPRESENTACAO: TStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodutoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrprodutoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrprodutoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrprodutoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrprodutoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrprodutoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrprodutoDATA_INVENTARIO_ATUAL: TDateTimeField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrprodutoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrprodutoPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrprodutoREFERENCIA_FORNECEDOR: TStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrprodutoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrprodutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrprodutoCOR: TStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrprodutoINCIDENCIA_PISCOFINS: TStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrprodutoVEIC_CHASSI: TStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrprodutoVEIC_SERIE: TStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrprodutoVEIC_POTENCIA: TStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrprodutoVEIC_PESO_LIQUIDO: TStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrprodutoVEIC_PESO_BRUTO: TStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrprodutoVEIC_TIPO_COMBUSTIVEL: TStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrprodutoVEIC_RENAVAM: TStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrprodutoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrprodutoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrprodutoVEIC_TIPO: TStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrprodutoVEIC_TIPO_PINTURA: TStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrprodutoVEIC_COD_COR: TStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrprodutoVEIC_COR: TStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrprodutoVEIC_VIN: TStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrprodutoVEIC_NUMERO_MOTOR: TStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrprodutoVEIC_CMKG: TStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrprodutoVEIC_CM3: TStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrprodutoVEIC_DISTANCIA_EIXO: TStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrprodutoVEIC_COD_MARCA: TStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrprodutoVEIC_ESPECIE: TStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrprodutoVEIC_CONDICAO: TStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrprodutoLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrprodutoLOTE_VALIDADE: TDateTimeField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrprodutoCODBARRA_NOVARTIS: TStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrprodutoFARMACIA_DCB: TStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrprodutoFARMACIA_ABCFARMA: TStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrprodutoFARMACIA_APRESENTACAO_CAIXA: TStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrprodutoFARMACIA_PRINCIPIOATIVO: TStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrprodutoULTIMA_COMPRA: TDateTimeField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrprodutoFARMACIA_DATAVIGENCIA: TDateTimeField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrprodutoFARMACIA_TIPO: TStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrprodutoUSA_COMBUSTIVEL: TStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrprodutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrprodutoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrprodutoCOMPOSICAO1: TStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrprodutoCOMPOSICAO2: TStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrprodutoIAT: TStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrprodutoIPPT: TStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrprodutoSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrprodutoFLAG_SIS: TStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrprodutoFLAG_ACEITO: TStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrprodutoFLAG_EST: TStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrprodutoCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrprodutoCODORIGINAL: TStringField
      FieldName = 'CODORIGINAL'
    end
    object qrprodutoCUSTO_ATACADO: TFloatField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrprodutoUNIDADE_ATACADO: TStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrprodutoQTDE_EMBALAGEMATACADO: TFloatField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrprodutoPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
    end
    object qrprodutoPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
    end
    object qrprodutoPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
    end
    object qrprodutoPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
    end
    object qrprodutoPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
    end
    object qrprodutoPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprodutoPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprodutoPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprodutoPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprodutoPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprodutoPMARGEMATACADO6: TFloatField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrprodutoPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
    end
    object qrprodutoPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
    end
    object qrprodutoPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
    end
    object qrprodutoPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
    end
    object qrprodutoPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
    end
    object qrprodutoIND_CFOP: TStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrprodutoCFOP_DESC: TStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrprodutoUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrprodutoIND_CFOP_VENDA_DENTRO: TStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrprodutoCODCONTA: TStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrprodutoIND_CFOP_VENDA_FORA: TStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_FORA: TStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_DENTRO: TStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_FORA: TStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrprodutoUSA_TB_PC: TStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
  end
  object qrfornecedor: TUniQuery
    SQL.Strings = (
      'select * from c000009')
    Left = 424
    Top = 24
    object qrfornecedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qrfornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 100
    end
    object qrfornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrfornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrfornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrfornecedorUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrfornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrfornecedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qrfornecedorTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrfornecedorTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object qrfornecedorFAX: TStringField
      FieldName = 'FAX'
    end
    object qrfornecedorCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 40
    end
    object qrfornecedorCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 40
    end
    object qrfornecedorCELULAR1: TStringField
      FieldName = 'CELULAR1'
    end
    object qrfornecedorCELULAR2: TStringField
      FieldName = 'CELULAR2'
    end
    object qrfornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrfornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qrfornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrfornecedorIE: TStringField
      FieldName = 'IE'
      Size = 25
    end
    object qrfornecedorBANCO: TStringField
      FieldName = 'BANCO'
      Size = 30
    end
    object qrfornecedorAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object qrfornecedorCONTA: TStringField
      FieldName = 'CONTA'
    end
    object qrfornecedorOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrfornecedorOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrfornecedorOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrfornecedorDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrfornecedorTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrfornecedorASSISTENCIA_TECNICA: TIntegerField
      FieldName = 'ASSISTENCIA_TECNICA'
    end
    object qrfornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrfornecedorIM: TStringField
      FieldName = 'IM'
      Size = 25
    end
    object qrfornecedorREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 80
    end
    object qrfornecedorREP_TELEFONE: TStringField
      FieldName = 'REP_TELEFONE'
    end
    object qrfornecedorREP_ENDERECO: TStringField
      FieldName = 'REP_ENDERECO'
      Size = 60
    end
    object qrfornecedorREP_BAIRRO: TStringField
      FieldName = 'REP_BAIRRO'
      Size = 40
    end
    object qrfornecedorREP_COMPLEMENTO: TStringField
      FieldName = 'REP_COMPLEMENTO'
      Size = 50
    end
    object qrfornecedorREP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      Size = 40
    end
    object qrfornecedorREP_UF: TStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object qrfornecedorREP_CEP: TStringField
      FieldName = 'REP_CEP'
      Size = 15
    end
    object qrfornecedorREP_TELEFONE1: TStringField
      FieldName = 'REP_TELEFONE1'
    end
    object qrfornecedorREP_TELEFONE2: TStringField
      FieldName = 'REP_TELEFONE2'
    end
    object qrfornecedorREP_TELEFONE3: TStringField
      FieldName = 'REP_TELEFONE3'
    end
    object qrfornecedorREP_FAX: TStringField
      FieldName = 'REP_FAX'
    end
    object qrfornecedorREP_CNPJ: TStringField
      FieldName = 'REP_CNPJ'
      Size = 25
    end
    object qrfornecedorREP_IE: TStringField
      FieldName = 'REP_IE'
      Size = 25
    end
    object qrfornecedorREP_HOME_PAGE: TStringField
      FieldName = 'REP_HOME_PAGE'
      Size = 100
    end
    object qrfornecedorREP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      Size = 100
    end
    object qrfornecedorCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrfornecedorCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrfornecedorIBGE: TStringField
      FieldName = 'IBGE'
      Size = 5
    end
  end
  object qrproduto_mov: TUniQuery
    SQL.Strings = (
      'select * from c000032')
    Left = 344
    Top = 24
    object qrproduto_movCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrproduto_movCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 30
    end
    object qrproduto_movCODPRODUTO: TStringField
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
    object qrproduto_movCFOP: TStringField
      FieldName = 'CFOP'
    end
    object qrproduto_movDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrproduto_movNUMERONOTA: TStringField
      FieldName = 'NUMERONOTA'
    end
    object qrproduto_movCODCLIENTE: TStringField
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
    object qrproduto_movCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
    end
    object qrproduto_movCODGRADE: TStringField
      FieldName = 'CODGRADE'
    end
    object qrproduto_movSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrproduto_movUNIDADE: TStringField
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
    object qrproduto_movECF_SERIE: TStringField
      FieldName = 'ECF_SERIE'
      Size = 30
    end
    object qrproduto_movECF_CAIXA: TStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrproduto_movCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Size = 10
    end
    object qrproduto_movCUPOM_NUMERO: TStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object qrproduto_movCUPOM_MODELO: TStringField
      FieldName = 'CUPOM_MODELO'
    end
    object qrproduto_movCUPOM_ITEM: TStringField
      FieldName = 'CUPOM_ITEM'
    end
    object qrproduto_movALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrproduto_movCST: TStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrproduto_movLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 30
    end
    object qrproduto_movMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrproduto_movLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrproduto_movVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrproduto_movCODBARRA: TStringField
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
    object qrproduto_movLOJA: TStringField
      FieldName = 'LOJA'
      Size = 30
    end
    object qrproduto_movCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
    end
    object qrproduto_movTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrproduto_movCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 10
    end
    object qrproduto_movORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object qrproduto_movDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 80
    end
    object qrproduto_movPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object qrproduto_movCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
    end
  end
  object Qremitente: TUniQuery
    Connection = conexao
    SQL.Strings = (
      'select * from c999999')
    Left = 248
    Top = 80
    object QremitenteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QremitenteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object QremitenteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 80
    end
    object QremitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object QremitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object QremitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object QremitenteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QremitenteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QremitenteTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object QremitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object QremitenteIE: TStringField
      FieldName = 'IE'
    end
    object QremitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object QremitenteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object QremitenteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object QremitenteCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object QremitenteLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object QremitenteFAX: TStringField
      FieldName = 'FAX'
    end
    object QremitenteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QremitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object QremitenteCONTRIBUINTE_IPI: TStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 4
    end
    object QremitenteSUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 4
    end
    object QremitenteCOMENTARIOS: TStringField
      FieldName = 'COMENTARIOS'
      Size = 50
    end
    object QremitenteDATAHORA_INICIAL: TDateTimeField
      FieldName = 'DATAHORA_INICIAL'
    end
    object QremitenteDATAHORA_FINAL: TDateTimeField
      FieldName = 'DATAHORA_FINAL'
    end
    object QremitenteDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object QremitenteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object QremitenteVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QremitenteCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object QremitenteCPF: TStringField
      FieldName = 'CPF'
    end
    object QremitenteRG: TStringField
      FieldName = 'RG'
    end
    object QremitenteDIA_VENCIMENTO_CHAVE: TStringField
      FieldName = 'DIA_VENCIMENTO_CHAVE'
      Size = 2
    end
    object QremitenteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object QremitenteDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object QremitenteCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object QremitenteIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object QremitenteEMAIL_FINANCEIRO: TStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
  end
  object qrgrade_produto: TUniQuery
    SQL.Strings = (
      'select * from c000032')
    Left = 656
    Top = 136
    object qrgrade_produtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrgrade_produtoCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 30
    end
    object qrgrade_produtoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
    end
    object qrgrade_produtoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrgrade_produtoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrgrade_produtoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrgrade_produtoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrgrade_produtoCFOP: TStringField
      FieldName = 'CFOP'
    end
    object qrgrade_produtoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrgrade_produtoNUMERONOTA: TStringField
      FieldName = 'NUMERONOTA'
    end
    object qrgrade_produtoCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
    end
    object qrgrade_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrgrade_produtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrgrade_produtoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrgrade_produtoCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
    end
    object qrgrade_produtoCODGRADE: TStringField
      FieldName = 'CODGRADE'
    end
    object qrgrade_produtoSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrgrade_produtoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrgrade_produtoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrgrade_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrgrade_produtoICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrgrade_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrgrade_produtoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrgrade_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrgrade_produtoECF_SERIE: TStringField
      FieldName = 'ECF_SERIE'
      Size = 30
    end
    object qrgrade_produtoECF_CAIXA: TStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrgrade_produtoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Size = 10
    end
    object qrgrade_produtoCUPOM_NUMERO: TStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object qrgrade_produtoCUPOM_MODELO: TStringField
      FieldName = 'CUPOM_MODELO'
    end
    object qrgrade_produtoCUPOM_ITEM: TStringField
      FieldName = 'CUPOM_ITEM'
    end
    object qrgrade_produtoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrgrade_produtoCST: TStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrgrade_produtoLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 30
    end
    object qrgrade_produtoMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrgrade_produtoLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrgrade_produtoVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrgrade_produtoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 40
    end
    object qrgrade_produtoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrgrade_produtoCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrgrade_produtoPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrgrade_produtoCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrgrade_produtoLOJA: TStringField
      FieldName = 'LOJA'
      Size = 30
    end
    object qrgrade_produtoCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
    end
    object qrgrade_produtoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrgrade_produtoCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 10
    end
    object qrgrade_produtoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object qrgrade_produtoDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 80
    end
    object qrgrade_produtoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object qrgrade_produtoCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
    end
  end
  object qrfiscal_modelo: TUniQuery
    SQL.Strings = (
      'select * from c000082')
    Left = 560
    Top = 136
    object qrfiscal_modeloCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_modeloMODELO: TStringField
      FieldName = 'MODELO'
      Size = 100
    end
    object qrfiscal_modeloSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 5
    end
    object qrfiscal_modeloSINTEGRA: TStringField
      FieldName = 'SINTEGRA'
      Size = 2
    end
    object qrfiscal_modeloTIPO_REGISTRO: TStringField
      FieldName = 'TIPO_REGISTRO'
      Size = 10
    end
    object qrfiscal_modeloSEQUENCIANF: TIntegerField
      FieldName = 'SEQUENCIANF'
    end
  end
  object qrcfop: TUniQuery
    SQL.Strings = (
      'select * from c000030')
    Left = 48
    Top = 136
    object qrcfopCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 5
    end
    object qrcfopNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 200
    end
    object qrcfopTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrcfopICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrcfopISS: TFloatField
      FieldName = 'ISS'
    end
    object qrcfopOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrcfopOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrcfopOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrcfopOBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrcfopFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcfopVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object qrcfopVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object qrcfopVALOR3: TFloatField
      FieldName = 'VALOR3'
    end
    object qrcfopVALOR4: TFloatField
      FieldName = 'VALOR4'
    end
    object qrcfopVALOR5: TFloatField
      FieldName = 'VALOR5'
    end
    object qrcfopVALOR6: TFloatField
      FieldName = 'VALOR6'
    end
    object qrcfopVALOR7: TFloatField
      FieldName = 'VALOR7'
    end
    object qrcfopVALOR8: TFloatField
      FieldName = 'VALOR8'
    end
    object qrcfopVALOR9: TFloatField
      FieldName = 'VALOR9'
    end
    object qrcfopVALOR10: TFloatField
      FieldName = 'VALOR10'
    end
    object qrcfopST: TStringField
      FieldName = 'ST'
      Size = 11
    end
    object qrcfopCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrcfopREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object qrcfopMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrcfopSIMPLIFICADO: TStringField
      FieldName = 'SIMPLIFICADO'
      Size = 50
    end
    object qrcfopCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qrcfopFATURAMENTO: TIntegerField
      FieldName = 'FATURAMENTO'
    end
  end
  object qrgrupo: TUniQuery
    SQL.Strings = (
      'select * from c000017')
    Left = 344
    Top = 136
    object qrgrupoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrgrupoGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object qrgrupoALTERA_PRECO_ABCFARMA: TStringField
      FieldName = 'ALTERA_PRECO_ABCFARMA'
      Size = 1
    end
    object qrgrupoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrgrupoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
  end
  object qrmarca: TUniQuery
    SQL.Strings = (
      'select * from c000019')
    Left = 248
    Top = 136
    object qrmarcaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrmarcaNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrmarcaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrmarcaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrmarcaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrmarcaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrmarcaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrmarcaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrmarcaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object qrmarcaFAX: TStringField
      FieldName = 'FAX'
    end
    object qrmarcaCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 40
    end
    object qrmarcaCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 40
    end
    object qrmarcaCELULAR1: TStringField
      FieldName = 'CELULAR1'
    end
    object qrmarcaCELULAR2: TStringField
      FieldName = 'CELULAR2'
    end
    object qrmarcaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrmarcaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qrmarcaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 24
    end
    object qrmarcaIE: TStringField
      FieldName = 'IE'
    end
    object qrmarcaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrmarcaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrmarcaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
  end
  object qrsubgrupo: TUniQuery
    SQL.Strings = (
      'select * from c000018')
    Left = 560
    Top = 80
    object qrsubgrupoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsubgrupoCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrsubgrupoSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Size = 30
    end
    object qrsubgrupoALTERA_PRECO_ABCFARMA: TStringField
      FieldName = 'ALTERA_PRECO_ABCFARMA'
      Size = 1
    end
    object qrsubgrupoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrsubgrupoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
  end
  object qrcontasreceber: TUniQuery
    SQL.Strings = (
      'select * from c000049')
    Left = 656
    Top = 80
    object qrcontasreceberCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcontasreceberCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrcontasreceberCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcontasreceberCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcontasreceberCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcontasreceberDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberDATA_PAGAMENTO: TDateTimeField
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
    object qrcontasreceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberTIPO: TStringField
      FieldName = 'TIPO'
    end
    object qrcontasreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcontasreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontasreceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrcontasreceberCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcontasreceberCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrcontasreceberP5: TFloatField
      FieldName = 'P5'
    end
    object qrcontasreceberP3: TFloatField
      FieldName = 'P3'
    end
    object qrcontasreceberNUMERO_CUPOM: TStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object qrcontasreceberVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object qrcontasreceberCOD_VENDA_ORIGINAL: TStringField
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField
      FieldName = 'VALOR_ATUAL_ANTERIOR'
    end
    object qrcontasreceberEMAIL_ENVIADO: TIntegerField
      FieldName = 'EMAIL_ENVIADO'
    end
    object qrcontasreceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
  end
  object qrtotalizador: TUniQuery
    Connection = conexao
    Left = 136
    Top = 80
  end
  object query_servidor: TUniQuery
    Connection = Conexao_Servidor
    Left = 424
    Top = 80
  end
  object qrMestre: TUniQuery
    Left = 344
    Top = 80
  end
  object qrcliente: TUniQuery
    SQL.Strings = (
      'select * from c000007')
    Left = 496
    Top = 136
    object qrclienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrclienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrclienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrclienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrclienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrclienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrclienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qrclienteMORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrclienteTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrclienteSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrclienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrclienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object qrclienteTELEFONE3: TStringField
      FieldName = 'TELEFONE3'
    end
    object qrclienteCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrclienteRG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrclienteCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrclienteFILIACAO: TStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrclienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrclienteCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrclientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrclienteEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrclienteRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrclienteLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrclienteREF1: TStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrclienteREF2: TStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrclienteCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrclienteDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrclienteDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrclienteOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrclienteOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrclienteOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrclienteOBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrclienteOBS5: TStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrclienteOBS6: TStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrclienteNASCIMENTO: TStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrclienteCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrclienteCODCONVENIO: TStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrclienteCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrclienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrclienteRG_ORGAO: TStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrclienteRG_ESTADO: TStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrclienteRG_EMISSAO: TDateTimeField
      FieldName = 'RG_EMISSAO'
    end
    object qrclienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrclienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrclientePREVISAO: TDateTimeField
      FieldName = 'PREVISAO'
    end
    object qrclienteCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrclienteCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrclienteIBGE: TStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrclienteTAMANHO_CALCA: TStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrclienteTAMANHO_BLUSA: TStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrclienteTAMANHO_SAPATO: TStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrclienteCORRESP_ENDERECO: TStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrclienteCORRESP_BAIRRO: TStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrclienteCORRESP_CIDADE: TStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrclienteCORRESP_UF: TStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrclienteCORRESP_CEP: TStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrclienteCORRESP_COMPLEMENTO: TStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrclienteRG_PRODUTOR: TStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrclienteRESP1_NOME: TStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrclienteRESP1_CPF: TStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrclienteRESP1_RG: TStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrclienteRESP1_PROFISSAO: TStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrclienteRESP1_ESTADO_CIVIL: TStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrclienteRESP1_ENDERECO: TStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrclienteRESP1_BAIRRO: TStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrclienteRESP1_CIDADE: TStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrclienteRESP1_UF: TStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrclienteRESP1_CEP: TStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrclienteRESP2_NOME: TStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrclienteRESP2_CPF: TStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrclienteRESP2_RG: TStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrclienteRESP2_PROFISSAO: TStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrclienteRESP2_ESTADO_CIVIL: TStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrclienteRESP2_ENDERECO: TStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrclienteRESP2_BAIRRO: TStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrclienteRESP2_CIDADE: TStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrclienteRESP2_UF: TStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrclienteRESP2_CEP: TStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrclienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrclienteCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
  end
  object query: TUniQuery
    Connection = conexao
    Left = 424
    Top = 136
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 248
    Top = 24
  end
  object spCupom_Crediario: TUniStoredProc
    StoredProcName = 'ST_CUPOM_CREDIARIO_INSERT'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_CUPOM_CREDIARIO_INSERT(:CODIGO, :COD_CUPOM,' +
        ' :DATA, :HORA, :COD_CLIENTE, :VENCIMENTO, :VALOR, :DESCRICAO)')
    Connection = conexao
    Left = 48
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 30
        Value = nil
      end>
    CommandStoredProcName = 'ST_CUPOM_CREDIARIO_INSERT'
  end
  object spCupom: TUniStoredProc
    StoredProcName = 'ST_CUPOM_INSERT'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_CUPOM_INSERT(:CODIGO, :NUMERO, :CCF, :ECF, ' +
        ':DATA, :HORA, :QTDE_ITEM, :VALOR_PRODUTO, :VALOR_DESCONTO, :VALO' +
        'R_ACRESCIMO, :VALOR_TOTAL, :VALOR_PAGO, :VALOR_TROCO, :COD_CLIEN' +
        'TE, :CANCELADO, :CPF_CONSUMIDOR, :NOME_CONSUMIDOR, :COD_VENDEDOR' +
        ', :COD_CAIXA, :ECF_CAIXA)')
    Connection = conexao
    Left = 136
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
        Size = 12
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 12
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'QTDE_ITEM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_PRODUTO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_PAGO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TROCO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CPF_CONSUMIDOR'
        ParamType = ptInput
        Size = 20
        Value = nil
      end
      item
        DataType = ftString
        Name = 'NOME_CONSUMIDOR'
        ParamType = ptInput
        Size = 40
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'COD_VENDEDOR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'COD_CAIXA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ECF_CAIXA'
        ParamType = ptInput
        Size = 3
        Value = nil
      end>
    CommandStoredProcName = 'ST_CUPOM_INSERT'
  end
  object spCodigo_Global: TUniStoredProc
    StoredProcName = 'ST_CODIGO_GLOBAL'
    SQL.Strings = (
      'EXECUTE PROCEDURE ST_CODIGO_GLOBAL')
    Connection = conexao
    Left = 240
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Value = 5
      end>
    CommandStoredProcName = 'ST_CODIGO_GLOBAL'
  end
  object spCupom_Consumidor: TUniStoredProc
    StoredProcName = 'ST_CUPOM_CONSUMIDOR_INSERT'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_CUPOM_CONSUMIDOR_INSERT(:CODIGO, :COD_CLIEN' +
        'TE, :NOME, :ENDERECO, :BAIRRO, :CIDADE, :UF, :CEP, :CPF, :RG, :P' +
        'LACA, :KM, :VENDEDOR, :INFO_ADICIONAL1, :INFO_ADICIONAL2)')
    Connection = conexao
    Left = 344
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
        Size = 80
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ENDERECO'
        ParamType = ptInput
        Size = 80
        Value = nil
      end
      item
        DataType = ftString
        Name = 'BAIRRO'
        ParamType = ptInput
        Size = 40
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CIDADE'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
        Size = 2
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CEP'
        ParamType = ptInput
        Size = 9
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CPF'
        ParamType = ptInput
        Size = 18
        Value = nil
      end
      item
        DataType = ftString
        Name = 'RG'
        ParamType = ptInput
        Size = 20
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PLACA'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftString
        Name = 'KM'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftString
        Name = 'VENDEDOR'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'INFO_ADICIONAL1'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'INFO_ADICIONAL2'
        ParamType = ptInput
        Size = 50
        Value = nil
      end>
    CommandStoredProcName = 'ST_CUPOM_CONSUMIDOR_INSERT'
  end
  object spCupom_Forma: TUniStoredProc
    StoredProcName = 'ST_CUPOM_FORMA_INSERT'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_CUPOM_FORMA_INSERT(:CODIGO, :COD_CUPOM, :FO' +
        'RMA, :VALOR, :PRESTACAO, :TIPO)')
    Connection = conexao
    Left = 424
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'FORMA'
        ParamType = ptInput
        Size = 30
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'PRESTACAO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Size = 30
        Value = nil
      end>
    CommandStoredProcName = 'ST_CUPOM_FORMA_INSERT'
  end
  object spCupom_Item_Temp: TUniStoredProc
    StoredProcName = 'ST_CUPOM_ITEM_TEMP_INSERT'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_CUPOM_ITEM_TEMP_INSERT(:CODIGO, :COD_CUPOM,' +
        ' :ITEM, :COD_PRODUTO, :UNIDADE, :QTDE, :VALOR_UNITARIO, :VALOR_S' +
        'UBTOTAL, :VALOR_DESCONTO, :VALOR_ACRESCIMO, :VALOR_TOTAL, :CST, ' +
        ':ALIQUOTA, :CANCELADO, :COD_TOTALIZADOR, :TAMANHO, :COR)')
    Connection = conexao
    Left = 496
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_UNITARIO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_SUBTOTAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CST'
        ParamType = ptInput
        Size = 3
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ALIQUOTA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COD_TOTALIZADOR'
        ParamType = ptInput
        Size = 7
        Value = nil
      end
      item
        DataType = ftFixedChar
        Name = 'TAMANHO'
        ParamType = ptInput
        Size = 5
        Value = nil
      end
      item
        DataType = ftFixedChar
        Name = 'COR'
        ParamType = ptInput
        Size = 5
        Value = nil
      end>
    CommandStoredProcName = 'ST_CUPOM_ITEM_TEMP_INSERT'
  end
  object spCupom_Item: TUniStoredProc
    StoredProcName = 'ST_CUPOM_ITEM_INSERT'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_CUPOM_ITEM_INSERT(:CODIGO, :COD_CUPOM, :ITE' +
        'M, :COD_PRODUTO, :UNIDADE, :QTDE, :VALOR_UNITARIO, :VALOR_SUBTOT' +
        'AL, :VALOR_DESCONTO, :VALOR_ACRESCIMO, :VALOR_TOTAL, :CST, :ALIQ' +
        'UOTA, :CANCELADO, :COD_TOTALIZADOR, :TAMANHO, :COR)')
    Connection = conexao
    Left = 568
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_UNITARIO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_SUBTOTAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CST'
        ParamType = ptInput
        Size = 3
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ALIQUOTA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COD_TOTALIZADOR'
        ParamType = ptInput
        Size = 7
        Value = nil
      end
      item
        DataType = ftFixedChar
        Name = 'TAMANHO'
        ParamType = ptInput
        Size = 5
        Value = nil
      end
      item
        DataType = ftFixedChar
        Name = 'COR'
        ParamType = ptInput
        Size = 5
        Value = nil
      end>
    CommandStoredProcName = 'ST_CUPOM_ITEM_INSERT'
  end
  object st_bico_movimento: TUniStoredProc
    StoredProcName = 'ST_BICO_MOVIMENTO'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_BICO_MOVIMENTO(:COD_BICO, :DATA, :EF, :VOLU' +
        'ME)')
    Connection = conexao
    Left = 656
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_BICO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'EF'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VOLUME'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ST_BICO_MOVIMENTO'
  end
  object St_Abastecimento_codigo: TUniStoredProc
    StoredProcName = 'ST_ABASTECIMENTO_CODIGO'
    SQL.Strings = (
      'EXECUTE PROCEDURE ST_ABASTECIMENTO_CODIGO')
    Connection = conexao
    Left = 752
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'ST_ABASTECIMENTO_CODIGO'
  end
  object St_Abastecimento: TUniStoredProc
    StoredProcName = 'ST_ABASTECIMENTO_INSERT'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_ABASTECIMENTO_INSERT(:CODIGO, :BOMBA, :BICO' +
        ', :DATA, :HORA, :COD_PRODUTO, :QTDE, :UNITARIO, :TOTAL, :EI, :EF' +
        ', :SITUACAO, :TANQUE, :NUMERO_ABASTECIMENTO)')
    Connection = conexao
    Left = 880
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'BOMBA'
        ParamType = ptInput
        Size = 5
        Value = nil
      end
      item
        DataType = ftString
        Name = 'BICO'
        ParamType = ptInput
        Size = 5
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'HORA'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'UNITARIO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'TOTAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'EI'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'EF'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'SITUACAO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'TANQUE'
        ParamType = ptInput
        Size = 5
        Value = nil
      end
      item
        DataType = ftString
        Name = 'NUMERO_ABASTECIMENTO'
        ParamType = ptInput
        Size = 6
        Value = nil
      end>
    CommandStoredProcName = 'ST_ABASTECIMENTO_INSERT'
  end
  object spDAV: TUniStoredProc
    StoredProcName = 'ST_DAV'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_DAV(:CODIGO, :ECF, :COO, :NUMERO, :DATA, :T' +
        'ITULO, :VALOR, :COO_CUPOM_FISCAL, :CCF)')
    Connection = conexao
    Left = 40
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
        Value = nil
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
        Size = 30
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COO_CUPOM_FISCAL'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 6
        Value = nil
      end>
    CommandStoredProcName = 'ST_DAV'
  end
  object spCupom_Temp: TUniStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_INSERT'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_CUPOM_TEMP_INSERT(:NUMERO, :CCF, :ECF, :DAT' +
        'A, :HORA)')
    Connection = conexao
    Left = 144
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
        Size = 12
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 12
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ST_CUPOM_TEMP_INSERT'
  end
  object spDav_Codigo: TUniStoredProc
    StoredProcName = 'SPCODIGO_DAV'
    SQL.Strings = (
      'EXECUTE PROCEDURE SPCODIGO_DAV')
    Left = 240
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'SPCODIGO_DAV'
  end
  object spCupom_Temp_Edit: TUniStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_EDIT'
    SQL.Strings = (
      'EXECUTE PROCEDURE ST_CUPOM_TEMP_EDIT(:PROCEDIMENTO)')
    Connection = conexao
    Left = 344
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'PROCEDIMENTO'
        ParamType = ptInput
        Size = 20
        Value = nil
      end>
    CommandStoredProcName = 'ST_CUPOM_TEMP_EDIT'
  end
  object spCupom_Temp_delete: TUniStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_DELETE'
    SQL.Strings = (
      'EXECUTE PROCEDURE ST_CUPOM_TEMP_DELETE')
    Connection = conexao
    Left = 473
    Top = 266
    CommandStoredProcName = 'ST_CUPOM_TEMP_DELETE'
  end
  object spReducaoZ: TUniStoredProc
    StoredProcName = 'ST_REDUCAOZ'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_REDUCAOZ(:CODIGO, :ECF, :USUARIO, :CRZ, :CO' +
        'O, :CRO, :DATA_MOVIMENTO, :DATA_EMISSAO, :HORA_EMISSAO, :TOTALIZ' +
        'ADOR_GERAL, :VENDA_BRUTA, :CANCELAMENTO_ICMS, :DESCONTO_ICMS, :T' +
        'OTAL_ISS, :CANCELAMENTO_ISS, :DESCONTO_ISS, :VENDA_LIQUIDA, :ACR' +
        'ESCIMO_ICMS, :ACRESCIMO_ISS, :ECF_CAIXA)')
    Connection = conexao
    Left = 592
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
        Value = nil
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
        Size = 2
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CRZ'
        ParamType = ptInput
        Size = 6
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CRO'
        ParamType = ptInput
        Size = 6
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DATA_MOVIMENTO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DATA_EMISSAO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftTime
        Name = 'HORA_EMISSAO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'TOTALIZADOR_GERAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VENDA_BRUTA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'CANCELAMENTO_ICMS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'DESCONTO_ICMS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_ISS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'CANCELAMENTO_ISS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'DESCONTO_ISS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VENDA_LIQUIDA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ACRESCIMO_ICMS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ACRESCIMO_ISS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ECF_CAIXA'
        ParamType = ptInput
        Size = 3
        Value = nil
      end>
    CommandStoredProcName = 'ST_REDUCAOZ'
  end
  object spNao_Fiscal: TUniStoredProc
    StoredProcName = 'ST_NAO_FISCAL'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_NAO_FISCAL(:CODIGO, :ECF, :DATA, :INDICE, :' +
        'DESCRICAO, :VALOR, :COO, :GNF, :GRG, :CDC, :DENOMINACAO, :HORA, ' +
        ':CODVENDEDOR)')
    Connection = conexao
    Left = 694
    Top = 260
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'INDICE'
        ParamType = ptInput
        Size = 2
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 30
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
        Value = nil
      end
      item
        DataType = ftString
        Name = 'GNF'
        ParamType = ptInput
        Size = 6
        Value = nil
      end
      item
        DataType = ftString
        Name = 'GRG'
        ParamType = ptInput
        Size = 6
        Value = nil
      end
      item
        DataType = ftString
        Name = 'CDC'
        ParamType = ptInput
        Size = 6
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DENOMINACAO'
        ParamType = ptInput
        Size = 2
        Value = nil
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'CODVENDEDOR'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ST_NAO_FISCAL'
  end
  object spReducaoZ_Total_Parcial: TUniStoredProc
    StoredProcName = 'ST_REDUCAOZ_TOTAL_PARCIAL'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_REDUCAOZ_TOTAL_PARCIAL(:CODIGO, :COD_REDUCA' +
        'OZ, :TOTALIZADOR, :VALOR)')
    Connection = conexao
    Left = 802
    Top = 259
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COD_REDUCAOZ'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftString
        Name = 'TOTALIZADOR'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ST_REDUCAOZ_TOTAL_PARCIAL'
  end
  object ZFilial: TUniQuery
    Connection = conexao
    SQL.Strings = (
      'select * from c000004')
    Left = 136
    Top = 342
    object ZFilialCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object ZFilialFILIAL: TStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object ZFilialNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object ZFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object ZFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object ZFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object ZFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object ZFilialTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object ZFilialCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object ZFilialIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object ZFilialSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object ZFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object ZFilialOBS1: TStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object ZFilialOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object ZFilialCONTRIBUINTE_IPI: TStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object ZFilialSUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object ZFilialEMPRESA_ESTADUAL: TStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object ZFilialOPTANTE_SIMPLES: TStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object ZFilialOPTANTE_SUPER_SIMPLES: TStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object ZFilialECF: TStringField
      FieldName = 'ECF'
      Size = 1
    end
    object ZFilialTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object ZFilialIPI: TFloatField
      FieldName = 'IPI'
    end
    object ZFilialISS: TFloatField
      FieldName = 'ISS'
    end
    object ZFilialNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object ZFilialRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object ZFilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object ZFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object ZFilialFARMACIA_RESP_TECNICO: TStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object ZFilialFARMACIA_CRF: TStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object ZFilialFARMACIA_CPF: TStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object ZFilialFARMCIA_DATA: TDateTimeField
      FieldName = 'FARMCIA_DATA'
    end
    object ZFilialFARMACIA_UF: TStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object ZFilialFARMACIA_SENHA: TStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object ZFilialFARMACIA_EMAIL: TStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object ZFilialFARMACIA_LOGIN: TStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object ZFilialFARMACIA_ENVIO: TStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object ZFilialCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object ZFilialINDUSTRIA: TStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object ZFilialFARMACIA_NUMEROLICENCA: TStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object ZFilialCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object ZFilialIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object ZFilialPIS: TFloatField
      FieldName = 'PIS'
    end
    object ZFilialCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object ZFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZFilialATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object ZFilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object ZFilialCONTADOR_NOME: TStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object ZFilialCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
    end
    object ZFilialCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object ZFilialCONTADOR_CNPJ: TStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object ZFilialCONTADOR_CEP: TStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object ZFilialCONTADOR_ENDERECO: TStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object ZFilialCONTADOR_NUMERO: TStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object ZFilialCONTADOR_COMPLEMENTO: TStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object ZFilialCONTADOR_BAIRRO: TStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object ZFilialCONTADOR_FONE: TStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object ZFilialCONTADOR_FAX: TStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object ZFilialCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object ZFilialINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object ZFilialDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object ZFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object ZFilialCRT: TStringField
      FieldName = 'CRT'
      Size = 1
    end
    object ZFilialCONTADOR_CIDADE: TStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object ZFilialCONTADOR_COD_MUNICIPIO: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object ZFilialCONTADOR_UF: TStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object ZFilialPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object ZFilialFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object ZFilialDFIXAS: TFloatField
      FieldName = 'DFIXAS'
    end
    object ZFilialTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
    object ZFilialSERIE_CTE: TStringField
      FieldName = 'SERIE_CTE'
      Size = 6
    end
    object ZFilialSEQ_CTE: TStringField
      FieldName = 'SEQ_CTE'
      Size = 6
    end
    object ZFilialCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
    end
    object ZFilialPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
  end
  object ACBrEAD1: TACBrEAD
    Left = 567
    Top = 435
  end
  object ACBRDANFENFCe: TACBrNFeDANFEFR
    ACBrNFe = ACBRNFCe
    Logo = 'C:\OneMaker\PDV\Img\logo-nfce.jpg'
    Sistema = 'OneMaker'
    PathPDF = 'C:\OneMaker\PDV\xml\'
    Impressora = 'CutePDF Writer'
    MostrarPreview = False
    MostrarStatus = True
    TipoDANFE = tiNFCe
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    TributosSeparadamente = True
    EspessuraBorda = 1
    ExibirTotalTributosItem = False
    ExibeCampoFatura = True
    TributosFonte = 'IBPT'
    TributosPercentual = ptValorNF
    ImprimirUnQtVlComercial = iuComercial
    Detalhado = False
    DescricaoViaEstabelec = 'Via do Consumidor'
    ExpandirDadosAdicionaisAuto = False
    ImprimirDadosArma = True
    QuebraLinhaEmDetalhamentoEspecifico = True
    IncorporarBackgroundPdf = True
    IncorporarFontesPdf = True
    ImprimirDadosDocReferenciados = True
    Left = 481
    Top = 429
  end
  object ACBRNFCe: TACBrNFe
    OnStatusChange = ACBRNFCeStatusChange
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.SepararPorModelo = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBRDANFENFCe
    Left = 564
    Top = 485
  end
  object qradic_mestre: TUniQuery
    Connection = conexao
    SQL.Strings = (
      'select * from C000000')
    Left = 241
    Top = 423
  end
  object old_cdsComandas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 848
    Top = 328
    object old_cdsComandasID_COMANDA: TStringField
      FieldName = 'ID_COMANDA'
    end
    object old_cdsComandasEVENTO: TStringField
      FieldName = 'EVENTO'
      Size = 1
    end
  end
  object cdsComandas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 728
    Top = 328
    object cdsComandasID_COMANDA: TStringField
      FieldName = 'ID_COMANDA'
    end
    object cdsComandasEVENTO: TStringField
      FieldName = 'EVENTO'
      Size = 1
    end
  end
  object spNFCE_Insert: TUniQuery
    Connection = conexao
    SQL.Strings = (
      
        'INSERT INTO nfce  (numero,data,total,hora, cliente,chave,xml,sit' +
        'uacao,troco)'
      
        'values  (:pnumero,:pdata,:ptotal,:phora, :pcliente,:pchave,:pxml' +
        ',:psituacao,:ptroco);')
    Left = 48
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pnumero'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'pdata'
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'ptotal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'phora'
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pcliente'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pchave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pxml'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'psituacao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ptroco'
        Value = nil
      end>
  end
  object SQL_Exec: TUniQuery
    Connection = conexao
    Left = 184
    Top = 344
  end
  object Conexao_Servidor: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'C:\OneMaker\Server\BD\base.fdb'
    Username = 'sysdba'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 24
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
end
