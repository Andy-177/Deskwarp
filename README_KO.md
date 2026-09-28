<p align="center">
  <img src="logo.svg" width="120" alt="Deskwarp Logo">
</p>

<h1 align="center">Deskwarp</h1>

<p align="center">
  <strong>전설의 흔들리는 윈도우 효과를 당신의 데스크톱으로.</strong>
</p>

<p align="center">
  <img src="win10.svg" width="22" alt="Windows 10" valign="middle">
  &nbsp;
  <img src="win11.svg" width="22" alt="Windows 11" valign="middle">
  <br>
  <strong>지원 운영체제：</strong>Windows 10 및 11
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

## 프로젝트 소개

Deskwarp은 Windows 10과 Windows 11 환경을 위해 만들어진, 고도로 최적화된 오픈 소스 데스크톱 꾸미기 유틸리티입니다. 클래식하면서도 매끄러운 물리 기반 "흔들리는 윈도우" 애니메이션을 현대 운영체제에 되살립니다.

Deskwarp은 성능을 최우선으로 설계되었으며, 창이 변형되는 과정을 실시간으로 계산하고 그립니다. 애플리케이션 창을 이동하거나 크기를 바꾸면, 프로그램은 매끄럽고 상호작용적인 물리 계산을 적용하여 커서 입력에 즉시 반응합니다. 덕분에 시각적 피드백과 전체 작업 환경의 조작감이 크게 향상됩니다.

## Deskwarp을 선택하는 이유

| 장점 | 설명 |
| :--- | :--- |
| **완전한 오픈 소스** | 100% 투명한 코드베이스. 감사, 기여, 수정을 위해 전면적으로 공개되어 있으며, 숨겨진 백그라운드 프로세스나 텔레메트리는 전혀 없습니다. |
| **네이티브 성능** | C++로 설계되어 효율을 극대화했습니다. Deskwarp은 메모리와 CPU 사용량이 매우 적어, 시스템 자원을 언제나 본래 작업에 쓸 수 있습니다. |
| **매끄러운 통합** | 현대 Windows 아키텍처에 완전히 호환됩니다. OS 기본 창 관리 프로토콜과 함께 눈에 띄지 않게 동작합니다. |
| **물리 기반 렌더링** | 뛰어난 운동학 알고리즘 덕분에 복잡한 창 조작에서도 높은 프레임레이트와 완전히 버벅거림 없는 애니메이션을 제공합니다. |

## 오픈 소스와 투명성

보안과 커뮤니티의 신뢰는 이 프로젝트의 근간입니다. Deskwarp은 완전히 무료로 배포되며, 내부 로직과 렌더링 파이프라인에 제한 없이 접근할 수 있습니다. 개발자와 애호가자는 저장소를 살펴보고, 아키텍처를 이해하고, 소스에서 직접 빌드하며, 이후 개선에 기여할 수 있습니다.

## 소스에서 빌드하기

Deskwarp은 단일 파일 C++17 애플리케이션입니다(Qt 6 + Win32/D3D11). Windows에서 빌드할 때는 [MSYS2](https://www.msys2.org/)를 사용하는 것을 권장합니다.

### 1. 툴체인 설치

MSYS2를 설치한 뒤 **MSYS2 UCRT64** 셸(일반 *MSYS* 셸이 아님)을 열고 필요한 패키지를 설치하세요:

```bash
pacman -S mingw-w64-ucrt-x86_64-qt6-base mingw-w64-ucrt-x86_64-qt6-svg
pacman -S mingw-w64-ucrt-x86_64-toolchain mingw-w64-ucrt-x86_64-cmake mingw-w64-ucrt-x86_64-ninja
```

`mingw-w64-ucrt-x86_64-qt6-base`는 Qt 6의 Core, Gui, Widgets, Network 모듈을 제공하고, `mingw-w64-ucrt-x86_64-qt6-svg`는 Qt SVG 모듈을 제공합니다.

### 2. 빌드

```bash
cd Deskwarp
./build.sh
```

`build.sh`는 CMake와 Ninja로 프로젝트를 설정하고 컴파일한 뒤, `Deskwarp.exe`가 의존하는 모든 UCRT64 및 Qt DLL을 실행 파일 옆에 복사합니다. 덕분에 빌드 폴더를 그대로 실행할 수 있습니다.

<details>
<summary>수동 빌드</summary>

```bash
cmake -B build -G Ninja
cmake --build build
```

</details>

### 3. 실행

```bash
./build/Deskwarp.exe
```

실행 파일과 DLL은 같은 폴더에 있어야 합니다. 처음 실행할 때 실행 파일 옆에 `config.cfg`가 자동으로 만들어집니다.

## 명령줄

| 명령 | 설명 |
| :--- | :--- |
| `Deskwarp.exe help` | 도움말을 표시합니다. |
| `Deskwarp.exe config <name> <t\|f>` | 지정한 설정 항목을 켜거나(`t`) 끕니다(`f`). |

`config.cfg`는 실행 파일 옆에 있으며, 만들어질 때의 기본 내용은 다음과 같습니다:

```
AwaysRunAsAdmin = false
StartUp = false
StartUp.BackgroundRunning = false
```

| 설정 항목 | 설명 |
| :--- | :--- |
| `AwaysRunAsAdmin` | `t`: 항상 관리자 권한을 요구합니다. `f`: 요구하지 않고 일반 권한으로 시작합니다. (기본값) |
| `StartUp` | `t`: 프로그램을 Windows 시작 프로그램에 등록합니다. `f`: 시작 프로그램 항목을 삭제합니다. (기본값) |
| `StartUp.BackgroundRunning` | `t`: 시작 프로그램 명령에 `--background` 인수를 붙입니다. `f`: 인수를 붙이지 않습니다. (기본값) |

<br><br>
<div align="center">
  <small>
    <b>키워드(읽지 마세요):</b> wobbly windows, 젤리 윈도우, windows 10, windows 11, 데스크톱 꾸미기, 창 물리 연산, 데스크톱 효과, 유동적인 창 애니메이션, 튀는 창, 운동학적인 UI, 창 관리자, compiz fusion 대체, compiz for windows, kwin wobbly windows, windowfx 대체, c++ 창 관리자, qt6 데스크톱 앱, win32 api 튜닝, directx 렌더링, dwm 후킹, 데스크톱 개조, 미학 데스크톱, 오픈 소스 windows 튜닝, UI 튜닝, 시각적 개선, 네이티브 성능, 창 드래그 효과.
  </small>
</div>
