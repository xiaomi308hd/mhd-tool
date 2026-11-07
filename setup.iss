[Setup]
AppName=MihdTool
AppVersion=1.0
DefaultDirName={localappdata}\MihdTool
PrivilegesRequired=lowest
Uninstallable=no
DisableWelcomePage=yes
DisableDirPage=yes
DisableProgramGroupPage=yes
DisableReadyPage=no
DisableFinishedPage=yes
OutputDir=output
OutputBaseFilename=MihdTool-OneClick
SetupIconFile=logo.ico
Compression=lzma2/ultra64
SolidCompression=yes

[Files]
Source: "XiaomiTool\*"; DestDir: "{app}"; Flags: recursesubdirs ignoreversion

[Run]
Filename: "{app}\MihdTool.exe"; WorkingDir: "{app}"; Flags: nowait

[Code]
// Tự động bấm Next/Install ở các trang đầu để không cần thao tác
procedure CurPageChanged(CurPageID: Integer);
begin
  if (CurPageID = wpWelcome) or (CurPageID = wpReady) then
    WizardForm.NextButton.OnClick(WizardForm.NextButton);
end;
