[Setup]
AppName=PDF to Image Converter
AppVersion=1.2
AppPublisher=Nate Rudquist
AppCopyright=Copyright (C) 2026 Nate Rudquist
DefaultDirName={autopf}\PDF to Image Converter
DefaultGroupName=PDF to Image Converter
OutputDir=..\installer_output
OutputBaseFilename=PDF_to_Image_Setup_v1.2
SetupIconFile=
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
LicenseFile=..\LICENSE
PrivilegesRequired=lowest
ArchitecturesInstallIn64BitMode=x64compatible

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop shortcut"; GroupDescription: "Additional icons:"; Flags: unchecked

[Files]
Source: "..\dist\PDF to Image.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\dist\README.txt"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\PDF to Image Converter"; Filename: "{app}\PDF to Image.exe"
Name: "{group}\Uninstall PDF to Image Converter"; Filename: "{uninstallexe}"
Name: "{autodesktop}\PDF to Image Converter"; Filename: "{app}\PDF to Image.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\PDF to Image.exe"; Description: "Launch PDF to Image Converter"; Flags: nowait postinstall skipifsilent
