# PDF to Image — Claude Project Context

## Repositories
- **PDFtoIMAGE** (`NatetheGreat1911/PDFtoIMAGE`) — the main/published repo. All final code lives here.
- **PDFconverter** (`NatetheGreat1911/PDFconverter`) — original development repo. Treat as legacy; changes go to PDFtoIMAGE.

## Source file
- `main.py` — the full PySide6 GUI app. This is the canonical source. The old name `app.py` (from PDFconverter) is no longer used.

## Build process

### 1. PyInstaller (builds the exe)
Run from `C:\Users\Nate\build\PDFtoIMAGE`:
```
pyinstaller "PDF to Image.spec"
```
- Output: `dist\PDF to Image.exe`
- Poppler bundled from: `C:\Users\Nate\Downloads\Release-25.12.0-0\poppler-25.12.0\Library\bin`
- UPX is **disabled** (`upx=False`) — UPX compression was causing Smart App Control false positives
- Always pull the latest `main.py` from GitHub into the build dir before running PyInstaller

### 2. Inno Setup (wraps exe into installer)
```
"C:\Program Files (x86)\Inno Setup 6\ISCC.exe" installer\PDF_to_Image_Setup.iss
```
- Output: `installer_output\PDF_to_Image_Setup_v{version}.exe`
- Bump `AppVersion` and `OutputBaseFilename` in the `.iss` file before building

### 3. Release checklist
- [ ] Update version string in `main.py`: `setWindowTitle` and the `Version` label in `_show_about`
- [ ] Update `CHANGELOG.md`
- [ ] Update `AppVersion` and `OutputBaseFilename` in `installer/PDF_to_Image_Setup.iss`
- [ ] Pull latest `main.py` from GitHub into build dir before running PyInstaller
- [ ] Run PyInstaller then Inno Setup
- [ ] `gh release create vX.Y` and upload installer
- [ ] Push updated spec file to GitHub

## Key decisions & history
- **v1.1** — first GUI release (PySide6, Convert + Download tabs, PowerPoint export)
- **v1.2** — removed "Clear Output Folder" button (risk of accidental data loss for non-technical users); UPX disabled to reduce SAC false positives
- **License** — MIT. The original `app.py` from PDFconverter had a proprietary header; that was wrong. PDFtoIMAGE uses MIT throughout.
- **Smart App Control** — v1.2 blocked on machines with SAC set to On. A false-positive report was filed with Microsoft on 2026-05-13. Once cleared, installs will work without a workaround.
- **Code signing** — not in place. This is a free/open-source app and Nate does not want to pay for a cert. Microsoft submission is the workaround for SAC blocks.

## Dependencies
- Python 3.13
- PySide6 6.11
- pdf2image 1.17
- python-pptx 1.0.2
- PyInstaller 6.19
- Poppler 25.12.0 (bundled in exe)
- Inno Setup 6 (installer, Windows only)

## Publisher
- Nate Rudquist — solo developer, MIT license, Ko-fi: naterudquist
- Email: naterudquist@yahoo.com
