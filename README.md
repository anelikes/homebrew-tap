# anelikes/homebrew-tap

Homebrew casks for [Peesuto](https://peesuto.com), the open-source clipboard
app for the Mac ([source](https://github.com/anelikes/peesuto)).

## Install

```sh
brew install --cask anelikes/tap/peesuto
```

Requires macOS 13 (Ventura) or later on Apple silicon. Then open Peesuto and
allow Accessibility when asked (System Settings › Privacy & Security ›
Accessibility); Peesuto needs it to paste into the app you are typing in.

MP4 video output needs [ffmpeg](https://ffmpeg.org): `brew install ffmpeg`.

## Updates

Peesuto updates itself (Sparkle; Settings › General), so the cask is marked
`auto_updates`: `brew upgrade` leaves it alone unless you run
`brew upgrade --cask --greedy peesuto`.

## Uninstall

```sh
brew uninstall --cask peesuto          # removes Peesuto.app, keeps your history and settings
brew uninstall --cask --zap peesuto    # also deletes history, settings and caches
```

`--zap` removes `~/Library/Application Support/com.peesuto.desktop` (the
encrypted clipboard history and settings), Peesuto's caches and preferences,
and `~/.pocket-paste`. It cannot remove the Keychain items (service
`com.peesuto.desktop`: the history key and any provider keys you entered);
delete those in Keychain Access if you want them gone. Also remove Peesuto from
System Settings › Privacy & Security › Accessibility.

## Maintainers

`Casks/peesuto.rb` is updated for each release by `scripts/update-cask.ts` in
the Peesuto repository (see its `docs/RELEASING.md`).

## License

MIT, like Peesuto.
