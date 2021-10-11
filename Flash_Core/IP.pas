unit IP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, LbStaticText, XPCheckBox, XPGroupBox, XPLabel,
  Registry, LbButton, XPButton, StdCtrls, XPEdit, IniFiles, ImgList,
  ExtCtrls;

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
  TIntForm = class(TForm)
    fr1: TXPGroupBox;
    fr2: TXPGroupBox;
    tx2: TXPLabel;
    ch3: TCheckBox;
    ch1: TCheckBox;
    ch2: TCheckBox;
    ch4: TCheckBox;
    ch5: TCheckBox;
    tx3: TXPLabel;
    tx4: TXPLabel;
    tx1: TXPLabel;
    CheckBt: TXPButton;
    InputText: TXPEdit;
    fr4: TPanel;
    logo1: TImage;
    logo2: TImage;
    fr3: TPanel;
    Logo3: TImage;
    OK: TXPButton;
    tx5: TXPLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBtClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure OKClick(Sender: TObject);

  private

    Sm: HWND;

    Ini: TIniFile;

    reg: TRegistry;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;

  public
  
  end;

var
  IntForm: TIntForm;

implementation

uses NP, OP;

{$R *.dfm}

procedure TIntForm.FormShow(Sender: TObject);
var
Reg: TRegistry;
begin
Reg := TRegistry.Create;
with Reg do begin
RootKey := HKEY_LOCAL_MACHINE;
if not reg.KeyExists
('\Software\Microsoft\Internet Explorer\Extensions\{76D16F4D-51DF-4207-BE32-B8854498B2B4}\')then
ch1.Checked := False else
ch1.Checked := True;
if not reg.KeyExists
('\Software\Microsoft\Internet Explorer\Extensions\{F8211C9C-6858-4302-A88E-9383553F78D1}\')then
ch2.Checked := False else
ch2.Checked := True;
Reg := TRegistry.Create;
with Reg do begin
RootKey := HKEY_CLASSES_ROOT;
if not reg.KeyExists
('\*\Shell\FlashCore\Command\')then
ch3.Checked := False else
ch3.Checked := True;
end;
InputText.Height := 19;
if ToolForm.Ch13.Checked then
SetWindowLong(IntForm.Handle, GWL_EXSTYLE,
GetWindowLOng(IntForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;
if ch3.Checked then
InputText.Enabled := False else
InputText.Enabled := True;
end;

procedure TIntForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
OK.OnClick(Self);
end;

procedure TIntForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TIntForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
IntForm.OnActivate := nil;
InputText.Free;
CheckBt.Free;
logo1.Free;
logo2.Free;
logo3.Free;
fr1.Free;
fr2.Free;
fr3.Free;
fr4.Free;
ch1.Free;
ch2.Free;
ch3.Free;
ch4.Free;
ch5.Free;
tx1.Free;
tx2.Free;
tx3.Free;
tx4.Free;
tx5.Free;
Ini.Free;
OK.Free;
end;

procedure TIntForm.FormCreate(Sender: TObject);
begin
Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
try
ch5.Checked := Ini.ReadBool('Parameters', 'Check as default program', ch5.Checked);
InputText.Text := Ini.ReadString('Parameters', 'Label into context menu', InputText.Text);
finally
end;
end;

procedure TIntForm.WMMoving(var msg: TWMMoving);
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

procedure TIntForm.CheckBtClick(Sender: TObject);
begin
Reg := TRegistry.Create;
with Reg do begin
reg.RootKey := HKEY_CLASSES_ROOT;
if not reg.KeyExists
('\.swf\')then
if MainForm.RusItem.Checked then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if Application.MessageBox('FlashCore не является программой по умолчанию для просмотра swf-файлов. Вы хотите сделать ее таковой?',
'FlashCore', mb_IconAsterisk + mb_YEsNO) = idYes then
begin
ch4.Checked := True;
reg := TRegistry.Create;
reg.RootKey := HKEY_CLASSES_ROOT;
reg.OpenKey('.swf\',true);
reg.WriteString('', 'swffile');
reg.CloseKey;
reg.OpenKey('swffile\DefaultIcon',true);
reg.WriteString('', ParamStr(0) + ', 0');
reg.CloseKey;
reg.OpenKey('swffile\shell\open\command', true);
reg.WriteString('', ParamStr(0) + ' "%1"');
reg.CloseKey;
reg.Free;
end
else
end;
end;
if not reg.KeyExists
('\.swf\')then
if MainForm.EnItem.Checked then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if Application.MessageBox('FlashCore is not set as the default program for the swf-files.'
+ #13 + 'Do you want to set FlashCore as default program?',
'FlashCore', mb_IconAsterisk + mb_YEsNO) = idYes then
begin
ch4.Checked := True;
reg := TRegistry.Create;
reg.RootKey := HKEY_CLASSES_ROOT;
reg.OpenKey('.swf\',true);
reg.WriteString('', 'swffile');
reg.CloseKey;
reg.OpenKey('swffile\DefaultIcon',true);
reg.WriteString('', ParamStr(0) + ', 0');
reg.CloseKey;
reg.OpenKey('swffile\shell\open\command', true);
reg.WriteString('', ParamStr(0) + ' "%1"');
reg.CloseKey;
reg.Free;
end
else
end;
if reg.KeyExists
('\.swf\')then
if MainForm.RusItem.Checked then
begin
ch4.Checked := True;
PostMessage(Handle, WM_USER + 1024, 0, 0);
Application.MessageBox('FlashCore уже является вашей программой по умолчанию.',
'Программа по умолчанию',
mb_IconExclamation + mb_OK);
end;
if reg.KeyExists
('\.swf\')then
if MainForm.EnItem.Checked then
begin
ch4.Checked := True;
PostMessage(Handle, WM_USER + 1024, 0, 0);
Application.MessageBox('FlashCore is already exists your program by default.',
'Default program',
mb_IconExclamation + mb_OK);
end;
end;

procedure TIntForm.ChangeMessageBoxPosition(var Msg: TMessage);
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
x := IntForm.Left + ((IntForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := IntForm.Top + ((IntForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

procedure TIntForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
OK.SetFocus;
end;

procedure TIntForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

procedure TIntForm.OKClick(Sender: TObject);
const
TagID_1 = '\{76D16F4D-51DF-4207-BE32-B8854498B2B4}\';
TagID_2 = '\{F8211C9C-6858-4302-A88E-9383553F78D1}\';
var
Reg: TRegistry;
ProgramPath: string;
RegKeyPath: string;
begin
ProgramPath := Application.ExeName;
Reg := TRegistry.Create;
try
with Reg do begin
RootKey := HKEY_LOCAL_MACHINE;
RegKeyPath := 'Software\Microsoft\Internet Explorer\Extensions';
OpenKey(RegKeyPath + TagID_1, True);
WriteString('ButtonText', 'FlashCore');
WriteString('MenuText', 'FlashCore');
WriteString('MenuStatusBar', 'Запустить FlashCore.');
WriteString('ClSid', '{1FBA04EE-3024-11d2-8F1F-0000F87ABD16}');
WriteString('Default Visible', 'Yes');
WriteString('Exec', ProgramPath);
WriteString('HotIcon', ',3');
WriteString('Icon', ',4');
end
finally
if not ch1.Checked then
Reg.DeleteKey
('\Software\Microsoft\Internet Explorer\Extensions\{76D16F4D-51DF-4207-BE32-B8854498B2B4}\');
Reg.CloseKey;
Reg.Free;
end;

ProgramPath := 'Mailto:GoodWinNix@mail.ru';
Reg := TRegistry.Create;
try
with Reg do begin
RootKey := HKEY_LOCAL_MACHINE;
RegKeyPath := 'Software\Microsoft\Internet Explorer\Extensions';
OpenKey(RegKeyPath + TagID_2, True);
WriteString('ButtonText', 'FlashCore отправить письмо');
WriteString('MenuText', 'FlashCore отправить письмо');
WriteString('MenuStatusBar', 'Отправить письмо автору программы FlashCore.');
WriteString('ClSid', '{1FBA04EE-3024-11d2-8F1F-0000F87ABD16}');
WriteString('Default Visible', 'Yes');
WriteString('Exec', ProgramPath);
WriteString('HotIcon', ',3');
WriteString('Icon', ',1');
end
finally
if not ch2.Checked then
Reg.DeleteKey
('\Software\Microsoft\Internet Explorer\Extensions\{F8211C9C-6858-4302-A88E-9383553F78D1}\');
Reg.CloseKey;
Reg.Free;
end;

if ch3.Checked then
InputText.Enabled := False else
InputText.Enabled := True;
if ch3.Checked then
begin
Reg:= TRegistry.Create;
Reg.RootKey := HKEY_CLASSES_ROOT;
Reg.OpenKey('*\Shell\FlashCore',true);
Reg.WriteString('','MyPro');
Reg.WriteString('',InputText.Text);
Reg.CloseKey;
Reg.OpenKey('*\Shell\FlashCore\command',true);
Reg.WriteString('','command');
Reg.WriteString('',paramstr(1) + application.ExeName);
Reg.CloseKey;
Reg.Free;
end else
if not ch3.Checked then
begin
Reg:= TRegistry.Create;
Reg.RootKey := HKEY_CLASSES_ROOT;
Reg.DeleteKey('*\Shell\FlashCore');
Reg.CloseKey;
Reg.Free;
end;

if ch4.Checked then
begin
reg := TRegistry.Create;
reg.RootKey := HKEY_CLASSES_ROOT;
reg.OpenKey('.swf\',true);
reg.WriteString('', 'swffile');
reg.CloseKey;
reg.OpenKey('swffile\DefaultIcon',true);
reg.WriteString('', ParamStr(0) + ', 0');
reg.CloseKey;
reg.OpenKey('swffile\shell\open\command', true);
reg.WriteString('', ParamStr(0) + ' "%1"');
reg.CloseKey;
reg.Free;
end else
if not ch4.Checked then
begin
reg := TRegistry.Create;
reg.RootKey := HKEY_CLASSES_ROOT;
reg.DeleteKey('.swf\');
reg.DeleteKey('swffile');
reg.Free;
end;

Ini.WriteBool('Parameters', 'Check as default program', ch5.Checked);
Ini.WriteString('Parameters', 'Label into context menu', InputText.Text);
end;

end.
