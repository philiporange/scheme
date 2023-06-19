# Neovim Scheme Changer Script

This is a bash script designed to modify the `colorscheme` and `set background` settings in your `nvim` configuration file (`init.vim`).

## Prerequisites

- Neovim installed and configured.
- Bash shell environment.
- Sudo privileges (for installation script).

## Install

```bash
sudo ./INSTALL
```

## Usage

To change the `colorscheme`:

```bash
scheme zenburn
```

To change the `set background`:

```bash
scheme --dark
```

To change both the `colorscheme` and `set background`:

```bash
scheme zenburn --dark
```

## Notes

The script assumes that the `init.vim` file is located at `~/.config/nvim/init.vim`. If the location is different, please modify the `CONFIG_PATH` and `INIT_FILE` variables in the script accordingly.

## License

Creative Commons Zero v1.0 Universal
