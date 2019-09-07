unit xloc_notafiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Buttons;

type
  Tfrmxloc_notafiscal = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    loc: TEdit;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    GRID: TwwDBGrid;
    ds: TDataSource;
    query: TZQuery;
    Bevel2: TBevel;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    QUERY2: TZQuery;
    PPROCURA: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    DS2: TDataSource;
    queryCODIGO: TWideStringField;
    queryNUMERO: TWideStringField;
    queryCFOP: TWideStringField;
    qrinventarioDATA: TDateField;
    queryCODCLIENTE: TWideStringField;
    queryVALOR_PRODUTOS: TFloatField;
    queryTOTAL_NOTA: TFloatField;
    queryBASE_CALCULO: TFloatField;
    queryVALOR_ICMS: TFloatField;
    queryBASE_SUB: TFloatField;
    queryICMS_SUB: TFloatField;
    queryFRETE: TFloatField;
    querySEGURO: TFloatField;
    queryOUTRAS_DESPESAS: TFloatField;
    queryVALOR_TOTAL_IPI: TFloatField;
    queryITENS: TIntegerField;
    queryDESCONTO: TFloatField;
    queryCODTRANSPORTADOR: TWideStringField;
    queryFRETE_CONTA: TIntegerField;
    queryPLACA: TWideStringField;
    queryPLACA_UF: TWideStringField;
    queryVOL_QTDE: TFloatField;
    queryVOL_ESPECIE: TWideStringField;
    queryVOL_MARCA: TWideStringField;
    queryVOL_NUMERO: TWideStringField;
    queryPESO_LIQUIDO: TFloatField;
    queryPESO_BRUTO: TFloatField;
    querySITUACAO: TIntegerField;
    queryMOTIVO: TWideStringField;
    qrinventarioFATURAMENTO_DATA1: TDateField;
    qrinventarioFATURAMENTO_DATA2: TDateField;
    qrinventarioFATURAMENTO_DATA3: TDateField;
    qrinventarioFATURAMENTO_DATA4: TDateField;
    queryFATURAMENTO_NUMERO1: TWideStringField;
    queryFATURAMENTO_NUMERO2: TWideStringField;
    queryFATURAMENTO_NUMERO3: TWideStringField;
    queryFATURAMENTO_NUMERO4: TWideStringField;
    queryFATURAMENTO_VALOR1: TFloatField;
    queryFATURAMENTO_VALOR2: TFloatField;
    queryFATURAMENTO_VALOR3: TFloatField;
    queryFATURAMENTO_VALOR4: TFloatField;
    queryCODFILIAL: TWideStringField;
    queryOBS1: TWideStringField;
    queryOBS2: TWideStringField;
    queryOBS3: TWideStringField;
    queryINF1: TWideStringField;
    queryINF2: TWideStringField;
    queryINF3: TWideStringField;
    queryINF4: TWideStringField;
    queryINF5: TWideStringField;
    qrinventarioDATA_SAIDA: TDateField;
    queryHORA: TWideStringField;
    querySITUACAO_A: TWideStringField;
    queryMODELO_NF: TWideStringField;
    querySERIE_NF: TWideStringField;
    queryVALOR_ISENTO_ICMS: TFloatField;
    queryALIQUOTA_ICMS: TFloatField;
    querySIT: TWideStringField;
    queryCODLANCAMENTO: TWideStringField;
    queryMOVIMENTO: TWideStringField;
    queryBAIXA_ESTOQUE: TWideStringField;
    queryTIPO: TWideStringField;
    queryOS_COD1: TWideStringField;
    queryOS_COD2: TWideStringField;
    queryOS_COD3: TWideStringField;
    queryOS_COD4: TWideStringField;
    queryOS_COD5: TWideStringField;
    queryOS_COD6: TWideStringField;
    queryOS_SERV1: TWideStringField;
    queryOS_SERV2: TWideStringField;
    queryOS_SERV3: TWideStringField;
    queryOS_SERV4: TWideStringField;
    queryOS_SERV5: TWideStringField;
    queryOS_SERV6: TWideStringField;
    queryOS_COMP1: TWideStringField;
    queryOS_COMP2: TWideStringField;
    queryOS_COMP3: TWideStringField;
    queryOS_COMP4: TWideStringField;
    queryOS_COMP5: TWideStringField;
    queryOS_COMP6: TWideStringField;
    queryOS_QTDE1: TFloatField;
    queryOS_QTDE2: TFloatField;
    queryOS_QTDE3: TFloatField;
    queryOS_QTDE4: TFloatField;
    queryOS_QTDE5: TFloatField;
    queryOS_QTDE6: TFloatField;
    queryOS_UNIT1: TFloatField;
    queryOS_UNIT2: TFloatField;
    queryOS_UNIT3: TFloatField;
    queryOS_UNIT4: TFloatField;
    queryOS_UNIT5: TFloatField;
    queryOS_UNIT6: TFloatField;
    queryOS_TOTAL1: TFloatField;
    queryOS_TOTAL2: TFloatField;
    queryOS_TOTAL3: TFloatField;
    queryOS_TOTAL4: TFloatField;
    queryOS_TOTAL5: TFloatField;
    queryOS_TOTAL6: TFloatField;
    queryOS_ISS: TFloatField;
    queryOS_TOTAL_GERAL: TFloatField;
    queryOS_TOTAL_ISS: TFloatField;
    queryDESCONTO_ITEM: TFloatField;
    queryOBS4: TWideStringField;
    queryOBS5: TWideStringField;
    queryCODIGOMODELO: TWideStringField;
    queryCUSTO_VENDA: TWideStringField;
    queryFAT_FORMA_PGTO: TWideStringField;
    queryFAT_CONDI_PGTO: TWideStringField;
    queryFAT_QTDE_PRESTACAO: TIntegerField;
    queryFAT_GERAR_RECEBER: TIntegerField;
    queryFAT_GERAR_DUPLICATA: TIntegerField;
    queryPIS: TFloatField;
    queryCOFINS: TFloatField;
    queryFAT_TIPO: TIntegerField;
    queryCODVENDEDOR: TWideStringField;
    queryOPERACAO: TWideStringField;
    queryINTEGRACAO: TIntegerField;
    queryNFE_SITUACAO: TIntegerField;
    queryNFE_XML: TWideStringField;
    queryVAREJO_ATACADO: TWideStringField;
    queryINDUSTRIALIZACAO: TWideStringField;
    queryPERDA: TWideStringField;
    qrinventarioFATURAMENTO_DATA5: TDateField;
    qrinventarioFATURAMENTO_DATA6: TDateField;
    queryFATURAMENTO_NUMERO5: TWideStringField;
    queryFATURAMENTO_NUMERO6: TWideStringField;
    queryFATURAMENTO_VALOR5: TFloatField;
    queryFATURAMENTO_VALOR6: TFloatField;
    qrinventarioFATURAMENTO_DATA7: TDateField;
    qrinventarioFATURAMENTO_DATA8: TDateField;
    qrinventarioFATURAMENTO_DATA9: TDateField;
    queryFATURAMENTO_NUMERO7: TWideStringField;
    queryFATURAMENTO_NUMERO8: TWideStringField;
    queryFATURAMENTO_NUMERO9: TWideStringField;
    queryFATURAMENTO_VALOR7: TFloatField;
    queryFATURAMENTO_VALOR8: TFloatField;
    queryFATURAMENTO_VALOR9: TFloatField;
    queryCHAVE: TWideStringField;
    queryNATUREZA: TWideStringField;
    queryTIPO_FINALIDADE: TIntegerField;
    querySEQEVENTO: TIntegerField;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_notafiscal: Tfrmxloc_notafiscal;
  voltar: boolean;

implementation

uses modulo, produto;

{$R *.dfm}

procedure Tfrmxloc_notafiscal.Localizarpor1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_notafiscal.Referncia1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_notafiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmxloc_notafiscal.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_notafiscal.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    if PPROCURA.Visible then WWDBGRID1.SetFocus else grid.setfocus;
  end;
end;

procedure Tfrmxloc_notafiscal.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_notafiscal.locKeyPress(Sender: TObject; var Key: Char);
var ref, tipo: string;
begin
  if key = #13 then
  begin
    if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';

    if combo_localizar.ItemIndex = 0 then
    begin
      TIPO := 'NUMERO';
      query.close;
      query.sql.clear;
      if loc.text = '' then
        query.sql.Add('select * from c000061 where codigo = ''xxxxxx''')
      else
        query.sql.Add('select * from c000061 where upper(' + tipo + ') like ''' + ref + loc.Text + '%'' order by ' + tipo);
      query.open;
    end;

    if combo_localizar.ItemIndex = 2 then
    begin
      try
        TIPO := 'DATA';
        query.close;
        query.sql.clear;
        if loc.text = '' then
          query.sql.Add('select * from c000061 where codigo = ''xxxxxx''')
        else
        begin
          query.sql.Add('select * from c000061 where DATA = :DATAX  order by ' + tipo);
          QUERY.Params.ParamByName('DATAX').ASDATETIME := STRTODATE(LOC.TEXT);
        end;
        query.open;
      except
      end;
    end;

    if combo_localizar.ItemIndex = 1 then
    begin
      if PPROCURA.Visible then
      begin
        query.close;
        query.sql.clear;
        query.sql.Add('select * from c000061 where CODCLIENTE = ''' + query2.fieldbyname('codigo').asstring + ''' order by NUMERO');
        query.open;
        pprocura.Visible := false;
      end
      else
      begin
        if query.RecNo > 0 then
        begin
          resultado_pesquisa1 := query.fieldbyname('CODIGO').asstring;
          close;
        end;
      end;
    end;
  end;
end;

procedure Tfrmxloc_notafiscal.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_notafiscal.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_notafiscal.FormShow(Sender: TObject);
begin
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from c000061 where codigo = ''XXXXXX''');
  query.open;
  loc.setfocus;

end;

procedure Tfrmxloc_notafiscal.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_notafiscal.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_notafiscal.locChange(Sender: TObject);
var ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  if COMBO_LOCALIZAR.ItemIndex = 1 then // CLIENTE
  begin
    QUERY2.Close;
    QUERY2.SQL.CLEAR;
    if loc.text = '' then
      query2.sql.Add('select * from c000007 where codigo = ''xxxxxx''')
    else
      QUERY2.SQL.ADD('SELECT * FROM C000007 where upper(NOME) like ''' + ref + loc.Text + '%'' order by NOME');
    QUERY2.OPEN;
    if QUERY2.RecordCount > 0 then
    begin
      PPROCURA.Visible := TRUE;
    end
    else
      PPROCURA.Visible := false;

  end;





end;

procedure Tfrmxloc_notafiscal.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
  close;

end;

procedure Tfrmxloc_notafiscal.wwDBGrid1Enter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_notafiscal.wwDBGrid1Exit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_notafiscal.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then locKeyPress(frmxloc_NOTAFISCAL, key);
  loc.setfocus;
end;

procedure Tfrmxloc_notafiscal.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

end.
