unit clienteA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, AdvGlowButton,
  TFlatPanelUnit, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ACBrBase, ACBrSocket, ACBrConsultaCPF, ACBrValidador, System.ImageList,
  Vcl.ImgList, MaskUtils, ZSqlUpdate;

type
  TFrmclient = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    AdvSmoothExpanderPanel2: TAdvSmoothExpanderPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    EditCaptcha: TEdit;
    EditCNPJ: TEdit;
    Panel4: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    btnConsultar: TButton;
    EditDtNasc: TEdit;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    Panel5: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    ZqrCliente: TZQuery;
    Panel7: TPanel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    ACBrValidador1: TACBrValidador;
    FlatPanel1: TFlatPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    ImageList1: TImageList;
    Timer1: TTimer;
    procedure Edit2Exit(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmclient: TFrmclient;
    const
   sc_DragMove = $f012;
implementation

{$R *.dfm}

uses modulo, venda_pdv, principal;


procedure TFrmclient.AdvGlowButton1Click(Sender: TObject);
begin
     panel3.Visible := false;
           panel5.Visible := true;
           Timer1.Enabled := false;
end;

procedure TFrmclient.AdvGlowButton2Click(Sender: TObject);
begin
   panel3.Visible := true;
           panel5.Visible := false;

  EditCNPJ.SetFocus;
  if panel3.Visible = true then
     Timer1.Enabled := True;
end;

procedure TFrmclient.AdvMetroButton1Click(Sender: TObject);
begin
close;
end;

procedure TFrmclient.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TFrmclient.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmclient.bgravarClick(Sender: TObject);
var
    conta : integer;
    STRSQL: string;
begin
     STRSQL := 'INSERT INTO c000007 (CODIGO, NOME, APELIDO, CIDADE, UF, TIPO, SITUACAO, CPF, DATA_CADASTRO, DATA_ULTIMACOMPRA, COD_MUNICIPIO_IBGE, IBGE) ';
     STRSQL := STRSQL + 'VALUES (:CODIGO, :NOME, :APELIDO, :CIDADE, :UF, :TIPO, :SITUACAO, :CPF, :DATA_CADASTRO, :DATA_ULTIMACOMPRA, :COD_MUNICIPIO_IBGE, :IBGE)' ;
      if edit3.text = '' then
       begin
              showmessage('É obrigatorio entrar com o Nome');
              conta := conta + 1;
              if conta > 2 then
                 close;
        end
       else begin
             try
               with  Zqrcliente do
                    begin
                           close;
                           sql.clear;
                           sql.Add(STRSQL);
                           parambyname('CODIGO').AsString := frmprincipal.codifica('000007');
                           parambyname('NOME').AsString := edit3.Text;
                           parambyname('APELIDO').AsString := edit3.Text;
                           parambyname('CIDADE').AsString := FRMMODULO.qremitente.FieldByName('cidade').asstring;
                           parambyname('UF').AsString := FRMMODULO.qremitente.FieldByName('uf').asstring;
                           parambyname('TIPO').AsInteger := 1;
                           parambyname('SITUACAO').AsInteger := 1;
                           parambyname('CPF').AsString := FormatMaskText('999.999.999-99;0;_', Edit2.Text);
                           parambyname('DATA_CADASTRO').AsDate := DATE();
                           parambyname('DATA_ULTIMACOMPRA').AsDate := DATE();
                           parambyname('COD_MUNICIPIO_IBGE').AsString := FRMMODULO.qremitente.FieldByName('COD_MUNICIPIO_IBGE').asstring;
                           parambyname('IBGE').AsString := FRMMODULO.qremitente.FieldByName('IBGE').asstring;
                            execsql;
                            TRY
                                frmmodulo.Conexao.Commit;
                            FINALLY
                                  ABORT;
                            END;
                    end;



             except

             end;


               Zqrcliente.close;
               Zqrcliente.sql.clear;
               Zqrcliente.sql.Add('select * from c000007 where CPF like '''+FormatMaskText('999.999.999-99;0;_', Edit2.Text)+'%'' ');
               Zqrcliente.open;
              if Zqrcliente.RecNo > 0 then
                begin
                      pgravar.Visible := false;
                      frmvenda_pdv.eCliente.Text := Zqrcliente.fieldbyname('codigo').asstring;
                      frmvenda_pdv.eNomeCliente.Text := Zqrcliente.fieldbyname('nome').asstring;
                       edit2.Text :=  '';
                       edit3.Text :=  '';
                      close;
                    //  frmvenda_pdv.SetFocus;
               end ;
       end;





end;

procedure TFrmclient.btnConsultarClick(Sender: TObject);

begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCPF1.Consulta(EditCNPJ.Text, EditDtNasc.Text, EditCaptcha.Text) then
    begin
       edit2.Text := '';
      Edit3.Text := ACBrConsultaCPF1.Nome;
      edit2.Text := EditCNPJ.Text;
         Zqrcliente.close;
                Zqrcliente.sql.clear;
               Zqrcliente.sql.Add('select * from c000007 where CPF like '''+FormatMaskText('999.999.999-99;0;_', Edit2.Text)+'%'' ');
               Zqrcliente.open;

                if Zqrcliente.RecNo > 0 then
    begin
          pgravar.Visible := false;
           edit3.Text := Zqrcliente.fieldbyname('nome').asstring;
          frmvenda_pdv.eCliente.Text := Zqrcliente.fieldbyname('codigo').asstring;
          frmvenda_pdv.eNomeCliente.Text := Zqrcliente.fieldbyname('nome').asstring;
          edit2.Text :=  '';
                       edit3.Text :=  '';
          close;
    end
    else
    begin
           pgravar.Visible := true;
           panel3.Visible := false;
           panel5.Visible := true;
           FlatPanel1.Visible := false;
    end;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;


procedure TFrmclient.Edit2Exit(Sender: TObject);
var
    cont : integer;
begin
       ACBrValidador1.Documento := FormatMaskText('999.999.999-99;0;_', Edit2.Text);


        if not ACBrValidador1.Validar then
        begin
         // showmessage ('Cpf Inválida ' );
          abort;
        end
        else
             begin
                    Zqrcliente.close;
                Zqrcliente.sql.clear;
               Zqrcliente.sql.Add('select * from c000007 where CPF like '''+FormatMaskText('999.999.999-99;0;_', Edit2.Text)+'%'' ');
               Zqrcliente.open;

             end;

    if Zqrcliente.RecNo > 0 then
    begin
          pgravar.Visible := false;
           edit3.Text := Zqrcliente.fieldbyname('nome').asstring;
          frmvenda_pdv.eCliente.Text := Zqrcliente.fieldbyname('codigo').asstring;
          frmvenda_pdv.eNomeCliente.Text := Zqrcliente.fieldbyname('nome').asstring;
          edit2.Text :=  '';
                       edit3.Text :=  '';
          close;
          //frmvenda_pdv.SetFocus;
    end
    else
    begin
           pgravar.Visible := true;
           FlatPanel1.Visible := false;
   // close;
    end;

end;
procedure TFrmclient.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
if not (edit2.Text = '') then
begin
edit2.OnExit(Self);
edit3.SetFocus;
end
end;

procedure TFrmclient.FormShow(Sender: TObject);
begin
  edit2.SetFocus;
end;

procedure TFrmclient.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream := TMemoryStream.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile( ImgArq );
    Image1.Picture.LoadFromFile( ImgArq );

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure TFrmclient.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled := False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCaptcha.SetFocus;
end;

end.
