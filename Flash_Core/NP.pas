unit NP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, XpMan, Controls, Forms,
  Dialogs, Menus, FlashObjects, ShellApi, ActnList, ExtActns, IniFiles, ComCtrls,
  XPMenu, ImgList, CommDlg, ClipBrd, Registry, ExtCtrls, OleCtrls, StdCtrls,
  AppEvnts, ElScrollBar, DDEMan, StrUtils, ShlObj, ActiveX, ExtDlgs, Buttons,
  FileCtrl, ComObj, mmSystem, rmTrackBar;

  function OpenSaveFileDialog(ParentHandle: THandle; const DefExt, Filter, InitialDir,
  Title: string; var FileName: string; IsOpenDialog: Boolean): Boolean;

  const
   Tray        = Wm_User + 1;
   ToolPro     = Wm_User + 2;
   Cherta      = Wm_User + 3;
   AboutPro    = Wm_User + 4;
   AlignCenter = WM_USER + 1024;

 type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

 type
   TMainForm = class(TForm)
    MainMenu: TMainMenu;
    FileItem: TMenuItem;
    NewItem: TMenuItem;
    QuickOpenItem: TMenuItem;
    ExitItem: TMenuItem;
    spr7: TMenuItem;
    HelpItem: TMenuItem;
    LicItem: TMenuItem;
    SendItem: TMenuItem;
    AboutItem: TMenuItem;
    ControlItem: TMenuItem;
    ReplayItem: TMenuItem;
    StaffForwardItem: TMenuItem;
    StaffBackItem: TMenuItem;
    PlayItem: TMenuItem;
    spr16: TMenuItem;
    spr17: TMenuItem;
    StopItem: TMenuItem;
    ViewItem: TMenuItem;
    StatusItem: TMenuItem;
    ColorItem: TMenuItem;
    OptionsItem: TMenuItem;
    QualityItem: TMenuItem;
    OpenDlg: TOpenDialog;
    ChooseLangItem: TMenuItem;
    RusItem: TMenuItem;
    EnItem: TMenuItem;
    SysInfoItem: TMenuItem;
    MediumItem: TMenuItem;
    T1: TTimer;
    MainMenuItem: TMenuItem;
    OnTopItem: TMenuItem;
    spr8: TMenuItem;
    spr12: TMenuItem;
    spr15: TMenuItem;
    ServiceItem: TMenuItem;
    SeekBarItem: TMenuItem;
    ZoomInItem: TMenuItem;
    DefaultSizeItem: TMenuItem;
    MultipleItem: TMenuItem;
    spr13: TMenuItem;
    spr14: TMenuItem;
    ExeItem: TMenuItem;
    spr21: TMenuItem;
    HighItem: TMenuItem;
    LowItem: TMenuItem;
    IntProItem: TMenuItem;
    spr19: TMenuItem;
    ActionList: TActionList;
    RunProgram: TFileRun;
    TrayMenu: TPopupMenu;
    RestoreItem: TMenuItem;
    TerminateItem: TMenuItem;
    RefreshItem: TMenuItem;
    ImageList1: TImageList;
    InfoItem: TMenuItem;
    RunWinItem: TMenuItem;
    SelectProItem: TMenuItem;
    spr1: TMenuItem;
    PropProItem: TMenuItem;
    spr11: TMenuItem;
    HKItem: TMenuItem;
    spr9: TMenuItem;
    ImageList2: TImageList;
    T3: TTimer;
    DelOpenFileItem: TMenuItem;
    ApplicationEvents: TApplicationEvents;
    spr22: TMenuItem;
    FullPathItem: TMenuItem;
    SeekBarToolItem: TMenuItem;
    AlignSeekBarItem: TMenuItem;
    AlignLeftItem: TMenuItem;
    AlignRightItem: TMenuItem;
    spr10: TMenuItem;
    DelToRecycleItem: TMenuItem;
    CleanRecycleItem: TMenuItem;
    CopyPathNameToBufferItem: TMenuItem;
    GoToItem: TMenuItem;
    PathItem: TMenuItem;
    FindFilesItem: TMenuItem;
    FindItem: TMenuItem;
    spr23: TMenuItem;
    OpenItem: TMenuItem;
    SetScreenShotItem: TMenuItem;
    ScreenShotItem: TMenuItem;
    spr5: TMenuItem;
    spr2: TMenuItem;
    ResetItem: TMenuItem;
    FullScreenItem: TMenuItem;
    spr3: TMenuItem;
    T2: TTimer;
    CopyFileItem: TMenuItem;
    CleanBufferItem: TMenuItem;
    FlashView: TFlash;
    FavoritesItem: TMenuItem;
    AddFavItem: TMenuItem;
    OrgFavItem: TMenuItem;
    OpenRecycleBinItem: TMenuItem;
    spr24: TMenuItem;
    MacromediaFlashPlayerItem: TMenuItem;
    GoToNextItem: TMenuItem;
    CopyExeItem: TMenuItem;
    SeekMenu: TPopupMenu;
    WinHeadItem: TMenuItem;
    SaveFavLinksItem: TMenuItem;
    spr18: TMenuItem;
    SourceCodeItem: TMenuItem;
    spr20: TMenuItem;
    spr6: TMenuItem;
    RecycleBinItem: TMenuItem;
    AlignBottomItem: TMenuItem;
    OpenInNextSessionItem: TMenuItem;
    spr4: TMenuItem;
    FullDirPathItem: TMenuItem;
    CopyNameToBufferItem: TMenuItem;
    CopyDirPathToBufferItem: TMenuItem;
    ColorDlg: TColorDialog;
    CurrentFileInfoItem: TMenuItem;
    CopyToItem: TMenuItem;
    MoveToItem: TMenuItem;
    CopyToDirItem: TMenuItem;
    TipOnDayItem: TMenuItem;
    FlashLogItem: TMenuItem;
    spr25: TMenuItem;
    StatusBar: TPanel;
    StBar: TStatusBar;
    Panel: TPanel;
    SeekBar: TScrollBar;
    Panel1: TPanel;
    FlashSound: TrmTrackBar;
    HomePageItem: TMenuItem;
    procedure QuickOpenItemClick(Sender: TObject);
    procedure ExitItemClick(Sender: TObject);
    procedure NewItemClick(Sender: TObject);
    procedure StatusItemClick(Sender: TObject);
    procedure ColorItemClick(Sender: TObject);
    procedure OptionsItemClick(Sender: TObject);
    procedure T1Timer(Sender: TObject);
    procedure StopItemClick(Sender: TObject);
    procedure PlayItemClick(Sender: TObject);
    procedure StaffForwardItemClick(Sender: TObject);
    procedure StaffBackItemClick(Sender: TObject);
    procedure ReplayItemClick(Sender: TObject);
    procedure SysInfoItemClick(Sender: TObject);
    procedure SendItemClick(Sender: TObject);
    procedure DefaultSizeItemClick(Sender: TObject);
    procedure ZoomInItemClick(Sender: TObject);
    procedure SeekBarItemClick(Sender: TObject);
    procedure HighItemClick(Sender: TObject);
    procedure LowItemClick(Sender: TObject);
    procedure MediumItemClick(Sender: TObject);
    procedure MainMenuItemClick(Sender: TObject);
    procedure MultipleItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OnTopItemClick(Sender: TObject);
    procedure IntProItemClick(Sender: TObject);
    procedure LicItemClick(Sender: TObject);
    procedure AboutItemClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RestoreItemClick(Sender: TObject);
    procedure RusItemClick(Sender: TObject);
    procedure EnItemClick(Sender: TObject);
    procedure TerminateItemClick(Sender: TObject);
    procedure RefreshItemClick(Sender: TObject);
    procedure OpenDlgShow(Sender: TObject);
    procedure RunProgramFileRunBrowseDlgShow(Sender: TObject);
    procedure InfoItemClick(Sender: TObject);
    procedure SelectProItemClick(Sender: TObject);
    procedure RunWinItemClick(Sender: TObject);
    procedure PropProItemClick(Sender: TObject);
    procedure HKItemClick(Sender: TObject);
    procedure T3Timer(Sender: TObject);
    procedure DelOpenFileItemClick(Sender: TObject);
    procedure ApplicationEventsRestore(Sender: TObject);
    procedure PropFileItemClick(Sender: TObject);
    procedure FullPathItemClick(Sender: TObject);
    procedure AlignLeftItemClick(Sender: TObject);
    procedure AlignRightItemClick(Sender: TObject);
    procedure DelToRecycleItemClick(Sender: TObject);
    procedure CleanRecycleItemClick(Sender: TObject);
    procedure CopyPathNameToBufferItemClick(Sender: TObject);
    procedure GoToItemClick(Sender: TObject);
    procedure PathItemClick(Sender: TObject);
    procedure SeekBarContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure ApplicationEventsIdle(Sender: TObject; var Done: Boolean);
    procedure FindFilesItemClick(Sender: TObject);
    procedure FindItemClick(Sender: TObject);
    procedure OpenItemClick(Sender: TObject);
    procedure StBarDblClick(Sender: TObject);
    procedure SetScreenShotItemClick(Sender: TObject);
    procedure ScreenShotItemClick(Sender: TObject);
    procedure SeekBarMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure SeekBarMouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure ResetItemClick(Sender: TObject);
    procedure FullScreenItemClick(Sender: TObject);
    procedure T2Timer(Sender: TObject);
    procedure CopyFileItemClick(Sender: TObject);
    procedure CleanBufferItemClick(Sender: TObject);
    procedure OrgFavItemClick(Sender: TObject);
    procedure AddFavItemClick(Sender: TObject);
    procedure OpenRecycleBinItemClick(Sender: TObject);
    procedure StBarMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure MacromediaFlashPlayerItemClick(Sender: TObject);
    procedure GoToNextItemClick(Sender: TObject);
    procedure CopyExeItemClick(Sender: TObject);
    procedure SeekBarScroll(Sender: TObject; ScrollCode: TScrollCode;
    var ScrollPos: Integer);
    procedure WinHeadItemClick(Sender: TObject);
    procedure SaveFavLinksItemClick(Sender: TObject);
    procedure SourceCodeItemClick(Sender: TObject);
    procedure AlignBottomItemClick(Sender: TObject);
    procedure OpenInNextSessionItemClick(Sender: TObject);
    procedure StBarMouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure CopyDirPathToBufferItemClick(Sender: TObject);
    procedure CopyNameToBufferItemClick(Sender: TObject);
    procedure CurrentFileInfoItemClick(Sender: TObject);
    procedure MoveToItemClick(Sender: TObject);
    procedure CopyToItemClick(Sender: TObject);
    procedure CopyToDirItemClick(Sender: TObject);
    procedure TipOnDayItemClick(Sender: TObject);
    procedure FlashLogItemClick(Sender: TObject);
    procedure FlashSoundChange(Sender: TObject);
    procedure ApplicationEventsShortCut(var Msg: TWMKey;
    var Handled: Boolean);
    procedure HomePageItemClick(Sender: TObject);

  private

    hMutex, SM: HWND;

    Ini: TIniFile;

    MS: TMemoryStatus;

    Icon: TNotifyIconData;

    procedure ShowTitlebar;

    procedure HideTitlebar;

    procedure ShowHint(Sender: TObject);

    procedure MinimizedApplication(Sender: TObject);

    procedure SystemTrayMenu(var Oleg: TMessage);
    message Tray;

    procedure MySystemMenu(var MySysMenu: TWmSysCommand);
    message Wm_SysCommand;

    procedure WMHotKey(var a: TWMHotKey);
    message WM_HOTKEY;

    procedure WMMouseActivate(var Msg: TMessage);
    message WM_MOUSEACTIVATE;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

    procedure WMDropFiles(var Msg: TMessage);
    message wm_DropFiles;

    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;

    procedure GrabControl(const aControl: TControl;
    const FileName: string);

    procedure WMGetMinMaxInfo(var msg: TWMGetMinMaxInfo);
    message WM_GETMINMAXINFO;

  public
  
  end;

var
  MainForm: TMainForm;
  
  msgCaption: PChar;

implementation

uses OP, IP, AP, LP, SHP, SBP, FP, HP, HKP, GP, WP, AFP, AFP2, FFP, FIP,
  TTP, LPP;

 type
   POpenFilenameA = ^TOpenFilenameA;
   POpenFilename = POpenFilenameA;
   tagOFNA = packed record
   lStructSize: DWORD;
   hWndOwner: HWND;
   hInstance: HINST;
   lpstrFilter: PAnsiChar;
   lpstrCustomFilter: PAnsiChar;
   nMaxCustFilter: DWORD;
   nFilterIndex: DWORD;
   lpstrFile: PAnsiChar;
   nMaxFile: DWORD;
   lpstrFileTitle: PAnsiChar;
   nMaxFileTitle: DWORD;
   lpstrInitialDir: PAnsiChar;
   lpstrTitle: PAnsiChar;
   Flags: DWORD;
   nFileOffset: Word;
   nFileExtension: Word;
   lpstrDefExt: PAnsiChar;
   lCustData: LPARAM;
   lpfnHook: function(Wnd: HWND; Msg: UINT; wParam: WPARAM; lParam: LPARAM): UINT stdcall;
   lpTemplateName: PAnsiChar;
   end;
   TOpenFilenameA = tagOFNA;
   TOpenFilename = TOpenFilenameA;

   function GetOpenFileName(var OpenFile: TOpenFilename): Bool; stdcall; external 'comdlg32.dll'
   name 'GetOpenFileNameA';
   function GetSaveFileName(var OpenFile: TOpenFilename): Bool; stdcall; external 'comdlg32.dll'
   name 'GetSaveFileNameA';

  const
   OFN_DONTADDTORECENT = $02000000;
   OFN_FILEMUSTEXIST = $00001000;
   OFN_HIDEREADONLY = $00000004;
   OFN_PATHMUSTEXIST = $00000800;

 function CharReplace(const Source: string; oldChar, newChar: Char): string;
 var
 i: Integer;
 begin
 Result := Source;
 for i := 1 to Length(Result) do
 if Result[i] = oldChar then
 Result[i] := newChar;
 end;

{$R *.dfm}

const
Rect: TRect = (Left: 0; Top: 0; Right: 0; Bottom: 0);
FullScreen: Boolean = False;

function OpenSaveFileDialog(ParentHandle: THandle; const DefExt, Filter, InitialDir, Title: string; var FileName: string; IsOpenDialog: Boolean): Boolean;
var
ofn: TOpenFileName;
szFile: array[0..MAX_PATH] of Char;
begin
Result := False;
FillChar(ofn, SizeOf(TOpenFileName), 0);
with ofn do
begin
lStructSize := SizeOf(TOpenFileName);
hwndOwner := ParentHandle;
lpstrFile := szFile;
nMaxFile := SizeOf(szFile);
if (Title <> '') then
lpstrTitle := PChar(Title);
if (InitialDir <> '') then
lpstrInitialDir := PChar(InitialDir);
StrPCopy(lpstrFile, FileName);
lpstrFilter := PChar(CharReplace(Filter, '|', #0)+#0#0);
if DefExt <> '' then
lpstrDefExt := PChar(DefExt);
end;
if IsOpenDialog then
begin
if GetOpenFileName(ofn) then
begin
Result := True;
FileName := StrPas(szFile);
end;
end else
begin
if GetSaveFileName(ofn) then
begin
Result := True;
FileName := StrPas(szFile);
end;
end
end;

function MenuCallback(Wnd: HWND; Msg: UINT; WParam: WPARAM;
LParam: LPARAM): LRESULT; stdcall;
var
ContextMenu2: IContextMenu2;
begin
try
case Msg of
WM_CREATE:
begin
ContextMenu2 := IContextMenu2(PCreateStruct(lParam).lpCreateParams);
SetWindowLong(Wnd, GWL_USERDATA, Longint(ContextMenu2));
Result := DefWindowProc(Wnd, Msg, wParam, lParam);
end;
WM_INITMENUPOPUP:
begin
ContextMenu2 := IContextMenu2(GetWindowLong(Wnd, GWL_USERDATA));
ContextMenu2.HandleMenuMsg(Msg, wParam, lParam);
Result := 0;
end;
WM_DRAWITEM, WM_MEASUREITEM:
begin
ContextMenu2 := IContextMenu2(GetWindowLong(Wnd, GWL_USERDATA));
ContextMenu2.HandleMenuMsg(Msg, wParam, lParam);
Result := 1;
end; else
Result := DefWindowProc(Wnd, Msg, wParam, lParam);
end;
except
end;
end;

function CreateMenuCallbackWnd(const ContextMenu: IContextMenu2): HWND;
const
IcmCallbackWnd = 'ICMCALLBACKWND';
var
WndClass: TWndClass;
begin
try
FillChar(WndClass, SizeOf(WndClass), #0);
WndClass.lpszClassName := PChar(IcmCallbackWnd);
WndClass.lpfnWndProc := @MenuCallback;
WndClass.hInstance := HInstance;
Windows.RegisterClass(WndClass);
Result := CreateWindow(IcmCallbackWnd, IcmCallbackWnd, WS_POPUPWINDOW, 0,
0, 0, 0, 0, 0, HInstance, Pointer(ContextMenu));
except
end;
end;

procedure GetProperties(Path: String; MousePoint: TPoint; WC: TWinControl);
var
CoInit, AResult: HRESULT;
CommonDir, FileName: String;
Desktop, ShellFolder: IShellFolder;
pchEaten, Attr: Cardinal;
PathPIDL: PItemIDList;
FilePIDL: array [0..1] of PItemIDList;
ShellContextMenu: HMenu;
ICMenu: IContextMenu;
ICMenu2: IContextMenu2;
PopupMenuResult: BOOL;
CMD: TCMInvokeCommandInfo;
M: IMAlloc;
ICmd: Integer;
CallbackWindow: HWND;
begin
try
ShellContextMenu := 0;
Attr := 0;
PathPIDL := nil;
CallbackWindow := 0;
CoInit := CoInitializeEx(nil, COINIT_MULTITHREADED);
try
CommonDir := ExtractFilePath(Path);
FileName := ExtractFileName(Path);
if SHGetDesktopFolder(Desktop) <> S_OK then
RaiseLastOSError;
if FileName = '' then
begin
if (SHGetSpecialFolderLocation(0, CSIDL_DRIVES, PathPIDL) <> S_OK) or
(Desktop.BindToObject(PathPIDL,  nil,  IID_IShellFolder,
Pointer(ShellFolder)) <> S_OK) then RaiseLastOSError;
ShellFolder.ParseDisplayName(WC.Handle, nil, StringToOleStr(CommonDir),
pchEaten, FilePIDL[0], Attr);
AResult := ShellFolder.GetUIObjectOf(WC.Handle, 1, FilePIDL[0],
IID_IContextMenu, nil, Pointer(ICMenu));
end else
begin
if (Desktop.ParseDisplayName(WC.Handle, nil, StringToOleStr(CommonDir),
pchEaten, PathPIDL, Attr) <> S_OK) or
(Desktop.BindToObject(PathPIDL, nil, IID_IShellFolder,
Pointer(ShellFolder)) <> S_OK) then RaiseLastOSError;
ShellFolder.ParseDisplayName(WC.Handle, nil, StringToOleStr(FileName),
pchEaten, FilePIDL[0], Attr);
AResult := ShellFolder.GetUIObjectOf(WC.Handle, 1, FilePIDL[0],
IID_IContextMenu, nil, Pointer(ICMenu));
end;
if Succeeded(AResult) then
begin
ICMenu2 := nil;
ShellContextMenu := CreatePopupMenu;
if Succeeded(ICMenu.QueryContextMenu(ShellContextMenu, 0,
1, $7FFF, CMF_EXPLORE)) and
Succeeded(ICMenu.QueryInterface(IContextMenu2, ICMenu2)) then
CallbackWindow := CreateMenuCallbackWnd(ICMenu2);
try
PopupMenuResult := TrackPopupMenu(ShellContextMenu, TPM_LEFTALIGN or TPM_LEFTBUTTON
or TPM_RIGHTBUTTON or TPM_RETURNCMD,
MousePoint.X, MousePoint.Y, 0, CallbackWindow, nil);
finally
ICMenu2 := nil;
end;
if PopupMenuResult then
begin
ICmd := LongInt(PopupMenuResult) - 1;
FillChar(CMD, SizeOf(CMD), #0);
with CMD do
begin
cbSize := SizeOf(CMD);
hWND := WC.Handle;
lpVerb := MakeIntResource(ICmd);
nShow := SW_SHOWNORMAL;
end;
AResult := ICMenu.InvokeCommand(CMD);
if AResult <> S_OK then RaiseLastOSError;
end;
end;
finally
if FilePIDL[0] <> nil then
begin
SHGetMAlloc(M);
if M <> nil then
M.Free(FilePIDL[0]);
M:=nil;
end;
if PathPIDL <> nil then
begin
SHGetMAlloc(M);
if M <> nil then
M.Free(PathPIDL);
M:=nil;
end;
if ShellContextMenu <>0 then
DestroyMenu(ShellContextMenu);
if CallbackWindow <> 0 then
DestroyWindow(CallbackWindow);
ICMenu := nil;
ShellFolder := nil;
Desktop := nil;
if CoInit = S_OK then CoUninitialize;
end;
except
end;
end;

procedure CopyFilesToClipboard(FileList: string); 
var 
DropFiles: PDropFiles;
hGlobal: THandle;
iLen: Integer;
begin
try
iLen := Length(FileList) + 2;
FileList := FileList + #0#0;
hGlobal := GlobalAlloc(GMEM_SHARE or GMEM_MOVEABLE or GMEM_ZEROINIT,
SizeOf(TDropFiles) + iLen);
if (hGlobal = 0) then raise Exception.Create('Could not allocate memory!');
begin
DropFiles := GlobalLock(hGlobal);
DropFiles^.pFiles := SizeOf(TDropFiles);
Move(FileList[1], (PChar(DropFiles) + SizeOf(TDropFiles))^, iLen);
GlobalUnlock(hGlobal);
Clipboard.SetAsHandle(CF_HDROP, hGlobal);
end;
except
end;
end;

function GetFileSizeByName(FileName: String): Integer;
var
FindData: TWin32FindData;
hFind: THandle;
begin
Result := -1;
hFind := FindFirstFile(PChar(FileName), FindData);
if hFind <> INVALID_HANDLE_VALUE then
begin
Windows.FindClose(hFind);
if (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0 then
Result := FindData.nFileSizeLow;
end;
end;

procedure TMainForm.ChangeMessageBoxPosition(var Msg: TMessage);
var
MbHwnd: longword;
MbRect: TRect;
x, y, w, h: integer;
begin
MbHwnd := FindWindow(MAKEINTRESOURCE(WC_DIALOG), msgCaption);
if (MbHwnd <> 0) then
begin
GetWindowRect(MBHWnd, MBRect);
with MbRect do
begin
w := Right - Left;
h := Bottom - Top;
end;
x := MainForm.Left + ((MainForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := MainForm.Top + ((MainForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

function GetIEVersion(Key: string): string;
var
R: TRegistry;
begin
R := TRegistry.Create;
try
R.RootKey := HKEY_LOCAL_MACHINE;
R.OpenKey('Software\Microsoft\Internet Explorer', False);
try
Result := R.ReadString(Key);
except
Result := '';
end;
R.CloseKey;
finally
R.Free;
end;
end;

function MyExitWindows(RebootParam: Longword): Boolean;
var
TTokenHd: THandle;
TTokenPvg: TTokenPrivileges;
cbtpPrevious: DWORD;
rTTokenPvg: TTokenPrivileges;
pcbtpPreviousRequired: DWORD;
tpResult: Boolean;
const
SE_SHUTDOWN_NAME = 'SeShutdownPrivilege';
begin
if Win32Platform = VER_PLATFORM_WIN32_NT then
begin
tpResult := OpenProcessToken(GetCurrentProcess(),
TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY,
TTokenHd);
if tpResult then
begin
tpResult := LookupPrivilegeValue(nil,
SE_SHUTDOWN_NAME,
TTokenPvg.Privileges[0].Luid);
TTokenPvg.PrivilegeCount := 1;
TTokenPvg.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
cbtpPrevious := SizeOf(rTTokenPvg);
pcbtpPreviousRequired := 0;
if tpResult then
Windows.AdjustTokenPrivileges(TTokenHd, False,
TTokenPvg, cbtpPrevious, rTTokenPvg, pcbtpPreviousRequired);
end;
end;
Result := ExitWindowsEx(RebootParam, 0);
end;

procedure TMainForm.QuickOpenItemClick(Sender: TObject);
var i: integer;
s: String;
begin
if GetKeyState(VK_CONTROL) < 0 then
begin
OpenItem.Click;
end else
begin try
if OpenSaveFileDialog(MainForm.Handle, '*.swf', 'Flash файлы (*.swf)|*.swf|JPEG Image File (*.jpg)|*.jpg', ParamStr(1),
'FlashCore', s, True) then
begin
OpenDlg.FileName := s;
for i:=1 to OpenDlg.Files.Count do
OpenDlg.Files.Strings[i-1];
FlashView.Movie := OpenDlg.FileName;
SeekBar.Max := FlashView.TotalFrames;
SeekBar.Position := 0;
FlashView.Play;
if OpenDlg.FileName = '' then
//
else
LogForm.LogText.Lines.Add(MainForm.OpenDlg.FileName);

if OpenDlg.FileName = '' then
begin

end else
if ToolForm.Ch26.Checked then
begin
if FullScreenItem.Checked = False then
FullScreenItem.Click;
end;
end;
if ToolForm.rb1.Checked then
if FlashView.Movie = OpenDlg.FileName then
MainForm.Caption := 'FlashCore - ' + OpenDlg.FileName else
MainForm.Caption := 'FlashCore';
if ToolForm.rb2.Checked then
if FlashView.Movie = OpenDlg.FileName then
MainForm.Caption := OpenDlg.FileName + ' - FlashCore'else
MainForm.Caption := 'FlashCore';
if ToolForm.rb3.Checked then
if FlashView.Movie = OpenDlg.FileName then
MainForm.Caption := 'FlashCore';
if OpenDlg.FileName = '' then
MainForm.Caption := 'FlashCore';
if OpenDlg.FileName = '' then
begin
CurrentFileInfoItem.Enabled := False;
CopyFileItem.Enabled := False;
CopyToDirItem.Enabled := False;
FullDirPathItem.Enabled := False;
DelToRecycleItem.Enabled := False;
DelOpenFileItem.Enabled := False;
CopyToItem.Enabled := False;
MoveToItem.Enabled := False;
ZoomInItem.Enabled := False;
DefaultSizeItem.Enabled := False;
StaffForwardItem.Enabled := False;
StaffBackItem.Enabled := False;
PlayItem.Enabled := False;
ReplayItem.Enabled := False;
StopItem.Enabled := False;
GoToItem.Enabled := False;
GoToNextItem.Enabled := False;
SeekBar.Enabled := False;
end else
begin
CurrentFileInfoItem.Enabled := True;
CopyFileItem.Enabled := True;
CopyToDirItem.Enabled := True;
FullDirPathItem.Enabled := True;
DelToRecycleItem.Enabled := True;
DelOpenFileItem.Enabled := True;
CopyToItem.Enabled := True;
MoveToItem.Enabled := True;
ZoomInItem.Enabled := True;
DefaultSizeItem.Enabled := True;
StaffForwardItem.Enabled := True;
StaffBackItem.Enabled := True;
PlayItem.Enabled := True;
ReplayItem.Enabled := True;
StopItem.Enabled := True;
GoToItem.Enabled := True;
GoToNextItem.Enabled := True;
SeekBar.Enabled := True;
end;
ColorDlg.Color := FlashView.Color;
FlashView.Color := ColorDlg.Color;
OpenInNextSessionItem.Checked := False;
except
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
begin
Application.MessageBox('Невозможно открыть выбранный файл.',
'FlashCore',
MB_ICONEXCLAMATION + mb_OK);
end;
if EnItem.Checked then
begin
Application.MessageBox('Incorrect file type.',
'FlashCore',
MB_ICONEXCLAMATION + mb_OK);
end;
end;
end;
end;

procedure TMainForm.ExitItemClick(Sender: TObject);
begin
Close;
end;

procedure TMainForm.NewItemClick(Sender: TObject);
var
PC: array[0..255] of char;
S: String;
begin
{$ifdef Windows}
WinExec(StrPCopy(PC, ParamStr(0)+' '+S), Sw_Show);
{$else}
WinExec(StrPCopy(PC, ParamStr(0)+' "'+S+'"'), Sw_Show);
{$endif}
PostMessage(Handle, WM_USER + 1024, 0, 0);
if MultipleItem.Checked then
if RusItem.Checked then
Application.MessageBox('Невозможно создать новое окно FlashCore, т.к. установлена' +
#13 + 'опция запуска программы в единственном экземпляре!',
'FlashCore',
mb_IconAsterisk + mb_OK);
if MultipleItem.Checked then
if EnItem.Checked then
Application.MessageBox('It is impossible to create new window FlashCore, as' +
#13 + 'the established option is forbid multiple startup!',
'FlashCore',
mb_IconAsterisk + mb_OK);
end;

procedure TMainForm.StatusItemClick(Sender: TObject);
begin
StatusItem.Checked := not StatusItem.Checked;
StatusBar.Visible := not StatusBar.Visible;
end;

procedure TMainForm.ColorItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
ColorDlg.Color := FlashView.Color;
if ColorDlg.Execute then
begin
FlashView.Color := ColorDlg.Color;
MainForm.Color := ColorDlg.Color;
end;
end;

procedure TMainForm.OptionsItemClick(Sender: TObject);
begin
try
ToolForm.Position := poMainFormCenter;
ToolForm.ShowModal;
except
end;
end;

procedure TMainForm.T1Timer(Sender: TObject);
begin
try
SeekBar.Max := FlashView.TotalFrames;
SeekBar.Position:=FlashView.CurrentFrame;
except
end;
end;

procedure TMainForm.StopItemClick(Sender: TObject);
begin
try
T1.Enabled := False;
FlashView.Playing := False;
except
end;
end;

procedure TMainForm.PlayItemClick(Sender: TObject);
begin
try
T1.Enabled := True;
FlashView.Playing := True;
except
end;
end;

procedure TMainForm.StaffForwardItemClick(Sender: TObject);
begin
try
FlashView.Forward;
if T1.Enabled = True then
FlashView.Play else
FlashView.Stop;
except
end;
end;

procedure TMainForm.StaffBackItemClick(Sender: TObject);
begin
try
FlashView.Back;
if T1.Enabled = True then
FlashView.Play else
FlashView.Stop;
except
end;
end;

procedure TMainForm.ReplayItemClick(Sender: TObject);
begin
try
T1.Enabled := True;
FlashView.Rewind;
FlashView.Play;
except
end;
end;

procedure TMainForm.SysInfoItemClick(Sender: TObject);
begin
ShellExecute(Handle, nil, 'msinfo32', nil,nil, Sw_ShowNormal);
end;

procedure TMainForm.SendItemClick(Sender: TObject);
begin
ShellExecute(Handle,'open',
'mailto:GoodWinNix@mail.ru?Subject=FlashCore Project'+
'',
'','',SW_SHOW);
end;

procedure TMainForm.DefaultSizeItemClick(Sender: TObject);
var
i: integer;
begin
i := 0;
FlashView.Zoom(i);
end;

procedure TMainForm.ZoomInItemClick(Sender: TObject);
var
i: integer;
begin
i := 90;
FlashView.Zoom(i);
end;

procedure TMainForm.SeekBarItemClick(Sender: TObject);
begin
SeekBarItem.Checked := not SeekBarItem.Checked;
Panel.Visible := not Panel.Visible;
if Panel.Visible = False then
begin
AlignSeekBarItem.Enabled := False;
AlignLeftItem.Enabled := False;
AlignRightItem.Enabled := False;
AlignBottomItem.Enabled := False;
end else
begin
AlignSeekBarItem.Enabled := True;
AlignLeftItem.Enabled := True;
AlignRightItem.Enabled := True;
AlignBottomItem.Enabled := True;
end;
end;

procedure TMainForm.HighItemClick(Sender: TObject);
begin
FlashView.Quality := fqMedium;
HighItem.Checked := True;
LowItem.Checked := False;
MediumItem.Checked := False;
end;

procedure TMainForm.LowItemClick(Sender: TObject);
begin
FlashView.Quality := fqLow;
LowItem.Checked := True;
HighItem.Checked := False;
MediumItem.Checked := False;
end;

procedure TMainForm.MediumItemClick(Sender: TObject);
begin
FlashView.Quality := fqHigh;
MediumItem.Checked := True;
HighItem.Checked := False;
LowItem.Checked := False;
end;

procedure TMainForm.MainMenuItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if not ToolForm.Ch27.Checked then
begin
MainMenuItem.Checked := not MainMenuItem.Checked;
if MainMenuItem.Checked then
begin
MainMenuItem.Checked := True;
FileItem.Visible := True;
ViewItem.Visible := True;
ControlItem.Visible := True;
FavoritesItem.Visible := True;
ServiceItem.Visible := True;
ChooseLangItem.Visible := True;
HelpItem.Visible := True;
end else
begin
MainMenuItem.Checked := False;
FileItem.Visible := False;
ViewItem.Visible := False;
ControlItem.Visible := False;
FavoritesItem.Visible := False;
ServiceItem.Visible := False;
ChooseLangItem.Visible := False;
HelpItem.Visible := False;
end;
end;
if ToolForm.Ch27.Checked then
if RusItem.Checked then
begin
if Application.MessageBox('Установлена опция "Отключить горячие клавиши". Для того,' +
#13 + 'чтобы восстановить главное меню нажмите комбинацию' +
#13 + 'клавиш Ctrl+Shift+M. Cкрыть главное меню?!',
'FlashCore',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
MainMenuItem.Checked := False;
FileItem.Visible := False;
ViewItem.Visible := False;
ControlItem.Visible := False;
FavoritesItem.Visible := False;
ServiceItem.Visible := False;
ChooseLangItem.Visible := False;
HelpItem.Visible := False;
end else
begin
MainMenuItem.Checked := True;
FileItem.Visible := True;
ViewItem.Visible := True;
ControlItem.Visible := True;
FavoritesItem.Visible := True;
ServiceItem.Visible := True;
ChooseLangItem.Visible := True;
HelpItem.Visible := True;
end;
end;
if ToolForm.Ch27.Checked then
if EnItem.Checked then
begin
if Application.MessageBox('Install options "Disabled of hot key". If you want to restore' +
#13 + 'of main menu press combination of Ctrl+Shift+M.' +
#13 + 'Hide of main menu?!',
'FlashCore',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
MainMenuItem.Checked := False;
FileItem.Visible := False;
ViewItem.Visible := False;
ControlItem.Visible := False;
FavoritesItem.Visible := False;
ServiceItem.Visible := False;
ChooseLangItem.Visible := False;
HelpItem.Visible := False;
end else
begin
MainMenuItem.Checked := True;
FileItem.Visible := True;
ViewItem.Visible := True;
ControlItem.Visible := True;
FavoritesItem.Visible := True;
ServiceItem.Visible := True;
ChooseLangItem.Visible := True;
HelpItem.Visible := True;
end;
end;

end;

procedure TMainForm.MultipleItemClick(Sender: TObject);
begin
MultipleItem.Checked := not MultipleItem.Checked;
Ini.WriteBool('Parameters', 'Forbid multiple', MultipleItem.Checked);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
Application.OnHint := ShowHint;
Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
try
OpenInNextSessionItem.Checked := Ini.ReadBool('Check on saving', 'Save', OpenInNextSessionItem.Checked);
OpenDlg.FileName := Ini.ReadString('Next session', 'Open', OpenDlg.FileName);
StatusItem.Checked := Ini.ReadBool('Parameters', 'Show status bar', StatusItem.Checked);
SeekBarItem.Checked := Ini.ReadBool('Parameters', 'Track bar', SeekBarItem.Checked);
MainMenuItem.Checked := Ini.ReadBool('Parameters', 'Main menu', MainMenuItem.Checked);
OnTopItem.Checked := Ini.ReadBool('Parameters', 'Always on top', OnTopItem.Checked);
MultipleItem.Checked := Ini.ReadBool('Parameters', 'Forbid multiple', MultipleItem.Checked);
LowItem.Checked := Ini.ReadBool('Parameters', 'Quality low', LowItem.Checked);
HighItem.Checked := Ini.ReadBool('Parameters', 'Quality high', HighItem.Checked);
MediumItem.Checked := Ini.ReadBool('Parameters', 'Quality medium', MediumItem.Checked);
ColorDlg.Color := Ini.ReadInteger('Parameters', 'Flash color', ColorDlg.Color);
RusItem.Checked := Ini.ReadBool('Language', 'Russian', RusItem.Checked);
EnItem.Checked := Ini.ReadBool('Language', 'English', EnItem.Checked);
AlignLeftItem.Checked := Ini.ReadBool('Seek bar Aligh', 'Left', AlignLeftItem.Checked);
AlignRightItem.Checked := Ini.ReadBool('Seek bar Aligh', 'Right', AlignRightItem.Checked);
AlignBottomItem.Checked := Ini.ReadBool('Seek bar Aligh', 'Bottom', AlignBottomItem.Checked);
Top := Ini.ReadInteger('Position', 'Top', 100);
Left := Ini.ReadInteger('Position', 'Left', 200);
ClientHeight := Ini.ReadInteger('Position', 'ClientHeight', ClientHeight);
ClientWidth := Ini.ReadInteger('Position', 'ClientWidth', ClientWidth);
finally
end;
with Icon do
begin
Wnd := Handle;
SzTip := 'FlashCore v 1.1';
HIcon := Application.Icon.Handle;
UCallBackMessage := Tray;
UFlags := Nif_Tip + nIf_Message or Nif_Icon;
Application.OnMinimize := MinimizedApplication;
end;
RegisterHotKey(Handle, 1, MOD_CONTROL, ord('W'));
RegisterHotKey(Handle, 2, MOD_CONTROL, ord('R'));
RegisterHotKey(Handle, 3, MOD_CONTROL, ord('E'));
RegisterHotKey(Handle, 4, MOD_WIN, ord('Z'));
RegisterHotKey(Handle, 5, MOD_CONTROL or MOD_SHIFT, ord('H'));
RegisterHotKey(Handle, 6, MOD_CONTROL or MOD_SHIFT, ord('M'));
hMutex := CreateMutex(nil, true , 'FlashCore');
if GetLastError = ERROR_ALREADY_EXISTS then
if MultipleItem.Checked then
halt;
end;

procedure TMainForm.OnTopItemClick(Sender: TObject);
begin
OnTopItem.Checked := not OnTopItem.Checked;
if OnTopItem.Checked = False
then begin
SetWindowPos(Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
end else begin
SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
OnTopItem.Checked := true;
end;
end;

procedure TMainForm.IntProItemClick(Sender: TObject);
begin
try
IntForm.Position := poMainFormCenter;
IntForm.ShowModal;
except
end;
end;

procedure TMainForm.LicItemClick(Sender: TObject);
begin
try
LicForm.Position := poMainFormCenter;
LicForm.ShowModal;
except
end;
end;

procedure TMainForm.AboutItemClick(Sender: TObject);
begin
try
AboutForm.Position := poMainFormCenter;
AboutForm.ShowModal;
except
end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if RusItem.Checked then
begin
if ToolForm.Ch12.Checked then
CanClose :=
Application.MessageBox('Вы уверены, что хотите выйти из FlashCore?',
'Выход',
mb_IconQuestion + mb_YesNo) = mrYes;
end;
if EnItem.Checked then
begin
if ToolForm.Ch12.Checked then
CanClose :=
Application.MessageBox('Are you sure, what do you want to exit FlashCore?',
'Exit',
mb_IconQuestion + mb_YesNo) = mrYes;
end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
InitialText: String;
begin
try
MainForm.WindowState := wsNormal;
if FullScreenItem.Checked = True then
begin
MainForm.Hide;
Top := 100;
Left := 100;
FullScreenItem.Click;
end;
Ini.WriteBool('Check on saving', 'Save', OpenInNextSessionItem.Checked);
Ini.WriteBool('Parameters', 'Sreenshot', ScreenForm.Ch1.Checked);
Ini.WriteBool('Parameters', 'Double click in status bar for screenshot', ScreenForm.Ch2.Checked);
Ini.WriteBool('Parameters', 'Open sreenshot', ScreenForm.Ch3.Checked);
Ini.WriteBool('Parameters', 'Sreenshot 8 bits', ScreenForm.rb1.Checked);
Ini.WriteBool('Parameters', 'Sreenshot 16 bits', ScreenForm.rb2.Checked);
Ini.WriteBool('Parameters', 'Sreenshot 32 bits', ScreenForm.rb3.Checked);

Ini.WriteBool('Parameters', 'Show status bar', StatusItem.Checked);
Ini.WriteBool('Parameters', 'Always on top', OnTopItem.Checked);
Ini.WriteBool('Parameters', 'Forbid multiple', MultipleItem.Checked);
Ini.WriteBool('Parameters', 'Quality low', LowItem.Checked);
Ini.WriteBool('Parameters', 'Quality high', HighItem.Checked);
Ini.WriteBool('Parameters', 'Quality medium', MediumItem.Checked);
Ini.WriteBool('Parameters', 'Track bar', SeekBarItem.Checked);
Ini.WriteBool('Parameters', 'Main menu', MainMenuItem.Checked);
Ini.WriteInteger('Parameters', 'Flash color', ColorDlg.Color);




Ini.WriteInteger('Parameters', 'Tip Position', TipForm.NextBt.Tag);
Ini.WriteBool('Language', 'Russian', RusItem.Checked);
Ini.WriteBool('Language', 'English', EnItem.Checked);
Ini.WriteBool('Seek bar Aligh', 'Left', AlignLeftItem.Checked);
Ini.WriteBool('Seek bar Aligh', 'Right', AlignRightItem.Checked);
Ini.WriteBool('Seek bar Aligh', 'Bottom', AlignBottomItem.Checked);
if ToolForm.Ch3.Checked then
begin
Ini.WriteInteger('Position', 'ClientHeight', ClientHeight);
Ini.WriteInteger('Position', 'ClientWidth', ClientWidth);
end;
if ToolForm.Ch4.Checked then
begin
Ini.WriteInteger('Position', 'Top', Top);
Ini.WriteInteger('Position', 'Left', Left);
end;


InitialText := ParamStr(0) + 'Log.txt';
LogForm.LogText.Lines.SaveToFile(InitialText);


if RusItem.Checked then
if ToolForm.Ch10.Checked then
if ToolForm.Ch11.Checked then
if Application.MessageBox('Вы уверены, что хотите выключить компьютер?',
'Предупреждение',
Mb_IconHand + Mb_YesNo) = idYes then
MyExitWindows(EWX_POWEROFF or EWX_FORCE);
if EnItem.Checked then
if ToolForm.Ch10.Checked then
if ToolForm.Ch11.Checked then
if Application.MessageBox('You are sure, what do you want of shutdown computer?',
'Confirmation',
Mb_IconHand + Mb_YesNo) = idYes then
MyExitWindows(EWX_POWEROFF or EWX_FORCE);
if not ToolForm.Ch11.Checked then
if ToolForm.Ch10.Checked then
MyExitWindows(EWX_POWEROFF or EWX_FORCE);
if ToolForm.Ch8.Checked then
AnimateWindow(handle, 500, AW_BLEND or AW_HIDE);
except
end;
end;

procedure TMainForm.FormShow(Sender: TObject);
var
i: integer;
reg : TRegistry;
InitialText: String;
begin
try
InitialText := ParamStr(0) + 'Log.txt';
LogForm.LogText.Lines.LoadFromFile(InitialText);
except
end;
try
if RusItem.Checked = False then
if EnItem.Checked = False then
RusItem.Checked := True;
if RusItem.Checked then
RusItem.Click;
if EnItem.Checked then
EnItem.Click;
OpenDlg.FileName := ParamStr(1);
if ParamCount > 0 then
begin
ParamStr(i);
FlashView.Movie := ParamStr(1);
if FlashView.Movie = ParamStr(1) then
SeekBar.Enabled := True;
CurrentFileInfoItem.Enabled := True;
CopyFileItem.Enabled := True;
FullDirPathItem.Enabled := True;
DelToRecycleItem.Enabled := True;
DelOpenFileItem.Enabled := True;
CopyToItem.Enabled := True;
MoveToItem.Enabled := True;
ZoomInItem.Enabled := True;
DefaultSizeItem.Enabled := True;
StaffForwardItem.Enabled := True;
StaffBackItem.Enabled := True;
PlayItem.Enabled := True;
ReplayItem.Enabled := True;
StopItem.Enabled := True;
GoToItem.Enabled := True;
GoToNextItem.Enabled := True;
end else
begin
if OpenInNextSessionItem.Checked then
begin
OpenDlg.FileName := Ini.ReadString('Next session', 'Open', OpenDlg.FileName);
FlashView.Movie := OpenDlg.FileName;
FlashView.Play;
if OpenDlg.FileName = '' then
begin
CurrentFileInfoItem.Enabled := False;
CopyFileItem.Enabled := False;
CopyToDirItem.Enabled := False;
FullDirPathItem.Enabled := False;
DelToRecycleItem.Enabled := False;
DelOpenFileItem.Enabled := False;
CopyToItem.Enabled := False;
MoveToItem.Enabled := False;
ZoomInItem.Enabled := False;
DefaultSizeItem.Enabled := False;
StaffForwardItem.Enabled := False;
StaffBackItem.Enabled := False;
PlayItem.Enabled := False;
ReplayItem.Enabled := False;
StopItem.Enabled := False;
GoToItem.Enabled := False;
GoToNextItem.Enabled := False;
SeekBar.Enabled := False;
end else
begin
CurrentFileInfoItem.Enabled := True;
CopyFileItem.Enabled := True;
CopyToDirItem.Enabled := True;
FullDirPathItem.Enabled := True;
DelToRecycleItem.Enabled := True;
DelOpenFileItem.Enabled := True;
CopyToItem.Enabled := True;
MoveToItem.Enabled := True;
ZoomInItem.Enabled := True;
DefaultSizeItem.Enabled := True;
StaffForwardItem.Enabled := True;
StaffBackItem.Enabled := True;
PlayItem.Enabled := True;
ReplayItem.Enabled := True;
StopItem.Enabled := True;
GoToItem.Enabled := True;
GoToNextItem.Enabled := True;
SeekBar.Enabled := True;
end;
end;
end;
if AlignLeftItem.Checked = False then
if AlignRightItem.Checked = False then
if AlignBottomItem.Checked = False then
AlignLeftItem.Checked := True;
if AlignLeftItem.Checked then
AlignLeftItem.Click;
if AlignRightItem.Checked then
AlignRightItem.Click;
if AlignBottomItem.Checked then
AlignBottomItem.Click;
if ScreenForm.Ch1.Checked then
ScreenShotItem.Enabled := True else
ScreenShotItem.Enabled := False;
if ScreenForm.rb1.Checked = False then
if ScreenForm.rb2.Checked = False then
if ScreenForm.rb3.Checked = False then
ScreenForm.rb3.Checked := True;
if ToolForm.Ch15.Checked then
begin
RyMenu.Add(MainMenu, nil);
RyMenu.Add(TrayMenu, nil);
RyMenu.Add(FindForm.MainMenu, nil);
RyMenu.Add(ToolForm.ShortcutMenu, nil);
end;
Reg := TRegistry.Create;
with Reg do begin
reg.RootKey := HKEY_CLASSES_ROOT;
if reg.KeyExists
('\.swf\')then
IntForm.ch4.Checked := True else
IntForm.ch4.Checked := False;
end;
if IntForm.ch4.Checked then
begin
reg := TRegistry.Create;
reg.RootKey := HKEY_CLASSES_ROOT;
reg.OpenKey('.swf\',true);
reg.WriteString('', 'swffile');
reg.CloseKey;
reg.OpenKey('swffile\DefaultIcon',true);
reg.WriteString('', ParamStr(0) + ', 0');
reg.CloseKey;
reg.OpenKey('swffile\shell\open\command', true);
reg.WriteString('', ParamStr(0) + ' "%1"');
reg.CloseKey;
reg.Free;
end else
if not IntForm.ch4.Checked then
begin
reg := TRegistry.Create;
reg.RootKey := HKEY_CLASSES_ROOT;
reg.DeleteKey('.swf\');
reg.DeleteKey('swffile');
reg.Free;
end;
if ToolForm.Ch27.Checked then
begin
NewItem.ShortCut :=scNone;
QuickOpenItem.ShortCut :=scNone;
OpenItem.ShortCut :=scNone;
CurrentFileInfoItem.ShortCut := scNone;
CopyFileItem.ShortCut :=scNone;
SetScreenShotItem.ShortCut :=scNone;
DelToRecycleItem.ShortCut :=scNone;
PropProItem.ShortCut :=scNone;
ExitItem.ShortCut :=scNone;
ScreenShotItem.ShortCut :=scNone;
SeekBarItem.ShortCut :=scNone;
DefaultSizeItem.ShortCut :=scNone;
ColorItem.ShortCut :=scNone;
FullScreenItem.ShortCut :=scNone;
WinHeadItem.ShortCut :=scNone;
MediumItem.ShortCut :=scNone;
MainMenuItem.ShortCut :=scNone;
MultipleItem.ShortCut :=scNone;
OnTopItem.ShortCut :=scNone;
StatusItem.ShortCut :=scNone;
RefreshItem.ShortCut :=scNone;
StaffForwardItem.ShortCut :=scNone;
StaffBackItem.ShortCut :=scNone;
PlayItem.ShortCut :=scNone;
ReplayItem.ShortCut :=scNone;
StopItem.ShortCut :=scNone;
GoToItem.ShortCut :=scNone;
GoToNextItem.ShortCut :=scNone;
AddFavItem.ShortCut :=scNone;
OrgFavItem.ShortCut :=scNone;
OptionsItem.ShortCut :=scNone;
ExeItem.ShortCut :=scNone;
FindItem.ShortCut :=scNone;
FindFilesItem.ShortCut :=scNone;
InfoItem.ShortCut :=scNone;
LicItem.ShortCut :=scNone;
SendItem.ShortCut :=scNone;
AboutItem.ShortCut :=scNone;
RestoreItem.ShortCut :=scNone;
FindForm.SaveItem.ShortCut := scNone;
FindForm.PrintItem.ShortCut := scNone;
FindForm.QuitItem.ShortCut := scNone;
UnRegisterHotKey(Handle, 1);
UnRegisterHotKey(Handle, 2);
UnRegisterHotKey(Handle, 3);
UnRegisterHotKey(Handle, 4);
HKItem.Enabled := False;
end;
if LowItem.Checked = False then
if HighItem.Checked = False then
if MediumItem.Checked = False then
MediumItem.Checked := True;
if LowItem.Checked = True then
FlashView.Quality := fqLow;
if HighItem.Checked = True then
FlashView.Quality := fqMedium;
if MediumItem.Checked = True then
FlashView.Quality := fqHigh;
if OnTopItem.Checked then
SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE) else
SetWindowPos(Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
if StatusItem.Checked then
StatusBar.Show else
StatusBar.Hide;
if SeekBarItem.Checked then
Panel.Show else
Panel.Hide;
if Panel.Visible = False then
begin
AlignSeekBarItem.Enabled := False;
AlignLeftItem.Enabled := False;
AlignRightItem.Enabled := False;
AlignBottomItem.Enabled := False;
end else
begin
AlignSeekBarItem.Enabled := True;
AlignLeftItem.Enabled := True;
AlignRightItem.Enabled := True;
AlignBottomItem.Enabled := True;
end;
if MainMenuItem.Checked then
begin
FileItem.Visible := True;
ViewItem.Visible := True;
ControlItem.Visible := True;
FavoritesItem.Visible := True;
ServiceItem.Visible := True;
ChooseLangItem.Visible := True;
HelpItem.Visible := True;
end else
begin
FileItem.Visible := False;
ViewItem.Visible := False;
ControlItem.Visible := False;
FavoritesItem.Visible := False;
ServiceItem.Visible := False;
ChooseLangItem.Visible := False;
HelpItem.Visible := False;
end;
if not ToolForm.rb1.Checked then
if not ToolForm.rb2.Checked then
if not ToolForm.rb3.Checked then
ToolForm.rb1.Checked := True;
FlashView.Color := ColorDlg.Color;
MainForm.Color := ColorDlg.Color;
if OpenDlg.FileName = '' then
begin

end else
if ToolForm.Ch26.Checked then
begin
if FullScreenItem.Checked = False then
FullScreenItem.Click;
end;
if ToolForm.ch24.Checked then
begin
if FullScreenItem.Checked = False then
FullScreenItem.Click;
end;
if ToolForm.rb1.Checked then
if FlashView.Movie = ParamStr(1) then
MainForm.Caption := 'FlashCore - ' + ParamStr(1) else
MainForm.Caption := 'FlashCore';
if ToolForm.rb2.Checked then
if FlashView.Movie = ParamStr(1) then
MainForm.Caption := ParamStr(1) + ' - FlashCore' else
MainForm.Caption := 'FlashCore';
if ToolForm.rb3.Checked then
if FlashView.Movie = ParamStr(1) then
MainForm.Caption := 'FlashCore';
if ParamStr(1) = '' then
MainForm.Caption := 'FlashCore';
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', false);
if ToolForm.Ch5.Checked then
reg.WriteString(Application.Title, ParamStr(0)) else
reg.DeleteValue(Application.Title);
reg.Free;
if ToolForm.Ch17.Checked then
begin
MainForm.ScreenSnap := True;
ToolForm.ScreenSnap := True;
AboutForm.ScreenSnap := True;
InfoForm.ScreenSnap := True;
IntForm.ScreenSnap := True;
LicForm.ScreenSnap := True;
HKForm.ScreenSnap := True;
GoToForm.ScreenSnap := True;
FindForm.ScreenSnap := True;
OpenForm.ScreenSnap := True;
ScreenForm.ScreenSnap := True;
AddFavForm.ScreenSnap := True;
AddFav2Form.ScreenSnap := True;
FavForm.ScreenSnap := True;
FileInfoForm.ScreenSnap := True;
TipForm.ScreenSnap := True;
LogForm.ScreenSnap := True;
end else
begin
MainForm.ScreenSnap := False;
ToolForm.ScreenSnap := False;
AboutForm.ScreenSnap := False;
InfoForm.ScreenSnap := False;
IntForm.ScreenSnap := False;
LicForm.ScreenSnap := False;
HKForm.ScreenSnap := False;
GoToForm.ScreenSnap := False;
FindForm.ScreenSnap := False;
OpenForm.ScreenSnap := False;
ScreenForm.ScreenSnap := False;
AddFavForm.ScreenSnap := False;
AddFav2Form.ScreenSnap := False;
FavForm.ScreenSnap := False;
FileInfoForm.ScreenSnap := False;
TipForm.ScreenSnap := False;
LogForm.ScreenSnap := False;
end;
if OpenDlg.FileName = '' then
begin
end else
begin
LogForm.LogText.Lines.Add(MainForm.OpenDlg.FileName);
end;
if ToolForm.Ch18.Checked then
MainMenu.Images := ImageList2 else
MainMenu.Images := ImageList1;
if ToolForm.Ch18.Checked then
TrayMenu.Images := ImageList2 else
TrayMenu.Images := ImageList1;
if ToolForm.Ch18.Checked then
FindForm.MainMenu.Images := FindForm.ImageList1 else
FindForm.MainMenu.Images := FindForm.ImageList;
if ToolForm.ch25.Checked then
begin
DragAcceptFiles(Handle, True);
end;
if ToolForm.Ch7.Checked then
FlashView.DeviceFont := True else
FlashView.DeviceFont := False;
if ToolForm.AlignBox.ItemIndex = -1 then
ToolForm.AlignBox.ItemIndex := 1;
if ToolForm.AlignBox.ItemIndex = 0 then
MainForm.FlashView.VerAlign := fvTop;
if ToolForm.AlignBox.ItemIndex = 1 then
MainForm.FlashView.VerAlign := fvCenter;
if ToolForm.AlignBox.ItemIndex = 2 then
MainForm.FlashView.VerAlign := fvBottom;
ToolForm.ColorPickDlg.OnChanged(Self);
if ToolForm.Ch8.Checked then
AnimateWindow(Handle, 500, AW_BLEND or AW_SLIDE or AW_ACTIVATE);
FlashSound.OnChange(Self);
ToolForm.OKClick(Self);
except
end;
OpenInNextSessionItem.Checked := False;
end;

procedure TMainForm.MinimizedApplication(Sender: TObject);
begin
Shell_NotifyIcon(Nim_Add, @Icon);
if ToolForm.Ch1.Checked then
ShowWindow(Application.Handle, Sw_Hide);
if ToolForm.Ch14.Checked then
begin
FlashView.Playing := False;
T1.Enabled := False;
end;
end;

procedure TMainForm.SystemTrayMenu(var Oleg: TMessage);
var
Ico: TPoint;
begin
case Oleg.LParam of
Wm_LButtonDblClk:
begin
if T1.Enabled = False then
T1.Enabled := False else
T1.Enabled := True;
if FlashView.IsPlaying = False then
FlashView.Playing := False else
FlashView.Playing := True;
if ToolForm.Ch2.Checked then
Shell_NotifyIcon(Nim_Delete, @Icon) else
Shell_NotifyIcon(Nim_Add, @Icon);
ShowWindow(Application.Handle, Sw_Show);
Application.Restore;
end;
Wm_RButtonDown:
begin
SetForegroundWindow(Handle);
GetCursorPos(Ico);
TrayMenu.Popup(Ico.X, Ico.Y);
end;
end;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
Shell_NotifyIcon(Nim_Delete, @Icon);
Sm := GetSystemMenu(Handle, True);
DragAcceptFiles(Handle, False);
UnRegisterHotKey(Handle, 1);
UnRegisterHotKey(Handle, 2);
UnRegisterHotKey(Handle, 3);
UnRegisterHotKey(Handle, 4);
UnRegisterHotKey(Handle, 5);
UnRegisterHotKey(Handle, 6);
MainForm.OnActivate := nil;
ApplicationEvents.Free;
ImageList1.Free;
ImageList2.Free;
ActionList.Free;
FlashView.Free;
StatusBar.Free;
MainMenu.Free;
SeekMenu.Free;
SeekBar.Free;
TrayMenu.Free;
ColorDlg.Free;
OpenDlg.Free;
Panel.Free;
Ini.Free;
T1.Free;
T2.Free;
T3.Free;
DeleteFile('iphist.dat');
end;

procedure TMainForm.RestoreItemClick(Sender: TObject);
begin
if T1.Enabled = False then
T1.Enabled := False else
T1.Enabled := True;
if FlashView.IsPlaying = False then
FlashView.Playing := False else
FlashView.Playing := True;
if ToolForm.Ch2.Checked then
Shell_NotifyIcon(Nim_Delete, @Icon) else
Shell_NotifyIcon(Nim_Add, @Icon);
ShowWindow(Application.Handle, Sw_Show);
Application.Restore;
end;

procedure TMainForm.WMHotKey(var a: TWMHotKey);
begin
if a.HotKey = 1 then
RestoreItem.Click;
if a.HotKey = 2 then
RusItem.Click;
if a.HotKey = 3 then
EnItem.Click;
if a.HotKey = 4 then
RunWinItem.Click;
if a.HotKey = 5 then
begin
if ToolForm.Ch27.Checked then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
RestoreItem.Click;
ToolForm.Ch27.Checked := False;
if MainForm.RusItem.Checked then
Application.MessageBox('Горячие клавиши FlashCore включены!' +
#13 + 'Перезапустите программу для изменения настроек!',
'FlashCore',
mb_IconExclamation + mb_OK);
if MainForm.EnItem.Checked then
Application.MessageBox('Hot keys of FlashCore is enabled!' +
#13 + 'Changes will take effect when you restart FlashCore!',
'FlashCore',
mb_IconExclamation + mb_OK);
end;
end;
if a.HotKey = 6 then
begin
MainMenuItem.Checked := True;
FileItem.Visible := True;
ViewItem.Visible := True;
ControlItem.Visible := True;
FavoritesItem.Visible := True;
ServiceItem.Visible := True;
ChooseLangItem.Visible := True;
HelpItem.Visible := True;
end;
end;

procedure TMainForm.RusItemClick(Sender: TObject);
begin
RusItem.Checked := True;
EnItem.Checked := False;
Sm := GetSystemMenu(Handle, True);
Sm := GetSystemMenu(Handle, False);
InsertMenu(SM, word(0), Mf_ByPosition, ToolPro, 'Параметры...');
InsertMenu(SM, word(-1), Mf_Separator, Cherta, '');
InsertMenu(SM, word(-2), Mf_ByPosition, AboutPro, 'О программе...');
FlashSound.Hint := 'Громкость';
FlashSound.OnChange(Self);
ToolForm.ColorPickDlg.OtherBtnCaption := 'Другие цвета...';
FileItem.Caption := 'FlashCore';
NewItem.Caption := 'Новое окно';
QuickOpenItem.Caption := 'Быстрое открытие...';
OpenItem.Caption := 'Открыть файл...';
CurrentFileInfoItem.Caption := 'Информация';
CopyFileItem.Caption := 'Копировать файл';
CopyToDirItem.Caption := 'Скопировать в директорию';
OpenInNextSessionItem.Caption := 'Открыть в следующей сессии';
SetScreenShotItem.Caption := 'Настроить скриншот';
CleanBufferItem.Caption := 'Очистить буфер обмена';
DelToRecycleItem.Caption := 'Удалить...';
DelOpenFileItem.Caption := 'Удалить НАМЕРТВО';
CopyToItem.Caption := 'Копировать в папку...';
MoveToItem.Caption := 'Переместить в папку...';
FullDirPathItem.Caption := 'Директория';
CopyPathNameToBufferItem.Caption := 'Копировать путь и имя файла';
CopyNameToBufferItem.Caption := 'Копировать имя файла';
CopyDirPathToBufferItem.Caption := 'Копировать путь к файлу';
RecycleBinItem.Caption := 'Корзина';
OpenRecycleBinItem.Caption := 'Открыть';
CleanRecycleItem.Caption := 'Очистить';
PathItem.Caption := 'Директория FlashCore...';
FullPathItem.Caption := 'Полный путь...';
CopyExeItem.Caption := 'Скопировать exe-FlashCore';
PropProItem.Caption := 'Свойства...';
IntProItem.Caption := 'Интеграция программы...';
ExitItem.Caption := 'Выход';
ViewItem.Caption := 'Представление';
SeekBarToolItem.Caption := 'Полоса прокрутки';
SeekBarItem.Caption := 'Полоса прокрутки';
AlignSeekBarItem.Caption := 'Расположение';
AlignLeftItem.Caption := 'С лева';
AlignRightItem.Caption := 'С права';
AlignBottomItem.Caption := 'Внизу';
ZoomInItem.Caption := 'Увеличить размер';
DefaultSizeItem.Caption := 'Исходный размер';
ColorItem.Caption := 'Выбрать цвет...';
FullScreenItem.Caption := 'Полный экран';
WinHeadItem.Caption := 'Заголовок окна';
QualityItem.Caption := 'Качество';
LowItem.Caption := 'Низкое';
HighItem.Caption := 'Высокое';
MediumItem.Caption := 'Наилучшее';
MainMenuItem.Caption := 'Главное меню';
MultipleItem.Caption := 'Запуск одной копии';
OnTopItem.Caption := 'Всегда впереди';
StatusItem.Caption := 'Строка статуса';
RefreshItem.Caption := 'Обновить';
ControlItem.Caption := 'Управление';
StaffBackItem.Caption := 'Назад';
StaffForwardItem.Caption := 'Вперед';
PlayItem.Caption := 'Воспроизвести';
ReplayItem.Caption := 'Перемотка';
StopItem.Caption := 'Приостановить';
GoToItem.Caption := 'Перейти...';
GoToNextItem.Caption := 'Перейти далее...';
FavoritesItem.Caption := 'Избранное';
AddFavItem.Caption := 'Добавить в Избранное...';
OrgFavItem.Caption := 'Упорядочить Избранное...';
SaveFavLinksItem.Caption := 'Сохранение избранных ссылок';
ServiceItem.Caption := 'Инструменты';
ChooseLangItem.Caption := 'Интерфейс';
RusItem.Caption := 'Русский (Rus)';
EnItem.Caption := 'Английский (Eng)';
ExeItem.Caption := 'Запустить файл...';
SelectProItem.Caption := 'Выбрать из...';
FindItem.Caption := 'Искать...';
FlashLogItem.Caption := 'Просмотр журнала...';
RunWinItem.Caption := 'Выполнить...';
FindFilesItem.Caption := 'Файлы и папки...';
ResetItem.Caption := 'Сбросить настройки';
OptionsItem.Caption := 'Параметры...';
HelpItem.Caption := 'Помощь';
SysInfoItem.Caption := 'Сведения о системе...';
TipOnDayItem.Caption := 'Совет дня...';
HKItem.Caption := 'Горячие клавиши';
InfoItem.Caption := 'Информация...';
HomePageItem.Caption := 'Домашняя страница...';
LicItem.Caption := 'Лицензия';
SendItem.Caption := 'Обратная связь';
MacromediaFlashPlayerItem.Caption := 'Macromedia Flash Player';
MainForm.SourceCodeItem.Caption := 'Исходный код...';
AboutItem.Caption := 'О программе...';
NewItem.Hint := 'Создать копию текущего окна';
QuickOpenItem.Hint := 'Быстрое открытие существующего файла';
OpenItem.Hint := 'Открытие существующего файла';
CurrentFileInfoItem.Hint := 'Просмотр детальной информации о текущем файле';
CopyFileItem.Hint := 'Копировать открытый файл в буфер обмена';
CopyToDirItem.Hint := 'Копировать текущий файл в директорию FlashCore';
OpenInNextSessionItem.Hint := 'Открыть текущий файл при следующем запуске FlashCore';
SetScreenShotItem.Hint := 'Настройка параметров экранного снимка';
CleanBufferItem.Hint := 'Очистить буфер обмена';
DelToRecycleItem.Hint := 'Удалить файл в корзину';
DelOpenFileItem.Hint := 'Удалить файл НАМЕРТВО';
CopyToItem.Hint := 'Копирование текущего файла в другое место';
MoveToItem.Hint := 'Перемещение текущего файла в другое место';
CopyPathNameToBufferItem.Hint := 'Копировать полный путь и имя текущего файла в буфер обмена';
CopyNameToBufferItem.Hint := 'Копировать имя текущего файла в буфер обмена';
CopyDirPathToBufferItem.Hint := 'Копировать путь к текущему файлу в буфер обмена';
RecycleBinItem.Hint := 'Корзина';
OpenRecycleBinItem.Hint := 'Просмотр содержимого корзины';
CleanRecycleItem.Hint := 'Очистить содержимое корзины';
PathItem.Hint := 'Просмотр директории FlashCore';
FullPathItem.Hint := 'Открыть папку';
CopyExeItem.Hint := 'Скопировать исполняемый файл FlashCore в буфер обмена';
PropProItem.Hint := 'Отобразить свойства FlashCore';
IntProItem.Hint := 'Интеграция FlashCore с оболочкой операционной системы';
ExitItem.Hint := 'Завершение работы программы';
SeekBarToolItem.Hint := 'Полоса прокрутки';
SeekBarItem.Hint := 'Отображение или скрытие полосы прокрутки';
AlignSeekBarItem.Hint := 'Расположение полосы прокрутки';
AlignLeftItem.Hint := 'Расположение полосы прокрутки с лева';
AlignRightItem.Hint := 'Расположение полосы прокрутки с права';
AlignBottomItem.Hint := 'Расположение полосы прокрутки внизу';
ZoomInItem.Hint := 'Увеличивать размер изображения в окне ';
DefaultSizeItem.Hint := 'Восстановить размер изображения в окне по умолчанию';
ColorItem.Hint := 'Выбрать цвет окна';
FullScreenItem.Hint := 'Включение\выключение полноэкранного режима';
WinHeadItem.Hint := 'Отображение или скрытие заголовка окна';
QualityItem.Hint := 'Установка качества воспроизведения файла';
LowItem.Hint := 'Установка низкого качества изображения';
HighItem.Hint := 'Установка высокого качества изображения';
MediumItem.Hint := 'Установка лучшего качества изображения';
MainMenuItem.Hint := 'Отображение или скрытие главного меню';
MultipleItem.Hint := 'Запускать только в единственном экземпляре';
OnTopItem.Hint := 'Включение\выключение режима поверх всех окон';
StatusItem.Hint := 'Отображение или скрытие строки состояния';
RefreshItem.Hint := 'Обновить окно';
StaffForwardItem.Hint := 'Один кадр вперед';
StaffBackItem.Hint := 'Один кадр назад';
PlayItem.Hint := 'Воспроизвести текущий файл';
ReplayItem.Hint := 'Запуск текущего файла с начала';
StopItem.Hint := 'Приостановить текущий файл';
GoToItem.Hint := 'Перейти в указанную позицию';
GoToNextItem.Hint := 'Перейти снова по указанному кадру';
AddFavItem.Hint := 'Добавление текущего файла в список избранного';
OrgFavItem.Hint := 'Упорядочить избранные ссылки';
SaveFavLinksItem.Hint := 'Установить каталог в котором будет храниться база данных избранных ссылок';
RusItem.Hint := 'Выбрать русский интерфейс программы';
EnItem.Hint := 'Выбрать английский интерфейс программы';
ExeItem.Hint := 'Выполнить программу';
RunWinItem.Hint := 'Выполнить запуск программы средствами Windows';
FindItem.Hint := 'Поиск swf-файлов';
FlashLogItem.Hint := 'Просмотр журнала ранее открытых файлов';
ResetItem.Hint := 'Восстановить все настройки по умолчанию';
FindFilesItem.Hint := 'Найти файлы и папки средствами Windows';
SelectProItem.Hint := 'Выбрать программу с последующим запуском';
OptionsItem.Hint := 'Настройка параметров программы';
SysInfoItem.Hint := 'Отобразить текущие сведения о системе';
TipOnDayItem.Hint := 'Читать полезные советы';
HKItem.Hint := 'Отобразить горячие клавиши окна';
InfoItem.Hint := 'Отобразить информацию о компьютере';
MainForm.HomePageItem.Hint := 'Перейти на web-сайт проекта';
LicItem.Hint := 'Прочитать лицензионное соглашение';
SendItem.Hint := 'Написать письмо автору программы';
MacromediaFlashPlayerItem.Hint := 'http://www.macromedia.com/software/flash/fl4about';
MainForm.SourceCodeItem.Hint := 'Получить исходный код FlashCore';
AboutItem.Hint := 'Отображение сведений о программе, номере версии и авторских правах';
RestoreItem.Caption := 'Открыть';
TerminateItem.Caption := 'Закрыть';
OpenDlg.Title := 'Открыть';
OpenDlg.Filter := 'Flash файлы (*.swf)|*.swf';
RunProgram.BrowseDlg.Title := 'Выполнить файл';
RunProgram.BrowseDlg.Filter := 'Программы (*.exe)|*.exe|Все файлы (*.*)|*.*|Библиотеки (*.dll)|*.dll';
IntForm.Caption := 'Интеграция программы';
IntForm.fr1.Caption := 'Интеграция в Microsoft Internet Explorer';
IntForm.fr2.Caption := 'Интеграция с Windows Shell';
IntForm.ch1.Caption := 'Кнопка на панели инструментов';
IntForm.ch2.Caption := 'Кнопка, ссылающая на e-mail';
IntForm.tx1.Caption := 'Версия Internet Explorer: ' + GetIEVersion('Version');
IntForm.ch3.Caption := 'Вложенное контекстное меню';
IntForm.tx2.Caption := 'Текст метки:';
IntForm.ch4.Caption := 'Встроить FlashCore в оболочку Windows ОС';
IntForm.tx3.Caption := 'Проверять при запуске, является ли FlashCore';
IntForm.tx4.Caption := 'программой по умолчанию.';
IntForm.CheckBt.Caption := 'Проверить';
IntForm.OK.Caption := 'Закрыть';
LicForm.Caption := 'Лицензионное соглашение';
LicForm.PrintText.Caption := 'Печать';
LicForm.OK.Caption := 'Закрыть';
ToolForm.Caption := 'Настройки';
ToolForm.CreateBt.Caption := 'Создать';
ToolForm.bt1.Caption := 'Общие';
ToolForm.bt2.Caption := 'Ярлык';
ToolForm.bt3.Caption := 'События';
ToolForm.bt4.Caption := 'Разное';
ToolForm.bt6.Caption := 'Область окна';
ToolForm.bt7.Caption := 'Полный экран';
ToolForm.bt8.Caption := 'Начертание';
ToolForm.rb1.Caption := 'FlashCore - имя файла';
ToolForm.rb2.Caption := 'Имя файла - FlashCore';
ToolForm.rb3.Caption := 'Только имя программы';
ToolForm.tx2.Caption := 'Введите имя:';
ToolForm.DeskItem.Caption := 'На Рабочий Cтол';
ToolForm.StartMenuItem.Caption := 'В Меню Пуск';
ToolForm.ProgramsItem.Caption := 'В Меню Программы';
ToolForm.AutoStartItem.Caption := 'В Автозагрузку';
ToolForm.FavoriteItem.Caption := 'В Избранное';
ToolForm.tx3.Caption := 'Выбрать цвет окон:';
ToolForm.tx4.Caption := 'Восстановить по умолчанию';
ToolForm.fr1.Caption := 'Общие';
ToolForm.fr3.Caption := 'Ярлык';
ToolForm.fr7.Caption := 'Текст в строке заголовка';
ToolForm.fr5.Caption := 'При загрузке программы';
ToolForm.fr9.Caption := 'Область окна';
ToolForm.fr11.Caption := 'При полноэкранном режиме';
ToolForm.fr13.Caption := 'При просмотра видео';
ToolForm.fr14.Caption := 'Цвет';
ToolForm.fr6.Caption := 'Дополнительно';
ToolForm.fr8.Caption := 'Дополнительно';
ToolForm.fr10.Caption := 'Выравнивание изображения';
ToolForm.fr12.Caption := 'При открытии';
ToolForm.fr4.Caption := 'При создании ярлыка';
ToolForm.ch1.Caption := 'Сворачивать в системный лоток';
ToolForm.ch2.Caption := 'Иконка в лотке только при минимизации';
ToolForm.ch3.Caption := 'Сохранять размер окна';
ToolForm.ch4.Caption := 'Сохранять позицию окна';
ToolForm.ch5.Caption := 'Запускать вместе с Windows OС';
ToolForm.ch6.Caption := 'Подсказки в строке статуса';
ToolForm.ch7.Caption := 'Использовать только шрифты программы';
ToolForm.Ch8.Caption := 'Анимация при открытии и закрытии окна';
ToolForm.Ch9.Caption := 'Скрыть предупреждение';
ToolForm.ch10.Caption := 'Выключить ПК при выходе';
ToolForm.ch11.Caption := 'Подтверждение перед выключением ПК';
ToolForm.ch12.Caption := 'Подтверждать выход';
ToolForm.ch13.Caption := 'Модальные окна на Панели Задач';
ToolForm.Ch14.Caption := 'Останавливать видео при сворачивании';
ToolForm.Ch15.Caption := 'Использовать "FlashCore XP" меню';
ToolForm.Ch16.Caption := 'Перемещать за клиетскую область';
ToolForm.Ch17.Caption := 'Приклеивать к краям экрана';
ToolForm.Ch18.Caption := 'Убрать рисунки из меню';
ToolForm.Ch19.Caption := 'Контекстное меню Flash Player (ActiveX)';
ToolForm.Ch20.Caption := 'Окно только в области клиента';
ToolForm.Ch21.Caption := 'Скрыть строку состояния';
ToolForm.Ch22.Caption := 'Скрыть полосу прокрутки';
ToolForm.Ch23.Caption := 'Меню открытого файла в строке статуса';
ToolForm.Ch24.Caption := 'Запускать в полноэкранном режиме';
ToolForm.Ch26.Caption := 'Полный экран при открытии файла';
ToolForm.Ch27.Caption := 'Отключить горячие клавиши';
ToolForm.OK.Caption := 'OK';
ToolForm.Cancel.Caption := 'Отмена';
ToolForm.AlignBox.Clear;
ToolForm.AlignBox.Items.Add('По верху');
ToolForm.AlignBox.Items.Add('По центру');
ToolForm.AlignBox.Items.Add('По низу');
if MainForm.FlashView.VerAlign = fvTop then
ToolForm.AlignBox.ItemIndex := 0;
if MainForm.FlashView.VerAlign = fvCenter then
ToolForm.AlignBox.ItemIndex := 1;
if MainForm.FlashView.VerAlign = fvBottom then
ToolForm.AlignBox.ItemIndex := 2;
InfoForm.Caption := 'Информация';
InfoForm.tab1.Caption := 'Система';
InfoForm.tab2.Caption := 'Сеть';
InfoForm.tab3.Caption := 'Память';
InfoForm.tab4.Caption := 'Время запуска';
InfoForm.txt1.Caption := 'Время и дата:';
InfoForm.txt2.Caption := 'Имя пользователя:';
InfoForm.txt3.Caption := 'Организация:';
InfoForm.txt4.Caption := 'Операционная система:';
InfoForm.txt5.Caption := 'Сборка:';
InfoForm.txt6.Caption := 'Продукт ID:';
InfoForm.txt7.Caption := 'Системная папка:';
InfoForm.txt8.Caption := 'Системный каталог:';
InfoForm.txt9.Caption := 'Тип ядра:';
InfoForm.txt10.Caption := 'Версия BIOS:';
InfoForm.txt11.Caption := 'Дата BIOS:';
InfoForm.txt12.Caption := 'Процессор:';
InfoForm.txt13.Caption := 'Модель процессора:';
InfoForm.txt26.Caption := 'Язык:';
InfoForm.txt28.Caption := 'IP-адрес:';
InfoForm.txt29.Caption := 'Имя компьютера:';
InfoForm.txt30.Caption := 'Mac адрес:';
InfoForm.txt14.Caption := 'Физическая память:';
InfoForm.txt15.Caption := 'Использовано:';
InfoForm.txt16.Caption := 'Доступно страничной памяти:';
InfoForm.txt17.Caption := 'Всего страничной памяти:';
InfoForm.txt18.Caption := 'Общее количество:';
InfoForm.txt19.Caption := 'Доступная память:';
InfoForm.txt31.Caption := 'Рабочая группа:';
InfoForm.OK.Caption := 'Закрыть';
HKForm.Caption := 'Горячие клавиши FlashCore';
HKForm.HKText.Clear;
HKForm.HKText.Lines.Append('Ctrl+N - Создание нового окна');
HKForm.HKText.Lines.Append('Shift+O - Быстрое открытие');
HKForm.HKText.Lines.Append('Ctrl+O - Открыть');
HKForm.HKText.Lines.Append('Shift+Ctrl+I - Информация о файле');
HKForm.HKText.Lines.Append('F8 - Копировать файл');
HKForm.HKText.Lines.Append('Shift+F8 - Копировать файл в директорию FlashCore');
HKForm.HKText.Lines.Append('Delete - Удалить файл в корзину');
HKForm.HKText.Lines.Append('Ctrl+P - Свойства FlashCore');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+U - Оригинальный размер');
HKForm.HKText.Lines.Append('Ctrl+H - Лучшее качество изображения');
HKForm.HKText.Lines.Append('F7 - Полоса прокрутки');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+Shift+M или Ctrl+F8 - Главное меню');
HKForm.HKText.Lines.Append('F6 - Выбрать цвет');
HKForm.HKText.Lines.Append('F5 - Обновить');
HKForm.HKText.Lines.Append('F4 - Строка состояния');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('F11 - Полный экран');
HKForm.HKText.Lines.Append('Alt+C - Заголовок окна');
HKForm.HKText.Lines.Append('Shift+J - Настроить скриншот');
HKForm.HKText.Lines.Append('Ctrl+J - Скриншот');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+Q - Выход');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+R - Русский интерфейс');
HKForm.HKText.Lines.Append('Ctrl+E - Английский интерфейс');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+Shift+H - Восстановить горячие клавиши FlashCore');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('F - Кадр вперед');
HKForm.HKText.Lines.Append('B - Кадр назад');
HKForm.HKText.Lines.Append('P - Играть');
HKForm.HKText.Lines.Append('R - Перемотка');
HKForm.HKText.Lines.Append('S - Остановить');
HKForm.HKText.Lines.Append('Pause - Приостановить или воспроизвести');
HKForm.HKText.Lines.Append('Перейти - Ctrl+G');
HKForm.HKText.Lines.Append('Перейти далее - F2');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Клавиша вверх - Увеличить звук');
HKForm.HKText.Lines.Append('Клавиша вниз - Уменьшить звук');
HKForm.HKText.Lines.Append('Клавиша влево - один кадр назад');
HKForm.HKText.Lines.Append('Клавиша вправо - один кадр вперед');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+W - Восстановить из системного лотка');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+M - Всегда впереди');
HKForm.HKText.Lines.Append('Ctrl+F11 - Запуск одной копии');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Crtl+K - Поиск swf-файлов');
HKForm.HKText.Lines.Append('F3 - Поиск файлов средствами Windows');
HKForm.HKText.Lines.Append('Alt+Enter - Настройка параметров программы');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('F9 - Запустить файл');
HKForm.HKText.Lines.Append('Win+Z - Выполнить процесс ');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+F3 - Системная информаия');
HKForm.HKText.Lines.Append('Ctrl+F1 - Лицензионное соглашение');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Shift+F1 - Написать письмо автору');
HKForm.HKText.Lines.Append('F1 - О программе');
HKForm.OK.Caption := 'Закрыть';
AboutForm.Caption := 'О программе "FlashCore"';
AboutForm.tx1.Caption := 'FlashCore v 1.1';
AboutForm.tx2.Caption := 'Copyright © 2009 Домани Олег (aka ?КТО_Я?)';
AboutForm.License.Clear;
AboutForm.License.Lines.Append('Внимание! Данный программный продукт защищен');
AboutForm.License.Lines.Append('законами об авторских правах и международными');
AboutForm.License.Lines.Append('соглашениями. Незаконное воспроизведение или');
AboutForm.License.Lines.Append('распространение данной программы или ее части');
AboutForm.License.Lines.Append('влечет гражданскую и уголовную ответственность.');
AboutForm.tx3.Caption := 'Пермская область, г. Чайковский';
GlobalMemoryStatus(MS);
AboutForm.tx4.Caption := 'Физическая память: ' + FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
AboutForm.tx5.Caption := 'Использовано: ' + Format('%d %%', [MS.dwMemoryLoad]);
AboutForm.SendMail.Text := '<Написать письмо автору';
AboutForm.Closed.Caption := 'Закрыть';
GoToForm.Caption := 'Перейти...';
GoToForm.Cancel.Caption := 'Отмена';
FindForm.Caption := 'Поиск';
FindForm.fr1.Caption := 'Искать в:';
FindForm.fr2.Caption := 'Результаты';
FindForm.SearchReaduLb.Caption:= 'Поиск завершен';
FindForm.ResultLb.Caption := 'Результаты:';
FindForm.StartBt.Caption := 'Поиск';
FindForm.PauseBt.Caption := 'Пауза';
FindForm.ResumeBt.Caption := 'Продолжить';
FindForm.ResultItem.Caption := 'Результаты';
FindForm.RunItem.Caption := 'Выполнить...';
FindForm.SaveItem.Caption := 'Сохранить...';
FindForm.PrintItem.Caption := 'Печать...';
FindForm.DelFromListItem.Caption := 'Удалить из списка';
FindForm.ClearItem.Caption := 'Очистить все';
FindForm.QuitItem.Caption := 'Закрыть';
FindForm.FavoritesItem.Caption := 'Избранное';
FindForm.AddFavItem.Caption := 'Добавить в Избранное...';
FindForm.OrgFavItem.Caption := 'Упорядочить Избранное...';
FindForm.OK.Caption := 'Закрыть';
OpenForm.Caption := 'Открыть';
OpenForm.txt1.Caption := 'Введите путь к файлу.';
OpenForm.txt2.Caption := 'Открыть:';
OpenForm.txt3.Caption := 'Также можете воспользоваться кнопкой "Обзор..",';
OpenForm.txt4.Caption := 'для ручного выбора файла из диалогового окна.';
OpenForm.Cancel.Caption := 'Отмена';
OpenForm.Choose.Caption := 'Обзор...';
ScreenForm.Caption := 'Экранный снимок';
ScreenForm.fr1.Caption := 'Экранный снимок';
ScreenForm.fr2.Caption := 'Качество:';
ScreenForm.txt1.Caption := 'При нажатии комбинации горячих клавиш Ctrl+J';
ScreenForm.txt2.Caption := 'FlashCore будет делать снимок текущего кадра.';
ScreenForm.txt3.Caption := 'Делать снимок при двойном щелчке';
ScreenForm.txt4.Caption := 'по строке состояния.';
ScreenForm.Ch1.Caption := 'Снимок при нажатии Ctrl+J';
ScreenForm.Ch3.Caption := 'Открывать снимок';
ScreenForm.rb1.Caption := '8 бит';
ScreenForm.rb2.Caption := '16 бит';
ScreenForm.rb3.Caption := '32 бита';
ScreenForm.OK.Caption := 'Закрыть';
AddFavForm.Caption := 'Добавление в избранное';
AddFavForm.txt1.Caption := 'Добавление сведений в избранное.';
AddFavForm.txt2.Caption := 'Добавляет в список избранного сведения под';
AddFavForm.txt3.Caption := 'ниже указанным заголовком.';
AddFavForm.txt4.Caption := 'Имя:';
AddFavForm.OK.Caption := 'Добавить';
AddFavForm.Cancel.Caption := 'Отмена';
FavForm.Caption := 'Упорядочить Избранное';
FavForm.RenameBt.Caption := 'Переименовать';
FavForm.DeleteBt.Caption := 'Удалить';
FavForm.ClearBt.Caption := 'Очистить все';
FavForm.FullScreenBt.Caption := 'Полный экран';
FavForm.OkBt.Caption := 'OK';
FavForm.Cancel.Caption := 'Отмена';
SaveBaseForm.Caption := 'Сохранение избранных ссылок';
SaveBaseForm.tx1.Caption := 'Текущая папка для сохранения избранных ссылок:';
SaveBaseForm.OK.Caption := 'OK';
SaveBaseForm.Cancel.Caption := 'Отмена';
FileInfoForm.Caption := 'Информация о файле';
FileInfoForm.tx1.Caption := 'Имя файла:';
FileInfoForm.tx2.Caption := 'Папка:';
FileInfoForm.tx3.Caption := 'Полный путь:';
FileInfoForm.tx4.Caption := 'Расширение:';
FileInfoForm.tx5.Caption := 'Текущий размер:';
FileInfoForm.tx6.Caption := 'Размер:';
FileInfoForm.tx7.Caption := 'Число фреймов:';
FileInfoForm.fr1.Caption := 'Атрибуты';
FileInfoForm.ChReadOnly.Caption := 'Только чтение';
FileInfoForm.ChArchive.Caption := 'Архивный';
FileInfoForm.ChSystem.Caption := 'Системный';
FileInfoForm.ChHidden.Caption := 'Скрытый';
FileInfoForm.OK.Caption := 'OK';
FileInfoForm.Cancel.Caption := 'Отмена';
TipForm.Caption := 'Совет дня';
TipForm.tx1.Caption := 'А знаете ли вы, что...';
TipForm.BackBt.Caption := '<< Назад';
TipForm.NextBt.Caption := 'Вперед >>';
TipForm.OK.Caption := 'Закрыть';
LogForm.Caption := 'Журнал ранее открытых файлов';
LogForm.OK.Caption := 'Закрыть';
end;

procedure TMainForm.EnItemClick(Sender: TObject);
begin
EnItem.Checked := True;
RusItem.Checked := False;
Sm := GetSystemMenu(Handle, True);
Sm := GetSystemMenu(Handle, False);
InsertMenu(SM, word(0), Mf_ByPosition, ToolPro, 'Preferences...');
InsertMenu(SM, word(-1), Mf_Separator, Cherta, '');
InsertMenu(SM, word(-2), Mf_ByPosition, AboutPro, 'About "FlashCore"...');
FlashSound.Hint := 'Volume';
FlashSound.OnChange(Self);
ToolForm.ColorPickDlg.OtherBtnCaption := 'Other Colors...';
FileItem.Caption := 'FlashCore';
NewItem.Caption := 'New Window';
QuickOpenItem.Caption := 'Quick open file...';
OpenItem.Caption := 'Open file...';
CopyFileItem.Caption := 'Copy File';
CopyToDirItem.Caption := 'Copy to FlashCore Folder';
CurrentFileInfoItem.Caption := 'Information...';
CopyPathNameToBufferItem.Caption := 'Copy of Directory';
OpenInNextSessionItem.Caption := 'Open in Next Session';
SetScreenShotItem.Caption := 'Screen Shot';
CleanBufferItem.Caption := 'Clear Clipboard';
DelToRecycleItem.Caption := 'Delete...';
DelOpenFileItem.Caption := 'Delete IRREVERSIBLY';
CopyToItem.Caption := 'Copy to Folder...';
MoveToItem.Caption := 'Move to Folder...';
FullDirPathItem.Caption := 'Directory';
CopyPathNameToBufferItem.Caption := 'Copy full path and name';
CopyNameToBufferItem.Caption := 'Copy file name';
CopyDirPathToBufferItem.Caption := 'Copy dir path';
RecycleBinItem.Caption := 'Recycle Bin';
OpenRecycleBinItem.Caption := 'Open';
CleanRecycleItem.Caption := 'Clear';
FullPathItem.Caption := 'Full Path...';
PathItem.Caption := 'Directory of FlashCore...';
CopyExeItem.Caption := 'Copy binary file';
PropProItem.Caption := 'Properties...';
IntProItem.Caption := 'System Integration...';
ExitItem.Caption := 'Quit';
ViewItem.Caption := 'Presentation';
SeekBarToolItem.Caption := 'Seek Bar';
SeekBarItem.Caption := 'Seek Bar';
AlignSeekBarItem.Caption := 'Align';
AlignLeftItem.Caption := 'Left';
AlignRightItem.Caption := 'Right';
AlignBottomItem.Caption := 'Bottom';
ZoomInItem.Caption := 'Zoom in';
DefaultSizeItem.Caption := 'Original Size';
ColorItem.Caption := 'Background...';
FullScreenItem.Caption := 'Full Screen';
WinHeadItem.Caption := 'Window Headline';
QualityItem.Caption := 'Quality';
LowItem.Caption := 'Low';
HighItem.Caption := 'High';
MediumItem.Caption := 'Medium';
MainMenuItem.Caption := 'Main Menu';
MultipleItem.Caption := 'Forbid Multiple';
OnTopItem.Caption := 'Always on Top';
StatusItem.Caption := 'Status Bar';
RefreshItem.Caption := 'Refresh';
ControlItem.Caption := 'Manager';
StaffForwardItem.Caption := 'Step Forward';
StaffBackItem.Caption := 'Step Back';
PlayItem.Caption := 'Play';
ReplayItem.Caption := 'Replay';
StopItem.Caption := 'Stop';
GoToItem.Caption := 'Go to Frame...';
GoToNextItem.Caption := 'Go to Frame again...';
FavoritesItem.Caption := 'Favorites';
AddFavItem.Caption := 'Add to Favorites...';
OrgFavItem.Caption := 'Organize Favorites...';
SaveFavLinksItem.Caption := 'Save the Favorites Links';
ServiceItem.Caption := 'Tools';
ChooseLangItem.Caption := 'Language';
RusItem.Caption := 'Russian';
EnItem.Caption := 'English';
ExeItem.Caption := 'Execute...';
SelectProItem.Caption := 'Select...';
RunWinItem.Caption := 'Run...';
FindFilesItem.Caption := 'Files Search';
FindItem.Caption := 'Search...';
FlashLogItem.Caption := 'Log...';
ResetItem.Caption := 'Reset Settings';
OptionsItem.Caption := 'Preferences...';
HelpItem.Caption := 'Help';
SysInfoItem.Caption := 'System Information...';
TipOnDayItem.Caption := 'Tip of the Day';
HKItem.Caption := 'Hot Keys';
InfoItem.Caption := 'Information...';
HomePageItem.Caption := 'FlashCore Home Page...';
LicItem.Caption := 'License agreement';
SendItem.Caption := 'Send Feedback';
MacromediaFlashPlayerItem.Caption := 'Macromedia Flash Player';
MainForm.SourceCodeItem.Caption := 'Source Code...';
AboutItem.Caption := 'About "FlashCore"...';
NewItem.Hint := 'Create copy of current window';
QuickOpenItem.Hint := 'Quick open an existing file';
OpenItem.Hint := 'Open an existing file';
CurrentFileInfoItem.Hint := 'Show the detal information of the current file';
CopyFileItem.Hint := 'Copy file to the Clipboard';
CopyToDirItem.Hint := 'Copy of current file to FlahCore directory';
FullPathItem.Hint := 'Open folder';
OpenInNextSessionItem.Hint := 'Opening the current file in the next FlashCore session';
SetScreenShotItem.Hint := 'Setup of parameters of screen shot';
CleanBufferItem.Hint := 'Clear Clipboard';
DelToRecycleItem.Hint := 'Delete file to Recycle Bin';
DelOpenFileItem.Hint := 'Delete file IRREVERSIBLY';
CopyToItem.Hint := 'Copy the current file in the other place';
MoveToItem.Hint := 'Move the current file in the other place';
CopyPathNameToBufferItem.Hint := 'Copy full path and name the current file to Clipboard';
CopyNameToBufferItem.Hint := 'Copy file name the current file to Clipboard';
CopyDirPathToBufferItem.Hint := 'Copy dir path the current file to Clipboard';
RecycleBinItem.Hint := 'Recycle Bin';
OpenRecycleBinItem.Hint := 'Go through contents of Recycle Bin';
CleanRecycleItem.Hint := 'Clear contents of Recycle Bin';
PathItem.Hint := 'Show the directory of FlashCore';
CopyExeItem.Hint := 'Copy executable FlashCore file to clipboard';
PropProItem.Hint := 'Show properties of FlashCore';
IntProItem.Hint := 'FlashCore integration to Windows Shell';
ExitItem.Hint := 'Closed application';
SeekBarToolItem.Hint := 'Seek bar';
SeekBarItem.Hint := 'Show or hide of seek bar';
AlignSeekBarItem.Hint := 'Align of seek bar';
AlignLeftItem.Hint := 'Align of seek bar in the left';
AlignRightItem.Hint := 'Align of seek bar in the right';
AlignBottomItem.Hint := 'Align of seek bar in the bottom';
ZoomInItem.Hint := 'Zoom the image size in the window';
DefaultSizeItem.Hint := 'Restore the image size by default';
ColorItem.Hint := 'Choose background color ';
FullScreenItem.Hint := 'On\off of the full screen mode';
WinHeadItem.Hint := 'Show or hide of the window headline';
QualityItem.Hint := 'Installation quality of reproduction of the file';
LowItem.Hint := 'Installation of low quality of the image';
HighItem.Hint := 'Installation of high quality of the image';
MediumItem.Hint := 'Installation of medium quality of the image';
MainMenuItem.Hint := 'Show or hide of main menu';
MultipleItem.Hint := 'Starting program only in the single copy';
OnTopItem.Hint := 'On\off of a the mode always on top';
StatusItem.Hint := 'Show or hide of status bar';
RefreshItem.Hint := 'Update window';
StaffForwardItem.Hint := 'One frame forward';
StaffBackItem.Hint := 'One frame back';
PlayItem.Hint := 'Play file';
ReplayItem.Hint := 'Replay file';
StopItem.Hint := 'Stop file';
GoToItem.Hint := 'Go to indicate position';
GoToNextItem.Hint := 'Go to again indicate position';
AddFavItem.Hint := 'Add of current file to the favorites list';
OrgFavItem.Hint := 'Organized of favorites links';
SaveFavLinksItem.Hint := 'Setup of directory for saving the date base of favorites links';
RusItem.Hint := 'Choose of russian interface';
EnItem.Hint := 'Choose of english interface';
ExeItem.Hint := 'Execute program';
RunWinItem.Hint := 'The run start of program by means of Windows';
FindItem.Hint := 'Find swf-files';
FlashLogItem.Hint := 'Open the FlashCore log';
ResetItem.Hint := 'Restore all settings by default';
FindFilesItem.Hint := 'Find files and folders by means of Windows';
SelectProItem.Hint := 'Choose a program with the subsequent run';
OptionsItem.Hint := 'Setup of parameters of program';
SysInfoItem.Hint := 'Show of system information';
TipOnDayItem.Hint := 'Read the tip of the day';
HKItem.Hint := 'Show hot keys of window';
InfoItem.Hint := 'Show information of computer';
HomePageItem.Hint := 'Go to FlashCore home page';
LicItem.Hint := 'Read the license agreement';
SendItem.Hint := 'Write the letter to the author';
MacromediaFlashPlayerItem.Hint := 'http://www.macromedia.com/software/flash/fl4about';
MainForm.SourceCodeItem.Hint := 'Give the Source Code of FlashCore Project';
AboutItem.Hint := 'Display program information, number version, and copyright';
RestoreItem.Caption := 'Open';
TerminateItem.Caption := 'Quit';
OpenDlg.Title := 'Open';
OpenDlg.Filter := 'Flash Files (*.swf)|*.swf';
RunProgram.BrowseDlg.Title := 'Execute File';
RunProgram.BrowseDlg.Filter := 'Executable Files (*.exe)|*.exe|All Files (*.*)|*.*|Libraries (*.dll)|*.dll';
IntForm.Caption := 'System Integration';
IntForm.fr1.Caption := 'Integration to Microsoft Internet Explorer';
IntForm.fr2.Caption := 'Integration to Windows Shell';
IntForm.ch1.Caption := 'Button on Tool Bar for the fast Transition to FlashCore';
IntForm.ch2.Caption := 'Button, connecting to e-mail of author of FlashCore';
IntForm.tx1.Caption := 'Version Internet Explorer: ' + GetIEVersion('Version');
IntForm.ch3.Caption := 'Add into Context Menu';
IntForm.tx2.Caption := 'Text of Label:';
IntForm.ch4.Caption := 'To link FlashCore to Windows Shell';
IntForm.tx3.Caption := 'Checking on start FlashCore exists as default program.';
IntForm.tx4.Caption := '';
IntForm.OK.Caption := 'Close';
IntForm.CheckBt.Caption := 'Check Now';
LicForm.Caption := 'License Agreement';
LicForm.PrintText.Caption := 'Print';
LicForm.OK.Caption := 'Close';
ToolForm.Caption := 'Options';
ToolForm.CreateBt.Caption := 'Create';
ToolForm.bt1.Caption := 'General';
ToolForm.bt2.Caption := 'Shortcut';
ToolForm.bt3.Caption := 'Events';
ToolForm.bt4.Caption := 'Other Misc';
ToolForm.bt6.Caption := 'Windows Area';
ToolForm.bt7.Caption := 'Full Screen';
ToolForm.bt8.Caption := 'Windows Style';
ToolForm.rb1.Caption := 'FlashCore - File Name';
ToolForm.rb2.Caption := 'File Name - FlashCore';
ToolForm.rb3.Caption := 'Only Program Name';
ToolForm.tx3.Caption := 'Choose color:';
ToolForm.tx4.Caption := 'Restore by Default';
ToolForm.tx2.Caption := 'Input a Name:';
ToolForm.DeskItem.Caption := 'Add to Desktop';
ToolForm.StartMenuItem.Caption := 'Add to Start Menu';
ToolForm.ProgramsItem.Caption := 'Add to Programs Menu';
ToolForm.AutoStartItem.Caption := 'Add to Startup';
ToolForm.FavoriteItem.Caption := 'Add to Favorites';
ToolForm.fr1.Caption := 'General';
ToolForm.fr3.Caption := 'Shortcut';
ToolForm.fr7.Caption := 'Text in the Window Caption';
ToolForm.fr5.Caption := 'On FlashCore Start';
ToolForm.fr9.Caption := 'Area of Window';
ToolForm.fr11.Caption := 'On Full Screen Mode';
ToolForm.fr13.Caption := 'On Play Video';
ToolForm.fr14.Caption := 'Color';
ToolForm.fr6.Caption := 'Additional';
ToolForm.fr8.Caption := 'Additional';
ToolForm.fr10.Caption := 'Align of Image';
ToolForm.fr12.Caption := 'On Load File';
ToolForm.fr4.Caption := 'On Shortcut Creating';
ToolForm.ch1.Caption := 'Minimize to System Tray';
ToolForm.ch2.Caption := 'Icon in the Tray only at minimize';
ToolForm.ch3.Caption := 'Save Window Position';
ToolForm.ch4.Caption := 'Save Window Size';
ToolForm.ch5.Caption := 'Run with Windows OS Startup';
ToolForm.ch6.Caption := 'Show Hint in the Status Bar';
ToolForm.ch7.Caption := 'Use of Device Font';
ToolForm.Ch8.Caption := 'Animation at Opening and Closing';
ToolForm.Ch9.Caption := 'Hide Warning Message';
ToolForm.ch10.Caption := 'Shutdown PC on application Halt';
ToolForm.ch11.Caption := 'Confirmation on before Shutdown PC';
ToolForm.ch12.Caption := 'Confirmation exit';
ToolForm.ch13.Caption := 'Show Modal Windows on the Task Bar';
ToolForm.Ch14.Caption := 'Pause Video When Minimize';
ToolForm.Ch15.Caption := 'Use of "FlashCore XP" Menu';
ToolForm.Ch16.Caption := 'Move for the Client Area';
ToolForm.Ch17.Caption := 'Use of Screen Snap';
ToolForm.Ch18.Caption := 'Invisible Images in the Menu';
ToolForm.Ch19.Caption := 'Flash Player Context Menu (ActiveX)';
ToolForm.Ch20.Caption := 'Window Only in Client Area';
ToolForm.Ch21.Caption := 'Hide the Status Bar';
ToolForm.Ch22.Caption := 'Hide the Seek Bar';
ToolForm.Ch23.Caption := 'Status Bar Context Menu of loading file';
ToolForm.Ch24.Caption := 'Start FlashCore on Full Screen Mode';
ToolForm.Ch26.Caption := 'Switch to Full Screen on Open File';
ToolForm.Ch27.Caption := 'Disabled of Hot Keys';
ToolForm.OK.Caption := 'OK';
ToolForm.Cancel.Caption := 'Cancel';
ToolForm.AlignBox.Clear;
ToolForm.AlignBox.Items.Add('On Top');
ToolForm.AlignBox.Items.Add('On Center');
ToolForm.AlignBox.Items.Add('On Bottom');
if MainForm.FlashView.VerAlign = fvTop then
ToolForm.AlignBox.ItemIndex := 0;
if MainForm.FlashView.VerAlign = fvCenter then
ToolForm.AlignBox.ItemIndex := 1;
if MainForm.FlashView.VerAlign = fvBottom then
ToolForm.AlignBox.ItemIndex := 2;
InfoForm.Caption := 'Information';
InfoForm.tab1.Caption := 'System';
InfoForm.tab2.Caption := 'Net';
InfoForm.tab3.Caption := 'Memory';
InfoForm.tab4.Caption := 'Running Time';
InfoForm.txt1.Caption := 'Time and Date:';
InfoForm.txt2.Caption := 'User Name:';
InfoForm.txt3.Caption := 'Organization:';
InfoForm.txt4.Caption := 'Operation System:';
InfoForm.txt5.Caption := 'Build:';
InfoForm.txt6.Caption := 'Serial Number of Product:';
InfoForm.txt7.Caption := 'System Folder:';
InfoForm.txt8.Caption := 'System Directory:';
InfoForm.txt9.Caption := 'Type of Core:';
InfoForm.txt10.Caption := 'Version of BIOS:';
InfoForm.txt11.Caption := 'Date of BIOS:';
InfoForm.txt12.Caption := 'Processor:';
InfoForm.txt13.Caption := 'Model of Processor:';
InfoForm.txt26.Caption := 'Language:';
InfoForm.txt28.Caption := 'IP-address:';
InfoForm.txt29.Caption := 'Computer Name:';
InfoForm.txt30.Caption := 'Mac address:';
InfoForm.txt14.Caption := 'Physical Memory:';
InfoForm.txt15.Caption := 'Use:';
InfoForm.txt16.Caption := 'Available Page Memory:';
InfoForm.txt17.Caption := 'Total Page Memory:';
InfoForm.txt18.Caption := 'Total Memory:';
InfoForm.txt19.Caption := 'Available Memory:';
InfoForm.txt31.Caption := 'Work Group:';
InfoForm.OK.Caption := 'Close';
HKForm.Caption := 'Hot Keys';
HKForm.HKText.Clear;
HKForm.HKText.Lines.Append('Ctrl+N - Creation of New Window');
HKForm.HKText.Lines.Append('Shift+O - Quick Open File');
HKForm.HKText.Lines.Append('Ctrl+O - Open');
HKForm.HKText.Lines.Append('Shift+Ctrl+I - File Information');
HKForm.HKText.Lines.Append('F8 - Copy File');
HKForm.HKText.Lines.Append('Shift+F8 - Copy File to FlashCore Folder');
HKForm.HKText.Lines.Append('Delete - Remove File to Recycle Bin');
HKForm.HKText.Lines.Append('Ctrl+P - Properties of FlashCore');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+U - Original Size');
HKForm.HKText.Lines.Append('Ctrl+H - The Best Quality of Image');
HKForm.HKText.Lines.Append('F7 - Seek Bar');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+Shift+M or Ctrl+F8 - Main Menu');
HKForm.HKText.Lines.Append('F6 - Choose Color');
HKForm.HKText.Lines.Append('F5 - Update');
HKForm.HKText.Lines.Append('F4 - Status Bar');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('F11 - Full Screen');
HKForm.HKText.Lines.Append('Alt+C - Window Heading');
HKForm.HKText.Lines.Append('Shift+J - Setting of Screen Shot');
HKForm.HKText.Lines.Append('Ctrl+J - Screen Shot');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+Q - Quit');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+R - Russian Interface');
HKForm.HKText.Lines.Append('Ctrl+E - English Interface');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+Shift+H - Restore Hot Keys of FlashCore');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('F - Step Forward');
HKForm.HKText.Lines.Append('B - Step Back');
HKForm.HKText.Lines.Append('P - Play');
HKForm.HKText.Lines.Append('R - Rewind');
HKForm.HKText.Lines.Append('S - Stop');
HKForm.HKText.Lines.Append('Pause - Stop or Play');
HKForm.HKText.Lines.Append('Go to Frame - Ctrl+G');
HKForm.HKText.Lines.Append('Go to Frame again - F2');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Key Up - Increase volume');
HKForm.HKText.Lines.Append('Key Down - Decrease volume');
HKForm.HKText.Lines.Append('Key Left - One frame back');
HKForm.HKText.Lines.Append('Key Right - One frame forward');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+W - To Restore from System Tray');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+M - Always on Top');
HKForm.HKText.Lines.Append('Ctrl+F11 - Forbid Multiple');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Crtl+K - Search Swf-Files');
HKForm.HKText.Lines.Append('F3 - Find Files by Means of Windows');
HKForm.HKText.Lines.Append('Alt+Enter - Setup of Parameters of program');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('F9 - Execute File');
HKForm.HKText.Lines.Append('Win+Z - Run Process');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Ctrl+F3 - System Information');
HKForm.HKText.Lines.Append('Ctrl+F1 - License Agreement');
HKForm.HKText.Lines.Append('');
HKForm.HKText.Lines.Append('Shift+F1 - Write letter to the Author');
HKForm.HKText.Lines.Append('F1 - About program');
HKForm.OK.Caption := 'Close';
AboutForm.Caption := 'About "FlashCore"';
AboutForm.tx1.Caption := 'FlashCore v 1.1';
AboutForm.tx2.Caption := 'Copyright © 2009 Domani Oleg (aka ?КТО_Я?)';
AboutForm.License.Clear;
AboutForm.License.Lines.Append('Attention! The Given Software is Protected');
AboutForm.License.Lines.Append('Laws on Copyrights and International');
AboutForm.License.Lines.Append('Agreements. Illegal Reproduction or');
AboutForm.License.Lines.Append('Distribution Given Programs or her Parts');
AboutForm.License.Lines.Append('Attracts Civil and the Criminal Liability.');
AboutForm.tx3.Caption := 'Perm Region, Chaykovskiy city';
GlobalMemoryStatus(MS);
AboutForm.tx4.Caption := 'Memory Available to Windows: ' + FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
AboutForm.tx5.Caption := 'Use: ' + Format('%d %%', [MS.dwMemoryLoad]);
AboutForm.SendMail.Text := '<Write the Letter to the Author';
AboutForm.Closed.Caption := 'Close';
GoToForm.Caption := 'Go to...';
GoToForm.Cancel.Caption := 'Cancel';
FindForm.Caption := 'Search';
FindForm.fr1.Caption := 'Look in:';
FindForm.fr2.Caption := 'Results';
FindForm.SearchReaduLb.Caption:= 'Ready';
FindForm.ResultLb.Caption := 'Results:';
FindForm.StartBt.Caption := 'Search';
FindForm.PauseBt.Caption := 'Pause';
FindForm.ResumeBt.Caption := 'Resume';
FindForm.ResultItem.Caption := 'Results';
FindForm.RunItem.Caption := 'Execute...';
FindForm.SaveItem.Caption := 'Save...';
FindForm.PrintItem.Caption := 'Print...';
FindForm.DelFromListItem.Caption := 'Delete from List';
FindForm.ClearItem.Caption := 'Clear all';
FindForm.QuitItem.Caption := 'Close';
FindForm.FavoritesItem.Caption := 'Favorites';
FindForm.AddFavItem.Caption := 'Add to Favorites...';
FindForm.OrgFavItem.Caption := 'Organize Favorites...';
FindForm.OK.Caption := 'Close';
OpenForm.Caption := 'Open';
OpenForm.txt1.Caption := 'Input of path to the file.';
OpenForm.txt2.Caption := 'Open:';
OpenForm.txt3.Caption := 'Also you can use of button "Browse...", for the Handing';
OpenForm.txt4.Caption := 'selection of image from Window Dialog.';
OpenForm.Cancel.Caption := 'Cancel';
OpenForm.Choose.Caption := 'Browse...';
ScreenForm.Caption := 'Screen Shot';
ScreenForm.fr1.Caption := 'Screen Shot';
ScreenForm.fr2.Caption := 'Quality:';
ScreenForm.txt1.Caption := 'On Pressing combination Hot Keys Ctrl+J';
ScreenForm.txt2.Caption := 'FlashCore make of Screen Shot to the Current Frame.';
ScreenForm.txt3.Caption := 'Do Make of Screen Shot on Double';
ScreenForm.txt4.Caption := 'Click in the Status Bar.';
ScreenForm.Ch1.Caption := 'Screen Shot on Pressing Ctrl+J';
ScreenForm.Ch3.Caption := 'Open Screen Shot Image';
ScreenForm.rb1.Caption := '8 Bits';
ScreenForm.rb2.Caption := '16 Bits';
ScreenForm.rb3.Caption := '32 Bits';
ScreenForm.OK.Caption := 'Close';
AddFavForm.Caption := 'Add to Favorites';
AddFavForm.txt1.Caption := 'Add Information to the Favorites.';
AddFavForm.txt2.Caption := 'Add to the Favorites list Information Under';
AddFavForm.txt3.Caption := 'Bottom Point out Heading.';
AddFavForm.txt4.Caption := 'Name:';
AddFavForm.OK.Caption := 'Add';
AddFavForm.Cancel.Caption := 'Cancel';
FavForm.Caption := 'Organize Favorites';
FavForm.RenameBt.Caption := 'Rename';
FavForm.DeleteBt.Caption := 'Delete';
FavForm.ClearBt.Caption := 'Clear all';
FavForm.FullScreenBt.Caption := 'Full Screen';
FavForm.OkBt.Caption := 'OK';
FavForm.Cancel.Caption := 'Cancel';
SaveBaseForm.Caption := 'Save the Favorites Links';
SaveBaseForm.tx1.Caption := 'Current folder on saving favorites links:';
SaveBaseForm.OK.Caption := 'OK';
SaveBaseForm.Cancel.Caption := 'Cancel';
FileInfoForm.Caption := 'Information';
FileInfoForm.tx1.Caption := 'File Name:';
FileInfoForm.tx2.Caption := 'Directory:';
FileInfoForm.tx3.Caption := 'Full Path:';
FileInfoForm.tx4.Caption := 'Extract File Ext:';
FileInfoForm.tx5.Caption := 'Current Size:';
FileInfoForm.tx6.Caption := 'Size:';
FileInfoForm.tx7.Caption := 'Total Frames:';
FileInfoForm.fr1.Caption := 'Attributes';
FileInfoForm.ChReadOnly.Caption := 'Read Only';
FileInfoForm.ChArchive.Caption := 'Archive';
FileInfoForm.ChSystem.Caption := 'System';
FileInfoForm.ChHidden.Caption := 'Hidden';
FileInfoForm.OK.Caption := 'OK';
FileInfoForm.Cancel.Caption := 'Cancel';
TipForm.Caption := 'Tip of the Day';
TipForm.tx1.Caption := 'Do you want about know...';
TipForm.BackBt.Caption := '<< Previous';
TipForm.NextBt.Caption := 'Next >>';
TipForm.OK.Caption := 'Close';
LogForm.Caption := 'Log of the last files';
LogForm.OK.Caption := 'Close';
end;

procedure TMainForm.TerminateItemClick(Sender: TObject);
begin
Close;
end;

procedure TMainForm.RefreshItemClick(Sender: TObject);
begin
FlashView.Refresh;
end;

procedure TMainForm.OpenDlgShow(Sender: TObject);
const
LB_FILETYPES_ID = 1089;
LB_FILENAME_ID = 1090;
LB_DRIVES_ID = 1091;
Str1 = 'Выбрать';
Str2 = 'Закрыть';
Str3 = 'Тип:';
Str4 = 'Имя:';
Str5 = 'FlashCore';
Str6 = 'Choose';
Str7 = 'Cancel';
Str8 = 'Type:';
Str9 = 'Name:';
var
hOpenDialog: HWND;
begin
hOpenDialog := GetParent(OpenDlg.Handle);
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idOk, Longint(PChar(Str1))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idOk, Longint(PChar(Str6)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idCancel, Longint(PChar(Str2))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idCancel, Longint(PChar(Str7)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILETYPES_ID, Longint(PChar(Str3))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILETYPES_ID, Longint(PChar(Str8)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILENAME_ID, Longint(PChar(Str4))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILENAME_ID, Longint(PChar(Str9)));
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_DRIVES_ID, Longint(PChar(Str5)));
end;

procedure TMainForm.RunProgramFileRunBrowseDlgShow(Sender: TObject);
const
LB_FILETYPES_ID = 1089;
LB_FILENAME_ID = 1090;
LB_DRIVES_ID = 1091;    
Str1 = 'Выполнить';
Str2 = 'Закрыть';
Str3 = 'Тип:';
Str4 = 'Имя:';
Str5 = 'FlashCore';
Str6 = 'Execute';
Str7 = 'Cancel';
Str8 = 'Type:';
Str9 = 'Name:';
var
hOpenDialog: HWND;
begin
hOpenDialog := GetParent(RunProgram.BrowseDlg.Handle);
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idOk, Longint(PChar(Str1))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idOk, Longint(PChar(Str6)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idCancel, Longint(PChar(Str2))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idCancel, Longint(PChar(Str7)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILETYPES_ID, Longint(PChar(Str3))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILETYPES_ID, Longint(PChar(Str8)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILENAME_ID, Longint(PChar(Str4))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILENAME_ID, Longint(PChar(Str9)));
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_DRIVES_ID, Longint(PChar(Str5)));
end;

procedure TMainForm.MySystemMenu(var MySysMenu: TWmSysCommand);
begin
if MySysMenu.CmdType = ToolPro then
OptionsItem.Click;
if MySysMenu.CmdType = AboutPro then
AboutItem.Click;
inherited;
end;

procedure TMainForm.InfoItemClick(Sender: TObject);
begin
try
InfoForm.Position := poMainFormCenter;
InfoForm.ShowModal;
except
end;
end;

procedure TMainForm.SelectProItemClick(Sender: TObject);
begin
WinExec(Pchar('rundll32 shell32,OpenAs_RunDLL'),sw_Show);
end;

procedure TMainForm.RunWinItemClick(Sender: TObject);
var
ShellApplication: Variant;
begin
ShellApplication := CreateOleObject('Shell.Application');
ShellApplication.FileRun;
end;

procedure TMainForm.WMMouseActivate(var Msg: TMessage);
begin
try
inherited;
if not ToolForm.Ch19.Checked then
begin
if Msg.LParamHi = 516 then
Msg.Result:= MA_NOACTIVATEANDEAT else
Msg.Result:= MA_ACTIVATE;
end;
except
end;
end;

procedure ShowPropertiesDialog(FName: string);
var
SExInfo: TSHELLEXECUTEINFO;
begin
ZeroMemory(Addr(SExInfo),SizeOf(SExInfo));
SExInfo.cbSize := SizeOf(SExInfo);
SExInfo.lpFile := PChar(FName);
SExInfo.lpVerb := 'properties';
SExInfo.fMask  := SEE_MASK_INVOKEIDLIST;
ShellExecuteEx(Addr(SExInfo));
end;

procedure TMainForm.PropProItemClick(Sender: TObject);
begin
ShowPropertiesDialog(ParamStr(0));
end;

procedure TMainForm.HKItemClick(Sender: TObject);
begin
try
HKForm.Position := poMainFormCenter;
HKForm.ShowModal;
except
end;
end;

procedure TMainForm.ShowHint(Sender: TObject);
begin
if ToolForm.Ch6.Checked then
begin
if Length(Application.Hint) > 0 then
begin
StBar.SimplePanel := True;
StBar.SimpleText := Application.Hint;
end
else StBar.SimplePanel := False;
end;
end;

procedure TMainForm.WMMoving(var msg: TWMMoving);
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

procedure TMainForm.T3Timer(Sender: TObject);
begin
try
T3.Enabled := False;
if OnTopItem.Checked then
SetWindowPos(MainForm.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE) else
SetWindowPos(MainForm.Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
if ToolForm.Ch2.Checked then
Shell_NotifyIcon(Nim_Delete, @Icon) else
Shell_NotifyIcon(Nim_Add, @Icon);
except
end;
end;

procedure TMainForm.DelOpenFileItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
if Application.MessageBox(PChar('Удалить файл' + #13 + #13 + '"' + OpenDlg.FileName + '"' +
#13 + #13 + 'НАМЕРТВО?' +
#13 + ''),
'Удалить файл НАМЕРТВО', mb_IconQuestion + Mb_YesNo) = idYes then
begin
DelOpenFileItem.Enabled := False;
DeleteFile(OpenDlg.FileName);
end;
if EnItem.Checked then
if Application.MessageBox(PChar('Remove file' + #13 + #13 + '"' + OpenDlg.FileName + '"' +
#13 + #13 + 'IRREVERSIBLY?' +
#13 + ''),
'Remove IRREVERSIBLY', mb_IconQuestion + Mb_YesNo) = idYes then
begin
DelOpenFileItem.Enabled := False;
DeleteFile(OpenDlg.FileName);
end;
end;

procedure TMainForm.ApplicationEventsRestore(Sender: TObject);
begin
if ToolForm.Ch2.Checked then
Shell_NotifyIcon(Nim_Delete, @Icon) else
Shell_NotifyIcon(Nim_Add, @Icon);
end;

procedure TMainForm.PropFileItemClick(Sender: TObject);
begin
ShowPropertiesDialog(OpenDlg.FileName);
end;

procedure TMainForm.WMDropFiles(var Msg: TMessage);
var
Filename: array[0 .. 256] of Char;
Count, i: integer;
begin
try
Count := DragQueryFile(Msg.WParam, $FFFFFFFF, Filename, SizeOf(Filename));
for i:=0 to Count - 1 do
begin
DragQueryFile(Msg.WParam,i,Filename,SizeOf(Filename));
FlashView.Movie := FileName;
end;
DragFinish(Msg.WParam);
OpenDlg.FileName := FileName;
SeekBar.Position := 0;
FlashView.Play;
if ToolForm.rb1.Checked then
if FlashView.Movie = OpenDlg.FileName then
MainForm.Caption := 'FlashCore - ' + OpenDlg.FileName else
MainForm.Caption := 'FlashCore';
if ToolForm.rb2.Checked then
if FlashView.Movie = OpenDlg.FileName then
MainForm.Caption := OpenDlg.FileName + ' - FlashCore' else
MainForm.Caption := 'FlashCore';
if ToolForm.rb3.Checked then
if FlashView.Movie = OpenDlg.FileName then
MainForm.Caption := 'FlashCore';
if OpenDlg.FileName = '' then
MainForm.Caption := 'FlashCore';
if OpenDlg.FileName = '' then
//
else
LogForm.LogText.Lines.Add(MainForm.OpenDlg.FileName);
if OpenDlg.FileName = '' then
OpenInNextSessionItem.Enabled := False else
OpenInNextSessionItem.Enabled := True;
if OpenDlg.FileName = '' then
CopyFileItem.Enabled := False else
CopyFileItem.Enabled := True;
if OpenDlg.FileName = '' then
CopyToItem.Enabled := False else
CopyToItem.Enabled := True;
if OpenDlg.FileName = '' then
MoveToItem.Enabled := False else
MoveToItem.Enabled := True;
if OpenDlg.FileName = '' then
CurrentFileInfoItem.Enabled := False else
CurrentFileInfoItem.Enabled := True;
if OpenDlg.FileName = '' then
FullDirPathItem.Enabled := False else
FullDirPathItem.Enabled := True;
if OpenDlg.FileName = '' then
DelOpenFileItem.Enabled := False else
DelOpenFileItem.Enabled := True;
if OpenDlg.FileName = '' then
CopyToItem.Enabled := False else
CopyToItem.Enabled := True;
if OpenDlg.FileName = '' then
CopyToDirItem.Enabled := False else
CopyToDirItem.Enabled := True;
if OpenDlg.FileName = '' then
MoveToItem.Enabled := False else
MoveToItem.Enabled := True;
if OpenDlg.FileName = '' then
DelToRecycleItem.Enabled := False else
DelToRecycleItem.Enabled := True;
if OpenDlg.FileName = '' then
ZoomInItem.Enabled := False else
ZoomInItem.Enabled := True;
if OpenDlg.FileName = '' then
DefaultSizeItem.Enabled := False else
DefaultSizeItem.Enabled := True;
if OpenDlg.FileName = '' then
StaffForwardItem.Enabled := False else
StaffForwardItem.Enabled := True;
if OpenDlg.FileName = '' then
StaffBackItem.Enabled := False else
StaffBackItem.Enabled := True;
if OpenDlg.FileName = '' then
PlayItem.Enabled := False else
PlayItem.Enabled := True;
if OpenDlg.FileName = '' then
ReplayItem.Enabled := False else
ReplayItem.Enabled := True;
if OpenDlg.FileName = '' then
StopItem.Enabled := False else
StopItem.Enabled := True;
if OpenDlg.FileName = '' then
GoToItem.Enabled := False else
GoToItem.Enabled := True;
if OpenDlg.FileName = '' then
GoToNextItem.Enabled := False else
GoToNextItem.Enabled := True;
if OpenDlg.FileName = '' then
SeekBar.Enabled := False else
SeekBar.Enabled := True;
ColorDlg.Color := FlashView.Color;
FlashView.Color := ColorDlg.Color;
if OpenDlg.FileName = '' then
begin

end else
if ToolForm.Ch26.Checked then
begin
if FullScreenItem.Checked = False then
FullScreenItem.Click;
end;
OpenInNextSessionItem.Checked := False;
except
end;
end;

procedure TMainForm.FullPathItemClick(Sender: TObject);
begin
ShellExecute(Handle, nil, '.', nil, nil, Sw_Restore);
end;

procedure TMainForm.AlignLeftItemClick(Sender: TObject);
begin
SeekBar.Align := alCustom;
AlignLeftItem.Checked := True;
AlignRightItem.Checked := False;
AlignBottomItem.Checked := False;
Panel.Align := alLeft;
SeekBar.Kind := sbVertical;
SeekBar.Align := alClient;
end;

procedure TMainForm.AlignRightItemClick(Sender: TObject);
begin
SeekBar.Align := alCustom;
AlignRightItem.Checked := True;
AlignLeftItem.Checked := False;
AlignBottomItem.Checked := False;
Panel.Align := alRight;
SeekBar.Kind := sbVertical;
SeekBar.Align := alClient;
end;

procedure TMainForm.AlignBottomItemClick(Sender: TObject);
begin
SeekBar.Align := alCustom;
AlignBottomItem.Checked := True;
AlignRightItem.Checked := False;
AlignLeftItem.Checked := False;
Panel.Align := alBottom;
SeekBar.Kind := sbHorizontal;
SeekBar.Align := alClient;
end;

procedure TMainForm.DelToRecycleItemClick(Sender: TObject);
var
SHF: TSHFileOpStruct;
SFrom, STo: string;
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
if Application.MessageBox(PChar('Удалить файл ' + #13 + #13 + '"' + OpenDlg.FileName + '"'
+ #13 + #13 +
'в корзину?' +
#13 + ''),
'Удалить файл', mb_IconQuestion + Mb_YesNo) = idYes then
begin
begin
DelToRecycleItem.Enabled := False;
SFrom := OpenDlg.FileName + #0#0;
SFrom := AnsiReplaceStr(SFrom, ';', #0);
with SHF do
begin
Wnd := 0;
pFrom := PChar(SFrom);
pTo := PChar(STo);
fFlags := FOF_ALLOWUNDO;
wFunc := FO_DELETE;
end;
if SHFileOperation(SHF) <> 0
then if SHF.fAnyOperationsAborted then
end;
end;
if EnItem.Checked then
if Application.MessageBox(PChar('Remove file ' + #13 + #13 + '"' + OpenDlg.FileName + '"'
+ #13 + #13 +
'to Recycle Bin?' +
#13 + ''),
'Remove File', mb_IconQuestion + Mb_YesNo) = idYes then
begin
DelToRecycleItem.Enabled := False;
SFrom := OpenDlg.FileName + #0#0;
SFrom := AnsiReplaceStr(SFrom, ';', #0);
with SHF do
begin
Wnd := 0;
pFrom := PChar(SFrom);
pTo := PChar(STo);
fFlags := FOF_ALLOWUNDO;
wFunc := FO_DELETE;
end;
if SHFileOperation(SHF) <> 0
then if SHF.fAnyOperationsAborted then
end;
end;

procedure EmptyRecycleBin;
const
SHERB_NOCONFIRMATION = $00000001;
SHERB_NOPROGRESSUI = $00000002;
SHERB_NOSOUND = $00000004;
type
TSHEmptyRecycleBin = function(Wnd: HWND;
pszRootPath: PChar; dwFlags: DWORD): HRESULT;  stdcall;
var
SHEmptyRecycleBin: TSHEmptyRecycleBin;
LibHandle: THandle;
begin
LibHandle := LoadLibrary(PChar('Shell32.dll'));
if LibHandle <> 0 then @SHEmptyRecycleBin :=
GetProcAddress(LibHandle, 'SHEmptyRecycleBinA')
else
begin
MessageDlg('Failed to load Shell32.dll.', mtError, [mbOK], 0);
Exit;
end;
if @SHEmptyRecycleBin <> nil then
SHEmptyRecycleBin(Application.Handle, nil,
SHERB_NOCONFIRMATION or SHERB_NOPROGRESSUI or SHERB_NOSOUND);
FreeLibrary(LibHandle); @SHEmptyRecycleBin := nil;
end;

procedure TMainForm.CleanRecycleItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
begin
if MessageBox(Handle,
'Вы уверены, что хотите очистить корзину?',
'Корзина',
Mb_IconQuestion + Mb_YesNo) = idYes then
EmptyRecycleBin;
end;
if EnItem.Checked then
begin
if MessageBox(Handle,
'Are you sure, what do you want to clean of Recycle Bin?',
'Recycle Bin',
Mb_IconQuestion + Mb_YesNo) = idYes then
EmptyRecycleBin;
end;
end;

procedure TMainForm.CopyPathNameToBufferItemClick(Sender: TObject);
begin
Clipboard.AsText := FlashView.Movie;
end;

procedure TMainForm.CopyDirPathToBufferItemClick(Sender: TObject);
begin
Clipboard.AsText := ExtractFileDir(OpenDlg.FileName);
end;

procedure TMainForm.CopyNameToBufferItemClick(Sender: TObject);
begin
Clipboard.AsText := ExtractFileName(OpenDlg.FileName);
end;

procedure TMainForm.GoToItemClick(Sender: TObject);
begin
GoToForm.Position := poMainFormCenter;
GoToForm.ShowModal;
end;

procedure TMainForm.PathItemClick(Sender: TObject);
var
i: String;
begin
I := ExpandFileName(ParamStr(0));
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked = True then
Application.MessageBox(PChar(i),
'Директория',
mb_IconAsterisk + Mb_OK);
if EnItem.Checked = True then
Application.MessageBox(PChar(i),
'Directory',
mb_IconAsterisk + Mb_OK);
end;

procedure TMainForm.SeekBarContextPopup(Sender: TObject; MousePos: TPoint;
var Handled: Boolean);
begin
GoToForm.Position := poMainFormCenter;
GoToForm.ShowModal;
end;

procedure TMainForm.ApplicationEventsIdle(Sender: TObject;
var Done: Boolean);
begin
try
if FileExists(OpenDlg.FileName) then
begin
DelToRecycleItem.Enabled := True;
DelOpenFileItem.Enabled := True;
CopyToItem.Enabled := True;
MoveToItem.Enabled := True;
CopyFileItem.Enabled := True;
CopyToDirItem.Enabled := True;
end else
begin
DelToRecycleItem.Enabled := False;
DelOpenFileItem.Enabled := False;
CopyToItem.Enabled := False;
MoveToItem.Enabled := False;
CopyFileItem.Enabled := False;
CopyToDirItem.Enabled := False;
end;
if RusItem.Checked then
begin
if OpenDlg.FileName = '' then
StBar.Panels[0].Text := 'Файл не загружен' else
StBar.Panels[0].Text := 'Всего кадров: ' +
inttostr(FlashView.TotalFrames);
if OpenDlg.FileName = '' then
StBar.Panels[1].Text := 'Позиция: ' else
StBar.Panels[1].Text := 'Позиция: ' +
inttostr(FlashView.FrameNum);
StBar.Panels[2].Text :=
inttostr(FlashView.ClientWidth) + ' x ' + inttostr(FlashView.ClientHeight);
StBar.Panels[3].Text := TimeToStr(Time);
StBar.Panels[4].Text := 'Громкость: ' + IntToStr(FlashSound.ThumbPosition) + '%';;
if OpenDlg.FileName = '' then
StBar.Panels[5].Text := '' else
StBar.Panels[5].Text := ExtractFileName(OpenDlg.FileName)
 + ' / ' + IntToStr(GetFileSizeByName(OpenDlg.FileName)) + ' байт';
end;
if EnItem.Checked then
begin
if OpenDlg.FileName = '' then
StBar.Panels[0].Text := 'File not loaded' else
StBar.Panels[0].Text := 'Total frames: ' +
inttostr(FlashView.TotalFrames);
if OpenDlg.FileName = '' then
StBar.Panels[1].Text := 'Position: 0' else
StBar.Panels[1].Text := 'Position: ' +
inttostr(FlashView.FrameNum);
StBar.Panels[2].Text :=
inttostr(FlashView.ClientWidth) + ' x ' + inttostr(FlashView.ClientHeight);
StBar.Panels[3].Text := TimeToStr(Time);
StBar.Panels[4].Text := 'Volume: ' + IntToStr(FlashSound.ThumbPosition) + '%';;
if OpenDlg.FileName = '' then
StBar.Panels[5].Text := '' else
StBar.Panels[5].Text := ExtractFileName(OpenDlg.FileName)
+ ' / ' + IntToStr(GetFileSizeByName(OpenDlg.FileName)) + ' bites';
end;
if OpenDlg.FileName = '' then
OpenInNextSessionItem.Enabled := False else
OpenInNextSessionItem.Enabled := True;
except
end;
end;

procedure SearchInFolder(Folder: string);
begin
with TDDEClientConv.Create(nil) do
begin
ConnectMode := ddeManual;
ServiceApplication := 'Explorer.exe';
SetLink('Folders', 'AppProperties');
OpenLink;
ExecuteMacro(PChar('[FindFolder(, ' + Folder + ')]'), False);
CloseLink;
Free;
end;
end;

procedure TMainForm.FindFilesItemClick(Sender: TObject);
begin
SearchInFolder('.swf');
end;

procedure TMainForm.FindItemClick(Sender: TObject);
begin
try
FindForm.Position := poMainFormCenter;
FindForm.ShowModal;
except
end;
end;

procedure TMainForm.OpenItemClick(Sender: TObject);
begin
try
if GetKeyState(VK_SHIFT) < 0 then
begin
QuickOpenItem.Click;
end else
begin
OpenForm.Position := poMainFormCenter;
OpenForm.TextList.Clear;
OpenForm.ShowModal;
end;
except
end;
end;

procedure TMainForm.GrabControl(const aControl: TControl;
const FileName: string);
var
B: TBitmap;
srcRect,dstRect: TRect;
begin
B:=TBitmap.Create;
with dstRect do begin
Left:=0;
Top:=0;
Right:=aControl.Width+1;
Bottom:=aControl.Height+1;
end;
with srcRect do begin
Left:=aControl.Left;
Right:=aControl.Left+aControl.Width;
Top:=aControl.Top;
Bottom:=aControl.Top+aControl.Height;
end;
B.Width:=aControl.Width;
B.Height:=aControl.Height;
B.Canvas.CopyRect(dstRect,Self.Canvas,srcRect);
if ScreenForm.rb1.Checked then
B.PixelFormat:=pf8bit;
if ScreenForm.rb2.Checked then
B.PixelFormat:=pf16bit;
if ScreenForm.rb3.Checked then
B.PixelFormat:=pf32bit;
B.SaveToFile(FileName);
B.Free;
end;

procedure TMainForm.StBarDblClick(Sender: TObject);
begin
try
if ScreenForm.Ch2.Checked then
begin
DeleteFile('FlashScreen.bmp');
GrabControl(FlashView, 'FlashScreen.bmp');
end;
if ScreenForm.Ch3.Checked then
ShellExecute(Handle, nil, 'FlashScreen.bmp', nil, nil, Sw_ShowNormal);
except
end;
Sleep(500);
DeleteFile('FlashScreen.bmp');
end;

procedure TMainForm.SetScreenShotItemClick(Sender: TObject);
begin
try
ScreenForm.Position := poMainFormCenter;
ScreenForm.ShowModal;
except
end;
end;

procedure TMainForm.ScreenShotItemClick(Sender: TObject);
begin
try
if ScreenForm.Ch1.Checked then
begin
DeleteFile('FlashScreen.bmp');
GrabControl(FlashView, 'FlashScreen.bmp');
end;
if ScreenForm.Ch3.Checked then
begin
ShellExecute(Handle, nil, 'FlashScreen.bmp', nil, nil, Sw_ShowNormal);
end;
Sleep(500);
DeleteFile('FlashScreen.bmp');
except
end;
end;

procedure TMainForm.SeekBarMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
T1.Enabled := False;
end;

procedure TMainForm.SeekBarMouseUp(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
T1.Enabled := True;
end;

procedure TMainForm.ResetItemClick(Sender: TObject);
var
i: integer;
begin
try
if MainForm.FullScreenItem.Checked = True then
begin
FullScreenItem.Click;
end;
MainForm.WindowState := wsNormal;
MainForm.ClientHeight := 580;
MainForm.ClientWidth := 720;
ScreenForm.rb1.Checked := False;
ScreenForm.rb2.Checked := False;
ScreenForm.rb3.Checked := True;
ScreenForm.Ch1.Checked := True;
ScreenForm.Ch2.Checked := True;
ScreenForm.Ch3.Checked := True;
IntForm.ch1.Checked := False;
IntForm.ch2.Checked := False;
IntForm.ch3.Checked := False;
IntForm.ch4.Checked := False;
IntForm.ch5.Checked := True;
IntForm.InputText.Text := 'FlashCore';
ToolForm.TextName.Text := 'FlashCore';
i := 0;
Shell_NotifyIcon(Nim_Add, @Icon);
MainForm.FlashView.Zoom(i);
MainForm.FlashView.VerAlign := fvCenter;
MainForm.SeekBarItem.Checked := True;
MainForm.Panel.Visible := True;
MainForm.Color := $00F4F8FF;
MainForm.ColorDlg.Color := $00F4F8FF;
MainForm.FlashView.Color := $00F4F8FF;
MainForm.MediumItem.Click;
MainForm.MediumItem.Checked := True;
MainForm.HighItem.Checked := False;
MainForm.LowItem.Checked := False;
MainForm.MultipleItem.Checked := False;
MainForm.MainMenuItem.Checked := True;
MainForm.FileItem.Visible := True;
MainForm.ViewItem.Visible := True;
MainForm.ControlItem.Visible := True;
MainForm.ServiceItem.Visible := True;
MainForm.ChooseLangItem.Visible := True;
MainForm.HelpItem.Visible := True;
MainForm.OnTopItem.Checked := False;
SetWindowPos(Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
MainForm.StatusItem.Checked := True;
MainForm.StatusBar.Visible := True;
MainForm.MainMenu.Images := MainForm.ImageList1;
MainForm.TrayMenu.Images := MainForm.ImageList1;
MainForm.AlignLeftItem.Checked := False;
MainForm.AlignRightItem.Checked := False;
MainForm.AlignBottomItem.Checked := True;
AlignBottomItem.Click;
if MainForm.WinHeadItem.Checked = False then
MainForm.WinHeadItem.Click;
ToolForm.AlignBox.ItemIndex := 1;
ToolForm.Ch1.Checked := True;
ToolForm.Ch2.Checked := False;
ToolForm.Ch3.Checked := True;
ToolForm.Ch4.Checked := True;
ToolForm.Ch5.Checked := False;
ToolForm.Ch6.Checked := True;
ToolForm.Ch7.Checked := False;
ToolForm.Ch8.Checked := True;
ToolForm.Ch9.Checked := False;
ToolForm.Ch10.Checked := False;
ToolForm.Ch11.Checked := True;
ToolForm.Ch12.Checked := False;
ToolForm.Ch13.Checked := True;
ToolForm.Ch14.Checked := False;
ToolForm.Ch15.Checked := True;
ToolForm.Ch16.Checked := True;
ToolForm.Ch17.Checked := False;
ToolForm.Ch18.Checked := False;
ToolForm.Ch19.Checked := False;
ToolForm.Ch20.Checked := False;
ToolForm.Ch21.Checked := True;
ToolForm.Ch22.Checked := True;
ToolForm.Ch23.Checked := False;
ToolForm.Ch24.Checked := False;
ToolForm.Ch25.Checked := True;
ToolForm.Ch26.Checked := False;
ToolForm.Ch27.Checked := False;
ToolForm.rb1.Checked := True;
ToolForm.rb2.Checked := False;
ToolForm.rb3.Checked := False;
FlashView.DeviceFont := False;
ToolForm.ColorPickDlg.ActiveColor := clWhite;
ToolForm.ColorPickDlg.OnChanged(Self);  
Sleep(100);
PostMessage(Handle, WM_USER + 1024, 0, 0);
if MainForm.RusItem.Checked then
Application.MessageBox('Перезапустите FlashCore для изменения настроек!',
'FlashCore',
mb_IconExclamation + mb_OK);
if MainForm.EnItem.Checked then
Application.MessageBox('For the changes settings to take effect, please restart FlashCore!',
'FlashCore',
mb_IconExclamation + mb_OK);
ToolForm.OK.OnClick(Self);
except
end;
end;

procedure TMainForm.WMGetMinMaxInfo(var msg: TWMGetMinMaxInfo);
begin
inherited;
with msg.MinMaxInfo^.ptMaxTrackSize do begin
X := GetDeviceCaps( Canvas.handle, HORZRES ) +
(Width - ClientWidth);
Y := GetDeviceCaps( Canvas.handle, VERTRES ) +
(Height - ClientHeight );
end;
end;

procedure TMainForm.FullScreenItemClick(Sender: TObject);
begin
MainForm.ScreenSnap := False;
FullScreen := not FullScreen;
if FullScreen then begin
ShowCursor(False);
FullScreenItem.Checked := True;
if ToolForm.ch21.Checked then
StatusBar.Visible := False;
if ToolForm.ch22.Checked then
Panel.Visible := False;
WinHeadItem.Enabled := False;
Rect := BoundsRect;
SetBounds( Left - ClientOrigin.X,
Top - ClientOrigin.Y, GetDeviceCaps( Canvas.handle,
HORZRES )
+ (Width - ClientWidth), GetDeviceCaps( Canvas.handle,
VERTRES )
+ (Height - ClientHeight ));
end
else
begin
ShowCursor(True);
FullScreenItem.Checked := False;
if StatusItem.Checked = True then
StatusBar.Visible := True else
StatusBar.Visible := False;
if SeekBarItem.Checked = True then
Panel.Visible := True else
Panel.Visible := False;
BoundsRect := Rect;
WinHeadItem.Enabled := True;
if ToolForm.Ch17.Checked then
MainForm.ScreenSnap := True;
if not ToolForm.Ch17.Checked then
MainForm.ScreenSnap := False;
end;
end;

procedure TMainForm.T2Timer(Sender: TObject);
var
Reg : TRegistry;
begin
try
T2.Enabled := False;
PostMessage(Handle, WM_USER + 1024, 0, 0);
Reg := TRegistry.Create;
with Reg do begin
reg.RootKey := HKEY_CLASSES_ROOT;
if not reg.KeyExists
('\.swf\')then
if IntForm.ch5.Checked then
if RusItem.Checked then
begin
if Application.MessageBox('Вы хотите сделать FlashCore программой по умолчанию для просмотра swf-файлов?',
'FlashCore', mb_IconAsterisk + mb_YesNo) = idYes then
begin
IntForm.ch4.Checked := True;
reg := TRegistry.Create;
reg.RootKey := HKEY_CLASSES_ROOT;
reg.OpenKey('.swf\',true);
reg.WriteString('', 'swffile');
reg.CloseKey;
reg.OpenKey('swffile\DefaultIcon',true);
reg.WriteString('', ParamStr(0) + ', 0');
reg.CloseKey;
reg.OpenKey('swffile\shell\open\command', true);
reg.WriteString('', ParamStr(0) + ' "%1"');
reg.CloseKey;
reg.Free;
end
else
end;
end;
if not reg.KeyExists
('\.swf\')then
if IntForm.ch5.Checked then
if EnItem.Checked then
begin
if Application.MessageBox('Do you want to set FlashCore as the default program for the swf-files?',
'FlashCore', mb_IconAsterisk + mb_YesNo) = idYes then
begin
IntForm.ch4.Checked := True;
reg := TRegistry.Create;
reg.RootKey := HKEY_CLASSES_ROOT;
reg.OpenKey('.swf\',true);
reg.WriteString('', 'swffile');
reg.CloseKey;
reg.OpenKey('swffile\DefaultIcon',true);
reg.WriteString('', ParamStr(0) + ', 0');
reg.CloseKey;
reg.OpenKey('swffile\shell\open\command', true);
reg.WriteString('', ParamStr(0) + ' "%1"');
reg.CloseKey;
reg.Free;
end
else
end;
Reg := TRegistry.Create;
with Reg do begin
reg.RootKey := HKEY_CLASSES_ROOT;
if reg.KeyExists
('\.swf\')then
begin
IntForm.ch4.Checked := True;
reg := TRegistry.Create;
reg.RootKey := HKEY_CLASSES_ROOT;
reg.OpenKey('.swf\',true);
reg.WriteString('', 'swffile');
reg.CloseKey;
reg.OpenKey('swffile\DefaultIcon',true);
reg.WriteString('', ParamStr(0) + ', 0');
reg.CloseKey;
reg.OpenKey('swffile\shell\open\command', true);
reg.WriteString('', ParamStr(0) + ' "%1"');
reg.CloseKey;
reg.Free;
end;
end;
T2.Free;
except
end;
end;

procedure TMainForm.CopyFileItemClick(Sender: TObject);
begin
CopyFilesToClipboard(OpenDlg.FileName);
end;

procedure TMainForm.CleanBufferItemClick(Sender: TObject);
begin
Clipboard.Clear;
end;

procedure TMainForm.OrgFavItemClick(Sender: TObject);
begin
try
FavForm.ClientHeight := 459;
FavForm.ClientWidth := 652;
FavForm.Position := poMainFormCenter;
FavForm.ShowModal;
except
end;
end;

procedure TMainForm.AddFavItemClick(Sender: TObject);
begin
try
AddFavForm.Position := poMainFormCenter;
AddFavForm.ShowModal;
except
end;
end;

procedure FreePidl(pidl: PItemIDList);
var
allocator: IMalloc;
begin
if Succeeded(shlobj.SHGetMalloc(allocator)) then
begin
allocator.Free(pidl);
{$IFDEF VER90}
allocator.Release;
{$ENDIF}
end;
end;

procedure TMainForm.OpenRecycleBinItemClick(Sender: TObject);
var
exInfo: TShellExecuteInfo;
begin
FillChar(exInfo, SizeOf(exInfo), 0);
with exInfo do
begin
cbSize := SizeOf(exInfo); 
fMask := SEE_MASK_FLAG_DDEWAIT or SEE_MASK_IDLIST;
Wnd := Handle;
nShow := SW_SHOWNORMAL;
lpVerb := 'open';
ShGetSpecialFolderLocation(Handle, CSIDL_BITBUCKET, PItemIDLIst(lpIDList));
end;
ShellExecuteEx(@exInfo);
FreePIDL(exinfo.lpIDList);
end;

procedure TMainForm.StBarMouseDown(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
if FullScreenItem.Checked = False then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;
end;

procedure TMainForm.MacromediaFlashPlayerItemClick(Sender: TObject);
begin
ShellExecute(Handle, nil, 'http://www.macromedia.com/software/flash/fl4about',
nil, nil, Sw_ShowNormal);
end;

procedure TMainForm.GoToNextItemClick(Sender: TObject);
begin
if GoToForm.GoToEdit.Text = '0' then
begin
Exit;
end else
begin
FlashView.GotoFrame(StrToInt(GoToForm.GoToEdit.Text));
FlashView.Play;
end;
end;

procedure TMainForm.CopyExeItemClick(Sender: TObject);
begin
CopyFilesToClipboard(ParamStr(0));
end;

procedure TMainForm.SeekBarScroll(Sender: TObject; ScrollCode: TScrollCode;
var ScrollPos: Integer);
begin
try
FlashView.GotoFrame(Seekbar.Position);
if T1.Enabled = True then
FlashView.Play else
FlashView.Stop;
except
end;
end;

procedure TMainForm.HideTitlebar;
var
Save: Longint;
begin
if BorderStyle=bsNone then
Exit;
Save:=GetWindowLong(Handle, GWL_STYLE);
if (Save and WS_CAPTION)=WS_CAPTION then
begin
case BorderStyle of
bsSingle, bsSizeable:
SetWindowLong(Handle, GWL_STYLE, Save and (not WS_CAPTION) or WS_BORDER);
bsDialog:
SetWindowLong(Handle, GWL_STYLE, Save and
(not WS_CAPTION) or DS_MODALFRAME or WS_DLGFRAME);
end;
Height:=Height-GetSystemMetrics(SM_CYCAPTION);
Refresh;
end;
end;

procedure TMainForm.ShowTitlebar;
var
Save: Longint;
begin
if BorderStyle=bsNone then
Exit;
Save:=GetWindowLong(Handle, GWL_STYLE);
if (Save and WS_CAPTION)<>WS_CAPTION then
begin
case BorderStyle of
bsSingle, bsSizeable:
SetWindowLong(Handle, GWL_STYLE, Save or WS_CAPTION or WS_BORDER);
bsDialog:
SetWindowLong(Handle, GWL_STYLE, Save or WS_CAPTION or
DS_MODALFRAME or WS_DLGFRAME);
end;
Height:=Height+getSystemMetrics(SM_CYCAPTION);
Refresh;
end;
end;

procedure TMainForm.WinHeadItemClick(Sender: TObject);
begin
if WinHeadItem.Checked then
ShowTitlebar else
HideTitlebar;
end;

procedure TMainForm.SaveFavLinksItemClick(Sender: TObject);
begin
try
SaveBaseForm.Position := poMainFormCenter;
SaveBaseForm.ShowModal;
except
end;
end;

procedure TMainForm.SourceCodeItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if EnItem.Checked then
begin
if Application.MessageBox(
'Copyright @2009 Domani Oleh (aka ?КТО_Я?)' + #13 +
'=====================================' + #13 + #13 + '' +
'If you want to give of Source Code of FlashCore Project' + #13
+ '(archives with components library by wish user) and'
+ #13 + 'also all next new version then send e-mail to the author.' + #13 +
'' +  #13 + '=====================================' +  #13 +
'' +  #13 +
'Send mail now?',
'FlashCore',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
ShellExecute(Handle, 'open',
'mailto:viacoding@mail.ru?Subject=FlashCore Project' +
'&Body=Hello, please send me the source code program. Thanks!',
'', '', SW_SHOW);
end;
end;
if RusItem.Checked then
begin
if Application.MessageBox(
'Copyright @2009 Домани Олег (aka ?КТО_Я?)' + #13 +
'======================================' + #13 + #13 + '' +
'Если Вы хотите получить исходный код проекта (архив ' + #13
+ 'с компонентами по желанию пользователя), а также'
+ #13 + 'все последующие новые версии программы, то' + #13 +
'отправьте электронное письмо автору.' + #13 +
'' +  #13 + '======================================' +  #13 +
'' +  #13 +
'Отправить письмо сейчас?',
'FlashCore',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
ShellExecute(Handle, 'open',
'mailto:viacoding@mail.ru?Subject=FlashCore Project' +
'&Body=Hello, please send me the source code program. Thanks!',
'', '', SW_SHOW);
end;
end;
end;

procedure TMainForm.OpenInNextSessionItemClick(Sender: TObject);
begin
if OpenInNextSessionItem.Checked then
begin
Ini.WriteString('Next session', 'Open', OpenDlg.FileName);
end;
end;

procedure TMainForm.StBarMouseUp(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
var
pt: TPoint;
begin
try
if ToolForm.Ch23.Checked then
begin
Pt.x := StBar.Left;
Pt.y := StBar.Top;
Pt := StBar.ClientToScreen(Pt);
GetProperties(OpenDlg.FileName, pt, Self);
end;
except
end;
end;

procedure TMainForm.CurrentFileInfoItemClick(Sender: TObject);
var
Attributes, NewAttributes: Word;
begin
FileInfoForm.Position := poMainFormCenter;

with FileInfoForm do
begin
ed3.Text := OpenDlg.FileName;
Attributes := FileGetAttr(ed3.Text);
ChReadOnly.Checked := (Attributes and faReadOnly) = faReadOnly;
ChArchive.Checked := (Attributes and faArchive) = faArchive;
ChSystem.Checked := (Attributes and faSysFile) = faSysFile;
ChHidden.Checked := (Attributes and faHidden) = faHidden;

if ShowModal <> mrCancel then
begin
NewAttributes := Attributes;
if ChReadOnly.Checked then NewAttributes := NewAttributes or faReadOnly
else NewAttributes := NewAttributes and not faReadOnly;
if ChArchive.Checked then NewAttributes := NewAttributes or faArchive
else NewAttributes := NewAttributes and not faArchive;
if ChSystem.Checked then NewAttributes := NewAttributes or faSysFile
else NewAttributes := NewAttributes and not faSysFile;
if ChHidden.Checked then NewAttributes := NewAttributes or faHidden
else NewAttributes := NewAttributes and not faHidden;
if NewAttributes <> Attributes then
FileSetAttr(ed3.Text, NewAttributes);
end;
end;
end;

function CopyDir(const fromDir, toDir: string): Boolean;
var 
fos: TSHFileOpStruct;
begin 
ZeroMemory(@fos, SizeOf(fos));
with fos do
begin
wFunc  := FO_COPY;
fFlags := FOF_FILESONLY;
pFrom  := PChar(fromDir + #0);
pTo    := PChar(toDir)
end;
Result := (0 = ShFileOperation(fos));
end; 

function MoveDir(const fromDir, toDir: string): Boolean;
var 
fos: TSHFileOpStruct;
begin 
ZeroMemory(@fos, SizeOf(fos));
with fos do
begin
wFunc  := FO_MOVE;
fFlags := FOF_FILESONLY;
pFrom  := PChar(fromDir + #0);
pTo    := PChar(toDir)
end;
Result := (0 = ShFileOperation(fos));
end;

procedure TMainForm.MoveToItemClick(Sender: TObject);
var
Dir: String;
begin
if RusItem.Checked then
begin
if SelectDirectory('Укажите, куда следует переместить "' + ExtractFileName(OpenDlg.FileName)
+ '" , а затем нажмите кнопку "OK"', '', Dir) then
if MoveDir(OpenDlg.FileName, Dir) = True then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
Application.MessageBox('Файл удачно перемещен.',
'FlashCore',
mb_IconAsterisk + mb_OK);
end;
end;
if EnItem.Checked then
begin
if SelectDirectory('Set of folder do you want to movied of "' + ExtractFileName(OpenDlg.FileName)
+ '" and then click button "OK"', '', Dir) then
if MoveDir(OpenDlg.FileName, Dir) = True then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
Application.MessageBox('File movied.',
'FlashCore',
mb_IconAsterisk + mb_OK);
end;
end;
end;

procedure TMainForm.CopyToItemClick(Sender: TObject);
var
Dir: String;
begin
if RusItem.Checked then
begin
if SelectDirectory('Укажите, куда следует копировать "' + ExtractFileName(OpenDlg.FileName)
+ '" , а затем нажмите кнопку "OK"', '', Dir) then
if CopyDir(OpenDlg.FileName, Dir) = True then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
Application.MessageBox('Файл удачно скопирован.',
'FlashCore',
mb_IconAsterisk + mb_OK);
end;
end;
if EnItem.Checked then
begin
if SelectDirectory('Set of folder do you want to copied of "' + ExtractFileName(OpenDlg.FileName)
+ '" and then click button "OK"', '', Dir) then
if CopyDir(OpenDlg.FileName, Dir) = True then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
Application.MessageBox('File copied.',
'FlashCore',
mb_IconAsterisk + mb_OK);
end;
end;
end;

procedure TMainForm.CopyToDirItemClick(Sender: TObject);
var
Dir: String;
begin
Dir := '';
CopyDir(OpenDlg.FileName, Dir);
end;

procedure TMainForm.TipOnDayItemClick(Sender: TObject);
begin
try
TipForm.Position := poMainFormCenter;
TipForm.ShowModal;
except
end;
end;

procedure TMainForm.FlashLogItemClick(Sender: TObject);
begin
try
LogForm.Position := poMainFormCenter;
LogForm.ShowModal;
except
end;
end;

procedure TMainForm.FlashSoundChange(Sender: TObject);
var
Vol: LongWord;
begin
Vol := 6500 - (FlashSound.MaxValue * FlashSound.ThumbPosition);
Vol := Vol + (Vol shl 16);
waveOutSetVolume(WAVE_MAPPER, Vol);
if RusItem.Checked then
begin
FlashSound.Hint := 'Громкость: ' + IntToStr(FlashSound.ThumbPosition) + '%';
end;
if EnItem.Checked then
begin
FlashSound.Hint := 'Volume: ' + IntToStr(FlashSound.ThumbPosition) + '%';
end;
end;

procedure TMainForm.ApplicationEventsShortCut(var Msg: TWMKey;
var Handled: Boolean);
begin
if MainForm.Active then
begin
if not FullScreenItem.Checked then
begin
if Msg.CharCode = vk_Escape then
Close;
end;
if FullScreenItem.Checked then
begin
if Msg.CharCode = vk_Escape then
FullScreenItem.Click;
end;
if Msg.CharCode = vk_Left then
begin
StaffBackItem.Click;
end;
if Msg.CharCode = vk_Right then
begin
StaffForwardItem.Click;
end;
if Msg.CharCode = vk_Pause then
begin
T1.Enabled := not T1.Enabled;
FlashView.Playing := not FlashView.Playing;
end;
if Msg.CharCode = vk_Up then
begin
FlashSound.ThumbPosition := FlashSound.ThumbPosition + 1;
end;
if Msg.CharCode = vk_Down then
begin
FlashSound.ThumbPosition := FlashSound.ThumbPosition - 1;
end;
end;
end;

procedure TMainForm.HomePageItemClick(Sender: TObject);
begin
ShellExecute(Handle, nil, 'http://www.viacoding.mylivepage.ru/', nil,nil, Sw_ShowNormal);
end;

end.
