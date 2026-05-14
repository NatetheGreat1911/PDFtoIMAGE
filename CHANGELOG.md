# Changelog

All notable changes to PDF to Image are documented here.

---

## [1.2] - 2026-05-13

### Removed
- **Clear Output Folder** button removed from the Convert tab — prevents accidental data loss for non-technical users

---

## [1.1] - 2026-04-19

Complete rewrite as a full GUI application.

### Added
- **Convert tab** — drag-and-drop PDFs and convert them to JPEG images with a progress bar
- **Download tab** — scan any web page for PDF links and bulk download them
- **URL pattern generator** — generate numbered URL lists with optional zero-padding (e.g. `file{n}.pdf`, start 1, end 100, pad 8 → `file00000001.pdf`)
- **Export to PowerPoint** — pack converted images into a `.pptx` file; splits automatically at 200 slides
- **One-click pipeline** — "Convert Downloaded Files" button sends downloaded PDFs straight to the Convert tab
- **Download log** — tracks already-downloaded files and skips them on repeat runs
- **Stop button** — cancel an in-progress download at any time
- Output folder picker with Browse button
- Dark theme UI built with PySide6
- Windows standalone `.exe` built with PyInstaller (Poppler bundled)

---

## [1.0] - 2026-04-17

### Added
- Initial release — command-line script
- Place PDFs in the `input/` folder and run the script to convert all pages to JPEG images
- Output organized into per-PDF subfolders inside `output/`
