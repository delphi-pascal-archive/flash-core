unit AP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPButton, StdCtrls, ComCtrls, ExtCtrls, XPCheckBox;

  type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

type
  TLicForm = class(TForm)
    fr: TPanel;
    ReadMe: TRichEdit;
    PrintDlg: TPrintDialog;
    PrintText: TXPButton;
    OK: TXPButton;
    procedure PrintTextClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);

  private

    Sm: HWND;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

  public

  end;

var
  LicForm: TLicForm;

implementation

uses OP;

{$R *.dfm}

procedure TLicForm.PrintTextClick(Sender: TObject);
var
FFileName: String;
begin
if PrintDlg.Execute then
ReadMe.Print(FFileName);
end;

procedure TLicForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TLicForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
LicForm.Close;
end;

procedure TLicForm.OKClick(Sender: TObject);
begin
LicForm.Close;
end;

procedure TLicForm.FormShow(Sender: TObject);
begin
if ToolForm.Ch13.Checked then
SetWindowLong(LicForm.Handle, GWL_EXSTYLE,
GetWindowLOng(LicForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TLicForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
LicForm.OnActivate := nil;
PrintText.Free;
PrintDlg.Free;
ReadMe.Free;
fr.Free;
OK.Free;
end;

procedure TLicForm.WMMoving(var msg: TWMMoving);
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

procedure TLicForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ReadMe.SetFocus;
end;

procedure TLicForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
