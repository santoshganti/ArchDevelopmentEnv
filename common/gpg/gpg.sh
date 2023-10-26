# List Existing GPG Key
gpg --list-secret-keys --keyid-format LONG

# Importing GPG Key
gpg -o private.gpg --export-options backup --export-secret-keys <email>

# Restoring GPG Key
gpg --import-options restore --import private.gpg
gpg --edit-key ponder.stibbons@unseen.edu

# Git Setting commit signing using gpg
git config --global --unset gpg.format
git config --global user.signingkey B26FD0B0B9666479
git config --global commit.gpgsign true