program Fplayer;

uses
  Forms,
  NP in 'NP.pas' {MainForm},
  OP in 'OP.pas' {ToolForm},
  IP in 'IP.pas' {IntForm},
  AP in 'AP.pas' {LicForm},
  LP in 'LP.pas' {AboutForm},
  HP in 'HP.pas' {InfoForm},
  HKP in 'HKP.pas' {HKForm},
  GP in 'GP.pas' {GoToForm},
  FP in 'FP.pas' {FindForm},
  WP in 'WP.pas' {OpenForm},
  SHP in 'SHP.pas' {ScreenForm},
  FFP in 'FFP.pas' {FavForm},
  AFP in 'AFP.pas' {AddFavForm},
  AFP2 in 'AFP2.pas' {AddFav2Form},
  SBP in 'SBP.pas' {SaveBaseForm},
  FIP in 'FIP.pas' {FileInfoForm},
  TTP in 'TTP.pas' {TipForm},
  LPP in 'LPP.pas' {LogForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'FlashCore';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TTipForm, TipForm);
  Application.CreateForm(TToolForm, ToolForm);
  Application.CreateForm(TFindForm, FindForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TInfoForm, InfoForm);
  Application.CreateForm(TIntForm, IntForm);
  Application.CreateForm(TLicForm, LicForm);
  Application.CreateForm(THKForm, HKForm);
  Application.CreateForm(TGoToForm, GoToForm);
  Application.CreateForm(TOpenForm, OpenForm);
  Application.CreateForm(TScreenForm, ScreenForm);
  Application.CreateForm(TFavForm, FavForm);
  Application.CreateForm(TAddFavForm, AddFavForm);
  Application.CreateForm(TAddFav2Form, AddFav2Form);
  Application.CreateForm(TSaveBaseForm, SaveBaseForm);
  Application.CreateForm(TFileInfoForm, FileInfoForm);
  Application.CreateForm(TLogForm, LogForm);
  Application.Run;
end.
