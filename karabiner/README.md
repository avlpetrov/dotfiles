## Issues

Karabiner [doesn't respect](https://karabiner-elements.pqrs.org/docs/manual/misc/configuration-file-path/) symlinks for `karabiner.json`, whole `karabiner` dir has to be symlinked instead. Also, it [doesn't preserve](https://github.com/pqrs-org/Karabiner-Elements/issues/3248) `karabiner.json` symlink while writing.

The location of the configuration file:
> If you want to move karabiner.json to another place and make symbolic link, make a symbolic link to ~/.config/karabiner directory instead of karabiner.json.
>
> Do not make a symlink to karabiner.json directly.
> Karabiner-Elements will fail to detect the configuration file update and fail to reload the configuration if karabiner.json is a symbolic link.

Simply overwrite the config instead:
```
cp karabiner.json ~/.config/karabiner/
```