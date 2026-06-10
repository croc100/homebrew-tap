# homebrew-tap

Homebrew tap for [Litescope](https://github.com/croc100/Litescope) — SQLite production operations CLI.

## Install

```sh
brew tap croc100/tap
brew install litescope
```

Or in one step:

```sh
brew install croc100/tap/litescope
```

## Usage

```sh
litescope diff before.db after.db
litescope validate run before.db after.db --expect migration.yaml
litescope monitor snapshot production.db --output baseline.json
```

Full docs: [github.com/croc100/Litescope](https://github.com/croc100/Litescope)
