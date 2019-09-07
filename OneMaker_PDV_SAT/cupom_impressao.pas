unit cupom_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumns, NxColumnClasses, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, ExtCtrls, StdCtrls, Buttons,
  Menus, AdvMenus, ComCtrls, XPMan, AdvGlowButton, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmcupom_impressao = class(TForm)
    Panel2: TPanel;
    BitBtn11: TBitBtn;
    bt_fechar1: TBitBtn;
    grid_impressao: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    MenuFiscal1: TMenuItem;
    Reimprimir1: TMenuItem;
    BitBtn1: TAdvGlowButton;
    bt_fechar: TAdvGlowButton;
    procedure bt_fechar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcupom_impressao: Tfrmcupom_impressao;

implementation

uses funcoes, principal, unECF, modulo, menu_fiscal, UFuncoes;

{$R *.dfm}

procedure Tfrmcupom_impressao.bt_fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcupom_impressao.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcupom_impressao.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcupom_impressao.BitBtn11Click(Sender: TObject);
var i : integer;
begin
  repeat
    if frmPrincipal.TipoImpressora = Fiscal then
    begin
      sMsg := cECF_Abre_Gerencial(iECF_Modelo,' ');
      sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
    end
    else
    begin
      sMsg := Imp_Abre_Gerencial(sPortaNaoFiscal,' ');
     sNumero_cupom := Zerar( FloatToStr( Max('') ),5 );
    end;

    if sMsg <> 'OK' then
    begin
      if application.messagebox(pwidechar('Erro no ECF!'+#13+
                                          'Mensagem: '+sMsg+#13+
                                          'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                          mb_iconerror) = idNo then
      begin
        break;
      end;
    end
    else
    begin
      // extrair do ecf o numero dos contadores

    if frmPrincipal.TipoImpressora = Fiscal then
    begin
      sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
      sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
    end
    else
    begin
      sGNF := zerar(FloatToStr(Max('')),5  );
      sGRG := zerar(sGNF,5  );
    end;


    end;
  until sMsg = 'OK';

  if sMsg = 'OK' then
  begin
    for i := 0 to grid_impressao.RowCount -1 do
    begin
      repeat
        if frmPrincipal.TipoImpressora = Fiscal then
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,grid_impressao.Cell[0,i].asstring)
        else
          sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,grid_impressao.Cell[0,i].asstring);

        if sMsg <> 'OK' then
        begin
          if application.messagebox(pwidechar('Erro no ECF!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                              mb_iconerror) = idNo then
          begin
            break;
          end;
        end
      until sMsg = 'OK';
    end;

    repeat
        if frmPrincipal.TipoImpressora = Fiscal then
          sMsg := cECF_Fecha_Gerencial(iECF_Modelo)
        else
          sMsg := Imp_Fecha_Gerencial(sPortaNaoFiscal);

      if sMsg <> 'OK' then
      begin
        if application.messagebox(pwidechar('Erro no ECF!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                            mb_iconerror) = idNo then
        begin
          break;
        end;
      end
      else
      begin
        // registrar Gerencial no banco de dados
        with frmmodulo do
        begin
          spNao_Fiscal.Close;
          spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
          spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
          spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
          spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
          spNao_fiscal.ParamByName('indice').asstring := 'RG';
          spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
          spNao_fiscal.ParamByName('valor').asfloat := 0;
          spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
          spNao_fiscal.ParamByName('GNF').asstring := sGNF;
          spNao_fiscal.ParamByName('GRG').asstring := sGRG;
          spNao_fiscal.ParamByName('CDC').Clear;
          spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
          spNao_Fiscal.Prepare;
          spNao_Fiscal.Execute;
        end;
      end;
    until sMsg = 'OK';
  end;
end;

procedure Tfrmcupom_impressao.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.
