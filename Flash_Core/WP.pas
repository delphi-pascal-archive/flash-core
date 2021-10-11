unit WP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPButton, StdCtrls, XPLabel, ExtCtrls;
  
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
  TOpenForm = class(TForm)
    fr1: TPanel;
    Logo: TImage;
    txt1: TXPLabel;
    txt2: TXPLabel;
    txt3: TXPLabel;
    txt4: TXPLabel;
    TextList: TComboBox;
    OK: TXPButton;
    Cancel: TXPButton;
    Choose: TXPButton;
    procedure CancelClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure ChooseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);

  private

    Sm: HWND;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;

  public

  end;

var
  OpenForm: TOpenForm;
  s: String;

implementation

uses NP, OP, LPP;

{$R *.dfm}

const
Rect: TRect = (Left: 0; Top: 0; Right: 0; Bottom: 0);
FullScreen: Boolean = False;

procedure TOpenForm.ChangeMessageBoxPosition(var Msg: TMessage);
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
x := OpenForm.Left + ((OpenForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := OpenForm.Top + ((OpenForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

procedure TOpenForm.CancelClick(Sender: TObject);
begin
OpenForm.Close;
end;

procedure TOpenForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
OpenForm.OnActivate := nil;
TextList.Free;
Choose.Free;
Cancel.Free;
Logo.Free;
txt1.Free;
txt2.Free;
txt3.Free;
txt4.Free; 
OK.Free;
fr1.Free;
end;

procedure TOpenForm.OKClick(Sender: TObject);
begin
try
OpenForm.Close;
if TextList.Text = '' then
begin
Exit;
end else
begin
TextList.Text := s;
MainForm.FlashView.Movie := s;
MainForm.OpenDlg.FileName := s;
MainForm.SeekBar.Max := MainForm.FlashView.TotalFrames;
MainForm.SeekBar.Position := 0;
MainForm.FlashView.Play;
LogForm.LogText.Lines.Add(MainForm.OpenDlg.FileName);
if MainForm.OpenDlg.FileName = '' then
begin

end else
if ToolForm.Ch26.Checked then
begin
if MainForm.FullScreenItem.Checked = False then
MainForm.FullScreenItem.Click;
end;
if MainForm.OpenDlg.FileName = '' then
begin
MainForm.CurrentFileInfoItem.Enabled := False;
MainForm.CopyFileItem.Enabled := False;
MainForm.CopyToDirItem.Enabled := False;
MainForm.FullDirPathItem.Enabled := False;
MainForm.DelToRecycleItem.Enabled := False;
MainForm.DelOpenFileItem.Enabled := False;
MainForm.CopyToItem.Enabled := False;
MainForm.MoveToItem.Enabled := False;
MainForm.ZoomInItem.Enabled := False;
MainForm.DefaultSizeItem.Enabled := False;
MainForm.StaffForwardItem.Enabled := False;
MainForm.StaffBackItem.Enabled := False;
MainForm.PlayItem.Enabled := False;
MainForm.ReplayItem.Enabled := False;
MainForm.StopItem.Enabled := False;
MainForm.GoToItem.Enabled := False;
MainForm.GoToNextItem.Enabled := False;
MainForm.SeekBar.Enabled := False;
end else
begin
MainForm.CurrentFileInfoItem.Enabled := True;
MainForm.CopyFileItem.Enabled := True;
MainForm.CopyToDirItem.Enabled := True;
MainForm.FullDirPathItem.Enabled := True;
MainForm.DelToRecycleItem.Enabled := True;
MainForm.DelOpenFileItem.Enabled := True;
MainForm.CopyToItem.Enabled := True;
MainForm.MoveToItem.Enabled := True;
MainForm.ZoomInItem.Enabled := True;
MainForm.DefaultSizeItem.Enabled := True;
MainForm.StaffForwardItem.Enabled := True;
MainForm.StaffBackItem.Enabled := True;
MainForm.PlayItem.Enabled := True;
MainForm.ReplayItem.Enabled := True;
MainForm.StopItem.Enabled := True;
MainForm.GoToItem.Enabled := True;
MainForm.GoToNextItem.Enabled := True;
MainForm.SeekBar.Enabled := True;
end;
MainForm.ColorDlg.Color := MainForm.FlashView.Color;
MainForm.FlashView.Color := MainForm.ColorDlg.Color;
OpenForm.Close;
ToolForm.OKClick(Self);
MainForm.OpenInNextSessionItem.Checked := False;
end;
except
end;
end;

procedure TOpenForm.WMMoving(var msg: TWMMoving);
var
r: TRect;
begin
if ToolForm.ch20.Checked then
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

procedure TOpenForm.FormShow(Sender: TObject);
begin
TextList.Clear;
if ToolForm.ch13.Checked then
SetWindowLong(OpenForm.Handle, GWL_EXSTYLE,
GetWindowLOng(OpenForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TOpenForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TOpenForm.ChooseClick(Sender: TObject);
begin
if OpenSaveFileDialog(OpenForm.Handle, '*.swf', 'Flash פאיכû (*.swf)|*.swf|JPEG Image File (*.jpg)|*.jpg', ParamStr(1),
'FlashCore', s, True) then
begin
TextList.Text := s;
end;
OpenForm.BringToFront;
TextList.SetFocus; 
end;

procedure TOpenForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
Cancel.OnClick(Self);
if Key = vk_Return then
OK.OnClick(Self);
end;

procedure TOpenForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TextList.SetFocus;
end;

procedure TOpenForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
