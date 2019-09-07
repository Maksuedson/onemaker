program OneMaker_Microterminais;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UTerminalCustom in 'UTerminalCustom.pas',
  UPadrao in 'Padrao\UPadrao.pas' {FPadrao},
  uDMConexao in 'Padrao\uDMConexao.pas' {DMConexao: TDataModule},
  UPadraoOkCancel in 'Padrao\UPadraoOkCancel.pas' {FPadraoOkCancel},
  UPadraoMenu in 'Padrao\UPadraoMenu.pas' {FPadraoMenu},
  UPadraoLista in 'Padrao\UPadraoLista.pas' {FPadraoLista},
  UPadraoCadastro in 'Padrao\UPadraoCadastro.pas' {FPadraoCadastro},
  UMensagem in 'Padrao\UMensagem.pas' {FMensagem},
  UMenu in 'Padrao\UMenu.pas' {FMenu},
  UMesaPesquisa in 'UMesaPesquisa.pas' {FMesaPesquisa},
  uDMTabelas in 'uDMTabelas.pas' {DMTabelas: TDataModule},
  UVendaPesquisa in 'UVendaPesquisa.pas' {FVendaPesquisa},
  UProdutoLista in 'UProdutoLista.pas' {FProdutoLista},
  UProdutoCadastro in 'UProdutoCadastro.pas' {FProdutoCadastro},
  UOperadorPesquisa in 'UOperadorPesquisa.pas' {FOperadorPesquisa},
  UOperadorCadastro in 'UOperadorCadastro.pas' {FOperadorCadastro},
  UMesaCadastro in 'UMesaCadastro.pas' {FMesaCadastro},
  UComandaPesquisa in 'UComandaPesquisa.pas' {FComandaPesquisa},
  UComandaCadastro in 'UComandaCadastro.pas' {FComandaCadastro},
  UTerminalCadastro in 'UTerminalCadastro.pas' {FTerminalCadastro},
  UTerminalLista in 'UTerminalLista.pas' {FTerminalLista},
  UTerminal in 'UTerminal.pas',
  UComplementoLista in 'UComplementoLista.pas' {FComplementoLista},
  UComplementoCadastro in 'UComplementoCadastro.pas' {FComplementoCadastro},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'OneMaker - Microterminais';
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TDMTabelas, DMTabelas);
  Application.CreateForm(TFMenu, FMenu);
  Application.Run;
end.
