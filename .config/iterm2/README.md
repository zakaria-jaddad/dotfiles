# How to import iterm2 configuration

- get .iterm2.plist and .private.plist files
- move them to **~/Library/Preferences/**
- or run this command after you download the files

  ```bash
    sudo mv ~/Library/Preferences/com.googlecode.iterm2.plist ./old.config
    sudo mv ~/Library/Preferences/com.googlecode.iterm2.private.plist ./old.config

    sudo mv com.googlecode.iterm2.plist com.googlecode.iterm2.private.plist ~/Library/Preferences/
  ```
