unit FIP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPLabel, XPEdit, XPButton, XPCheckBox, XPGroupBox;

type
  TFileInfoForm = class(TForm)
    ed1: TXPEdit;
    tx1: TXPLabel;
    tx2: TXPLabel;
    tx3: TXPLabel;
    ed2: TXPEdit;
    ed3: TXPEdit;
    ed4: TXPEdit;
    tx4: TXPLabel;
    tx5: TXPLabel;
    ed5: TXPEdit;
    tx6: TXPLabel;
    ed6: TXPEdit;
    fr1: TXPGroupBox;
    ChReadOnly: TXPCheckBox;
    ChArchive: TXPCheckBox;
    ChSystem: TXPCheckBox;
    ChHidden: TXPCheckBox;
    OK: TXPButton;
    Cancel: TXPButton;
    tx7: TXPLabel;
    ed7: TXPEdit;
    procedure FormShow(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private

    Sm: HWND;

  public

  end;

var
  FileInfoForm: TFileInfoForm;

implementation

uses NP, OP;

{$R *.dfm}

function GetFileSizeByName(FileName: String): Integer;
var
FindData: TWin32FindData;
hFind: THandle;
begin
Result := -1;
hFind := FindFirstFile(PChar(FileName), FindData);
if hFind <> INVALID_HANDLE_VALUE then
begin
Windows.FindClose(hFind);
if (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0 then
Result := FindData.nFileSizeLow;
end;
end;

procedure TFileInfoForm.FormShow(Sender: TObject);
begin
if ToolForm.Ch13.Checked then
SetWindowLong(FileInfoForm.Handle, GWL_EXSTYLE,
GetWindowLOng(FileInfoForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
try
ed1.Text := ExtractFileName(MainForm.OpenDlg.FileName);
ed2.Text := ExtractFilePath(MainForm.OpenDlg.FileName);
ed3.Text := ExpandFileName(MainForm.OpenDlg.FileName);
ed4.Text := ExtractFileExt(MainForm.OpenDlg.FileName);
ed5.Text := IntToStr(MainForm.FlashView.ClientWidth) + ' x ' + IntToStr(MainForm.FlashView.ClientHeight);
if MainForm.RusItem.Checked then
begin
ed6.Text := IntToStr(GetFileSizeByName(MainForm.OpenDlg.FileName)) + ' байт';
end;
if MainForm.EnItem.Checked then
begin
ed6.Text := IntToStr(GetFileSizeByName(MainForm.OpenDlg.FileName)) + ' bites';
end;
ed7.Text := IntToStr(MainForm.FlashView.TotalFrames);
except
end;
end;

procedure TFileInfoForm.FormMouseDown(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TFileInfoForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
FileInfoForm.Close;
end;

procedure TFileInfoForm.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
Cancel.SetFocus;
end;

procedure TFileInfoForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
FileInfoForm.OnActivate := nil;
ChReadOnly.Free;
ChArchive.Free;
ChHidden.Free;
ChSystem.Free;
Cancel.Free;
tx1.Free;
tx2.Free;
tx3.Free;
tx4.Free;
tx5.Free;
tx6.Free;
tx7.Free;
ed1.Free;
ed2.Free;
ed3.Free;
ed4.Free;
ed5.Free;
ed3.Free;
ed7.Free;
OK.Free;
end;

procedure TFileInfoForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
