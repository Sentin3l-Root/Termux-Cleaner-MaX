# 🧹 Termux Cleaner Pro

Professional advanced cleaner for Termux with safe mode, interactive menu, disk analysis, duplicate detection, and more.

## Features

- 🛡️ Safe mode (dry-run) by default
- 📊 Disk usage analysis
- 📦 Package cache cleaning (apt, pip, npm, yarn, cargo, go, gems)
- 📝 System logs cleanup
- 🗑️ User cache and history cleanup
- 🐍 Python `__pycache__` and `.pyc` removal
- 📁 node_modules detection with total size
- 🔍 SHA256 duplicate file scanner
- 📥 Old downloads cleanup (+90 days)
- 📏 Large files finder (>50 MB)
- 🗂️ Empty directories removal
- 📄 Markdown report generation
- 🔔 Optional Termux:API notifications
- ⚙️ Custom exclusion list (`~/.cleaner-ignore`)

## Quick install

```bash
pkg update -y && pkg install -y git coreutils findutils gawk
git clone https://github.com/YOUR-USER/termux-cleaner-pro.git
cd termux-cleaner-pro
chmod +x cleaner.sh
./cleaner.sh --dry-run
```

## Usage

```bash
./cleaner.sh --dry-run      # safe simulation
./cleaner.sh --apply        # real cleanup
./cleaner.sh --auto --apply # automatic
./cleaner.sh --report       # generate report
```

## License

MIT
