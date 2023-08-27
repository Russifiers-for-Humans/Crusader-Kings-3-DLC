; Инструкция https://jrsoftware.org/ishelp/index.php

; Всегда меняются
#define GameName "Crusader Kings 3"                                          ; Название игры
#define GameNameDash "Crusader-Kings-3"                                          ; Название игры без пробелов
#define GameNameEXE "ck3"                                                              ; Название exe файла игры
#define GameVer "1.10"                                                                     ; Версия игры
#define GameAppIdSteam "1158310"                                                             ; Ид игры в стиме
; От ситуации зависит
#define AppDescription "DLC для Crusader Kings 3"                                     ; Описание программы
#define Typ "DLC"                                                                    ; Тип приложения
; Практически никогда не меняется
#define AppVer "2"                                                                        ; Версия установщика
#define Platz "C:\Users\TeMeR\Documents\GitHub\"                                                    ; Место
; Константы
#define Copyright "Folk"                                                                  ; (констант)Копирайт
#define AppPublisher "Russifiers for Humans"                                              ; (констант)Название инициативы
#define AppPublisherDash "Russifiers-for-Humans"                                              ; (констант)Название инициативы
#define PublisherURL "https://steamcommunity.com/id/TeMeR55"                              ; (констант)Ссылка на автора
#define AppURL "https://github.com/" + AppPublisherDash + "/" +GameNameDash + "-" + Typ +"/releases"        ; Ссылка на руководство
; Сложные переменные  
#define Location Platz + "\" + GameNameDash + "-" + Typ                                       ; Место нахождение соурса
#define OriginalNameSetup Typ + "-" + GameNameDash                        ; Оригинальное наименование приложения
#define AppNameAndDescript GameName + " - " + AppDescription                              ; Название программы и описание
#define ProductVerName AppNameAndDescript + " версии " + GameVer                             ; Название программы для какой версии игры в системе

#define UnArcivProg "7zG.EXE"
#define FolderUnArcivProg "7z"

[Setup]
;Номер приложения для его удаление лучше все время не забывать разный совать. Проверка уникальный для: Crusader Kings 3 DLC
AppId={{85264722-091D-4920-981E-939C9873B68D}
//--------------------------------------App's information and version--------------------------------------\\
;Свойства приложения
AppName={#AppNameAndDescript}                                                   
AppVersion={#AppVer}
AppVerName={#ProductVerName}
AppCopyright={#Copyright}
AppContact={#PublisherURL}
AppComments={#Typ}
AppPublisher={#AppPublisher}
AppPublisherURL={#PublisherURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
AppReadmeFile={#AppURL}
VersionInfoCompany={#AppPublisher}
VersionInfoCopyright={#Copyright}
VersionInfoDescription={#AppDescription}
VersionInfoOriginalFileName={#OriginalNameSetup}  
VersionInfoProductName={#ProductVerName}
VersionInfoProductTextVersion={#AppVer}
VersionInfoVersion={#AppVer}     
//--------------------------------------Options--------------------------------------\\
; Если установлено значение «да», программа установки отобразит флажок «Не создавать папку в меню «Пуск»
AllowNoIcons=yes
; Имя папки в меню «Пуск»
DefaultGroupName={#AppPublisher}
; Путь по умолчанию
DefaultDirName={code:GetInstallationPath}
; Название установщика
OutputBaseFilename={#OriginalNameSetup}
; Если установлено значение «нет», отключает уведомление об "Существующей папке"
DirExistsWarning=no
; Если установлено значение «да», включает уведомление об "Не существующей папке"
EnableDirDoesntExistWarning=yes
;Если установлено значение «нет», включает страницу "Мастер приветствует"
DisableWelcomePage=no    
;Если установлено значение «нет», включает страницу "Спасибо за установку"
DisableFinishedPage=no
//--------------------------------------Compression--------------------------------------\\
; Метод сжатия
Compression=lzma2/ultra64
; Если установлено значение «да»,включает сжатие в один поток(лучше сжимает, но проблем больше) 
SolidCompression=yes
LZMAUseSeparateProcess=yes
LZMADictionarySize=1048576
LZMANumFastBytes=273
//--------------------------------------Files--------------------------------------\\
;Путь к фалу Лицензии
LicenseFile={#Location}\Licence.rtf
;Путь к фалу Описание
InfoBeforeFile={#Location}\Description.rtf                      
;InfoAfterFile=infoafter.txt
;Путь к фалу Иконка
SetupIconFile={#Location}\Icon.ico
;Путь к фалу Сетап
OutputDir={#Location}\
;Путь к фалу Картинки
WizardImageFile={#Location}\Pic.bmp
;Путь к фалу Картинки
WizardSmallImageFile={#Location}\Pic.bmp

[Components]
Name: "crack"; Description: "Crack"; Flags: checkablealone; Types: full compact
Name: "dlc"; Description: "DLC";                                Flags: checkablealone; Types: full
Name: "dlc\001"; Description: "Garments of the Holy Roman Empire";    Flags: checkablealone; Types: full compact
Name: "dlc\002"; Description: "Fashion of the Abbasid Court";       Flags: checkablealone; Types: full compact
Name: "dlc\003"; Description: "The Northern Lords";      Flags: checkablealone; Types: full compact
Name: "dlc\004"; Description: "The Royal Court";   Flags: checkablealone; Types: full compact
Name: "dlc\005"; Description: "The Fate of Iberia";       Flags: checkablealone; Types: full compact
Name: "dlc\006"; Description: "Friends and Foes";       Flags: checkablealone; Types: full compact
Name: "dlc\007"; Description: "Tours and Tournaments";       Flags: checkablealone; Types: full compact
Name: "dlc\008"; Description: "Elegance of the Empire";       Flags: checkablealone; Types: full compact
Name: "dlc\009"; Description: "Wards and Wardens";       Flags: checkablealone; Types: full compact

[Files]
; Ресурсы  ExternalSize - cmd dir
Source: {#Location}\{#FolderUnArcivProg}\*; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: "{tmp}\crack.zip";                                  DestDir: "{tmp}"; Components: crack;   Flags: external deleteafterinstall; ExternalSize:  478133
Source: "{tmp}\dlc001_preorder.zip";     DestDir: "{tmp}"; Components: dlc\001; Flags: external deleteafterinstall; ExternalSize: 85302
Source: "{tmp}\dlc002_sp_day1.zip";             DestDir: "{tmp}"; Components: dlc\002; Flags: external deleteafterinstall; ExternalSize:  65778
Source: "{tmp}\dlc003_fp1.zip";       DestDir: "{tmp}"; Components: dlc\003; Flags: external deleteafterinstall; ExternalSize: 34650660
Source: "{tmp}\dlc004_ep1.zip";    DestDir: "{tmp}"; Components: dlc\004; Flags: external deleteafterinstall; ExternalSize:  44750958
Source: "{tmp}\dlc005_fp2.zip";        DestDir: "{tmp}"; Components: dlc\005; Flags: external deleteafterinstall; ExternalSize:  8482793
Source: "{tmp}\dlc006_bp1.zip";        DestDir: "{tmp}"; Components: dlc\006; Flags: external deleteafterinstall; ExternalSize:  9443596
Source: "{tmp}\dlc007_ep2.zip";        DestDir: "{tmp}"; Components: dlc\007; Flags: external deleteafterinstall; ExternalSize:  38969184
Source: "{tmp}\dlc008_sp2.zip";        DestDir: "{tmp}"; Components: dlc\008; Flags: external deleteafterinstall; ExternalSize:  80844
Source: "{tmp}\dlc009_bp2.zip";        DestDir: "{tmp}"; Components: dlc\009; Flags: external deleteafterinstall; ExternalSize:  17622893

[Icons]
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:ProgramOnTheWeb,{#ProductVerName}}"; Filename: "{#AppURL}"
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:UninstallProgram,{#ProductVerName}}"; Filename: "{uninstallexe}"
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{#GameName}"; Filename: "{app}\{#GameNameEXE}.exe"; WorkingDir: "{app}";
;Ярлык
Name: "{userdesktop}\Switcher Spacewar for {#GameName}"; Filename: "{app}\binaries\Switcher Spacewar.exe"; WorkingDir: "{app}\binaries\"; Tasks: DesktopIcon;

[Tasks]
Name: "DesktopIcon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Components: crack

[Run]
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\crack.zip -y -o""{app}\binaries\""";                                       Components: crack  
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc001_preorder.zip  -y -o""{app}\game\dlc\""";        Components: dlc\001
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc002_sp_day1.zip  -y -o""{app}\game\dlc\""";        Components: dlc\002
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc003_fp1.zip  -y -o""{app}\game\dlc\""";        Components: dlc\003
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc004_ep1.zip  -y -o""{app}\game\dlc\""";        Components: dlc\004
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc005_fp2.zip  -y -o""{app}\game\dlc\""";        Components: dlc\005
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc006_bp1.zip  -y -o""{app}\game\dlc\""";        Components: dlc\006
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc007_ep2.zip  -y -o""{app}\game\dlc\""";        Components: dlc\007
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc008_sp2.zip  -y -o""{app}\game\dlc\""";        Components: dlc\008
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc009_bp2.zip  -y -o""{app}\game\dlc\""";        Components: dlc\009

[UninstallDelete]
Type: files; 		  Name: "{app}\binaries\cream_api.ini";                                   Components: crack  
Type: files; 		  Name: "{app}\binaries\Emulator64.dll";                                  Components: crack  
Type: files; 		  Name: "{app}\binaries\LinkNeverDie_Com_64.dll";                         Components: crack  
Type: files; 		  Name: "{app}\binaries\steam_api64.dll";                                 Components: crack  
Type: files; 		  Name: "{app}\binaries\steam_api64_org_game.dll";                        Components: crack  
Type: files; 		  Name: "{app}\binaries\steam_api64_org_launcher.dll";                    Components: crack  
Type: files; 		  Name: "{app}\binaries\SWconfig.ini";                                    Components: crack  
Type: files; 		  Name: "{app}\binaries\Switcher Spacewar.exe";                           Components: crack  
;Type: files; 		  Name: "{app}\EOSSDK-Win64-Shipping.dll";                       Components: crack  
;Type: files; 		  Name: "{app}\EOSSDK-Win64-Shipping_o.dll";                     Components: crack  
;Type: files; 		  Name: "{app}\ScreamAPI.json";                                  Components: crack  
Type: filesandordirs; Name: "{app}\game\dlc\dlc001_preorder";      Components: dlc\001
Type: filesandordirs; Name: "{app}\game\dlc\dlc002_sp_day1";              Components: dlc\002
Type: filesandordirs; Name: "{app}\game\dlc\dlc003_fp1";        Components: dlc\003
Type: filesandordirs; Name: "{app}\game\dlc\dlc004_ep1";     Components: dlc\004
Type: filesandordirs; Name: "{app}\game\dlc\dlc005_fp2";         Components: dlc\005
Type: filesandordirs; Name: "{app}\game\dlc\dlc006_bp1";         Components: dlc\006
Type: filesandordirs; Name: "{app}\game\dlc\dlc007_ep2";         Components: dlc\007
Type: filesandordirs; Name: "{app}\game\dlc\dlc008_sp2";         Components: dlc\008
Type: filesandordirs; Name: "{app}\game\dlc\dlc009_bp2";         Components: dlc\009

[Code]
var
  InstallationPath: string;

function GetInstallationPath(Param: string): string;
    
begin
  { Обнаруженный путь кэшируется, так как он вызывается несколько раз }
  
  if InstallationPath = '' then
  begin
    if RegQueryStringValue(
         HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App {#GameAppIdSteam}',
         'InstallLocation', InstallationPath) then
    begin
      Log('Detected Steam installation: ' + InstallationPath);
    end
      else
    begin
      if IsWin64 then InstallationPath := ExpandConstant('{commonpf64}')
      else InstallationPath := ExpandConstant('{commonpf32}');
      InstallationPath:=InstallationPath +'/{#GameName}';
      Log('No installation detected, using the default path: ' + InstallationPath);
    end;
  end;
  Result := InstallationPath;
end;

//Downloader
var
  DownloadPage: TDownloadWizardPage;

function OnDownloadProgress(const Url, FileName: String; const Progress, ProgressMax: Int64): Boolean;
begin
  if Progress = ProgressMax then
    Log(Format('Successfully downloaded file to {tmp}: %s', [FileName]));
  Result := True;
end;

procedure InitializeWizard;
begin
  DownloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), @OnDownloadProgress);
end;
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if CurPageID = wpReady then begin
    DownloadPage.Clear;// sha256 7z
	if IsComponentSelected('crack') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.9/crack.zip', 'crack.zip', '2df43bd616f39b0eb971dd503e518cf6c89ae24d19f94c51c8120793bf9e8e24');
    end;
  if IsComponentSelected('dlc/001') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.9/dlc001_preorder.zip', 'dlc001_preorder.zip', 'f121fd9b3a3b98d06e3835ace06f10c32ca751b3d63912804df32b224522524b');
    end;
	if IsComponentSelected('dlc/002') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.9/dlc002_sp_day1.zip', 'dlc002_sp_day1.zip', '8905e7f40cf258c8b655e3aaad0bcc3e6e1d1c84fb88e768bfac723338f8afde');
    end;
	if IsComponentSelected('dlc/003') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.9/dlc003_fp1.zip', 'dlc003_fp1.zip', '5739a07daed1fe765a2f4530754a7eaaa753e6f43db953e704badf939cd4650f');
    end;
	if IsComponentSelected('dlc/004') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.10/dlc004_ep1.zip', 'dlc004_ep1.zip', '25eefdc2e82052ba5463d4e955a46b4eb8d201e44cf5f15faeb35294f3322a6e');
    end;
	if IsComponentSelected('dlc/005') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.9/dlc005_fp2.zip', 'dlc005_fp2.zip', '6510319df102f983402b205e021bc95b25f5b9a941c71a04cd9b9ffd63af2fcc');
    end;
	if IsComponentSelected('dlc/006') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.9/dlc006_bp1.zip', 'dlc006_bp1.zip', '3a99766021e113df68c52bf37fc018627c66867beb8ae0d4de098d650e02672e');
    end;
	if IsComponentSelected('dlc/007') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.9/dlc007_ep2.zip', 'dlc007_ep2.zip', '8a38e895fbc0208b1337f973ddd3c64a5f8eb305b2fd9e39e6e2b02c7b702323');
    end;
	if IsComponentSelected('dlc/008') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.10/dlc008_sp2.zip', 'dlc008_sp2.zip', '0ceaf94be86a080c780f5bf838eb72310156948e027baf95559e5f3372483a4d');
    end;
	if IsComponentSelected('dlc/009') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.10/dlc009_bp2.zip', 'dlc009_bp2.zip', '65492983c1d988fea4026b9e8ba367082ae4a9b39ae763cc7c8a43d6de7f6bee');
    end;
    DownloadPage.Show;
    try
      try
        DownloadPage.Download; // This downloads the files to {tmp}
        Result := True;
      except
        if DownloadPage.AbortedByUser then
          Log('Aborted by user.')
        else
          SuppressibleMsgBox(AddPeriod(GetExceptionMessage), mbCriticalError, MB_OK, IDOK);
        Result := False;
      end;
    finally
      DownloadPage.Hide;
    end;
  end else
    Result := True;
end;

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl";
Name: "english"; MessagesFile: "compiler:Default.isl";