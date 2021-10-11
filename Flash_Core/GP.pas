unit GP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPButton, XPLabel, XPGroupBox, StdCtrls, Spin, ExtCtrls, Buttons,
  DdhNumEd;

  type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

type
  TGoToForm = class(TForm)
    OK: TXPButton;
    Cancel: TXPButton;
    Timer1: TTimer;
    text1: TXPLabel;
    text2: TXPLabel;
    GoToEdit: TEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GoToEditKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GoToEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);

  private

    Sm: HWND;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

  public

  end;

var
  GoToForm: TGoToForm;

implementation

uses NP, OP;

{$R *.dfm}

procedure TGoToForm.Timer1Timer(Sender: TObject);
begin
try
if MainForm.RusItem.Checked then
begin
text1.Caption := 'Текущий кадр: ' +
IntToStr(MainForm.FlashView.FrameNum);
text2.Caption := 'из ' + IntToStr(MainForm.FlashView.TotalFrames);
end;
if MainForm.EnItem.Checked then
begin
text1.Caption := 'Current Frame: ' +
IntToStr(MainForm.FlashView.FrameNum);
text2.Caption := 'of ' + IntToStr(MainForm.FlashView.TotalFrames);
end;
except
end;
end;

procedure TGoToForm.CancelClick(Sender: TObject);
begin
GoToForm.Close;
end;

procedure TGoToForm.OKClick(Sender: TObject);
begin
MainForm.FlashView.GotoFrame(StrToInt(GoToEdit.Text));
MainForm.FlashView.Play;
GoToForm.Close;
end;

procedure TGoToForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
Cancel.OnClick(Self);
end;

procedure TGoToForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TGoToForm.FormShow(Sender: TObject);
begin
if ToolForm.Ch13.Checked then
SetWindowLong(GoToForm.Handle, GWL_EXSTYLE,
GetWindowLOng(GoToForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TGoToForm.WMMoving(var msg: TWMMoving);
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

procedure TGoToForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
GoToForm.OnActivate := nil;
GoToEdit.Free;
Timer1.Free;
Cancel.Free;
text1.Free;
OK.Free;
end;

procedure TGoToForm.GoToEditKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Return then
begin
MainForm.FlashView.GotoFrame(StrToInt(GoToEdit.Text));
MainForm.FlashView.Play;
OK.OnClick(Self);
end;
if Key = vk_Escape then
Cancel.OnClick(Self);
end;

procedure TGoToForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
GoToEdit.SetFocus;
end;

procedure TGoToForm.GoToEditKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9', '-', #8]) then Key := #0;
end;

procedure TGoToForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
