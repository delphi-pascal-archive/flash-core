unit LPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPCheckBox, StdCtrls, ExtCtrls, Buttons, IniFiles, XPButton,
  XPLabel;

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
  TLogForm = class(TForm)
    LogText: TMemo;
    fr1: TPanel;
    logo1: TImage;
    logo2: TImage;
    fr2: TPanel;
    logo3: TImage;
    OK: TXPButton;
    ClearLog: TSpeedButton;
    tx1: TXPLabel;
    procedure OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ClearLogClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private

    Sm: HWND;

    Ini: TIniFile;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;

  public

  end;

var
  LogForm: TLogForm;

  msgCaption: PChar;

implementation

uses OP, NP;

{$R *.dfm}

procedure TLogForm.OKClick(Sender: TObject);
begin
LogForm.Close;
end;

procedure TLogForm.FormShow(Sender: TObject);
begin
if ToolForm.Ch13.Checked then
SetWindowLong(LogForm.Handle, GWL_EXSTYLE,
GetWindowLOng(LogForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TLogForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TLogForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
LogForm.Close;
end;

procedure TLogForm.WMMoving(var msg: TWMMoving);
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

procedure TLogForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
LogText.SetFocus;
end;

procedure TLogForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
LogForm.OnActivate := nil;
ClearLog.Free;
LogText.Free;
logo1.Free;
logo2.Free;
logo3.Free;
fr1.Free;
Ini.Free;
tx1.Free;
OK.Free;
end;

procedure TLogForm.ClearLogClick(Sender: TObject);
var
InitialText: String;
begin
if LogText.Text = '' then
begin
Exit;
end else
begin
if MainForm.RusItem.Checked then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if Application.MessageBox('Вы действительно хотите очистить журнал?',
'Очистка журнала',
mb_IconQuestion + mb_YesNo) = id_Yes then
begin
LogText.Lines.Clear;
InitialText := ParamStr(0) + 'Log.txt';
LogText.Lines.SaveToFile(InitialText);
end;
end;
if MainForm.EnItem.Checked then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if Application.MessageBox('Are you sure, what do you want to clear log?',
'Clear log',
mb_IconQuestion + mb_YesNo) = id_Yes then
begin
LogText.Lines.Clear;
InitialText := ParamStr(0) + 'Log.txt';
LogText.Lines.SaveToFile(InitialText);
end;
end;
end;
end;

procedure TLogForm.ChangeMessageBoxPosition(var Msg: TMessage);
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
x := LogForm.Left + ((LogForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := LogForm.Top + ((LogForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

procedure TLogForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
