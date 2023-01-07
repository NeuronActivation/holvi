# holvi-repo

Useless packages are hosted here.


## Usage

Add the [GPG](key/jervw.gpg) key to pacman keyring and then sign it locally:

```sh
sudo pacman-key --recv-keys 99627FCBF2F3FD52
sudo pacman-key --lsign-key 99627FCBF2F3FD52
```
Then add the following repository configuration to your `pacman.conf`. 

```ini
[holvi]
Server = <gh-pages-link-here>/$arch
```

