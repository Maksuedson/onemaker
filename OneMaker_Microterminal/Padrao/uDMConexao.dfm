object DMConexao: TDMConexao
  OldCreateOrder = False
  Height = 241
  Width = 267
  object Conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=micro' +
      'terminal'
    DefaultDatabase = 'C:\OneMaker\Server\BD\BASE.FDB'
    LoginPrompt = False
    BeforeConnect = ConexaoBeforeConnect
    Left = 48
    Top = 40
  end
end
