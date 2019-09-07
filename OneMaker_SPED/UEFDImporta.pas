unit UEFDImporta;

interface

uses Forms, classes, sysutils, Vcl.StdCtrls, Vcl.Graphics, UFuncoes, db, dialogs,ACBrEFDBlocos;

type
  Tabela = (tbc400, tbc405, tbC420, tbC460, tbC470, tbC490, tbC190);

Function FiltrarTabela(Tabela: Tabela; filtro: string; DT_INI, DT_FIM: TDate): integer;
procedure LimparTabela(Tabela: Tabela);

Function Imp_Reg_0190(DT_INI, DT_FIM: TDate; efd: TMemo): Boolean; { unidades de medidas }
Function Imp_Reg_0200(DT_INI, DT_FIM: TDate; efd: TMemo): Boolean; { identificação dos produtos }
Function Imp_Reg_C400(DT_INI, DT_FIM: TDate; efd: TMemo): Boolean; { ecf's + reducoes + totalizadores + itens }

procedure ImportarDadosECF;
procedure ImportarRegistrosECF;

implementation

uses UDm, UPrincipal;

Function Imp_Reg_0190(DT_INI, DT_FIM: TDate; efd: TMemo): Boolean;
var
  I, iqtd: integer;
begin
  iqtd := 0;

  with Dm do
  begin
    qrUnidades.Close;
    qrUnidades.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
    qrUnidades.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
    qrUnidades.Open;
    qrUnidades.First;

    // while not qrUnidades.Eof do
    // qrUnidades.Delete;

    for I := 0 to efd.Lines.Count - 1 do
    begin

      if LinhaEFD(efd.Lines[I], '|', 2) = '0190' then
      begin
        iqtd := iqtd + 1;
        if not qrUnidades.Locate('UNIDADE', isUnid(LinhaEFD(efd.Lines[I], '|', 3)), [loCaseInsensitive]) then
        begin
          qrUnidades.Insert;
          qrUnidadesCODIGO.Value := Inc('SPED_0190', 'CODIGO', '');
          qrUnidadesUNIDADE.Value := isUnid(LinhaEFD(efd.Lines[I], '|', 3)); // UN
          qrUnidadesDESCRICAO.Value := LinhaEFD(efd.Lines[I], '|', 4); // DESCRICAO
          qrUnidadesDT_INI.AsDateTime := StrToDate(DateToStr(DT_INI));
          qrUnidadesDT_FIM.AsDateTime := StrToDate(DateToStr(DT_FIM));
          qrUnidades.Post;
          FPrincipal.Msg('0190 - ' + qrUnidadesUNIDADE.AsString + ' - ' + qrUnidadesDESCRICAO.AsString, 10, clBlack);
          Application.ProcessMessages;
        end;

      end;

    end;

    if iqtd = 0 then
    begin
      qrCMD.Close;
      qrCMD.SQL.Clear;
      qrCMD.SQL.Add('select UNID_INV from SPED_0200 ');
      qrCMD.SQL.Add('Where  DT_INI >= :DT_INI and DT_INI <= :DT_INI ');
      qrCMD.SQL.Add('group by UNID_INV ');
      qrCMD.Open;
      qrCMD.First;

      while not qrCMD.Eof do
      begin
        if not qrUnidades.Locate('UNIDADE', qrCMD.Fields[0].AsString, [loCaseInsensitive]) then
        begin
          qrUnidades.Insert;
          qrUnidadesCODIGO.Value := Inc('SPED_0190', 'CODIGO', '');
          qrUnidadesUNIDADE.Value := qrCMD.Fields[0].AsString; // UN
          qrUnidadesDESCRICAO.Value := 'Sem Descricao'; // DESCRICAO
          qrUnidadesDT_INI.AsDateTime := StrToDate(DateToStr(DT_INI));
          qrUnidadesDT_FIM.AsDateTime := StrToDate(DateToStr(DT_FIM));
          qrUnidades.Post;
          FPrincipal.Msg('0190 - ' + qrUnidadesUNIDADE.AsString + ' - ' + qrUnidadesDESCRICAO.AsString, 10, clBlack);
          Application.ProcessMessages;
        end;
        qrCMD.Next;
        Application.ProcessMessages;
      end;
    end;

  end;

end;

Function Imp_Reg_C400(DT_INI, DT_FIM: TDate; efd: TMemo): Boolean;
var
  I: integer;
begin

  with Dm do
  begin
    qrC400_ECF.Close;
    qrC400_ECF.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
    qrC400_ECF.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
    qrC400_ECF.Open;

    { 1 ° cadastrar as ecfs no banco }
    FPrincipal.Progresso.MaxValue := efd.Lines.Count;
    for I := 0 to efd.Lines.Count - 1 do
    begin
      FPrincipal.Progresso.Progress := I;
      { ecf's }
      if LinhaEFD(efd.Lines[I], '|', 2) = 'C400' then
      begin
        if not qrC400_ECF.Locate('ECF_FAB_SN', LinhaEFD(efd.Lines[I], '|', 5), [loCaseInsensitive]) then
        begin
          qrC400_ECF.Insert;
          qrC400_ECFCODIGO.Value := Inc('SPED_C400', 'CODIGO', '');
          qrC400_ECFREG.Value := 'C400';
          qrC400_ECFCOD_MOD.Value := isUnid(LinhaEFD(efd.Lines[I], '|', 3));
          qrC400_ECFECF_MOD.Value := LinhaEFD(efd.Lines[I], '|', 4);
          qrC400_ECFECF_FAB_SN.Value := LinhaEFD(efd.Lines[I], '|', 5);
          qrC400_ECFECF_CX.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 6));
          qrC400_ECFDT_INI.AsDateTime := StrToDate(DateToStr(DT_INI));
          qrC400_ECFDT_FIM.AsDateTime := StrToDate(DateToStr(DT_FIM));
          qrC400_ECF.Post;
          FPrincipal.Msg('C400 - ' + qrC400_ECFECF_MOD.AsString + ' - ' + qrC400_ECFECF_FAB_SN.AsString, 10, clBlack);
          Application.ProcessMessages;
        end;
        { deletar registros dessa movimentacao }
        FiltrarTabela(tbc405, qrC400_ECFCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
        FiltrarTabela(tbC420, qrC405_REDUCOESCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
        FiltrarTabela(tbC460, qrC405_REDUCOESCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
        FiltrarTabela(tbC470, qrC460_CUPONSCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
        FiltrarTabela(tbC490, qrC405_REDUCOESCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
        LimparTabela(tbC490);
        LimparTabela(tbC470);
        LimparTabela(tbC460);
        LimparTabela(tbC420);
        LimparTabela(tbc405);
      end;
      Application.ProcessMessages;
    end;

    FPrincipal.Progresso.MaxValue := efd.Lines.Count * qrC400_ECF.RecordCount;
    FPrincipal.Progresso.Progress := 0;

    // qrC400_ECF.First;
    // while not qrC400_ECF.Eof do
    begin

      FPrincipal.Progresso.MaxValue := efd.Lines.Count;
      for I := 0 to efd.Lines.Count - 1 do
      begin
        FPrincipal.Progresso.Progress := I;
        { C405 - reduções z }
        if LinhaEFD(efd.Lines[I], '|', 2) = 'C405' then
        begin
          { só importar as reducoes que estiverem no periodo informado no gerador }
          if (StrToDate(DateToStr(DataEFD(LinhaEFD(efd.Lines[I], '|', 3)))) >= DT_INI) and (StrToDate(DateToStr(DataEFD(LinhaEFD(efd.Lines[I], '|', 3)))) <= DT_FIM) then
          begin
            qrC405_REDUCOES.Insert;
            qrC405_REDUCOESCODIGO.Value := Inc('SPED_C405', 'CODIGO', '');
            qrC405_REDUCOESCODECF.Value := qrC400_ECFCODIGO.AsString;
            qrC405_REDUCOESREG.Value := 'C405';
            qrC405_REDUCOESDT_DOC.AsDateTime := StrToDate(DateToStr(DataEFD(LinhaEFD(efd.Lines[I], '|', 3))));
            qrC405_REDUCOESCRO.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 4));
            qrC405_REDUCOESCRZ.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 5));
            qrC405_REDUCOESNUM_COO_FIN.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 6));
            qrC405_REDUCOESGT_FFIN.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 7));
            qrC405_REDUCOESVL_BRT.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 8));
            qrC405_REDUCOES.Post;

            FPrincipal.Msg('  C405 - Redução Z  - ' + qrC405_REDUCOESDT_DOC.AsString + ' - ' + qrC405_REDUCOESNUM_COO_FIN.AsString, 10, clBlack);
          end;
          Application.ProcessMessages;
        end;

        { C420 - registro dos totalizadores }
        if LinhaEFD(efd.Lines[I], '|', 2) = 'C420' then
        begin
          qrC420_TOTAISRED.Insert;
          qrC420_TOTAISREDCODIGO.Value := Inc('SPED_C420', 'CODIGO', '');
          qrC420_TOTAISREDCODC405.Value := qrC405_REDUCOESCODIGO.AsString;
          qrC420_TOTAISREDREG.Value := 'C405';
          qrC420_TOTAISREDCOD_TOT_PAR.Value := LinhaEFD(efd.Lines[I], '|', 3);
          qrC420_TOTAISREDVLR_ACUM_TOT.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 4));
          qrC420_TOTAISREDNR_TOT.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 5));
          qrC420_TOTAISREDDESCR_NR_TOT.Value := LinhaEFD(efd.Lines[I], '|', 6);
          qrC420_TOTAISRED.Post;
          FPrincipal.Msg('    C420 - Totalizadores - ' + qrC420_TOTAISREDVLR_ACUM_TOT.AsString, 10, clBlack);
          Application.ProcessMessages;
        end;

        { cupons fiscais }
        if LinhaEFD(efd.Lines[I], '|', 2) = 'C460' then
        begin
          if (StrToDate(DateToStr(DataEFD(LinhaEFD(efd.Lines[I], '|', 6)))) >= DT_INI) and (StrToDate(DateToStr(DataEFD(LinhaEFD(efd.Lines[I], '|', 6)))) <= DT_FIM) then
          begin
            qrC460_CUPONS.Insert;
            qrC460_CUPONSCODIGO.Value := Inc('SPED_C460', 'CODIGO', '');
            qrC460_CUPONSCODC405.Value := qrC405_REDUCOESCODIGO.AsString;
            qrC460_CUPONSREG.Value := 'C405';
            qrC460_CUPONSCOD_MOD.Value := LinhaEFD(efd.Lines[I], '|', 3);
            qrC460_CUPONSCOD_SIT.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 4));
            qrC460_CUPONSNUM_DOC.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 5));
            qrC460_CUPONSDT_DOC.AsDateTime := StrToDate(DateToStr(DataEFD(LinhaEFD(efd.Lines[I], '|', 6))));
            qrC460_CUPONSVL_DOC.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 7));
            qrC460_CUPONSVL_PIS.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 8));
            qrC460_CUPONSVL_COFINS.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 9));
            qrC460_CUPONSCPF_CNPJ.Value := sn(LinhaEFD(efd.Lines[I], '|', 10));
            qrC460_CUPONSNOM_ADQ.Value := LinhaEFD(efd.Lines[I], '|', 11);
            qrC460_CUPONS.Post;
            FPrincipal.Msg('      C460 - Cupom Fiscal - ' + qrC460_CUPONSNUM_DOC.AsString, 10, clBlack);
          end;
          Application.ProcessMessages;
        end;

        if FPrincipal.RadioPerfil.ItemIndex = 0 then
        begin

          { C470 - itens cupons fiscais }
          if LinhaEFD(efd.Lines[I], '|', 2) = 'C470' then
          begin
            qrC470_ITENSCUPOM.Insert;
            qrC470_ITENSCUPOMCODIGO.Value := Inc('SPED_C470', 'CODIGO', '');
            qrC470_ITENSCUPOMCODC460.Value := qrC460_CUPONSCODIGO.AsString;
            qrC470_ITENSCUPOMREG.Value := 'C470';
            qrC470_ITENSCUPOMCOD_ITEM.Value := LinhaEFD(efd.Lines[I], '|', 3);
            qrC470_ITENSCUPOMQTD.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 4));
            qrC470_ITENSCUPOMQTD_CANC.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 5));
            qrC470_ITENSCUPOMUNID.Value := LinhaEFD(efd.Lines[I], '|', 6);
            qrC470_ITENSCUPOMVL_ITEM.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 7));
            qrC470_ITENSCUPOMCST_ICMS.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 8));
            qrC470_ITENSCUPOMALIQ_ICMS.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 10));
            qrC470_ITENSCUPOMCFOP.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 9));

            if FPrincipal.CheckCSTECF.Checked then
            begin

              case isInteger(qrC470_ITENSCUPOMCST_ICMS.AsString) of
                30, 40, 41, 50, 60:
                  begin
                    qrC470_ITENSCUPOMCST_ICMS.Value := isInteger(FPrincipal.EditCSTECF.Text);
                    qrC470_ITENSCUPOMALIQ_ICMS.Value := isFloat('0');
                  end;
              end;

              if isInteger(qrC470_ITENSCUPOMCST_ICMS.AsString) = 60 then
                qrC470_ITENSCUPOMCFOP.Value := 5405;

            end;

            qrC470_ITENSCUPOMVL_PIS.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 11));
            qrC470_ITENSCUPOMVL_COFINS.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 12));
            qrC470_ITENSCUPOM.Post;
            FPrincipal.Msg('        C470 - Itens do Cupom - ' + qrC470_ITENSCUPOMCOD_ITEM.AsString, 10, clBlack);
            Application.ProcessMessages;
          end;
        end;

        { C490 - Mov do Dia }
        if LinhaEFD(efd.Lines[I], '|', 2) = 'C490' then
        begin
          qrC490_ECFMOVDIA.Insert;
          qrC490_ECFMOVDIACODIGO.Value := Inc('SPED_C490', 'CODIGO', '');
          qrC490_ECFMOVDIACODC405.Value := qrC405_REDUCOESCODIGO.AsString;
          qrC490_ECFMOVDIAREG.Value := 'C405';
          qrC490_ECFMOVDIACST_ICMS.Value := LinhaEFD(efd.Lines[I], '|', 3);
          qrC490_ECFMOVDIAALIQ_ICMS.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 5));
          qrC490_ECFMOVDIAVL_BC_ICMS.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 7));
          qrC490_ECFMOVDIAVL_ICMS.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 8));

          if FPrincipal.CheckCSTECF.Checked then
          begin

            case isInteger(qrC490_ECFMOVDIACST_ICMS.AsString) of
              30, 40, 41, 50, 60:
                begin
                  qrC490_ECFMOVDIACST_ICMS.Value := FPrincipal.EditCSTECF.Text;
                  qrC490_ECFMOVDIAALIQ_ICMS.Value := isFloat('0');
                  qrC490_ECFMOVDIAVL_BC_ICMS.Value := isFloat('0');
                  qrC490_ECFMOVDIAVL_ICMS.Value := isFloat('0');
                end;
            end;

          end;

          qrC490_ECFMOVDIAVL_OPR.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 6));
          qrC490_ECFMOVDIACFOP.Value := LinhaEFD(efd.Lines[I], '|', 4);

          qrC490_ECFMOVDIACOD_OBS.Value := LinhaEFD(efd.Lines[I], '|', 9);
          qrC490_ECFMOVDIA.Post;
          FPrincipal.Msg('          C490 - REGISTRO ANALÍTICO DO MOVIMENTO DIÁRIO - ' + IntToStr(I), 10, clBlack);
          Application.ProcessMessages;
        end;

      end;

      // qrC400_ECF.Next;
      Application.ProcessMessages;
    end;

  end;

end;

Function FiltrarTabela(Tabela: Tabela; filtro: string; DT_INI, DT_FIM: TDate): integer;
begin
  case Tabela of
    tbc400:
      begin

      end;
    tbc405:
      begin
        Dm.qrC405_REDUCOES.Close;
        Dm.qrC405_REDUCOES.Params.ParamByName('CODECF').Value := filtro;
        Dm.qrC405_REDUCOES.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
        Dm.qrC405_REDUCOES.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
        Dm.qrC405_REDUCOES.Open;
        Result := Dm.qrC405_REDUCOES.RecordCount;
      end;
    tbC420:
      begin
        Dm.qrC420_TOTAISRED.Close;
        Dm.qrC420_TOTAISRED.Params.ParamByName('CODC405').Value := filtro;
        Dm.qrC420_TOTAISRED.Open;
        Result := Dm.qrC420_TOTAISRED.RecordCount;
      end;
    tbC460:
      begin
        Dm.qrC460_CUPONS.Close;
        Dm.qrC460_CUPONS.Params.ParamByName('CODC405').Value := filtro;
        Dm.qrC460_CUPONS.Open;
        Result := Dm.qrC460_CUPONS.RecordCount;
      end;
    tbC470:
      begin
        Dm.qrC470_ITENSCUPOM.Close;
        Dm.qrC470_ITENSCUPOM.Params.ParamByName('CODC460').Value := filtro;
        Dm.qrC470_ITENSCUPOM.Open;
        Result := Dm.qrC470_ITENSCUPOM.RecordCount;
      end;
    tbC490:
      begin
        Dm.qrC490_ECFMOVDIA.Close;
        Dm.qrC490_ECFMOVDIA.Params.ParamByName('CODC405').Value := filtro;
        Dm.qrC490_ECFMOVDIA.Open;
        Result := Dm.qrC490_ECFMOVDIA.RecordCount;
      end;
    tbC190:
      begin
        // Dm.qrC190_Analitico.Close;
        // Dm.qrC190_Analitico.Params.ParamByName('CODIGO').Value := filtro;
        // Dm.qrC190_Analitico.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
        // Dm.qrC190_Analitico.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
        // Dm.qrC190_Analitico.Open;
        Dm.FiltraAnalitico(StrToDate(DateToStr(DT_INI)), StrToDate(DateToStr(DT_FIM)), filtro);
        Result := Dm.qrC190_Analitico.RecordCount;
      end;
  else
    Result := -1;
  end;

end;

procedure LimparTabela(Tabela: Tabela);
begin

  case Tabela of
    tbc405:
      begin
        Dm.qrC405_REDUCOES.First;
        while not Dm.qrC405_REDUCOES.Eof do
          Dm.qrC405_REDUCOES.Delete;
      end;
    tbC420:
      begin
        Dm.qrC420_TOTAISRED.First;
        while not Dm.qrC420_TOTAISRED.Eof do
          Dm.qrC420_TOTAISRED.Delete;
      end;
    tbC460:
      begin
        Dm.qrC460_CUPONS.First;
        while not Dm.qrC460_CUPONS.Eof do
          Dm.qrC460_CUPONS.Delete;
      end;
    tbC470:
      begin
        Dm.qrC470_ITENSCUPOM.First;
        while not Dm.qrC470_ITENSCUPOM.Eof do
          Dm.qrC470_ITENSCUPOM.Delete;
      end;
    tbC490:
      begin
        Dm.qrC490_ECFMOVDIA.First;
        while not Dm.qrC490_ECFMOVDIA.Eof do
          Dm.qrC490_ECFMOVDIA.Delete;
      end;
  end;
end;

Function Imp_Reg_0200(DT_INI, DT_FIM: TDate; efd: TMemo): Boolean;
var
  I: integer;
begin

  with Dm do
  begin
    if FPrincipal.RadioPerfil.ItemIndex = 0 then
    begin

      qrProdutos.Close;
      qrProdutos.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
      qrProdutos.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
      qrProdutos.Open;
      qrProdutos.First;

      FPrincipal.Progresso.MaxValue := efd.Lines.Count;
      for I := 0 to efd.Lines.Count - 1 do
      begin
        FPrincipal.Progresso.Progress := I;
        if LinhaEFD(efd.Lines[I], '|', 2) = '0200' then
        begin

          if not qrProdutos.Locate('COD_ITEM', LinhaEFD(efd.Lines[I], '|', 3), [loCaseInsensitive]) then
          begin
            qrProdutos.Insert;
            qrProdutosCODIGO.Value := Inc('SPED_0200', 'CODIGO', '');
            qrProdutosDT_INI.AsDateTime := StrToDate(DateToStr(DT_INI));
            qrProdutosDT_FIM.AsDateTime := StrToDate(DateToStr(DT_FIM));
            qrProdutosREG.Value := '0200';
            qrProdutosCOD_ITEM.Value := LinhaEFD(efd.Lines[I], '|', 3);
            qrProdutosDESCR_ITEM.Value := AllTrim(LinhaEFD(efd.Lines[I], '|', 4));
            qrProdutosCOD_BARRA.Value := LinhaEFD(efd.Lines[I], '|', 5);
            qrProdutosCOD_ANT_ITEM.Value := LinhaEFD(efd.Lines[I], '|', 6);
            qrProdutosUNID_INV.Value := Copy(LinhaEFD(efd.Lines[I], '|', 7), 1, 2);
            qrProdutosTIPO_ITEM.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 8));
            qrProdutosCOD_NCM.Value := LinhaEFD(efd.Lines[I], '|', 9);
            qrProdutosEX_IPI.Value := LinhaEFD(efd.Lines[I], '|', 10);
            qrProdutosCOD_GEN.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 11));
            qrProdutosCOD_LST.Value := isInteger(LinhaEFD(efd.Lines[I], '|', 12));
            qrProdutosALIQ_ICMS.Value := isFloat(LinhaEFD(efd.Lines[I], '|', 13));
            qrProdutos.Post;
            FPrincipal.Msg('0200 - ' + qrProdutosCOD_ITEM.AsString + ' - ' + qrProdutosDESCR_ITEM.AsString, 10, clBlack);
            Application.ProcessMessages;
          end;

        end;

      end;

    end;
  end;

end;

procedure ImportarDadosECF;
var
  I: integer;
begin
  with FPrincipal do
  begin

    MemoEFD.Clear;

    for I := 0 to FPrincipal.ListaEFDECF.Count - 1 do
    begin

      if ListaEFDECF.Checked[I] = true then
      begin
        FPrincipal.LbMensagem.Caption := ExtractFileName(ListaEFDECF.Items[I]);
        FPrincipal.MemoEFD.Lines.LoadFromFile(ListaEFDECF.Items[I]);
        ImportarRegistrosECF;
      end;

    end;

  end;
end;

procedure ImportarRegistrosECF;
begin
  with FPrincipal do
  begin
    PageSPED.ActivePageIndex := 0;
    FPrincipal.Progresso.Visible := true;

    // Mensagem(FPrincipal.MemoSped,'', 08, clBlue);
    // Mensagem(FPrincipal.MemoSped,'0200 - IDENTIFICAÇÃO DOS PRODUTOS', 10, clBlue);
    // Mensagem(FPrincipal.MemoSped,'', 08, clBlue);

    { produtos }
    Mensagem(FPrincipal.MemoSped, 'Importando produtos...', 12, clBlack);
    Imp_Reg_0200(Datai.Date, Dataf.Date, MemoEFD);
    Mensagem(FPrincipal.MemoSped, 'Importando produtos - OK', 12, clBlue);


    // Msg('', 08, clBlue);
    // Msg('0190 - UNIDADES DE MEDIDAS', 10, clBlue);
    // Msg('', 08, clBlue);

    { unidades de medidas }
    // AddItemListView('Importando unidades', icProcessa);
    // Imp_Reg_0190(Datai.Date, Dataf.Date, MemoEFD);
    // IconListView(ListSPED.Items.Count - 1, icOK);

    // Mensagem(FPrincipal.MemoSped, '', 08, clBlue);
    // Mensagem(FPrincipal.MemoSped, 'C400 - REGISTROS ECF', 10, clBlue);
    // Mensagem(FPrincipal.MemoSped, '', 08, clBlue);

    { importa registros ECF completo }
    Mensagem(FPrincipal.MemoSped, 'Importando movimentações...', 12, clBlack);
    Imp_Reg_C400(Datai.Date, Dataf.Date, MemoEFD);
    Mensagem(FPrincipal.MemoSped, 'Importando movimentações - OK', 12, clBlue);

  end;
end;

end.
