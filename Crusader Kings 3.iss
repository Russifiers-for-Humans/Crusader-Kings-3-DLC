; Инструкция https://jrsoftware.org/ishelp/index.php

; Всегда меняются
#define GameName "Crusader Kings 3"                                          ; Название игры
#define GameNameDash "Crusader-Kings-3"                                          ; Название игры без пробелов
#define GameNameEXE "ck3"                                                              ; Название exe файла игры
#define GameVer "1.13.2"                                                                     ; Версия игры
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
Name: "dlc\010"; Description: "Legacy of Persia";       Flags: checkablealone; Types: full compact
Name: "dlc\011"; Description: "Legends of the Dead";       Flags: checkablealone; Types: full compact
Name: "dlc\012"; Description: "North African Attire";       Flags: checkablealone; Types: full compact
Name: "dlc\013"; Description: "Couture of the Capets";       Flags: checkablealone; Types: full compact
Name: "dlc\014"; Description: "Roads to Power";       Flags: checkablealone; Types: full compact

[Files]
; Ресурсы  ExternalSize - cmd dir
Source: {#Location}\{#FolderUnArcivProg}\*; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: "{tmp}\crack.zip";                  DestDir: "{tmp}"; Components: crack;   Flags: external deleteafterinstall; ExternalSize: 478186
Source: "{tmp}\dlc001_preorder.zip";        DestDir: "{tmp}"; Components: dlc\001; Flags: external deleteafterinstall; ExternalSize: 85302
Source: "{tmp}\dlc002_sp_day1.zip";         DestDir: "{tmp}"; Components: dlc\002; Flags: external deleteafterinstall; ExternalSize: 65778
Source: "{tmp}\dlc003_fp1.zip";             DestDir: "{tmp}"; Components: dlc\003; Flags: external deleteafterinstall; ExternalSize: 33404030
Source: "{tmp}\dlc004_ep1.zip";             DestDir: "{tmp}"; Components: dlc\004; Flags: external deleteafterinstall; ExternalSize: 21627041
Source: "{tmp}\dlc005_fp2.zip";             DestDir: "{tmp}"; Components: dlc\005; Flags: external deleteafterinstall; ExternalSize: 8390336
Source: "{tmp}\dlc006_bp1.zip";             DestDir: "{tmp}"; Components: dlc\006; Flags: external deleteafterinstall; ExternalSize: 9094789
Source: "{tmp}\dlc007_ep2.zip";             DestDir: "{tmp}"; Components: dlc\007; Flags: external deleteafterinstall; ExternalSize: 39060606
Source: "{tmp}\dlc008_sp2.zip";             DestDir: "{tmp}"; Components: dlc\008; Flags: external deleteafterinstall; ExternalSize: 80844
Source: "{tmp}\dlc009_bp2.zip";             DestDir: "{tmp}"; Components: dlc\009; Flags: external deleteafterinstall; ExternalSize: 6622558
Source: "{tmp}\dlc010_fp3.zip";             DestDir: "{tmp}"; Components: dlc\010; Flags: external deleteafterinstall; ExternalSize: 14147547
Source: "{tmp}\dlc011_ce1.zip";             DestDir: "{tmp}"; Components: dlc\011; Flags: external deleteafterinstall; ExternalSize: 14412164
Source: "{tmp}\dlc012_afr.zip";             DestDir: "{tmp}"; Components: dlc\012; Flags: external deleteafterinstall; ExternalSize: 100913
Source: "{tmp}\dlc013_sp3.zip";             DestDir: "{tmp}"; Components: dlc\013; Flags: external deleteafterinstall; ExternalSize: 64844
Source: "{tmp}\dlc014_ep3.zip";             DestDir: "{tmp}"; Components: dlc\014; Flags: external deleteafterinstall; ExternalSize: 19800467

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
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc010_fp3.zip  -y -o""{app}\game\dlc\""";        Components: dlc\010
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc011_ce1.zip  -y -o""{app}\game\dlc\""";        Components: dlc\011
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc012_afr.zip  -y -o""{app}\game\dlc\""";        Components: dlc\012
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc013_sp3.zip  -y -o""{app}\game\dlc\""";        Components: dlc\013
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\dlc014_ep3.zip  -y -o""{app}\game\dlc\""";        Components: dlc\014

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
Type: filesandordirs; Name: "{app}\game\dlc\dlc010_fp3";         Components: dlc\010
Type: filesandordirs; Name: "{app}\game\dlc\dlc011_ce1";         Components: dlc\011
Type: filesandordirs; Name: "{app}\game\dlc\dlc012_afr";         Components: dlc\012
Type: filesandordirs; Name: "{app}\game\dlc\dlc013_sp3";         Components: dlc\013
Type: filesandordirs; Name: "{app}\game\dlc\dlc014_ep3";         Components: dlc\014

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
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.13.2/crack.zip', 'crack.zip', 'c9f06c9fde09bc315aff15c0f9e56212fe96cdd235b3e7eafa9339f1ea00befa');
    end;
  if IsComponentSelected('dlc/001') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.9/dlc001_preorder.zip', 'dlc001_preorder.zip', 'f121fd9b3a3b98d06e3835ace06f10c32ca751b3d63912804df32b224522524b');
    end;
	if IsComponentSelected('dlc/002') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.9/dlc002_sp_day1.zip', 'dlc002_sp_day1.zip', '8905e7f40cf258c8b655e3aaad0bcc3e6e1d1c84fb88e768bfac723338f8afde');
    end;
	if IsComponentSelected('dlc/003') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.13.2/dlc003_fp1.zip', 'dlc003_fp1.zip', '3db466c74faf3d9aafb15312fdee356085e45ccd83f13f20ae9e89dd175bd83b');
    end;
	if IsComponentSelected('dlc/004') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.13.2/dlc004_ep1.zip', 'dlc004_ep1.zip', 'c5b5e73d1aa9b36f3c8ead8228a5a5b6184adfdae8772bdcd1cac79fdbd3de8c');
    end;
	if IsComponentSelected('dlc/005') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.13.2/dlc005_fp2.zip', 'dlc005_fp2.zip', '0e1ba9bb58956121d5dcded935a7ff04b37231176ac696d63ff5418242c72b17');
    end;
	if IsComponentSelected('dlc/006') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.13.2/dlc006_bp1.zip', 'dlc006_bp1.zip', '8042c676676a09c452fe1441da9c3f1e5f1e1bce6a1b214b24f4a439cbe64eb8');
    end;
	if IsComponentSelected('dlc/007') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.13.2/dlc007_ep2.zip', 'dlc007_ep2.zip', '5c19e3d8436e9b3da4e6a727101515a8862aba9a6d8117d7c837ac57e1c95f52');
    end;
	if IsComponentSelected('dlc/008') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.10/dlc008_sp2.zip', 'dlc008_sp2.zip', '0ceaf94be86a080c780f5bf838eb72310156948e027baf95559e5f3372483a4d');
    end;
	if IsComponentSelected('dlc/009') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.13.2/dlc009_bp2.zip', 'dlc009_bp2.zip', '4cadf1bfa40b965b1b02ec08bed2b38956ce069e2df446f982d3654cfe876345');
    end;
	if IsComponentSelected('dlc/010') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.13.2/dlc010_fp3.zip', 'dlc010_fp3.zip', 'a93c5f2ddb6db3247837349ccdfb6d1c6cc7d549c4a8fbadfcb847839a2f4903');
    end;
	if IsComponentSelected('dlc/011') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.13.2/dlc011_ce1.zip', 'dlc011_ce1.zip', 'c9ea6b2779f060124afadb2cfc39399d641218ee1ff9b46c312ac3d04bef05ca');
    end;
 	if IsComponentSelected('dlc/012') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.11.5/dlc012_afr.zip', 'dlc012_afr.zip', '15f6abe095702e50192ef359eb3f834d1936bebc4e98c579599d03991042a8e6');
    end;
 	if IsComponentSelected('dlc/013') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.11.5/dlc013_sp3.zip', 'dlc013_sp3.zip', '487d5768fd3d84940cb76999cf104f8e5225fd299a210e3a80068e406cad3307');
    end;
  if IsComponentSelected('dlc/014') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Crusader-Kings-3-DLC/releases/download/1.13.2/dlc014_ep3.zip', 'dlc014_ep3.zip', '6d32e76a0103de11895e1bf31c86f91f23ab4e26d0ef4c5ff5bb96acb1022b55');
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