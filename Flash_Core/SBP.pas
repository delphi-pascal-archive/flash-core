unit SBP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, XPLabel, XPButton, XPEdit,
  IniFiles;

type
  TSaveBaseForm = class(TForm)
    OK: TXPButton;
    Cancel: TXPButton;
    InformationLabel: TLabel;
    fr1: TPanel;
    logo1: TImage;
    logo2: TImage;
    tx1: TXPLabel;
    tx2: TXPLabel;
    SystemDisks: TDriveComboBox;
    Sdf: TDirectoryListBox;
    ShowFuturePathEdit: TEdit;
    CurrentPathEdit: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SdfChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private

    SM: HWND;

    Ini: TIniFile;

  public

  end;

var
  SaveBaseForm: TSaveBaseForm;

implementation

uses OP;

{$R *.dfm}

procedure TSaveBaseForm.FormCreate(Sender: TObject);
begin
Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
try
Sdf.Directory := Ini.ReadString('Save base in', 'Save', sdf.Directory);
except
end;
end;

procedure TSaveBaseForm.FormShow(Sender: TObject);
begin
CurrentPathEdit.Text := sdf.Directory + '\FCFavLinks.fcl';
ShowFuturePathEdit.Text := Sdf.Directory;
if ToolForm.Ch13.Checked then
SetWindowLong(SaveBaseForm.Handle, GWL_EXSTYLE,
GetWindowLOng(SaveBaseForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
CurrentPathEdit.Height := 17;
ShowFuturePathEdit.Height := 17;
end;

procedure TSaveBaseForm.SdfChange(Sender: TObject);
begin
CurrentPathEdit.Text := sdf.Directory + 'FCFavLinks.fcl';
ShowFuturePathEdit.Text := Sdf.Directory;
end;

procedure TSaveBaseForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
SaveBaseForm.OnActivate := nil;
ShowFuturePathEdit.Free;
CurrentPathEdit.Free;
SystemDisks.Free;
Cancel.Free;
logo1.Free;
logo2.Free;
Ini.Free;
OK.Free;
end;

procedure TSaveBaseForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
begin
Cancel.OnClick(Self);
Close;
end;
end;

procedure TSaveBaseForm.FormMouseDown(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TSaveBaseForm.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
Cancel.OnClick(Self);
Cancel.SetFocus;
end;

procedure TSaveBaseForm.OKClick(Sender: TObject);
begin
Ini.WriteString('Save base in', 'Save', sdf.Directory);
end;

procedure TSaveBaseForm.CancelClick(Sender: TObject);
begin
Sdf.Directory := Ini.ReadString('Save base in', 'Save', sdf.Directory);
end;

procedure TSaveBaseForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
