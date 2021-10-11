unit FP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, mFileScan, StdCtrls, ComCtrls, ExtCtrls, XPButton,
  XPLabel, XPGroupBox, CommDlg, ShellApi, Menus, ImgList, XPEdit,
  AppEvnts, FileCtrl;

  function OpenSaveFileDialog(ParentHandle: THandle; const DefExt, Filter, InitialDir,
  Title: string; var FileName: string; IsOpenDialog: Boolean): Boolean;

  const
   AlignCenter = WM_USER + 1024;

  type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

type
  TFindForm = class(TForm)
    SaveResult: TRichEdit;
    mFileScan: TmFileScan;
    fr2: TXPGroupBox;
    ListResult: TListBox;
    OK: TXPButton;
    MainMenu: TMainMenu;
    ResultItem: TMenuItem;
    SaveItem: TMenuItem;
    PrintItem: TMenuItem;
    spr1: TMenuItem;
    QuitItem: TMenuItem;
    ImageList: TImageList;
    PrintDlg: TPrintDialog;
    StartBt: TXPButton;
    PauseBt: TXPButton;
    ResumeBt: TXPButton;
    spr2: TMenuItem;
    RunItem: TMenuItem;
    fr1: TXPGroupBox;
    ResultLb: TXPLabel;
    ImageList1: TImageList;
    ClearItem: TMenuItem;
    FavoritesItem: TMenuItem;
    AddFavItem: TMenuItem;
    OrgFavItem: TMenuItem;
    SearchReaduLb: TXPLabel;
    ApplicationEvents: TApplicationEvents;
    DelFromListItem: TMenuItem;
    spr3: TMenuItem;
    DriveComboBox: TDriveComboBox;
    procedure mFileScanFileFound(Sender: TObject; FileName: String);
    procedure mFileScanReady(Sender: TObject; SearchResult: TStringList);
    procedure FormShow(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure ListResultDblClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure SaveItemClick(Sender: TObject);
    procedure PrintItemClick(Sender: TObject);
    procedure StartBtClick(Sender: TObject);
    procedure PauseBtClick(Sender: TObject);
    procedure ResumeBtClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ClearItemClick(Sender: TObject);
    procedure AddFavItemClick(Sender: TObject);
    procedure OrgFavItemClick(Sender: TObject);
    procedure ApplicationEventsIdle(Sender: TObject; var Done: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DelFromListItemClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private

    Sm: HWND;

    NoOfFiles: Integer;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;

  public

  end;

var
  FindForm: TFindForm;

implementation

uses NP, OP, AFP2, FFP;

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

procedure TFindForm.mFileScanFileFound(Sender: TObject; FileName: String);
begin
SaveResult.Lines.Add(FileName);
ListResult.Items.Add(FileName);
Inc(NoOfFiles);
if MainForm.RusItem.Checked then
ResultLb.Caption:= 'Файлов найдено: ' + IntToStr(NoOfFiles);
if MainForm.EnItem.Checked then
ResultLb.Caption:= 'Files found: ' + IntToStr(NoOfFiles);
end;

procedure TFindForm.mFileScanReady(Sender: TObject;
SearchResult: TStringList);
begin
if MainForm.RusItem.Checked then
begin
SearchReaduLb.Visible := True;
SearchReaduLb.Caption:= 'Поиск завершен';
end;
if MainForm.EnItem.Checked then
begin
SearchReaduLb.Caption:= 'Ready';
SearchReaduLb.Visible := True;
end;
if MainForm.RusItem.Checked then
StartBt.Caption:= 'Поиск';
if MainForm.EnItem.Checked then
StartBt.Caption:= 'Search';
end;

procedure TFindForm.FormShow(Sender: TObject);
begin
if ToolForm.Ch13.Checked then
SetWindowLong(FindForm.Handle, GWL_EXSTYLE,
GetWindowLOng(FindForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TFindForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TFindForm.ListResultDblClick(Sender: TObject);
begin
try
ShellExecute(Handle, nil, PChar(ListResult.Items[ListResult.ItemIndex]),
nil, nil, SW_RESTORE);
except
end;
end;

procedure TFindForm.OKClick(Sender: TObject);
begin
FindForm.Close;
end;

procedure TFindForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
OK.OnClick(Self);
end;

procedure TFindForm.SaveItemClick(Sender: TObject);
var
s: String;
begin
try
if MainForm.EnItem.Checked then
begin
if OpenSaveFileDialog(FindForm.Handle, '*.*', 'Normal text files (*.txt)|*.txt',
ParamStr(1), 'Save Search Results', s, False) then begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if FileExists(s) then
if Application.MessageBox(PChar('File "' + s +
'" already exists.' +
#13 + 'Replace file?'),
'Confirmation', MB_ICONQUESTION + mb_YesNo)
<> idYes then
else
SaveResult.Lines.SaveToFile(s);
if not FileExists(s) then
SaveResult.Lines.SaveToFile(s);
end;
end;
if MainForm.RusItem.Checked then
begin
if OpenSaveFileDialog(FindForm.Handle, '*.*', 'Текстовые документы (*.txt)|*.txt',
ParamStr(1), 'Сохранить результаты поиска', s, False) then begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if FileExists(s) then
if Application.MessageBox(PChar('Файл "' + s +
'" Уже существует.' +
#13 + 'Заменить его?'),
'Подтверждение', MB_ICONQUESTION + mb_YesNo)
<> idYes then
else
SaveResult.Lines.SaveToFile(s);
if not FileExists(s) then
SaveResult.Lines.SaveToFile(s);
end;
end;
except
end;
FindForm.BringToFront;
end;

procedure TFindForm.PrintItemClick(Sender: TObject);
var
FFileName: String;
begin
if PrintDlg.Execute then
SaveResult.Print(FFileName);
end;

procedure TFindForm.StartBtClick(Sender: TObject);
begin
SearchReaduLb.Visible := False;
if MainForm.RusItem.Checked then
ResultLb.Caption:= 'Результаты:';
if MainForm.EnItem.Checked then
ResultLb.Caption:= 'Results:';
NoOfFiles:= 0;
mFileScan.Paths.Text:= DriveComboBox.Drive + ':\';
mFileScan.Filters.Clear;
mFileScan.Filters.Add('*.swf');
if MainForm.RusItem.Checked then
StartBt.Caption:= 'Идет поиск...';
if MainForm.EnItem.Checked then
StartBt.Caption:= 'Start search...';
SaveResult.Clear;
ListResult.Clear;
mFileScan.Start;
end;

procedure TFindForm.PauseBtClick(Sender: TObject);
begin
mFileScan.Pause;
end;

procedure TFindForm.ResumeBtClick(Sender: TObject);
begin
mFileScan.Resume;
end;

procedure TFindForm.ChangeMessageBoxPosition(var Msg: TMessage);
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
x := FindForm.Left + ((FindForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := FindForm.Top + ((FindForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

procedure TFindForm.WMMoving(var msg: TWMMoving);
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

procedure TFindForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
FindForm.OnActivate := nil;
ApplicationEvents.Free;
SearchReaduLb.Free;
DriveComboBox.Free;
SaveResult.Free;
ListResult.Free;
ImageList.Free;
mFileScan.Free;
MainMenu.Free;
PrintDlg.Free;
ResumeBt.Free;
StartBt.Free;
PauseBt.Free;
fr1.Free;
fr2.Free;
OK.Free;
end;

procedure TFindForm.ClearItemClick(Sender: TObject);
begin
ListResult.Items.Clear;
end;

procedure TFindForm.AddFavItemClick(Sender: TObject);
begin
try
AddFav2Form.Position := poOwnerFormCenter;
AddFav2Form.ShowModal;
except
end;
end;

procedure TFindForm.OrgFavItemClick(Sender: TObject);
begin
try
FavForm.ClientHeight := 459;
FavForm.ClientWidth := 652;
FavForm.Position := poMainFormCenter;
FavForm.ShowModal;
except
end;
end;

procedure TFindForm.ApplicationEventsIdle(Sender: TObject;
  var Done: Boolean);
begin
if MainForm.RusItem.Checked then
ResultLb.Caption:= 'Файлов найдено: ' + IntToStr(NoOfFiles);
if MainForm.EnItem.Checked then
ResultLb.Caption:= 'Files found: ' + IntToStr(NoOfFiles);
end;

procedure TFindForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
OK.SetFocus;
end;

procedure TFindForm.DelFromListItemClick(Sender: TObject);
var
i: Integer;
begin
i := ListResult.ItemIndex;
ListResult.Items.Delete(i);
end;

procedure TFindForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
