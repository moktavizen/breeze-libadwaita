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

1. Install <code>[plasma-workspace](https://archlinux.org/packages/extra/x86_64/plasma-workspace/), [systemsettings](https://archlinux.org/packages/extra/x86_64/systemsettings/)</code>

2. Follow the [KDE steps](#kde)
