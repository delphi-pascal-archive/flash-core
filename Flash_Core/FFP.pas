unit FFP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppEvnts, ImgList, Menus, XPButton, ComCtrls, ExtCtrls, ShellApi,
  StdCtrls;

  type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

 type
   TFavForm = class(TForm)
    fr1: TPanel;
    ImageList: TImageList;
    OkBt: TXPButton;
    DeleteBt: TXPButton;
    ClearBt: TXPButton;
    RenameBt: TXPButton;
    ListView: TListView;
    FullScreenBt: TXPButton;
    Cancel: TXPButton;
    procedure FormShow(Sender: TObject);
    procedure DeleteBtClick(Sender: TObject);
    procedure ClearBtClick(Sender: TObject);
    procedure OkBtClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure RenameBtClick(Sender: TObject);
    procedure FullScreenBtClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);

  private

    Sm: HWND;
    
    f: TFileStream;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

    procedure WMGetMinMaxInfo(var msg: TWMGetMinMaxInfo);
    message WM_GETMINMAXINFO;

  public

  end;

var
  FavForm: TFavForm;

implementation

uses OP, NP, SBP;

{$R *.dfm}

procedure TFavForm.FormShow(Sender: TObject);
begin
try
if ToolForm.Ch13.Checked then
SetWindowLong(FavForm.Handle, GWL_EXSTYLE,
GetWindowLOng(FavForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
f := TFileStream.Create(SaveBaseForm.Sdf.Directory + '\FCFavLinks.fcl', fmOpenRead);
f.ReadComponent(ListView);
f.Free;
except
end;
end;

procedure TFavForm.DeleteBtClick(Sender: TObject);
begin
try
ListView.Items.Delete(ListView.Selected.Index);
except
end;
end;

procedure TFavForm.ClearBtClick(Sender: TObject);
begin
ListView.Clear;
end;

procedure TFavForm.OkBtClick(Sender: TObject);
begin
try
f := TFileStream.Create(SaveBaseForm.Sdf.Directory + '\FCFavLinks.fcl', fmcreate);
f.WriteComponent(FavForm.ListView);
f.Free;
FavForm.Close;
except
end;
end;

procedure TFavForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Cancel.SetFocus;
if FullScreenBt.Tag = 1 then
begin
FavForm.Hide;
FullScreenBt.OnClick(Self);
Cancel.OnClick(Self);
end;
Cancel.OnClick(Self);
end;

procedure TFavForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
try
if Key = vk_F2 then
begin
ListView.Selected.EditCaption;
end;
if FullScreenBt.Tag = 1 then
begin
if Key = vk_Escape then
FullScreenBt.OnClick(Self);
end else
begin
FavForm.Close;
end;
except
end;
end;

procedure TFavForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

procedure TFavForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
FavForm.OnActivate := nil;
FullScreenBt.Free;
ImageList.Free;
DeleteBt.Free;
ListView.Free;
RenameBt.Free;
ClearBt.Free;
Cancel.Free;
OkBt.Free;
fr1.Free;
end;

procedure TFavForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if FullScreenBt.Tag = 0 then
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;
end;

procedure TFavForm.WMMoving(var msg: TWMMoving);
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

procedure TFavForm.RenameBtClick(Sender: TObject);
begin
try
ListView.Selected.EditCaption;
except
end;
end;

procedure TFavForm.WMGetMinMaxInfo(var msg: TWMGetMinMaxInfo);
begin
inherited;
with msg.MinMaxInfo^.ptMaxTrackSize do begin
X := GetDeviceCaps(Canvas.handle, HORZRES ) +
(Width - ClientWidth);
Y := GetDeviceCaps(Canvas.handle, VERTRES ) +
(Height - ClientHeight );
end;
end;

procedure TFavForm.FullScreenBtClick(Sender: TObject);
const
Rect: TRect = (Left: 100; Top: 100; Right: 100; Bottom: 100);
FullScreen: Boolean = False;
begin
FavForm.ScreenSnap := False;
FullScreen := not FullScreen;
if FullScreen then
begin
FullScreenBt.Tag := 1;
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
BoundsRect := Rect;
if ToolForm.Ch17.Checked then
FavForm.ScreenSnap := True;
if not ToolForm.Ch17.Checked then
FavForm.ScreenSnap := False;
FullScreenBt.Tag := 0;
end;
end;

procedure TFavForm.CancelClick(Sender: TObject);
begin
FavForm.Close;
end;

end.
