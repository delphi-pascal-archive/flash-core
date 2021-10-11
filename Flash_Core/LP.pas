unit LP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbStaticText, XPButton, XPLabel, ExtCtrls, StdCtrls, ComCtrls,
  XPGroupBox, Buttons, Drawer, ShellApi;

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
  TAboutForm = class(TForm)
    fr1: TPanel;
    Logo: TImage;
    tx1: TXPLabel;
    tx2: TXPLabel;
    tx5: TXPLabel;
    tx4: TXPLabel;
    tx3: TXPLabel;
    spr1: TBevel;
    spr2: TBevel;
    License: TRichEdit;
    fr2: TPanel;
    Closed: TXPButton;
    SendMail: TEdit;
    Drawer: TDrawer;
    tx7: TXPLabel;
    Logo2: TImage;
    tx6: TXPLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ClosedClick(Sender: TObject);
    procedure tx7MouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure tx7MouseLeave(Sender: TObject);
    procedure tx7MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure SendMailClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tx6Click(Sender: TObject);
    procedure tx6MouseLeave(Sender: TObject);
    procedure tx6MouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure tx6MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx7Click(Sender: TObject);

  private

    Sm: HWND;

    procedure CMMouseLeave(var msg: TMessage);
    message CM_MOUSELEAVE;

    procedure wmNCLButtonDown(var Msg: TWMNCLButtonDown);
    message WM_NCLBUTTONDOWN;

    procedure wmNCLButtonUp(var Msg: TWMNCLButtonUp);
    message WM_NCLBUTTONUP;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;

  public

  end;

var
  AboutForm: TAboutForm;

implementation

uses OP, NP, AP;

{$R *.dfm}

procedure TAboutForm.FormCreate(Sender: TObject);
var
MS: TMemoryStatus;
begin
GlobalMemoryStatus(MS);
if MainForm.RusItem.Checked then
begin
tx4.Caption := 'Физическая память: ' + FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
tx5.Caption := 'Использовано: ' + Format('%d %%', [MS.dwMemoryLoad]);
end;
if MainForm.EnItem.Checked then
begin
tx4.Caption := 'Memory Available to Windows: ' + FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
tx5.Caption := 'Use: ' + Format('%d %%', [MS.dwMemoryLoad]);
end;
end;

procedure TAboutForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TAboutForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
AboutForm.Close;
if Key = vk_F1 then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if MainForm.RusItem.Checked then
Application.MessageBox('Вы имеете право распространять и использовать эту программу' +
#13 + 'в любых целях при условии целостности оригинального' + #13 + 'дистрибутива.',
'FlashCore',
mb_IconAsterisk + mb_OK);
if MainForm.EnItem.Checked then
Application.MessageBox('You have the right to distribute and use this program in any' +
#13 + 'purposes under condition of integrity of the original' + #13 + 'distribution kit.',
'FlashCore',
mb_IconAsterisk + mb_OK);
end;
end;

procedure TAboutForm.FormShow(Sender: TObject);
begin
if ToolForm.Ch13.Checked then
SetWindowLong(AboutForm.Handle, GWL_EXSTYLE,
GetWindowLOng(AboutForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TAboutForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
AboutForm.OnActivate := nil;
SendMail.Free;
License.Free;
Drawer.Free;
Closed.Free;
Logo2.Free;
Logo.Free;
spr1.Free;
spr2.Free;
fr1.Free;
fr2.Free;
tx1.Free;
tx2.Free;
tx3.Free;
tx4.Free;
tx5.Free;
tx6.Free;
tx7.Free;
end;

procedure TAboutForm.wmNCLButtonDown(var Msg: TWMNCLButtonDown);
begin
if Msg.HitTest = HTHELP then
begin
Msg.Result := 0;
end else
inherited;
end;

procedure TAboutForm.wmNCLButtonUp(var Msg: TWMNCLButtonUp);
begin
if Msg.HitTest = HTHELP then
begin
Msg.Result := 0;
PostMessage(Handle, WM_USER + 1024, 0, 0);
if MainForm.RusItem.Checked then
Application.MessageBox('Программа FlashCore предназначена для просмотра swf-файлов.',
'FlashCore',
mb_IconAsterisk + mb_OK);
if MainForm.EnItem.Checked then
Application.MessageBox('' +
#13 + 'FlashCore program is intended for the viewing swf-files.',
'FlashCore',
mb_IconAsterisk + mb_OK);
end
else
inherited;
end;

procedure TAboutForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

procedure TAboutForm.WMMoving(var msg: TWMMoving);
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

procedure TAboutForm.ChangeMessageBoxPosition(var Msg: TMessage);
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
x := AboutForm.Left + ((AboutForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := AboutForm.Top + ((AboutForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

procedure TAboutForm.ClosedClick(Sender: TObject);
begin
AboutForm.Close;
end;

procedure TAboutForm.CMMouseLeave(var msg: TMessage);
begin
tx6.ForegroundColor := $00FF8000;
tx7.ForegroundColor := $00FF8000;
end;

procedure TAboutForm.tx7MouseUp(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
tx7.ForegroundColor := $00FF8000;
end;

procedure TAboutForm.tx7MouseLeave(Sender: TObject);
begin
tx7.ForegroundColor := $00FF8000;
end;

procedure TAboutForm.tx7MouseMove(Sender: TObject; Shift: TShiftState; X,
Y: Integer);
begin
tx7.ForegroundColor := clRed;
end;

procedure TAboutForm.SendMailClick(Sender: TObject);
begin
Drawer.Open;
end;

procedure TAboutForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Closed.SetFocus;
end;

procedure TAboutForm.tx6Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'http://www.viacoding.mylivepage.ru/', nil,nil, Sw_ShowNormal);
end;

procedure TAboutForm.tx6MouseLeave(Sender: TObject);
begin
tx6.ForegroundColor := $00FF8000;
end;

procedure TAboutForm.tx6MouseUp(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
tx6.ForegroundColor := $00FF8000;
end;

procedure TAboutForm.tx6MouseMove(Sender: TObject; Shift: TShiftState; X,
Y: Integer);
begin
tx6.ForegroundColor := clRed;
end;

procedure TAboutForm.tx7Click(Sender: TObject);
begin
ShellExecute(Handle,'open',
'mailto:GoodWinNix@mail.ru?Subject=FlashCore Project'+
'',
'','',SW_SHOW);
end;

end.
