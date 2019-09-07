object frmmodulo: Tfrmmodulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 1200
  Width = 1305
  object Conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    HostName = ''
    Port = 0
    Database = 'C:\OneMaker\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 310
    Top = 152
  end
  object qrLog: TZQuery
    Connection = Conexao
    BeforePost = qrLogBeforePost
    SQL.Strings = (
      'select * from c000002')
    Params = <>
    Left = 310
    Top = 764
    object qrLogCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrLogCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrLogDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrLogPROCEDIMENTO: TWideStringField
      FieldName = 'PROCEDIMENTO'
      Size = 6
    end
    object qrLogOBS: TWideStringField
      FieldName = 'OBS'
      Size = 50
    end
  end
  object qrUsuario: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000003')
    Params = <>
    Left = 408
    Top = 764
  end
  object qrconfig: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000001')
    Params = <>
    Left = 506
    Top = 764
    object qrconfigCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconfigULTIMO_BACKUP: TDateField
      FieldName = 'ULTIMO_BACKUP'
    end
    object qrconfigPAPEL_PAREDE: TWideStringField
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
    object qrconfigVENDA_PORTA_IMPRESSORA: TWideStringField
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
    object qrconfigOS_PORTA_IMPRESSORA: TWideStringField
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
    object qrconfigORCAMENTO_PORTA_IMPRESSORA: TWideStringField
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
    object qrconfigECF_MODELO: TWideStringField
      FieldName = 'ECF_MODELO'
      Size = 30
    end
    object qrconfigECF_PORTA: TWideStringField
      FieldName = 'ECF_PORTA'
      Size = 50
    end
    object qrconfigECF_TEF: TIntegerField
      FieldName = 'ECF_TEF'
    end
    object qrconfigECF_TIPO: TWideStringField
      FieldName = 'ECF_TIPO'
    end
    object qrconfigBALANCAPDV_MODELO: TWideStringField
      FieldName = 'BALANCAPDV_MODELO'
      Size = 50
    end
    object qrconfigBALANCAPDV_PORTA: TWideStringField
      FieldName = 'BALANCAPDV_PORTA'
      Size = 10
    end
    object qrconfigIMPRESSORACHEQUE_MODELO: TWideStringField
      FieldName = 'IMPRESSORACHEQUE_MODELO'
      Size = 50
    end
    object qrconfigIMPRESSORACHEQUE_PORTA: TWideStringField
      FieldName = 'IMPRESSORACHEQUE_PORTA'
      Size = 10
    end
    object qrconfigBALANCA_MODELO: TWideStringField
      FieldName = 'BALANCA_MODELO'
      Size = 50
    end
    object qrconfigIMPRESSORABARRAS_MODELO: TWideStringField
      FieldName = 'IMPRESSORABARRAS_MODELO'
      Size = 50
    end
    object qrconfigBALANCA_CAMINHO: TWideStringField
      FieldName = 'BALANCA_CAMINHO'
      Size = 100
    end
    object qrconfigCADASTRO_PRODUTO: TWideStringField
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
    object qrconfigCLASSIFICACAO: TWideStringField
      FieldName = 'CLASSIFICACAO'
      Size = 10
    end
    object qrconfigBOLETO_FORMAPGTO: TWideStringField
      FieldName = 'BOLETO_FORMAPGTO'
    end
    object qrconfigPLANO_VENDA_AV: TWideStringField
      FieldName = 'PLANO_VENDA_AV'
      Size = 30
    end
    object qrconfigPLANO_VENDA_AP: TWideStringField
      FieldName = 'PLANO_VENDA_AP'
      Size = 30
    end
    object qrconfigPLANO_OS_AV: TWideStringField
      FieldName = 'PLANO_OS_AV'
      Size = 30
    end
    object qrconfigPLANO_OS_AP: TWideStringField
      FieldName = 'PLANO_OS_AP'
      Size = 30
    end
    object qrconfigPLANO_OUTRAS_ENTRADAS: TWideStringField
      FieldName = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
    end
    object qrconfigPLANO_OUTRAS_SAIDAS: TWideStringField
      FieldName = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
    end
    object qrconfigPLANO_RECEBTO_CREDIARIO: TWideStringField
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
    object qrconfigNF_IMPRESSORA: TWideStringField
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
    object qrconfigTIPO_VENDA: TWideStringField
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
    object qrconfigECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 3
    end
    object qrconfigECF_SERIAL: TWideStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrconfigFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 60
    end
    object qrconfigFARMACIA_RESPOSTA: TWideStringField
      FieldName = 'FARMACIA_RESPOSTA'
      Size = 60
    end
    object qrconfigFARMACIA_ENVIO_RESPOSTA: TWideStringField
      FieldName = 'FARMACIA_ENVIO_RESPOSTA'
      Size = 60
    end
    object qrconfigFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrconfigFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
    end
    object qrconfigULTIMA_CARGA: TDateField
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
    object qrconfigNR_CONTROLE_ECF: TWideStringField
      FieldName = 'NR_CONTROLE_ECF'
      Size = 6
    end
    object qrconfigBALANCA_PROGRAMA: TWideStringField
      FieldName = 'BALANCA_PROGRAMA'
      Size = 150
    end
    object qrconfigTIPO_DUPLICATA: TWideStringField
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
    object qrconfigVS_CLIENTE_VISTA: TWideStringField
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
    object qrconfigPLANO_DUPLICATA_NFE: TWideStringField
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
    object qrconfigOBS_FARMA_TEXTO: TWideStringField
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
    object qrconfigEMAIL_SERVIDOR_SMTP: TWideStringField
      FieldName = 'EMAIL_SERVIDOR_SMTP'
      Size = 100
    end
    object qrconfigEMAIL_PORTA: TWideStringField
      FieldName = 'EMAIL_PORTA'
      Size = 10
    end
    object qrconfigEMAIL_USUARIO: TWideStringField
      FieldName = 'EMAIL_USUARIO'
      Size = 100
    end
    object qrconfigEMAIL_SENHA: TWideStringField
      FieldName = 'EMAIL_SENHA'
    end
    object qrconfigEMAIL_ASSUNTO: TWideStringField
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
    object qrconfigFARMACIA_ENVIO_NOVARTIS: TWideStringField
      FieldName = 'FARMACIA_ENVIO_NOVARTIS'
      Size = 60
    end
    object qrconfigFARMACIA_RESPOSTA_NOVARTIS: TWideStringField
      FieldName = 'FARMACIA_RESPOSTA_NOVARTIS'
      Size = 60
    end
    object qrconfigFARMACIA_INVENTARIO_CONFIRMA: TWideStringField
      FieldName = 'FARMACIA_INVENTARIO_CONFIRMA'
      Size = 1
    end
    object qrconfigFARMACIA_INVENTARIO_DATA: TDateField
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
    object qrconfigIND_CLIE_ENTRADA: TWideStringField
      FieldName = 'IND_CLIE_ENTRADA'
      Size = 6
    end
    object qrconfigIND_CFOP_ENTRADA: TWideStringField
      FieldName = 'IND_CFOP_ENTRADA'
      Size = 5
    end
    object qrconfigIND_CLIE_SAIDA: TWideStringField
      FieldName = 'IND_CLIE_SAIDA'
      Size = 6
    end
    object qrconfigIND_CFOP_SAIDA: TWideStringField
      FieldName = 'IND_CFOP_SAIDA'
      Size = 5
    end
    object qrconfigIND_CLIE_PERDA: TWideStringField
      FieldName = 'IND_CLIE_PERDA'
      Size = 6
    end
    object qrconfigIND_CFOP_PERDA: TWideStringField
      FieldName = 'IND_CFOP_PERDA'
      Size = 5
    end
    object qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField
      FieldName = 'IND_MOSTRA_COMPOSICAO'
    end
    object qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField
      FieldName = 'CHECA_SERIAL_NOTA_SAIDA'
    end
    object qrconfigCOR_COMERCIO: TWideStringField
      FieldName = 'COR_COMERCIO'
      Size = 10
    end
    object qrconfigLOGO_COMERCIO: TWideStringField
      FieldName = 'LOGO_COMERCIO'
      Size = 100
    end
    object qrconfigCOR_FARMACIA: TWideStringField
      FieldName = 'COR_FARMACIA'
      Size = 10
    end
    object qrconfigLOGO_FARMACIA: TWideStringField
      FieldName = 'LOGO_FARMACIA'
      Size = 100
    end
    object qrconfigCOR_PECAS: TWideStringField
      FieldName = 'COR_PECAS'
      Size = 10
    end
    object qrconfigLOGO_PECAS: TWideStringField
      FieldName = 'LOGO_PECAS'
      Size = 100
    end
    object qrconfigCOR_MERCADO: TWideStringField
      FieldName = 'COR_MERCADO'
      Size = 10
    end
    object qrconfigLOGO_MERCADO: TWideStringField
      FieldName = 'LOGO_MERCADO'
      Size = 100
    end
    object qrconfigCOR_POSTO: TWideStringField
      FieldName = 'COR_POSTO'
      Size = 10
    end
    object qrconfigLOGO_POSTO: TWideStringField
      FieldName = 'LOGO_POSTO'
      Size = 100
    end
    object qrconfigIND_CLIE_ENTRADA_DESC: TWideStringField
      FieldName = 'IND_CLIE_ENTRADA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_ENTRADA_DESC: TWideStringField
      FieldName = 'IND_CFOP_ENTRADA_DESC'
      Size = 30
    end
    object qrconfigIND_CLIE_SAIDA_DESC: TWideStringField
      FieldName = 'IND_CLIE_SAIDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_SAIDA_DESC: TWideStringField
      FieldName = 'IND_CFOP_SAIDA_DESC'
      Size = 30
    end
    object qrconfigIND_CLIE_PERDA_DESC: TWideStringField
      FieldName = 'IND_CLIE_PERDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_PERDA_DESC: TWideStringField
      FieldName = 'IND_CFOP_PERDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrconfigIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrconfigIND_CFOP_SERVICO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_SERVICO_DENTRO'
      Size = 6
    end
    object qrconfigIND_CFOP_SERVICO_FORA: TWideStringField
      FieldName = 'IND_CFOP_SERVICO_FORA'
      Size = 6
    end
    object qrconfigCFOP_VENDA_DENTRO_DESC: TWideStringField
      FieldName = 'CFOP_VENDA_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_VENDA_FORA_DESC: TWideStringField
      FieldName = 'CFOP_VENDA_FORA_DESC'
      Size = 30
    end
    object qrconfigCFOP_DEVOLUCAO_DENTRO_DESC: TWideStringField
      FieldName = 'CFOP_DEVOLUCAO_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_DEVOLUCAO_FORA_DESC: TWideStringField
      FieldName = 'CFOP_DEVOLUCAO_FORA_DESC'
      Size = 30
    end
    object qrconfigCFOP_SERVICO_DENTRO_DESC: TWideStringField
      FieldName = 'CFOP_SERVICO_DENTRO_DESC'
      Size = 30
    end
    object qrconfigCFOP_SERVICO_FORA_DESC: TWideStringField
      FieldName = 'CFOP_SERVICO_FORA_DESC'
      Size = 30
    end
    object qrconfigTIPO_NF: TIntegerField
      FieldName = 'TIPO_NF'
    end
    object qrconfigCOR_ESTOQUE_POSITIVO: TWideStringField
      FieldName = 'COR_ESTOQUE_POSITIVO'
      Size = 10
    end
    object qrconfigCOR_ESTOQUE_NEGATIVO: TWideStringField
      FieldName = 'COR_ESTOQUE_NEGATIVO'
      Size = 10
    end
    object qrconfigCOR_ESTOQUE_ZERADO: TWideStringField
      FieldName = 'COR_ESTOQUE_ZERADO'
      Size = 10
    end
    object qrconfigTIPO_PESQUISA: TIntegerField
      FieldName = 'TIPO_PESQUISA'
    end
    object qrconfigECF_CONCOMITANTE: TIntegerField
      FieldName = 'ECF_CONCOMITANTE'
    end
    object qrconfigPLANO_PAGTO_FORN: TWideStringField
      FieldName = 'PLANO_PAGTO_FORN'
      Size = 30
    end
    object qrconfigHAB_PREVENDA: TIntegerField
      FieldName = 'HAB_PREVENDA'
    end
    object qrconfigCODCLIENTEAV: TWideStringField
      FieldName = 'CODCLIENTEAV'
      Size = 6
    end
    object qrconfigCODCLIENTEMODELO: TWideStringField
      FieldName = 'CODCLIENTEMODELO'
      Size = 6
    end
    object qrconfigCODPRODUTOMODELO: TWideStringField
      FieldName = 'CODPRODUTOMODELO'
      Size = 6
    end
    object qrconfigCODFORNECEDORMODELO: TWideStringField
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
    object qrconfigVERSAOBD: TWideStringField
      FieldName = 'VERSAOBD'
      Size = 8
    end
    object qrconfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField
      FieldName = 'USA_CAIXA_PADRAO_USUARIO'
    end
    object qrconfigTEXTO_PADRAO_VENDA: TWideStringField
      FieldName = 'TEXTO_PADRAO_VENDA'
      Size = 200
    end
    object qrconfigTEXTO_PADRAO_DEVOLUCAO: TWideStringField
      FieldName = 'TEXTO_PADRAO_DEVOLUCAO'
      Size = 200
    end
    object qrconfigPLANO_CONTA1: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA1'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_VENDA_AV'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA2: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA2'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_VENDA_AP'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA3: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA3'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OS_AV'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA4: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA4'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OS_AP'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA5: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA5'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_RECEBTO_CREDIARIO'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA6: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA6'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OUTRAS_ENTRADAS'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA7: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA7'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OUTRAS_SAIDAS'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA8: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA8'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_DUPLICATA_NFE'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA10: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA10'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_VENDA_AV'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA20: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA20'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_VENDA_AP'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA30: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA30'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OS_AV'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA40: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA40'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OS_AP'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA50: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA50'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_RECEBTO_CREDIARIO'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA60: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA60'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA70: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA70'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA80: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA80'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_DUPLICATA_NFE'
      Size = 30
      Lookup = True
    end
    object u: TWideStringField
      FieldName = 'TEXTO_PADRAO_GARANTIA'
      Size = 200
    end
    object qrconfigAVISA_ESTOQUE_MINIMO: TIntegerField
      FieldName = 'AVISA_ESTOQUE_MINIMO'
    end
    object qrconfigID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
  end
  object qrFilial: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000004')
    Params = <>
    Left = 212
    Top = 764
    object qrFilialCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrFilialFILIAL: TWideStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrFilialNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qrFilialENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrFilialCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrFilialUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrFilialCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrFilialTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object qrFilialCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrFilialIE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrFilialSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object qrFilialFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qrFilialOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrFilialOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrFilialCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qrFilialSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qrFilialEMPRESA_ESTADUAL: TWideStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object qrFilialOPTANTE_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object qrFilialOPTANTE_SUPER_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object qrFilialECF: TWideStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrFilialTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrFilialIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrFilialISS: TFloatField
      FieldName = 'ISS'
    end
    object qrFilialNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrFilialRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qrFilialCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qrFilialBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrFilialFARMACIA_RESP_TECNICO: TWideStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object qrFilialFARMACIA_CRF: TWideStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object qrFilialFARMACIA_CPF: TWideStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object qrFilialFARMCIA_DATA: TDateField
      FieldName = 'FARMCIA_DATA'
    end
    object qrFilialFARMACIA_UF: TWideStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object qrFilialFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object qrFilialFARMACIA_EMAIL: TWideStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object qrFilialFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrFilialFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object qrFilialCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qrFilialINDUSTRIA: TWideStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object qrFilialFARMACIA_NUMEROLICENCA: TWideStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object qrFilialCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrFilialIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qrFilialPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrFilialCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrFilialEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qrFilialATIVIDADE: TWideStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object qrFilialCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrFilialCONTADOR_NOME: TWideStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object qrFilialCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
    end
    object qrFilialCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object qrFilialCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object qrFilialCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object qrFilialCONTADOR_ENDERECO: TWideStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object qrFilialCONTADOR_NUMERO: TWideStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object qrFilialCONTADOR_COMPLEMENTO: TWideStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object qrFilialCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object qrFilialCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object qrFilialCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object qrFilialCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object qrFilialINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qrFilialDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object qrFilialCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrFilialCRT: TWideStringField
      FieldName = 'CRT'
      Size = 1
    end
    object qrFilialCONTADOR_CIDADE: TWideStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object qrFilialCONTADOR_COD_MUNICIPIO: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object qrFilialCONTADOR_UF: TWideStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object qrFilialPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object qrFilialFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object qrFilialDFIXAS: TSingleField
      FieldName = 'DFIXAS'
    end
    object qrFilialTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
    object qrFilialSERIE_CTE: TWideStringField
      FieldName = 'SERIE_CTE'
      Size = 6
    end
    object qrFilialSEQ_CTE: TWideStringField
      FieldName = 'SEQ_CTE'
      Size = 6
    end
    object qrFilialCOD_PAIS: TWideStringField
      FieldName = 'COD_PAIS'
    end
    object qrFilialPAIS: TWideStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object qrFilialHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 100
    end
    object qrFilialLOGO: TBlobField
      FieldName = 'LOGO'
    end
  end
  object qrcliente: TZQuery
    Connection = Conexao
    BeforePost = qrclienteBeforePost
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 702
    Top = 696
    object qrclienteNOME: TWideStringField
      DisplayWidth = 54
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteCODIGO: TWideStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteCPF: TWideStringField
      DisplayLabel = 'CPF/CNPJ'
      DisplayWidth = 18
      FieldName = 'CPF'
      Size = 18
    end
    object qrclienteENDERECO: TWideStringField
      DisplayLabel = 'ENDERE'#199'O'
      DisplayWidth = 20
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrclientevendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrclienteconvenio: TStringField
      FieldKind = fkLookup
      FieldName = 'convenio'
      LookupDataSet = qrconvenio
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'codcONVENIO'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qrclienteusuario: TStringField
      FieldKind = fkLookup
      FieldName = 'usuario'
      LookupDataSet = qrUsuario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'USUARIO'
      KeyFields = 'CODUSUARIO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrclienteregiao: TStringField
      FieldKind = fkLookup
      FieldName = 'regiao'
      LookupDataSet = qrregiao
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'REGIAO'
      KeyFields = 'CODREGIAO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrclienteAPELIDO: TWideStringField
      FieldName = 'APELIDO'
      Visible = False
      Size = 50
    end
    object qrclienteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrclienteCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrclienteCEP: TWideStringField
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrclienteCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 80
    end
    object qrclienteMORADIA: TIntegerField
      FieldName = 'MORADIA'
      Visible = False
    end
    object qrclienteTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrclienteSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrclienteTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrclienteTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrclienteTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
      Visible = False
    end
    object qrclienteCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Visible = False
    end
    object qrclienteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 50
    end
    object qrclienteRG: TWideStringField
      FieldName = 'RG'
      Visible = False
      Size = 25
    end
    object qrclienteFILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Visible = False
      Size = 80
    end
    object qrclienteESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Visible = False
      Size = 15
    end
    object qrclienteCONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Visible = False
      Size = 60
    end
    object qrclientePROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Visible = False
      Size = 30
    end
    object qrclienteEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Visible = False
      Size = 40
    end
    object qrclienteRENDA: TFloatField
      FieldName = 'RENDA'
      Visible = False
    end
    object qrclienteLIMITE: TFloatField
      FieldName = 'LIMITE'
      Visible = False
    end
    object qrclienteREF1: TWideStringField
      FieldName = 'REF1'
      Visible = False
      Size = 50
    end
    object qrclienteREF2: TWideStringField
      FieldName = 'REF2'
      Visible = False
      Size = 50
    end
    object qrclienteCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrclienteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrclienteDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object qrclienteOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrclienteOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrclienteOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrclienteOBS4: TWideStringField
      FieldName = 'OBS4'
      Visible = False
      Size = 80
    end
    object qrclienteOBS5: TWideStringField
      FieldName = 'OBS5'
      Visible = False
      Size = 80
    end
    object qrclienteOBS6: TWideStringField
      FieldName = 'OBS6'
      Visible = False
      Size = 80
    end
    object qrclienteNASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Visible = False
      Size = 10
    end
    object qrclienteCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Visible = False
      Size = 6
    end
    object qrclienteCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Visible = False
      Size = 6
    end
    object qrclienteCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Visible = False
      Size = 6
    end
    object qrclienteNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrclienteRG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Visible = False
      Size = 5
    end
    object qrclienteRG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Visible = False
      Size = 2
    end
    object qrclienteRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
      Visible = False
    end
    object qrclienteSEXO: TWideStringField
      FieldName = 'SEXO'
      Visible = False
      Size = 1
    end
    object qrclienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
      Visible = False
    end
    object qrclientePREVISAO: TDateField
      FieldName = 'PREVISAO'
      Visible = False
    end
    object qrclienteCNAE: TWideStringField
      FieldName = 'CNAE'
      Visible = False
      Size = 10
    end
    object qrclienteCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Visible = False
      Size = 10
    end
    object qrclienteIBGE: TWideStringField
      FieldName = 'IBGE'
      Visible = False
      Size = 5
    end
    object qrclienteTAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Visible = False
      Size = 5
    end
    object qrclienteTAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Visible = False
      Size = 5
    end
    object qrclienteTAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Visible = False
      Size = 5
    end
    object qrclienteCORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Visible = False
      Size = 80
    end
    object qrclienteCORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Visible = False
      Size = 30
    end
    object qrclienteCORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteCORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Visible = False
      Size = 2
    end
    object qrclienteCORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Visible = False
      Size = 10
    end
    object qrclienteCORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Visible = False
      Size = 40
    end
    object qrclienteRG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Visible = False
      Size = 30
    end
    object qrclienteRESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Visible = False
      Size = 80
    end
    object qrclienteRESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Visible = False
      Size = 25
    end
    object qrclienteRESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Visible = False
      Size = 25
    end
    object qrclienteRESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Visible = False
      Size = 50
    end
    object qrclienteRESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Visible = False
      Size = 30
    end
    object qrclienteRESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Visible = False
      Size = 80
    end
    object qrclienteRESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrclienteRESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteRESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Visible = False
      Size = 2
    end
    object qrclienteRESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Visible = False
      Size = 15
    end
    object qrclienteRESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Visible = False
      Size = 80
    end
    object qrclienteRESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Visible = False
      Size = 25
    end
    object qrclienteRESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Visible = False
      Size = 25
    end
    object qrclienteRESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Visible = False
      Size = 50
    end
    object qrclienteRESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Visible = False
      Size = 30
    end
    object qrclienteRESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Visible = False
      Size = 80
    end
    object qrclienteRESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrclienteRESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteRESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Visible = False
      Size = 2
    end
    object qrclienteRESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Visible = False
      Size = 15
    end
    object qrclienteFOTO: TWideStringField
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object qrclienteCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Visible = False
      Size = 100
    end
  end
  object qrregiao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000005')
    Params = <>
    Left = 16
    Top = 764
    object qrregiaoCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrregiaoREGIAO: TWideStringField
      DisplayLabel = 'Regi'#227'o'
      DisplayWidth = 44
      FieldName = 'REGIAO'
      Size = 30
    end
  end
  object qrfunci: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000008')
    Params = <>
    Left = 114
    Top = 764
    object qrfunciCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfunciNOME: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 54
      FieldName = 'NOME'
      Size = 80
    end
    object qrfunciENDERECO: TWideStringField
      DisplayWidth = 80
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrfunciBAIRRO: TWideStringField
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrfunciCIDADE: TWideStringField
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrfunciUF: TWideStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrfunciCEP: TWideStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrfunciTELEFONE: TWideStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE'
      Visible = False
    end
    object qrfunciCELULAR: TWideStringField
      DisplayWidth = 20
      FieldName = 'CELULAR'
      Visible = False
    end
    object qrfunciEMAIL: TWideStringField
      DisplayWidth = 50
      FieldName = 'EMAIL'
      Visible = False
      Size = 50
    end
    object qrfunciCPF: TWideStringField
      DisplayWidth = 15
      FieldName = 'CPF'
      Visible = False
      Size = 15
    end
    object qrfunciRG: TWideStringField
      DisplayWidth = 25
      FieldName = 'RG'
      Visible = False
      Size = 25
    end
    object qrfunciCTPS: TWideStringField
      DisplayWidth = 25
      FieldName = 'CTPS'
      Visible = False
      Size = 25
    end
    object qrfunciFUNCAO: TWideStringField
      DisplayWidth = 30
      FieldName = 'FUNCAO'
      Visible = False
      Size = 30
    end
    object qrfunciSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrfunciDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
      Visible = False
    end
    object qrfunciDATA_DEMISSAO: TDateField
      FieldName = 'DATA_DEMISSAO'
      Visible = False
    end
    object qrfunciSALARIO: TFloatField
      DisplayWidth = 10
      FieldName = 'SALARIO'
      Visible = False
    end
    object qrfunciCOMISSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrfunciOBS1: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrfunciOBS2: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrfunciOBS3: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrfunciNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Visible = False
    end
    object qrfunciF_CAIXA: TIntegerField
      DisplayWidth = 10
      FieldName = 'F_CAIXA'
      Visible = False
    end
    object qrfunciF_VENDEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'F_VENDEDOR'
      Visible = False
    end
    object qrfunciF_TECNICO: TIntegerField
      DisplayWidth = 10
      FieldName = 'F_TECNICO'
      Visible = False
    end
    object qrfunciNUMERO: TWideStringField
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrfunciSENHA: TWideStringField
      FieldName = 'SENHA'
      Visible = False
    end
  end
  object qrfornecedor: TZQuery
    Connection = Conexao
    BeforePost = qrfornecedorBeforePost
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 212
    Top = 832
    object qrfornecedorCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfornecedorNOME: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 54
      FieldName = 'NOME'
      Size = 100
    end
    object qrfornecedorENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrfornecedorBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrfornecedorCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrfornecedorUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrfornecedorCEP: TWideStringField
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrfornecedorCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 40
    end
    object qrfornecedorTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrfornecedorTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrfornecedorFAX: TWideStringField
      FieldName = 'FAX'
      Visible = False
    end
    object qrfornecedorCONTATO1: TWideStringField
      FieldName = 'CONTATO1'
      Visible = False
      Size = 40
    end
    object qrfornecedorCONTATO2: TWideStringField
      FieldName = 'CONTATO2'
      Visible = False
      Size = 40
    end
    object qrfornecedorCELULAR1: TWideStringField
      FieldName = 'CELULAR1'
      Visible = False
    end
    object qrfornecedorCELULAR2: TWideStringField
      FieldName = 'CELULAR2'
      Visible = False
    end
    object qrfornecedorEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 80
    end
    object qrfornecedorHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Visible = False
      Size = 80
    end
    object qrfornecedorCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 25
    end
    object qrfornecedorIE: TWideStringField
      FieldName = 'IE'
      Visible = False
      Size = 25
    end
    object qrfornecedorBANCO: TWideStringField
      FieldName = 'BANCO'
      Visible = False
      Size = 30
    end
    object qrfornecedorAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Visible = False
      Size = 15
    end
    object qrfornecedorCONTA: TWideStringField
      FieldName = 'CONTA'
      Visible = False
    end
    object qrfornecedorOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrfornecedorOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrfornecedorOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrfornecedorDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qrfornecedorTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrfornecedorASSISTENCIA_TECNICA: TIntegerField
      FieldName = 'ASSISTENCIA_TECNICA'
      Visible = False
    end
    object qrfornecedorNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrfornecedorIM: TWideStringField
      FieldName = 'IM'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_NOME: TWideStringField
      FieldName = 'REP_NOME'
      Visible = False
      Size = 80
    end
    object qrfornecedorREP_TELEFONE: TWideStringField
      FieldName = 'REP_TELEFONE'
      Visible = False
    end
    object qrfornecedorREP_ENDERECO: TWideStringField
      FieldName = 'REP_ENDERECO'
      Visible = False
      Size = 60
    end
    object qrfornecedorREP_BAIRRO: TWideStringField
      FieldName = 'REP_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrfornecedorREP_COMPLEMENTO: TWideStringField
      FieldName = 'REP_COMPLEMENTO'
      Visible = False
      Size = 50
    end
    object qrfornecedorREP_CIDADE: TWideStringField
      FieldName = 'REP_CIDADE'
      Visible = False
      Size = 40
    end
    object qrfornecedorREP_UF: TWideStringField
      FieldName = 'REP_UF'
      Visible = False
      Size = 2
    end
    object qrfornecedorREP_CEP: TWideStringField
      FieldName = 'REP_CEP'
      Visible = False
      Size = 15
    end
    object qrfornecedorREP_TELEFONE1: TWideStringField
      FieldName = 'REP_TELEFONE1'
      Visible = False
    end
    object qrfornecedorREP_TELEFONE2: TWideStringField
      FieldName = 'REP_TELEFONE2'
      Visible = False
    end
    object qrfornecedorREP_TELEFONE3: TWideStringField
      FieldName = 'REP_TELEFONE3'
      Visible = False
    end
    object qrfornecedorREP_FAX: TWideStringField
      FieldName = 'REP_FAX'
      Visible = False
    end
    object qrfornecedorREP_CNPJ: TWideStringField
      FieldName = 'REP_CNPJ'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_IE: TWideStringField
      FieldName = 'REP_IE'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_HOME_PAGE: TWideStringField
      FieldName = 'REP_HOME_PAGE'
      Visible = False
      Size = 100
    end
    object qrfornecedorREP_EMAIL: TWideStringField
      FieldName = 'REP_EMAIL'
      Visible = False
      Size = 100
    end
    object qrfornecedorCNAE: TWideStringField
      FieldName = 'CNAE'
      Visible = False
      Size = 10
    end
    object qrfornecedorCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Visible = False
      Size = 10
    end
    object qrfornecedorIBGE: TWideStringField
      FieldName = 'IBGE'
      Visible = False
      Size = 5
    end
    object qrfornecedorFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Visible = False
      Size = 100
    end
    object qrfornecedorLOGO: TWideMemoField
      FieldName = 'LOGO'
      BlobType = ftWideMemo
    end
  end
  object qrtransportador: TZQuery
    Connection = Conexao
    SortedFields = 'nome'
    SQL.Strings = (
      'select * from c000010')
    Params = <>
    IndexFieldNames = 'nome Asc'
    Left = 310
    Top = 832
    object qrtransportadorCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrtransportadorNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrtransportadorENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrtransportadorBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrtransportadorCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrtransportadorUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrtransportadorCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrtransportadorCPF: TWideStringField
      FieldName = 'CPF'
      Size = 25
    end
    object qrtransportadorRG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrtransportadorTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
    end
    object qrtransportadorCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qrtransportadorPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrtransportadorUFPLACA: TWideStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object qrtransportadorOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrtransportadorOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrtransportadorOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrtransportadorDATA: TDateField
      FieldName = 'DATA'
    end
    object qrtransportadorTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrtransportadorNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrtransportadorCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrtransportadorIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrtransportadorANTT: TWideStringField
      FieldName = 'ANTT'
      Size = 10
    end
  end
  object qrgrupo_servico: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000012')
    Params = <>
    Left = 408
    Top = 832
  end
  object qrservico: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000011')
    Params = <>
    Left = 114
    Top = 832
    object qrservicoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrservicoSERVICO: TWideStringField
      FieldName = 'SERVICO'
      Size = 50
    end
    object qrservicoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrservicoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrservicoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrservicoSALARIO_BASE: TFloatField
      FieldName = 'SALARIO_BASE'
    end
    object qrservicoGRUPO: TStringField
      FieldKind = fkLookup
      FieldName = 'GRUPO'
      LookupDataSet = qrgrupo_servico
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRUPO'
      KeyFields = 'CODGRUPO'
      Size = 80
      Lookup = True
    end
  end
  object qrbanco: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000013')
    Params = <>
    Left = 604
    Top = 764
    object qrbancoNUMERO: TWideStringField
      DisplayWidth = 7
      FieldName = 'NUMERO'
      Required = True
      Size = 6
    end
    object qrbancoBANCO: TWideStringField
      DisplayWidth = 44
      FieldName = 'BANCO'
      Size = 50
    end
    object qrbancoLOGO: TBlobField
      FieldName = 'LOGO'
      Visible = False
    end
    object qrbancoCARTAO_CREDITO: TIntegerField
      FieldName = 'CARTAO_CREDITO'
      Visible = False
    end
    object qrbancoFINANCEIRA: TIntegerField
      FieldName = 'FINANCEIRA'
      Visible = False
    end
    object qrbancoRESSARCIMENTO: TIntegerField
      FieldName = 'RESSARCIMENTO'
      Visible = False
    end
    object qrbancoPRAZO: TIntegerField
      FieldName = 'PRAZO'
      Visible = False
    end
    object qrbancoCOMISSAO_CREDITO: TFloatField
      FieldName = 'COMISSAO_CREDITO'
      Visible = False
    end
    object qrbancoCOMISSAO_DEBITO: TFloatField
      FieldName = 'COMISSAO_DEBITO'
      Visible = False
    end
    object qrbancoREC_DEBITO: TIntegerField
      FieldName = 'REC_DEBITO'
      Visible = False
    end
    object qrbancoREC_CREDITO: TIntegerField
      FieldName = 'REC_CREDITO'
      Visible = False
    end
    object qrbancoCONTA_PADRAO: TWideStringField
      FieldName = 'CONTA_PADRAO'
      Visible = False
      Size = 15
    end
    object qrbancoTITULAR_CONTA_PADRAO: TWideStringField
      FieldName = 'TITULAR_CONTA_PADRAO'
      Visible = False
      Size = 100
    end
  end
  object qrformapgto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000014')
    Params = <>
    Left = 702
    Top = 764
    object qrformapgtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrformapgtoFORMAPGTO: TWideStringField
      FieldName = 'FORMAPGTO'
      Size = 25
    end
    object qrformapgtoTIPO: TIntegerField
      FieldName = 'TIPO'
    end
  end
  object qrcondpgto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000015')
    Params = <>
    Left = 16
    Top = 832
    object qrcondpgtoCODIGO: TWideStringField
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcondpgtoCONDPGTO: TWideStringField
      DisplayWidth = 25
      FieldName = 'CONDPGTO'
      Size = 30
    end
    object qrcondpgtoPARCELAS: TIntegerField
      DisplayWidth = 6
      FieldName = 'PARCELAS'
    end
  end
  object qrcondpgto_parcela: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000016')
    Params = <>
    Left = 604
    Top = 696
    object qrcondpgto_parcelaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcondpgto_parcelaCODCONDPGTO: TWideStringField
      FieldName = 'CODCONDPGTO'
      Size = 6
    end
    object qrcondpgto_parcelaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object qrcondpgto_parcelaDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object qrcondpgto_parcelaPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcondpgto_parcelaJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcondpgto_parcelaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 50
    end
  end
  object qrgrupo: TZQuery
    Connection = Conexao
    BeforePost = qrgrupoBeforePost
    SQL.Strings = (
      'select * from c000017')
    Params = <>
    Left = 408
    Top = 628
    object qrgrupoCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrgrupoGRUPO: TWideStringField
      DisplayLabel = 'Nome do Grupo'
      DisplayWidth = 45
      FieldName = 'GRUPO'
      Size = 30
    end
    object qrgrupoALTERA_PRECO_ABCFARMA: TWideStringField
      FieldName = 'ALTERA_PRECO_ABCFARMA'
      Visible = False
      Size = 1
    end
    object qrgrupoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrgrupoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
  end
  object qrsubgrupo: TZQuery
    Connection = Conexao
    BeforePost = qrsubgrupoBeforePost
    SQL.Strings = (
      'select * from c000018')
    Params = <>
    Left = 506
    Top = 628
    object qrsubgrupoCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsubgrupoSUBGRUPO: TWideStringField
      DisplayLabel = 'Subgrupo'
      DisplayWidth = 45
      FieldName = 'SUBGRUPO'
      Size = 30
    end
    object qrsubgrupoCOMISSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrsubgrupoCODGRUPO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object qrsubgrupoALTERA_PRECO_ABCFARMA: TWideStringField
      DisplayWidth = 1
      FieldName = 'ALTERA_PRECO_ABCFARMA'
      Visible = False
      Size = 1
    end
    object qrsubgrupoDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
  end
  object qrmarca: TZQuery
    Connection = Conexao
    BeforePost = qrmarcaBeforePost
    SQL.Strings = (
      'select * from c000019')
    Params = <>
    Left = 604
    Top = 628
    object qrmarcaCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrmarcaNOME: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 45
      FieldName = 'NOME'
      Size = 80
    end
    object qrmarcaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrmarcaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrmarcaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrmarcaUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrmarcaCEP: TWideStringField
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrmarcaTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrmarcaTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrmarcaFAX: TWideStringField
      FieldName = 'FAX'
      Visible = False
    end
    object qrmarcaCONTATO1: TWideStringField
      FieldName = 'CONTATO1'
      Visible = False
      Size = 40
    end
    object qrmarcaCONTATO2: TWideStringField
      FieldName = 'CONTATO2'
      Visible = False
      Size = 40
    end
    object qrmarcaCELULAR1: TWideStringField
      FieldName = 'CELULAR1'
      Visible = False
    end
    object qrmarcaCELULAR2: TWideStringField
      FieldName = 'CELULAR2'
      Visible = False
    end
    object qrmarcaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 80
    end
    object qrmarcaHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Visible = False
      Size = 80
    end
    object qrmarcaCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 24
    end
    object qrmarcaIE: TWideStringField
      FieldName = 'IE'
      Visible = False
    end
    object qrmarcaDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qrmarcaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrmarcaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
  end
  object qrgrade_subgrupo: TZQuery
    Connection = Conexao
    BeforePost = qrgrade_subgrupoBeforePost
    SQL.Strings = (
      'select * from c000020')
    Params = <>
    Left = 310
    Top = 628
    object qrgrade_subgrupoCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrgrade_subgrupoNUMERACAO: TWideStringField
      DisplayWidth = 10
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrgrade_subgrupoORDEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'ORDEM'
    end
    object qrgrade_subgrupoCODSUBGRUPO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
  end
  object qremitente: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c999999')
    Params = <>
    Left = 16
    Top = 628
    object qremitenteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qremitenteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qremitenteFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 80
    end
    object qremitenteENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qremitenteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qremitenteCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qremitenteUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qremitenteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qremitenteTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
    end
    object qremitenteCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qremitenteIE: TWideStringField
      FieldName = 'IE'
    end
    object qremitenteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qremitenteHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qremitenteRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qremitenteCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qremitenteLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object qremitenteFAX: TWideStringField
      FieldName = 'FAX'
    end
    object qremitenteNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qremitenteCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object qremitenteCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 4
    end
    object qremitenteSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 4
    end
    object qremitenteCOMENTARIOS: TWideStringField
      FieldName = 'COMENTARIOS'
      Size = 50
    end
    object qremitenteDATAHORA_INICIAL: TDateField
      FieldName = 'DATAHORA_INICIAL'
    end
    object qremitenteDATAHORA_FINAL: TDateField
      FieldName = 'DATAHORA_FINAL'
    end
    object qremitenteDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
    end
    object qremitenteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qremitenteVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qremitenteCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qremitenteCPF: TWideStringField
      FieldName = 'CPF'
    end
    object qremitenteRG: TWideStringField
      FieldName = 'RG'
    end
    object qremitenteDIA_VENCIMENTO_CHAVE: TWideStringField
      FieldName = 'DIA_VENCIMENTO_CHAVE'
      Size = 2
    end
    object qremitenteINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qremitenteDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object qremitenteCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qremitenteIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qremitenteEMAIL_FINANCEIRO: TWideStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
  end
  object qraliquota: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000023')
    Params = <>
    Left = 114
    Top = 628
    object qraliquotaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object qraliquotaTRIBUTADO: TWideStringField
      FieldName = 'TRIBUTADO'
      Size = 1
    end
    object qraliquotaAC: TFloatField
      FieldName = 'AC'
    end
    object qraliquotaAL: TFloatField
      FieldName = 'AL'
    end
    object qraliquotaAM: TFloatField
      FieldName = 'AM'
    end
    object qraliquotaAP: TFloatField
      FieldName = 'AP'
    end
    object qraliquotaBA: TFloatField
      FieldName = 'BA'
    end
    object qraliquotaCE: TFloatField
      FieldName = 'CE'
    end
    object qraliquotaDF: TFloatField
      FieldName = 'DF'
    end
    object qraliquotaES: TFloatField
      FieldName = 'ES'
    end
    object qraliquotaGO: TFloatField
      FieldName = 'GO'
    end
    object qraliquotaMA: TFloatField
      FieldName = 'MA'
    end
    object qraliquotaMG: TFloatField
      FieldName = 'MG'
    end
    object qraliquotaMS: TFloatField
      FieldName = 'MS'
    end
    object qraliquotaMT: TFloatField
      FieldName = 'MT'
    end
    object qraliquotaPA: TFloatField
      FieldName = 'PA'
    end
    object qraliquotaPB: TFloatField
      FieldName = 'PB'
    end
    object qraliquotaPE: TFloatField
      FieldName = 'PE'
    end
    object qraliquotaPI: TFloatField
      FieldName = 'PI'
    end
    object qraliquotaPR: TFloatField
      FieldName = 'PR'
    end
    object qraliquotaRJ: TFloatField
      FieldName = 'RJ'
    end
    object qraliquotaRN: TFloatField
      FieldName = 'RN'
    end
    object qraliquotaRO: TFloatField
      FieldName = 'RO'
    end
    object qraliquotaRR: TFloatField
      FieldName = 'RR'
    end
    object qraliquotaRS: TFloatField
      FieldName = 'RS'
    end
    object qraliquotaSC: TFloatField
      FieldName = 'SC'
    end
    object qraliquotaSE: TFloatField
      FieldName = 'SE'
    end
    object qraliquotaSP: TFloatField
      FieldName = 'SP'
    end
    object qraliquotaTOC: TFloatField
      FieldName = 'TOC'
    end
    object qraliquotaEX: TFloatField
      FieldName = 'EX'
    end
  end
  object qrproduto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 212
    Top = 628
    object qrprodutomarca: TStringField
      DisplayLabel = 'MARCA'
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = qrmarca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMARCA'
      Size = 30
      Lookup = True
    end
    object qrprodutofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 24
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 30
      Lookup = True
    end
    object qrprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrprodutoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrprodutoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrprodutoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrprodutoNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrprodutoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrprodutoLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrprodutoVALIDADE: TWideStringField
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
    object qrprodutoCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrprodutoFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField
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
    object qrprodutoAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrprodutoDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrprodutoFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrprodutoCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrprodutoNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrprodutoNCM: TWideStringField
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
    object qrprodutoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrprodutoFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrprodutoULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrprodutoULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrprodutoDATA_INVENTARIO: TDateField
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
    object qrprodutoAPRESENTACAO: TWideStringField
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
    object qrprodutoDATA_INVENTARIO_ATUAL: TDateField
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
    object qrprodutoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrprodutoREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrprodutoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrprodutoTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrprodutoCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrprodutoINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrprodutoVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrprodutoVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrprodutoVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrprodutoVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrprodutoVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrprodutoVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrprodutoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrprodutoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrprodutoVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrprodutoVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrprodutoVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrprodutoVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrprodutoVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrprodutoVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrprodutoVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrprodutoVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrprodutoVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrprodutoVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrprodutoVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrprodutoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrprodutoLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrprodutoCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrprodutoFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrprodutoFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrprodutoULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrprodutoFARMACIA_DATAVIGENCIA: TDateField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrprodutoFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrprodutoUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrprodutoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrprodutoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrprodutoCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrprodutoCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrprodutoIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrprodutoIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrprodutoSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrprodutoFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrprodutoFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrprodutoFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrprodutoCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrprodutoCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrprodutoCUSTO_ATACADO: TSingleField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrprodutoUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrprodutoQTDE_EMBALAGEMATACADO: TSingleField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrprodutoPMARGEM1: TSingleField
      FieldName = 'PMARGEM1'
    end
    object qrprodutoPMARGEM2: TSingleField
      FieldName = 'PMARGEM2'
    end
    object qrprodutoPMARGEM3: TSingleField
      FieldName = 'PMARGEM3'
    end
    object qrprodutoPMARGEM4: TSingleField
      FieldName = 'PMARGEM4'
    end
    object qrprodutoPMARGEM5: TSingleField
      FieldName = 'PMARGEM5'
    end
    object qrprodutoPMARGEMATACADO1: TSingleField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprodutoPMARGEMATACADO2: TSingleField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprodutoPMARGEMATACADO3: TSingleField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprodutoPMARGEMATACADO4: TSingleField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprodutoPMARGEMATACADO5: TSingleField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprodutoPMARGEMATACADO6: TSingleField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrprodutoPRECOATACADO1: TSingleField
      FieldName = 'PRECOATACADO1'
    end
    object qrprodutoPRECOATACADO2: TSingleField
      FieldName = 'PRECOATACADO2'
    end
    object qrprodutoPRECOATACADO3: TSingleField
      FieldName = 'PRECOATACADO3'
    end
    object qrprodutoPRECOATACADO4: TSingleField
      FieldName = 'PRECOATACADO4'
    end
    object qrprodutoPRECOATACADO5: TSingleField
      FieldName = 'PRECOATACADO5'
    end
    object qrprodutoIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrprodutoCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrprodutoUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrprodutoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrprodutoIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrprodutoUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
    object qrprodutoATIVA: TWideStringField
      FieldName = 'ATIVA'
      Size = 10
    end
    object qrprodutoCEST: TWideStringField
      FieldName = 'CEST'
      Required = True
      Size = 7
    end
  end
  object qrpreco: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000026')
    Params = <>
    Left = 310
    Top = 696
    object qrprecoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprecoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrprecoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrprecoDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object qrprecoCP_VPRECOCOMPRA: TSingleField
      FieldName = 'CP_VPRECOCOMPRA'
    end
    object qrprecoCP_PIPI: TSingleField
      FieldName = 'CP_PIPI'
    end
    object qrprecoCP_VIPI: TSingleField
      FieldName = 'CP_VIPI'
    end
    object qrprecoCP_PRETENCAO: TSingleField
      FieldName = 'CP_PRETENCAO'
    end
    object qrprecoCP_VRETENCAO: TSingleField
      FieldName = 'CP_VRETENCAO'
    end
    object qrprecoCP_PFRETE: TSingleField
      FieldName = 'CP_PFRETE'
    end
    object qrprecoCP_VFRETE: TSingleField
      FieldName = 'CP_VFRETE'
    end
    object qrprecoCP_PICMS: TSingleField
      FieldName = 'CP_PICMS'
    end
    object qrprecoCP_VICMS: TSingleField
      FieldName = 'CP_VICMS'
    end
    object qrprecoCP_PREDUCAO: TSingleField
      FieldName = 'CP_PREDUCAO'
    end
    object qrprecoCP_VREDUCAO: TSingleField
      FieldName = 'CP_VREDUCAO'
    end
    object qrprecoCP_PPIS: TSingleField
      FieldName = 'CP_PPIS'
    end
    object qrprecoCP_VPIS: TSingleField
      FieldName = 'CP_VPIS'
    end
    object qrprecoCP_PCOFINS: TSingleField
      FieldName = 'CP_PCOFINS'
    end
    object qrprecoCP_VCOFINS: TSingleField
      FieldName = 'CP_VCOFINS'
    end
    object qrprecoCP_PSEGURO: TSingleField
      FieldName = 'CP_PSEGURO'
    end
    object qrprecoCP_VSEGURO: TSingleField
      FieldName = 'CP_VSEGURO'
    end
    object qrprecoCP_POUTROS: TSingleField
      FieldName = 'CP_POUTROS'
    end
    object qrprecoCP_VOUTROS: TSingleField
      FieldName = 'CP_VOUTROS'
    end
    object qrprecoVD_PICMS: TSingleField
      FieldName = 'VD_PICMS'
    end
    object qrprecoVD_VICMS: TSingleField
      FieldName = 'VD_VICMS'
    end
    object qrprecoVD_PREDUCAO: TSingleField
      FieldName = 'VD_PREDUCAO'
    end
    object qrprecoVD_VREDUCAO: TSingleField
      FieldName = 'VD_VREDUCAO'
    end
    object qrprecoVD_PSIMPLES: TSingleField
      FieldName = 'VD_PSIMPLES'
    end
    object qrprecoVD_VSIMPLES: TSingleField
      FieldName = 'VD_VSIMPLES'
    end
    object qrprecoVD_PPIS: TSingleField
      FieldName = 'VD_PPIS'
    end
    object qrprecoVD_VPIS: TSingleField
      FieldName = 'VD_VPIS'
    end
    object qrprecoVD_PCOFINS: TSingleField
      FieldName = 'VD_PCOFINS'
    end
    object qrprecoVD_VCOFINS: TSingleField
      FieldName = 'VD_VCOFINS'
    end
    object qrprecoVD_PIRPJ: TSingleField
      FieldName = 'VD_PIRPJ'
    end
    object qrprecoVD_VIRPJ: TSingleField
      FieldName = 'VD_VIRPJ'
    end
    object qrprecoVD_PCONTSOCIAL: TSingleField
      FieldName = 'VD_PCONTSOCIAL'
    end
    object qrprecoVD_VCONTSOCIAL: TSingleField
      FieldName = 'VD_VCONTSOCIAL'
    end
    object qrprecoVD_PDFIXA: TSingleField
      FieldName = 'VD_PDFIXA'
    end
    object qrprecoVD_VDFIXA: TSingleField
      FieldName = 'VD_VDFIXA'
    end
    object qrprecoVD_PCOMISSAO: TSingleField
      FieldName = 'VD_PCOMISSAO'
    end
    object qrprecoVD_VCOMISSAO: TSingleField
      FieldName = 'VD_VCOMISSAO'
    end
    object qrprecoVD_PDESCMAX: TSingleField
      FieldName = 'VD_PDESCMAX'
    end
    object qrprecoVD_VDESCMAX: TSingleField
      FieldName = 'VD_VDESCMAX'
    end
    object qrprecoPCUSTO_COMPRA: TSingleField
      FieldName = 'PCUSTO_COMPRA'
    end
    object qrprecoVCUSTO_COMPRA: TSingleField
      FieldName = 'VCUSTO_COMPRA'
    end
    object qrprecoPCUSTO_VENDA: TSingleField
      FieldName = 'PCUSTO_VENDA'
    end
    object qrprecoVCUSTO_VENDA: TSingleField
      FieldName = 'VCUSTO_VENDA'
    end
    object qrprecoPRECO_LIQUIDO: TSingleField
      FieldName = 'PRECO_LIQUIDO'
    end
    object qrprecoPRECO_UNITARIO: TSingleField
      FieldName = 'PRECO_UNITARIO'
    end
    object qrprecoFRACAO: TSingleField
      FieldName = 'FRACAO'
    end
    object qrprecoPMARGEM1: TSingleField
      FieldName = 'PMARGEM1'
    end
    object qrprecoPMARGEM2: TSingleField
      FieldName = 'PMARGEM2'
    end
    object qrprecoPMARGEM3: TSingleField
      FieldName = 'PMARGEM3'
    end
    object qrprecoPMARGEM4: TSingleField
      FieldName = 'PMARGEM4'
    end
    object qrprecoPMARGEM5: TSingleField
      FieldName = 'PMARGEM5'
    end
    object qrprecoPRECOVAREJO1: TSingleField
      FieldName = 'PRECOVAREJO1'
    end
    object qrprecoPRECOVAREJO2: TSingleField
      FieldName = 'PRECOVAREJO2'
    end
    object qrprecoPRECOVAREJO3: TSingleField
      FieldName = 'PRECOVAREJO3'
    end
    object qrprecoPRECOVAREJO4: TSingleField
      FieldName = 'PRECOVAREJO4'
    end
    object qrprecoPRECOVAREJO5: TSingleField
      FieldName = 'PRECOVAREJO5'
    end
    object qrprecoPMARGEMATACADO1: TSingleField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprecoPMARGEMATACADO2: TSingleField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprecoPMARGEMATACADO3: TSingleField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprecoPMARGEMATACADO4: TSingleField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprecoPMARGEMATACADO5: TSingleField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprecoPRECOATACADO1: TSingleField
      FieldName = 'PRECOATACADO1'
    end
    object qrprecoPRECOATACADO2: TSingleField
      FieldName = 'PRECOATACADO2'
    end
    object qrprecoPRECOATACADO3: TSingleField
      FieldName = 'PRECOATACADO3'
    end
    object qrprecoPRECOATACADO4: TSingleField
      FieldName = 'PRECOATACADO4'
    end
    object qrprecoPRECOATACADO5: TSingleField
      FieldName = 'PRECOATACADO5'
    end
    object qrprecoTIPO_REGIME: TIntegerField
      FieldName = 'TIPO_REGIME'
    end
    object qrprecoTIPO_CALCULO: TIntegerField
      FieldName = 'TIPO_CALCULO'
    end
    object qrprecoVCUSTO_COMPRA_ANT: TSingleField
      FieldName = 'VCUSTO_COMPRA_ANT'
    end
    object qrprecoPRECOVAREJO1_ANT: TSingleField
      FieldName = 'PRECOVAREJO1_ANT'
    end
    object qrprecoCUSTO_COMPRA: TFloatField
      FieldName = 'CUSTO_COMPRA'
    end
    object qrprecoVALOR_ULTIMA_COMPRA: TFloatField
      FieldName = 'VALOR_ULTIMA_COMPRA'
    end
    object qrprecoFRETE_IPI_OUTRAS: TFloatField
      FieldName = 'FRETE_IPI_OUTRAS'
    end
    object qrprecoICMS_ENTRADA: TFloatField
      FieldName = 'ICMS_ENTRADA'
    end
    object qrprecoICMS_SAIDA: TFloatField
      FieldName = 'ICMS_SAIDA'
    end
    object qrprecoCUSTO_OPERACIONAL: TFloatField
      FieldName = 'CUSTO_OPERACIONAL'
    end
    object qrprecoOUTROS_IMPOSTOS: TFloatField
      FieldName = 'OUTROS_IMPOSTOS'
    end
    object qrprecoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprecoLUCRO: TFloatField
      FieldName = 'LUCRO'
    end
    object qrprecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qrprecoICMS_ENTRADA_P: TFloatField
      FieldName = 'ICMS_ENTRADA_P'
    end
    object qrprecoICMS_SAIDA_P: TFloatField
      FieldName = 'ICMS_SAIDA_P'
    end
    object qrprecoCUSTO_OPERACIONAL_P: TFloatField
      FieldName = 'CUSTO_OPERACIONAL_P'
    end
    object qrprecoOUTROS_IMPOSTOS_P: TFloatField
      FieldName = 'OUTROS_IMPOSTOS_P'
    end
    object qrprecoCOMISSAO_P: TFloatField
      FieldName = 'COMISSAO_P'
    end
    object qrprecoLUCRO_P: TFloatField
      FieldName = 'LUCRO_P'
    end
    object qrprecoTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
    end
    object qrprecoTOTAL_CUSTO_P: TFloatField
      FieldName = 'TOTAL_CUSTO_P'
    end
    object qrprecoPRECO_AUTOMATICO: TIntegerField
      FieldName = 'PRECO_AUTOMATICO'
    end
    object qrprecoALTERA_AUTOMATICO: TIntegerField
      FieldName = 'ALTERA_AUTOMATICO'
    end
    object qrprecoNOVO_PRECO_VENDA: TFloatField
      FieldName = 'NOVO_PRECO_VENDA'
    end
    object qrprecoNOVO_PRECO_CUSTO: TFloatField
      FieldName = 'NOVO_PRECO_CUSTO'
    end
    object qrprecoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrprecoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrprecoSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrprecoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrprecoIPI_P: TFloatField
      FieldName = 'IPI_P'
    end
    object qrprecoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprecoPIS_P: TFloatField
      FieldName = 'PIS_P'
    end
    object qrprecoPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrprecoCOFINS_P: TFloatField
      FieldName = 'COFINS_P'
    end
    object qrprecoCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_P'
    end
    object qrprecoCONTRIBUICAO_SOCIAL: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL'
    end
    object qrprecoPIS_ENTRADA_P: TFloatField
      FieldName = 'PIS_ENTRADA_P'
    end
    object qrprecoPIS_ENTRADA: TFloatField
      FieldName = 'PIS_ENTRADA'
    end
    object qrprecoCOFINS_ENTRADA_P: TFloatField
      FieldName = 'COFINS_ENTRADA_P'
    end
    object qrprecoCOFINS_ENTRADA: TFloatField
      FieldName = 'COFINS_ENTRADA'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_ENTRADA_P'
    end
    object qrprecoSUBSTITUICAO_TRIBUTARIA: TFloatField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
    end
  end
  object qrgrade_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000021')
    Params = <>
    Left = 408
    Top = 696
    object qrgrade_produtoNUMERACAO: TWideStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 10
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrgrade_produtoCODBARRA: TWideStringField
      DisplayLabel = 'C'#211'D.BARRAS'
      DisplayWidth = 25
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrgrade_produtoESTOQUE: TFloatField
      DisplayWidth = 9
      FieldName = 'ESTOQUE'
    end
    object qrgrade_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrgrade_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrgrade_produtoCOR: TWideStringField
      FieldName = 'COR'
      Visible = False
      Size = 15
    end
  end
  object qrserial_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 506
    Top = 696
    object qrserial_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrserial_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrserial_produtoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrserial_produtoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrserial_produtoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrserial_produtoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrserial_produtoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrserial_produtoDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
    end
    object qrserial_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrserial_produtoCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrserial_produtoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrserial_produtoCODITEM: TWideStringField
      FieldName = 'CODITEM'
      Size = 6
    end
    object qrserial_produtoDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
    end
    object qrserial_produtoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrserial_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrserial_produtoCODVENDA_ITEM: TWideStringField
      FieldName = 'CODVENDA_ITEM'
      Size = 6
    end
    object qrserial_produtoFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrserial_produtoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
  end
  object qrreceita: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000024')
    Params = <>
    Left = 212
    Top = 696
  end
  object qrcomposicao_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000027')
    Params = <>
    Left = 702
    Top = 628
    object qrcomposicao_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcomposicao_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrcomposicao_produtoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrcomposicao_produtoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 6
    end
  end
  object qrinfnutricional_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000028')
    Params = <>
    Left = 16
    Top = 696
    object qrinfnutricional_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrinfnutricional_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrinfnutricional_produtoPORCAO: TWideStringField
      FieldName = 'PORCAO'
    end
    object qrinfnutricional_produtoVALOR_CALORICO: TIntegerField
      FieldName = 'VALOR_CALORICO'
    end
    object qrinfnutricional_produtoVALOR_CALORICO_VD: TWideStringField
      FieldName = 'VALOR_CALORICO_VD'
      Size = 6
    end
    object qrinfnutricional_produtoCARBOIDRATOS: TIntegerField
      FieldName = 'CARBOIDRATOS'
    end
    object qrinfnutricional_produtoCARBOIDRATOS_VD: TIntegerField
      FieldName = 'CARBOIDRATOS_VD'
    end
    object qrinfnutricional_produtoPROTEINAS: TIntegerField
      FieldName = 'PROTEINAS'
    end
    object qrinfnutricional_produtoPROTEINAS_VD: TIntegerField
      FieldName = 'PROTEINAS_VD'
    end
    object qrinfnutricional_produtoGORDURASTOTAIS: TFloatField
      FieldName = 'GORDURASTOTAIS'
    end
    object qrinfnutricional_produtoGORDURASTOTAIS_VD: TIntegerField
      FieldName = 'GORDURASTOTAIS_VD'
    end
    object qrinfnutricional_produtoGORDURASSATURADAS: TFloatField
      FieldName = 'GORDURASSATURADAS'
    end
    object qrinfnutricional_produtoGORDURASSATURADAS_VD: TIntegerField
      FieldName = 'GORDURASSATURADAS_VD'
    end
    object qrinfnutricional_produtoCOLESTEROL: TIntegerField
      FieldName = 'COLESTEROL'
    end
    object qrinfnutricional_produtoCOLESTEROL_VD: TIntegerField
      FieldName = 'COLESTEROL_VD'
    end
    object qrinfnutricional_produtoFIBRA: TIntegerField
      FieldName = 'FIBRA'
    end
    object qrinfnutricional_produtoFIBRA_VD: TIntegerField
      FieldName = 'FIBRA_VD'
    end
    object qrinfnutricional_produtoCALCIO: TFloatField
      FieldName = 'CALCIO'
    end
    object qrinfnutricional_produtoCALCIO_VD: TIntegerField
      FieldName = 'CALCIO_VD'
    end
    object qrinfnutricional_produtoFERRO: TFloatField
      FieldName = 'FERRO'
    end
    object qrinfnutricional_produtoFERRO_VD: TIntegerField
      FieldName = 'FERRO_VD'
    end
    object qrinfnutricional_produtoSODIO: TIntegerField
      FieldName = 'SODIO'
    end
    object qrinfnutricional_produtoSODIO_VD: TIntegerField
      FieldName = 'SODIO_VD'
    end
  end
  object qrCFOP: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000030')
    Params = <>
    Left = 114
    Top = 696
    object qrCFOPCFOP: TWideStringField
      DisplayWidth = 7
      FieldName = 'CFOP'
      Required = True
      Size = 5
    end
    object qrCFOPNATUREZA: TWideStringField
      DisplayLabel = 'NATUREZA DA OPERA'#199#195'O'
      DisplayWidth = 50
      FieldName = 'NATUREZA'
      Size = 200
    end
    object qrCFOPSIMPLIFICADO: TWideStringField
      DisplayWidth = 30
      FieldName = 'SIMPLIFICADO'
      Size = 50
    end
    object qrCFOPTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrCFOPICMS: TFloatField
      FieldName = 'ICMS'
      Visible = False
    end
    object qrCFOPISS: TFloatField
      FieldName = 'ISS'
      Visible = False
    end
    object qrCFOPOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrCFOPOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrCFOPOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrCFOPOBS4: TWideStringField
      FieldName = 'OBS4'
      Visible = False
      Size = 80
    end
    object qrCFOPFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrCFOPVALOR1: TFloatField
      FieldName = 'VALOR1'
      Visible = False
    end
    object qrCFOPVALOR2: TFloatField
      FieldName = 'VALOR2'
      Visible = False
    end
    object qrCFOPVALOR3: TFloatField
      FieldName = 'VALOR3'
      Visible = False
    end
    object qrCFOPVALOR4: TFloatField
      FieldName = 'VALOR4'
      Visible = False
    end
    object qrCFOPVALOR5: TFloatField
      FieldName = 'VALOR5'
      Visible = False
    end
    object qrCFOPVALOR6: TFloatField
      FieldName = 'VALOR6'
      Visible = False
    end
    object qrCFOPVALOR7: TFloatField
      FieldName = 'VALOR7'
      Visible = False
    end
    object qrCFOPVALOR8: TFloatField
      FieldName = 'VALOR8'
      Visible = False
    end
    object qrCFOPVALOR9: TFloatField
      FieldName = 'VALOR9'
      Visible = False
    end
    object qrCFOPVALOR10: TFloatField
      FieldName = 'VALOR10'
      Visible = False
    end
    object qrCFOPST: TWideStringField
      FieldName = 'ST'
      Visible = False
      Size = 11
    end
    object qrCFOPCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
    end
    object qrCFOPREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
      Visible = False
    end
    object qrCFOPMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
      Visible = False
    end
    object qrCFOPCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Visible = False
    end
    object qrCFOPFATURAMENTO: TIntegerField
      FieldName = 'FATURAMENTO'
      Visible = False
    end
  end
  object qrentrada_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 506
    Top = 832
    object qrentrada_produtonatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = qrCFOP
      LookupKeyFields = 'cfop'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Size = 50
      Lookup = True
    end
    object qrentrada_produtofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrentrada_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrentrada_produtoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrentrada_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrentrada_produtoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrentrada_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrentrada_produtoVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrentrada_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrentrada_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrentrada_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrentrada_produtoBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrentrada_produtoICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrentrada_produtoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrentrada_produtoSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrentrada_produtoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrentrada_produtoVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrentrada_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrentrada_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrentrada_produtoMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qrentrada_produtoSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrentrada_produtoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrentrada_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrentrada_produtoMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrentrada_produtoSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrentrada_produtoVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrentrada_produtoALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrentrada_produtoSITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
  end
  object qrproduto_mov: TZQuery
    Connection = Conexao
    BeforePost = qrproduto_movBeforePost
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 114
    Top = 1036
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
    object CDSos_movDATA: TDateField
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
    object CDSos_movVENCIMENTO: TDateField
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
    object qrproduto_movPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object qrproduto_movCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
    end
  end
  object qragenda: TZQuery
    Connection = Conexao
    BeforePost = qragendaBeforePost
    SQL.Strings = (
      'select * from c000034')
    Params = <>
    Left = 212
    Top = 1036
    object qragendaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qragendaTIPO: TWideStringField
      FieldName = 'TIPO'
    end
    object qragendaCODTIPO: TWideStringField
      FieldName = 'CODTIPO'
      Size = 6
    end
    object qragendaNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qragendaTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Size = 25
    end
    object qragendaTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Size = 25
    end
    object qragendaTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
      Size = 25
    end
    object qragendaCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 25
    end
    object qragendaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qragendaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qragendaHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qragendaTIPOI: TIntegerField
      FieldName = 'TIPOI'
    end
  end
  object qrplano: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 310
    Top = 1036
    object qrplanoCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrplanoCONTA: TWideStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 44
      FieldName = 'CONTA'
      Size = 40
    end
    object qrplanogrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupDataSet = qrplano2
      LookupKeyFields = 'codigo'
      LookupResultField = 'CONTA'
      KeyFields = 'codgrupo'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrplanoTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrplanoENTRADA: TFloatField
      FieldName = 'ENTRADA'
      Visible = False
    end
    object qrplanoSAIDA: TFloatField
      FieldName = 'SAIDA'
      Visible = False
    end
    object qrplanoSALDO: TFloatField
      FieldName = 'SALDO'
      Visible = False
    end
    object qrplanoFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrplanoCLASSIFICACAO: TWideStringField
      FieldName = 'CLASSIFICACAO'
      Visible = False
      Size = 10
    end
    object qrplanoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object qrplanoNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Visible = False
    end
  end
  object qrsaida_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 16
    Top = 1036
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = qrCFOP
      LookupKeyFields = 'cfop'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Size = 50
      Lookup = True
    end
    object StringField6: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrsaida_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsaida_produtoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrsaida_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrsaida_produtoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrsaida_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrsaida_produtoVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrsaida_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrsaida_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrsaida_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrsaida_produtoBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrsaida_produtoICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrsaida_produtoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrsaida_produtoSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrsaida_produtoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrsaida_produtoVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrsaida_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrsaida_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrsaida_produtoMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qrsaida_produtoSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrsaida_produtoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrsaida_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrsaida_produtoMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrsaida_produtoSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrsaida_produtoVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrsaida_produtoALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrsaida_produtoSITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
  end
  object qrpedido_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000037')
    Params = <>
    Left = 506
    Top = 968
    object StringField12: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrpedido_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrpedido_produtoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrpedido_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object CDSos_produtoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrpedido_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrpedido_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrpedido_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrpedido_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object CDSos_produtoPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qrpedido_produtoCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 50
    end
    object qrpedido_produtoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrpedido_produtoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrpedido_produtoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrpedido_produtoOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
  end
  object qrcheque: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000040')
    Params = <>
    Left = 604
    Top = 968
    object qrchequecliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrchequeCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrchequeSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrchequeEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object qrchequeVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrchequeDATA_DEPOSITO1: TDateField
      FieldName = 'DATA_DEPOSITO1'
    end
    object qrchequeDATA_DEPOSITO2: TDateField
      FieldName = 'DATA_DEPOSITO2'
    end
    object qrchequeDATA_DEVOLUCAO1: TDateField
      FieldName = 'DATA_DEVOLUCAO1'
    end
    object qrchequeDATA_DEVOLUCAO2: TDateField
      FieldName = 'DATA_DEVOLUCAO2'
    end
    object qrchequeCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrchequeTITULAR: TWideStringField
      FieldName = 'TITULAR'
      Size = 80
    end
    object qrchequeCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 6
    end
    object qrchequeAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object qrchequeDATA_CONTA: TDateField
      FieldName = 'DATA_CONTA'
    end
    object qrchequeCONTA: TWideStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object qrchequeNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object qrchequeVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrchequeOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrchequeOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrchequeCODCONTAS_PAGAR: TWideStringField
      FieldName = 'CODCONTAS_PAGAR'
      Size = 6
    end
    object qrchequeDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object qrchequeDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 50
    end
    object qrchequeCODCONTA_CORRENTE: TWideStringField
      FieldName = 'CODCONTA_CORRENTE'
      Size = 6
    end
    object qrchequebanco: TStringField
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrbanco
      LookupKeyFields = 'NUMERO'
      LookupResultField = 'BANCO'
      KeyFields = 'CODBANCO'
      Size = 100
      Lookup = True
    end
    object qrchequeCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
    end
  end
  object qrcontacorrente: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000041')
    Params = <>
    Left = 702
    Top = 968
    object qrcontacorrenteCONTA: TWideStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 15
      FieldName = 'CONTA'
      Size = 15
    end
    object qrcontacorrentebanco: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrbanco
      LookupKeyFields = 'numero'
      LookupResultField = 'BANCO'
      KeyFields = 'codbanco'
      Size = 40
      Lookup = True
    end
    object qrcontacorrenteAGENCIA: TWideStringField
      DisplayLabel = 'Ag'#234'ncia'
      DisplayWidth = 6
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qrcontacorrenteTITULAR: TWideStringField
      DisplayLabel = 'Titular'
      DisplayWidth = 31
      FieldName = 'TITULAR'
      Size = 30
    end
    object qrcontacorrenteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontacorrenteCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Visible = False
      Size = 3
    end
    object qrcontacorrenteSALDO: TFloatField
      FieldName = 'SALDO'
      Visible = False
    end
    object qrcontacorrenteNOME_AGENCIA: TWideStringField
      FieldName = 'NOME_AGENCIA'
      Visible = False
      Size = 30
    end
    object qrcontacorrenteAGENCIADIG: TWideStringField
      FieldName = 'AGENCIADIG'
      Visible = False
      Size = 4
    end
    object qrcontacorrenteCONTADIG: TWideStringField
      FieldName = 'CONTADIG'
      Visible = False
      Size = 30
    end
    object qrcontacorrenteCODCEDENTE: TWideStringField
      FieldName = 'CODCEDENTE'
      Visible = False
    end
    object qrcontacorrenteFISICAJURIDICA: TWideStringField
      FieldName = 'FISICAJURIDICA'
      Visible = False
      Size = 10
    end
    object qrcontacorrenteINSTRUCOES1: TWideStringField
      FieldName = 'INSTRUCOES1'
      Visible = False
      Size = 80
    end
    object qrcontacorrenteINSTRUCOES2: TWideStringField
      FieldName = 'INSTRUCOES2'
      Visible = False
      Size = 80
    end
    object qrcontacorrenteINSTRUCOES3: TWideStringField
      FieldName = 'INSTRUCOES3'
      Visible = False
      Size = 80
    end
    object qrcontacorrenteCPFCNPJ: TWideStringField
      FieldName = 'CPFCNPJ'
      Visible = False
    end
    object qrcontacorrenteNOSSONUM: TWideStringField
      FieldName = 'NOSSONUM'
      Visible = False
      Size = 30
    end
    object qrcontacorrenteTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrcontacorrenteLAYOUT: TIntegerField
      FieldName = 'LAYOUT'
      Visible = False
    end
  end
  object qrlancamento_conta: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000042')
    Params = <>
    Left = 16
    Top = 1104
    object qrlancamento_contaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrlancamento_contaCODCONTACORRENTE: TWideStringField
      FieldName = 'CODCONTACORRENTE'
      Size = 6
    end
    object qrlancamento_contaDATA: TDateField
      FieldName = 'DATA'
    end
    object qrlancamento_contaHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object qrlancamento_contaCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrlancamento_contaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrlancamento_contaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrlancamento_contaDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
      Size = 15
    end
  end
  object qrcaixa_operador: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000045')
    Params = <>
    Left = 378
    Top = 1144
    object qrcaixa_operadorCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcaixa_operadorCODFUNCIONARIO: TWideStringField
      FieldName = 'CODFUNCIONARIO'
      Size = 6
    end
    object qrcaixa_operadorSENHA: TWideStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object qrinventario_operadorDATA: TDateField
      FieldName = 'DATA'
    end
    object qrcaixa_operadorSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcaixa_operadorSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrcaixa_operadorSITUACAO_ATUAL: TWideStringField
      FieldName = 'SITUACAO_ATUAL'
      Size = 50
    end
    object qrcaixa_operadornome: TStringField
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFUNCIONARIO'
      Size = 40
      Lookup = True
    end
  end
  object qrcaixa_mov: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000044')
    Params = <>
    Left = 212
    Top = 1104
    object qrcaixa_movCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrcaixa_movCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcaixa_movCODOPERADOR: TWideStringField
      FieldName = 'CODOPERADOR'
      Size = 6
    end
    object qrcaixa_movDATA: TDateField
      FieldName = 'DATA'
    end
    object qrcaixa_movSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object qrcaixa_movENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object qrcaixa_movCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrcaixa_movHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrcaixa_movMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrcaixa_movVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrcaixa_movCODNFSAIDA: TWideStringField
      FieldName = 'CODNFSAIDA'
      Size = 10
    end
  end
  object ConexaoLocal: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = 'C:\OneMaker\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 114
    Top = 152
  end
  object qrvenda: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000048')
    Params = <>
    Left = 702
    Top = 1036
    object qrvendaSITUACAO: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldName = 'SITUACAO'
    end
    object qrvendaCODIGO: TWideStringField
      DisplayLabel = 'Venda/Nr'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrvendaNUMERO_CUPOM_FISCAL: TWideStringField
      DisplayLabel = 'NF'
      DisplayWidth = 7
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object CDSosDATA1: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 12
      FieldName = 'DATA'
    end
    object qrvendacliente: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 49
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object qrvendaTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 11
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object qrvendavendedor: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 16
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 30
      Lookup = True
    end
    object qrvendaCODCAIXA: TWideStringField
      DisplayLabel = 'Caixa'
      DisplayWidth = 10
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrvendaCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrvendaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrvendaOBS: TWideStringField
      FieldName = 'OBS'
      Visible = False
      Size = 50
    end
    object qrvendaMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
      Visible = False
    end
    object qrvendaMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
      Visible = False
    end
    object qrvendaMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
      Visible = False
    end
    object qrvendaMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
      Visible = False
    end
    object qrvendaMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
      Visible = False
    end
    object qrvendaMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
      Visible = False
    end
    object qrvendaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Visible = False
    end
    object qrvendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrvendaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrvendaCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
      Visible = False
    end
    object qrvendaRETIRADO: TWideStringField
      FieldName = 'RETIRADO'
      Visible = False
      Size = 50
    end
    object qrvendaMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
      Visible = False
    end
    object qrvendaP5: TFloatField
      FieldName = 'P5'
      Visible = False
    end
    object qrvendaP3: TFloatField
      FieldName = 'P3'
      Visible = False
    end
    object qrvendaMEIO_FINANCEIRA: TFloatField
      FieldName = 'MEIO_FINANCEIRA'
      Visible = False
    end
    object qrvendaCOD_FINANCEIRA: TWideStringField
      FieldName = 'COD_FINANCEIRA'
      Visible = False
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LANCTO: TWideStringField
      FieldName = 'COD_FINANCEIRA_LANCTO'
      Visible = False
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LACTO: TWideStringField
      FieldName = 'COD_FINANCEIRA_LACTO'
      Visible = False
      Size = 10
    end
    object qrvendaCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Visible = False
      Size = 10
    end
    object qrvendaCODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Visible = False
      Size = 10
    end
    object qrvendaCODVEICULO: TWideStringField
      FieldName = 'CODVEICULO'
      Visible = False
      Size = 10
    end
    object qrvendaFRETE_VALOR: TFloatField
      FieldName = 'FRETE_VALOR'
      Visible = False
    end
    object qrvendaFRETE_OBS: TWideStringField
      FieldName = 'FRETE_OBS'
      Visible = False
      Size = 80
    end
    object qrvendaFRETE_LANCAR: TIntegerField
      FieldName = 'FRETE_LANCAR'
      Visible = False
    end
    object qrvendaECF_SERIAL: TWideStringField
      FieldName = 'ECF_SERIAL'
      Visible = False
      Size = 30
    end
    object qrvendaCODNFSAIDA: TWideStringField
      FieldName = 'CODNFSAIDA'
      Visible = False
      Size = 10
    end
    object qrvendaATACADO_VAREJO: TSmallintField
      FieldName = 'ATACADO_VAREJO'
      Required = True
      Visible = False
    end
    object qrvendaNRVENDA: TWideStringField
      FieldName = 'NRVENDA'
      Visible = False
      Size = 6
    end
    object qrvendaFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Visible = False
    end
  end
  object qrcontasreceber: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 408
    Top = 1036
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
    object qrcontasreceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
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
  end
  object qrcontasreceber_pgto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000050')
    Params = <>
    Left = 506
    Top = 1036
    object qrcontasreceber_pgtoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 9
    end
    object qrcontasreceber_pgtoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrcontasreceber_pgtoVALOR_PARCELA: TFloatField
      FieldName = 'VALOR_PARCELA'
    end
    object qrcontasreceber_pgtoVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
    end
    object qrcontasreceber_pgtoVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object qrcontasreceber_pgtoVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qrcontasreceber_pgtoDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
    end
    object qrcontasreceber_pgtoCHEQUEAV: TFloatField
      FieldName = 'CHEQUEAV'
    end
    object qrcontasreceber_pgtoCHEQUEAP: TFloatField
      FieldName = 'CHEQUEAP'
    end
    object qrcontasreceber_pgtoCARTAO: TFloatField
      FieldName = 'CARTAO'
    end
    object qrcontasreceber_pgtoBOLETO: TFloatField
      FieldName = 'BOLETO'
    end
    object qrcontasreceber_pgtoTROCO: TFloatField
      FieldName = 'TROCO'
    end
    object qrcontasreceber_pgtoCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
    object qrcontasreceber_pgtoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcontasreceber_pgtoCAIXA_BANCO: TIntegerField
      FieldName = 'CAIXA_BANCO'
    end
  end
  object qros: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000051')
    Params = <>
    Left = 604
    Top = 1036
    object qrosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrosDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrosST: TIntegerField
      FieldName = 'ST'
    end
    object qroscliente: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 33
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrosTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosCONCLUSAO_DATA: TDateTimeField
      FieldName = 'CONCLUSAO_DATA'
    end
    object qrosSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrosCUPOMFISCAL: TIntegerField
      FieldName = 'CUPOMFISCAL'
    end
    object qrosveiculo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'veiculo'
      LookupDataSet = qrveiculo
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codveiculo'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosterceiro: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'terceiro'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codterceiro'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 7
    end
    object qrosCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrosSOLICITANTE: TWideStringField
      FieldName = 'SOLICITANTE'
      Size = 30
    end
    object qrosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object qrosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object qrosATENDIMENTO: TWideStringField
      FieldName = 'ATENDIMENTO'
      Size = 10
    end
    object qrosDEFEITO: TBlobField
      FieldName = 'DEFEITO'
    end
    object qrosOBS: TBlobField
      FieldName = 'OBS'
    end
    object qrosDETECTADO: TBlobField
      FieldName = 'DETECTADO'
    end
    object qrosDETECTADO_DATA: TDateTimeField
      FieldName = 'DETECTADO_DATA'
    end
    object qrosDETECTADO_CODTECNICO: TWideStringField
      FieldName = 'DETECTADO_CODTECNICO'
      Size = 6
    end
    object qrosSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 35
    end
    object qrosCONCLUSAO_ENTREGUE: TDateTimeField
      FieldName = 'CONCLUSAO_ENTREGUE'
    end
    object qrosRETIRADO_POR: TWideStringField
      FieldName = 'RETIRADO_POR'
      Size = 30
    end
    object qrosSERVICO_SUBTOTAL: TFloatField
      FieldName = 'SERVICO_SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosSERVICO_DESCONTO: TFloatField
      FieldName = 'SERVICO_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosSERVICO_TOTAL: TFloatField
      FieldName = 'SERVICO_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosPRODUTO_SUBTOTAL: TFloatField
      FieldName = 'PRODUTO_SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosPRODUTO_DESCONTO: TFloatField
      FieldName = 'PRODUTO_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosPRODUTO_TOTAL: TFloatField
      FieldName = 'PRODUTO_TOTAL'
      DisplayFormat = 'http://www.cinefilmesonline.net/'
    end
    object qrosCODVEICULO: TWideStringField
      FieldName = 'CODVEICULO'
      Size = 6
    end
    object qrosKM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
    end
    object qrosKM_FINAL: TIntegerField
      FieldName = 'KM_FINAL'
    end
    object qrosDESLOC_COMBUSTIVEL: TFloatField
      FieldName = 'DESLOC_COMBUSTIVEL'
    end
    object qrosDESLOC_REFEICAO: TFloatField
      FieldName = 'DESLOC_REFEICAO'
    end
    object qrosDESLOC_HOSPEDAGEM: TFloatField
      FieldName = 'DESLOC_HOSPEDAGEM'
    end
    object qrosDESLOC_TOTAL: TFloatField
      FieldName = 'DESLOC_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosCODTERCEIRO: TWideStringField
      FieldName = 'CODTERCEIRO'
      Size = 6
    end
    object qrosTERCEIRO_CONTATO: TWideStringField
      FieldName = 'TERCEIRO_CONTATO'
      Size = 30
    end
    object qrosTERCEIRO_VALOR: TFloatField
      FieldName = 'TERCEIRO_VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosTERCEIRO_COMISSAO: TFloatField
      FieldName = 'TERCEIRO_COMISSAO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosTERCEIRO_TOTAL: TFloatField
      FieldName = 'TERCEIRO_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosTERCEIRO_OBS: TBlobField
      FieldName = 'TERCEIRO_OBS'
    end
    object qrosSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosatendente: TStringField
      FieldKind = fkLookup
      FieldName = 'atendente'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'codatendente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosdetectado_tecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'detectado_tecnico'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'DETECTADO_CODTECNICO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosCODSETOR: TWideStringField
      FieldName = 'CODSETOR'
      Size = 6
    end
    object qrossetor: TStringField
      FieldKind = fkLookup
      FieldName = 'setor'
      LookupDataSet = qrsetor
      LookupKeyFields = 'codigo'
      LookupResultField = 'setor'
      KeyFields = 'codsetor'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosCODATENDENTE: TWideStringField
      FieldName = 'CODATENDENTE'
      Size = 6
    end
    object qroscliente_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'endereco'
      KeyFields = 'codcliente'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qroscliente_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'bairro'
      KeyFields = 'codcliente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qroscliente_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codcliente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qroscliente_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'uf'
      KeyFields = 'codcliente'
      Visible = False
      Size = 2
      Lookup = True
    end
    object qroscliente_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codcliente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qroscliente_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codcliente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qroscliente_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'cep'
      KeyFields = 'codcliente'
      Visible = False
      Size = 12
      Lookup = True
    end
    object qroscliente_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'codcliente'
      Visible = False
      Lookup = True
    end
    object qrosCHASSI: TWideStringField
      FieldName = 'CHASSI'
      Size = 40
    end
    object qrosCOR: TWideStringField
      FieldName = 'COR'
      Size = 10
    end
    object qrosCOMBUSTIVEL: TWideStringField
      FieldName = 'COMBUSTIVEL'
      Size = 10
    end
    object qrosCOMBUSTIVEL_NIVEL: TFloatField
      FieldName = 'COMBUSTIVEL_NIVEL'
    end
    object qrosNUMERO_CUPOM_FISCAL: TIntegerField
      FieldName = 'NUMERO_CUPOM_FISCAL'
    end
    object qrosCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrosDETECTADO_HORA: TWideStringField
      FieldName = 'DETECTADO_HORA'
      Size = 5
    end
    object qrosHORA: TWideStringField
      FieldName = 'HORA'
      Size = 5
    end
    object qrosINTERVENCOES: TBlobField
      FieldName = 'INTERVENCOES'
    end
    object qrosDAV: TWideStringField
      FieldName = 'DAV'
      Size = 10
    end
    object qrosDAV_IMPRESSO: TIntegerField
      FieldName = 'DAV_IMPRESSO'
    end
    object qrosDAV_ATUAL: TWideStringField
      FieldName = 'DAV_ATUAL'
      Size = 15
    end
    object qrosCODFUN: TWideStringField
      FieldName = 'CODFUN'
      Size = 6
    end
  end
  object qrsetor: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000052')
    Params = <>
    Left = 408
    Top = 968
    object qrsetorCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsetorSETOR: TWideStringField
      FieldName = 'SETOR'
      Size = 30
    end
    object qrsetorFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrveiculo: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000054')
    Params = <>
    Left = 212
    Top = 900
    object qrveiculoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrveiculoNOME: TWideStringField
      FieldName = 'NOME'
    end
    object qrveiculoANO: TWideStringField
      FieldName = 'ANO'
      Size = 10
    end
    object qrveiculoCOMBUSTIVEL: TWideStringField
      FieldName = 'COMBUSTIVEL'
      Size = 15
    end
    object qrveiculoPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrveiculoUFPLACA: TWideStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object qrveiculoCOR: TWideStringField
      FieldName = 'COR'
    end
    object qrveiculoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrveiculoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrveiculoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrveiculoCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object qrveiculoCOTA_UNICA_IPVA: TDateField
      FieldName = 'COTA_UNICA_IPVA'
    end
    object qrveiculoCOTA1_IPVA: TDateField
      FieldName = 'COTA1_IPVA'
    end
    object qrveiculoCOTA2_IPVA: TDateField
      FieldName = 'COTA2_IPVA'
    end
    object qrveiculoCOTA3_IPVA: TDateField
      FieldName = 'COTA3_IPVA'
    end
    object qrveiculoLICENCIAMENTO: TDateField
      FieldName = 'LICENCIAMENTO'
    end
    object qrveiculoSEGURO_OBRIGATORIO: TDateField
      FieldName = 'SEGURO_OBRIGATORIO'
    end
    object qrveiculoCOD_MARCA: TWideStringField
      FieldName = 'COD_MARCA'
      Size = 6
    end
    object qrveiculoCOD_MODELO: TWideStringField
      FieldName = 'COD_MODELO'
      Size = 6
    end
    object qrveiculoSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object qrorcamento: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000056')
    Params = <>
    Left = 310
    Top = 900
    object qrorcamentocliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrorcamentovendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codvendedor'
      Size = 50
      Lookup = True
    end
    object qrorcamentoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrorcamentoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrorcamentoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrorcamentoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrorcamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrorcamentoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrorcamentoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrorcamentoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrorcamentoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrorcamentoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrorcamentoOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrorcamentoCODNF: TWideStringField
      FieldName = 'CODNF'
      Size = 6
    end
    object qrorcamentoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrorcamentoGERA_NF: TIntegerField
      FieldName = 'GERA_NF'
    end
    object qrorcamentoQTDE_MESES: TIntegerField
      FieldName = 'QTDE_MESES'
    end
    object qrorcamentoCONDPAGTOCLIENTE: TWideStringField
      FieldName = 'CONDPAGTOCLIENTE'
      Size = 100
    end
    object qrorcamentoPEND_ENTRADA: TIntegerField
      FieldName = 'PEND_ENTRADA'
    end
    object qrorcamentoPEND_CHEQUE: TIntegerField
      FieldName = 'PEND_CHEQUE'
    end
    object qrorcamentoPEND_CARTAO: TIntegerField
      FieldName = 'PEND_CARTAO'
    end
    object qrorcamentoNOME_VENDEDOR: TWideStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 50
    end
  end
  object qrrelatorio: TZQuery
    Connection = ConexaoLocal
    AfterPost = qrrelatorioAfterPost
    SQL.Strings = (
      'select * from L000003')
    Params = <>
    Left = 40
    Top = 28
    object qrrelatorioLINHA1: TWideStringField
      FieldName = 'LINHA1'
      Size = 100
    end
    object qrrelatorioLINHA2: TWideStringField
      FieldName = 'LINHA2'
      Size = 100
    end
    object qrrelatorioLINHA3: TWideStringField
      FieldName = 'LINHA3'
      Size = 100
    end
    object qrrelatorioLINHA4: TWideStringField
      FieldName = 'LINHA4'
      Size = 100
    end
    object qrrelatorioLINHA5: TWideStringField
      FieldName = 'LINHA5'
      Size = 100
    end
    object qrrelatorioLINHA6: TWideStringField
      FieldName = 'LINHA6'
      Size = 100
    end
    object qrrelatorioLINHA7: TWideStringField
      FieldName = 'LINHA7'
      Size = 100
    end
    object qrrelatorioLINHA8: TWideStringField
      FieldName = 'LINHA8'
      Size = 100
    end
    object qrrelatorioLINHA9: TWideStringField
      FieldName = 'LINHA9'
      Size = 100
    end
    object qrrelatorioLINHA10: TWideStringField
      FieldName = 'LINHA10'
      Size = 100
    end
    object qrrelatorioVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object qrrelatorioVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object qrrelatorioVALOR3: TFloatField
      FieldName = 'VALOR3'
    end
    object qrrelatorioVALOR4: TFloatField
      FieldName = 'VALOR4'
    end
    object qrrelatorioVALOR5: TFloatField
      FieldName = 'VALOR5'
    end
    object qrrelatorioVALOR6: TFloatField
      FieldName = 'VALOR6'
    end
    object qrrelatorioVALOR7: TFloatField
      FieldName = 'VALOR7'
    end
    object qrrelatorioVALOR8: TFloatField
      FieldName = 'VALOR8'
    end
    object qrrelatorioVALOR9: TFloatField
      FieldName = 'VALOR9'
    end
    object qrrelatorioVALOR10: TFloatField
      FieldName = 'VALOR10'
    end
    object qrrelatorioVALOR11: TFloatField
      FieldName = 'VALOR11'
    end
    object qrrelatorioVALOR12: TFloatField
      FieldName = 'VALOR12'
    end
    object qrrelatorioVALOR13: TFloatField
      FieldName = 'VALOR13'
    end
    object qrrelatorioVALOR14: TFloatField
      FieldName = 'VALOR14'
    end
    object qrrelatorioVALOR15: TFloatField
      FieldName = 'VALOR15'
    end
    object qrrelatorioVALOR16: TFloatField
      FieldName = 'VALOR16'
    end
    object qrrelatorioVALOR17: TFloatField
      FieldName = 'VALOR17'
    end
    object qrrelatorioVALOR18: TFloatField
      FieldName = 'VALOR18'
    end
    object qrrelatorioVALOR19: TFloatField
      FieldName = 'VALOR19'
    end
    object qrrelatorioVALOR20: TFloatField
      FieldName = 'VALOR20'
    end
    object qrrelatorioVALOR21: TFloatField
      FieldName = 'VALOR21'
    end
    object qrrelatorioVALOR22: TFloatField
      FieldName = 'VALOR22'
    end
    object qrrelatorioVALOR23: TFloatField
      FieldName = 'VALOR23'
    end
    object qrrelatorioVALOR24: TFloatField
      FieldName = 'VALOR24'
    end
    object qrrelatorioVALOR25: TFloatField
      FieldName = 'VALOR25'
    end
    object qrrelatorioVALOR26: TFloatField
      FieldName = 'VALOR26'
    end
    object qrrelatorioVALOR27: TFloatField
      FieldName = 'VALOR27'
    end
    object qrrelatorioVALOR28: TFloatField
      FieldName = 'VALOR28'
    end
    object qrrelatorioVALOR29: TFloatField
      FieldName = 'VALOR29'
    end
    object qrrelatorioVALOR30: TFloatField
      FieldName = 'VALOR30'
    end
    object qrrelatorioVALOR31: TFloatField
      FieldName = 'VALOR31'
    end
    object qrrelatorioVALOR32: TFloatField
      FieldName = 'VALOR32'
    end
    object qrrelatorioVALOR33: TFloatField
      FieldName = 'VALOR33'
    end
    object qrrelatorioVALOR34: TFloatField
      FieldName = 'VALOR34'
    end
    object qrrelatorioVALOR35: TFloatField
      FieldName = 'VALOR35'
    end
    object qrrelatorioTEXTO_GRANDE: TWideStringField
      FieldName = 'TEXTO_GRANDE'
      Size = 300
    end
    object qrrelatorioTP: TIntegerField
      FieldName = 'TP'
    end
  end
  object qrnotafiscal: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000061')
    Params = <>
    Left = 114
    Top = 900
    object qrnotafiscalfilial: TStringField
      FieldKind = fkLookup
      FieldName = 'filial'
      LookupDataSet = qrFilial
      LookupKeyFields = 'codigo'
      LookupResultField = 'FILIAL'
      KeyFields = 'codfilial'
      Size = 30
      Lookup = True
    end
    object qrnotafiscalcliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrnotafiscalnatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Size = 30
      Lookup = True
    end
    object qrnotafiscaltransp_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_endereco'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'ENDERECO'
      KeyFields = 'codtransportador'
      Size = 50
      Lookup = True
    end
    object qrnotafiscaltransp_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cidade'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codtransportador'
      Size = 30
      Lookup = True
    end
    object qrnotafiscaltransp_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_uf'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'UF'
      KeyFields = 'codtransportador'
      Size = 2
      Lookup = True
    end
    object qrnotafiscaltransp_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cpf'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codtransportador'
      Size = 25
      Lookup = True
    end
    object qrnotafiscaltransp_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_rg'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codtransportador'
      Size = 25
      Lookup = True
    end
    object qrnotafiscalendereco: TStringField
      FieldKind = fkLookup
      FieldName = 'endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrnotafiscalcpf: TStringField
      FieldKind = fkLookup
      FieldName = 'cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'CODCLIENTE'
      Size = 14
      Lookup = True
    end
    object qrnotafiscalrg: TStringField
      FieldKind = fkLookup
      FieldName = 'rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RG'
      KeyFields = 'CODCLIENTE'
      Lookup = True
    end
    object qrnotafiscalCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrnotafiscalNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrnotafiscalCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrnotafiscalDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrnotafiscalCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrnotafiscalVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrnotafiscalTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrnotafiscalBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrnotafiscalVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotafiscalBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrnotafiscalICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrnotafiscalFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrnotafiscalSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrnotafiscalOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrnotafiscalVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrnotafiscalITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrnotafiscalDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnotafiscalCODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 6
    end
    object qrnotafiscalFRETE_CONTA: TIntegerField
      FieldName = 'FRETE_CONTA'
    end
    object qrnotafiscalPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrnotafiscalPLACA_UF: TWideStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object qrnotafiscalVOL_QTDE: TFloatField
      FieldName = 'VOL_QTDE'
    end
    object qrnotafiscalVOL_ESPECIE: TWideStringField
      FieldName = 'VOL_ESPECIE'
    end
    object qrnotafiscalVOL_MARCA: TWideStringField
      FieldName = 'VOL_MARCA'
    end
    object qrnotafiscalVOL_NUMERO: TWideStringField
      FieldName = 'VOL_NUMERO'
    end
    object qrnotafiscalPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrnotafiscalPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object qrnotafiscalSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrnotafiscalMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Size = 40
    end
    object qrnotafiscalFATURAMENTO_DATA1: TDateTimeField
      FieldName = 'FATURAMENTO_DATA1'
    end
    object qrnotafiscalFATURAMENTO_DATA2: TDateTimeField
      FieldName = 'FATURAMENTO_DATA2'
    end
    object qrnotafiscalFATURAMENTO_DATA3: TDateTimeField
      FieldName = 'FATURAMENTO_DATA3'
    end
    object qrnotafiscalFATURAMENTO_DATA4: TDateTimeField
      FieldName = 'FATURAMENTO_DATA4'
    end
    object qrnotafiscalFATURAMENTO_NUMERO1: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO1'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_NUMERO2: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO2'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_NUMERO3: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO3'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_NUMERO4: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO4'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_VALOR1: TFloatField
      FieldName = 'FATURAMENTO_VALOR1'
    end
    object qrnotafiscalFATURAMENTO_VALOR2: TFloatField
      FieldName = 'FATURAMENTO_VALOR2'
    end
    object qrnotafiscalFATURAMENTO_VALOR3: TFloatField
      FieldName = 'FATURAMENTO_VALOR3'
    end
    object qrnotafiscalFATURAMENTO_VALOR4: TFloatField
      FieldName = 'FATURAMENTO_VALOR4'
    end
    object qrnotafiscalCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrnotafiscalOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrnotafiscalOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrnotafiscalOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrnotafiscalINF1: TWideStringField
      FieldName = 'INF1'
      Size = 80
    end
    object qrnotafiscalINF2: TWideStringField
      FieldName = 'INF2'
      Size = 80
    end
    object qrnotafiscalINF3: TWideStringField
      FieldName = 'INF3'
      Size = 80
    end
    object qrnotafiscalINF4: TWideStringField
      FieldName = 'INF4'
      Size = 80
    end
    object qrnotafiscalINF5: TWideStringField
      FieldName = 'INF5'
      Size = 80
    end
    object qrnotafiscalDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object qrnotafiscalHORA: TWideStringField
      FieldName = 'HORA'
      Size = 5
    end
    object qrnotafiscalSITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
    object qrnotafiscalMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrnotafiscalSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrnotafiscalVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrnotafiscalALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrnotafiscalSIT: TWideStringField
      FieldName = 'SIT'
      Size = 1
    end
    object qrnotafiscalCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Size = 10
    end
    object qrnotafiscalMOVIMENTO: TWideStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object qrnotafiscalBAIXA_ESTOQUE: TWideStringField
      FieldName = 'BAIXA_ESTOQUE'
      Size = 1
    end
    object qrnotafiscalTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrnotafiscalOS_COD1: TWideStringField
      FieldName = 'OS_COD1'
      Size = 10
    end
    object qrnotafiscalOS_COD2: TWideStringField
      FieldName = 'OS_COD2'
      Size = 10
    end
    object qrnotafiscalOS_COD3: TWideStringField
      FieldName = 'OS_COD3'
      Size = 10
    end
    object qrnotafiscalOS_COD4: TWideStringField
      FieldName = 'OS_COD4'
      Size = 10
    end
    object qrnotafiscalOS_COD5: TWideStringField
      FieldName = 'OS_COD5'
      Size = 10
    end
    object qrnotafiscalOS_COD6: TWideStringField
      FieldName = 'OS_COD6'
      Size = 10
    end
    object qrnotafiscalOS_SERV1: TWideStringField
      FieldName = 'OS_SERV1'
      Size = 60
    end
    object qrnotafiscalOS_SERV2: TWideStringField
      FieldName = 'OS_SERV2'
      Size = 60
    end
    object qrnotafiscalOS_SERV3: TWideStringField
      FieldName = 'OS_SERV3'
      Size = 60
    end
    object qrnotafiscalOS_SERV4: TWideStringField
      FieldName = 'OS_SERV4'
      Size = 60
    end
    object qrnotafiscalOS_SERV5: TWideStringField
      FieldName = 'OS_SERV5'
      Size = 60
    end
    object qrnotafiscalOS_SERV6: TWideStringField
      FieldName = 'OS_SERV6'
      Size = 60
    end
    object qrnotafiscalOS_COMP1: TWideStringField
      FieldName = 'OS_COMP1'
      Size = 60
    end
    object qrnotafiscalOS_COMP2: TWideStringField
      FieldName = 'OS_COMP2'
      Size = 60
    end
    object qrnotafiscalOS_COMP3: TWideStringField
      FieldName = 'OS_COMP3'
      Size = 60
    end
    object qrnotafiscalOS_COMP4: TWideStringField
      FieldName = 'OS_COMP4'
      Size = 60
    end
    object qrnotafiscalOS_COMP5: TWideStringField
      FieldName = 'OS_COMP5'
      Size = 60
    end
    object qrnotafiscalOS_COMP6: TWideStringField
      FieldName = 'OS_COMP6'
      Size = 60
    end
    object qrnotafiscalOS_QTDE1: TFloatField
      FieldName = 'OS_QTDE1'
    end
    object qrnotafiscalOS_QTDE2: TFloatField
      FieldName = 'OS_QTDE2'
    end
    object qrnotafiscalOS_QTDE3: TFloatField
      FieldName = 'OS_QTDE3'
    end
    object qrnotafiscalOS_QTDE4: TFloatField
      FieldName = 'OS_QTDE4'
    end
    object qrnotafiscalOS_QTDE5: TFloatField
      FieldName = 'OS_QTDE5'
    end
    object qrnotafiscalOS_QTDE6: TFloatField
      FieldName = 'OS_QTDE6'
    end
    object qrnotafiscalOS_UNIT1: TFloatField
      FieldName = 'OS_UNIT1'
    end
    object qrnotafiscalOS_UNIT2: TFloatField
      FieldName = 'OS_UNIT2'
    end
    object qrnotafiscalOS_UNIT3: TFloatField
      FieldName = 'OS_UNIT3'
    end
    object qrnotafiscalOS_UNIT4: TFloatField
      FieldName = 'OS_UNIT4'
    end
    object qrnotafiscalOS_UNIT5: TFloatField
      FieldName = 'OS_UNIT5'
    end
    object qrnotafiscalOS_UNIT6: TFloatField
      FieldName = 'OS_UNIT6'
    end
    object qrnotafiscalOS_TOTAL1: TFloatField
      FieldName = 'OS_TOTAL1'
    end
    object qrnotafiscalOS_TOTAL2: TFloatField
      FieldName = 'OS_TOTAL2'
    end
    object qrnotafiscalOS_TOTAL3: TFloatField
      FieldName = 'OS_TOTAL3'
    end
    object qrnotafiscalOS_TOTAL4: TFloatField
      FieldName = 'OS_TOTAL4'
    end
    object qrnotafiscalOS_TOTAL5: TFloatField
      FieldName = 'OS_TOTAL5'
    end
    object qrnotafiscalOS_TOTAL6: TFloatField
      FieldName = 'OS_TOTAL6'
    end
    object qrnotafiscalOS_ISS: TFloatField
      FieldName = 'OS_ISS'
    end
    object qrnotafiscalOS_TOTAL_GERAL: TFloatField
      FieldName = 'OS_TOTAL_GERAL'
    end
    object qrnotafiscalOS_TOTAL_ISS: TFloatField
      FieldName = 'OS_TOTAL_ISS'
    end
    object qrnotafiscalDESCONTO_ITEM: TFloatField
      FieldName = 'DESCONTO_ITEM'
    end
    object qrnotafiscalOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrnotafiscalOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrnotafiscalCODIGOMODELO: TWideStringField
      FieldName = 'CODIGOMODELO'
      Size = 6
    end
    object qrnotafiscalCUSTO_VENDA: TWideStringField
      FieldName = 'CUSTO_VENDA'
      Size = 1
    end
    object qrnotafiscalFAT_FORMA_PGTO: TWideStringField
      FieldName = 'FAT_FORMA_PGTO'
      Size = 50
    end
    object qrnotafiscalFAT_CONDI_PGTO: TWideStringField
      FieldName = 'FAT_CONDI_PGTO'
      Size = 50
    end
    object qrnotafiscalFAT_QTDE_PRESTACAO: TIntegerField
      FieldName = 'FAT_QTDE_PRESTACAO'
    end
    object qrnotafiscalFAT_GERAR_RECEBER: TIntegerField
      FieldName = 'FAT_GERAR_RECEBER'
    end
    object qrnotafiscalFAT_GERAR_DUPLICATA: TIntegerField
      FieldName = 'FAT_GERAR_DUPLICATA'
    end
    object qrnotafiscalPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrnotafiscalCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrnotafiscalFAT_TIPO: TIntegerField
      FieldName = 'FAT_TIPO'
    end
    object qrnotafiscalCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrnotafiscalOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object qrnotafiscalINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object qrnotafiscalNFE_SITUACAO: TIntegerField
      FieldName = 'NFE_SITUACAO'
    end
    object qrnotafiscalNFE_XML: TWideStringField
      FieldName = 'NFE_XML'
      Size = 240
    end
    object qrnotafiscalVAREJO_ATACADO: TWideStringField
      FieldName = 'VAREJO_ATACADO'
      Size = 1
    end
    object qrnotafiscalINDUSTRIALIZACAO: TWideStringField
      FieldName = 'INDUSTRIALIZACAO'
      Size = 1
    end
    object qrnotafiscalPERDA: TWideStringField
      FieldName = 'PERDA'
      Size = 1
    end
    object qrnotafiscalFATURAMENTO_DATA5: TDateTimeField
      FieldName = 'FATURAMENTO_DATA5'
    end
    object qrnotafiscalFATURAMENTO_DATA6: TDateTimeField
      FieldName = 'FATURAMENTO_DATA6'
    end
    object qrnotafiscalFATURAMENTO_NUMERO5: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO5'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_NUMERO6: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO6'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_VALOR5: TFloatField
      FieldName = 'FATURAMENTO_VALOR5'
    end
    object qrnotafiscalFATURAMENTO_VALOR6: TFloatField
      FieldName = 'FATURAMENTO_VALOR6'
    end
    object qrnotafiscalFATURAMENTO_DATA7: TDateTimeField
      FieldName = 'FATURAMENTO_DATA7'
    end
    object qrnotafiscalFATURAMENTO_DATA8: TDateTimeField
      FieldName = 'FATURAMENTO_DATA8'
    end
    object qrnotafiscalFATURAMENTO_DATA9: TDateTimeField
      FieldName = 'FATURAMENTO_DATA9'
    end
    object qrnotafiscalFATURAMENTO_NUMERO7: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO7'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_NUMERO8: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO8'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_NUMERO9: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO9'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_VALOR7: TFloatField
      FieldName = 'FATURAMENTO_VALOR7'
    end
    object qrnotafiscalFATURAMENTO_VALOR8: TFloatField
      FieldName = 'FATURAMENTO_VALOR8'
    end
    object qrnotafiscalFATURAMENTO_VALOR9: TFloatField
      FieldName = 'FATURAMENTO_VALOR9'
    end
    object qrnotafiscalCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 50
    end
  end
  object qrcliente_veiculo: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000063')
    Params = <>
    Left = 604
    Top = 832
    object qrcliente_veiculoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcliente_veiculoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcliente_veiculoVEICULO: TWideStringField
      FieldName = 'VEICULO'
      Size = 30
    end
    object qrcliente_veiculoPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object qrcliente_veiculoUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrcliente_veiculoANO: TWideStringField
      FieldName = 'ANO'
      Size = 10
    end
    object qrcliente_veiculoCOMBUSTIVEL: TWideStringField
      FieldName = 'COMBUSTIVEL'
      Size = 15
    end
    object qrcliente_veiculoRENAVAM: TWideStringField
      FieldName = 'RENAVAM'
      Size = 30
    end
    object qrcliente_veiculoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrcliente_veiculoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrcliente_veiculoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrcliente_veiculoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrcliente_veiculoCOR: TWideStringField
      FieldName = 'COR'
      Size = 10
    end
    object qrcliente_veiculoCHASSI: TWideStringField
      FieldName = 'CHASSI'
      Size = 40
    end
  end
  object qrconfig_cobrebem: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000064')
    Params = <>
    Left = 702
    Top = 832
    object qrconfig_cobrebembanco: TStringField
      DisplayLabel = 'BANCO'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrcontacorrente
      LookupKeyFields = 'CONTA'
      LookupResultField = 'NOME_AGENCIA'
      KeyFields = 'CODCONTA'
      Size = 30
      Lookup = True
    end
    object qrconfig_cobrebemagencia: TStringField
      DisplayLabel = 'AG'#202'NCIA'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'agencia'
      LookupDataSet = qrcontacorrente
      LookupKeyFields = 'conta'
      LookupResultField = 'agencia'
      KeyFields = 'codconta'
      Size = 10
      Lookup = True
    end
    object qrconfig_cobrebemcodigo_banco: TStringField
      DisplayWidth = 5
      FieldKind = fkLookup
      FieldName = 'codigo_banco'
      LookupDataSet = qrcontacorrente
      LookupKeyFields = 'conta'
      LookupResultField = 'CODBANCO'
      KeyFields = 'codconta'
      Visible = False
      Size = 5
      Lookup = True
    end
    object qrconfig_cobrebemtitular: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'titular'
      LookupDataSet = qrcontacorrente
      LookupKeyFields = 'conta'
      LookupResultField = 'TITULAR'
      KeyFields = 'codconta'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrconfig_cobrebemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconfig_cobrebemDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qrconfig_cobrebemCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 15
    end
    object qrconfig_cobrebemCODIGO_CEDENTE: TWideStringField
      FieldName = 'CODIGO_CEDENTE'
    end
    object qrconfig_cobrebemARQUIVO_CONFIGURACAO: TWideStringField
      FieldName = 'ARQUIVO_CONFIGURACAO'
      Size = 100
    end
    object qrconfig_cobrebemARQUIVO_LOGOMARCA: TWideStringField
      FieldName = 'ARQUIVO_LOGOMARCA'
      Size = 100
    end
    object qrconfig_cobrebemTIPO_BOLETO: TWideStringField
      FieldName = 'TIPO_BOLETO'
      Size = 50
    end
    object qrconfig_cobrebemNOSSONUMERO_INICIO: TWideStringField
      FieldName = 'NOSSONUMERO_INICIO'
      Size = 10
    end
    object qrconfig_cobrebemNOSSONUMERO_FIM: TWideStringField
      FieldName = 'NOSSONUMERO_FIM'
      Size = 10
    end
    object qrconfig_cobrebemNOSSONUMERO_PROXIMO: TWideStringField
      FieldName = 'NOSSONUMERO_PROXIMO'
      Size = 10
    end
    object qrconfig_cobrebemVARIACAO_MODALIDADE: TWideStringField
      FieldName = 'VARIACAO_MODALIDADE'
      Size = 10
    end
    object qrconfig_cobrebemMARGEM_SUPERIOR: TWideStringField
      FieldName = 'MARGEM_SUPERIOR'
      Size = 10
    end
    object qrconfig_cobrebemREMESSA_UTILIZA: TIntegerField
      FieldName = 'REMESSA_UTILIZA'
    end
    object qrconfig_cobrebemRETORNO_UTILIZA: TIntegerField
      FieldName = 'RETORNO_UTILIZA'
    end
    object qrconfig_cobrebemREMESSA_LOCAL: TWideStringField
      FieldName = 'REMESSA_LOCAL'
      Size = 100
    end
    object qrconfig_cobrebemRETORNO_LOCAL: TWideStringField
      FieldName = 'RETORNO_LOCAL'
      Size = 100
    end
    object qrconfig_cobrebemINSTRUCOES_1: TWideStringField
      FieldName = 'INSTRUCOES_1'
      Size = 80
    end
    object qrconfig_cobrebemINSTRUCOES_2: TWideStringField
      FieldName = 'INSTRUCOES_2'
      Size = 80
    end
    object qrconfig_cobrebemINSTRUCOES_3: TWideStringField
      FieldName = 'INSTRUCOES_3'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_1: TWideStringField
      FieldName = 'DEMONSTRATIVO_1'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_2: TWideStringField
      FieldName = 'DEMONSTRATIVO_2'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_3: TWideStringField
      FieldName = 'DEMONSTRATIVO_3'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_4: TWideStringField
      FieldName = 'DEMONSTRATIVO_4'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_5: TWideStringField
      FieldName = 'DEMONSTRATIVO_5'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_6: TWideStringField
      FieldName = 'DEMONSTRATIVO_6'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_7: TWideStringField
      FieldName = 'DEMONSTRATIVO_7'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_8: TWideStringField
      FieldName = 'DEMONSTRATIVO_8'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_TIPO: TIntegerField
      FieldName = 'DEMONSTRATIVO_TIPO'
    end
    object qrconfig_cobrebemLIN_VENCIMENTO: TIntegerField
      FieldName = 'LIN_VENCIMENTO'
    end
    object qrconfig_cobrebemCOL_VENCIMENTO: TIntegerField
      FieldName = 'COL_VENCIMENTO'
    end
    object qrconfig_cobrebemLIN_DATADOC: TIntegerField
      FieldName = 'LIN_DATADOC'
    end
    object qrconfig_cobrebemCOL_DATADOC: TIntegerField
      FieldName = 'COL_DATADOC'
    end
    object qrconfig_cobrebemLIN_NUMERO: TIntegerField
      FieldName = 'LIN_NUMERO'
    end
    object qrconfig_cobrebemCOL_NUMERO: TIntegerField
      FieldName = 'COL_NUMERO'
    end
    object qrconfig_cobrebemLIN_ESPDOC: TIntegerField
      FieldName = 'LIN_ESPDOC'
    end
    object qrconfig_cobrebemCOL_ESPDOC: TIntegerField
      FieldName = 'COL_ESPDOC'
    end
    object qrconfig_cobrebemLIN_ACEITE: TIntegerField
      FieldName = 'LIN_ACEITE'
    end
    object qrconfig_cobrebemCOL_ACEITE: TIntegerField
      FieldName = 'COL_ACEITE'
    end
    object qrconfig_cobrebemLIN_ESP: TIntegerField
      FieldName = 'LIN_ESP'
    end
    object qrconfig_cobrebemCOL_ESP: TIntegerField
      FieldName = 'COL_ESP'
    end
    object qrconfig_cobrebemLIN_QTDE: TIntegerField
      FieldName = 'LIN_QTDE'
    end
    object qrconfig_cobrebemCOL_QTDE: TIntegerField
      FieldName = 'COL_QTDE'
    end
    object qrconfig_cobrebemLIN_VALOR: TIntegerField
      FieldName = 'LIN_VALOR'
    end
    object qrconfig_cobrebemCOL_VALOR: TIntegerField
      FieldName = 'COL_VALOR'
    end
    object qrconfig_cobrebemLIN_VALORDOC: TIntegerField
      FieldName = 'LIN_VALORDOC'
    end
    object qrconfig_cobrebemCOL_VALORDOC: TIntegerField
      FieldName = 'COL_VALORDOC'
    end
    object qrconfig_cobrebemLIN_DESCONTO: TIntegerField
      FieldName = 'LIN_DESCONTO'
    end
    object qrconfig_cobrebemCOL_DESCONTO: TIntegerField
      FieldName = 'COL_DESCONTO'
    end
    object qrconfig_cobrebemLIN_OUTRAS: TIntegerField
      FieldName = 'LIN_OUTRAS'
    end
    object qrconfig_cobrebemCOL_OUTRAS: TIntegerField
      FieldName = 'COL_OUTRAS'
    end
    object qrconfig_cobrebemLIN_MORA: TIntegerField
      FieldName = 'LIN_MORA'
    end
    object qrconfig_cobrebemCOL_MORA: TIntegerField
      FieldName = 'COL_MORA'
    end
    object qrconfig_cobrebemLIN_OUTROS: TIntegerField
      FieldName = 'LIN_OUTROS'
    end
    object qrconfig_cobrebemCOL_OUTROS: TIntegerField
      FieldName = 'COL_OUTROS'
    end
    object qrconfig_cobrebemLIN_COBRADO: TIntegerField
      FieldName = 'LIN_COBRADO'
    end
    object qrconfig_cobrebemCOL_COBRADO: TIntegerField
      FieldName = 'COL_COBRADO'
    end
    object qrconfig_cobrebemLIN_CEDENTE: TIntegerField
      FieldName = 'LIN_CEDENTE'
    end
    object qrconfig_cobrebemCOL_CEDENTE: TIntegerField
      FieldName = 'COL_CEDENTE'
    end
    object qrconfig_cobrebemLIN_CEDENTEENDER: TIntegerField
      FieldName = 'LIN_CEDENTEENDER'
    end
    object qrconfig_cobrebemCOL_CEDENTEENDER: TIntegerField
      FieldName = 'COL_CEDENTEENDER'
    end
    object qrconfig_cobrebemCOL_INSTRUCOES: TIntegerField
      FieldName = 'COL_INSTRUCOES'
    end
    object qrconfig_cobrebemLIN_INST1: TIntegerField
      FieldName = 'LIN_INST1'
    end
    object qrconfig_cobrebemLIN_INST2: TIntegerField
      FieldName = 'LIN_INST2'
    end
    object qrconfig_cobrebemLIN_INST3: TIntegerField
      FieldName = 'LIN_INST3'
    end
    object qrconfig_cobrebemLIN_INST4: TIntegerField
      FieldName = 'LIN_INST4'
    end
    object qrconfig_cobrebemLIN_INST5: TIntegerField
      FieldName = 'LIN_INST5'
    end
    object qrconfig_cobrebemLIN_INST6: TIntegerField
      FieldName = 'LIN_INST6'
    end
    object qrconfig_cobrebemTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrconfig_cobrebemREMESSA_SEQUENCIA: TIntegerField
      FieldName = 'REMESSA_SEQUENCIA'
    end
    object qrconfig_cobrebemREMESSA_LAYOUT: TWideStringField
      FieldName = 'REMESSA_LAYOUT'
    end
    object qrconfig_cobrebemRETORNO_LAYOUT: TWideStringField
      FieldName = 'RETORNO_LAYOUT'
    end
    object qrconfig_cobrebemENTRE_LINHAS: TIntegerField
      FieldName = 'ENTRE_LINHAS'
    end
    object qrconfig_cobrebemACERTO_ENTRE_LINHAS: TIntegerField
      FieldName = 'ACERTO_ENTRE_LINHAS'
    end
    object qrconfig_cobrebemCODIGO_CARTEIRA: TWideStringField
      FieldName = 'CODIGO_CARTEIRA'
      Size = 1
    end
    object qrconfig_cobrebemFORMA_CADASTRAMENTO: TWideStringField
      FieldName = 'FORMA_CADASTRAMENTO'
      Size = 1
    end
    object qrconfig_cobrebemCONTADIG: TWideStringField
      FieldName = 'CONTADIG'
    end
    object qrconfig_cobrebemAGENCIADIG: TWideStringField
      FieldName = 'AGENCIADIG'
    end
    object qrconfig_cobrebemCONVENIO: TWideStringField
      FieldName = 'CONVENIO'
    end
    object qrconfig_cobrebemCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrconfig_cobrebemCODCONTADIG: TWideStringField
      FieldName = 'CODCONTADIG'
    end
  end
  object qrboleto_impressao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000065')
    Params = <>
    Left = 16
    Top = 900
    object qrboleto_impressaoVENCIMENTO: TWideStringField
      FieldName = 'VENCIMENTO'
      Size = 10
    end
    object qrboleto_impressaoDATA_DOC: TWideStringField
      FieldName = 'DATA_DOC'
      Size = 10
    end
    object qrboleto_impressaoNUMERO_DOC: TWideStringField
      FieldName = 'NUMERO_DOC'
      Size = 25
    end
    object qrboleto_impressaoESPECIE_DOC: TWideStringField
      FieldName = 'ESPECIE_DOC'
      Size = 10
    end
    object qrboleto_impressaoACEITE: TWideStringField
      FieldName = 'ACEITE'
      Size = 10
    end
    object qrboleto_impressaoESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object qrboleto_impressaoQUANTIDADE: TWideStringField
      FieldName = 'QUANTIDADE'
      Size = 15
    end
    object qrboleto_impressaoVALOR: TWideStringField
      FieldName = 'VALOR'
      Size = 15
    end
    object qrboleto_impressaoVALOR_DOC: TWideStringField
      FieldName = 'VALOR_DOC'
      Size = 15
    end
    object qrboleto_impressaoDESCONTO: TWideStringField
      FieldName = 'DESCONTO'
      Size = 15
    end
    object qrboleto_impressaoOUTRAS: TWideStringField
      FieldName = 'OUTRAS'
      Size = 15
    end
    object qrboleto_impressaoMORA: TWideStringField
      FieldName = 'MORA'
      Size = 15
    end
    object qrboleto_impressaoOUTROS: TWideStringField
      FieldName = 'OUTROS'
      Size = 15
    end
    object qrboleto_impressaoVALOR_COBRADO: TWideStringField
      FieldName = 'VALOR_COBRADO'
      Size = 15
    end
    object qrboleto_impressaoSACADO: TWideStringField
      FieldName = 'SACADO'
      Size = 100
    end
    object qrboleto_impressaoSACADO_ENDER: TWideStringField
      FieldName = 'SACADO_ENDER'
      Size = 100
    end
    object qrboleto_impressaoINST_1: TWideStringField
      FieldName = 'INST_1'
      Size = 80
    end
    object qrboleto_impressaoINST_2: TWideStringField
      FieldName = 'INST_2'
      Size = 80
    end
    object qrboleto_impressaoINST_3: TWideStringField
      FieldName = 'INST_3'
      Size = 80
    end
    object qrboleto_impressaoINST_4: TWideStringField
      FieldName = 'INST_4'
      Size = 80
    end
    object qrboleto_impressaoINST_5: TWideStringField
      FieldName = 'INST_5'
      Size = 80
    end
    object qrboleto_impressaoINST_6: TWideStringField
      FieldName = 'INST_6'
      Size = 80
    end
  end
  object qrconhecimento: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000068')
    Params = <>
    Left = 802
    Top = 224
    object qrconhecimentoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconhecimentoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrconhecimentoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrconhecimentoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrconhecimentoCODREMETENTE: TWideStringField
      FieldName = 'CODREMETENTE'
      Size = 6
    end
    object qrconhecimentoCODDESTINATARIO: TWideStringField
      FieldName = 'CODDESTINATARIO'
      Size = 6
    end
    object qrconhecimentoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrconhecimentoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrconhecimentoCONSIG_NOME: TWideStringField
      FieldName = 'CONSIG_NOME'
      Size = 60
    end
    object qrconhecimentoCONSIG_ENDERECO: TWideStringField
      FieldName = 'CONSIG_ENDERECO'
      Size = 60
    end
    object qrconhecimentoCONSIG_CIDADE: TWideStringField
      FieldName = 'CONSIG_CIDADE'
      Size = 30
    end
    object qrconhecimentoCONSIG_UF: TWideStringField
      FieldName = 'CONSIG_UF'
      Size = 2
    end
    object qrconhecimentoCONSIG_TIPO: TWideStringField
      FieldName = 'CONSIG_TIPO'
      Size = 10
    end
    object qrconhecimentoCONSIG_CALCULADO: TWideStringField
      FieldName = 'CONSIG_CALCULADO'
      Size = 30
    end
    object qrconhecimentoREDE_NOME: TWideStringField
      FieldName = 'REDE_NOME'
      Size = 60
    end
    object qrconhecimentoREDE_ENDERECO: TWideStringField
      FieldName = 'REDE_ENDERECO'
      Size = 60
    end
    object qrconhecimentoREDE_CIDADE: TWideStringField
      FieldName = 'REDE_CIDADE'
      Size = 30
    end
    object qrconhecimentoREDE_UF: TWideStringField
      FieldName = 'REDE_UF'
      Size = 2
    end
    object qrconhecimentoREDE_TIPO: TWideStringField
      FieldName = 'REDE_TIPO'
      Size = 10
    end
    object qrconhecimentoREDE_CNPJ: TWideStringField
      FieldName = 'REDE_CNPJ'
      Size = 25
    end
    object qrconhecimentoCARGA_NATUREZA: TWideStringField
      FieldName = 'CARGA_NATUREZA'
      Size = 30
    end
    object qrconhecimentoCARGA_NF: TWideStringField
      FieldName = 'CARGA_NF'
      Size = 6
    end
    object qrconhecimentoCARGA_VALOR: TFloatField
      FieldName = 'CARGA_VALOR'
    end
    object qrconhecimentoCARGA_QTDE: TFloatField
      FieldName = 'CARGA_QTDE'
    end
    object qrconhecimentoCARGA_VOL_QTDE: TFloatField
      FieldName = 'CARGA_VOL_QTDE'
    end
    object qrconhecimentoCARGA_VOL_ESPECIE: TWideStringField
      FieldName = 'CARGA_VOL_ESPECIE'
      Size = 25
    end
    object qrconhecimentoCARGA_MARCA1: TWideStringField
      FieldName = 'CARGA_MARCA1'
      Size = 30
    end
    object qrconhecimentoCARGA_MARCA2: TWideStringField
      FieldName = 'CARGA_MARCA2'
      Size = 30
    end
    object qrconhecimentoFRETE_PESO: TFloatField
      FieldName = 'FRETE_PESO'
    end
    object qrconhecimentoFRETE_VALOR: TFloatField
      FieldName = 'FRETE_VALOR'
    end
    object qrconhecimentoFRETE_ADICIONAL: TFloatField
      FieldName = 'FRETE_ADICIONAL'
    end
    object qrconhecimentoFRETE_SEGURO: TFloatField
      FieldName = 'FRETE_SEGURO'
    end
    object qrconhecimentoFRETE_DESPACHO: TFloatField
      FieldName = 'FRETE_DESPACHO'
    end
    object qrconhecimentoFRETE_OUTROS: TFloatField
      FieldName = 'FRETE_OUTROS'
    end
    object qrconhecimentoFRETE_TOTAL: TFloatField
      FieldName = 'FRETE_TOTAL'
    end
    object qrconhecimentoFRETE_TARIFA: TFloatField
      FieldName = 'FRETE_TARIFA'
    end
    object qrconhecimentoFRETE_BASE: TFloatField
      FieldName = 'FRETE_BASE'
    end
    object qrconhecimentoFRETE_ALIQUOTA: TIntegerField
      FieldName = 'FRETE_ALIQUOTA'
    end
    object qrconhecimentoFRETE_ICMS: TFloatField
      FieldName = 'FRETE_ICMS'
    end
    object qrconhecimentoFRETE_PRONT: TWideStringField
      FieldName = 'FRETE_PRONT'
      Size = 30
    end
    object qrconhecimentoFRETE_APOLICE: TWideStringField
      FieldName = 'FRETE_APOLICE'
      Size = 30
    end
    object qrconhecimentoFRETE_CIA: TWideStringField
      FieldName = 'FRETE_CIA'
      Size = 40
    end
    object qrconhecimentoFRETE_CARREGAR: TWideStringField
      FieldName = 'FRETE_CARREGAR'
      Size = 60
    end
    object qrconhecimentoFRETE_DESCARREGAR: TWideStringField
      FieldName = 'FRETE_DESCARREGAR'
      Size = 60
    end
    object qrconhecimentoCODVEICULO: TWideStringField
      FieldName = 'CODVEICULO'
      Size = 6
    end
    object qrconhecimentoCODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 6
    end
    object qrconhecimentoOBS: TBlobField
      FieldName = 'OBS'
    end
    object qrconhecimentoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrconhecimentoLOCAL: TWideStringField
      FieldName = 'LOCAL'
      Size = 40
    end
    object qrconhecimentoMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
    object qrconhecimentoVEICULO_LOCAL: TWideStringField
      FieldName = 'VEICULO_LOCAL'
      Size = 30
    end
    object qrconhecimentoVEICULO_UF: TWideStringField
      FieldName = 'VEICULO_UF'
      Size = 2
    end
    object qrconhecimentoMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qrconhecimentoESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object qrconhecimentoSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qrconhecimentoMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 10
    end
    object qrconhecimentoESPECIE_NF: TWideStringField
      FieldName = 'ESPECIE_NF'
      Size = 10
    end
    object qrconhecimentoSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 10
    end
    object qrconhecimentoDATA_NF: TDateField
      FieldName = 'DATA_NF'
    end
    object qrconhecimentoVALOR_CONHECIMENTO: TFloatField
      FieldName = 'VALOR_CONHECIMENTO'
    end
    object qrconhecimentoINF1: TWideStringField
      FieldName = 'INF1'
      Size = 80
    end
    object qrconhecimentoINF2: TWideStringField
      FieldName = 'INF2'
      Size = 80
    end
    object qrconhecimentoINF3: TWideStringField
      FieldName = 'INF3'
      Size = 80
    end
    object qrconhecimentoINF4: TWideStringField
      FieldName = 'INF4'
      Size = 80
    end
    object qrconhecimentoINF5: TWideStringField
      FieldName = 'INF5'
      Size = 80
    end
    object qrconhecimentoCARGA_NATUREZA2: TWideStringField
      FieldName = 'CARGA_NATUREZA2'
      Size = 30
    end
    object qrconhecimentoCARGA_NF2: TWideStringField
      FieldName = 'CARGA_NF2'
      Size = 6
    end
    object qrconhecimentoCARGA_VALOR2: TFloatField
      FieldName = 'CARGA_VALOR2'
    end
    object qrconhecimentoCARGA_QTDE2: TFloatField
      FieldName = 'CARGA_QTDE2'
    end
    object qrconhecimentoCARGA_VOL_QTDE2: TFloatField
      FieldName = 'CARGA_VOL_QTDE2'
    end
    object qrconhecimentoCARGA_VOL_ESPECIE2: TWideStringField
      FieldName = 'CARGA_VOL_ESPECIE2'
      Size = 25
    end
    object qrconhecimentoMODELO_NF2: TWideStringField
      FieldName = 'MODELO_NF2'
      Size = 10
    end
    object qrconhecimentoESPECIE_NF2: TWideStringField
      FieldName = 'ESPECIE_NF2'
      Size = 10
    end
    object qrconhecimentoSERIE_NF2: TWideStringField
      FieldName = 'SERIE_NF2'
      Size = 10
    end
    object qrconhecimentoDATA_NF2: TDateField
      FieldName = 'DATA_NF2'
    end
    object qrconhecimentoVALOR_CONHECIMENTO2: TFloatField
      FieldName = 'VALOR_CONHECIMENTO2'
    end
    object qrconhecimentoCHAVE_ACESSO: TWideStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 60
    end
    object qrconhecimentoCHAVE_ACESSO2: TWideStringField
      FieldName = 'CHAVE_ACESSO2'
      Size = 60
    end
    object qrconhecimentoTESTE: TDateField
      FieldName = 'TESTE'
    end
    object qrconhecimentoCTE_SITUACAO: TIntegerField
      FieldName = 'CTE_SITUACAO'
    end
    object qrconhecimentoORIGEM_CMUNINI: TWideStringField
      FieldName = 'ORIGEM_CMUNINI'
      Size = 10
    end
    object qrconhecimentoORIGEM_XMUNINI: TWideStringField
      FieldName = 'ORIGEM_XMUNINI'
      Size = 40
    end
    object qrconhecimentoORIGEM_UFINI: TWideStringField
      FieldName = 'ORIGEM_UFINI'
      Size = 2
    end
    object qrconhecimentoCMUNFIM: TWideStringField
      FieldName = 'CMUNFIM'
      Size = 10
    end
    object qrconhecimentoXMUNFIM: TWideStringField
      FieldName = 'XMUNFIM'
      Size = 40
    end
    object qrconhecimentoUFFIM: TWideStringField
      FieldName = 'UFFIM'
      Size = 2
    end
    object qrconhecimentoMODAL: TWideStringField
      FieldName = 'MODAL'
      Size = 30
    end
    object qrconhecimentoTIPO_SERVICO: TWideStringField
      FieldName = 'TIPO_SERVICO'
      Size = 30
    end
    object qrconhecimentoFINALIDADE_EMISSAO: TWideStringField
      FieldName = 'FINALIDADE_EMISSAO'
      Size = 30
    end
    object qrconhecimentoFORMA_EMISSAO: TWideStringField
      FieldName = 'FORMA_EMISSAO'
      Size = 30
    end
    object qrconhecimentoFORMA_PAGAMENTO: TWideStringField
      FieldName = 'FORMA_PAGAMENTO'
      Size = 30
    end
    object qrconhecimentoFORMA_IMPRESSAO_DACTE: TWideStringField
      FieldName = 'FORMA_IMPRESSAO_DACTE'
      Size = 30
    end
    object qrconhecimentoCHAVE_ACEESSO_REFERENCIADO: TWideStringField
      FieldName = 'CHAVE_ACEESSO_REFERENCIADO'
      Size = 60
    end
    object qrconhecimentoCARAC_AD_TRANSP: TWideStringField
      FieldName = 'CARAC_AD_TRANSP'
      Size = 30
    end
    object qrconhecimentoCARAC_AD_SERV: TWideStringField
      FieldName = 'CARAC_AD_SERV'
      Size = 30
    end
    object qrconhecimentoFUNC_EMISSOR: TWideStringField
      FieldName = 'FUNC_EMISSOR'
      Size = 30
    end
    object qrconhecimentoMUN_ORIGEM_CAL: TWideStringField
      FieldName = 'MUN_ORIGEM_CAL'
      Size = 40
    end
    object qrconhecimentoMUN_DEST_CAL: TWideStringField
      FieldName = 'MUN_DEST_CAL'
      Size = 40
    end
    object qrconhecimentoCOD_ROTA_ENTREGA: TWideStringField
      FieldName = 'COD_ROTA_ENTREGA'
      Size = 60
    end
    object qrconhecimentoROTA_ENTREGA_SIGLA_ORIGEM: TWideStringField
      FieldName = 'ROTA_ENTREGA_SIGLA_ORIGEM'
      Size = 40
    end
    object qrconhecimentoROTA_ENTREGA_SIGLA_DEST: TWideStringField
      FieldName = 'ROTA_ENTREGA_SIGLA_DEST'
      Size = 40
    end
    object qrconhecimentoDETALHES_RETIRADA: TWideStringField
      FieldName = 'DETALHES_RETIRADA'
      Size = 200
    end
    object qrconhecimentoCOD_EMITENTE: TWideStringField
      FieldName = 'COD_EMITENTE'
      Size = 6
    end
    object qrconhecimentoCOD_TOMADOR: TWideStringField
      FieldName = 'COD_TOMADOR'
      Size = 6
    end
    object qrconhecimentoCOD_REMETENTE: TWideStringField
      FieldName = 'COD_REMETENTE'
      Size = 6
    end
    object qrconhecimentoREMETENTE_TIPO: TWideStringField
      FieldName = 'REMETENTE_TIPO'
      Size = 60
    end
    object qrconhecimentoREMETENTE_INFORMACOES_NF: TWideStringField
      FieldName = 'REMETENTE_INFORMACOES_NF'
      Size = 30
    end
    object qrconhecimentoCOD_EXPEDIDOR: TWideStringField
      FieldName = 'COD_EXPEDIDOR'
      Size = 6
    end
    object qrconhecimentoEXPEDIDOR_TIPO: TWideStringField
      FieldName = 'EXPEDIDOR_TIPO'
      Size = 30
    end
    object qrconhecimentoPREV_ENTREGA_DATA_INI: TDateField
      FieldName = 'PREV_ENTREGA_DATA_INI'
    end
    object qrconhecimentoPREV_ENTREGA_DATA_FIM: TDateField
      FieldName = 'PREV_ENTREGA_DATA_FIM'
    end
    object qrconhecimentoPREV_ENTREGA_DATA_TIPO: TWideStringField
      FieldName = 'PREV_ENTREGA_DATA_TIPO'
      Size = 30
    end
    object qrconhecimentoPREV_ENTREGA_HORA_TIPO: TWideStringField
      FieldName = 'PREV_ENTREGA_HORA_TIPO'
      Size = 30
    end
    object qrconhecimentoPREV_ENTREGA_HORA_INI: TDateField
      FieldName = 'PREV_ENTREGA_HORA_INI'
    end
    object qrconhecimentoPREV_ENTREGA_HORA_FIM: TDateField
      FieldName = 'PREV_ENTREGA_HORA_FIM'
    end
    object qrconhecimentoCOD_RECEBEDOR: TWideStringField
      FieldName = 'COD_RECEBEDOR'
      Size = 6
    end
    object qrconhecimentoRECEBEDOR_TIPO: TWideStringField
      FieldName = 'RECEBEDOR_TIPO'
      Size = 30
    end
    object qrconhecimentoCOD_DESTINATARIO: TWideStringField
      FieldName = 'COD_DESTINATARIO'
      Size = 6
    end
    object qrconhecimentoDESTINATARIO_TIPO: TWideStringField
      FieldName = 'DESTINATARIO_TIPO'
      Size = 30
    end
    object qrconhecimentoCOD_ENTREGA_DIFERENTE: TWideStringField
      FieldName = 'COD_ENTREGA_DIFERENTE'
      Size = 6
    end
    object qrconhecimentoVTOTAL_SERVICO: TFloatField
      FieldName = 'VTOTAL_SERVICO'
    end
    object qrconhecimentoVL_ARECEBER: TFloatField
      FieldName = 'VL_ARECEBER'
    end
    object qrconhecimentoVL_TOT_IMPOSTOS: TFloatField
      FieldName = 'VL_TOT_IMPOSTOS'
    end
    object qrconhecimentoCOD_SIT_TRIBUT: TWideStringField
      FieldName = 'COD_SIT_TRIBUT'
      Size = 60
    end
    object qrconhecimentoINF_ADIC_INT_FISCO: TBlobField
      FieldName = 'INF_ADIC_INT_FISCO'
    end
    object qrconhecimentoVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object qrconhecimentoVL_ALIQ_ICMS: TFloatField
      FieldName = 'VL_ALIQ_ICMS'
    end
    object qrconhecimentoVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object qrconhecimentoVL_CRED_OUT_PRESU: TFloatField
      FieldName = 'VL_CRED_OUT_PRESU'
    end
    object qrconhecimentoVL_PERC_REDUCAP_BC: TFloatField
      FieldName = 'VL_PERC_REDUCAP_BC'
    end
    object qrconhecimentoVL_CARGA: TFloatField
      FieldName = 'VL_CARGA'
    end
    object qrconhecimentoPROD_PREDOMINANTE: TWideStringField
      FieldName = 'PROD_PREDOMINANTE'
      Size = 100
    end
    object qrconhecimentoOUT_CARACT_PROD: TWideStringField
      FieldName = 'OUT_CARACT_PROD'
      Size = 100
    end
    object qrconhecimentoRESP_SEGURO: TWideStringField
      FieldName = 'RESP_SEGURO'
      Size = 30
    end
    object qrconhecimentoNOME_SEGURADORA: TWideStringField
      FieldName = 'NOME_SEGURADORA'
      Size = 200
    end
    object qrconhecimentoNUMERO_APOLICE: TWideStringField
      FieldName = 'NUMERO_APOLICE'
      Size = 200
    end
    object qrconhecimentoNUMERO_AVERBACAO: TWideStringField
      FieldName = 'NUMERO_AVERBACAO'
      Size = 200
    end
    object qrconhecimentoVL_MERC_AVERB: TFloatField
      FieldName = 'VL_MERC_AVERB'
    end
    object qrconhecimentoNUMERO_FAT: TWideStringField
      FieldName = 'NUMERO_FAT'
      Size = 30
    end
    object qrconhecimentoVL_ORIGINAL: TFloatField
      FieldName = 'VL_ORIGINAL'
    end
    object qrconhecimentoVL_DESCONTO: TFloatField
      FieldName = 'VL_DESCONTO'
    end
    object qrconhecimentoVL_LIQUIDO: TFloatField
      FieldName = 'VL_LIQUIDO'
    end
    object qrconhecimentoRNTRC: TWideStringField
      FieldName = 'RNTRC'
      Size = 60
    end
    object qrconhecimentoIND_LOTACAO: TWideStringField
      FieldName = 'IND_LOTACAO'
      Size = 3
    end
    object qrconhecimentoDATA_PREV_ENTREGA: TDateField
      FieldName = 'DATA_PREV_ENTREGA'
    end
    object qrconhecimentoCIOT: TWideStringField
      FieldName = 'CIOT'
      Size = 60
    end
    object qrconhecimentoOBS_GERAIS: TBlobField
      FieldName = 'OBS_GERAIS'
    end
    object qrconhecimentoVERSAO_XML: TWideStringField
      FieldName = 'VERSAO_XML'
      Size = 10
    end
    object qrconhecimentoUF_EMISSAO: TWideStringField
      FieldName = 'UF_EMISSAO'
      Size = 2
    end
    object qrconhecimentoXMUN_EMISSAO: TWideStringField
      FieldName = 'XMUN_EMISSAO'
      Size = 40
    end
    object qrconhecimentoEMISSAO_CMUNINI: TWideStringField
      FieldName = 'EMISSAO_CMUNINI'
      Size = 10
    end
    object qrconhecimentoTOMADOR_TIPO: TWideStringField
      FieldName = 'TOMADOR_TIPO'
      Size = 30
    end
    object qrconhecimentoTOMADOR_CNPJ: TWideStringField
      FieldName = 'TOMADOR_CNPJ'
      Size = 30
    end
    object qrconhecimentoTOMADOR_IE: TWideStringField
      FieldName = 'TOMADOR_IE'
      Size = 30
    end
    object qrconhecimentoTOMADOR_NOME: TWideStringField
      FieldName = 'TOMADOR_NOME'
      Size = 200
    end
    object qrconhecimentoTOMADOR_FANT: TWideStringField
      FieldName = 'TOMADOR_FANT'
      Size = 200
    end
    object qrconhecimentoTOMADOR_ENDERECO: TWideStringField
      FieldName = 'TOMADOR_ENDERECO'
      Size = 200
    end
    object qrconhecimentoTOMADOR_NUMERO: TWideStringField
      FieldName = 'TOMADOR_NUMERO'
    end
    object qrconhecimentoTOMADOR_COMPLEM: TWideStringField
      FieldName = 'TOMADOR_COMPLEM'
      Size = 30
    end
    object qrconhecimentoTOMADOR_BAIRRO: TWideStringField
      FieldName = 'TOMADOR_BAIRRO'
      Size = 100
    end
    object qrconhecimentoTOMADOR_CEP: TWideStringField
      FieldName = 'TOMADOR_CEP'
      Size = 30
    end
    object qrconhecimentoTOMADOR_PAIS: TWideStringField
      FieldName = 'TOMADOR_PAIS'
      Size = 50
    end
    object qrconhecimentoTOMADOR_UF: TWideStringField
      FieldName = 'TOMADOR_UF'
      Size = 2
    end
    object qrconhecimentoTOMADOR_MUNICIPIO: TWideStringField
      FieldName = 'TOMADOR_MUNICIPIO'
      Size = 80
    end
    object qrconhecimentoTOMADOR_TELEFONE: TWideStringField
      FieldName = 'TOMADOR_TELEFONE'
      Size = 30
    end
    object qrconhecimentoDIF_ENDERECO: TWideStringField
      FieldName = 'DIF_ENDERECO'
      Size = 200
    end
    object qrconhecimentoPAIS: TWideStringField
      FieldName = 'PAIS'
      Size = 30
    end
    object qrconhecimentoCOD_PAIS: TWideStringField
      FieldName = 'COD_PAIS'
      Size = 10
    end
    object qrconhecimentoREM_BAIRRO: TWideStringField
      FieldName = 'REM_BAIRRO'
      Size = 100
    end
    object qrconhecimentoCTCHAVE: TIntegerField
      FieldName = 'CTCHAVE'
    end
    object qrconhecimentoTOMADOR_QUEM: TWideStringField
      FieldName = 'TOMADOR_QUEM'
      Size = 15
    end
    object qrconhecimentoremetente: TStringField
      DisplayLabel = 'REMETENTE'
      DisplayWidth = 32
      FieldKind = fkLookup
      FieldName = 'remetente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'COD_REMETENTE'
      Size = 60
      Lookup = True
    end
    object qrconhecimentodestinatario: TStringField
      DisplayLabel = 'DESTINAT'#193'RIO'
      DisplayWidth = 37
      FieldKind = fkLookup
      FieldName = 'destinatario'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'COD_DESTINATARIO'
      Size = 60
      Lookup = True
    end
    object qrconhecimentonatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrconhecimentotransportador: TStringField
      FieldKind = fkLookup
      FieldName = 'transportador'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codtransportador'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qrconhecimentoveiculo: TStringField
      FieldKind = fkLookup
      FieldName = 'veiculo'
      LookupDataSet = qrveiculo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'codveiculo'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrconhecimentofilial: TStringField
      FieldKind = fkLookup
      FieldName = 'filial'
      LookupDataSet = qrFilial
      LookupKeyFields = 'codigo'
      LookupResultField = 'FILIAL'
      KeyFields = 'codfilial'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrconhecimentodest_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'endereco'
      KeyFields = 'COD_DESTINATARIO'
      Visible = False
      Size = 60
      Lookup = True
    end
    object qrconhecimentodest_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'COD_DESTINATARIO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrconhecimentodest_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'cep'
      KeyFields = 'COD_DESTINATARIO'
      Visible = False
      Size = 15
      Lookup = True
    end
    object qrconhecimentodest_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'uf'
      KeyFields = 'COD_DESTINATARIO'
      Visible = False
      Size = 2
      Lookup = True
    end
    object qrconhecimentodest_cnpj: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_cnpj'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'COD_DESTINATARIO'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentodest_ie: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_ie'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'COD_DESTINATARIO'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentorem_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'endereco'
      KeyFields = 'COD_REMETENTE'
      Visible = False
      Size = 60
      Lookup = True
    end
    object qrconhecimentorem_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'COD_REMETENTE'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrconhecimentorem_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'cep'
      KeyFields = 'COD_REMETENTE'
      Visible = False
      Size = 15
      Lookup = True
    end
    object qrconhecimentorem_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'uf'
      KeyFields = 'COD_REMETENTE'
      Visible = False
      Size = 2
      Lookup = True
    end
    object qrconhecimentorem_cnpj: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_cnpj'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'COD_REMETENTE'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentorem_ie: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_ie'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'COD_REMETENTE'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentoveiculo_placa: TStringField
      FieldKind = fkLookup
      FieldName = 'veiculo_placa'
      LookupDataSet = qrveiculo
      LookupKeyFields = 'codigo'
      LookupResultField = 'PLACA'
      KeyFields = 'codveiculo'
      Visible = False
      Size = 15
      Lookup = True
    end
    object qrconhecimentotransp_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_rg'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codtransportador'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentotransp_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cpf'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codtransportador'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentoemi_cnpj: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_cnpj'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CNPJ'
      KeyFields = 'CODFILIAL'
      Lookup = True
    end
    object qrconhecimentoemi_nome: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_nome'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FILIAL'
      KeyFields = 'CODFILIAL'
      Size = 200
      Lookup = True
    end
    object qrconhecimentoemi_ie: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_ie'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'IE'
      KeyFields = 'CODFILIAL'
      Size = 30
      Lookup = True
    end
    object qrconhecimentoemi_fant: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_fant'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FILIAL'
      KeyFields = 'CODFILIAL'
      Size = 200
      Lookup = True
    end
    object qrconhecimentoemi_end: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_end'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'CODFILIAL'
      Size = 200
      Lookup = True
    end
    object qrconhecimentoemi_compl: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_compl'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMPLEMENTO'
      KeyFields = 'CODFILIAL'
      Size = 200
      Lookup = True
    end
    object qrconhecimentoemi_numero: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_numero'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERO'
      KeyFields = 'CODFILIAL'
      Lookup = True
    end
    object qrconhecimentoemi_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_bairro'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'CODFILIAL'
      Size = 100
      Lookup = True
    end
    object qrconhecimentoemi_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_cep'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CEP'
      KeyFields = 'CODFILIAL'
      Lookup = True
    end
    object qrconhecimentoemi_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_uf'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'CODFILIAL'
      Size = 2
      Lookup = True
    end
    object qrconhecimentoemi_municipio: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_municipio'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODFILIAL'
      Size = 100
      Lookup = True
    end
    object qrconhecimentoemi_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_telefone'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TELEFONE'
      KeyFields = 'CODFILIAL'
      Lookup = True
    end
    object qrconhecimentotoma_cnpj: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_cnpj'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'COD_TOMADOR'
      Size = 30
      Lookup = True
    end
    object qrconhecimentotoma_nome: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_nome'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_TOMADOR'
      Size = 200
      Lookup = True
    end
    object qrconhecimentoemi_cod_pais: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_cod_pais'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COD_PAIS'
      KeyFields = 'CODFILIAL'
      Lookup = True
    end
    object qrconhecimentoemi_pais: TStringField
      FieldKind = fkLookup
      FieldName = 'emi_pais'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PAIS'
      KeyFields = 'CODFILIAL'
      Size = 50
      Lookup = True
    end
    object qrconhecimentoexp_nome: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_nome'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_EXPEDIDOR'
      Size = 200
      Lookup = True
    end
    object qrconhecimentoexp_cnpj: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_cnpj'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'COD_EXPEDIDOR'
      Size = 30
      Lookup = True
    end
    object qrconhecimentoexp_ie: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_ie'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RG'
      KeyFields = 'COD_EXPEDIDOR'
      Lookup = True
    end
    object qrconhecimentoexp_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'COD_EXPEDIDOR'
      Size = 200
      Lookup = True
    end
    object qrconhecimentoexp_numero: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_numero'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERO'
      KeyFields = 'COD_EXPEDIDOR'
      Size = 10
      Lookup = True
    end
    object qrconhecimentoexp_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'COD_EXPEDIDOR'
      Size = 2
      Lookup = True
    end
    object qrconhecimentoexp_complemento: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_complemento'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMPLEMENTO'
      KeyFields = 'COD_EXPEDIDOR'
      Size = 100
      Lookup = True
    end
    object qrconhecimentoexp_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'COD_EXPEDIDOR'
      Size = 80
      Lookup = True
    end
    object qrconhecimentoexp_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CEP'
      KeyFields = 'COD_EXPEDIDOR'
      Size = 30
      Lookup = True
    end
    object qrconhecimentoexp_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'COD_EXPEDIDOR'
      Size = 30
      Lookup = True
    end
    object qrconhecimentoexp_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'exp_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'COD_EXPEDIDOR'
      Size = 100
      Lookup = True
    end
    object qrconhecimentoreceb_cnpj: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_cnpj'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'COD_RECEBEDOR'
      Lookup = True
    end
    object qrconhecimentoreceb_ie: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_ie'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RG'
      KeyFields = 'COD_RECEBEDOR'
      Lookup = True
    end
    object qrconhecimentoreceb_nome: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_nome'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_RECEBEDOR'
      Size = 150
      Lookup = True
    end
    object qrconhecimentoreceb_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'COD_RECEBEDOR'
      Size = 200
      Lookup = True
    end
    object qrconhecimentoreceb_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'COD_RECEBEDOR'
      Size = 100
      Lookup = True
    end
    object qrconhecimentoreceb_numero: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_numero'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERO'
      KeyFields = 'COD_RECEBEDOR'
      Size = 50
      Lookup = True
    end
    object qrconhecimentoreceb_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CEP'
      KeyFields = 'COD_RECEBEDOR'
      Lookup = True
    end
    object qrconhecimentoreceb_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'COD_RECEBEDOR'
      Size = 30
      Lookup = True
    end
    object qrconhecimentoreceb_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'COD_RECEBEDOR'
      Size = 2
      Lookup = True
    end
    object qrconhecimentoreceb_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'COD_RECEBEDOR'
      Size = 150
      Lookup = True
    end
    object qrconhecimentoreceb_complemento: TStringField
      FieldKind = fkLookup
      FieldName = 'receb_complemento'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMPLEMENTO'
      KeyFields = 'COD_RECEBEDOR'
      Size = 100
      Lookup = True
    end
    object qrconhecimentorem_numero: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_numero'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERO'
      KeyFields = 'COD_REMETENTE'
      Lookup = True
    end
    object qrconhecimentorem_fantasia: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_fantasia'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'APELIDO'
      KeyFields = 'COD_REMETENTE'
      Size = 200
      Lookup = True
    end
    object qrconhecimentorem_complemento: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_complemento'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMPLEMENTO'
      KeyFields = 'COD_REMETENTE'
      Size = 150
      Lookup = True
    end
    object qrconhecimentorem_nome: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_nome'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_REMETENTE'
      Size = 200
      Lookup = True
    end
    object qrconhecimentorem_apelido: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_apelido'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'APELIDO'
      KeyFields = 'COD_REMETENTE'
      Size = 200
      Lookup = True
    end
    object qrconhecimentorem_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'COD_REMETENTE'
      Lookup = True
    end
    object qrconhecimentodest_complemento: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_complemento'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMPLEMENTO'
      KeyFields = 'COD_DESTINATARIO'
      Size = 150
      Lookup = True
    end
    object qrconhecimentodest_apelido: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_apelido'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'APELIDO'
      KeyFields = 'COD_DESTINATARIO'
      Size = 200
      Lookup = True
    end
    object qrconhecimentodest_nome: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_nome'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_DESTINATARIO'
      Size = 200
      Lookup = True
    end
    object qrconhecimentodest_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'COD_DESTINATARIO'
      Size = 100
      Lookup = True
    end
    object qrconhecimentodif_numero: TStringField
      FieldKind = fkLookup
      FieldName = 'dif_numero'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERO'
      KeyFields = 'COD_ENTREGA_DIFERENTE'
      Lookup = True
    end
    object qrconhecimentodif_complemento: TStringField
      FieldKind = fkLookup
      FieldName = 'dif_complemento'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMPLEMENTO'
      KeyFields = 'COD_ENTREGA_DIFERENTE'
      Size = 100
      Lookup = True
    end
    object qrconhecimentodif_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'dif_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CEP'
      KeyFields = 'COD_ENTREGA_DIFERENTE'
      Lookup = True
    end
    object qrconhecimentodif_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'dif_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'COD_ENTREGA_DIFERENTE'
      Size = 100
      Lookup = True
    end
    object qrconhecimentodif_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'dif_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'COD_ENTREGA_DIFERENTE'
      Size = 2
      Lookup = True
    end
    object qrconhecimentodif_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'dif_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'COD_ENTREGA_DIFERENTE'
      Size = 100
      Lookup = True
    end
    object qrconhecimentotoma_ie: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_ie'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RG'
      KeyFields = 'COD_TOMADOR'
      Size = 30
      Lookup = True
    end
    object qrconhecimentotoma_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'COD_TOMADOR'
      Size = 150
      Lookup = True
    end
    object qrconhecimentotoma_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CEP'
      KeyFields = 'COD_TOMADOR'
      Size = 30
      Lookup = True
    end
    object qrconhecimentotoma_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'uF'
      KeyFields = 'COD_TOMADOR'
      Size = 2
      Lookup = True
    end
    object qrconhecimentotoma_numero: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_numero'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERO'
      KeyFields = 'COD_TOMADOR'
      Lookup = True
    end
    object qrconhecimentotoma_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'COD_TOMADOR'
      Size = 30
      Lookup = True
    end
    object qrconhecimentotoma_complemento: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_complemento'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMPLEMENTO'
      KeyFields = 'COD_TOMADOR'
      Size = 100
      Lookup = True
    end
    object qrconhecimentotoma_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'COD_TOMADOR'
      Size = 100
      Lookup = True
    end
    object qrconhecimentotoma_fantasia: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_fantasia'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'APELIDO'
      KeyFields = 'COD_TOMADOR'
      Size = 200
      Lookup = True
    end
    object qrconhecimentotoma_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'toma_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'COD_TOMADOR'
      Size = 100
      Lookup = True
    end
    object qrconhecimentodest_numero: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_numero'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERO'
      KeyFields = 'COD_DESTINATARIO'
      Size = 10
      Lookup = True
    end
    object qrconhecimentodif_endereco2: TStringField
      FieldKind = fkLookup
      FieldName = 'dif_endereco2'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'COD_ENTREGA_DIFERENTE'
      Size = 200
      Lookup = True
    end
    object qrconhecimentorem_bairro2: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_bairro2'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'COD_REMETENTE'
      Size = 100
      Lookup = True
    end
    object qrconhecimentodest_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'COD_DESTINATARIO'
      Lookup = True
    end
    object qrconhecimentodif_cnpj: TStringField
      FieldKind = fkLookup
      FieldName = 'dif_cnpj'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'COD_ENTREGA_DIFERENTE'
      Size = 30
      Lookup = True
    end
    object qrconhecimentodif_ie: TStringField
      FieldKind = fkLookup
      FieldName = 'dif_ie'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RG'
      KeyFields = 'COD_ENTREGA_DIFERENTE'
      Size = 30
      Lookup = True
    end
    object qrconhecimentodif_nome: TStringField
      FieldKind = fkLookup
      FieldName = 'dif_nome'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_ENTREGA_DIFERENTE'
      Size = 200
      Lookup = True
    end
    object qrconhecimentoLOC_ENTREGA_DIF_END_DEST: TWideStringField
      FieldName = 'LOC_ENTREGA_DIF_END_DEST'
      Size = 3
    end
    object qrconhecimentoMODELO_NF3: TWideStringField
      FieldName = 'MODELO_NF3'
      Size = 40
    end
    object qrconhecimentoRECEBEDOR_RET_AFPE: TWideStringField
      FieldName = 'RECEBEDOR_RET_AFPE'
      Size = 3
    end
    object qrconhecimentoCTE_XML: TWideStringField
      FieldName = 'CTE_XML'
      Size = 200
    end
  end
  object qrplano2: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 212
    Top = 968
    object qrplano2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrplano2CONTA: TWideStringField
      FieldName = 'CONTA'
      Size = 40
    end
    object qrplano2TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrplano2ENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object qrplano2SAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object qrplano2SALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrplano2FILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrplano2CLASSIFICACAO: TWideStringField
      FieldName = 'CLASSIFICACAO'
      Size = 10
    end
    object qrplano2CODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrplano2NIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object qrguard: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000043'
      '')
    Params = <>
    Left = 310
    Top = 968
  end
  object qrconvenio: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000071')
    Params = <>
    Left = 16
    Top = 968
    object qrconvenioCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconvenioNOME: TWideStringField
      DisplayLabel = 'Nome do Conv'#234'nio'
      DisplayWidth = 55
      FieldName = 'NOME'
      Size = 80
    end
    object qrconvenioENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrconvenioBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrconvenioCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrconvenioUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrconvenioCEP: TWideStringField
      FieldName = 'CEP'
      Visible = False
      Size = 15
    end
    object qrconvenioTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrconvenioTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrconvenioCONTATO: TWideStringField
      FieldName = 'CONTATO'
      Visible = False
      Size = 50
    end
    object qrconvenioCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Visible = False
      Size = 50
    end
    object qrconvenioDIA_PGTO: TWideStringField
      FieldName = 'DIA_PGTO'
      Visible = False
      Size = 5
    end
    object qrconvenioCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 30
    end
    object qrconvenioIE: TWideStringField
      FieldName = 'IE'
      Visible = False
      Size = 30
    end
    object qrconvenioDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrconvenioFAX: TWideStringField
      FieldName = 'FAX'
      Visible = False
      Size = 25
    end
    object qrconvenioEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 80
    end
    object qrconvenioDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrconvenioDIA_FECHAMENTO: TIntegerField
      FieldName = 'DIA_FECHAMENTO'
      Visible = False
    end
    object qrconvenioDIA_PAGAMENTO: TIntegerField
      FieldName = 'DIA_PAGAMENTO'
      Visible = False
    end
    object qrconvenioLIMITE: TFloatField
      FieldName = 'LIMITE'
      Visible = False
    end
    object qrconvenioNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
  end
  object qrusuario_funcao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000067')
    Params = <>
    Left = 506
    Top = 900
    object qrusuario_funcaoCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrusuario_funcaoFUNCAO: TWideStringField
      FieldName = 'FUNCAO'
      Size = 30
    end
    object qrusuario_funcaoACESSO: TWideStringField
      FieldName = 'ACESSO'
      Size = 10
    end
  end
  object qrecf_item: TZQuery
    Connection = conexao_ecfserver
    SQL.Strings = (
      'select * from c000073')
    Params = <>
    Left = 604
    Top = 900
  end
  object qrecf_comando: TZQuery
    Connection = conexao_ecfserver
    SQL.Strings = (
      'select * from c000072')
    Params = <>
    Left = 702
    Top = 900
  end
  object conexao_ecfserver: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = ''
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 408
    Top = 120
  end
  object qrfiscal_cst: TZQuery
    Connection = Conexao
    BeforePost = qrfiscal_cstBeforePost
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000083')
    Params = <>
    Left = 16
    Top = 288
    object qrfiscal_cstCODIGO: TWideStringField
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Size = 3
    end
    object qrfiscal_cstSITUACAO: TWideStringField
      DisplayWidth = 90
      FieldName = 'SITUACAO'
      Size = 90
    end
  end
  object qrfiscal_modelo: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000082')
    Params = <>
    Left = 114
    Top = 288
    object qrfiscal_modeloCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_modeloMODELO: TWideStringField
      DisplayWidth = 100
      FieldName = 'MODELO'
      Size = 100
    end
    object qrfiscal_modeloSIGLA: TWideStringField
      DisplayWidth = 5
      FieldName = 'SIGLA'
      Size = 5
    end
    object qrfiscal_modeloSINTEGRA: TWideStringField
      DisplayWidth = 2
      FieldName = 'SINTEGRA'
      Size = 2
    end
    object qrfiscal_modeloTIPO_REGISTRO: TWideStringField
      DisplayWidth = 10
      FieldName = 'TIPO_REGISTRO'
      Size = 10
    end
    object qrfiscal_modeloSEQUENCIANF: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQUENCIANF'
    end
  end
  object qrfiscal_ecf: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000081')
    Params = <>
    Left = 604
    Top = 288
    object qrfiscal_ecfCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfiscal_ecfEQUIPAMENTO: TWideStringField
      DisplayWidth = 40
      FieldName = 'EQUIPAMENTO'
      Required = True
      Size = 40
    end
    object qrfiscal_ecfSERIE_EMPRESA: TWideStringField
      DisplayWidth = 3
      FieldName = 'SERIE_EMPRESA'
      Size = 3
    end
    object qrfiscal_ecfSERIE_EQUIPAMENTO: TWideStringField
      DisplayWidth = 20
      FieldName = 'SERIE_EQUIPAMENTO'
    end
    object qrfiscal_ecfALIQUOTA_ISS: TFloatField
      DisplayWidth = 10
      FieldName = 'ALIQUOTA_ISS'
    end
    object qrfiscal_ecfTIPO_ECF: TWideStringField
      DisplayWidth = 10
      FieldName = 'TIPO_ECF'
      Size = 10
    end
    object qrfiscal_ecfDATA_INICIO: TDateField
      FieldName = 'DATA_INICIO'
    end
    object qrfiscal_ecfBD_ECF: TWideStringField
      DisplayWidth = 200
      FieldName = 'BD_ECF'
      Size = 200
    end
  end
  object qrfiscal_classe: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000084')
    Params = <>
    Left = 702
    Top = 220
    object qrfiscal_classeCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfiscal_classeCLASSE: TWideStringField
      FieldName = 'CLASSE'
      Size = 100
    end
  end
  object qrfiscal_classe_pis: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000084a')
    Params = <>
    Left = 604
    Top = 220
    object qrfiscal_classe_pisCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_classe_pisCODCLASSE: TWideStringField
      FieldName = 'CODCLASSE'
      Size = 6
    end
    object qrfiscal_classe_pisALIQUOTA_PIS: TFloatField
      FieldName = 'ALIQUOTA_PIS'
    end
    object qrfiscal_classe_pisVALIDADE_PIS: TDateField
      FieldName = 'VALIDADE_PIS'
    end
  end
  object qrfiscal_classe_cofins: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000084b')
    Params = <>
    Left = 212
    Top = 288
    object qrfiscal_classe_cofinsCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_classe_cofinsCODCLASSE: TWideStringField
      FieldName = 'CODCLASSE'
      Size = 6
    end
    object qrfiscal_classe_cofinsALIQUOTA_COFINS: TFloatField
      FieldName = 'ALIQUOTA_COFINS'
    end
    object qrfiscal_classe_cofinsVALIDADE_COFINS: TDateField
      FieldName = 'VALIDADE_COFINS'
    end
  end
  object qrfiscal_classe_csll: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000084c')
    Params = <>
    Left = 702
    Top = 288
    object qrfiscal_classe_csllCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_classe_csllCODCLASSE: TWideStringField
      FieldName = 'CODCLASSE'
      Size = 6
    end
    object qrfiscal_classe_csllALIQUOTA_CSLL: TFloatField
      FieldName = 'ALIQUOTA_CSLL'
    end
    object qrfiscal_classe_csllVALIDADE_CSLL: TDateField
      FieldName = 'VALIDADE_CSLL'
    end
  end
  object qrfiscal_classe_irrf: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000084d')
    Params = <>
    Left = 506
    Top = 288
    object qrfiscal_classe_irrfCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_classe_irrfCODCLASSE: TWideStringField
      FieldName = 'CODCLASSE'
      Size = 6
    end
    object qrfiscal_classe_irrfALIQUOTA_IRRF: TFloatField
      FieldName = 'ALIQUOTA_IRRF'
    end
    object qrfiscal_classe_irrfVALIDADE_IRRF: TDateField
      FieldName = 'VALIDADE_IRRF'
    end
  end
  object qrnota: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000086')
    Params = <>
    Left = 310
    Top = 288
    object qrnotaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 15
    end
    object qrnotaTURBO: TIntegerField
      FieldName = 'TURBO'
    end
    object qrnotaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrnotaCODIGO_EMPRESA: TIntegerField
      FieldName = 'CODIGO_EMPRESA'
    end
    object qrnotaCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qrnotaNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qrnotaSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrnotaSUBSERIE: TWideStringField
      FieldName = 'SUBSERIE'
      Size = 2
    end
    object qrnotaESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 3
    end
    object qrnotaSINTEGRA: TWideStringField
      FieldName = 'SINTEGRA'
      Size = 2
    end
    object qrnotaMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrnotaS_TRIB: TWideStringField
      FieldName = 'S_TRIB'
      Size = 3
    end
    object qrnotaCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qrnotaCPF_CLIENTE: TWideStringField
      FieldName = 'CPF_CLIENTE'
      Size = 11
    end
    object qrnotaCNPJ_CLIENTE: TWideStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object qrnotaIE_CLIENTE: TWideStringField
      FieldName = 'IE_CLIENTE'
      Size = 14
    end
    object qrnotaUF_IE_CLIENTE: TWideStringField
      FieldName = 'UF_IE_CLIENTE'
      Size = 2
    end
    object qrnotaTIPO_VENDA: TWideStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qrnotaTIPO_FRETE: TWideStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object qrnotaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrnotaDATA_ESCRITURACAO: TDateTimeField
      FieldName = 'DATA_ESCRITURACAO'
    end
    object qrnotaCODIGO_CONTABIL: TIntegerField
      FieldName = 'CODIGO_CONTABIL'
    end
    object qrnotaDESDOBRAMENTO: TWideStringField
      FieldName = 'DESDOBRAMENTO'
      Size = 1
    end
    object qrnotaVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
    end
    object qrnotaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
    end
    object qrnotaALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrnotaCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 30
    end
    object qrnotaCONDICAO_PAGAMENTO: TWideStringField
      FieldName = 'CONDICAO_PAGAMENTO'
      Size = 1
    end
    object qrnotaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object qrnotaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrnotaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrnotaCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Size = 6
    end
    object qrnotaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qrnotaVALOR_ICMS_CREDITADO: TFloatField
      FieldName = 'VALOR_ICMS_CREDITADO'
    end
    object qrnotaVALOR_ICMS_ISENTAS: TFloatField
      FieldName = 'VALOR_ICMS_ISENTAS'
    end
    object qrnotaVALOR_ICMS_OUTRAS: TFloatField
      FieldName = 'VALOR_ICMS_OUTRAS'
    end
    object qrnotaALIQUOTA_IPI: TFloatField
      FieldName = 'ALIQUOTA_IPI'
    end
    object qrnotaBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object qrnotaVALOR_IPI_CREDITADO: TFloatField
      FieldName = 'VALOR_IPI_CREDITADO'
    end
    object qrnotaVALOR_IPI_CREDITADO50: TFloatField
      FieldName = 'VALOR_IPI_CREDITADO50'
    end
    object qrnotaVALOR_IPI_ISENTAS: TFloatField
      FieldName = 'VALOR_IPI_ISENTAS'
    end
    object qrnotaVALOR_IPI_OUTRAS: TFloatField
      FieldName = 'VALOR_IPI_OUTRAS'
    end
    object qrnotaVALOR_IPI_NAO_CREDITADO: TFloatField
      FieldName = 'VALOR_IPI_NAO_CREDITADO'
    end
    object qrnotaBASE_SUBSTITUICAO: TFloatField
      FieldName = 'BASE_SUBSTITUICAO'
    end
    object qrnotaVALOR_SUBSTITUICAO: TFloatField
      FieldName = 'VALOR_SUBSTITUICAO'
    end
    object qrnotaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object qrnotaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object qrnotaVALOR_DESPESAS: TFloatField
      FieldName = 'VALOR_DESPESAS'
    end
    object qrnotaALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
    end
    object qrnotaVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
    end
    object qrnotaOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrnotaCONTABIL: TIntegerField
      FieldName = 'CONTABIL'
    end
    object qrnotaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotaCODIGO_MINICIPIO: TIntegerField
      FieldName = 'CODIGO_MINICIPIO'
    end
    object qrnotaCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrnotaINSC_ESTADUAL: TWideStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 18
    end
    object qrnotaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrnotaCODIGO_PISCONFINS: TWideStringField
      FieldName = 'CODIGO_PISCONFINS'
      Size = 6
    end
    object qrnotaNOTA_CANCELADA: TWideStringField
      FieldName = 'NOTA_CANCELADA'
      Size = 1
    end
    object qrnotaOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
    end
    object qrnotaTRANSPORTE_NOME: TWideStringField
      FieldName = 'TRANSPORTE_NOME'
      Size = 40
    end
    object qrnotaTRANSPORTE_PLACA: TWideStringField
      FieldName = 'TRANSPORTE_PLACA'
      Size = 10
    end
    object qrnotaTRANSPORTE_UF: TWideStringField
      FieldName = 'TRANSPORTE_UF'
      Size = 2
    end
    object qrnotaTRANSPORTE_CNPJCPF: TWideStringField
      FieldName = 'TRANSPORTE_CNPJCPF'
      Size = 18
    end
    object qrnotaTRANSPORTE_ENDERECO: TWideStringField
      FieldName = 'TRANSPORTE_ENDERECO'
      Size = 50
    end
    object qrnotaTRANSPORTE_CIDADE: TWideStringField
      FieldName = 'TRANSPORTE_CIDADE'
      Size = 30
    end
    object qrnotaTRANSPORTE_MUNICIPIO_UF: TWideStringField
      FieldName = 'TRANSPORTE_MUNICIPIO_UF'
      Size = 2
    end
    object qrnotaTRANSPORTE_IE: TWideStringField
      FieldName = 'TRANSPORTE_IE'
    end
    object qrnotaTRANSPORTE_QUANTIDADE: TFloatField
      FieldName = 'TRANSPORTE_QUANTIDADE'
    end
    object qrnotaTRANSPORTE_MARCA: TWideStringField
      FieldName = 'TRANSPORTE_MARCA'
      Size = 10
    end
    object qrnotaTRANSPORTE_ESPECIE: TWideStringField
      FieldName = 'TRANSPORTE_ESPECIE'
    end
    object qrnotaTRANSPORTE_NUMERO: TWideStringField
      FieldName = 'TRANSPORTE_NUMERO'
    end
    object qrnotaTRANSPORTE_PESO_BRUTO: TFloatField
      FieldName = 'TRANSPORTE_PESO_BRUTO'
    end
    object qrnotaTRANSPORTE_PESO_LIQUIDO: TFloatField
      FieldName = 'TRANSPORTE_PESO_LIQUIDO'
    end
    object qrnotaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
    end
  end
  object qritem: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000085')
    Params = <>
    Left = 408
    Top = 288
    object qritemdatahora_ini: TDateField
      DisplayWidth = 10
      FieldName = 'datahora_ini'
    end
    object qritemquantidade: TFloatField
      DisplayWidth = 10
      FieldName = 'quantidade'
      DisplayFormat = '0.000'
    end
    object qritemsubtotal: TFloatField
      DisplayWidth = 10
      FieldName = 'subtotal'
      DisplayFormat = '0.00'
    end
    object qritemvalor_venda_bruta: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_venda_bruta'
      DisplayFormat = '0.00'
    end
    object qritemvalor_total_geral: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_total_geral'
      DisplayFormat = '0.00'
    end
    object qritemtotal: TFloatField
      DisplayWidth = 10
      FieldName = 'total'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritembase_calculo: TFloatField
      DisplayWidth = 10
      FieldName = 'base_calculo'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritemreducao_base_icms: TFloatField
      DisplayWidth = 10
      FieldName = 'reducao_base_icms'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritembase_icms_subst: TFloatField
      DisplayWidth = 10
      FieldName = 'base_icms_subst'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritemvalor_desconto: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_desconto'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritemoutras_ipi: TFloatField
      FieldName = 'outras_ipi'
      DisplayFormat = '0.00'
    end
    object qritemisentas_ipi: TFloatField
      FieldName = 'isentas_ipi'
      DisplayFormat = '0.00'
    end
    object qritemoutras_icms: TFloatField
      FieldName = 'outras_icms'
      DisplayFormat = '0.00'
    end
    object qritemisentas_icms: TFloatField
      FieldName = 'isentas_icms'
      DisplayFormat = '0.00'
    end
    object qritemipi_nao_creditado: TFloatField
      FieldName = 'ipi_nao_creditado'
      DisplayFormat = '0.00'
    end
    object qritemoutras_despesas: TFloatField
      FieldName = 'outras_despesas'
      DisplayFormat = '0.00'
    end
    object qritemDATA_EMISSAO: TWideStringField
      FieldName = 'DATA_EMISSAO'
      Size = 6
    end
    object qritemMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qritemTIPO_FRETE: TWideStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object qritemCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qritemFRACAO: TFloatField
      FieldName = 'FRACAO'
    end
    object qritemNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qritemCD_PRODUTO: TWideStringField
      FieldName = 'CD_PRODUTO'
      Size = 6
    end
    object qritemPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 40
    end
    object qritemCOD_PEDIDOS: TWideStringField
      FieldName = 'COD_PEDIDOS'
      Size = 10
    end
    object qritemNUM_ITEM: TWideStringField
      FieldName = 'NUM_ITEM'
      Size = 3
    end
    object qritemCL_FIS: TWideStringField
      FieldName = 'CL_FIS'
      Size = 4
    end
    object qritemAPR_UND: TWideStringField
      FieldName = 'APR_UND'
      Size = 2
    end
    object qritemALIQUOTA_IPI: TFloatField
      FieldName = 'ALIQUOTA_IPI'
    end
    object qritemALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qritemDATAHORA: TDateField
      FieldName = 'DATAHORA'
    end
    object qritemTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qritemBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object qritemVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qritemCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qritemFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qritemSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qritemNRO_SERIE_EQP: TWideStringField
      FieldName = 'NRO_SERIE_EQP'
    end
    object qritemNRO_ORDEM_EQP: TWideStringField
      FieldName = 'NRO_ORDEM_EQP'
      Size = 2
    end
    object qritemMODELO_DOC: TWideStringField
      FieldName = 'MODELO_DOC'
      Size = 50
    end
    object qritemS_TRIB: TWideStringField
      FieldName = 'S_TRIB'
      Size = 3
    end
    object qritemNRO_CONTADOR_INICIO: TWideStringField
      FieldName = 'NRO_CONTADOR_INICIO'
      Size = 10
    end
    object qritemNRO_CONTADOR_FIM: TWideStringField
      FieldName = 'NRO_CONTADOR_FIM'
      Size = 5
    end
    object qritemNRO_CONTADOR_Z: TWideStringField
      FieldName = 'NRO_CONTADOR_Z'
      Size = 10
    end
    object qritemCONTADOR_REINICIO: TWideStringField
      FieldName = 'CONTADOR_REINICIO'
      Size = 5
    end
    object qritemBRANCOS: TWideStringField
      FieldName = 'BRANCOS'
      Size = 10
    end
    object qritemDATAHORA_RECEBIMENTO: TDateField
      FieldName = 'DATAHORA_RECEBIMENTO'
    end
    object qritemDATAHORA_FIM: TDateField
      FieldName = 'DATAHORA_FIM'
    end
    object qritemDATAHORA_EMISSAO: TDateField
      FieldName = 'DATAHORA_EMISSAO'
    end
    object qritemBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qritemVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qritemMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
  end
  object qrsintegra_r60: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from sintegra_reg60')
    Params = <>
    Left = 506
    Top = 220
    object qrsintegra_r60ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qrsintegra_r60MOVIMENTO: TWideStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object qrsintegra_r60CODIGO_EMPRESA: TIntegerField
      FieldName = 'CODIGO_EMPRESA'
    end
    object qrsintegra_r60OBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 40
    end
    object qrsintegra_r60CNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrsintegra_r60IE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrsintegra_r60UF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrsintegra_r60CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qrsintegra_r60CNPJ_CLIENTE: TWideStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object qrsintegra_r60IE_CLIENTE: TWideStringField
      FieldName = 'IE_CLIENTE'
      Size = 14
    end
    object qrsintegra_r60UF_CLIENTE: TWideStringField
      FieldName = 'UF_CLIENTE'
      Size = 2
    end
    object qrsintegra_r60CFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrsintegra_r60COD_SINTEGRA_R60: TWideStringField
      FieldName = 'COD_SINTEGRA_R60'
      Size = 10
    end
    object qrsintegra_r60DATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrsintegra_r60NRO_SERIE_EQP: TWideStringField
      FieldName = 'NRO_SERIE_EQP'
    end
    object qrsintegra_r60NRO_ORDEM_EQP: TIntegerField
      FieldName = 'NRO_ORDEM_EQP'
    end
    object qrsintegra_r60MODELO_DOC: TWideStringField
      FieldName = 'MODELO_DOC'
      Size = 2
    end
    object qrsintegra_r60NRO_CONTADOR_INICIO: TIntegerField
      FieldName = 'NRO_CONTADOR_INICIO'
    end
    object qrsintegra_r60NRO_CONTADOR_FIM: TIntegerField
      FieldName = 'NRO_CONTADOR_FIM'
    end
    object qrsintegra_r60NRO_CONTADOR_Z: TIntegerField
      FieldName = 'NRO_CONTADOR_Z'
    end
    object qrsintegra_r60NRO_DOC_FISCAL: TIntegerField
      FieldName = 'NRO_DOC_FISCAL'
    end
    object qrsintegra_r60NRO_ITENS: TIntegerField
      FieldName = 'NRO_ITENS'
    end
    object qrsintegra_r60CONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
    end
    object qrsintegra_r60VALOR_VENDA_BRUTA: TFloatField
      FieldName = 'VALOR_VENDA_BRUTA'
    end
    object qrsintegra_r60VALOR_TOTAL_GERAL: TFloatField
      FieldName = 'VALOR_TOTAL_GERAL'
    end
    object qrsintegra_r60BRANCOS: TWideStringField
      FieldName = 'BRANCOS'
      Size = 37
    end
    object qrsintegra_r60DATAHORA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATAHORA_RECEBIMENTO'
    end
    object qrsintegra_r60MODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrsintegra_r60DATAHORA_INI: TDateTimeField
      FieldName = 'DATAHORA_INI'
    end
    object qrsintegra_r60DATAHORA_FIM: TDateTimeField
      FieldName = 'DATAHORA_FIM'
    end
    object qrsintegra_r60CANCELAMENTO: TFloatField
      FieldName = 'CANCELAMENTO'
    end
    object qrsintegra_r60DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrsintegra_r60ISSQN: TFloatField
      FieldName = 'ISSQN'
    end
    object qrsintegra_r60SUBSTITUICAO_TRIBUTARIA: TFloatField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
    end
    object qrsintegra_r60ISENTO: TFloatField
      FieldName = 'ISENTO'
    end
    object qrsintegra_r60NAO_INCIDENCIA: TFloatField
      FieldName = 'NAO_INCIDENCIA'
    end
    object qrsintegra_r60ACRESCIMO_IOF: TFloatField
      FieldName = 'ACRESCIMO_IOF'
    end
    object qrsintegra_r60ALIQUOTA01: TFloatField
      FieldName = 'ALIQUOTA01'
    end
    object qrsintegra_r60ALIQUOTA02: TFloatField
      FieldName = 'ALIQUOTA02'
    end
    object qrsintegra_r60ALIQUOTA03: TFloatField
      FieldName = 'ALIQUOTA03'
    end
    object qrsintegra_r60ALIQUOTA04: TFloatField
      FieldName = 'ALIQUOTA04'
    end
    object qrsintegra_r60ALIQUOTA05: TFloatField
      FieldName = 'ALIQUOTA05'
    end
    object qrsintegra_r60BASE01: TFloatField
      FieldName = 'BASE01'
    end
    object qrsintegra_r60BASE02: TFloatField
      FieldName = 'BASE02'
    end
    object qrsintegra_r60BASE03: TFloatField
      FieldName = 'BASE03'
    end
    object qrsintegra_r60BASE04: TFloatField
      FieldName = 'BASE04'
    end
    object qrsintegra_r60BASE05: TFloatField
      FieldName = 'BASE05'
    end
    object qrsintegra_r60VALOR_TPARCIAL01: TFloatField
      FieldName = 'VALOR_TPARCIAL01'
    end
    object qrsintegra_r60VALOR_TPARCIAL02: TFloatField
      FieldName = 'VALOR_TPARCIAL02'
    end
    object qrsintegra_r60VALOR_TPARCIAL03: TFloatField
      FieldName = 'VALOR_TPARCIAL03'
    end
    object qrsintegra_r60VALOR_TPARCIAL04: TFloatField
      FieldName = 'VALOR_TPARCIAL04'
    end
    object qrsintegra_r60VALOR_TPARCIAL05: TFloatField
      FieldName = 'VALOR_TPARCIAL05'
    end
    object qrsintegra_r60BRANCOS_60A01: TWideStringField
      FieldName = 'BRANCOS_60A01'
    end
    object qrsintegra_r60BRANCOS_60A02: TWideStringField
      FieldName = 'BRANCOS_60A02'
    end
    object qrsintegra_r60BRANCOS_60A03: TWideStringField
      FieldName = 'BRANCOS_60A03'
    end
    object qrsintegra_r60BRANCOS_60A04: TWideStringField
      FieldName = 'BRANCOS_60A04'
    end
    object qrsintegra_r60BRANCOS_60A05: TWideStringField
      FieldName = 'BRANCOS_60A05'
    end
    object qrsintegra_r60TOTAL_INICIO_DIA: TFloatField
      FieldName = 'TOTAL_INICIO_DIA'
    end
    object qrsintegra_r60TOTAL_FINAL_DIA: TFloatField
      FieldName = 'TOTAL_FINAL_DIA'
    end
    object qrsintegra_r60TOTAL_DIA: TFloatField
      FieldName = 'TOTAL_DIA'
    end
    object qrsintegra_r60OBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Size = 60
    end
    object qrsintegra_r60VALOR_VENDA_LIQUIDA: TFloatField
      FieldName = 'VALOR_VENDA_LIQUIDA'
    end
    object qrsintegra_r60NRO_CONTADOR_CANCELAMENTO: TIntegerField
      FieldName = 'NRO_CONTADOR_CANCELAMENTO'
    end
  end
  object qrrentabilidade: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000077')
    Params = <>
    Left = 604
    Top = 152
    object qrrentabilidadeCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrrentabilidadeCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrrentabilidadePRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object qrrentabilidadeUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrrentabilidadeEMBALAGEM: TFloatField
      FieldName = 'EMBALAGEM'
    end
    object qrrentabilidadePERDA: TFloatField
      FieldName = 'PERDA'
    end
  end
  object qrrentabilidade_item: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000078')
    Params = <>
    Left = 702
    Top = 152
    object qrrentabilidade_itemRENTABILIDADE: TWideStringField
      FieldName = 'RENTABILIDADE'
      Required = True
      Size = 6
    end
    object qrrentabilidade_itemCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrrentabilidade_itemPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 40
    end
    object qrrentabilidade_itemRENDIMENTO: TFloatField
      FieldName = 'RENDIMENTO'
    end
    object qrrentabilidade_itemQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrrentabilidade_itemVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrrentabilidade_itemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object qrindustria_produtos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000079')
    Params = <>
    Left = 506
    Top = 152
    object qrindustria_produtosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrindustria_produtosPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object qrindustria_produtosUNIDADE_PRODUTO: TWideStringField
      FieldName = 'UNIDADE_PRODUTO'
      Size = 2
    end
    object qrindustria_produtosCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrindustria_produtosUNIDADE_MATERIAPRIMA: TWideStringField
      FieldName = 'UNIDADE_MATERIAPRIMA'
      Size = 2
    end
    object qrindustria_produtosQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrindustria_produtosCUSTO: TFloatField
      FieldName = 'CUSTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrindustria_produtosPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrindustria_produtosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrindustria_produtosCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrindustria_produtosCST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrindustria_produtoscst_produto: TStringField
      FieldKind = fkLookup
      FieldName = 'cst_produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CST'
      KeyFields = 'CODIGO'
      Size = 4
      Lookup = True
    end
    object qrindustria_produtoscst_mprima: TStringField
      FieldKind = fkLookup
      FieldName = 'cst_mprima'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CST'
      KeyFields = 'CODPRODUTO'
      Size = 3
      Lookup = True
    end
    object qrindustria_produtosaliquota_produto: TFloatField
      FieldKind = fkLookup
      FieldName = 'aliquota_produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'alIQUOTA'
      KeyFields = 'CODIGO'
      Lookup = True
    end
    object qrindustria_produtosaliquota_mprima: TFloatField
      FieldKind = fkLookup
      FieldName = 'aliquota_mprima'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'aliQUOTA'
      KeyFields = 'CODPRODUTO'
      Lookup = True
    end
    object qrindustria_produtosproduto_ind: TStringField
      FieldKind = fkLookup
      FieldName = 'produto_ind'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qrindustria_produtosALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrdespesas_ind: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000090')
    Params = <>
    Left = 16
    Top = 220
    object qrdespesas_indCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrdespesas_indDESPESA: TWideStringField
      FieldName = 'DESPESA'
      Size = 40
    end
    object qrdespesas_indPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object qrdespesasitem_ind: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000091')
    Params = <>
    Left = 310
    Top = 220
    object qrdespesasitem_indCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrdespesasitem_indCODDESPESA: TWideStringField
      FieldName = 'CODDESPESA'
      Size = 6
    end
    object qrdespesasitem_indPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object qrdespesasitem_indVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrdespesasitem_indLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 10
    end
    object qrdespesasitem_indORDEM_PRODUCAO: TWideStringField
      FieldName = 'ORDEM_PRODUCAO'
      Size = 10
    end
    object qrdespesasitem_indANO: TWideStringField
      FieldName = 'ANO'
      Size = 4
    end
    object qrdespesasitem_inddespesa: TStringField
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'despesa'
      LookupDataSet = qrdespesas_ind
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESPESA'
      KeyFields = 'CODDESPESA'
      Size = 40
      Lookup = True
    end
  end
  object qrlote_fabricacao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000092')
    Params = <>
    Left = 408
    Top = 220
    object qrlote_fabricacaoproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qrlote_fabricacaopeso_liquido: TFloatField
      FieldKind = fkLookup
      FieldName = 'peso_liquido'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PESO_LIQUIDO'
      KeyFields = 'CODPRODUTO'
      Visible = False
      DisplayFormat = '###,###,##0.000'
      Lookup = True
    end
    object qrlote_fabricacaoclassificacao_fiscal: TStringField
      FieldKind = fkLookup
      FieldName = 'classificacao_fiscal'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'claSSIFICACAO_FISCAL'
      KeyFields = 'CODPRODUTO'
      Visible = False
      Lookup = True
    end
    object qrlote_fabricacaopeso_bruto: TFloatField
      FieldKind = fkLookup
      FieldName = 'peso_bruto'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'peSO'
      KeyFields = 'CODPRODUTO'
      Visible = False
      DisplayFormat = '###,###,##0.000'
      Lookup = True
    end
    object qrlote_fabricacaocst_produto: TStringField
      FieldKind = fkLookup
      FieldName = 'cst_produto'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CST'
      KeyFields = 'CODPRODUTO'
      Visible = False
      Size = 4
      Lookup = True
    end
    object qrlote_fabricacaoaliquota_produto: TFloatField
      FieldKind = fkLookup
      FieldName = 'aliquota_produto'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'alIQUOTA'
      KeyFields = 'CODPRODUTO'
      Visible = False
      Lookup = True
    end
    object qrlote_fabricacaoCST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrlote_fabricacaoLOTE: TWideStringField
      FieldName = 'LOTE'
      Required = True
      Size = 10
    end
    object qrlote_fabricacaoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrlote_fabricacaoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrlote_fabricacaoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrlote_fabricacaoFABRICACAO: TDateField
      FieldName = 'FABRICACAO'
    end
    object qrlote_fabricacaoVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object qrlote_fabricacaoVALIDADE_MES: TIntegerField
      FieldName = 'VALIDADE_MES'
    end
    object qrlote_fabricacaoREG_ANVISA: TWideStringField
      FieldName = 'REG_ANVISA'
    end
    object qrlote_fabricacaoTECNICO: TWideStringField
      FieldName = 'TECNICO'
    end
    object qrlote_fabricacaoREG_TECNICO: TWideStringField
      FieldName = 'REG_TECNICO'
    end
    object qrlote_fabricacaoLAUDO_TECNICO: TWideStringField
      FieldName = 'LAUDO_TECNICO'
      Size = 200
    end
    object qrlote_fabricacaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrlote_fabricacaoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrlote_fabricacaoOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object qrlote_fabricacaoHORA: TWideStringField
      FieldName = 'HORA'
      Size = 8
    end
    object qrlote_fabricacaoCODSETOR: TWideStringField
      FieldName = 'CODSETOR'
      Size = 6
    end
    object qrlote_fabricacaoANO: TWideStringField
      FieldName = 'ANO'
      Size = 4
    end
    object qrlote_fabricacaoORDEM_PRODUCAO: TWideStringField
      FieldName = 'ORDEM_PRODUCAO'
      Size = 10
    end
    object qrlote_fabricacaoCODTECNICO: TWideStringField
      FieldName = 'CODTECNICO'
      Size = 6
    end
    object qrlote_fabricacaoLANCAMENTO: TWideStringField
      FieldName = 'LANCAMENTO'
      Size = 6
    end
    object qrlote_fabricacaoCODNFENTRADA: TWideStringField
      FieldName = 'CODNFENTRADA'
      Size = 10
    end
    object qrlote_fabricacaoCODNFSAIDA: TWideStringField
      FieldName = 'CODNFSAIDA'
      Size = 10
    end
    object qrlote_fabricacaoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
  end
  object qrlote_rentabilidade: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000093')
    Params = <>
    Left = 114
    Top = 220
    object qrlote_rentabilidadeLOTE: TWideStringField
      FieldName = 'LOTE'
      Required = True
      Size = 10
    end
    object qrlote_rentabilidadeSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrlote_rentabilidadeCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrlote_rentabilidadeUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrlote_rentabilidadeDATA: TDateField
      FieldName = 'DATA'
    end
    object qrlote_rentabilidadeNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qrlote_rentabilidadeQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrlote_rentabilidadeVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrlote_rentabilidadeOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
  end
  object qrmemorando: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000094')
    Params = <>
    Left = 212
    Top = 220
    object qrmemorandoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrmemorandoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrmemorandoMEMORANDO: TWideStringField
      FieldName = 'MEMORANDO'
      Size = 6
    end
    object qrmemorandoNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qrmemorandoNOTAFISCAL_MODELO: TWideStringField
      FieldName = 'NOTAFISCAL_MODELO'
      Size = 10
    end
    object qrmemorandoNOTAFISCAL_SERIE: TWideStringField
      FieldName = 'NOTAFISCAL_SERIE'
      Size = 10
    end
    object qrmemorandoNOTAFISCAL_DATA: TDateTimeField
      FieldName = 'NOTAFISCAL_DATA'
    end
    object qrmemorandoDESPACHO: TWideStringField
      FieldName = 'DESPACHO'
    end
    object qrmemorandoDESPACHO_DATA: TDateTimeField
      FieldName = 'DESPACHO_DATA'
    end
    object qrmemorandoREGISTRO: TWideStringField
      FieldName = 'REGISTRO'
    end
    object qrmemorandoREGISTRO_DATA: TDateTimeField
      FieldName = 'REGISTRO_DATA'
    end
    object qrmemorandoCONHECIMENTO_EMBARQUE: TWideStringField
      FieldName = 'CONHECIMENTO_EMBARQUE'
    end
    object qrmemorandoCONHECIMENTO_EMBARQUE_DATA: TDateTimeField
      FieldName = 'CONHECIMENTO_EMBARQUE_DATA'
    end
    object qrmemorandoESTADO_FABRICANTE: TWideStringField
      FieldName = 'ESTADO_FABRICANTE'
    end
    object qrmemorandoPAIS_DESTINO: TWideStringField
      FieldName = 'PAIS_DESTINO'
    end
    object qrmemorandoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrmemorandoCONHECIMENTO: TWideStringField
      FieldName = 'CONHECIMENTO'
      Size = 6
    end
    object qrmemorandoCONHECIMENTO_MODELO: TWideStringField
      FieldName = 'CONHECIMENTO_MODELO'
      Size = 10
    end
    object qrmemorandoCONHECIMENTO_SERIE: TWideStringField
      FieldName = 'CONHECIMENTO_SERIE'
      Size = 10
    end
    object qrmemorandoCONHECIMENTO_DATA: TDateTimeField
      FieldName = 'CONHECIMENTO_DATA'
    end
    object qrmemorandoTRANSPORTADOR_CODIGO: TWideStringField
      FieldName = 'TRANSPORTADOR_CODIGO'
      Size = 6
    end
    object qrmemorandoTRANSPORTADOR_NOME: TWideStringField
      FieldName = 'TRANSPORTADOR_NOME'
      Size = 50
    end
    object qrmemorandoTRANSPORTADOR_ENDERECO: TWideStringField
      FieldName = 'TRANSPORTADOR_ENDERECO'
      Size = 50
    end
    object qrmemorandoTRANSPORTADOR_BAIRRO: TWideStringField
      FieldName = 'TRANSPORTADOR_BAIRRO'
    end
    object qrmemorandoTRANSPORTADOR_CIDADE: TWideStringField
      FieldName = 'TRANSPORTADOR_CIDADE'
      Size = 30
    end
    object qrmemorandoTRANSPORTADOR_UF: TWideStringField
      FieldName = 'TRANSPORTADOR_UF'
      Size = 2
    end
    object qrmemorandoTRANSPORTADOR_PAIS: TWideStringField
      FieldName = 'TRANSPORTADOR_PAIS'
    end
    object qrmemorandoTRANSPORTADOR_CNPJCPF: TWideStringField
      FieldName = 'TRANSPORTADOR_CNPJCPF'
    end
    object qrmemorandoTRANSPORTADOR_INSCRG: TWideStringField
      FieldName = 'TRANSPORTADOR_INSCRG'
    end
    object qrmemorandoSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
  end
  object qrmemorando_notas: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000095')
    Params = <>
    Left = 16
    Top = 356
    object qrmemorando_notasMEMORANDO: TWideStringField
      FieldName = 'MEMORANDO'
      Size = 6
    end
    object qrmemorando_notasNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Required = True
      Size = 6
    end
    object qrmemorando_notasNF_DATA: TDateTimeField
      FieldName = 'NF_DATA'
    end
    object qrmemorando_notasNF_MODELO: TWideStringField
      FieldName = 'NF_MODELO'
      Size = 10
    end
    object qrmemorando_notasNF_SERIE: TWideStringField
      FieldName = 'NF_SERIE'
      Size = 10
    end
    object qrmemorando_notasNF_QUANTIDADE: TFloatField
      FieldName = 'NF_QUANTIDADE'
    end
    object qrmemorando_notasNF_UNIDADE: TWideStringField
      FieldName = 'NF_UNIDADE'
      Size = 2
    end
  end
  object qrservicos_periodicos: TZQuery
    Connection = Conexao
    OnCalcFields = qrservicos_periodicosCalcFields
    SQL.Strings = (
      'select * from servicos_periodicos')
    Params = <>
    Left = 506
    Top = 492
    object qrservicos_periodicosSTATUS: TWideStringField
      DisplayLabel = 'ST'
      DisplayWidth = 2
      FieldName = 'STATUS'
      Size = 1
    end
    object qrservicos_periodicosCODSERVICO: TWideStringField
      DisplayLabel = 'C'#211'D'
      DisplayWidth = 6
      FieldName = 'CODSERVICO'
      Size = 6
    end
    object qrservicos_periodicosID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object qrservicos_periodicosMARCA: TWideStringField
      DisplayWidth = 15
      FieldName = 'MARCA'
      Size = 40
    end
    object qrservicos_periodicosMODELO: TWideStringField
      DisplayWidth = 17
      FieldName = 'MODELO'
      Size = 40
    end
    object qrservicos_periodicosSERIE: TWideStringField
      DisplayLabel = 'S'#201'RIE'
      DisplayWidth = 16
      FieldName = 'SERIE'
      Size = 40
    end
    object CDSos_periodicosULTIMA_MANUTENCAO: TDateField
      DisplayLabel = #218'LTIMA'
      DisplayWidth = 10
      FieldName = 'ULTIMA_MANUTENCAO'
    end
    object qrservicos_periodicosCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrservicos_periodicosCODTECNICO: TWideStringField
      FieldName = 'CODTECNICO'
      Visible = False
      Size = 6
    end
    object CDSos_periodicosPRIMEIRA_MANUTENCAO: TDateField
      FieldName = 'PRIMEIRA_MANUTENCAO'
      Visible = False
    end
    object qrservicos_periodicosPERIODO: TIntegerField
      FieldName = 'PERIODO'
      Visible = False
    end
  end
  object qritem_baixa_produtos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000097')
    Params = <>
    Left = 604
    Top = 492
    object qritem_baixa_produtosCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qritem_baixa_produtosPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qritem_baixa_produtosUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object qritem_baixa_produtosQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qritem_baixa_produtosUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qritem_baixa_produtosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qritem_baixa_produtosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qritem_baixa_produtosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qritem_baixa_produtosCODORCAMENTO: TWideStringField
      FieldName = 'CODORCAMENTO'
      Size = 6
    end
    object qritem_baixa_produtosVENDA: TFloatField
      FieldName = 'VENDA'
    end
  end
  object qrbaixa_produtos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000096')
    Params = <>
    Left = 702
    Top = 492
    object qrbaixa_produtoscliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrbaixa_produtosvendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 40
      Lookup = True
    end
    object qrbaixa_produtosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrbaixa_produtosCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrbaixa_produtosCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object CDSos_produtosDATA: TDateField
      FieldName = 'DATA'
    end
    object qrbaixa_produtosSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrbaixa_produtosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrbaixa_produtosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrbaixa_produtosTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrbaixa_produtosOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrbaixa_produtosOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrbaixa_produtosOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrbaixa_produtosOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrbaixa_produtosTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrbaixa_produtosFINALIZADO: TIntegerField
      FieldName = 'FINALIZADO'
    end
    object qrbaixa_produtosCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrbaixa_produtosfilial: TStringField
      FieldKind = fkLookup
      FieldName = 'filial'
      LookupDataSet = qrempresa
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FILIAL'
      KeyFields = 'CODFILIAL'
      Size = 100
      Lookup = True
    end
  end
  object qrestoque: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from estoque')
    Params = <>
    Left = 408
    Top = 492
    object qrestoqueTIPO: TWideStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
    object qrestoqueDATA: TDateField
      FieldName = 'DATA'
    end
    object qrestoqueCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrestoqueQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrestoqueVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object qrinventario: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from inventario')
    Params = <>
    Left = 114
    Top = 492
    object qrinventarioCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrorcamentoDATA1: TDateField
      FieldName = 'DATA'
    end
    object qrinventarioESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrinventarioCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object qrinventarioPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 150
    end
    object qrinventarioUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object qrinventarioCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrinventarioALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrinventarioVENDA: TFloatField
      FieldName = 'VENDA'
    end
    object qrinventarioTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrinventarioTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrinventarioANO: TIntegerField
      FieldName = 'ANO'
    end
    object qrinventarioMES: TIntegerField
      FieldName = 'MES'
    end
    object qrorcamentoDATA_POSTERIOR: TDateField
      FieldName = 'DATA_POSTERIOR'
    end
  end
  object qrproduto_estoque: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from estoque')
    Params = <>
    Left = 212
    Top = 492
    object qrproduto_estoqueTIPO: TWideStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
    object qrproduto_estoqueCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrproduto_estoqueDATA: TDateField
      FieldName = 'DATA'
    end
    object qrproduto_estoqueQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrproduto_estoqueVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object conexao_adic: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = 'C:\OneMaker\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 212
    Top = 152
  end
  object qradic: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000007'
      '')
    Params = <>
    Left = 310
    Top = 492
    object qradicCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qradicNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qradicAPELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qradicENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qradicBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qradicCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qradicUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qradicCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qradicCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qradicMORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qradicTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qradicDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qradicDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qradicSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qradicTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qradicTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qradicTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object qradicCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qradicEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qradicRG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qradicCPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qradicFILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qradicESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qradicCONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qradicPROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qradicEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qradicRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qradicLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qradicREF1: TWideStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qradicREF2: TWideStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qradicCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qradicOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qradicOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qradicOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qradicOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qradicOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qradicOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qradicNASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qradicCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qradicCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qradicCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qradicNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qradicRG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qradicRG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qradicRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object qradicSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qradicHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qradicPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qradicCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qradicCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qradicIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qradicTAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qradicTAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qradicTAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qradicCORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qradicCORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qradicCORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qradicCORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qradicCORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qradicCORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qradicRG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qradicRESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qradicRESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qradicRESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qradicRESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qradicRESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qradicRESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qradicRESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qradicRESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qradicRESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qradicRESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qradicRESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qradicRESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qradicRESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qradicRESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qradicRESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qradicRESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qradicRESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qradicRESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qradicRESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qradicRESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qradicFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qradicCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
  end
  object qradic2: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000007'
      '')
    Params = <>
    Left = 16
    Top = 560
    object qradic2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qradic2NOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qradic2APELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qradic2ENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qradic2BAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qradic2CIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qradic2UF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qradic2CEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qradic2COMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qradic2MORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qradic2TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qradic2SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qradic2TELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qradic2TELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qradic2TELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object qradic2CELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qradic2EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qradic2RG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qradic2CPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qradic2FILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qradic2ESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qradic2CONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qradic2PROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qradic2EMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qradic2RENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qradic2LIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qradic2REF1: TWideStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qradic2REF2: TWideStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qradic2CODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qradic2DATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qradic2DATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qradic2OBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qradic2OBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qradic2OBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qradic2OBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qradic2OBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qradic2OBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qradic2NASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qradic2CODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qradic2CODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qradic2CODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qradic2NUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qradic2RG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qradic2RG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qradic2RG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object qradic2SEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qradic2HISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qradic2PREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qradic2CNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qradic2COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qradic2IBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qradic2TAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qradic2TAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qradic2TAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qradic2CORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qradic2CORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qradic2CORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qradic2CORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qradic2CORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qradic2CORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qradic2RG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qradic2RESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qradic2RESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qradic2RESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qradic2RESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qradic2RESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qradic2RESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qradic2RESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qradic2RESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qradic2RESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qradic2RESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qradic2RESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qradic2RESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qradic2RESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qradic2RESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qradic2RESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qradic2RESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qradic2RESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qradic2RESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qradic2RESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qradic2RESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qradic2FOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qradic2CONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
  end
  object qradic_orcamento: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000074')
    Params = <>
    Left = 506
    Top = 560
    object qradic_orcamentoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qradic_orcamentoCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qradic_orcamentoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qradic_orcamentoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qradic_orcamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object qradic_orcamentoOBS: TWideStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qradic_orcamentoMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
    end
    object qradic_orcamentoMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
    end
    object qradic_orcamentoMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
    end
    object qradic_orcamentoMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
    end
    object qradic_orcamentoMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
    end
    object qradic_orcamentoMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
    end
    object qradic_orcamentoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qradic_orcamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qradic_orcamentoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qradic_orcamentoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qradic_orcamentoCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
    end
    object qradic_orcamentoNUMERO_CUPOM_FISCAL: TWideStringField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object qradic_orcamentoRETIRADO: TWideStringField
      FieldName = 'RETIRADO'
      Size = 50
    end
    object qradic_orcamentoTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qradic_orcamentoMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
    end
    object qradic_orcamentoDAV: TWideStringField
      FieldName = 'DAV'
      Size = 10
    end
    object qradic_orcamentoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qradic_orcamentoDAV_ANTERIOR: TWideStringField
      FieldName = 'DAV_ANTERIOR'
      Size = 100
    end
    object qradic_orcamentoATACADO_VAREJO: TSmallintField
      FieldName = 'ATACADO_VAREJO'
      Required = True
    end
  end
  object qradic_orcamento_produto: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000075')
    Params = <>
    Left = 604
    Top = 560
    object qradic_orcamento_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qradic_orcamento_produtoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qradic_orcamento_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qradic_orcamento_produtoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qradic_orcamento_produtoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qradic_orcamento_produtoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qradic_orcamento_produtoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qradic_orcamento_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qradic_orcamento_produtoDATA: TDateField
      FieldName = 'DATA'
    end
    object qradic_orcamento_produtoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qradic_orcamento_produtoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qradic_orcamento_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qradic_orcamento_produtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qradic_orcamento_produtoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qradic_orcamento_produtoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qradic_orcamento_produtoCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qradic_orcamento_produtoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object qradic_orcamento_produtoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qradic_orcamento_produtoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qradic_orcamento_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qradic_orcamento_produtoICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qradic_orcamento_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qradic_orcamento_produtoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qradic_orcamento_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qradic_orcamento_produtoSERIAL_CODINT: TWideStringField
      FieldName = 'SERIAL_CODINT'
      Size = 6
    end
    object qradic_orcamento_produtoCOD_BARRAS: TWideStringField
      FieldName = 'COD_BARRAS'
      Size = 25
    end
  end
  object qradic_contasreceber: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from cL00002')
    Params = <>
    Left = 702
    Top = 560
    object qradic_contasreceberPRESTACAO: TIntegerField
      FieldName = 'PRESTACAO'
    end
    object qradic_contasreceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qradic_contasreceberVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qradic_contasreceberDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object qradic_contasreceberTIPO: TWideStringField
      FieldName = 'TIPO'
    end
    object qradic_contasreceberTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 4
    end
  end
  object qradic_mestre: TZQuery
    Connection = conexao_adic
    AfterPost = qradic_mestreAfterPost
    SQL.Strings = (
      'select * from c000000')
    Params = <>
    Left = 408
    Top = 560
    object qradic_mestreCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qradic_mestreTABELA: TWideStringField
      FieldName = 'TABELA'
      Size = 30
    end
    object qradic_mestreSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
  end
  object qradic_nota: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 114
    Top = 560
    object qradic_notaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qradic_notaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qradic_notaCODEMPRESA: TWideStringField
      FieldName = 'CODEMPRESA'
      Size = 10
    end
    object qradic_notaCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qradic_notaMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qradic_notaESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object qradic_notaSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qradic_notaCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qradic_notaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qradic_notaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
    end
    object qradic_notaCONF_BASEICMS: TFloatField
      FieldName = 'CONF_BASEICMS'
    end
    object qradic_notaCONF_VALORICMS: TFloatField
      FieldName = 'CONF_VALORICMS'
    end
    object qradic_notaCONF_BASESUB: TFloatField
      FieldName = 'CONF_BASESUB'
    end
    object qradic_notaCONF_VALORSUB: TFloatField
      FieldName = 'CONF_VALORSUB'
    end
    object qradic_notaCONF_FRETE: TFloatField
      FieldName = 'CONF_FRETE'
    end
    object qradic_notaCONF_SEGURO: TFloatField
      FieldName = 'CONF_SEGURO'
    end
    object qradic_notaCONF_OUTRAS: TFloatField
      FieldName = 'CONF_OUTRAS'
    end
    object qradic_notaCONF_IPI: TFloatField
      FieldName = 'CONF_IPI'
    end
    object qradic_notaCONF_DESCONTO: TFloatField
      FieldName = 'CONF_DESCONTO'
    end
    object qradic_notaCONF_TOTALPRODUTOS: TFloatField
      FieldName = 'CONF_TOTALPRODUTOS'
    end
    object qradic_notaCONF_TOTALNOTA: TFloatField
      FieldName = 'CONF_TOTALNOTA'
    end
    object qradic_notaCONF_ICMSRETIDO: TFloatField
      FieldName = 'CONF_ICMSRETIDO'
    end
    object qradic_notaCONF_ICMSREDITO_PERC: TFloatField
      FieldName = 'CONF_ICMSREDITO_PERC'
    end
    object qradic_notaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qradic_notaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qradic_notaBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qradic_notaVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
    end
    object qradic_notaFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qradic_notaSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qradic_notaOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qradic_notaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qradic_notaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qradic_notaTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
    end
    object qradic_notaTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qradic_notaTRANSP_NOME: TWideStringField
      FieldName = 'TRANSP_NOME'
      Size = 60
    end
    object qradic_notaTRANSP_FRETE: TWideStringField
      FieldName = 'TRANSP_FRETE'
    end
    object qradic_notaTRANSP_PLACA: TWideStringField
      FieldName = 'TRANSP_PLACA'
      Size = 10
    end
    object qradic_notaTRANSP_PLACAUF: TWideStringField
      FieldName = 'TRANSP_PLACAUF'
      Size = 2
    end
    object qradic_notaTRANSP_IE: TWideStringField
      FieldName = 'TRANSP_IE'
      Size = 25
    end
    object qradic_notaTRANSP_CNPJ: TWideStringField
      FieldName = 'TRANSP_CNPJ'
      Size = 25
    end
    object qradic_notaTRANSP_ENDERECO: TWideStringField
      FieldName = 'TRANSP_ENDERECO'
      Size = 40
    end
    object qradic_notaTRANSP_CIDADE: TWideStringField
      FieldName = 'TRANSP_CIDADE'
      Size = 30
    end
    object qradic_notaTRANSP_UF: TWideStringField
      FieldName = 'TRANSP_UF'
      Size = 2
    end
    object qradic_notaTRANSP_QTDE: TFloatField
      FieldName = 'TRANSP_QTDE'
    end
    object qradic_notaTRANSP_ESPECIE: TWideStringField
      FieldName = 'TRANSP_ESPECIE'
    end
    object qradic_notaTRANSP_MARCA: TWideStringField
      FieldName = 'TRANSP_MARCA'
    end
    object qradic_notaTRANSP_NUMERO: TWideStringField
      FieldName = 'TRANSP_NUMERO'
    end
    object qradic_notaTRANSP_PESOBRUTO: TFloatField
      FieldName = 'TRANSP_PESOBRUTO'
    end
    object qradic_notaTRANSP_PESOLIQUIDO: TFloatField
      FieldName = 'TRANSP_PESOLIQUIDO'
    end
    object qradic_notaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object qradic_notaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object qradic_notaOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object qradic_notaOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object qradic_notaOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 60
    end
    object qradic_notaOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 60
    end
    object qradic_notaOBS7: TWideStringField
      FieldName = 'OBS7'
      Size = 60
    end
    object qradic_notaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qradic_notaITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qradic_notaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qradic_notaNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Size = 6
    end
    object qradic_notaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
    end
    object qradic_notaCODREMETENTE: TWideStringField
      FieldName = 'CODREMETENTE'
      Size = 6
    end
    object qradic_notaICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qradic_notaICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object qradic_notaDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
    end
    object qradic_notaITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
    end
    object qradic_notaITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
    end
    object qradic_notaITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
    end
    object qradic_notaITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
    end
    object qradic_notaITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
    end
    object qradic_notaITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
    end
    object qradic_notaITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
    end
    object qradic_notaITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
    end
    object qradic_notaITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
    end
    object qradic_notaITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
    end
    object qradic_notaITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
    end
    object qradic_notaITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
    end
    object qradic_notaITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
    end
    object qradic_notaITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
    end
    object qradic_notaITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
    end
    object qradic_notaITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
    end
    object qradic_notaITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
    end
    object qradic_notaITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
    end
    object qradic_notaITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
    end
    object qradic_notaITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
    end
    object qradic_notaITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
    end
    object qradic_notaITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
    end
    object qradic_notaITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
    end
    object qradic_notaITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
    end
    object qradic_notaITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
    end
    object qradic_notaITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object qradic_notaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
    end
    object qradic_notaCONF_ITEM_ESPECIAL: TFloatField
      FieldName = 'CONF_ITEM_ESPECIAL'
    end
    object qradic_notaOBS8: TWideStringField
      FieldName = 'OBS8'
      Size = 60
    end
    object qradic_notaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qradic_notaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qradic_notaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qradic_notaOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object qradic_notaINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object qradic_notaAPROVEITA_CREDITO_ICMS: TWideStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Size = 1
    end
    object qradic_notaCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 50
    end
  end
  object qradic_nota_item: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000088')
    Params = <>
    Left = 212
    Top = 560
    object qradic_nota_itemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qradic_nota_itemITEM: TWideStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object qradic_nota_itemCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 10
    end
    object qradic_nota_itemCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qradic_nota_itemCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
    end
    object qradic_nota_itemUN_COMPRA: TWideStringField
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object qradic_nota_itemUN_FRACAO: TWideStringField
      FieldName = 'UN_FRACAO'
      Size = 5
    end
    object qradic_nota_itemFRACAO: TFloatField
      FieldName = 'FRACAO'
    end
    object qradic_nota_itemCST: TWideStringField
      FieldName = 'CST'
      Size = 5
    end
    object qradic_nota_itemCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qradic_nota_itemQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qradic_nota_itemUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qradic_nota_itemSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qradic_nota_itemDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qradic_nota_itemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qradic_nota_itemDESCONTO_P: TFloatField
      FieldName = 'DESCONTO_P'
    end
    object qradic_nota_itemICMS_RETIDO: TWideStringField
      FieldName = 'ICMS_RETIDO'
      Size = 1
    end
    object qradic_nota_itemICMS_ALIQUOTA: TFloatField
      FieldName = 'ICMS_ALIQUOTA'
    end
    object qradic_nota_itemICMS_REDUCAO: TFloatField
      FieldName = 'ICMS_REDUCAO'
    end
    object qradic_nota_itemICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object qradic_nota_itemICMS_VALOR: TFloatField
      FieldName = 'ICMS_VALOR'
    end
    object qradic_nota_itemICMS_VALORRETIDO: TFloatField
      FieldName = 'ICMS_VALORRETIDO'
    end
    object qradic_nota_itemICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qradic_nota_itemICMS_NAOTRIBUTADO: TFloatField
      FieldName = 'ICMS_NAOTRIBUTADO'
    end
    object qradic_nota_itemSUB_MARGEM: TFloatField
      FieldName = 'SUB_MARGEM'
    end
    object qradic_nota_itemSUB_BASE: TFloatField
      FieldName = 'SUB_BASE'
    end
    object qradic_nota_itemSUB_VALOR: TFloatField
      FieldName = 'SUB_VALOR'
    end
    object qradic_nota_itemIPI_TIPO: TWideStringField
      FieldName = 'IPI_TIPO'
      Size = 25
    end
    object qradic_nota_itemIPI_ALIQUOTA: TFloatField
      FieldName = 'IPI_ALIQUOTA'
    end
    object qradic_nota_itemIPI_BASE: TFloatField
      FieldName = 'IPI_BASE'
    end
    object qradic_nota_itemIPI_VALOR: TFloatField
      FieldName = 'IPI_VALOR'
    end
    object qradic_nota_itemDATA: TDateField
      FieldName = 'DATA'
    end
    object qradic_nota_itemTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qradic_nota_itemNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object qradic_nota_itemFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qradic_nota_itemOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qradic_nota_itemSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qradic_nota_itemCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 25
    end
    object qradic_nota_itemSUB_PRODUTOS: TFloatField
      FieldName = 'SUB_PRODUTOS'
    end
    object qradic_nota_itemCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qradic_nota_itemITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object qradic_nota_itemICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object qradic_nota_itemALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
    end
    object qradic_nota_itemCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qradic_nota_itemCREDITO_ICMS_BASE: TFloatField
      FieldName = 'CREDITO_ICMS_BASE'
    end
    object qradic_nota_itemPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object qradic_nota_itemPIS: TFloatField
      FieldName = 'PIS'
    end
    object qradic_nota_itemCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object qradic_nota_itemCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qradic_nota_itemLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 15
    end
    object qradic_nota_itemLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
    end
    object qradic_nota_itemLOTE_FABRICACAO_DATA: TDateField
      FieldName = 'LOTE_FABRICACAO_DATA'
    end
    object qradic_nota_itemCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qradic_nota_itemPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qradic_nota_itemPMARGEM: TFloatField
      FieldName = 'PMARGEM'
    end
    object qradic_nota_itemPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qradic_nota_itemPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
  end
  object qrprod: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 310
    Top = 560
    object qrprodCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrprodUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrprodCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrprodCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrprodCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrprodDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrprodNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrprodPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrprodPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrprodDATA_ULTIMAVENDA: TDateField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrprodESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrprodESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrprodCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrprodLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrprodVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrprodCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprodUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrprodUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrprodUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrprodCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrprodFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrprodDATA_ULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrprodNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrprodCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrprodPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrprodPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrprodCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrprodAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrprodDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrprodDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrprodPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrprodDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrprodFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrprodCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrprodCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrprodNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrprodNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrprodALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrprodIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprodREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrprodQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrprodTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrprodPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrprodFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrprodFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrprodFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrprodFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrprodULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrprodULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrprodDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrprodCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrprodESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrprodESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrprodPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrprodUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrprodQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrprodAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrprodSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrprodPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrprodPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrprodPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrprodPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrprodDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrprodDATA_INVENTARIO_ATUAL: TDateField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrprodCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrprodESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrprodMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrprodPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrprodREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrprodCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrprodMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrprodTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrprodCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrprodINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrprodVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrprodVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrprodVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrprodVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrprodVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrprodVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrprodVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrprodVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrprodVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrprodVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrprodVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrprodVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrprodVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrprodVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrprodVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrprodVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrprodVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrprodVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrprodVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrprodVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrprodVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrprodLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrprodLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrprodMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrprodCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrprodFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrprodFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrprodFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrprodFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrprodULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrprodFARMACIA_DATAVIGENCIA: TDateField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrprodFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrprodUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrprodREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrprodPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrprodCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrprodCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrprodIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrprodIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrprodSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrprodFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrprodFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrprodFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrprodCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrprodCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrprodCUSTO_ATACADO: TSingleField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrprodUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrprodQTDE_EMBALAGEMATACADO: TSingleField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrprodPMARGEM1: TSingleField
      FieldName = 'PMARGEM1'
    end
    object qrprodPMARGEM2: TSingleField
      FieldName = 'PMARGEM2'
    end
    object qrprodPMARGEM3: TSingleField
      FieldName = 'PMARGEM3'
    end
    object qrprodPMARGEM4: TSingleField
      FieldName = 'PMARGEM4'
    end
    object qrprodPMARGEM5: TSingleField
      FieldName = 'PMARGEM5'
    end
    object qrprodPMARGEMATACADO1: TSingleField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprodPMARGEMATACADO2: TSingleField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprodPMARGEMATACADO3: TSingleField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprodPMARGEMATACADO4: TSingleField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprodPMARGEMATACADO5: TSingleField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprodPMARGEMATACADO6: TSingleField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrprodPRECOATACADO1: TSingleField
      FieldName = 'PRECOATACADO1'
    end
    object qrprodPRECOATACADO2: TSingleField
      FieldName = 'PRECOATACADO2'
    end
    object qrprodPRECOATACADO3: TSingleField
      FieldName = 'PRECOATACADO3'
    end
    object qrprodPRECOATACADO4: TSingleField
      FieldName = 'PRECOATACADO4'
    end
    object qrprodPRECOATACADO5: TSingleField
      FieldName = 'PRECOATACADO5'
    end
    object qrprodIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrprodCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrprodUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrprodIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrprodCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrprodIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrprodIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrprodIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrprodIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrprodIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrprodUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
    object qrprodATIVA: TWideStringField
      FieldName = 'ATIVA'
      Size = 10
    end
    object qrprodCEST: TWideStringField
      FieldName = 'CEST'
      Required = True
      Size = 7
    end
  end
  object querylog: TZQuery
    Connection = econexao2
    Params = <>
    Left = 16
    Top = 492
  end
  object time_gp: TTimer
    Enabled = False
    OnTimer = time_gpTimer
    Left = 702
    Top = 84
  end
  object qrautorizacao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from FARMACIA_AUTORIZACAO')
    Params = <>
    Left = 506
    Top = 356
    object qrautorizacaoAUTORIZACAO: TWideStringField
      FieldName = 'AUTORIZACAO'
      Required = True
    end
    object qrautorizacaoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrautorizacaoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrautorizacaoCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrautorizacaoPLANO: TWideStringField
      FieldName = 'PLANO'
      Size = 8
    end
    object qrautorizacaoCONVENIADO: TWideStringField
      FieldName = 'CONVENIADO'
      Size = 30
    end
    object qrautorizacaoCONVENIO: TWideStringField
      FieldName = 'CONVENIO'
      Size = 40
    end
    object qrautorizacaoECF: TWideStringField
      FieldName = 'ECF'
      Size = 4
    end
    object qrautorizacaoCUPOM: TWideStringField
      FieldName = 'CUPOM'
      Size = 6
    end
    object qrautorizacaoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 14
    end
    object qrautorizacaoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrautorizacaoPMC: TFloatField
      FieldName = 'PMC'
    end
    object qrautorizacaoPV: TFloatField
      FieldName = 'PV'
    end
    object qrautorizacaoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrautorizacaoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrautorizacaoPC_VISTA: TFloatField
      FieldName = 'PC_VISTA'
    end
    object qrautorizacaoPC_RECEBER: TFloatField
      FieldName = 'PC_RECEBER'
    end
    object qrautorizacaoREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
    end
    object qrautorizacaoSUBSIDIO: TFloatField
      FieldName = 'SUBSIDIO'
    end
    object qrautorizacaoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrautorizacaoNOMECLIENTE: TWideStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object qrautorizacaoCRM_MEDICO: TWideStringField
      FieldName = 'CRM_MEDICO'
      Size = 5
    end
    object qrautorizacaoUF_MEDICO: TWideStringField
      FieldName = 'UF_MEDICO'
      Size = 2
    end
    object qrautorizacaoSOLICITACAO: TIntegerField
      FieldName = 'SOLICITACAO'
    end
    object qrautorizacaoQTDE_AUTORIZADO: TFloatField
      FieldName = 'QTDE_AUTORIZADO'
    end
    object qrautorizacaoCPF: TWideStringField
      FieldName = 'CPF'
      Size = 11
    end
    object qrautorizacaoPACIENTE: TWideStringField
      FieldName = 'PACIENTE'
      Size = 50
    end
    object qrautorizacaoCODCONVENIO: TIntegerField
      FieldName = 'CODCONVENIO'
    end
    object qrautorizacaoPRE_AUTORIZACAO: TWideStringField
      FieldName = 'PRE_AUTORIZACAO'
    end
    object qrautorizacaoLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 10
    end
    object qrautorizacaoOBS: TWideStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object queryagenda: TZQuery
    Connection = econexao2
    Params = <>
    Left = 604
    Top = 356
  end
  object qrcnae: TZQuery
    Connection = ConexaoLocal
    AfterPost = qrrelatorioAfterPost
    SQL.Strings = (
      'select * from cnae')
    Params = <>
    Left = 702
    Top = 356
    object qrcnaeCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcnaeCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrcnaeDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qrcnaeABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 50
    end
  end
  object qrpedido_industria: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000126')
    Params = <>
    Left = 408
    Top = 356
    object qrpedido_industriacliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object qrpedido_industriarepresentante: TStringField
      FieldKind = fkLookup
      FieldName = 'representante'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODREPRESENTANTE'
      Size = 40
      Lookup = True
    end
    object qrpedido_industriarepresentante_fone: TStringField
      FieldKind = fkLookup
      FieldName = 'representante_fone'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TELEFONE'
      KeyFields = 'CODREPRESENTANTE'
      Size = 15
      Lookup = True
    end
    object qrpedido_industriaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrpedido_industriaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrpedido_industriaPEDIDO: TWideStringField
      FieldName = 'PEDIDO'
      Required = True
      Size = 10
    end
    object qrpedido_industriaLOTE: TWideStringField
      FieldName = 'LOTE'
    end
    object qrpedido_industriaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Required = True
      Size = 10
    end
    object qrpedido_industriaDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object qrpedido_industriaDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object qrpedido_industriaCONDICAO_PAGAMENTO: TWideStringField
      FieldName = 'CONDICAO_PAGAMENTO'
      Size = 100
    end
    object qrpedido_industriaRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 100
    end
    object qrpedido_industriaCODREPRESENTANTE: TWideStringField
      FieldName = 'CODREPRESENTANTE'
      Size = 10
    end
    object qrpedido_industriaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrpedido_industriaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrpedido_industriaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrpedido_industriaOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 100
    end
    object qrpedido_industriaOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 100
    end
    object qrpedido_industriaOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 100
    end
  end
  object qrpedido_industria_item: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000127')
    Params = <>
    Left = 114
    Top = 356
    object qrpedido_industria_itemproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrpedido_industria_itemcodbarra: TStringField
      FieldKind = fkLookup
      FieldName = 'codbarra'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODBARRA'
      KeyFields = 'CODPRODUTO'
      Size = 15
      Lookup = True
    end
    object qrpedido_industria_itemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrpedido_industria_itemPEDIDO: TWideStringField
      FieldName = 'PEDIDO'
      Required = True
      Size = 10
    end
    object qrpedido_industria_itemITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qrpedido_industria_itemCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrpedido_industria_itemREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrpedido_industria_itemCOR: TWideStringField
      FieldName = 'COR'
      Size = 30
    end
    object qrpedido_industria_itemTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object qrpedido_industria_itemQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object qrpedido_industria_itemVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrpedido_industria_itemDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrpedido_industria_itemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object qrtamanho: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000128')
    Params = <>
    Left = 212
    Top = 356
    object qrtamanhoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrtamanhoTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Required = True
    end
  end
  object qrcor: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000129')
    Params = <>
    Left = 310
    Top = 356
    object qrcorCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrcorNOME: TWideStringField
      FieldName = 'NOME'
      Required = True
    end
    object qrcorCOR: TWideStringField
      FieldName = 'COR'
      Required = True
    end
  end
  object qrfornecedor_codigo: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from FORNECEDOR_CODIGO')
    Params = <>
    Left = 16
    Top = 424
    object qrfornecedor_codigofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
    object qrfornecedor_codigoproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrfornecedor_codigoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Required = True
      Size = 6
    end
    object qrfornecedor_codigoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrfornecedor_codigoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrfornecedor_codigoPRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object econexao2: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = 'C:\OneMaker\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 16
    Top = 152
  end
  object qrNCM: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from NCM')
    Params = <>
    Left = 506
    Top = 424
    object qrNCMNCM: TWideStringField
      FieldName = 'NCM'
      Required = True
      Size = 10
    end
    object qrNCMDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qrNCMUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
  end
  object ZQuery1: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000061')
    Params = <>
    Left = 604
    Top = 424
    object StringField27: TStringField
      FieldKind = fkLookup
      FieldName = 'filial'
      LookupDataSet = qrFilial
      LookupKeyFields = 'codigo'
      LookupResultField = 'FILIAL'
      KeyFields = 'codfilial'
      Size = 30
      Lookup = True
    end
    object StringField28: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object StringField29: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Size = 30
      Lookup = True
    end
    object StringField43: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_endereco'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'ENDERECO'
      KeyFields = 'codtransportador'
      Size = 50
      Lookup = True
    end
    object StringField44: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cidade'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codtransportador'
      Size = 30
      Lookup = True
    end
    object StringField45: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_uf'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'UF'
      KeyFields = 'codtransportador'
      Size = 2
      Lookup = True
    end
    object StringField46: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cpf'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codtransportador'
      Size = 25
      Lookup = True
    end
    object StringField47: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_rg'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codtransportador'
      Size = 25
      Lookup = True
    end
    object StringField52: TStringField
      FieldKind = fkLookup
      FieldName = 'endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object StringField53: TStringField
      FieldKind = fkLookup
      FieldName = 'cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'CODCLIENTE'
      Size = 14
      Lookup = True
    end
    object StringField54: TStringField
      FieldKind = fkLookup
      FieldName = 'rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RG'
      KeyFields = 'CODCLIENTE'
      Lookup = True
    end
    object ZQuery1CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object ZQuery1NUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object ZQuery1CFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object ZQuery1DATA: TDateTimeField
      FieldName = 'DATA'
    end
    object ZQuery1CODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object ZQuery1VALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object ZQuery1TOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object ZQuery1BASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object ZQuery1VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object ZQuery1BASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object ZQuery1ICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object ZQuery1FRETE: TFloatField
      FieldName = 'FRETE'
    end
    object ZQuery1SEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object ZQuery1OUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object ZQuery1VALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object ZQuery1ITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object ZQuery1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ZQuery1CODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 6
    end
    object ZQuery1FRETE_CONTA: TIntegerField
      FieldName = 'FRETE_CONTA'
    end
    object ZQuery1PLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object ZQuery1PLACA_UF: TWideStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object ZQuery1VOL_QTDE: TFloatField
      FieldName = 'VOL_QTDE'
    end
    object ZQuery1VOL_ESPECIE: TWideStringField
      FieldName = 'VOL_ESPECIE'
    end
    object ZQuery1VOL_MARCA: TWideStringField
      FieldName = 'VOL_MARCA'
    end
    object ZQuery1VOL_NUMERO: TWideStringField
      FieldName = 'VOL_NUMERO'
    end
    object ZQuery1PESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object ZQuery1PESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object ZQuery1SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object ZQuery1MOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Size = 40
    end
    object ZQuery1FATURAMENTO_DATA1: TDateTimeField
      FieldName = 'FATURAMENTO_DATA1'
    end
    object ZQuery1FATURAMENTO_DATA2: TDateTimeField
      FieldName = 'FATURAMENTO_DATA2'
    end
    object ZQuery1FATURAMENTO_DATA3: TDateTimeField
      FieldName = 'FATURAMENTO_DATA3'
    end
    object ZQuery1FATURAMENTO_DATA4: TDateTimeField
      FieldName = 'FATURAMENTO_DATA4'
    end
    object ZQuery1FATURAMENTO_NUMERO1: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO1'
      Size = 15
    end
    object ZQuery1FATURAMENTO_NUMERO2: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO2'
      Size = 15
    end
    object ZQuery1FATURAMENTO_NUMERO3: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO3'
      Size = 15
    end
    object ZQuery1FATURAMENTO_NUMERO4: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO4'
      Size = 15
    end
    object ZQuery1FATURAMENTO_VALOR1: TFloatField
      FieldName = 'FATURAMENTO_VALOR1'
    end
    object ZQuery1FATURAMENTO_VALOR2: TFloatField
      FieldName = 'FATURAMENTO_VALOR2'
    end
    object ZQuery1FATURAMENTO_VALOR3: TFloatField
      FieldName = 'FATURAMENTO_VALOR3'
    end
    object ZQuery1FATURAMENTO_VALOR4: TFloatField
      FieldName = 'FATURAMENTO_VALOR4'
    end
    object ZQuery1CODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object ZQuery1OBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object ZQuery1OBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object ZQuery1OBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object ZQuery1INF1: TWideStringField
      FieldName = 'INF1'
      Size = 80
    end
    object ZQuery1INF2: TWideStringField
      FieldName = 'INF2'
      Size = 80
    end
    object ZQuery1INF3: TWideStringField
      FieldName = 'INF3'
      Size = 80
    end
    object ZQuery1INF4: TWideStringField
      FieldName = 'INF4'
      Size = 80
    end
    object ZQuery1INF5: TWideStringField
      FieldName = 'INF5'
      Size = 80
    end
    object ZQuery1DATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object ZQuery1HORA: TWideStringField
      FieldName = 'HORA'
      Size = 5
    end
    object ZQuery1SITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
    object ZQuery1MODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object ZQuery1SERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object ZQuery1VALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object ZQuery1ALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object ZQuery1SIT: TWideStringField
      FieldName = 'SIT'
      Size = 1
    end
    object ZQuery1CODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Size = 10
    end
    object ZQuery1MOVIMENTO: TWideStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object ZQuery1BAIXA_ESTOQUE: TWideStringField
      FieldName = 'BAIXA_ESTOQUE'
      Size = 1
    end
    object ZQuery1TIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object ZQuery1OS_COD1: TWideStringField
      FieldName = 'OS_COD1'
      Size = 10
    end
    object ZQuery1OS_COD2: TWideStringField
      FieldName = 'OS_COD2'
      Size = 10
    end
    object ZQuery1OS_COD3: TWideStringField
      FieldName = 'OS_COD3'
      Size = 10
    end
    object ZQuery1OS_COD4: TWideStringField
      FieldName = 'OS_COD4'
      Size = 10
    end
    object ZQuery1OS_COD5: TWideStringField
      FieldName = 'OS_COD5'
      Size = 10
    end
    object ZQuery1OS_COD6: TWideStringField
      FieldName = 'OS_COD6'
      Size = 10
    end
    object ZQuery1OS_SERV1: TWideStringField
      FieldName = 'OS_SERV1'
      Size = 60
    end
    object ZQuery1OS_SERV2: TWideStringField
      FieldName = 'OS_SERV2'
      Size = 60
    end
    object ZQuery1OS_SERV3: TWideStringField
      FieldName = 'OS_SERV3'
      Size = 60
    end
    object ZQuery1OS_SERV4: TWideStringField
      FieldName = 'OS_SERV4'
      Size = 60
    end
    object ZQuery1OS_SERV5: TWideStringField
      FieldName = 'OS_SERV5'
      Size = 60
    end
    object ZQuery1OS_SERV6: TWideStringField
      FieldName = 'OS_SERV6'
      Size = 60
    end
    object ZQuery1OS_COMP1: TWideStringField
      FieldName = 'OS_COMP1'
      Size = 60
    end
    object ZQuery1OS_COMP2: TWideStringField
      FieldName = 'OS_COMP2'
      Size = 60
    end
    object ZQuery1OS_COMP3: TWideStringField
      FieldName = 'OS_COMP3'
      Size = 60
    end
    object ZQuery1OS_COMP4: TWideStringField
      FieldName = 'OS_COMP4'
      Size = 60
    end
    object ZQuery1OS_COMP5: TWideStringField
      FieldName = 'OS_COMP5'
      Size = 60
    end
    object ZQuery1OS_COMP6: TWideStringField
      FieldName = 'OS_COMP6'
      Size = 60
    end
    object ZQuery1OS_QTDE1: TFloatField
      FieldName = 'OS_QTDE1'
    end
    object ZQuery1OS_QTDE2: TFloatField
      FieldName = 'OS_QTDE2'
    end
    object ZQuery1OS_QTDE3: TFloatField
      FieldName = 'OS_QTDE3'
    end
    object ZQuery1OS_QTDE4: TFloatField
      FieldName = 'OS_QTDE4'
    end
    object ZQuery1OS_QTDE5: TFloatField
      FieldName = 'OS_QTDE5'
    end
    object ZQuery1OS_QTDE6: TFloatField
      FieldName = 'OS_QTDE6'
    end
    object ZQuery1OS_UNIT1: TFloatField
      FieldName = 'OS_UNIT1'
    end
    object ZQuery1OS_UNIT2: TFloatField
      FieldName = 'OS_UNIT2'
    end
    object ZQuery1OS_UNIT3: TFloatField
      FieldName = 'OS_UNIT3'
    end
    object ZQuery1OS_UNIT4: TFloatField
      FieldName = 'OS_UNIT4'
    end
    object ZQuery1OS_UNIT5: TFloatField
      FieldName = 'OS_UNIT5'
    end
    object ZQuery1OS_UNIT6: TFloatField
      FieldName = 'OS_UNIT6'
    end
    object ZQuery1OS_TOTAL1: TFloatField
      FieldName = 'OS_TOTAL1'
    end
    object ZQuery1OS_TOTAL2: TFloatField
      FieldName = 'OS_TOTAL2'
    end
    object ZQuery1OS_TOTAL3: TFloatField
      FieldName = 'OS_TOTAL3'
    end
    object ZQuery1OS_TOTAL4: TFloatField
      FieldName = 'OS_TOTAL4'
    end
    object ZQuery1OS_TOTAL5: TFloatField
      FieldName = 'OS_TOTAL5'
    end
    object ZQuery1OS_TOTAL6: TFloatField
      FieldName = 'OS_TOTAL6'
    end
    object ZQuery1OS_ISS: TFloatField
      FieldName = 'OS_ISS'
    end
    object ZQuery1OS_TOTAL_GERAL: TFloatField
      FieldName = 'OS_TOTAL_GERAL'
    end
    object ZQuery1OS_TOTAL_ISS: TFloatField
      FieldName = 'OS_TOTAL_ISS'
    end
    object ZQuery1DESCONTO_ITEM: TFloatField
      FieldName = 'DESCONTO_ITEM'
    end
    object ZQuery1OBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object ZQuery1OBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object ZQuery1CODIGOMODELO: TWideStringField
      FieldName = 'CODIGOMODELO'
      Size = 6
    end
    object ZQuery1CUSTO_VENDA: TWideStringField
      FieldName = 'CUSTO_VENDA'
      Size = 1
    end
    object ZQuery1FAT_FORMA_PGTO: TWideStringField
      FieldName = 'FAT_FORMA_PGTO'
      Size = 50
    end
    object ZQuery1FAT_CONDI_PGTO: TWideStringField
      FieldName = 'FAT_CONDI_PGTO'
      Size = 50
    end
    object ZQuery1FAT_QTDE_PRESTACAO: TIntegerField
      FieldName = 'FAT_QTDE_PRESTACAO'
    end
    object ZQuery1FAT_GERAR_RECEBER: TIntegerField
      FieldName = 'FAT_GERAR_RECEBER'
    end
    object ZQuery1FAT_GERAR_DUPLICATA: TIntegerField
      FieldName = 'FAT_GERAR_DUPLICATA'
    end
    object ZQuery1PIS: TFloatField
      FieldName = 'PIS'
    end
    object ZQuery1COFINS: TFloatField
      FieldName = 'COFINS'
    end
    object ZQuery1FAT_TIPO: TIntegerField
      FieldName = 'FAT_TIPO'
    end
    object ZQuery1CODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object ZQuery1OPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object ZQuery1INTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object ZQuery1NFE_SITUACAO: TIntegerField
      FieldName = 'NFE_SITUACAO'
    end
    object ZQuery1NFE_XML: TWideStringField
      FieldName = 'NFE_XML'
      Size = 240
    end
    object ZQuery1VAREJO_ATACADO: TWideStringField
      FieldName = 'VAREJO_ATACADO'
      Size = 1
    end
    object ZQuery1INDUSTRIALIZACAO: TWideStringField
      FieldName = 'INDUSTRIALIZACAO'
      Size = 1
    end
    object ZQuery1PERDA: TWideStringField
      FieldName = 'PERDA'
      Size = 1
    end
    object ZQuery1FATURAMENTO_DATA5: TDateTimeField
      FieldName = 'FATURAMENTO_DATA5'
    end
    object ZQuery1FATURAMENTO_DATA6: TDateTimeField
      FieldName = 'FATURAMENTO_DATA6'
    end
    object ZQuery1FATURAMENTO_NUMERO5: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO5'
      Size = 15
    end
    object ZQuery1FATURAMENTO_NUMERO6: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO6'
      Size = 15
    end
    object ZQuery1FATURAMENTO_VALOR5: TFloatField
      FieldName = 'FATURAMENTO_VALOR5'
    end
    object ZQuery1FATURAMENTO_VALOR6: TFloatField
      FieldName = 'FATURAMENTO_VALOR6'
    end
    object ZQuery1FATURAMENTO_DATA7: TDateTimeField
      FieldName = 'FATURAMENTO_DATA7'
    end
    object ZQuery1FATURAMENTO_DATA8: TDateTimeField
      FieldName = 'FATURAMENTO_DATA8'
    end
    object ZQuery1FATURAMENTO_DATA9: TDateTimeField
      FieldName = 'FATURAMENTO_DATA9'
    end
    object ZQuery1FATURAMENTO_NUMERO7: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO7'
      Size = 15
    end
    object ZQuery1FATURAMENTO_NUMERO8: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO8'
      Size = 15
    end
    object ZQuery1FATURAMENTO_NUMERO9: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO9'
      Size = 15
    end
    object ZQuery1FATURAMENTO_VALOR7: TFloatField
      FieldName = 'FATURAMENTO_VALOR7'
    end
    object ZQuery1FATURAMENTO_VALOR8: TFloatField
      FieldName = 'FATURAMENTO_VALOR8'
    end
    object ZQuery1FATURAMENTO_VALOR9: TFloatField
      FieldName = 'FATURAMENTO_VALOR9'
    end
    object ZQuery1CHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 50
    end
  end
  object qrCSOSN: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CSOSN')
    Params = <>
    Left = 702
    Top = 424
    object qrCSOSNCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object qrCSOSNDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object qrloteproduto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000131')
    Params = <>
    Left = 408
    Top = 424
    object qrloteprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrloteprodutoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrloteprodutoLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object qrloteprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrloteprodutoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrloteprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrloteprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrloteprodutoDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
    end
    object qrloteprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrloteprodutoCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrloteprodutoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrloteprodutoCODITEM: TWideStringField
      FieldName = 'CODITEM'
      Size = 6
    end
    object qrloteprodutoDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
    end
    object qrloteprodutoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrloteprodutoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrloteprodutoCODVENDA_ITEM: TWideStringField
      FieldName = 'CODVENDA_ITEM'
      Size = 6
    end
    object qrloteprodutoFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrloteprodutoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
  end
  object qrorcamento_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000057')
    Params = <>
    Left = 114
    Top = 424
    object qrorcamento_produtoestoque: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Visible = False
      Calculated = True
    end
    object qrorcamento_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qrorcamento_produtoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrorcamento_produtoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object qrorcamento_produtoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrorcamento_produtoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrorcamento_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrorcamento_produtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrorcamento_produtoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrorcamento_produtoCODORCAMENTO: TWideStringField
      FieldName = 'CODORCAMENTO'
      Size = 6
    end
    object qrorcamento_produtoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrorcamento_produtoNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrorcamento_produtoLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object qrorcamento_produtoIND: TIntegerField
      FieldName = 'IND'
    end
    object qrorcamento_produtoNUMERACAO: TWideStringField
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrorcamento_produtoCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrorcamento_produtoICMS: TWideStringField
      FieldName = 'ICMS'
      Size = 10
    end
    object qrorcamento_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrorcamento_produtoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrorcamento_produtoCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrorcamento_produtoTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrorcamento_produtoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrorcamento_produtoITEM: TWideStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object qrorcamento_produtoTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 6
    end
    object qrorcamento_produtoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrorcamento_produtoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 3
    end
    object qrorcamento_produtoSERIAL_CODINT: TWideStringField
      FieldName = 'SERIAL_CODINT'
      Size = 6
    end
    object qrorcamento_produtoGRADE_CODINT: TWideStringField
      FieldName = 'GRADE_CODINT'
      Size = 6
    end
    object qrorcamento_produtoOBS: TWideStringField
      FieldName = 'OBS'
      Size = 60
    end
  end
  object qrlotelocal: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000130')
    Params = <>
    Left = 212
    Top = 424
    object qrlotelocalCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrlotelocalCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrlotelocalLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 13
    end
    object qrlotelocalCODORCAMENTO: TWideStringField
      FieldName = 'CODORCAMENTO'
      Size = 6
    end
    object qrlotelocalQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrlotelocalCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrlotelocalCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
  end
  object ZQuery2: TZQuery
    Connection = Conexao
    Params = <>
    Left = 310
    Top = 424
  end
  object timerKey: TTimer
    Interval = 60000
    OnTimer = timerKeyTimer
    Left = 548
    Top = 140
  end
  object fxemitente: TfrxDBDataset
    UserName = 'fxemitente'
    CloseDataSource = False
    DataSet = qremitente
    BCDToCurrency = False
    Left = 112
    Top = 88
  end
  object fxrelatorio: TfrxDBDataset
    UserName = 'fxrelatorio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TEXTO_GRANDE=TEXTO_GRANDE'
      'LINHA1=LINHA1'
      'LINHA2=LINHA2'
      'LINHA3=LINHA3'
      'LINHA4=LINHA4'
      'LINHA5=LINHA5'
      'LINHA6=LINHA6'
      'LINHA7=LINHA7'
      'LINHA8=LINHA8'
      'LINHA9=LINHA9'
      'LINHA10=LINHA10'
      'VALOR1=VALOR1'
      'VALOR2=VALOR2'
      'VALOR3=VALOR3'
      'VALOR4=VALOR4'
      'VALOR5=VALOR5'
      'VALOR6=VALOR6'
      'VALOR7=VALOR7'
      'VALOR8=VALOR8'
      'VALOR9=VALOR9'
      'VALOR10=VALOR10'
      'VALOR11=VALOR11'
      'VALOR12=VALOR12'
      'VALOR13=VALOR13'
      'VALOR14=VALOR14'
      'VALOR15=VALOR15'
      'VALOR16=VALOR16'
      'VALOR17=VALOR17'
      'VALOR18=VALOR18'
      'VALOR19=VALOR19'
      'VALOR20=VALOR20'
      'VALOR21=VALOR21'
      'VALOR22=VALOR22'
      'VALOR23=VALOR23'
      'VALOR24=VALOR24'
      'VALOR25=VALOR25'
      'VALOR26=VALOR26'
      'VALOR27=VALOR27'
      'VALOR28=VALOR28'
      'VALOR29=VALOR29'
      'VALOR30=VALOR30'
      'VALOR31=VALOR31'
      'VALOR32=VALOR32'
      'VALOR33=VALOR33'
      'VALOR34=VALOR34'
      'VALOR35=VALOR35')
    DataSet = qrrelatorio
    BCDToCurrency = False
    Left = 28
    Top = 96
  end
  object qrempresa: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from C000004')
    Params = <>
    Left = 792
    Top = 152
    object qrempresaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrempresaFILIAL: TWideStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrempresaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qrempresaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrempresaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrempresaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrempresaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrempresaTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object qrempresaCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrempresaIE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrempresaSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object qrempresaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qrempresaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrempresaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrempresaCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qrempresaSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qrempresaEMPRESA_ESTADUAL: TWideStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object qrempresaOPTANTE_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object qrempresaOPTANTE_SUPER_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object qrempresaECF: TWideStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrempresaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrempresaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrempresaISS: TFloatField
      FieldName = 'ISS'
    end
    object qrempresaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrempresaRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qrempresaCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qrempresaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrempresaFARMACIA_RESP_TECNICO: TWideStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object qrempresaFARMACIA_CRF: TWideStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object qrempresaFARMACIA_CPF: TWideStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object qrempresaFARMCIA_DATA: TDateField
      FieldName = 'FARMCIA_DATA'
    end
    object qrempresaFARMACIA_UF: TWideStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object qrempresaFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object qrempresaFARMACIA_EMAIL: TWideStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object qrempresaFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrempresaFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object qrempresaCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qrempresaINDUSTRIA: TWideStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object qrempresaFARMACIA_NUMEROLICENCA: TWideStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object qrempresaCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrempresaIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qrempresaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrempresaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrempresaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qrempresaATIVIDADE: TWideStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object qrempresaCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrempresaCONTADOR_NOME: TWideStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object qrempresaCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
    end
    object qrempresaCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object qrempresaCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object qrempresaCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object qrempresaCONTADOR_ENDERECO: TWideStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object qrempresaCONTADOR_NUMERO: TWideStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object qrempresaCONTADOR_COMPLEMENTO: TWideStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object qrempresaCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object qrempresaCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object qrempresaCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object qrempresaCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object qrempresaINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qrempresaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object qrempresaCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrempresaCRT: TWideStringField
      FieldName = 'CRT'
      Size = 1
    end
    object qrempresaCONTADOR_CIDADE: TWideStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object qrempresaCONTADOR_COD_MUNICIPIO: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object qrempresaCONTADOR_UF: TWideStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object qrempresaPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object qrempresaFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object qrempresaDFIXAS: TSingleField
      FieldName = 'DFIXAS'
    end
    object qrempresaTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
    object qrempresaSERIE_CTE: TWideStringField
      FieldName = 'SERIE_CTE'
      Size = 6
    end
    object qrempresaSEQ_CTE: TWideStringField
      FieldName = 'SEQ_CTE'
      Size = 6
    end
    object qrempresaCOD_PAIS: TWideStringField
      FieldName = 'COD_PAIS'
    end
    object qrempresaPAIS: TWideStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object qrempresaHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 100
    end
  end
  object Timer1: TTimer
    Interval = 61000
    OnTimer = Timer1Timer
    Left = 632
    Top = 168
  end
  object db: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = 'C:\OneMaker\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 216
    Top = 104
  end
  object qrpassagem: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from passagem_cte')
    Params = <>
    Left = 1020
    Top = 52
    object qrpassagemCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrpassagemCODCTE: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrpassagemPASSAGEM: TWideStringField
      DisplayWidth = 20
      FieldName = 'PASSAGEM'
    end
    object qrpassagemFILTRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FILTRO'
    end
  end
  object qrnotafiscal_cte: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from NF_CTE')
    Params = <>
    Left = 935
    Top = 309
    object qrnotafiscal_ctecnpj: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'cnpj'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'CODRETIRADA_DIFERENTE'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrnotafiscal_ctenome: TStringField
      DisplayWidth = 200
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODRETIRADA_DIFERENTE'
      Visible = False
      Size = 200
      Lookup = True
    end
    object qrnotafiscal_ctelogradouro: TStringField
      DisplayWidth = 150
      FieldKind = fkLookup
      FieldName = 'logradouro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'CODRETIRADA_DIFERENTE'
      Visible = False
      Size = 150
      Lookup = True
    end
    object qrnotafiscal_ctenumero_retirada: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'numero_retirada'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERO'
      KeyFields = 'CODRETIRADA_DIFERENTE'
      Visible = False
      Size = 10
      Lookup = True
    end
    object qrnotafiscal_ctecomplemento: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'complemento'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'complEMENTO'
      KeyFields = 'CODRETIRADA_DIFERENTE'
      Visible = False
      Size = 100
      Lookup = True
    end
    object qrnotafiscal_ctebairro: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'CODRETIRADA_DIFERENTE'
      Visible = False
      Size = 100
      Lookup = True
    end
    object qrnotafiscal_cteuf: TStringField
      DisplayWidth = 2
      FieldKind = fkLookup
      FieldName = 'uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'CODRETIRADA_DIFERENTE'
      Visible = False
      Size = 2
      Lookup = True
    end
    object qrnotafiscal_ctemunicipio: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'municipio'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODRETIRADA_DIFERENTE'
      Visible = False
      Size = 100
      Lookup = True
    end
    object qrnotafiscal_cteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrnotafiscal_cteCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrnotafiscal_cteSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 6
    end
    object qrnotafiscal_cteNUMERO: TWideStringField
      FieldName = 'NUMERO'
    end
    object qrnotafiscal_cteDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrnotafiscal_cteCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrnotafiscal_cteMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 60
    end
    object qrnotafiscal_cteNR_ROMANEIO: TWideStringField
      FieldName = 'NR_ROMANEIO'
    end
    object qrnotafiscal_cteNR_PEDIDO: TWideStringField
      FieldName = 'NR_PEDIDO'
    end
    object qrnotafiscal_cteBASE_CALC_ICMS: TFloatField
      FieldName = 'BASE_CALC_ICMS'
    end
    object qrnotafiscal_cteVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotafiscal_cteBASE_CALC_ICMS_ST: TFloatField
      FieldName = 'BASE_CALC_ICMS_ST'
    end
    object qrnotafiscal_cteVALOR_ICMS_ST: TFloatField
      FieldName = 'VALOR_ICMS_ST'
    end
    object qrnotafiscal_ctePESO_TOTAL: TFloatField
      FieldName = 'PESO_TOTAL'
    end
    object qrnotafiscal_ctePIN: TWideStringField
      FieldName = 'PIN'
      Size = 10
    end
    object qrnotafiscal_cteVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrnotafiscal_cteVALOR_NOTA: TFloatField
      FieldName = 'VALOR_NOTA'
    end
    object qrnotafiscal_cteCODRETIRADA_DIFERENTE: TWideStringField
      FieldName = 'CODRETIRADA_DIFERENTE'
      Size = 6
    end
    object qrnotafiscal_cteLOCAL_RETIRADA_DIF: TWideStringField
      FieldName = 'LOCAL_RETIRADA_DIF'
      Size = 3
    end
  end
  object qrnfe_cte: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from NFE_CTE')
    Params = <>
    Left = 927
    Top = 248
    object qrnfe_cteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrnfe_cteCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrnfe_cteCHAVE_ACESSO: TWideStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 60
    end
    object qrnfe_ctePIN: TWideStringField
      FieldName = 'PIN'
    end
    object qrnfe_cteFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qroutdocs_cte: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from OUTROS_DOCS_CTE')
    Params = <>
    Left = 935
    Top = 376
    object qroutdocs_cteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qroutdocs_cteCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qroutdocs_cteTIPO: TWideStringField
      FieldName = 'TIPO'
    end
    object qroutdocs_cteDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qroutdocs_cteNUMERO: TWideStringField
      FieldName = 'NUMERO'
    end
    object qroutdocs_cteDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qroutdocs_cteFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qroutdocs_cteVALOR_DOCUMENTO: TFloatField
      FieldName = 'VALOR_DOCUMENTO'
    end
  end
  object qrcomp_cte: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from COMPONENTES_CTE')
    Params = <>
    Left = 927
    Top = 192
    object qrcomp_cteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcomp_cteCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrcomp_cteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qrcomp_cteVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrcomp_cteFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrINFCARGA_CTE: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from INF_CARGA_CTE')
    Params = <>
    Left = 935
    Top = 136
    object qrINFCARGA_CTECODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrINFCARGA_CTECODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrINFCARGA_CTECOD_UNIDADE_MED: TWideStringField
      FieldName = 'COD_UNIDADE_MED'
      Size = 15
    end
    object qrINFCARGA_CTETIPO_MEDIDA: TWideStringField
      FieldName = 'TIPO_MEDIDA'
      Size = 30
    end
    object qrINFCARGA_CTEQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrINFCARGA_CTEFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrinf_conteiner: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from INF_CONTEINER_CTE')
    Params = <>
    Left = 943
    Top = 72
    object qrinf_conteinerCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrinf_conteinerCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrinf_conteinerNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 40
    end
    object qrinf_conteinerDATA_ENTREGA: TDateTimeField
      FieldName = 'DATA_ENTREGA'
    end
    object qrinf_conteinerFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrdocs_ant_cte: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from DOCS_ANTERIOR_CTE')
    Params = <>
    Left = 1023
    Top = 248
    object qrdocs_ant_cteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrdocs_ant_cteCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrdocs_ant_cteCODEMISSOR: TWideStringField
      FieldName = 'CODEMISSOR'
      Size = 6
    end
    object qrdocs_ant_cteCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
    end
    object qrdocs_ant_cteIE: TWideStringField
      FieldName = 'IE'
    end
    object qrdocs_ant_cteUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrdocs_ant_cteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 200
    end
    object qrdocs_ant_cteFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrdoc_ant_papel: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from docs_anterior_papel_cte')
    Params = <>
    Left = 1023
    Top = 112
    object qrdoc_ant_papelCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrdoc_ant_papelCOD_DOC_ANT_CTE: TWideStringField
      FieldName = 'COD_DOC_ANT_CTE'
      Size = 6
    end
    object qrdoc_ant_papelTIPO_DOC: TWideStringField
      FieldName = 'TIPO_DOC'
      Size = 50
    end
    object qrdoc_ant_papelSERIE: TWideStringField
      FieldName = 'SERIE'
    end
    object qrdoc_ant_papelSUB_SERIE: TWideStringField
      FieldName = 'SUB_SERIE'
    end
    object qrdoc_ant_papelNUMERO_DOC: TWideStringField
      FieldName = 'NUMERO_DOC'
      Size = 2
    end
    object qrdoc_ant_papelDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrdoc_ant_papelCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrdoc_ant_papelFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrdoc_ant_nfe: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from docs_anterior_nfe_cte')
    Params = <>
    Left = 1015
    Top = 176
    object qrdoc_ant_nfeCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrdoc_ant_nfeCOD_DOC_ANT_CTE: TWideStringField
      FieldName = 'COD_DOC_ANT_CTE'
      Size = 6
    end
    object qrdoc_ant_nfeCHAVE_ACESSO: TWideStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 50
    end
    object qrdoc_ant_nfeCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrdoc_ant_nfeFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrinf_seguro: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from INF_SEGURO_CTE')
    Params = <>
    Left = 943
    Top = 448
    object qrinf_seguroCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrinf_seguroCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrinf_seguroTIPO_RESP: TWideStringField
      FieldName = 'TIPO_RESP'
      Size = 50
    end
    object qrinf_seguroNOME_SEGURADORA: TWideStringField
      FieldName = 'NOME_SEGURADORA'
      Size = 200
    end
    object qrinf_seguroNUMERO_APOLICE: TWideStringField
      FieldName = 'NUMERO_APOLICE'
      Size = 50
    end
    object qrinf_seguroNUMERO_AVERBACAO: TWideStringField
      FieldName = 'NUMERO_AVERBACAO'
      Size = 50
    end
    object qrinf_seguroVALOR_MERC_AVERB: TFloatField
      FieldName = 'VALOR_MERC_AVERB'
    end
    object qrinf_seguroFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrNF_CTE: TZQuery
    Connection = Conexao
    AfterInsert = qrNF_CTEAfterInsert
    SQL.Strings = (
      'select * from NF_CTE')
    Params = <>
    Left = 1047
    Top = 512
    object qrNF_CTENUMERO: TWideStringField
      DisplayLabel = 'N.Fiscal'
      DisplayWidth = 15
      FieldName = 'NUMERO'
    end
    object qrNF_CTECFOP: TWideStringField
      DisplayWidth = 6
      FieldName = 'CFOP'
      Size = 6
    end
    object qrNF_CTEDATA_EMISSAO: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 14
      FieldName = 'DATA_EMISSAO'
    end
    object qrNF_CTEMODELO: TWideStringField
      DisplayLabel = 'Modelo'
      DisplayWidth = 6
      FieldName = 'MODELO'
      Size = 60
    end
    object qrNF_CTESERIE: TWideStringField
      DisplayLabel = 'S'#233'rie'
      DisplayWidth = 6
      FieldName = 'SERIE'
      Size = 6
    end
    object qrNF_CTEVALOR_NOTA: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 13
      FieldName = 'VALOR_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrNF_CTEQTDE: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrNF_CTEVALOR_PRODUTOS: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 12
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrNF_CTEQTDE_VOLUMES: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'QTDE_VOLUMES'
      DisplayFormat = '###,###,##0.00'
    end
    object qrNF_CTEESPECIE: TWideStringField
      DisplayLabel = 'Esp'#233'cie'
      DisplayWidth = 12
      FieldName = 'ESPECIE'
      Size = 60
    end
    object qrNF_CTEMARCA: TWideStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 15
      FieldName = 'MARCA'
      Size = 60
    end
    object qrNF_CTECODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrNF_CTECODCTE: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCTE'
      Visible = False
      Size = 6
    end
    object qrNF_CTENR_ROMANEIO: TWideStringField
      DisplayWidth = 20
      FieldName = 'NR_ROMANEIO'
      Visible = False
    end
    object qrNF_CTENR_PEDIDO: TWideStringField
      DisplayWidth = 20
      FieldName = 'NR_PEDIDO'
      Visible = False
    end
    object qrNF_CTEBASE_CALC_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_CALC_ICMS'
      Visible = False
    end
    object qrNF_CTEVALOR_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrNF_CTEBASE_CALC_ICMS_ST: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_CALC_ICMS_ST'
      Visible = False
    end
    object qrNF_CTEVALOR_ICMS_ST: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ICMS_ST'
      Visible = False
    end
    object qrNF_CTEPESO_TOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'PESO_TOTAL'
      Visible = False
    end
    object qrNF_CTEPIN: TWideStringField
      DisplayWidth = 10
      FieldName = 'PIN'
      Visible = False
      Size = 10
    end
    object qrNF_CTELOCAL_RETIRADA_DIF: TWideStringField
      DisplayWidth = 1
      FieldName = 'LOCAL_RETIRADA_DIF'
      Visible = False
      Size = 1
    end
    object qrNF_CTECODRETIRADA_DIFERENTE: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODRETIRADA_DIFERENTE'
      Visible = False
      Size = 6
    end
    object qrNF_CTEVALOR_DOCUMENTO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_DOCUMENTO'
      Visible = False
    end
  end
  object qrveiculosnovos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from veiculos_novos_cte')
    Params = <>
    Left = 832
    Top = 493
    object qrveiculosnovosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrveiculosnovosCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrveiculosnovosCOR: TWideStringField
      FieldName = 'COR'
    end
    object qrveiculosnovosDESCRICAO_COR: TWideStringField
      FieldName = 'DESCRICAO_COR'
      Size = 200
    end
    object qrveiculosnovosCOD_MARC_MODELO: TWideStringField
      FieldName = 'COD_MARC_MODELO'
      Size = 50
    end
    object qrveiculosnovosCHASSI: TWideStringField
      FieldName = 'CHASSI'
      Size = 200
    end
    object qrveiculosnovosVALOR_UNIT: TFloatField
      FieldName = 'VALOR_UNIT'
    end
    object qrveiculosnovosFRETE_UNIT: TFloatField
      FieldName = 'FRETE_UNIT'
    end
    object qrveiculosnovosFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrobs_cont_cte: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from OBS_CONT_CTE')
    Params = <>
    Left = 1031
    Top = 376
    object qrobs_cont_cteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrobs_cont_cteCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrobs_cont_cteIDENTIFICAR: TWideStringField
      FieldName = 'IDENTIFICAR'
      Size = 50
    end
    object qrobs_cont_cteOBS: TWideStringField
      FieldName = 'OBS'
      Size = 100
    end
    object qrobs_cont_cteFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrobs_fisco_cte: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from OBS_FISCO_CTE')
    Params = <>
    Left = 1039
    Top = 440
    object qrobs_fisco_cteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrobs_fisco_cteCODCTE: TWideStringField
      FieldName = 'CODCTE'
      Size = 6
    end
    object qrobs_fisco_cteIDENTIFICAR: TWideStringField
      FieldName = 'IDENTIFICAR'
      Size = 50
    end
    object qrobs_fisco_cteOBS: TWideStringField
      FieldName = 'OBS'
      Size = 100
    end
    object qrobs_fisco_cteFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrlacre_conteiner: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from INF_LACRE_CONTEINER_CTE')
    Params = <>
    Left = 1031
    Top = 320
    object qrlacre_conteinerCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrlacre_conteinerCODCONTEINER: TWideStringField
      FieldName = 'CODCONTEINER'
      Size = 6
    end
    object qrlacre_conteinerLACRE: TWideStringField
      FieldName = 'LACRE'
      Size = 100
    end
    object qrlacre_conteinerFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
  end
  object qrperigoso_cte: TZQuery
    Connection = Conexao
    Params = <>
    Left = 792
    Top = 288
  end
  object conn: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver160.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=16.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=C:\OneMaker\Server\BD\BASE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 296
    Top = 104
  end
  object SQLDataSet1: TSQLDataSet
    Params = <>
    Left = 1047
    Top = 592
  end
  object DataSetProvider1: TDataSetProvider
    Left = 1047
    Top = 648
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1064
    Top = 752
  end
  object SDSos: TSQLDataSet
    CommandText = 'select * from c000051'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = conn
    Left = 808
    Top = 936
  end
  object DSpos: TDataSetProvider
    DataSet = SDSos
    UpdateMode = upWhereKeyOnly
    Left = 808
    Top = 992
  end
  object CDSos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSpos'
    Left = 808
    Top = 1040
    object CDSosatendente: TStringField
      FieldKind = fkLookup
      FieldName = 'atendente'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'codatendente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSosveiculo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'veiculo'
      LookupDataSet = qrveiculo
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codveiculo'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSoscliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 100
      Lookup = True
    end
    object CDSosdetectado_tecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'detectado_tecnico'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'DETECTADO_CODTECNICO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSossetor: TStringField
      FieldKind = fkLookup
      FieldName = 'setor'
      LookupDataSet = qrsetor
      LookupKeyFields = 'codigo'
      LookupResultField = 'setor'
      KeyFields = 'codsetor'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSoscliente_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'endereco'
      KeyFields = 'codcliente'
      Visible = False
      Size = 50
      Lookup = True
    end
    object CDSoscliente_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'bairro'
      KeyFields = 'codcliente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSoscliente_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codcliente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSoscliente_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'uf'
      KeyFields = 'codcliente'
      Visible = False
      Size = 2
      Lookup = True
    end
    object CDSoscliente_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codcliente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object CDSoscliente_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codcliente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object CDSoscliente_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'cep'
      KeyFields = 'codcliente'
      Visible = False
      Size = 12
      Lookup = True
    end
    object CDSoscliente_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'codcliente'
      Visible = False
      Lookup = True
    end
    object CDSosStringField: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'terceiro'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codterceiro'
      Visible = False
      Size = 30
      Lookup = True
    end
    object CDSosCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSosDATA: TDateField
      FieldName = 'DATA'
    end
    object CDSosCODATENDENTE: TStringField
      FieldName = 'CODATENDENTE'
      Size = 6
    end
    object CDSosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 7
    end
    object CDSosCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object CDSosSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 30
    end
    object CDSosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object CDSosMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object CDSosSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object CDSosATENDIMENTO: TStringField
      FieldName = 'ATENDIMENTO'
      Size = 10
    end
    object CDSosDEFEITO: TBlobField
      FieldName = 'DEFEITO'
      Size = 1
    end
    object CDSosOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object CDSosDETECTADO: TBlobField
      FieldName = 'DETECTADO'
      Size = 1
    end
    object qrorcamentoCDSosDETECTADO_DATA: TDateField
      FieldName = 'DETECTADO_DATA'
    end
    object CDSosDETECTADO_CODTECNICO: TStringField
      FieldName = 'DETECTADO_CODTECNICO'
      Size = 6
    end
    object CDSosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 35
    end
    object qrorcamentoCDSosCONCLUSAO_DATA: TDateField
      FieldName = 'CONCLUSAO_DATA'
    end
    object qrorcamentoCDSosCONCLUSAO_ENTREGUE: TDateField
      FieldName = 'CONCLUSAO_ENTREGUE'
    end
    object CDSosRETIRADO_POR: TStringField
      FieldName = 'RETIRADO_POR'
      Size = 30
    end
    object CDSosSERVICO_SUBTOTAL: TFMTBCDField
      FieldName = 'SERVICO_SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosSERVICO_DESCONTO: TFMTBCDField
      FieldName = 'SERVICO_DESCONTO'
      Precision = 18
      Size = 2
    end
    object CDSosSERVICO_TOTAL: TFMTBCDField
      FieldName = 'SERVICO_TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosPRODUTO_SUBTOTAL: TFMTBCDField
      FieldName = 'PRODUTO_SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosPRODUTO_DESCONTO: TFMTBCDField
      FieldName = 'PRODUTO_DESCONTO'
      Precision = 18
      Size = 2
    end
    object CDSosPRODUTO_TOTAL: TFMTBCDField
      FieldName = 'PRODUTO_TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosCODVEICULO: TStringField
      FieldName = 'CODVEICULO'
      Size = 6
    end
    object CDSosKM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
    end
    object CDSosKM_FINAL: TIntegerField
      FieldName = 'KM_FINAL'
    end
    object CDSosDESLOC_COMBUSTIVEL: TFMTBCDField
      FieldName = 'DESLOC_COMBUSTIVEL'
      Precision = 18
      Size = 2
    end
    object CDSosDESLOC_REFEICAO: TFMTBCDField
      FieldName = 'DESLOC_REFEICAO'
      Precision = 18
      Size = 2
    end
    object CDSosDESLOC_HOSPEDAGEM: TFMTBCDField
      FieldName = 'DESLOC_HOSPEDAGEM'
      Precision = 18
      Size = 2
    end
    object CDSosDESLOC_TOTAL: TFMTBCDField
      FieldName = 'DESLOC_TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosCODTERCEIRO: TStringField
      FieldName = 'CODTERCEIRO'
      Size = 6
    end
    object CDSosTERCEIRO_CONTATO: TStringField
      FieldName = 'TERCEIRO_CONTATO'
      Size = 30
    end
    object CDSosTERCEIRO_VALOR: TFMTBCDField
      FieldName = 'TERCEIRO_VALOR'
      Precision = 18
      Size = 2
    end
    object CDSosTERCEIRO_COMISSAO: TFMTBCDField
      FieldName = 'TERCEIRO_COMISSAO'
      Precision = 18
      Size = 2
    end
    object CDSosTERCEIRO_TOTAL: TFMTBCDField
      FieldName = 'TERCEIRO_TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosTERCEIRO_OBS: TBlobField
      FieldName = 'TERCEIRO_OBS'
      Size = 1
    end
    object CDSosSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object CDSosACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object CDSosTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_DINHEIRO: TFMTBCDField
      FieldName = 'MEIO_DINHEIRO'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_CHEQUEAV: TFMTBCDField
      FieldName = 'MEIO_CHEQUEAV'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_CHEQUEAP: TFMTBCDField
      FieldName = 'MEIO_CHEQUEAP'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_CARTAOCRED: TFMTBCDField
      FieldName = 'MEIO_CARTAOCRED'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_CARTAODEB: TFMTBCDField
      FieldName = 'MEIO_CARTAODEB'
      Precision = 18
      Size = 2
    end
    object CDSosMEIO_CREDIARIO: TFMTBCDField
      FieldName = 'MEIO_CREDIARIO'
      Precision = 18
      Size = 2
    end
    object CDSosCODSETOR: TStringField
      FieldName = 'CODSETOR'
      Size = 6
    end
    object CDSosCUPOMFISCAL: TIntegerField
      FieldName = 'CUPOMFISCAL'
    end
    object CDSosST: TIntegerField
      FieldName = 'ST'
    end
    object CDSosCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 40
    end
    object CDSosCOR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object CDSosCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 10
    end
    object CDSosCOMBUSTIVEL_NIVEL: TFMTBCDField
      FieldName = 'COMBUSTIVEL_NIVEL'
      Precision = 18
      Size = 2
    end
    object CDSosNUMERO_CUPOM_FISCAL: TIntegerField
      FieldName = 'NUMERO_CUPOM_FISCAL'
    end
    object CDSosCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object CDSosDETECTADO_HORA: TStringField
      FieldName = 'DETECTADO_HORA'
      Size = 5
    end
    object CDSosHORA: TStringField
      FieldName = 'HORA'
    end
    object CDSosINTERVENCOES: TBlobField
      FieldName = 'INTERVENCOES'
      Size = 1
    end
    object CDSosDAV: TStringField
      FieldName = 'DAV'
      Size = 10
    end
    object CDSosDAV_IMPRESSO: TIntegerField
      FieldName = 'DAV_IMPRESSO'
    end
    object CDSosDAV_ATUAL: TStringField
      FieldName = 'DAV_ATUAL'
      Size = 15
    end
    object CDSosCODFUN: TStringField
      FieldName = 'CODFUN'
      Size = 6
    end
  end
  object boleto: TACBrBoleto
    Banco.Numero = 1
    Banco.TamanhoMaximoNossoNum = 0
    Banco.TipoCobranca = cobBancoDoBrasil
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Cedente.TipoInscricao = pJuridica
    DirArqRemessa = 'C:\OneMaker\SERVER\cob\Remessa'
    DirArqRetorno = 'C:\OneMaker\SERVER\cob\Retorno'
    NumeroArquivo = 0
    ACBrBoletoFC = BoletoFR
    Left = 184
    Top = 24
  end
  object BoletoFR: TACBrBoletoFCFR
    ACBrBoleto = boleto
    DirLogo = 'C:\OneMaker\SERVER\img\Logos\Colorido'
    SoftwareHouse = 'OneMaker'
    FastReportFile = 'C:\OneMaker\SERVER\rel\Boleto.fr3'
    ModoThread = False
    IncorporarBackgroundPdf = False
    IncorporarFontesPdf = False
    Left = 272
    Top = 24
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41543.938289328700000000
    ReportOptions.LastChange = 41543.938289328700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 328
    Top = 24
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qrtanque: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CADTANQUE')
    Params = <>
    Left = 440
    Top = 32
    object qrtanqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrtanqueCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object qrtanqueCAP_MAXIMA: TIntegerField
      FieldName = 'CAP_MAXIMA'
      Required = True
    end
    object qrtanqueCAP_MINIMA: TIntegerField
      FieldName = 'CAP_MINIMA'
    end
    object qrtanqueNUMERO_FISICO: TIntegerField
      FieldName = 'NUMERO_FISICO'
      Required = True
    end
    object qrtanqueESTOQUE_INICIAL: TFloatField
      FieldName = 'ESTOQUE_INICIAL'
    end
    object qrtanqueESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
    end
    object qrtanqueESTOQUE_MEDICAO: TFloatField
      FieldName = 'ESTOQUE_MEDICAO'
    end
    object qrtanqueVALOR_ENTRADA: TFloatField
      FieldName = 'VALOR_ENTRADA'
    end
    object qrtanqueVALOR_SAIDA: TFloatField
      FieldName = 'VALOR_SAIDA'
    end
    object qrtanqueDATA_ULT_ENT: TDateTimeField
      FieldName = 'DATA_ULT_ENT'
    end
    object qrtanqueDATA_ULT_SAI: TDateTimeField
      FieldName = 'DATA_ULT_SAI'
    end
    object qrtanqueNUMERO_NF: TWideStringField
      FieldName = 'NUMERO_NF'
      Size = 10
    end
  end
  object qrBicos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CADBICO')
    Params = <>
    Left = 384
    Top = 32
    object qrBicosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrBicosCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object qrBicosPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object qrBicosCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
    end
    object qrBicosENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
    end
    object qrBicosTANQUE: TIntegerField
      FieldName = 'TANQUE'
    end
  end
  object qrBombas: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CADBOMBA')
    Params = <>
    Left = 488
    Top = 32
    object qrBombasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrBombasCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object qrBombasNOME_COMBUSTIVEL: TWideStringField
      FieldName = 'NOME_COMBUSTIVEL'
      Size = 30
    end
    object qrBombasSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 30
    end
    object qrBombasFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Size = 30
    end
    object qrBombasMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 30
    end
  end
  object qrCombustivel: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CADCOMBUSTIVEL')
    Params = <>
    Left = 552
    Top = 32
    object qrCombustivelNOME: TWideStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qrCombustivelPR_COMPRA: TFloatField
      FieldName = 'PR_COMPRA'
    end
    object qrCombustivelPR_CUSTO: TFloatField
      FieldName = 'PR_CUSTO'
    end
    object qrCombustivelPR_VENDA: TFloatField
      FieldName = 'PR_VENDA'
    end
    object qrCombustivelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object qrLivroLMC: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from LMC_ABERFECH')
    Params = <>
    Left = 624
    Top = 32
    object qrLivroLMCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrLivroLMCCOD_FILIAL: TWideStringField
      FieldName = 'COD_FILIAL'
      Size = 6
    end
    object qrLivroLMCFILIAL: TWideStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrLivroLMCENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrLivroLMCBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrLivroLMCCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrLivroLMCCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrLivroLMCUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrLivroLMCIE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrLivroLMCCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrLivroLMCIM: TWideStringField
      FieldName = 'IM'
    end
    object qrLivroLMCDISTRIBUIDORA: TWideStringField
      FieldName = 'DISTRIBUIDORA'
      Size = 50
    end
    object qrLivroLMCCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
    end
    object qrLivroLMCCOD_COMBUSTIVEL: TIntegerField
      FieldName = 'COD_COMBUSTIVEL'
    end
    object qrLivroLMCNOME_COMBUSTIVEL: TWideStringField
      FieldName = 'NOME_COMBUSTIVEL'
      Size = 30
    end
    object qrLivroLMCNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrLivroLMCNUMERO_JUNTACOM: TWideStringField
      FieldName = 'NUMERO_JUNTACOM'
      Size = 10
    end
    object qrLivroLMCDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object qrLivroLMCNUMERO_ORDEM: TIntegerField
      FieldName = 'NUMERO_ORDEM'
    end
    object qrLivroLMCPAGINA_ATUAL: TIntegerField
      FieldName = 'PAGINA_ATUAL'
    end
  end
  object qrLMC: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from LMC')
    Params = <>
    Left = 696
    Top = 32
    object qrLMCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrLMCTANQUE: TIntegerField
      FieldName = 'TANQUE'
    end
    object qrLMCBOMBA: TIntegerField
      FieldName = 'BOMBA'
    end
    object qrLMCBICO: TIntegerField
      FieldName = 'BICO'
    end
    object qrLMCABERTURA: TIntegerField
      FieldName = 'ABERTURA'
    end
    object qrLMCENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
    end
    object qrLMCCOMBUSTIVEL: TIntegerField
      FieldName = 'COMBUSTIVEL'
    end
    object qrLMCDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrLMCPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object qrLMCQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrLMCTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrLMCSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrLMCNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object qrLMCNOTAFISCAL1: TWideStringField
      FieldName = 'NOTAFISCAL1'
      Size = 10
    end
    object qrLMCNOTAFISCAL2: TWideStringField
      FieldName = 'NOTAFISCAL2'
      Size = 10
    end
    object qrLMCNOTAFISCAL3: TWideStringField
      FieldName = 'NOTAFISCAL3'
      Size = 10
    end
    object qrLMCNOTAFISCAL4: TWideStringField
      FieldName = 'NOTAFISCAL4'
      Size = 10
    end
    object qrLMCQUANTNF1: TIntegerField
      FieldName = 'QUANTNF1'
    end
    object qrLMCQUANTNF2: TIntegerField
      FieldName = 'QUANTNF2'
    end
    object qrLMCQUANTNF3: TIntegerField
      FieldName = 'QUANTNF3'
    end
    object qrLMCQUANTNF4: TIntegerField
      FieldName = 'QUANTNF4'
    end
    object qrLMCBICO1: TIntegerField
      FieldName = 'BICO1'
    end
    object qrLMCBICO2: TIntegerField
      FieldName = 'BICO2'
    end
    object qrLMCBICO3: TIntegerField
      FieldName = 'BICO3'
    end
    object qrLMCBICO4: TIntegerField
      FieldName = 'BICO4'
    end
    object qrLMCBICO5: TIntegerField
      FieldName = 'BICO5'
    end
    object qrLMCBICO6: TIntegerField
      FieldName = 'BICO6'
    end
    object qrLMCBICO7: TIntegerField
      FieldName = 'BICO7'
    end
    object qrLMCBICO8: TIntegerField
      FieldName = 'BICO8'
    end
    object qrLMCABER_BICO1: TIntegerField
      FieldName = 'ABER_BICO1'
    end
    object qrLMCABER_BICO2: TIntegerField
      FieldName = 'ABER_BICO2'
    end
    object qrLMCABER_BICO3: TIntegerField
      FieldName = 'ABER_BICO3'
    end
    object qrLMCABER_BICO4: TIntegerField
      FieldName = 'ABER_BICO4'
    end
    object qrLMCABER_BICO5: TIntegerField
      FieldName = 'ABER_BICO5'
    end
    object qrLMCABER_BICO6: TIntegerField
      FieldName = 'ABER_BICO6'
    end
    object qrLMCABER_BICO7: TIntegerField
      FieldName = 'ABER_BICO7'
    end
    object qrLMCABER_BICO8: TIntegerField
      FieldName = 'ABER_BICO8'
    end
    object qrLMCENC_BICO1: TIntegerField
      FieldName = 'ENC_BICO1'
    end
    object qrLMCENC_BICO2: TIntegerField
      FieldName = 'ENC_BICO2'
    end
    object qrLMCENC_BICO3: TIntegerField
      FieldName = 'ENC_BICO3'
    end
    object qrLMCENC_BICO4: TIntegerField
      FieldName = 'ENC_BICO4'
    end
    object qrLMCENC_BICO5: TIntegerField
      FieldName = 'ENC_BICO5'
    end
    object qrLMCENC_BICO6: TIntegerField
      FieldName = 'ENC_BICO6'
    end
    object qrLMCENC_BICO7: TIntegerField
      FieldName = 'ENC_BICO7'
    end
    object qrLMCENC_BICO8: TIntegerField
      FieldName = 'ENC_BICO8'
    end
    object qrLMCAFER_BICO1: TIntegerField
      FieldName = 'AFER_BICO1'
    end
    object qrLMCAFER_BICO2: TIntegerField
      FieldName = 'AFER_BICO2'
    end
    object qrLMCAFER_BICO3: TIntegerField
      FieldName = 'AFER_BICO3'
    end
    object qrLMCAFER_BICO4: TIntegerField
      FieldName = 'AFER_BICO4'
    end
    object qrLMCAFER_BICO5: TIntegerField
      FieldName = 'AFER_BICO5'
    end
    object qrLMCAFER_BICO6: TIntegerField
      FieldName = 'AFER_BICO6'
    end
    object qrLMCAFER_BICO7: TIntegerField
      FieldName = 'AFER_BICO7'
    end
    object qrLMCAFER_BICO8: TIntegerField
      FieldName = 'AFER_BICO8'
    end
    object qrLMCQTEVEND_1: TIntegerField
      FieldName = 'QTEVEND_1'
    end
    object qrLMCQTEVEND_2: TIntegerField
      FieldName = 'QTEVEND_2'
    end
    object qrLMCQTEVEND_3: TIntegerField
      FieldName = 'QTEVEND_3'
    end
    object qrLMCQTEVEND_4: TIntegerField
      FieldName = 'QTEVEND_4'
    end
    object qrLMCQTEVEND_5: TIntegerField
      FieldName = 'QTEVEND_5'
    end
    object qrLMCQTEVEND_6: TIntegerField
      FieldName = 'QTEVEND_6'
    end
    object qrLMCQTEVEND_7: TIntegerField
      FieldName = 'QTEVEND_7'
    end
    object qrLMCQTEVEND_8: TIntegerField
      FieldName = 'QTEVEND_8'
    end
    object qrLMCTOTALVEND_1: TFloatField
      FieldName = 'TOTALVEND_1'
    end
    object qrLMCTOTALVEND_2: TFloatField
      FieldName = 'TOTALVEND_2'
    end
    object qrLMCTOTALVEND_3: TFloatField
      FieldName = 'TOTALVEND_3'
    end
    object qrLMCTOTALVEND_4: TFloatField
      FieldName = 'TOTALVEND_4'
    end
    object qrLMCTOTALVEND_5: TFloatField
      FieldName = 'TOTALVEND_5'
    end
    object qrLMCTOTALVEND_6: TFloatField
      FieldName = 'TOTALVEND_6'
    end
    object qrLMCTOTALVEND_7: TFloatField
      FieldName = 'TOTALVEND_7'
    end
    object qrLMCTOTALVEND_8: TFloatField
      FieldName = 'TOTALVEND_8'
    end
    object qrLMCESTOQ_ABERTURA: TIntegerField
      FieldName = 'ESTOQ_ABERTURA'
    end
    object qrLMCESTOQ_ESCRITURAL: TIntegerField
      FieldName = 'ESTOQ_ESCRITURAL'
    end
    object qrLMCESTOQ_FECHAMENTO: TIntegerField
      FieldName = 'ESTOQ_FECHAMENTO'
    end
    object qrLMCPERDA_SOBRA: TIntegerField
      FieldName = 'PERDA_SOBRA'
    end
    object qrLMCOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object qrLMCPAGINA: TIntegerField
      FieldName = 'PAGINA'
    end
  end
  object qrENCERRANTES: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from ENCERRANTES')
    Params = <>
    Left = 760
    Top = 32
    object qrENCERRANTESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrENCERRANTESDATA: TDateField
      FieldName = 'DATA'
    end
    object qrENCERRANTESCOD_BICO: TIntegerField
      FieldName = 'COD_BICO'
    end
    object qrENCERRANTESABERTURA: TIntegerField
      FieldName = 'ABERTURA'
    end
    object qrENCERRANTESENCERRAMENTO: TIntegerField
      FieldName = 'ENCERRAMENTO'
    end
    object qrENCERRANTESQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrENCERRANTESAFERICAO: TFloatField
      FieldName = 'AFERICAO'
    end
    object qrENCERRANTESPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object qrENCERRANTESVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrENCERRANTESCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object qrENCERRANTESSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
  end
  object qrCest: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CEST')
    Params = <>
    Left = 802
    Top = 368
    object qrCestCEST: TWideStringField
      DisplayWidth = 7
      FieldName = 'CEST'
      Required = True
      Size = 7
    end
    object qrCestDESCRICAO: TWideStringField
      DisplayWidth = 512
      FieldName = 'DESCRICAO'
      Size = 512
    end
    object qrCestNCM: TWideStringField
      DisplayWidth = 8
      FieldName = 'NCM'
      Visible = False
      Size = 8
    end
  end
  object info_clientes_usercontrol: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from UCTABUSERS')
    Params = <>
    Left = 504
    Top = 1128
    object info_clientes_usercontrolFOTO: TWideMemoField
      FieldName = 'FOTO'
      BlobType = ftWideMemo
    end
  end
  object qrSequencias: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000000')
    Params = <>
    Left = 855
    Top = 601
    object qrSequenciasCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrSequenciasTABELA: TWideStringField
      FieldName = 'TABELA'
      Size = 30
    end
    object qrSequenciasSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
  end
  object ZQry_ImpVenda: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select '
      '    c000007.nome as cliente,'
      '    c000007.apelido as fantasia,'
      '    c000007.uf,'
      '    c000007.cep,'
      '    c000007.cidade,'
      '    c000007.bairro,'
      '    c000007.endereco,'
      '    c000007.telefone1,'
      '    c000007.telefone2,'
      '    c000007.email,'
      '    c000007.celular,'
      '    c000007.telefone3,'
      '    c000007.rg,'
      '    c000007.cpf,'
      '    c000007.numero,'
      '    c000048.codigo,'
      '    c000048.codcaixa,'
      '    c000048.codvendedor,'
      '    c000048.data,'
      '    c000048.codcliente,'
      '    c000048.obs,'
      '    c000048.meio_dinheiro,'
      '    c000048.meio_chequeav,'
      '    c000048.meio_chequeap,'
      '    c000048.meio_cartaocred,'
      '    c000048.meio_cartaodeb,'
      '    c000048.meio_crediario,'
      '    c000048.subtotal,'
      '    c000048.desconto,'
      '    c000048.acrescimo,'
      '    c000048.total,'
      '    c000048.cupom_fiscal,'
      '    c000048.numero_cupom_fiscal,'
      '    c000048.retirado,'
      '    c000048.meio_convenio,'
      '    c000048.p5,'
      '    c000048.p3,'
      '    c000048.meio_financeira,'
      '    c000048.cod_financeira,'
      '    c000048.cod_financeira_lancto,'
      '    c000048.cod_financeira_lacto,'
      '    c000048.codconvenio,'
      '    c000048.situacao,'
      '    c000048.codtransportador,'
      '    c000048.codveiculo,'
      '    c000048.frete_valor,'
      '    c000048.frete_obs,'
      '    c000048.frete_lancar,'
      '    c000048.ecf_serial,'
      '    c000048.codnfsaida,'
      '    c000048.atacado_varejo,'
      '    c000048.nrvenda,'
      '    c000048.filtro,'
      '    c000048.codfilial,'
      '    c000048.codlocal,'
      '    c000008.nome as vendedor'
      'from c000048'
      '   inner join c000007 on (c000048.codcliente = c000007.codigo)'
      '   inner join c000008 on (c000048.codvendedor = c000008.codigo)'
      ''
      'where c000048.codigo = :numerovenda')
    Params = <
      item
        DataType = ftWideString
        Name = 'numerovenda'
        ParamType = ptUnknown
        Value = '000276'
      end>
    Left = 1160
    Top = 48
    ParamData = <
      item
        DataType = ftWideString
        Name = 'numerovenda'
        ParamType = ptUnknown
        Value = '000276'
      end>
    object ZQry_ImpVendaCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object ZQry_ImpVendaFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object ZQry_ImpVendaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object ZQry_ImpVendaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object ZQry_ImpVendaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object ZQry_ImpVendaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object ZQry_ImpVendaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object ZQry_ImpVendaTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object ZQry_ImpVendaTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object ZQry_ImpVendaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ZQry_ImpVendaCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object ZQry_ImpVendaTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object ZQry_ImpVendaRG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object ZQry_ImpVendaCPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object ZQry_ImpVendaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object ZQry_ImpVendaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object ZQry_ImpVendaCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object ZQry_ImpVendaCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object ZQry_ImpVendaDATA: TDateField
      FieldName = 'DATA'
    end
    object ZQry_ImpVendaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object ZQry_ImpVendaOBS: TWideStringField
      FieldName = 'OBS'
      Size = 50
    end
    object ZQry_ImpVendaMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
    end
    object ZQry_ImpVendaMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
    end
    object ZQry_ImpVendaMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
    end
    object ZQry_ImpVendaMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
    end
    object ZQry_ImpVendaMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
    end
    object ZQry_ImpVendaMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
    end
    object ZQry_ImpVendaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object ZQry_ImpVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ZQry_ImpVendaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object ZQry_ImpVendaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object ZQry_ImpVendaCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
    end
    object ZQry_ImpVendaNUMERO_CUPOM_FISCAL: TWideStringField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object ZQry_ImpVendaRETIRADO: TWideStringField
      FieldName = 'RETIRADO'
      Size = 50
    end
    object ZQry_ImpVendaMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
    end
    object ZQry_ImpVendaP5: TFloatField
      FieldName = 'P5'
    end
    object ZQry_ImpVendaP3: TFloatField
      FieldName = 'P3'
    end
    object ZQry_ImpVendaMEIO_FINANCEIRA: TFloatField
      FieldName = 'MEIO_FINANCEIRA'
    end
    object ZQry_ImpVendaCOD_FINANCEIRA: TWideStringField
      FieldName = 'COD_FINANCEIRA'
      Size = 10
    end
    object ZQry_ImpVendaCOD_FINANCEIRA_LANCTO: TWideStringField
      FieldName = 'COD_FINANCEIRA_LANCTO'
      Size = 10
    end
    object ZQry_ImpVendaCOD_FINANCEIRA_LACTO: TWideStringField
      FieldName = 'COD_FINANCEIRA_LACTO'
      Size = 10
    end
    object ZQry_ImpVendaCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 10
    end
    object ZQry_ImpVendaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object ZQry_ImpVendaCODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 10
    end
    object ZQry_ImpVendaCODVEICULO: TWideStringField
      FieldName = 'CODVEICULO'
      Size = 10
    end
    object ZQry_ImpVendaFRETE_VALOR: TFloatField
      FieldName = 'FRETE_VALOR'
    end
    object ZQry_ImpVendaFRETE_OBS: TWideStringField
      FieldName = 'FRETE_OBS'
      Size = 80
    end
    object ZQry_ImpVendaFRETE_LANCAR: TIntegerField
      FieldName = 'FRETE_LANCAR'
    end
    object ZQry_ImpVendaECF_SERIAL: TWideStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object ZQry_ImpVendaCODNFSAIDA: TWideStringField
      FieldName = 'CODNFSAIDA'
      Size = 10
    end
    object ZQry_ImpVendaATACADO_VAREJO: TSmallintField
      FieldName = 'ATACADO_VAREJO'
      Required = True
    end
    object ZQry_ImpVendaNRVENDA: TWideStringField
      FieldName = 'NRVENDA'
      Size = 6
    end
    object ZQry_ImpVendaFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object ZQry_ImpVendaCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 10
    end
    object ZQry_ImpVendaCODLOCAL: TWideStringField
      FieldName = 'CODLOCAL'
      Size = 10
    end
    object ZQry_ImpVendaVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 80
    end
  end
  object ZQry_ImpVenda_Itens: TZQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select * from c000032 where codnota =:CODIGO_VENDA and codclient' +
        'e =:CODCLIENTE')
    Params = <
      item
        DataType = ftWideString
        Name = 'CODIGO_VENDA'
        ParamType = ptUnknown
        Value = '000276'
      end
      item
        DataType = ftWideString
        Name = 'CODCLIENTE'
        ParamType = ptUnknown
        Value = '000002'
      end>
    Left = 1160
    Top = 96
    ParamData = <
      item
        DataType = ftWideString
        Name = 'CODIGO_VENDA'
        ParamType = ptUnknown
        Value = '000276'
      end
      item
        DataType = ftWideString
        Name = 'CODCLIENTE'
        ParamType = ptUnknown
        Value = '000002'
      end>
    object ZQry_ImpVenda_ItensCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object ZQry_ImpVenda_ItensCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 30
    end
    object ZQry_ImpVenda_ItensCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
    end
    object ZQry_ImpVenda_ItensUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object ZQry_ImpVenda_ItensTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object ZQry_ImpVenda_ItensICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ZQry_ImpVenda_ItensIPI: TFloatField
      FieldName = 'IPI'
    end
    object ZQry_ImpVenda_ItensCFOP: TWideStringField
      FieldName = 'CFOP'
    end
    object ZQry_ImpVenda_ItensDATA: TDateField
      FieldName = 'DATA'
    end
    object ZQry_ImpVenda_ItensNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
    end
    object ZQry_ImpVenda_ItensCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
    end
    object ZQry_ImpVenda_ItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ZQry_ImpVenda_ItensACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object ZQry_ImpVenda_ItensMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object ZQry_ImpVenda_ItensCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
    end
    object ZQry_ImpVenda_ItensCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
    end
    object ZQry_ImpVenda_ItensSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object ZQry_ImpVenda_ItensUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object ZQry_ImpVenda_ItensQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object ZQry_ImpVenda_ItensVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object ZQry_ImpVenda_ItensICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object ZQry_ImpVenda_ItensBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object ZQry_ImpVenda_ItensVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object ZQry_ImpVenda_ItensSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object ZQry_ImpVenda_ItensECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
      Size = 30
    end
    object ZQry_ImpVenda_ItensECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object ZQry_ImpVenda_ItensCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 10
    end
    object ZQry_ImpVenda_ItensCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object ZQry_ImpVenda_ItensCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
    end
    object ZQry_ImpVenda_ItensCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
    end
    object ZQry_ImpVenda_ItensALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object ZQry_ImpVenda_ItensCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object ZQry_ImpVenda_ItensLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 30
    end
    object ZQry_ImpVenda_ItensMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object ZQry_ImpVenda_ItensLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object ZQry_ImpVenda_ItensVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object ZQry_ImpVenda_ItensCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 40
    end
    object ZQry_ImpVenda_ItensMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object ZQry_ImpVenda_ItensCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object ZQry_ImpVenda_ItensPIS: TFloatField
      FieldName = 'PIS'
    end
    object ZQry_ImpVenda_ItensCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object ZQry_ImpVenda_ItensLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 30
    end
    object ZQry_ImpVenda_ItensCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
    end
    object ZQry_ImpVenda_ItensTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object ZQry_ImpVenda_ItensCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 10
    end
    object ZQry_ImpVenda_ItensORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object ZQry_ImpVenda_ItensDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 80
    end
    object ZQry_ImpVenda_ItensPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object ZQry_ImpVenda_ItensCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
    end
  end
  object ppDB_ImpVenda: TppDBPipeline
    DataSource = DS_ImpVenda
    UserName = 'DB_ImpVenda'
    Left = 1209
    Top = 48
  end
  object DS_ImpVenda: TDataSource
    DataSet = ZQry_ImpVenda
    Left = 1184
    Top = 48
  end
  object DS_Imp_venda_Itens: TDataSource
    DataSet = ZQry_ImpVenda_Itens
    Left = 1192
    Top = 96
  end
  object ppDB_ImpVenda_Itens: TppDBPipeline
    DataSource = DS_Imp_venda_Itens
    UserName = 'DB_ImpVenda_Itens'
    Left = 1224
    Top = 96
  end
  object ppR_ImpVenda: TppReport
    AutoStop = False
    DataPipeline = ppDB_ImpVenda_Itens
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 1240
    Top = 48
    Version = '18.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB_ImpVenda_Itens'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Venda N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4234
        mmLeft = 1058
        mmTop = 529
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'CODIGO'
        DataPipeline = ppDB_ImpVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDB_ImpVenda'
        mmHeight = 4498
        mmLeft = 16933
        mmTop = 529
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4234
        mmLeft = 0
        mmTop = 5556
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'CLIENTE'
        DataPipeline = ppDB_ImpVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDB_ImpVenda'
        mmHeight = 4498
        mmLeft = 15875
        mmTop = 5556
        mmWidth = 85990
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 12700
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'CODPRODUTO'
        DataPipeline = ppDB_ImpVenda_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_ImpVenda_Itens'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'PRODUTO'
        DataPipeline = ppDB_ImpVenda_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_ImpVenda_Itens'
        mmHeight = 4498
        mmLeft = 16933
        mmTop = 0
        mmWidth = 88371
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        DataField = 'CODPRODUTO'
        DataPipeline = ppDB_ImpVenda_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_ImpVenda_Itens'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        DataField = 'QTDE'
        DataPipeline = ppDB_ImpVenda_Itens
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_ImpVenda_Itens'
        mmHeight = 4498
        mmLeft = 122767
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        DataField = 'UNITARIO'
        DataPipeline = ppDB_ImpVenda_Itens
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_ImpVenda_Itens'
        mmHeight = 4498
        mmLeft = 106098
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        DataField = 'TOTAL'
        DataPipeline = ppDB_ImpVenda_Itens
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_ImpVenda_Itens'
        mmHeight = 4498
        mmLeft = 138907
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ZQry_Filial: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from  C000004')
    Params = <>
    Left = 1152
    Top = 152
    object ZQry_FilialCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object ZQry_FilialFILIAL: TWideStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object ZQry_FilialNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object ZQry_FilialENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object ZQry_FilialCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object ZQry_FilialUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object ZQry_FilialCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object ZQry_FilialTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object ZQry_FilialCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object ZQry_FilialIE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object ZQry_FilialSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object ZQry_FilialFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object ZQry_FilialOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object ZQry_FilialOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object ZQry_FilialCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object ZQry_FilialSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object ZQry_FilialEMPRESA_ESTADUAL: TWideStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object ZQry_FilialOPTANTE_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object ZQry_FilialOPTANTE_SUPER_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object ZQry_FilialECF: TWideStringField
      FieldName = 'ECF'
      Size = 1
    end
    object ZQry_FilialTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object ZQry_FilialIPI: TFloatField
      FieldName = 'IPI'
    end
    object ZQry_FilialISS: TFloatField
      FieldName = 'ISS'
    end
    object ZQry_FilialNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object ZQry_FilialRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object ZQry_FilialCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object ZQry_FilialBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object ZQry_FilialFARMACIA_RESP_TECNICO: TWideStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object ZQry_FilialFARMACIA_CRF: TWideStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object ZQry_FilialFARMACIA_CPF: TWideStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object ZQry_FilialFARMCIA_DATA: TDateField
      FieldName = 'FARMCIA_DATA'
    end
    object ZQry_FilialFARMACIA_UF: TWideStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object ZQry_FilialFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object ZQry_FilialFARMACIA_EMAIL: TWideStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object ZQry_FilialFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object ZQry_FilialFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object ZQry_FilialCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object ZQry_FilialINDUSTRIA: TWideStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object ZQry_FilialFARMACIA_NUMEROLICENCA: TWideStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object ZQry_FilialCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object ZQry_FilialIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object ZQry_FilialPIS: TFloatField
      FieldName = 'PIS'
    end
    object ZQry_FilialCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object ZQry_FilialEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZQry_FilialATIVIDADE: TWideStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object ZQry_FilialCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object ZQry_FilialCONTADOR_NOME: TWideStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object ZQry_FilialCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
    end
    object ZQry_FilialCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object ZQry_FilialCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object ZQry_FilialCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object ZQry_FilialCONTADOR_ENDERECO: TWideStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object ZQry_FilialCONTADOR_NUMERO: TWideStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object ZQry_FilialCONTADOR_COMPLEMENTO: TWideStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object ZQry_FilialCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object ZQry_FilialCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object ZQry_FilialCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object ZQry_FilialCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object ZQry_FilialINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object ZQry_FilialDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object ZQry_FilialCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object ZQry_FilialCRT: TWideStringField
      FieldName = 'CRT'
      Size = 1
    end
    object ZQry_FilialCONTADOR_CIDADE: TWideStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object ZQry_FilialCONTADOR_COD_MUNICIPIO: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object ZQry_FilialCONTADOR_UF: TWideStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object ZQry_FilialPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object ZQry_FilialFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object ZQry_FilialDFIXAS: TSingleField
      FieldName = 'DFIXAS'
    end
    object ZQry_FilialTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
    object ZQry_FilialSERIE_CTE: TWideStringField
      FieldName = 'SERIE_CTE'
      Size = 6
    end
    object ZQry_FilialSEQ_CTE: TWideStringField
      FieldName = 'SEQ_CTE'
      Size = 6
    end
    object ZQry_FilialCOD_PAIS: TWideStringField
      FieldName = 'COD_PAIS'
    end
    object ZQry_FilialPAIS: TWideStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object ZQry_FilialHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 100
    end
    object ZQry_FilialLOGO: TBlobField
      FieldName = 'LOGO'
    end
  end
  object DS_Filial: TDataSource
    DataSet = ZQry_Filial
    Left = 1168
    Top = 256
  end
  object ppDB_Empresa: TppDBPipeline
    DataSource = DS_Filial
    UserName = 'DB_Empresa'
    Left = 1248
    Top = 184
  end
end
