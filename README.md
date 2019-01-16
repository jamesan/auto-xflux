# auto-xflux

Inputless xflux daemon that geocodes based on your external IP address.

This requires a working X server for the user executing xflux. It requires an
Internet connection to already be established and assumes that the following service is online:

- [ipinfo.io](https://ipinfo.io)

This also obviously requires [xflux](https://justgetflux.com/linux.html) (to be accessible in \$PATH).

## Installation

### Arch Linux

Install the AUR package, [auto-xflux](https://aur.archlinux.org/packages/auto-xflux). The PKGBUILD can be viewed
[here](https://github.com/jamesan/aur-pkgs/blob/master/auto-xflux/PKGBUILD).

### Other \*nix systems

Clone this repo and run:

    make [DESTDIR=DIRECTORY] install

and you can uninstall by runnning:

    make [DESTDIR=DIRECTORY] uninstall

DESTDIR is optional, include it if you want to install to a non-root (/) location.

## After Installation

### If your display is managed by systemd

Either enable and start the systemd user unit with:

`systemctl --user enable auto-flux.service`

and

`systemctl --user start auto-flux.service`

### If your display is not managed by systemd

You need to either add it to `autostart` or to your `.xinitrc` directly (e.g., just put `auto-flux` in your `.xinitrc`).

## Options

If you would like to specify a particular color temperature for `xflux` to use, append the -k flag and specify the temperature when executing auto-xflux, like this:

`auto-xflux -k 2700`
