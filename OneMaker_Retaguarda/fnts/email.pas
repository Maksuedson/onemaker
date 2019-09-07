unit email;

interface
uses SysUtils, Classes, IdBaseComponent, IdComponent, dialogs,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdMessage, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Vcl.StdCtrls, IdAttachmentFile, IdAttachment;

  var
      SSL:Boolean;
      smail: string;
type
  TEmail = class
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    constructor Create;
  private

  public
    function EnviarEmail(De, Para, Titulo, Corpo, Arquivo: string; usuario: string; senha: string; servidor_smtp: string; porta: integer; SSL:Boolean): boolean;
  end;

implementation

uses notafiscal_menu, orcamento;

constructor TEmail.Create;
begin
  IdSMTP1 := TIdSMTP.Create(nil);
  IdMessage1 := TIdMessage.Create(nil);
end;

function TEmail.EnviarEmail(De, Para, Titulo, Corpo, Arquivo: string; usuario: string; senha: string; servidor_smtp: string; porta: integer; SSL:Boolean): boolean;
var
  Lista:TStrings;
  I: Integer;
  IdSSL: TIdSSLIOHandlerSocketOpenSSL;
begin
// anexos
   Lista:=TStringList.Create;
   Lista.delimiter:='|';
   Lista.StrictDelimiter:=False;
   Lista.DelimitedText:=Arquivo;

    IdMessage1.Clear;
    IdMessage1.From.Text := De;
    IdMessage1.ReplyTo.EMailAddresses := De;
    IdMessage1.Recipients.EMailAddresses := Para;
    IdMessage1.Date := Now;
    IdMessage1.Subject := Titulo;
    IdMessage1.Priority := mpNormal;
    IdSMTP1.Host := servidor_smtp;
    IdSMTP1.Port := porta;
    IdSMTP1.UserName := usuario;
    IdSMTP1.Password := senha;

    //anexando
     for I := 0 to lista.Count -1 do
     begin
          if (Lista.Strings[i] <> '') then
          TIdAttachmentFile.Create(IdMessage1.MessageParts, Lista.Strings[i]);
     end;
      IdMessage1.Body.Add(Corpo);

      if SSL = True  then
      begin
        with IdSMTP1 do
        begin
          IdSSL := nil;
          try
            port := porta;
            IdSSL := TIdSSLIOHandlerSocketOpenSSL.create(nil);
            IdSMTP1.IOHandler := IdSSL;
            UseTLS := utUseImplicitTLS;

          except
            on E: Exception do
            begin
              IOHandler := TIdIOHandler.MakeDefaultIOHandler(nil);
              UseTLS := utNoTLSSupport;
            end;
          end;
          if Assigned(IdSSL) then
          begin
            if (frmnotafiscal_menu.edtSmtpHost.Text = 'smtp.gmail.com') then
               IdSSL.SSLOptions.Method := sslvTLSv1
            else
               IdSSL.SSLOptions.Method := sslvSSLv3;

             IdSSL.SSLOptions.Mode := sslmClient;
          end;
          AuthType := satDefault;
        end;
      end
      else
      begin
         with IdSMTP1 do
        begin
          try
            port := porta;
            IdSSL := TIdSSLIOHandlerSocketOpenSSL.create();
            IdSMTP1.IOHandler :=  IdSSL;
            UseTLS := utUseExplicitTLS;
          except
            on E: Exception do
            begin
              IOHandler := TIdIOHandler.MakeDefaultIOHandler(nil);
              UseTLS := utNoTLSSupport;
            end;
          end;
          if Assigned(IdSSL) then
          begin
            IdSSL.SSLOptions.Method :=  sslvTLSv1;
            IdSSL.SSLOptions.Mode := sslmClient;
          end;
          AuthType := satDefault;
        end;
      end;

      IdSMTP1.Connect;
      Result:= True;


    try
      IdSMTP1.Send(IdMessage1);
    except
        Result:= False;
    end;

  IdSMTP1.Disconnect;
end;
end.
