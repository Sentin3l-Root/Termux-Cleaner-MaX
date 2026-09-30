# 🧹 Termux Cleaner Pro

<p align="center">
  <img src="https://img.shields.io/badge/version-2.0.0-blue?style=flat-square">
  <img src="https://img.shields.io/badge/license-MIT-green?style=flat-square">
  <img src="https://img.shields.io/badge/bash-5.0+-orange?style=flat-square">
  <img src="https://img.shields.io/badge/termux-supported-brightgreen?style=flat-square">
  <img src="https://img.shields.io/github/stars/TU-USUARIO/termux-cleaner-pro?style=flat-square">
</p>

<p align="center">
  <b>Limpiador profesional avanzado para Termux</b><br>
  <sub>Modo seguro, menú interactivo, análisis de disco, detección de duplicados y más.</sub>
</p>

---

## ✨ Características

- 🛡️ **Modo simulación por defecto** — no borra nada hasta que tú lo autorices
- 📊 **Análisis de disco** — identifica las carpetas más pesadas
- 📦 **Limpieza de paquetes** — apt, pip, npm, yarn, cargo, go, gems
- 📝 **Limpieza de logs** del sistema
- 🗑️ **Caché de usuario** e historiales
- 🐍 **Python** — elimina `__pycache__` y archivos `.pyc`
- 📁 **node_modules** — detecta y suma su peso total
- 🔍 **Duplicados** — escanea archivos por hash SHA256
- 📥 **Descargas viejas** — archivos con más de 90 días
- 📏 **Archivos grandes** — lista los >50 MB
- 🗂️ **Directorios vacíos** — los elimina con `rmdir` seguro
- 📄 **Reporte en Markdown** de cada ejecución
- 🔔 **Notificaciones** opcionales con Termux:API
- ⚙️ **Sistema de exclusiones** (`~/.cleaner-ignore`)
- 🔄 **Log rotado** automáticamente si supera 1 MB

---

## 📸 Capturas

<p align="center">
  <img src="assets/screenshot.png" alt="Menú principal" width="600">
</p>

---

## 📦 Instalación

### Opción rápida (una línea)

```bash
pkg update -y && pkg install -y git coreutils findutils gawk
git clone https://github.com/TU-USUARIO/termux-cleaner-pro.git
cd termux-cleaner-pro
chmod +x cleaner.sh
./cleaner.sh --dry-run
```

### Instalador automático

```bash
curl -fsSL https://raw.githubusercontent.com/TU-USUARIO/termux-cleaner-pro/main/install.sh | bash
```

### Instalación manual

```bash
# 1. Instala dependencias
pkg update -y
pkg install -y bash coreutils findutils gawk

# 2. Descarga el script
wget https://raw.githubusercontent.com/TU-USUARIO/termux-cleaner-pro/main/cleaner.sh -O ~/cleaner.sh
chmod +x ~/cleaner.sh

# 3. Ejecuta
~/cleaner.sh
```

---

## 🚀 Uso

### Modo simulación (recomendado la primera vez)

```bash
~/cleaner.sh --dry-run
```

### Modo real

```bash
~/cleaner.sh --apply
```

### Menú interactivo

```bash
~/cleaner.sh
```

### Limpieza automática

```bash
~/cleaner.sh --auto --apply
```

### Modo agresivo (borra node_modules, ~/.cache completo, etc.)

```bash
~/cleaner.sh --aggressive --apply
```

### Generar reporte

```bash
~/cleaner.sh --report
```

---

## 🔧 Opciones

| Opción | Descripción |
|---|---|
| `--dry-run` | Simula sin borrar (por defecto) |
| `--apply` | Ejecuta limpieza real |
| `--aggressive` | Habilita acciones agresivas |
| `--auto` | Sin menú, limpieza directa |
| `--report` | Solo genera reporte |
| `-h, --help` | Muestra la ayuda |

---

## ⚙️ Exclusiones

El archivo `~/.cleaner-ignore` protege rutas que no deben tocarse:

```bash
# Rutas protegidas por defecto
~/.termux
~/.ssh
~/.gnupg
~/storage
~/.config
```

Edita con:

```bash
nano ~/.cleaner-ignore
```

---

## ⚠️ Seguridad

- **Nunca ejecutes como root** a menos que sepas lo que haces.
- La primera ejecución **siempre en modo simulación**.
- Revisa `~/.cleaner-ignore` antes de usar `--aggressive`.
- Haz backup de `~/.termux` si tienes configuraciones importantes:
```bash
  cp -r ~/.termux ~/.termux.backup
```

---

## 🤝 Contribuir

1. Haz fork del proyecto
2. Crea una rama: `git checkout -b feature/mi-mejora`
3. Haz commit: `git commit -m "feat: añade limpieza de docker"`
4. Push: `git push origin feature/mi-mejora`
5. Abre un Pull Request

Ver [CONTRIBUTING.md](docs/CONTRIBUTING.md) para más detalles.

---

## 📄 Licencia

MIT License — consulta el archivo [LICENSE](LICENSE).

---

## 💬 Soporte

- Abre un [issue](../../issues) si encuentras un bug
- Sugerencias en [discussions](../../discussions)
- Si te fue útil, ¡déjame una ⭐!

---

<p align="center">
  <sub>Hecho con 💙 para la comunidad Termux</sub>
</p>
