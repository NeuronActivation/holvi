# holvi-repo

Useless packages are hosted here.

<details>
  <summary>Packages</summary>
  <br/>

  | Package  | License |
  | ------------- | ------------- |
  | urbaani  | [MIT](https://raw.githubusercontent.com/jervw/urbaani-cli/main/LICENSE)  |
  | yaac 	   | [GPL2](https://raw.githubusercontent.com/viirret/yaac/main/LICENSE)      |
  | ...  | ...  |
 
  
</details>

Packages can be requested via issues or making a pull request.

## Usage

Add the [GPG](key/jervw.gpg) key to pacman keyring and then sign it locally:

```sh
sudo pacman-key --recv-keys A885101D
sudo pacman-key --lsign-key A885101D
```
Then add the following repository configuration to your `pacman.conf`. 

```ini
[holvi]
Server = https://neuronactivation.github.io/holvi/$arch
```

