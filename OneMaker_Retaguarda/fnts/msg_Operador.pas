unit msg_Operador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvNavBar, AdvGlassButton,
  pngimage, Menus, AdvMenus, acPNG, Vcl.Imaging.jpeg;

type
  TfrmMsg_Operador = class(TForm)
    Image1: TImage;
    lb_msg: TLabel;
    PopupMenu1: TAdvPopupMenu;
    E1: TMenuItem;
    lbtipo: TLabel;
    Impergunta: TImage;
    Timer1: TTimer;
    Iminformacao: TImage;
    Imexclamacao: TImage;
    Imcerto: TImage;
    imerro: TImage;
    procedure FormShow(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipo_msg: Integer;
  end;

var
  frmMsg_Operador: TfrmMsg_Operador;

implementation

uses modulo;

{$R *.dfm}

// -------------------------------------------------------------------------- //

procedure TfrmMsg_Operador.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Brush.Style := bsClear;

  tipo_msg := frmmodulo.tipo_msg;

  case tipo_msg of

    1: begin
        Imcerto.Visible := True;
        Imcerto.Refresh;
        lbtipo.Caption := 'Sucesso';
        lbtipo.Width := 70;
        Self.Repaint;
      end;
    2: begin
        imerro.Visible := True;
        imerro.Refresh;
        lbtipo.Caption := 'Erro';
        lbtipo.Width := 70;
        Self.Repaint;
      end;
    3: begin
        Impergunta.Visible := True;
        Impergunta.Refresh;
        lbtipo.Caption := 'Pergunta';
        lbtipo.Width := 70;
        Self.Repaint;
      end;
    4: begin
        Iminformacao.Visible := True;
        Iminformacao.Refresh;
        lbtipo.Caption := 'Informação';
        lbtipo.Width := 70;
        Self.Repaint;
      end;
    5: begin
        Imexclamacao.Visible := True;
        Imexclamacao.Refresh;
        lbtipo.Caption := 'Exclamação';
        lbtipo.Width := 70;
        Self.Repaint;
      end;
  end
end;

// -------------------------------------------------------------------------- //

procedure TfrmMsg_Operador.E1Click(Sender: TObject);
begin
  Close
end;

procedure TfrmMsg_Operador.FormCreate(Sender: TObject);
begin
  tipo_msg := frmmodulo.tipo_msg;

  case tipo_msg of

    1: begin
        Imcerto.Visible := True;
        Imcerto.Refresh;
        lbtipo.Caption := 'Sucesso';
        lbtipo.Width := 70;
        Self.Repaint;
      end;
    2: begin
        imerro.Visible := True;
        imerro.Refresh;
        lbtipo.Caption := 'Erro';
        lbtipo.Width := 70;
        Timer1.Enabled := False;
        Self.Repaint;
      end;
    3: begin
        Impergunta.Visible := True;
        Impergunta.Refresh;
        lbtipo.Caption := 'Pergunta';
        Timer1.Enabled := False;
        lbtipo.Width := 70;
        Self.Repaint;
      end;
    4: begin
        Iminformacao.Visible := True;
        Iminformacao.Refresh;
        lbtipo.Caption := 'Informação';
        lbtipo.Width := 70;
        Self.Repaint;
      end;
    5: begin
        Imexclamacao.Visible := True;
        Imexclamacao.Refresh;
        lbtipo.Caption := 'Exclamação';
        lbtipo.Width := 70;
        Self.Repaint;
      end;
  end

end;

end.
