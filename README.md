## dotfiles - inspired by [mdodsworth](https://github.com/mdodsworth/dotfiles)

### Installation process

- install Homebrew `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- install ansible `brew install ansible`
- install git `brew install git`

```
cd ~
git clone https://github.com/sanjuashok/dotfiles.git
cd ~/dotfiles
make
```
### Notes

If you’re doing this on a new machine or a new installation of Mac OSX, you will not have a `~/.ssh` directory. This will cause `make` to fail. Follow the instructions [here](https://help.github.com/articles/generating-ssh-keys/) and you should be good to go.

fwiw: the error I was running into was:
```
failed: [localhost] => {"failed": true}
msg: github.com has an unknown hostkey. Set accept_hostkey to True or manually add the hostkey prior to running the git module

FATAL: all hosts have already failed -- aborting

```

### TODO

- Research how to include npm install options. Currently express doesn't work because you need to install it with `npm install express --save` (i.e. the save option is required for the install not to be temporary).