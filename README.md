<p align="center">
  <img src="logo.svg" width="120" alt="Deskwarp Logo">
</p>

<h1 align="center">Deskwarp</h1>

<p align="center">
  <strong>Bring the legendary Wobbly Windows effect to your desktop.</strong>
</p>

<p align="center">
  <img src="win10.svg" width="22" alt="Windows 10" valign="middle">
  &nbsp;
  <img src="win11.svg" width="22" alt="Windows 11" valign="middle">
  <br>
  <strong>Supported OS:</strong> Windows 10 & 11
</p>

<p align="center">
  <a href="https://github.com/doebalov/Deskwarp/releases/download/1.0/Deskwarp.zip">
    <img src="https://img.shields.io/badge/DOWNLOAD-0066ff?style=for-the-badge" alt="Download">
  </a>
  &nbsp;&nbsp;
  <a href="https://dalink.to/doebalov">
    <img src="https://img.shields.io/badge/DONATE-0066ff?style=for-the-badge" alt="Donate">
  </a>
</p>

<p align="center">
  <a href="README.md">English</a>
  &nbsp;·&nbsp;
  <a href="README_ZH.md">简体中文</a>
  &nbsp;·&nbsp;
  <a href="README_TW.md">繁體中文</a>
  &nbsp;·&nbsp;
  <a href="README_JP.md">日本語</a>
  &nbsp;·&nbsp;
  <a href="README_KO.md">한국어</a>
</p>

---

## About The Project

Deskwarp is a highly optimized, open-source desktop customization utility designed specifically for Windows 10 and Windows 11 environments. It reintroduces the classic, fluid, physics-based "Wobbly Windows" animation to modern operating systems. 

Built with performance in mind, Deskwarp calculates and renders real-time window deformations. Whether you are moving or resizing application windows, the software applies smooth, interactive physics calculations that react instantly to cursor input, significantly enhancing the visual feedback and overall user experience of your workspace.

## Why Choose Deskwarp

| Advantage | Description |
| :--- | :--- |
| **Fully Open-Source** | 100% transparent codebase. The project is entirely open for auditing, contributing, and modification with zero hidden background processes or telemetry. |
| **Native Performance** | Engineered in C++ for maximum efficiency. Deskwarp operates with a minimal memory and CPU footprint, ensuring that system resources remain dedicated to your primary tasks. |
| **Seamless Integration** | Fully compatible with modern Windows architectures. It functions unobtrusively alongside default OS window management protocols. |
| **Physics-Based Rendering** | Employs advanced kinetic algorithms to ensure high frame rates and completely stutter-free animations, even during complex window operations. |

## Open Source & Transparency

Security and community trust are fundamental to this project. Deskwarp is distributed completely free of charge, providing unrestricted access to the underlying logic and rendering pipeline. Developers and enthusiasts are encouraged to inspect the repository, review the architecture, compile the software directly from the source, and contribute to future iterations.

## Building From Source

Deskwarp is a single-file C++17 application (Qt 6 + Win32/D3D11). The recommended way to build it on Windows is [MSYS2](https://www.msys2.org/).

### 1. Install the toolchain

Install MSYS2, then open the **MSYS2 UCRT64** shell (not the plain *MSYS* shell) and install the required packages:

```bash
pacman -S mingw-w64-ucrt-x86_64-qt6-base mingw-w64-ucrt-x86_64-qt6-svg
pacman -S mingw-w64-ucrt-x86_64-toolchain mingw-w64-ucrt-x86_64-cmake mingw-w64-ucrt-x86_64-ninja
```

`mingw-w64-ucrt-x86_64-qt6-base` provides Qt 6 Core, Gui, Widgets and Network, while `mingw-w64-ucrt-x86_64-qt6-svg` provides the Qt SVG module.

### 2. Build

```bash
cd Deskwarp
./build.sh
```

`build.sh` configures the project with CMake + Ninja, compiles the sources and copies every UCRT64/Qt DLL that `Deskwarp.exe` depends on next to the executable, so the output folder is directly runnable.

<details>
<summary>Manual build</summary>

```bash
cmake -B build -G Ninja
cmake --build build
```

</details>

### 3. Run

```bash
./build/Deskwarp.exe
```

The executable and its DLLs must stay in the same folder. On first start a `config.cfg` file is created automatically next to the executable.

## Command Line

| Command | Description |
| :--- | :--- |
| `Deskwarp.exe help` | Show the help message. |
| `Deskwarp.exe config <name> <t\|f>` | Turn a config option on (`t`) or off (`f`). |

`config.cfg` lives next to the executable and is created with these defaults:

```
AwaysRunAsAdmin = false
StartUp = false
StartUp.BackgroundRunning = false
```

| Option | Description |
| :--- | :--- |
| `AwaysRunAsAdmin` | `t`: always ask for administrator rights. `f`: never ask, start with normal rights. (default) |
| `StartUp` | `t`: register the program in Windows startup. `f`: remove the startup entry. (default) |
| `StartUp.BackgroundRunning` | `t`: the startup entry runs with `--background`. `f`: the startup entry has no arguments. (default) |

<br><br>
<div align="center">
  <small>
    <b>Keywords (do not read):</b> wobbly windows, jelly windows, windows 10, windows 11, desktop customization, desktop ricing, window physics, desktop effects, fluid window animations, bouncy windows, kinetic ui, window manager, compiz fusion alternative, compiz for windows, kwin wobbly windows, windowfx alternative, c++ window manager, qt6 desktop application, win32 api tweaks, directx rendering, dwm hooking, desktop modding, aesthetic desktop, open-source windows tweaks, ui tweaking, visual enhancement, native performance, window drag effects.
  </small>
</div>
