unit SHP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms,  Dialogs, XPButton, XPRadioButton, XPCheckBox, IniFiles,
  StdCtrls, ComCtrls, ShellApi, XPLabel, XPGroupBox;

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
  TScreenForm = class(TForm)
    OK: TXPButton;
    fr1: TXPGroupBox;
    txt1: TXPLabel;
    txt2: TXPLabel;
    txt3: TXPLabel;
    txt4: TXPLabel;
    fr2: TXPGroupBox;
    rb1: TXPRadioButton;
    rb2: TXPRadioButton;
    rb3: TXPRadioButton;
    Ch1: TXPCheckBox;
    Ch2: TXPCheckBox;
    Ch3: TXPCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure OKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  ScreenForm: TScreenForm;
  
  msgCaption: PChar;

implementation

uses OP, NP;

{$R *.dfm}

procedure TScreenForm.FormShow(Sender: TObject);
begin
if ToolForm.Ch13.Checked then
SetWindowLong(ScreenForm.Handle, GWL_EXSTYLE,
GetWindowLOng(ScreenForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TScreenForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TScreenForm.OKClick(Sender: TObject);
begin
if Ch1.Checked then
MainForm.ScreenShotItem.Enabled := True else
MainForm.ScreenShotItem.Enabled := False;
ScreenForm.Close;
end;

procedure TScreenForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
OK.OnClick(Self);
end;

procedure TScreenForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
ScreenForm.OnActivate := nil;
fr1.Free;
fr2.Free;
txt1.Free;
txt2.Free;
txt3.Free;
txt4.Free;
Ch1.Free;
Ch2.Free;
Ch3.Free;
rb1.Free;
rb2.Free;
rb3.Free;
OK.Free;
end;

procedure TScreenForm.FormCreate(Sender: TObject);
begin
Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
try
Ch1.Checked := Ini.ReadBool('Parameters', 'Sreenshot', Ch1.Checked);
Ch2.Checked := Ini.ReadBool('Parameters', 'Double click in status bar for screenshot', Ch2.Checked);
Ch3.Checked := Ini.ReadBool('Parameters', 'Open sreenshot', Ch3.Checked);
rb1.Checked := Ini.ReadBool('Parameters', 'Sreenshot 8 bits', rb1.Checked);
rb2.Checked := Ini.ReadBool('Parameters', 'Sreenshot 16 bits', rb2.Checked);
rb3.Checked := Ini.ReadBool('Parameters', 'Sreenshot 32 bits', rb3.Checked);
except
end;
end;

procedure TScreenForm.WMMoving(var msg: TWMMoving);
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

procedure TScreenForm.ChangeMessageBoxPosition(var Msg: TMessage);
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
x := ScreenForm.Left + ((ScreenForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := ScreenForm.Top + ((ScreenForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

procedure TScreenForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
OK.SetFocus;
end;

procedure TScreenForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
