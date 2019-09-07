program PPadrao;

uses
  Forms,
  UPadrao in 'UPadrao.pas' {FPadrao},
  UPadraoLista in 'UPadraoLista.pas' {FPadraoLista},
  UMensagem in 'UMensagem.pas' {FMensagem},
  UPadraoMenu in 'UPadraoMenu.pas' {FPadraoMenu},
  UPadraoOkCancel in 'UPadraoOkCancel.pas' {FPadraoOkCancel},
  UMenu in 'UMenu.pas' {FMenu},
  uDMConexao in 'uDMConexao.pas' {DMConexao: TDataModule},
  UPadraoCadastro in 'UPadraoCadastro.pas' {FPadraoCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFPadraoCadastro, FPadraoCadastro);
  Application.Run;
end.
