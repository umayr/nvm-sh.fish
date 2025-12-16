# `nvm-sh.fish`

Fish shell integration for the **official nvm-sh** using [`edc/bass`](https://github.com/edc/bass).

This plugin provides a Fish wrapper around `nvm-sh` so you can use the
standard `nvm` CLI inside Fish without hard-coding any nvm version.


## Requirements

- `fish` shell
- `fisher`
- `bass` (installed automatically by fisher)
- `nvm-sh` installed at `$NVM_DIR/nvm.sh`
  - Default location: `~/.nvm/nvm.sh`


## Install

### 1. Install nvm-sh (once)

Run this from **bash or zsh**:

```bash
curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
```

Restart your terminal after installation.


### 2. Install the Fish plugin

```fish
fisher install umayr/nvm-sh.fish
```

This will also install `edc/bass` automatically.


## Usage

```fish
nvm install --lts
nvm alias default lts/*
nvm use default
node -v
```


## How it works

- `nvm-sh` is a **bash function**, not a binary
- This plugin wraps it using `bass`, which:
  - runs `nvm` in a bash subshell
  - imports environment changes back into Fish
- No Node or nvm versions are hard-coded


## Notes

- Global npm packages are **per Node version** when using `nvm`
- For Yarn or pnpm, prefer Node’s built-in Corepack:

```fish
corepack enable
```


## Troubleshooting

### `nvm-sh not found`

Ensure `nvm-sh` is installed at:

```text
~/.nvm/nvm.sh
```

Or that `$NVM_DIR` points to the correct directory.


### `bass not installed`

Reinstall dependencies:

```fish
fisher install edc/bass
```


## Uninstall

```fish
fisher remove umayr/nvm-sh.fish
```


## License

MIT
