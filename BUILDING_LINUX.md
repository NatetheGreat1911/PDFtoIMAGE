# Building for Linux

## Prerequisites
Install these on your Linux machine:

```bash
# Ubuntu/Debian
sudo apt update
sudo apt install python3 python3-pip poppler-utils

# Fedora/RHEL
sudo dnf install python3 python3-pip poppler-utils
```

## Setup
1. Clone the repo or extract the project folder
2. Navigate to the project directory
3. Install Python dependencies:
```bash
pip3 install PySide6 pdf2image python-pptx pillow pyinstaller
```

## Run from source (easiest)
```bash
python3 main.py
```

## Compile to standalone executable (optional)
```bash
pyinstaller --onefile --windowed --name "PDF to Image" \
  --collect-all PySide6 \
  --hidden-import PIL.Image \
  --hidden-import PIL.JpegImagePlugin \
  --hidden-import PIL.PngImagePlugin \
  --hidden-import pdf2image \
  --hidden-import pptx \
  main.py
```

**Note:** Don't include the `--add-binary` for Poppler on Linux — the system Poppler from package manager is used automatically.

The executable will be in `dist/PDF to Image`

## Troubleshooting
- If Poppler errors occur, make sure `poppler-utils` is installed
- PySide6 may require additional Qt dependencies on some distros
- Run from source first to verify everything works before compiling
