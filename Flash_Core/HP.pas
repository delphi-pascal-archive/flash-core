unit HP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, XPLabel, XPGroupBox, LbSpeedButton, Registry,
  XPButton, IdBaseComponent, IdComponent, IdIPWatch, NB30, ComCtrls;

  type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

type
  TInfoForm = class(TForm)
    T1: TTimer;
    OK: TXPButton;
    IdIPWatch: TIdIPWatch;
    TabPage: TPageControl;
    tab1: TTabSheet;
    tab3: TTabSheet;
    tab4: TTabSheet;
    txt1: TXPLabel;
    txt2: TXPLabel;
    txt3: TXPLabel;
    txt4: TXPLabel;
    txt5: TXPLabel;
    txt6: TXPLabel;
    txt7: TXPLabel;
    txt8: TXPLabel;
    txt9: TXPLabel;
    txt10: TXPLabel;
    txt11: TXPLabel;
    txt12: TXPLabel;
    txt13: TXPLabel;
    txt26: TXPLabel;
    ed1: TXPLabel;
    ed2: TEdit;
    ed3: TEdit;
    ed4: TEdit;
    ed5: TEdit;
    ed6: TEdit;
    ed7: TEdit;
    ed8: TEdit;
    ed9: TEdit;
    ed10: TEdit;
    ed11: TEdit;
    ed12: TEdit;
    ed13: TEdit;
    ed14: TEdit;
    tab2: TTabSheet;
    txt28: TXPLabel;
    txt29: TXPLabel;
    txt30: TXPLabel;
    ed15: TEdit;
    ed16: TEdit;
    ed17: TEdit;
    txt14: TXPLabel;
    txt15: TXPLabel;
    txt19: TXPLabel;
    txt18: TXPLabel;
    txt17: TXPLabel;
    txt16: TXPLabel;
    txt25: TLabel;
    txt24: TLabel;
    txt23: TLabel;
    txt22: TLabel;
    txt21: TLabel;
    txt20: TLabel;
    txt27: TXPLabel;
    txt31: TXPLabel;
    ed18: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure T1Timer(Sender: TObject);
    procedure ed3Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);

  private

    Sm: HWND;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;
    
  public

  end;

var
  InfoForm: TInfoForm;

implementation

uses OP, NP;

{$R *.dfm}

function GetMACAddress: string;
var
NCB: PNCB;
Adapter: PAdapterStatus;
RetCode: char;
I: integer;
Lenum: PlanaEnum;
SystemID: string;
begin
Result := '';
SystemID := '';
Getmem(NCB, SizeOf(TNCB));
Fillchar(NCB^, SizeOf(TNCB), 0);
Getmem(Lenum, SizeOf(TLanaEnum));
Fillchar(Lenum^, SizeOf(TLanaEnum), 0);
Getmem(Adapter, SizeOf(TAdapterStatus));
Fillchar(Adapter^, SizeOf(TAdapterStatus), 0);
Lenum.Length := chr(0);
NCB.ncb_command := chr(NCBENUM);
NCB.ncb_buffer := Pointer(Lenum);
NCB.ncb_length := SizeOf(Lenum);
RetCode := Netbios(NCB);
i := 0;
repeat
Fillchar(NCB^, SizeOf(TNCB), 0);
Ncb.ncb_command  := chr(NCBRESET);
Ncb.ncb_lana_num := lenum.lana[I];
RetCode          := Netbios(Ncb);
Fillchar(NCB^, SizeOf(TNCB), 0);
Ncb.ncb_command  := chr(NCBASTAT);
Ncb.ncb_lana_num := lenum.lana[I];
Ncb.ncb_callname := '*               ';
Ncb.ncb_buffer := Pointer(Adapter);
Ncb.ncb_length := SizeOf(TAdapterStatus);
RetCode        := Netbios(Ncb);
if (RetCode = chr(0)) or (RetCode = chr(6)) then
begin
SystemId := IntToHex(Ord(Adapter.adapter_address[0]), 2) + '-' +
IntToHex(Ord(Adapter.adapter_address[1]), 2) + '-' +
IntToHex(Ord(Adapter.adapter_address[2]), 2) + '-' +
IntToHex(Ord(Adapter.adapter_address[3]), 2) + '-' +
IntToHex(Ord(Adapter.adapter_address[4]), 2) + '-' +
IntToHex(Ord(Adapter.adapter_address[5]), 2);
end;
Inc(i);
until (I >= Ord(Lenum.Length)) or (SystemID <> '00-00-00-00-00-00');
FreeMem(NCB);
FreeMem(Adapter);
FreeMem(Lenum);
GetMacAddress := SystemID;
end;

function WhichLanguage:string;
var
ID: LangID;
Language: array [0..100] of char;
begin
ID := GetSystemDefaultLangID;
VerLanguageName(ID, Language, 100);
Result := string(Language);
end;

function GetDomainName: AnsiString;
type
WKSTA_INFO_100 = record
wki100_platform_id: Integer;
wki100_computername: PWideChar;
wki100_langroup: PWideChar;
wki100_ver_major: Integer;
wki100_ver_minor: Integer;
end;
WKSTA_USER_INFO_1 = record
wkui1_username: PChar;
wkui1_logon_domain: PChar;
wkui1_logon_server: PChar;
wkui1_oth_domains: PChar;
end;
type
TWin95_NetUserGetInfo = function(ServerName, UserName: PChar; Level: DWORD; var
BfrPtr: Pointer): Integer;
stdcall;
TWin95_NetApiBufferFree = function(BufPtr: Pointer): Integer;
stdcall;
TWin95_NetWkstaUserGetInfo = function(Reserved: PChar; Level: Integer; var
BufPtr: Pointer): Integer;
stdcall;
TWinNT_NetWkstaGetInfo = function(ServerName: PWideChar; level: Integer; var
BufPtr: Pointer): Integer;
stdcall;
TWinNT_NetApiBufferFree = function(BufPtr: Pointer): Integer;
stdcall;

function IsWinNT: Boolean;
var
VersionInfo: TOSVersionInfo;
begin
VersionInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
Result := GetVersionEx(VersionInfo);
if Result then
Result := VersionInfo.dwPlatformID = VER_PLATFORM_WIN32_NT;
end;
var
Win95_NetUserGetInfo: TWin95_NetUserGetInfo;
Win95_NetWkstaUserGetInfo: TWin95_NetWkstaUserGetInfo;
Win95_NetApiBufferFree: TWin95_NetApiBufferFree;
WinNT_NetWkstaGetInfo: TWinNT_NetWkstaGetInfo;
WinNT_NetApiBufferFree: TWinNT_NetApiBufferFree;
WSNT: ^WKSTA_INFO_100;
WS95: ^WKSTA_USER_INFO_1;
EC: DWORD;
hNETAPI: THandle;
begin
try
Result := '';
if IsWinNT then
begin
hNETAPI := LoadLibrary('NETAPI32.DLL');
if hNETAPI <> 0 then
begin @WinNT_NetWkstaGetInfo := GetProcAddress(hNETAPI, 'NetWkstaGetInfo');
@WinNT_NetApiBufferFree  := GetProcAddress(hNETAPI, 'NetApiBufferFree');
EC := WinNT_NetWkstaGetInfo(nil, 100, Pointer(WSNT));
if EC = 0 then
begin
Result := WideCharToString(WSNT^.wki100_langroup);
WinNT_NetApiBufferFree(Pointer(WSNT));
end;
end;
end
else
begin
hNETAPI := LoadLibrary('RADMIN32.DLL');
if hNETAPI <> 0 then
begin @Win95_NetApiBufferFree := GetProcAddress(hNETAPI, 'NetApiBufferFree');
@Win95_NetUserGetInfo := GetProcAddress(hNETAPI, 'NetUserGetInfoA');
EC := Win95_NetWkstaUserGetInfo(nil, 1, Pointer(WS95));
if EC = 0 then
begin
Result := WS95^.wkui1_logon_domain;
Win95_NetApiBufferFree(Pointer(WS95));
end;
end;
end;
finally
if hNETAPI <> 0 then
FreeLibrary(hNETAPI);
end;
end;

procedure TInfoForm.FormCreate(Sender: TObject);
var
Reg: TRegistry;
Res: word;
PRes: PChar;
nchar, i: integer;
buf: array[0..255] of char;
Memo : TMemoryStatus;
UserName: array[0..255] of char;
size: dword;
s:string;
begin
GlobalMemoryStatus(Memo);
ed1.Caption := DateToStr(Date) + ', ' + TimeToStr(Time);
size := 55;
if GetUserName(UserName, size) then
ed2.Text := UserName;
txt20.Caption :=
FormatFloat('#,###" kb"', Memo.dwTotalPhys / 1024);
txt21.Caption :=
Format('%d %%', [Memo.dwMemoryLoad]);
txt22.Caption :=
Format('%0.0f mb',[Memo.dwAvailPageFile div 1024 / 1024]);
txt23.Caption :=
Format('%0.0f mb',[Memo.dwTotalPageFile div 1024 / 1024]);
txt24.Caption :=
Format('%0.0f mb',[Memo.dwTotalPhys div 1024 / 1024]);
txt25.Caption :=
Format('%0.3f mb',[Memo.dwAvailPhys div 1024 / 1024]);
//Organization
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',false)then
ed3.Text := reg.ReadString('RegisteredOrganization') else
ed3.Text := '';
//Operation system
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',false)then
ed4.Text := reg.ReadString('ProductName') else
ed4.Text := '';
//Build
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',false)then
ed5.Text := reg.ReadString('BuildLab') else
ed5.Text := '';
//Serial number of product
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',false)then
ed6.Text := reg.ReadString('ProductId') else
ed6.Text := '';
//System folder
PRes := StrAlloc(255);
Res := GetWindowsDirectory(PRes, 255);
if Res > 0 then ed7.Text := StrPas(PRes);
//System dictionary
Res := GetSystemDirectory(PRes, 255);
if Res > 0 then ed8.Text := StrPas(PRes);
//type of core
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',false) then
ed9.Text := reg.ReadString('CurrentType') else
ed9.Text := '';
//Version of BIOS
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('HARDWARE\DESCRIPTION\System',false) then
nchar := reg.ReadBinaryData('SystemBiosVersion', buf, 256) - 1;
S := '';
for i:=0 to nchar do begin
if buf[i] = #0
then S := S + ' '
else S := S + buf[i];
ed10.Text := (S);
//Date of BIOS
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('HARDWARE\DESCRIPTION\System',false)then
ed11.Text := (reg.ReadString('SystemBiosDate')) else
ed11.Text := '';
//Processor and model of processor
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('HARDWARE\DESCRIPTION\System\CentralProcessor\0',false)then
ed12.Text := reg.ReadString('ProcessorNameString');
ed13.Text := reg.ReadString('Identifier');
ed14.Text := WhichLanguage;
ed18.Text := GetDomainName;
end;
end;

procedure TInfoForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
InfoForm.OnActivate := nil;
IdIPWatch.Free;
TabPage.Free;
txt1.Free;
txt2.Free;
txt3.Free;
txt4.Free;
txt5.Free;
txt6.Free;
txt7.Free;
txt8.Free;
txt9.Free;
txt10.Free;
txt11.Free;
txt12.Free;
txt13.Free;
txt14.Free;
txt15.Free;
txt16.Free;
txt17.Free;
txt18.Free;
txt19.Free;
txt20.Free;
txt21.Free;
txt22.Free;
txt23.Free;
txt24.Free;
txt25.Free;
txt26.Free;
txt27.Free;
txt28.Free;
txt29.Free;
txt30.Free;
txt31.Free;
ed1.Free;
ed2.Free;
ed3.Free;
ed4.Free;
ed5.Free;
ed6.Free;
ed7.Free;
ed8.Free;
ed9.Free;
ed10.Free;
ed11.Free;
ed12.Free;
ed13.Free;
ed14.Free;
ed15.Free;
ed16.Free;
ed17.Free;
ed18.Free;
T1.Free;
OK.Free;
end;

procedure TInfoForm.FormShow(Sender: TObject);
var
reg :TRegistry;
begin
TabPage.ActivePageIndex := 0;
T1.Enabled := True;
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion', false) then
ed3.Text := reg.ReadString('RegisteredOrganization');
if ToolForm.Ch13.Checked then
SetWindowLong(InfoForm.Handle, GWL_EXSTYLE,
GetWindowLOng(InfoForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TInfoForm.OKClick(Sender: TObject);
begin
InfoForm.Close;
end;

procedure TInfoForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TInfoForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
InfoForm.Close;
end;

procedure TInfoForm.T1Timer(Sender: TObject);
var
count, days, min, hours, seconds  : longint;
begin
try
ed15.Text := IdIPWatch.LocalIP;
ed16.Text := IdIPWatch.LocalName;
ed17.Text := GetMACAddress;
ed1.Caption := DateToStr(Date) + ', ' + TimeToStr(Time);
Count := GetTickCount();
Count := Count div 1000;
// Pull out Days
Days := Count div (24 * 3600);
If Days > 0 Then
Count := Count - (24 * 3600 * Days);
// Pull out HH:MM:SS
Hours := Count div 3600;
If Hours > 0 Then
Count := Count - (3600 * Hours);
Min := Count div 60;
Seconds := Count Mod 60;
if MainForm.EnItem.Checked then
begin
txt27.caption := IntToStr(Days) +
' Days ' + IntToStr(Hours) + ' hours ' + IntToStr(Min) +' minutes '
+ inttostr(seconds) +' seconds ';
end;
if MainForm.RusItem.Checked then
begin
txt27.caption := IntToStr(Days) +
' Дней ' + IntToStr(Hours) + ' часов ' + IntToStr(Min) +' минут '
+ inttostr(seconds) +' секунд ';
end;
except
end;
end;

procedure TInfoForm.WMMoving(var msg: TWMMoving);
var
r: TRect;
begin
if ToolForm.Ch20.Checked then
begin
r := Screen.WorkareaRect;
if msg.lprect^.left < r.left then
OffsetRect(msg.lprect^, r.left - msg.lprect^.left, 0);
if msg.lprect^.top < r.top then
OffsetRect(msg.lprect^, 0, r.top - msg.lprect^.top);
if msg.lprect^.right > r.right then
OffsetRect(msg.lprect^, r.right - msg.lprect^.right, 0);
if msg.lprect^.bottom > r.bottom then
OffsetRect(msg.lprect^, 0, r.bottom - msg.lprect^.bottom);
end;
inherited;
end;

procedure TInfoForm.ed3Change(Sender: TObject);
var
reg :TRegistry;
begin
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',True)then
reg.WriteString('RegisteredOrganization', ed3.Text);
end;

procedure TInfoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
T1.Enabled := False;
OK.SetFocus;
end;

procedure TInfoForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
