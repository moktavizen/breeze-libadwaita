## Breeze Libadwaita

KDE color scheme to unify Breeze and Libadwaita.

![Breeze Libadwaita preview](./preview/breeze-libadwaita-dark.png)

### Installation

The installation steps are different for KDE and non-KDE Environment.

#### KDE

1. Install the color scheme file

    ```sh
    curl -fsSL https://github.com/moktavizen/breeze-libadwaita/raw/main/kde/install | sh
    ```

2. Apply System Settings > Colors & Themes > Colors > Breeze Libadwaita Dark

3. Optional steps to match Libadwaita window decorations

    Install <code>[papirus-icon-theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), [klassy](https://github.com/paulmcauley/klassy)</code>, and apply:

    - System Settings > Colors & Themes > Icons > Papirus Dark
    - System Settings > Colors & Themes > Application Style > Klassy
    - System Settings > Colors & Themes > Window Decorations > Klassy
    - Klassy Settings > Presets > Add > Import [this preset](./kde/klassy-preset/Breeze_Libadwaita.klpw) > Load
    - Reboot

#### Non-KDE

1. Install the color scheme files

    ```sh
    curl -fsSL https://github.com/moktavizen/breeze-libadwaita/raw/main/qtct/install | sh
    ```

2. Install `breeze5, breeze, qt5ct, qt6ct`

3. Open Qt5 Settings and Qt6 Settings, and go to:

    - Appearance > Style > Breeze
    - Appearance > Palette > Custom > Color scheme > breeze_libadwaita_dark
    - Apply
