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

[Files]
Source: "XiaomiTool\*"; DestDir: "{app}"; Flags: recursesubdirs ignoreversion

[Run]
Filename: "{app}\MihdTool.exe"; WorkingDir: "{app}"; Flags: nowait
