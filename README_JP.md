<p align="center">
  <img src="logo.svg" width="120" alt="Deskwarp Logo">
</p>

<h1 align="center">Deskwarp</h1>

<p align="center">
  <strong>伝説の揺れるウィンドウ効果を、あなたのデスクトップに。</strong>
</p>

<p align="center">
  <img src="win10.svg" width="22" alt="Windows 10" valign="middle">
  &nbsp;
  <img src="win11.svg" width="22" alt="Windows 11" valign="middle">
  <br>
  <strong>対応OS：</strong>Windows 10 および 11
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

## プロジェクトについて

Deskwarp は Windows 10 と Windows 11 の環境のために設計された、高度に最適化されたオープンソースのデスクトップカスタマイズユーティリティです。クラシックで流畅な物理演算に基づく「揺れるウィンドウ」アニメーションを現代のオペレーティングシステムに復活させます。

Deskwarp はパフォーマンスを最優先に設計されており、ウィンドウの変形をリアルタイムで計算して描画します。アプリケーションウィンドウを移動したりリサイズしたりすると、ソフトウェアは滑らかでインタラクティブな物理演算を適用し、カーソル入力に即座に反応するため、視覚的なフィードバックとワークスペース全体の操作性が大きく向上します。

## Deskwarp を選ぶ理由

| 利点 | 説明 |
| :--- | :--- |
| **完全なオープンソース** | 100% 透明なコードベース。監査やコントリビュート、改変のために全面的に公開されており、隠れたバックグラウンドプロセスやテレメトリは一切ありません。 |
| **ネイティブなパフォーマンス** | C++ で設計され、効率を最大化。Deskwarp はメモリと CPU の使用量が非常に少なく、システムリソースを常にメインの作業のために残します。 |
| **シームレスな統合** | 現代の Windows アーキテクチャに完全対応。OS 標準のウィンドウ管理プロトコルと並走しながら、存在を主張せずに連携します。 |
| **物理ベースの描画** | 高度な運動力学アルゴリズムにより、複雑なウィンドウ操作でも高いフレームレートと完全にカクつきのないアニメーションを実現します。 |

## オープンソースと透明性

セキュリティとコミュニティからの信頼は、このプロジェクトの根幹です。Deskwarp は完全無料で提供され、内部のロジックやレンダリングパイプラインに対して制限のないアクセスが可能です。開発者や愛好家はリポジトリを精査し、アーキテクチャを理解し、ソースから直接コンパイルして、今後の反復に貢献することが歓迎されています。

## ソースからのビルド

Deskwarp は単一ファイルの C++17 アプリケーションです（Qt 6 + Win32/D3D11）。Windows でのビルドには [MSYS2](https://www.msys2.org/) の利用を推奨します。

### 1. ツールチェーンのインストール

MSYS2 をインストールし、**MSYS2 UCRT64** シェル（通常の *MSYS* シェルではありません）を開いて、必要なパッケージをインストールしてください：

```bash
pacman -S mingw-w64-ucrt-x86_64-qt6-base mingw-w64-ucrt-x86_64-qt6-svg
pacman -S mingw-w64-ucrt-x86_64-toolchain mingw-w64-ucrt-x86_64-cmake mingw-w64-ucrt-x86_64-ninja
```

`mingw-w64-ucrt-x86_64-qt6-base` は Qt 6 の Core、Gui、Widgets、Network モジュールを提供し、`mingw-w64-ucrt-x86_64-qt6-svg` は Qt SVG モジュールを提供します。

### 2. ビルド

```bash
cd Deskwarp
./build.sh
```

`build.sh` は CMake と Ninja でプロジェクトを設定してコンパイルし、`Deskwarp.exe` が依存するすべての UCRT64 と Qt の DLL を実行ファイルの隣にコピーするため、出力フォルダーをそのまま実行できます。

<details>
<summary>手動ビルド</summary>

```bash
cmake -B build -G Ninja
cmake --build build
```

</details>

### 3. 実行

```bash
./build/Deskwarp.exe
```

実行ファイルと DLL は同じフォルダーに置く必要があります。初回起動時に、実行ファイルの隣へ `config.cfg` が自動的に作成されます。

## コマンドライン

| コマンド | 説明 |
| :--- | :--- |
| `Deskwarp.exe help` | ヘルプを表示します。 |
| `Deskwarp.exe config <name> <t\|f>` | 指定した設定項目をオン（`t`）またはオフ（`f`）にします。 |

`config.cfg` は実行ファイルの隣にあり、作成時の既定内容は次のとおりです：

```
AwaysRunAsAdmin = false
StartUp = false
StartUp.BackgroundRunning = false
```

| 設定項目 | 説明 |
| :--- | :--- |
| `AwaysRunAsAdmin` | `t`：常に管理者権限を要求します。`f`：要求せず一般権限で起動します。（既定） |
| `StartUp` | `t`：プログラムを Windows のスタートアップに登録します。`f`：スタートアップの項目を削除します。（既定） |
| `StartUp.BackgroundRunning` | `t`：スタートアップのコマンドに `--background` を付けます。`f`：引数を付けません。（既定） |

<br><br>
<div align="center">
  <small>
    <b>キーワード（読むしないでください）：</b> wobbly windows, ゼリーウィンドウ, windows 10, windows 11, デスクトップカスタマイズ, ウィンドウ物理演算, デスクトップエフェクト, 流体的なウィンドウアニメーション, 弾むウィンドウ, 運動学的なUI, ウィンドウマネージャー, compiz fusion 代替, compiz for windows, kwin wobbly windows, windowfx 代替, c++ ウィンドウマネージャー, qt6 デスクトップアプリ, win32 api 調整, directx 描画, dwm フック, デスクトップ mods, 美学デスクトップ, オープンソース windows 調整, UI 調整, 視覚的強化, ネイティブ性能, ウィンドウドラッグエフェクト。
  </small>
</div>
