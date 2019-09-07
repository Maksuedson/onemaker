unit NeoKeyUnit;

interface
uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;
type
NeoKey=class
  public
    { Public declarations }
    function Login(sChallenge: string; Response: Pchar) : integer;
    function WriteMemory(Data: string; Address: integer) : integer;
    function ReadMemory(Data: Pchar; Address: Integer; Size : Integer) : Integer;
    function Encrypt(Data: pointer; Size : Integer) : Integer;
    function Decrypt(Data: pointer; Size : Integer) : Integer;
    function ReadHardwareID(Data: pointer) : Integer;
    function ReadLicense(LicenseParam: pointer) : Integer;
    function LoginNext(sChallenge: string; Response: Pchar) : integer;
    function LoadCDC(CDC: Pchar) : Integer;
    function ApplyCPC(CPC: Pchar) : Integer;
    function ApplyCPCViaFile(CPCPath: Pchar; Size : Integer) : Integer;
    function Logout() : Integer;

end;
type LicenseParameters = record
     Enable : Byte;
     SigleInstance : Byte;
     NetUsers : Byte;
     ExpireDate : array[0..7] of Byte;
     Counter : array[0..1] of Byte;
     ID: Byte;
     Reserved:array[0..1] of Byte;
end;

implementation
function NeoKeyCall(funcode: integer; param1:pointer; s1: integer; param2: pointer; s2: integer; param3: pointer; s3: integer; LicenseParameter: pointer):integer;

 	{$IFDEF DEBUG}
        stdcall; external 'ClientAPI32dbg.dll' name 'NeoKeyCall';
  {$ELSE}
        stdcall; external 'ClientAPI32.dll' name 'NeoKeyCall';
  {$ENDIF}

function NeoKey.Login(sChallenge: string; Response: Pchar) : integer;
var
Challenge:array[0..16] of Byte;
License:LicenseParameters;
ret:Integer;
ResponseS: string;
begin
  Move(sChallenge[1],Challenge,Length(sChallenge));
  License.Enable:=0;
  License.ID:=0;
  ret:= NeoKeyCall(1,@Challenge,16,Nil,0,Nil,0,@License);
  //Compare Challenge with the response you had set.
  if ret = 0 then
  begin
  ResponseS := PChar(@Challenge);
  StrPcopy(Response,ResponseS);
  end;
  result:=ret;

end;
function NeoKey.WriteMemory(Data: string; Address: integer) : integer;
var
DataBytes:array[0..3] of Byte;
License:LicenseParameters;
ret:Integer;
loop:Integer;
count:Integer;
begin
     loop:=Length(Data);
     //Size of data must be 4,8,12,16...
     if (loop mod 4) <> 0 then result:=1;
     count:=address;  //address must be from 0 to 1023
     // Each Call writes 4 bytes
     while count < loop/4 do begin
     Move(Data[1 + count * 4],DataBytes,4);
     ret:= NeoKeyCall(2,@DataBytes,count,Nil,0,Nil,0,@License);
      if ret <> 0 then break;
      count:=count + 1;
      if count>1023 then
      begin
      count:=0;
      break;
      end;
      result:=ret;
end;
end;

function NeoKey.ReadMemory(Data: Pchar; Address: Integer; Size : Integer) : Integer;
var
DataBytes:array[0..3] of Byte;
License:LicenseParameters;
ret:Integer;
loop:Integer;
count:Integer;
DataRead: string;
begin
     //Size of data must be 4,8,12,16...
     loop:=Size;
     if (Size mod 4) <> 0 then result:=1;
     count:=address; //address must be from 0 to 1023
    
     // Each Call writes 4 bytes
     while count < loop/4 do begin
     DataBytes[0]:=1;DataBytes[1]:=1;DataBytes[2]:=1;DataBytes[3]:=1;
      ret:= NeoKeyCall(3,@DataBytes,count,Nil,0,Nil,0,@License);
      if ret <> 0 then break;
      //Mount read buffer
      DataRead := DataRead + copy(PChar(@DataBytes),1,4);
      StrPcopy(Data,DataRead);
      count:=count + 1;
      if count>1023 then
      begin
      count:=0;
      break;
      end;
      result:=ret;
end;
end;
function NeoKey.Encrypt(Data: pointer; Size : Integer) : Integer;
var
ret:Integer;
begin
     //Size of data must be 16,32,48...
     if (Size mod 16) <> 0 then result:=1;
     ret:= NeoKeyCall(4,Data,Size,Nil,0,Nil,0,Nil);
     result:=ret;
end;

function NeoKey.Decrypt(Data: pointer; Size : Integer) : Integer;
var
ret:Integer;
begin
     //Size of data must be 16,32,48...
     if (Size mod 16) <> 0 then result:=1;
     ret:= NeoKeyCall(5,Data,Size,Nil,0,Nil,0,Nil);
     result:=ret;
end;
function NeoKey.ReadHardwareID(Data: pointer) : Integer;
var
ret:Integer;
begin
     ret:= NeoKeyCall(10,Data,8,Nil,0,Nil,0,Nil);
     result:=ret;
end;
function NeoKey.ReadLicense(LicenseParam: pointer) : Integer;
var
ret:Integer;
begin
     ret:= NeoKeyCall(7,Nil,0,Nil,0,Nil,0,LicenseParam);
     result:=ret;
end;
function NeoKey.LoginNext(sChallenge: string; Response: Pchar) : integer;
var
Challenge:array[0..16] of Byte;
License:LicenseParameters;
ret:Integer;
ResponseS: string;
begin
//Logout from the First Device
 ret:= NeoKeyCall(16,Nil,0,Nil,0,Nil,0,Nil);

//Set to login Next
  ret:= NeoKeyCall(14,Nil,0,Nil,0,Nil,0,Nil);

//Try to login into Next attached device
  Move(sChallenge[1],Challenge,Length(sChallenge));
  License.Enable:=0;
  License.ID:=0;
  ret:= NeoKeyCall(1,@Challenge,16,Nil,0,Nil,0,@License);
  //Compare Challenge with the response you had set.
  if ret = 0 then MessageBox(0,@Challenge,'Response', 0);
  ResponseS := PChar(@Challenge);
  StrPcopy(Response,ResponseS);
  result:=ret;
end;
function NeoKey.Logout() : Integer;
var
ret:Integer;
begin
     ret:= NeoKeyCall(16,Nil,0,Nil,0,Nil,0,Nil);
     result:=ret;
end;

function NeoKey.LoadCDC(CDC: PChar) : integer;
var
ret:Integer;
begin
  ret:= NeoKeyCall(31,CDC,32,Nil,0,Nil,0,Nil);
  result:=ret;
end;

function NeoKey.ApplyCPC(CPC: PChar) : integer;
var
ret:Integer;
begin
  ret:= NeoKeyCall(32,CPC,32,Nil,0,Nil,0,Nil);
  result:=ret;
end;

function NeoKey.ApplyCPCViaFile(CPCPath: PChar; Size : Integer) : integer;
var
ret:Integer;
begin
  ret:= NeoKeyCall(33,CPCPath,Size,Nil,0,Nil,0,Nil);
  result:=ret;
end;
end.
