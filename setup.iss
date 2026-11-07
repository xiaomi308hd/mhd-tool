[Setup]
AppName=MihdTool
AppVersion=1.2
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
const
  BM_CLICK = $00F5;

function PostMessage(hWnd: HWND; Msg: UINT; wParam: LongInt; lParam: LongInt): BOOL;
  external 'PostMessageW@user32.dll stdcall';

// Khi trang "Ready to Install" hiện ra, gửi lệnh bấm nút Install
procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpReady then
    PostMessage(WizardForm.NextButton.Handle, BM_CLICK, 0, 0);
end;
