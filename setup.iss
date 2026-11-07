; Dùng Inno Setup. Mật mã được truyền từ GitHub Secret qua /DPass=...
#ifndef Pass
  #define Pass "doi-mat-ma"
#endif

[Setup]
AppName=MihdTool
AppVersion=1.0
DefaultDirName={localappdata}\MihdTool
PrivilegesRequired=lowest
Uninstallable=no
DisableDirPage=yes
DisableProgramGroupPage=yes
DisableReadyPage=yes
DisableFinishedPage=yes
OutputDir=output
OutputBaseFilename=MihdTool-OneClick
SetupIconFile=logo.ico
Compression=lzma2/ultra64
SolidCompression=yes
Password={#Pass}
Encryption=yes

[Files]
Source: "XiaomiTool\*"; DestDir: "{app}"; Flags: recursesubdirs ignoreversion

[Run]
Filename: "{app}\MihdTool.exe"; WorkingDir: "{app}"; Flags: nowait
