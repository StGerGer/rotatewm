# RotateWM

This is a simple script I wrote that allows you to easily change your workspace relative to your current one. Any system with a working install of `wmctrl` should work with this script.

I initially created this as a simple workaround to add macOS-style gesture controls to my Razer Blade Manjaro+Budgie install. It works great!

## Install

Run the following commands.

```bash
git clone https://github.com/StGerGer/rotatewm.git
ln -s [install location]/rotatewm.pl /usr/local/bin/rotatewm
```

If you are unable to run the program, you may need to run `chmod +x rotatewm.pl`.

## Usage

```bash
rotatewm.pl [offset]
```

Offset is how far you want to move from your current workspace. `-1` will move you one workspace left, `2` will move you two workspaces right.

I highly recommend combining this with [libinput-gestures](https://github.com/bulletmark/libinput-gestures) if you're on a laptop!