[Setup]
; Informazioni base
AppName=Elenco VIP Italiani
AppVersion=1.0
AppPublisher=Il Tuo Nome
; Percorso di destinazione: Cartella Documenti dell'utente / Elenco_VIP_Italiani
DefaultDirName={userdocs}\Elenco_VIP_Italiani
; Non serve creare la cartella nel menù start
DisableProgramGroupPage=yes
; Cartella e nome del file .exe finale
OutputDir=Output
OutputBaseFilename=Installa_Elenco_VIP
; Compressione massima
Compression=lzma
SolidCompression=yes
; Richiede solo permessi utente (non serve l'amministratore per scrivere in Documenti)
PrivilegesRequired=lowest

[Files]
; Diciamo all'installer quali file prendere dalla repo e dove metterli
Source: "index.html"; DestDir: "{app}"; Flags: ignoreversion
Source: "css\*"; DestDir: "{app}\css"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "js\*"; DestDir: "{app}\js"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
; Crea il collegamento sul Desktop che punta al file index.html
Name: "{userdesktop}\Elenco VIP Italiani"; Filename: "{app}\index.html"