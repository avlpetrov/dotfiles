# Dotfiles

## Usage

Remove `--simulate` to disable dry-run.

Link all packages:

```bash
stow --verbose --target ~ */ --simulate
```

Unlink all packages:

```bash
stow --verbose --delete --target ~ */ --simulate
```

Link specific package:

```bash
stow --verbose --target ~ <package> --simulate 
```

Unlink specific package:

```bash
stow --verbose --delete --target ~ <package> --simulate
```

Relink specific package:

```bash
stow --verbose --restow --target ~ <package> --simulate
```
