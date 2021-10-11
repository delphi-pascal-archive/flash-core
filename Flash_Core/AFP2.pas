unit AFP2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPEdit, XPLabel, ExtCtrls, XPGroupBox, XPButton, ComCtrls;

  type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

 type
   TAddFav2Form = class(TForm)
    OK: TXPButton;
    Cancel: TXPButton;
    Logo: TImage;
    txt1: TXPLabel;
    txt2: TXPLabel;
    txt3: TXPLabel;
    AddEdit: TXPEdit;
    txt4: TXPLabel;
    procedure OKClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure AddEditKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);

  private

    Sm: HWND;

    f: TFileStream;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

  public

  end;

var
  AddFav2Form: TAddFav2Form;

implementation

uses FP, OP, FFP, SBP;


{$R *.dfm}

procedure AddListViewItem(const aCaption, aValue: String; aValue2: String; aLV: TListView);
var
NewItem: TListItem;
begin
NewItem := aLV.Items.Add;
NewItem.Caption := aCaption;
NewItem.SubItems.Add(aValue);
NewItem.SubItems.Add(aValue2);
end;

procedure TAddFav2Form.OKClick(Sender: TObject);
var
i: Integer;
begin
try
i := FindForm.ListResult.ItemIndex;
AddListViewItem(AddEdit.Text, FindForm.ListResult.Items.Strings[i], '', FavForm.ListView);
f := TFileStream.Create(SaveBaseForm.Sdf.Directory + '\FCFavLinks.fcl', fmcreate);
f.WriteComponent(FavForm.ListView);
f.Free;
except
end;
AddFav2Form.Close;
end;

procedure TAddFav2Form.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
AddFav2Form.OnActivate := nil;
AddEdit.Free;
Cancel.Free;
Logo.Free;
txt1.Free;
txt2.Free;
txt3.Free;
txt4.Free;
OK.Free;
end;

procedure TAddFav2Form.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
AddFav2Form.Close;
end;

procedure TAddFav2Form.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TAddFav2Form.FormShow(Sender: TObject);
begin
AddEdit.Height := 19;
if ToolForm.Ch13.Checked then
SetWindowLong(AddFav2Form.Handle, GWL_EXSTYLE,
GetWindowLOng(AddFav2Form.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TAddFav2Form.CancelClick(Sender: TObject);
begin
AddFav2Form.Close;
end;

procedure TAddFav2Form.WMMoving(var msg: TWMMoving);
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

procedure TAddFav2Form.AddEditKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Return then
begin
OK.OnClick(Self);
end;
if Key = vk_Escape then
begin
AddFav2Form.Close;
end;
end;

procedure TAddFav2Form.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
Cancel.SetFocus;
end;

procedure TAddFav2Form.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
