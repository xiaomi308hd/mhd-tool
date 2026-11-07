[Setup]
AppName=MihdTool
AppVersion=1.1
DefaultDirName={localappdata}\MihdTool
PrivilegesRequired=lowest
Uninstallable=no
DisableWelcomePage=yes
DisableDirPage=yes
DisableProgramGroupPage=yes
DisableReadyPage=yes
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
// Bỏ qua các trang xác nhận để cài đặt chạy ngay khi mở file
function ShouldSkipPage(PageID: Integer): Boolean;
begin
  Result := (PageID = wpWelcome) or (PageID = wpLicense) or
            (PageID = wpInfoBefore) or (PageID = wpSelectDir) or
            (PageID = wpSelectProgramGroup) or (PageID = wpSelectTasks) or
            (PageID = wpReady) or (PageID = wpInfoAfter) or
            (PageID = wpFinished);
end;

// Dự phòng: nếu trang Ready vẫn hiện thì tự bấm Install
procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpReady then
    WizardForm.NextButton.OnClick(WizardForm.NextButton);
end;
