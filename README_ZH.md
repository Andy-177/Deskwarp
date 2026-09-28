<p align="center">
  <img src="logo.svg" width="120" alt="Deskwarp Logo">
</p>

<h1 align="center">Deskwarp</h1>

<p align="center">
  <strong>让传奇的果冻窗口特效回到你的桌面。</strong>
</p>

<p align="center">
  <img src="win10.svg" width="22" alt="Windows 10" valign="middle">
  &nbsp;
  <img src="win11.svg" width="22" alt="Windows 11" valign="middle">
  <br>
  <strong>支持的系统：</strong>Windows 10 与 11
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

---

## 项目介绍

Deskwarp 是一款为 Windows 10 与 Windows 11 精心打造、经过深度优化的开源桌面美化工具。它把经典、流畅、基于物理计算的「果冻窗口」动画重新带回现代操作系统。

Deskwarp 以性能为优先设计，能够实时计算并渲染窗口形变。无论你是在移动还是缩放应用窗口，程序都会施加平滑的交互式物理计算，对光标输入即时响应，显著提升视觉反馈与整体使用体验。

## 为什么选择 Deskwarp

| 优势 | 说明 |
| :--- | :--- |
| **完全开源** | 100% 透明的代码库。项目彻底开放，供审查、贡献与二次修改，没有任何隐藏的后台进程或遥测。 |
| **原生性能** | 使用 C++ 打造，效率极高。Deskwarp 的内存与 CPU 占用极低，让系统资源始终服务于你的主要任务。 |
| **无缝集成** | 完整兼容现代 Windows 架构，与系统默认的窗口管理机制互不干扰地协同工作。 |
| **基于物理的渲染** | 采用先进的动力学算法，即使在复杂的窗口操作中也能保持高帧率与完全无卡顿的动画。 |

## 开放源码与透明度

安全与社区信任是本项目的基础。Deskwarp 完全免费分发，任何人都可以不受限制地查看其内部逻辑与渲染管线。我们欢迎开发者与爱好者审查仓库、了解架构、直接从源码编译，并为后续迭代做出贡献。

## 从源码构建

Deskwarp 是一个单文件的 C++17 应用（Qt 6 + Win32/D3D11）。在 Windows 上推荐的构建方式是使用 [MSYS2](https://www.msys2.org/)。

### 1. 安装工具链

安装 MSYS2 后，打开 **MSYS2 UCRT64** 终端（注意不是普通的 *MSYS* 终端），并安装所需的软件包：

```bash
pacman -S mingw-w64-ucrt-x86_64-qt6-base mingw-w64-ucrt-x86_64-qt6-svg
pacman -S mingw-w64-ucrt-x86_64-toolchain mingw-w64-ucrt-x86_64-cmake mingw-w64-ucrt-x86_64-ninja
```

`mingw-w64-ucrt-x86_64-qt6-base` 提供 Qt 6 的 Core、Gui、Widgets 与 Network 模块，`mingw-w64-ucrt-x86_64-qt6-svg` 提供 Qt SVG 模块。

### 2. 编译

```bash
cd Deskwarp
./build.sh
```

`build.sh` 会用 CMake + Ninja 配置并编译项目，然后把 `Deskwarp.exe` 依赖的所有 UCRT64/Qt DLL 复制到可执行文件旁边，使输出目录可以直接运行。

<details>
<summary>手动编译</summary>

```bash
cmake -B build -G Ninja
cmake --build build
```

</details>

### 3. 运行

```bash
./build/Deskwarp.exe
```

可执行文件与它的 DLL 必须放在同一目录。首次启动时，会在可执行文件旁自动创建 `config.cfg` 配置文件。

## 命令行

| 命令 | 说明 |
| :--- | :--- |
| `Deskwarp.exe help` | 显示帮助信息。 |
| `Deskwarp.exe config <name> <t\|f>` | 将某个配置项打开（`t`）或关闭（`f`）。 |

`config.cfg` 位于可执行文件旁，创建时的默认内容如下：

```
AwaysRunAsAdmin = false
StartUp = false
StartUp.BackgroundRunning = false
```

| 配置项 | 说明 |
| :--- | :--- |
| `AwaysRunAsAdmin` | `t`：每次都请求管理员权限。`f`：从不请求，以普通权限启动。（默认） |
| `StartUp` | `t`：将程序加入 Windows 开机自启动。`f`：删除开机自启动项。（默认） |
| `StartUp.BackgroundRunning` | `t`：自启动命令带有 `--background` 参数。`f`：自启动命令不带任何参数。（默认） |

<br><br>
<div align="center">
  <small>
    <b>关键词（不要阅读）：</b> 果冻窗口, 果冻windows, windows 10, windows 11, 桌面美化, 桌面美化, 窗口物理, 桌面特效, 流体窗口动画, 弹跳窗口, 动力学界面, 窗口管理器, compiz fusion 替代品, compiz for windows, kwin 果冻窗口, windowfx 替代品, c++ 窗口管理器, qt6 桌面应用, win32 api 调整, directx 渲染, dwm 挂钩, 桌面改装, 美学桌面, 开源 windows 调整, 界面调整, 视觉增强, 原生性能, 窗口拖拽特效。
  </small>
</div>
