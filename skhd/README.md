## Issues

`skhd` [doesn't support](https://github.com/koekeishiya/skhd/issues/342) relative symlinks, so config needs to be copied manually or specified explicitly in the launchd `.plist`:

```xml
...
<array>
    <string>/opt/homebrew/bin/skhd</string>
    <string>-c</string>
    <string>/absolute/path/to/dotfiles/skhd/.skhdrc</string>
</array>
 ...
```

Restart `skhd`:

```
skhd --stop-service
skhd --start-service
```

Check for errors:

```
tail -f /tmp/skhd_*.err.log
```
