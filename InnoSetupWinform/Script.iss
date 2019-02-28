#define ApplicationVersion GetFileVersion('bin\Release\InnoSetupWinform.exe')

[Setup]
AppId={{BAFAE73C-059A-4B59-9C44-4E14C52700F7}
AppName=InnoSetupSample
AppVerName=My Program 1.5
AppVersion={#ApplicationVersion}
AppPublisher=My Company, Inc.
AppPublisherURL=http://www.example.com/
AppSupportURL=http://www.example.com/
AppUpdatesURL=http://www.example.com/
DefaultDirName={pf}\InnoSetupWinform
DefaultGroupName=Projects
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes
OutputDir=..\InnoSetupWinform\bin\Release
VersionInfoVersion={#ApplicationVersion}
VersionInfoCompany=my company
DisableWelcomePage=False

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Run]
Filename: "{app}\InnoSetupWinform.exe"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,My Program}"

[Files]
Source: "bin\Release\InnoSetupWinform.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Release\InnoSetupWinform.exe.config"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{userdesktop}\InnoSetupWinform"; Filename: "{app}\InnoSetupWinform.exe"; WorkingDir: "{app}"; IconFilename: "{app}\InnoSetupWinform.exe"
Name: "{group}\InnoSetupWinform"; Filename: "{app}\InnoSetupWinform.exe"; WorkingDir: "{app}"; IconFilename: "{app}\InnoSetupWinform.exe"
