unit OP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPGroupBox, Registry, XPCheckBox, IniFiles, ExtCtrls,
  XPButton, XPRadioButton, XPEdit, XPLabel, LbSpeedButton, ActiveX, ComObj,
  ShellApi, ShlObj, ComCtrls, FlashObjects, RtColorPicker, Menus;

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
  TToolForm = class(TForm)
    fr15: TPanel;
    bt4: TLbSpeedButton;
    bt2: TLbSpeedButton;
    bt1: TLbSpeedButton;
    Notebook: TNotebook;
    fr1: TXPGroupBox;
    Ch1: TXPCheckBox;
    Ch3: TXPCheckBox;
    Ch4: TXPCheckBox;
    Ch2: TXPCheckBox;
    Ch6: TXPCheckBox;
    fr3: TXPGroupBox;
    tx2: TXPLabel;
    bt3: TLbSpeedButton;
    fr7: TXPGroupBox;
    rb3: TXPRadioButton;
    rb2: TXPRadioButton;
    rb1: TXPRadioButton;
    fr5: TXPGroupBox;
    Ch15: TXPCheckBox;
    fr9: TXPGroupBox;
    Ch16: TXPCheckBox;
    Ch17: TXPCheckBox;
    bt6: TLbSpeedButton;
    Ch20: TXPCheckBox;
    bt7: TLbSpeedButton;
    fr11: TXPGroupBox;
    ch21: TXPCheckBox;
    ch22: TXPCheckBox;
    ch25: TXPCheckBox;
    bt8: TLbSpeedButton;
    fr14: TXPGroupBox;
    ColorPickDlg: TColorPickCombo;
    tx3: TXPLabel;
    tx4: TXPLabel;
    fr6: TXPGroupBox;
    Ch14: TXPCheckBox;
    Ch8: TXPCheckBox;
    Ch5: TXPCheckBox;
    Ch10: TXPCheckBox;
    Ch11: TXPCheckBox;
    Ch12: TXPCheckBox;
    fr8: TXPGroupBox;
    Ch13: TXPCheckBox;
    Ch18: TXPCheckBox;
    ch24: TXPCheckBox;
    fr10: TXPGroupBox;
    AlignBox: TComboBox;
    fr12: TXPGroupBox;
    Ch26: TXPCheckBox;
    fr4: TXPGroupBox;
    Ch9: TXPCheckBox;
    Ch27: TXPCheckBox;
    fr2: TXPGroupBox;
    Ch19: TXPCheckBox;
    TextName: TXPEdit;
    fr13: TXPGroupBox;
    Ch7: TXPCheckBox;
    Ch23: TXPCheckBox;
    ShortcutMenu: TPopupMenu;
    DeskItem: TMenuItem;
    StartMenuItem: TMenuItem;
    ProgramsItem: TMenuItem;
    AutoStartItem: TMenuItem;
    FavoriteItem: TMenuItem;
    CreateBt: TXPButton;
    fr17: TPanel;
    logo2: TImage;
    logo1: TImage;
    fr16: TPanel;
    logo3: TImage;
    Cancel: TXPButton;
    OK: TXPButton;
    tx1: TXPLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Ch5Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure bt4Click(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure DeskItemClick(Sender: TObject);
    procedure TextNameChange(Sender: TObject);
    procedure StartMenuItemClick(Sender: TObject);
    procedure ProgramsItemClick(Sender: TObject);
    procedure AutoStartItemClick(Sender: TObject);
    procedure FavoriteItemClick(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure Ch15Click(Sender: TObject);
    procedure bt6Click(Sender: TObject);
    procedure bt7Click(Sender: TObject);
    procedure bt8Click(Sender: TObject);
    procedure ColorPickDlgChanged(Sender: TObject);
    procedure tx4Click(Sender: TObject);
    procedure Ch27Click(Sender: TObject);
    procedure CreateBtClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private

    Sm: HWND;

    Ini: TIniFile;

    LinkFile: IPersistFile;

    ShellObject: IUnknown;

    ShellLink: IShellLink;

    FileName,ShortcutPosition: string;

    WShortcutPosition: WideString;

    P:PItemIDList;

    C: array[0..1000] of char;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;

  public

  end;

var
  ToolForm: TToolForm;

implementation

uses NP, IP, LP, HP, AP, HKP, GP, FP, WP, SHP, FFP, AFP, AFP2, SBP, FIP,
  TTP, LPP;

{$R *.dfm}

procedure TToolForm.FormShow(Sender: TObject);
begin
if Length(TextName.Text) = 0 then
begin
DeskItem.enabled := False;
StartMenuItem.enabled := False;
ProgramsItem.enabled := False;
AutoStartItem.enabled := False;
FavoriteItem.enabled := False;
end else
begin
DeskItem.enabled := True;
StartMenuItem.enabled := True;
ProgramsItem.enabled := True;
AutoStartItem.enabled := True;
FavoriteItem.enabled := True;
end;
TextName.Height := 19;
ToolForm.Notebook.ActivePage := '1';
if MainForm.RusItem.Checked then
ToolForm.tx1.Caption := 'Группа: "Общие"' else
ToolForm.tx1.Caption := 'Group: "General"';
if Ch13.Checked then
SetWindowLong(ToolForm.Handle, GWL_EXSTYLE,
GetWindowLOng(ToolForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TToolForm.FormCreate(Sender: TObject);
begin
Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
try
Ch1.Checked := Ini.ReadBool('Parameters', 'Minimized to tray', Ch1.Checked);
Ch2.Checked := Ini.ReadBool('Parameters', 'Tray icon only at minimized', Ch2.Checked);
Ch3.Checked := Ini.ReadBool('Parameters', 'Save window size', Ch3.Checked);
Ch4.Checked := Ini.ReadBool('Parameters', 'Save window position', Ch4.Checked);
Ch5.Checked := Ini.ReadBool('Parameters', 'Run program with Windows OS start up', Ch5.Checked);
Ch6.Checked := Ini.ReadBool('Parameters', 'Show hint in the status bar', Ch6.Checked);
Ch7.Checked := Ini.ReadBool('Parameters', 'Device Font', Ch7.Checked);
Ch8.Checked := Ini.ReadBool('Parameters', 'Amination of window on opening and closing', Ch8.Checked);
Ch9.Checked := Ini.ReadBool('Parameters', 'Hide messages on creating shortcuts', Ch9.Checked);
Ch10.Checked := Ini.ReadBool('Parameters', 'Computer off', Ch10.Checked);
Ch11.Checked := Ini.ReadBool('Parameters', 'Confirm before off computer', Ch11.Checked);
Ch12.Checked := Ini.ReadBool('Parameters', 'Confirm', Ch12.Checked);
Ch13.Checked := Ini.ReadBool('Parameters', 'Other windows in the task bar', Ch13.Checked);
Ch14.Checked := Ini.ReadBool('Parameters', 'Pause video when minimized', Ch14.Checked);
Ch15.Checked := Ini.ReadBool('Parameters', 'Use of XP menu themes', Ch15.Checked);
Ch16.Checked := Ini.ReadBool('Parameters', 'Move window of area client', Ch16.Checked);
Ch17.Checked := Ini.ReadBool('Parameters', 'Use of screen snap', Ch17.Checked);
Ch18.Checked := Ini.ReadBool('Parameters', 'Images in the menu', Ch18.Checked);
Ch19.Checked := Ini.ReadBool('Parameters', 'FlashView context menu', Ch19.Checked);
Ch20.Checked := Ini.ReadBool('Parameters', 'Windows only in the client area', Ch20.Checked);
Ch21.Checked := Ini.ReadBool('Parameters', 'Hide status bar on full screen', Ch21.Checked);
Ch22.Checked := Ini.ReadBool('Parameters', 'Hide seek bar on full screen', Ch22.Checked);
Ch23.Checked := Ini.ReadBool('Parameters', 'Status bar context menu', Ch23.Checked);
Ch24.Checked := Ini.ReadBool('Parameters', 'Start on full screen', Ch24.Checked);
Ch25.Checked := Ini.ReadBool('Parameters', 'Drag and Drop', Ch25.Checked);
Ch26.Checked := Ini.ReadBool('Parameters', 'Full screen on play file', Ch26.Checked);
Ch27.Checked := Ini.ReadBool('Parameters', 'Disabled of hot keys', Ch27.Checked);
rb1.Checked := Ini.ReadBool('Parameters', 'Flash - FileName', rb1.Checked);
rb2.Checked := Ini.ReadBool('Parameters', 'FileName - Flash', rb2.Checked);
rb3.Checked := Ini.ReadBool('Parameters', 'Program name', rb3.Checked);
AlignBox.ItemIndex := Ini.ReadInteger('Parameters', 'Align', AlignBox.ItemIndex);
TextName.Text := Ini.ReadString('Parameters', 'Shortcut name', TextName.Text);
ColorPickDlg.ActiveColor := Ini.ReadInteger('Parameters', 'Color', ColorPickDlg.ActiveColor);
except
end;
end;

procedure TToolForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Cancel.OnClick(Self);
Cancel.SetFocus;
end;

procedure TToolForm.Ch5Click(Sender: TObject);
var
R: TRegistry;
begin
R := TRegistry.Create;
R.RootKey := HKEY_LOCAL_MACHINE;
R.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', false);
if Ch5.Checked then
R.WriteString(Application.Title, ParamStr(0)) else
R.DeleteValue(Application.Title);
R.Free;
end;

procedure TToolForm.bt1Click(Sender: TObject);
begin
Notebook.ActivePage := '1';
if MainForm.RusItem.Checked then
ToolForm.tx1.Caption := 'Группа: "Общие"' else
ToolForm.tx1.Caption := 'Group: "General"';
end;

procedure TToolForm.bt2Click(Sender: TObject);
begin
Notebook.ActivePage := '2';
if MainForm.RusItem.Checked then
ToolForm.tx1.Caption := 'Группа: "Ярлык"' else
ToolForm.tx1.Caption := 'Group: "Shortcut"';
end;

procedure TToolForm.bt3Click(Sender: TObject);
begin
Notebook.ActivePage := '3';
if MainForm.RusItem.Checked then
ToolForm.tx1.Caption := 'Группа: "События"' else
ToolForm.tx1.Caption := 'Group: "Events"';
end;

procedure TToolForm.bt4Click(Sender: TObject);
begin
Notebook.ActivePage := '4';
if MainForm.RusItem.Checked then
ToolForm.tx1.Caption := 'Группа: "Разное"' else
ToolForm.tx1.Caption := 'Group: "Different"';
end;

procedure TToolForm.OKClick(Sender: TObject);
begin
if Ch18.Checked then
MainForm.MainMenu.Images := MainForm.ImageList2 else
MainForm.MainMenu.Images := MainForm.ImageList1;
if Ch18.Checked then
MainForm.TrayMenu.Images := MainForm.ImageList2 else
MainForm.TrayMenu.Images := MainForm.ImageList1;
if Ch18.Checked then
FindForm.MainMenu.Images := FindForm.ImageList1 else
FindForm.MainMenu.Images := FindForm.ImageList;
if ToolForm.Ch17.Checked then
begin
MainForm.ScreenSnap := True;
ToolForm.ScreenSnap := True;
AboutForm.ScreenSnap := True;
InfoForm.ScreenSnap := True;
IntForm.ScreenSnap := True;
LicForm.ScreenSnap := True;
HKForm.ScreenSnap := True;
GoToForm.ScreenSnap := True;
FindForm.ScreenSnap := True;
OpenForm.ScreenSnap := True;
ScreenForm.ScreenSnap := True;
AddFavForm.ScreenSnap := True;
AddFav2Form.ScreenSnap := True;
FavForm.ScreenSnap := True;
FileInfoForm.ScreenSnap := True;
TipForm.ScreenSnap := True;
LogForm.ScreenSnap := True;
end else
begin
MainForm.ScreenSnap := False;
ToolForm.ScreenSnap := False;
AboutForm.ScreenSnap := False;
InfoForm.ScreenSnap := False;
IntForm.ScreenSnap := False;
LicForm.ScreenSnap := False;
HKForm.ScreenSnap := False;
GoToForm.ScreenSnap := False;
FindForm.ScreenSnap := False;
OpenForm.ScreenSnap := False;
ScreenForm.ScreenSnap := False;
AddFavForm.ScreenSnap := False;
AddFav2Form.ScreenSnap := False;
FavForm.ScreenSnap := False;
FileInfoForm.ScreenSnap := False;
TipForm.ScreenSnap := False;
LogForm.ScreenSnap := False;
end;
if ToolForm.rb1.Checked then
begin
MainForm.Caption := 'FlashCore - ' + MainForm.OpenDlg.FileName;
end;
if ToolForm.rb2.Checked then
begin
MainForm.Caption := MainForm.OpenDlg.FileName + ' - FlashCore';
end;
if ToolForm.rb3.Checked then
MainForm.Caption := 'FlashCore';
if MainForm.OpenDlg.FileName = '' then
MainForm.Caption := 'FlashCore';
MainForm.T3.Enabled := True;
if Ch25.Checked then
DragAcceptFiles(MainForm.Handle, True) else
DragAcceptFiles(MainForm.Handle, False);
if AlignBox.ItemIndex = 0 then
MainForm.FlashView.VerAlign := fvTop;
if AlignBox.ItemIndex = 1 then
MainForm.FlashView.VerAlign := fvCenter;
if AlignBox.ItemIndex = 2 then
MainForm.FlashView.VerAlign := fvBottom;
if Ch7.Checked then
MainForm.FlashView.DeviceFont := True else
MainForm.FlashView.DeviceFont := False;
Ini.WriteBool('Parameters', 'Minimized to tray', Ch1.Checked);
Ini.WriteBool('Parameters', 'Tray icon only at minimized', Ch2.Checked);
Ini.WriteBool('Parameters', 'Save window size', Ch3.Checked);
Ini.WriteBool('Parameters', 'Save window position', Ch4.Checked);
Ini.WriteBool('Parameters', 'Run program with Windows OS start up', Ch5.Checked);
Ini.WriteBool('Parameters', 'Show hint in the status bar', Ch6.Checked);
Ini.WriteBool('Parameters', 'Device Font', Ch7.Checked);
Ini.WriteBool('Parameters', 'Amination of window on opening and closing', Ch8.Checked);
Ini.WriteBool('Parameters', 'Hide messages on creating shortcuts', Ch9.Checked);
Ini.WriteBool('Parameters', 'Computer off', Ch10.Checked);
Ini.WriteBool('Parameters', 'Confirm before off computer', Ch11.Checked);
Ini.WriteBool('Parameters', 'Confirm', Ch12.Checked);
Ini.WriteBool('Parameters', 'Other windows in the task bar', Ch13.Checked);
Ini.WriteBool('Parameters', 'Pause video when minimized', Ch14.Checked);
Ini.WriteBool('Parameters', 'Use of XP menu themes', Ch15.Checked);
Ini.WriteBool('Parameters', 'Move window of area client', Ch16.Checked);
Ini.WriteBool('Parameters', 'Use of screen snap', Ch17.Checked);
Ini.WriteBool('Parameters', 'Images in the menu', Ch18.Checked);
Ini.WriteBool('Parameters', 'FlashView context menu', Ch19.Checked);
Ini.WriteBool('Parameters', 'Windows only in the client area', Ch20.Checked);
Ini.WriteBool('Parameters', 'Hide status bar on full screen', Ch21.Checked);
Ini.WriteBool('Parameters', 'Hide seek bar on full screen', Ch22.Checked);
Ini.WriteBool('Parameters', 'Status bar context menu', Ch23.Checked);
Ini.WriteBool('Parameters', 'Start on full screen', Ch24.Checked);
Ini.WriteBool('Parameters', 'Drag and Drop', Ch25.Checked);
Ini.WriteBool('Parameters', 'Full screen on play file', Ch26.Checked);
Ini.WriteBool('Parameters', 'Disabled of hot keys', Ch27.Checked);
Ini.WriteBool('Parameters', 'Flash - FileName', rb1.Checked);
Ini.WriteBool('Parameters', 'FileName - Flash', rb2.Checked);
Ini.WriteBool('Parameters', 'Program name', rb3.Checked);
Ini.WriteInteger('Parameters', 'Align', AlignBox.ItemIndex);
Ini.WriteInteger('Parameters', 'Color', ColorPickDlg.ActiveColor);
ToolForm.Close;
end;

procedure TToolForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TToolForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
Cancel.OnClick(Self);
end;

procedure TToolForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
ToolForm.OnActivate := nil;
end;

procedure TToolForm.DeskItemClick(Sender: TObject);
begin
ShellObject:=CreateComObject(CLSID_ShellLink);
LinkFile:=ShellObject as IPersistFile;
ShellLink:=ShellObject as IShellLink;
FileName:=ParamStr(0);
ShellLink.SetPath(pchar(FileName));
ShellLink.SetWorkingDirectory(pchar(ExtractFilePath(FileName)));
if SHGetSpecialFolderLocation(Handle,CSIDL_DESKTOP,P)=NOERROR then begin
SHGetPathFromIDList(P,C);
ShortcutPosition:=StrPas(C);
PostMessage(Handle, WM_USER + 1024, 0, 0);
if not Ch9.Checked then
if MainForm.EnItem.Checked then
if Application.MessageBox(PChar('Do you want a shortcut "' + TextName.Text + '" to your Desktop?'),
'Creating Shortcut',
Mb_IconQuestion + mb_YesNo) = IdYes then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
if not Ch9.Checked then
if MainForm.RusItem.Checked then
if Application.MessageBox(PChar('Вы хотите разместить ярлык "' + TextName.Text + '" на Рабочем Столе?'),
'Создание ярлыка',
Mb_IconQuestion + mb_YesNo) = IdYes then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
if Ch9.Checked then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
WShortcutPosition:=ShortcutPosition;
LinkFile.Save(PWChar(WShortcutPosition),False);
end;
end;

procedure TToolForm.TextNameChange(Sender: TObject);
begin
if Length(TextName.Text) = 0 then
begin
DeskItem.enabled := False;
StartMenuItem.enabled := False;
ProgramsItem.enabled := False;
AutoStartItem.enabled := False;
FavoriteItem.enabled := False;
end else
begin
DeskItem.enabled := True;
StartMenuItem.enabled := True;
ProgramsItem.enabled := True;
AutoStartItem.enabled := True;
FavoriteItem.enabled := True;
end;
Ini.WriteString('Parameters', 'Shortcut name', TextName.Text);
end;

procedure TToolForm.StartMenuItemClick(Sender: TObject);
begin
ShellObject:=CreateComObject(CLSID_ShellLink);
LinkFile:=ShellObject as IPersistFile;
ShellLink:=ShellObject as IShellLink;
FileName:=ParamStr(0);
ShellLink.SetPath(pchar(FileName));
ShellLink.SetWorkingDirectory(pchar(ExtractFilePath(FileName)));
if SHGetSpecialFolderLocation(Handle,CSIDL_STARTMENU,P)=NOERROR then begin
SHGetPathFromIDList(P,C);
ShortcutPosition:=StrPas(C);
PostMessage(Handle, WM_USER + 1024, 0, 0);
if not Ch9.Checked then
if MainForm.EnItem.Checked then
if Application.MessageBox(PChar('Do you want a shortcut "' + TextName.Text + '" to your Start Menu?'),
'Creating Shortcut',
Mb_IconQuestion + mb_YesNo) = IdYes then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
if not Ch9.Checked then
if MainForm.RusItem.Checked then
if Application.MessageBox(PChar('Вы хотите разместить ярлык "' + TextName.Text + '" в Главном Меню?'),
'Создание ярлыка',
Mb_IconQuestion + mb_YesNo) = IdYes then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
if Ch9.Checked then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
WShortcutPosition:=ShortcutPosition;
LinkFile.Save(PWChar(WShortcutPosition),False);
end;
end;

procedure TToolForm.ProgramsItemClick(Sender: TObject);
begin
ShellObject:=CreateComObject(CLSID_ShellLink);
LinkFile:=ShellObject as IPersistFile;
ShellLink:=ShellObject as IShellLink;
FileName:=ParamStr(0);
ShellLink.SetPath(pchar(FileName));
ShellLink.SetWorkingDirectory(pchar(ExtractFilePath(FileName)));
if SHGetSpecialFolderLocation(Handle,CSIDL_PROGRAMS,P)=NOERROR then begin
SHGetPathFromIDList(P,C);
ShortcutPosition:=StrPas(C);
PostMessage(Handle, WM_USER + 1024, 0, 0);
if not Ch9.Checked then
if MainForm.EnItem.Checked then
if Application.MessageBox(PChar('Do you want a shortcut "' + TextName.Text + '" to your Programs Menu?'),
'Creating Shortcut',
Mb_IconQuestion + mb_YesNo) = IdYes then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
if not Ch9.Checked then
if MainForm.RusItem.Checked then
if Application.MessageBox(PChar('Вы хотите разместить ярлык "' + TextName.Text + '" в Меню Программы?'),
'Создание ярлыка',
Mb_IconQuestion + mb_YesNo) = IdYes then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
if Ch9.Checked then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
WShortcutPosition:=ShortcutPosition;
LinkFile.Save(PWChar(WShortcutPosition),False);
end;
end;

procedure TToolForm.AutoStartItemClick(Sender: TObject);
begin
ShellObject:=CreateComObject(CLSID_ShellLink);
LinkFile:=ShellObject as IPersistFile;
ShellLink:=ShellObject as IShellLink;
FileName:=ParamStr(0);
ShellLink.SetPath(pchar(FileName));
ShellLink.SetWorkingDirectory(pchar(ExtractFilePath(FileName)));
if SHGetSpecialFolderLocation(Handle,CSIDL_STARTUP,P)=NOERROR then begin
SHGetPathFromIDList(P,C);
ShortcutPosition:=StrPas(C);
PostMessage(Handle, WM_USER + 1024, 0, 0);
if not Ch9.Checked then
if MainForm.EnItem.Checked then
if Application.MessageBox(PChar('Do you want a shortcut "' + TextName.Text + '" to your Startup folder?'),
'Creating Shortcut',
Mb_IconQuestion + mb_YesNo) = IdYes then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
if not Ch9.Checked then
if MainForm.RusItem.Checked then
if Application.MessageBox(PChar('Вы хотите разместить ярлык "' + TextName.Text + '" в папке Автозагрузки?'),
'Создание ярлыка',
Mb_IconQuestion + mb_YesNo) = IdYes then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
if Ch9.Checked then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
WShortcutPosition:=ShortcutPosition;
LinkFile.Save(PWChar(WShortcutPosition),False);
end;
end;

procedure TToolForm.FavoriteItemClick(Sender: TObject);
begin
ShellObject:=CreateComObject(CLSID_ShellLink);
LinkFile:=ShellObject as IPersistFile;
ShellLink:=ShellObject as IShellLink;
FileName:=ParamStr(0);
ShellLink.SetPath(pchar(FileName));
ShellLink.SetWorkingDirectory(pchar(ExtractFilePath(FileName)));
if SHGetSpecialFolderLocation(Handle,CSIDL_FAVORITES,P)=NOERROR then begin
SHGetPathFromIDList(P,C);
ShortcutPosition:=StrPas(C);
PostMessage(Handle, WM_USER + 1024, 0, 0);
if not Ch9.Checked then
if MainForm.EnItem.Checked then
if Application.MessageBox(PChar('Do you want a shortcut "' + TextName.Text + '" to your Favorites?'),
'Creating Shortcut',
Mb_IconQuestion + mb_YesNo) = IdYes then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
if not Ch9.Checked then
if MainForm.RusItem.Checked then
if Application.MessageBox(PChar('Вы хотите разместить ярлык "' + TextName.Text + '" в Избранном?'),
'Создание ярлыка',
Mb_IconQuestion + mb_YesNo) = IdYes then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
if Ch9.Checked then
ShortcutPosition:=ShortcutPosition+'\'+ TextName.Text + '.lnk';
WShortcutPosition:=ShortcutPosition;
LinkFile.Save(PWChar(WShortcutPosition),False);
end;
end;

procedure TToolForm.Ch15Click(Sender: TObject);
begin
if MainForm.RusItem.Checked then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
Application.MessageBox('Перезапустите FlashCore для изменения настроек!',
'Применение Темы',
mb_IconExclamation + mb_OK);
end;
if MainForm.EnItem.Checked then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
Application.MessageBox('Theme changes will take effect when you restart FlashCore!',
'Apply Theme',
mb_IconExclamation + mb_OK);
end;
end;

procedure TToolForm.bt6Click(Sender: TObject);
begin
Notebook.ActivePage := '5';
if MainForm.RusItem.Checked then
ToolForm.tx1.Caption := 'Группа: "Область окна"' else
ToolForm.tx1.Caption := 'Group: "Window Area"';
end;

procedure TToolForm.bt7Click(Sender: TObject);
begin
Notebook.ActivePage := '6';
if MainForm.RusItem.Checked then
ToolForm.tx1.Caption := 'Группа: "Полный экран"' else
ToolForm.tx1.Caption := 'Group: "Full Screen Mode"';
end;

procedure TToolForm.WMMoving(var msg: TWMMoving);
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

procedure TToolForm.ChangeMessageBoxPosition(var Msg: TMessage);
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
x := ToolForm.Left + ((ToolForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := ToolForm.Top + ((ToolForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

procedure TToolForm.bt8Click(Sender: TObject);
begin
Notebook.ActivePage := '7';
if MainForm.RusItem.Checked then
ToolForm.tx1.Caption := 'Группа: "Начертание"' else
ToolForm.tx1.Caption := 'Group: "Window Style"';
end;

procedure TToolForm.ColorPickDlgChanged(Sender: TObject);
begin
//About Window
AboutForm.Color := ColorPickDlg.ActiveColor;
AboutForm.Fr1.Color := ColorPickDlg.ActiveColor;
AboutForm.Fr2.Color := ColorPickDlg.ActiveColor;
AboutForm.License.Color := ColorPickDlg.ActiveColor;
AboutForm.SendMail.Color := ColorPickDlg.ActiveColor;
AboutForm.Drawer.Color := ColorPickDlg.ActiveColor;
//Hot Keys Window
HKForm.Color := ColorPickDlg.ActiveColor;
HKForm.fr1.Color := ColorPickDlg.ActiveColor;
HKForm.fr2.Color := ColorPickDlg.ActiveColor;
HKForm.HKText.Color := ColorPickDlg.ActiveColor;
//Information Window
InfoForm.Color := ColorPickDlg.ActiveColor;
InfoForm.ed4.Color := ColorPickDlg.ActiveColor;
InfoForm.ed5.Color := ColorPickDlg.ActiveColor;
InfoForm.ed6.Color := ColorPickDlg.ActiveColor;
InfoForm.ed7.Color := ColorPickDlg.ActiveColor;
InfoForm.ed8.Color := ColorPickDlg.ActiveColor;
InfoForm.ed9.Color := ColorPickDlg.ActiveColor;
InfoForm.ed10.Color := ColorPickDlg.ActiveColor;
InfoForm.ed11.Color := ColorPickDlg.ActiveColor;
InfoForm.ed12.Color := ColorPickDlg.ActiveColor;
InfoForm.ed13.Color := ColorPickDlg.ActiveColor;
InfoForm.ed14.Color := ColorPickDlg.ActiveColor;
InfoForm.ed15.Color := ColorPickDlg.ActiveColor;
InfoForm.ed16.Color := ColorPickDlg.ActiveColor;
InfoForm.ed17.Color := ColorPickDlg.ActiveColor;
//License Window
LicForm.Color := ColorPickDlg.ActiveColor;
LicForm.fr.Color := ColorPickDlg.ActiveColor;
LicForm.ReadMe.Color := ColorPickDlg.ActiveColor;
//Go To Window
GoToForm.Color := ColorPickDlg.ActiveColor;
//Intergration Window
IntForm.Color := ColorPickDlg.ActiveColor;
IntForm.fr1.Color := ColorPickDlg.ActiveColor;
IntForm.fr2.Color := ColorPickDlg.ActiveColor;
//Options Window
ToolForm.Color := ColorPickDlg.ActiveColor;
ToolForm.fr1.Color := ColorPickDlg.ActiveColor;
ToolForm.fr2.Color := ColorPickDlg.ActiveColor;
ToolForm.fr3.Color := ColorPickDlg.ActiveColor;
ToolForm.fr4.Color := ColorPickDlg.ActiveColor;
ToolForm.fr5.Color := ColorPickDlg.ActiveColor;
ToolForm.fr6.Color := ColorPickDlg.ActiveColor;
ToolForm.fr7.Color := ColorPickDlg.ActiveColor;
ToolForm.fr8.Color := ColorPickDlg.ActiveColor;
ToolForm.fr9.Color := ColorPickDlg.ActiveColor;
ToolForm.fr10.Color := ColorPickDlg.ActiveColor;
ToolForm.fr11.Color := ColorPickDlg.ActiveColor;
ToolForm.fr12.Color := ColorPickDlg.ActiveColor;
ToolForm.fr13.Color := ColorPickDlg.ActiveColor;
ToolForm.fr14.Color := ColorPickDlg.ActiveColor;
ToolForm.fr15.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch1.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch2.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch3.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch4.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch5.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch6.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch7.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch8.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch9.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch10.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch11.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch12.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch13.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch14.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch15.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch16.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch17.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch18.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch19.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch20.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch21.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch22.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch23.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch24.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch25.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch26.Color := ColorPickDlg.ActiveColor;
ToolForm.Ch27.Color := ColorPickDlg.ActiveColor;
ToolForm.rb1.Color := ColorPickDlg.ActiveColor;
ToolForm.rb2.Color := ColorPickDlg.ActiveColor;
ToolForm.rb3.Color := ColorPickDlg.ActiveColor;
//Find Window
FindForm.Color := ColorPickDlg.ActiveColor;
FindForm.fr1.Color := ColorPickDlg.ActiveColor;
FindForm.fr2.Color := ColorPickDlg.ActiveColor;
//Open Window
OpenForm.Color := ColorPickDlg.ActiveColor;
OpenForm.fr1.Color := ColorPickDlg.ActiveColor;
//Screen Shot Window
ScreenForm.Color := ColorPickDlg.ActiveColor;
ScreenForm.fr1.Color := ColorPickDlg.ActiveColor;
ScreenForm.fr2.Color := ColorPickDlg.ActiveColor;
//Favorites Window
FavForm.Color := ColorPickDlg.ActiveColor;
FavForm.fr1.Color := ColorPickDlg.ActiveColor;
//Add Favorites Window
AddFavForm.Color := ColorPickDlg.ActiveColor;
//Add Favorites Window 2
AddFav2Form.Color := ColorPickDlg.ActiveColor;
//Save Base Window
SaveBaseForm.Color := ColorPickDlg.ActiveColor;
SaveBaseForm.ShowFuturePathEdit.Color := ColorPickDlg.ActiveColor;
//File Information Window
FileInfoForm.Color := ColorPickDlg.ActiveColor;
FileInfoForm.fr1.Color := ColorPickDlg.ActiveColor;
//Tip of the Day Window
TipForm.Color := ColorPickDlg.ActiveColor;
TipForm.fr1.Color := ColorPickDlg.ActiveColor;
TipForm.fr1.Color := ColorPickDlg.ActiveColor;
//Logs Window
LogForm.Color := ColorPickDlg.ActiveColor;
LogForm.Fr1.Color := ColorPickDlg.ActiveColor;
end;

procedure TToolForm.tx4Click(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if MainForm.RusItem.Checked then
begin
if Application.MessageBox('Восстановить цвет окон по умолчанию?',
'FlashCore',
mb_IconQuestion + mb_YesNo) = idYes then
ColorPickDlg.ActiveColor := clWhite;
ColorPickDlg.OnChanged(Self);
end;
if MainForm.EnItem.Checked then
begin
if Application.MessageBox('Restore a color of windows by default?',
'FlashCore',
mb_IconQuestion + mb_YesNo) = idYes then
ColorPickDlg.ActiveColor := clWhite;
ColorPickDlg.OnChanged(Self);
end;
end;

procedure TToolForm.Ch27Click(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if MainForm.RusItem.Checked then
if Ch27.Checked then
Application.MessageBox('Перезапустите FlashCore для изменения настроек!' +
#13 + 'Для того, чтобы восстановить горячие клавиши' +
#13 + 'нажмите комбинацию клавиш Ctrl+Shift+H.',
'FlashCore',
mb_IconExclamation + mb_OK);
if MainForm.RusItem.Checked then
if not Ch27.Checked then
Application.MessageBox('Перезапустите FlashView для изменения настроек!',
'FlashCore',
mb_IconExclamation + mb_OK);
if MainForm.EnItem.Checked then
if Ch27.Checked then
Application.MessageBox('Changes will take effect when you restart FlashCore!' +
#13 + 'If you want to restore of hot keys program press' +
#13 + 'combination of Ctrl+Shift+H.',
'FlashCore',
mb_IconExclamation + mb_OK);
if MainForm.EnItem.Checked then
if not Ch27.Checked then
Application.MessageBox('Changes will take effect when you restart FlashCore!',
'FlashCore',
mb_IconExclamation + mb_OK);
end;

procedure TToolForm.CreateBtClick(Sender: TObject);
var
Pt:TPoint;
begin
Pt.x := CreateBt.Width;
Pt.y := 0;
Pt := CreateBt.ClientToScreen(Pt);
ShortcutMenu.Popup(Pt.x, Pt.y)
end;

procedure TToolForm.CancelClick(Sender: TObject);
begin
Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
try
Ch1.Checked := Ini.ReadBool('Parameters', 'Minimized to tray', Ch1.Checked);
Ch2.Checked := Ini.ReadBool('Parameters', 'Tray icon only at minimized', Ch2.Checked);
Ch3.Checked := Ini.ReadBool('Parameters', 'Save window size', Ch3.Checked);
Ch4.Checked := Ini.ReadBool('Parameters', 'Save window position', Ch4.Checked);
Ch5.Checked := Ini.ReadBool('Parameters', 'Run program with Windows OS start up', Ch5.Checked);
Ch6.Checked := Ini.ReadBool('Parameters', 'Show hint in the status bar', Ch6.Checked);
Ch7.Checked := Ini.ReadBool('Parameters', 'Device Font', Ch7.Checked);
Ch8.Checked := Ini.ReadBool('Parameters', 'Amination of window on opening and closing', Ch8.Checked);
Ch9.Checked := Ini.ReadBool('Parameters', 'Hide messages on creating shortcuts', Ch9.Checked);
Ch10.Checked := Ini.ReadBool('Parameters', 'Computer off', Ch10.Checked);
Ch11.Checked := Ini.ReadBool('Parameters', 'Confirm before off computer', Ch11.Checked);
Ch12.Checked := Ini.ReadBool('Parameters', 'Confirm', Ch12.Checked);
Ch13.Checked := Ini.ReadBool('Parameters', 'Other windows in the task bar', Ch13.Checked);
Ch14.Checked := Ini.ReadBool('Parameters', 'Pause video when minimized', Ch14.Checked);
Ch15.Checked := Ini.ReadBool('Parameters', 'Use of XP menu themes', Ch15.Checked);
Ch16.Checked := Ini.ReadBool('Parameters', 'Move window of area client', Ch16.Checked);
Ch17.Checked := Ini.ReadBool('Parameters', 'Use of screen snap', Ch17.Checked);
Ch18.Checked := Ini.ReadBool('Parameters', 'Images in the menu', Ch18.Checked);
Ch19.Checked := Ini.ReadBool('Parameters', 'FlashView context menu', Ch19.Checked);
Ch20.Checked := Ini.ReadBool('Parameters', 'Windows only in the client area', Ch20.Checked);
Ch21.Checked := Ini.ReadBool('Parameters', 'Hide status bar on full screen', Ch21.Checked);
Ch22.Checked := Ini.ReadBool('Parameters', 'Hide seek bar on full screen', Ch22.Checked);
Ch23.Checked := Ini.ReadBool('Parameters', 'Status bar context menu', Ch23.Checked);
Ch24.Checked := Ini.ReadBool('Parameters', 'Start on full screen', Ch24.Checked);
Ch25.Checked := Ini.ReadBool('Parameters', 'Drag and Drop', Ch25.Checked);
Ch26.Checked := Ini.ReadBool('Parameters', 'Full screen on play file', Ch26.Checked);
Ch27.Checked := Ini.ReadBool('Parameters', 'Disabled of hot keys', Ch27.Checked);
rb1.Checked := Ini.ReadBool('Parameters', 'Flash - FileName', rb1.Checked);
rb2.Checked := Ini.ReadBool('Parameters', 'FileName - Flash', rb2.Checked);
rb3.Checked := Ini.ReadBool('Parameters', 'Program name', rb3.Checked);
AlignBox.ItemIndex := Ini.ReadInteger('Parameters', 'Align', AlignBox.ItemIndex);
TextName.Text := Ini.ReadString('Parameters', 'Shortcut name', TextName.Text);
ColorPickDlg.ActiveColor := Ini.ReadInteger('Parameters', 'Color', ColorPickDlg.ActiveColor);
except
end;
end;

procedure TToolForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.


