unit HKP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, LbSpeedButton, ExtCtrls, XPLabel, XPButton;

  type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

type
  THKForm = class(TForm)
    fr2: TPanel;
    HKText: TRichEdit;
    OK: TXPButton;
    fr1: TPanel;
    BackImage: TImage;
    logo: TImage;
    tx1: TXPLabel;
    Image1: TImage;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private

    SM: HWND;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

  public

  end;

var
  HKForm: THKForm;

implementation

uses OP;

{$R *.dfm}

procedure THKForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure THKForm.FormShow(Sender: TObject);
begin
if ToolForm.Ch13.Checked then
SetWindowLong(HKForm.Handle, GWL_EXSTYLE,
GetWindowLOng(HKForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure THKForm.OKClick(Sender: TObject);
begin
HKForm.Close;
end;

procedure THKForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
HKForm.Close;
end;

procedure THKForm.WMMoving(var msg: TWMMoving);
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

procedure THKForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
HKText.SetFocus;
end;

procedure THKForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
HKForm.OnActivate := nil;
HKText.Free;
Logo.Free;
fr1.Free;
fr2.Free;
tx1.Free;
OK.Free;
end;

procedure THKForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
