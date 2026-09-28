<p align="center">
  <img src="logo.svg" width="120" alt="Deskwarp Logo">
</p>

<h1 align="center">Deskwarp</h1>

<p align="center">
  <strong>讓傳說中的果凍視窗特效回到你的桌面。</strong>
</p>

<p align="center">
  <img src="win10.svg" width="22" alt="Windows 10" valign="middle">
  &nbsp;
  <img src="win11.svg" width="22" alt="Windows 11" valign="middle">
  <br>
  <strong>支援的系統：</strong>Windows 10 與 11
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

## 專案介紹

Deskwarp 是一款為 Windows 10 與 Windows 11 專心打造、經過深度最佳化的開源桌面美化工具。它把經典、流暢、基於物理計算的「果凍視窗」動畫重新帶回現代作業系統。

Deskwarp 以效能為優先設計，能夠即時計算並算繪視窗形變。無論你是在移動還是縮放應用視窗，程式都會施加平滑的互動式物理運算，對游標輸入即時反應，顯著提升視覺回饋與整體使用體驗。

## 為什麼選擇 Deskwarp

| 優勢 | 說明 |
| :--- | :--- |
| **完全開源** | 100% 透明的程式碼庫。專案徹底開放，供審查、貢獻與二次修改，沒有任何隱藏的背景下執行緒或遙測。 |
| **原生效能** | 以 C++ 打造，效率極高。Deskwarp 的記憶體與 CPU 佔用極低，讓系統資源永遠服務於你的主要工作。 |
| **無縫整合** | 完整相容現代 Windows 架構，與系統預設的視窗管理機制互不干擾地協同運作。 |
| **基於物理的算繪** | 採用先進的動力學演算法，即使在複雜的視窗操作中也能維持高幀率與完全無卡頓的動畫。 |

## 開放原始碼與透明度

安全與社群信任是本專案的基礎。Deskwarp 完全免費發佈，任何人都可以不受限制地檢視其內部邏輯與算繪管線。我們歡迎開發者與愛好者審閱儲存庫、瞭解架構、直接從原始碼編譯，並為後續迭代做出貢獻。

## 從原始碼建置

Deskwarp 是一個單檔案的 C++17 應用程式（Qt 6 + Win32/D3D11）。在 Windows 上建議的建置方式是使用 [MSYS2](https://www.msys2.org/)。

### 1. 安裝工具鏈

安裝 MSYS2 後，開啟 **MSYS2 UCRT64** 終端機（注意不是一般的 *MSYS* 終端機），並安裝所需的套件：

```bash
pacman -S mingw-w64-ucrt-x86_64-qt6-base mingw-w64-ucrt-x86_64-qt6-svg
pacman -S mingw-w64-ucrt-x86_64-toolchain mingw-w64-ucrt-x86_64-cmake mingw-w64-ucrt-x86_64-ninja
```

`mingw-w64-ucrt-x86_64-qt6-base` 提供 Qt 6 的 Core、Gui、Widgets 與 Network 模組，`mingw-w64-ucrt-x86_64-qt6-svg` 提供 Qt SVG 模組。

### 2. 編譯

```bash
cd Deskwarp
./build.sh
```

`build.sh` 會以 CMake + Ninja 設定並編譯專案，然後把 `Deskwarp.exe` 相依的所有 UCRT64/Qt DLL 複製到執行檔旁邊，讓輸出資料夾可以直接執行。

<details>
<summary>手動編譯</summary>

```bash
cmake -B build -G Ninja
cmake --build build
```

</details>

### 3. 執行

```bash
./build/Deskwarp.exe
```

執行檔與它的 DLL 必須放在同一個資料夾。首次啟動時，會在執行檔旁自動建立 `config.cfg` 設定檔。

## 命令列

| 命令 | 說明 |
| :--- | :--- |
| `Deskwarp.exe help` | 顯示說明訊息。 |
| `Deskwarp.exe config <name> <t\|f>` | 將某個設定項開啟（`t`）或關閉（`f`）。 |

`config.cfg` 位於執行檔旁，建立時的預設內容如下：

```
AwaysRunAsAdmin = false
StartUp = false
StartUp.BackgroundRunning = false
```

| 設定項 | 說明 |
| :--- | :--- |
| `AwaysRunAsAdmin` | `t`：每次都要求管理員權限。`f`：從不要求，以一般權限啟動。（預設） |
| `StartUp` | `t`：將程式加入 Windows 開機自動啟動。`f`：移除開機自動啟動項目。（預設） |
| `StartUp.BackgroundRunning` | `t`：開機自動啟動命令帶有 `--background` 參數。`f`：開機自動啟動命令不帶任何參數。（預設） |

<br><br>
<div align="center">
  <small>
    <b>關鍵字（不要閱讀）：</b> 果凍視窗, 果凍windows, windows 10, windows 11, 桌面美化, 視窗物理, 桌面特效, 流體視窗動畫, 彈跳視窗, 動力學介面, 視窗管理員, compiz fusion 替代品, compiz for windows, kwin 果凍視窗, windowfx 替代品, c++ 視窗管理員, qt6 桌面應用程式, win32 api 調整, directx 算繪, dwm 掛鉤, 桌面改裝, 美學桌面, 開源 windows 調整, 介面調整, 視覺增強, 原生效能, 視窗拖曳特效。
  </small>
</div>
