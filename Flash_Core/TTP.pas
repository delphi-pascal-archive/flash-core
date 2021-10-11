unit TTP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, XPButton, XPLabel, IniFiles;

  type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

type
  TTipForm = class(TForm)
    TipText: TMemo;
    fr2: TPanel;
    OK: TXPButton;
    NextBt: TXPButton;
    BackBt: TXPButton;
    fr1: TPanel;
    BackImage: TImage;
    tx1: TXPLabel;
    Logo: TImage;
    tx2: TXPLabel;
    Image1: TImage;
    procedure NextBtClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BackBtClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private

    Sm: HWND;

    Ini: TIniFile;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

  public

  end;

var
  TipForm: TTipForm;

implementation

uses OP;

{$R *.dfm}

procedure TTipForm.NextBtClick(Sender: TObject);
begin
case NextBt.tag of
0: begin
NextBt.tag:=1;
TipText.Clear;
TipText.Text :=
'Получить исходный код проекта "FlashCore" может каждый. ' +
'Для этого нужно отправить на GoodWinNix@mail.ru письмо с ' +
'пометкой о высылке исходного кода.';
tx2.Caption := IntToStr(Nextbt.Tag) + '/7';
end;
1: begin
NextBt.tag:=2;
TipText.Clear;
TipText.Text :=
'Если просмотреть горячие клавиши программы в меню "Помощь", то можно ' +
'выполнять команды значительнее быстрее.';
tx2.Caption := IntToStr(Nextbt.Tag) + '/7';
end;
2: begin
NextBt.tag:=3;
TipText.Clear;
TipText.Text :=
'Чтобы произвести поиск swf-файлов в системе, нужно вызвать окно поиска клавишами ' +
'Ctrl+K или F3.';
tx2.Caption := IntToStr(Nextbt.Tag) + '/7';
end;
3: begin
NextBt.tag:=4;
TipText.Clear;
TipText.Text :=
'Маленькая хитрость. В меню "FlashCore" выберите пункт "Быстрое открытие..." ' +
'с нажатой клавишей Ctrl или пункт "Открыть файл..." с нажатой клавишей Shift.';
tx2.Caption := IntToStr(Nextbt.Tag) + '/7';
end;
4: begin
NextBt.tag:=5;
TipText.Clear;
TipText.Text :=
'Переместить открытый файл в программе в другую директорию можно с помощью ' +
'пункта "Переместить в папку..." в меню "FlashCore".';
tx2.Caption := IntToStr(Nextbt.Tag) + '/7';
end;
5: begin
NextBt.tag:=6;
TipText.Clear;
TipText.Text :=
'В окне "Информация о файле" можно просмотреть детальную информацию о файле.';
tx2.Caption := IntToStr(Nextbt.Tag) + '/7';
end;
6: begin
NextBt.tag:=7;
TipText.Clear;
TipText.Text :=
'Из скриншотов FlashCore получаются отличные фоновые рисунки. Нажмите клавиши ' +
'Ctrl+J или кликните два раза по строке состояния, для того, чтобы получить ' +
'скриншот текущего кадра.';
tx2.Caption := IntToStr(Nextbt.Tag) + '/7';
end;
7: begin
NextBt.tag:=0;
NextBt.OnClick(Self);
tx2.Caption := IntToStr(Nextbt.Tag) + '/7';
end;
end;

TipText.SetFocus;
end;

procedure TTipForm.OKClick(Sender: TObject);
begin
TipForm.Close;
end;

procedure TTipForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TipText.SetFocus;
end;

procedure TTipForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
TipForm.Close;
end;

procedure TTipForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ToolForm.Ch16.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TTipForm.FormShow(Sender: TObject);
begin
NextBt.Tag := NextBt.Tag - 1;
NextBt.OnClick(Self);
tx2.Caption := IntToStr(Nextbt.Tag) + '/7';
if ToolForm.Ch13.Checked then
SetWindowLong(TipForm.Handle, GWL_EXSTYLE,
GetWindowLOng(TipForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TTipForm.WMMoving(var msg: TWMMoving);
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

procedure TTipForm.FormDestroy(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, True);
TipForm.OnActivate := nil;
TipText.Free;
BackBt.Free;
NextBt.Free;
Logo.Free;
tx1.Free;
tx2.Free;
OK.Free;
end;

procedure TTipForm.FormCreate(Sender: TObject);
begin
Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
try
NextBt.Tag := Ini.ReadInteger('Parameters', 'Tip Position', NextBt.Tag);
except
end;
end;

procedure TTipForm.BackBtClick(Sender: TObject);
begin
if NextBt.Tag <= 1 then
begin
NextBt.Tag := 6;
NextBt.OnClick(Self);
end else
begin
NextBt.Tag := NextBt.Tag - 2;
NextBt.OnClick(Self);
end;
end;

procedure TTipForm.FormActivate(Sender: TObject);
begin
Sm := GetSystemMenu(Handle, False);
DeleteMenu(Sm, Sc_Restore, Mf_Bycommand);
DeleteMenu(Sm, Sc_Size, Mf_Bycommand);
DeleteMenu(Sm, Sc_Minimize, Mf_Bycommand);
DeleteMenu(Sm, Sc_Maximize, Mf_Bycommand);
end;

end.
