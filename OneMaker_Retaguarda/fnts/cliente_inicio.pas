unit cliente_inicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvShapeButton, StdCtrls, Mask, RzEdit, RzCmboBx, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, maskutils, Menus;

type
  Tfrmcliente_inicio = class(TForm)
    AdvShapeButton1: TAdvShapeButton;
    Bevel1: TBevel;
    Label1: TLabel;
    lcpf: TLabel;
    combo_pessoa: TRzComboBox;
    ED_CPF: TRzEdit;
    query1: TZQuery;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    procedure combo_pessoaChange(Sender: TObject);
    procedure combo_pessoaKeyPress(Sender: TObject; var Key: Char);
    procedure ED_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure Cancelar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcliente_inicio: Tfrmcliente_inicio;

implementation

uses principal, cliente, modulo;

{$R *.dfm}

procedure Tfrmcliente_inicio.combo_pessoaChange(Sender: TObject);
begin
  if combo_PESSOA.ITEMINDEX = 0 then
    LCPF.Caption := 'CPF:'
  else
    Lcpf.CAPTION := 'CNPJ:';

end;

procedure Tfrmcliente_inicio.combo_pessoaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then ED_CPF.SETFOCUS;
  if key = #27 then close;
end;

procedure Tfrmcliente_inicio.ED_CPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then close;

  if key = #13 then
  begin
    if ed_cpf.Text <> '' then
    begin


      if combo_pessoa.itemindex = 0 then
      begin
        frmprincipal.CheckCPF1.documento := ed_cpf.text;
        if frmprincipal.CheckCPF1.validar then
        begin
          if pos('-', ed_cpf.text) = 0 then
            ed_cpf.text := FormatMaskText('999.999.999-99;0;_', ed_cpf.text);
        end
        else
        begin
          Showmessage('CPF Inválido!');
          ed_cpf.SetFocus;
          exit;
        end;
      end
      else
      begin
          //if Length(frmprincipal.somenteNumero(ed_cpf.text)) > 11 then

        begin
          if frmprincipal.TestaCnpj(ed_cpf.text) then
          begin
            if pos('/', ed_cpf.text) = 0 then ed_cpf.text := FormatMaskText('99.999.999/9999-99;0;_', ed_cpf.text);
          end
          else
          begin
            Showmessage('CNPJ Inválido!');
            ed_cpf.SetFocus;
            exit;
          end;
        end;

          {else
          begin
            frmprincipal.CheckCPF1.Cpf := ed_cpf.text;
            if frmprincipal.CheckCPF1.Valido then
            begin
              if pos('-',ed_cpf.text) = 0 then
                ed_cpf.text := FormatMaskText('999.999.999-99;0;_',ed_cpf.text);
            end
            else
            begin
              Showmessage('CPF Inválido!');
              ed_cpf.SetFocus;
              exit;
            end;
          end;
          }
      end;

      if ed_cpf.text <> '' then
      begin

        query1.close;
        query1.sql.clear;
        query1.sql.Add('select * from c000007 where cpf = ''' + ed_cpf.text + '''');
        query1.open;
        if query1.recordcount > 0 then
        begin
          if APPLICATION.MESSAGEBOX('Existe um cliente cadastrado com este CPF/CNPJ! Deseja cancelar esta ficha de cadastro e ir até a ficha deste cliente?', 'Atenção', mb_yesno + mb_iconwarning + MB_DEFBUTTON2) = idyes then
          begin
            frmmodulo.qrcliente.Locate('codigo', query1.fieldbyname('codigo').asstring, [loCaseInsensitive]);
            close;
          end
          else
          begin
            ed_cpf.text := '';
            ed_cpf.SETFOCUS;
          end;
          exit;
        end
        else
        begin
          CONTINUA_INCLUSAO := true;
          CLI_PESSOA := combo_pessoa.text;
          cli_cpf := ed_cpf.text;
          close;
        end;

      end
      else
      begin
        CONTINUA_INCLUSAO := true;
        CLI_PESSOA := combo_pessoa.text;
        cli_cpf := ed_cpf.text;
        close;
      end;
    end
    else
    begin

      CONTINUA_INCLUSAO := true;
      CLI_PESSOA := combo_pessoa.text;
      cli_cpf := ed_cpf.text;
      close;

    end;


  end;
end;

procedure Tfrmcliente_inicio.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente_inicio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
