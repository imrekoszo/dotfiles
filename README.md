# dotfiles

## Custom tools

- bat
- diff-so-fancy
- prettyping
- (fzf)
- (fd)
- [CLI Improved](https://remysharp.com/2018/08/23/cli-improved)

## Usage

1. Clone repo or copy contents somewhere
2. Reference items from home folder, this is usually a symlink but the following list details where this is not recommended

### `/.bash_profile` `/.bashrc` `/.gitconfig` `/.nanorc` `/.profile` `/.zprofile` `/.zshrc`

Safe to symlink but if you want to configure some of them for a specific environment you should instead create a matching file in your home folder and source/import/include.

### `/bin`

Not dotfiles, but scripts I use here and there, feel free to ignore.

### `/.config`

`~/.config` stores a lot of app configuration so unless you want the repo to track all of these create symlinks in `~/.config` to items in `/.config`

### `/.lein`

Like `./config`, it stores all sorts of info `Leiningen` needs so better to symlink. Same applies to `/.lein/profiles.d` - there might be profiles you don't want to keep in the repo, such as those that contain passwords, so create symlinks in `~/.lein/profiles.d`.

### `/.pam_environment`

Either symlink or copy to `~` and edit. As far as I know `Pam` does not support importing/sourcing.

### `/shell`

This one contains helper scripts that are referenced from the dotfiles so no need to symlink. Just make sure it stays next to the shell dotfiles if you decide to copy/move those.

## Useful info

- [Order in which environment variables are assigned](https://askubuntu.com/a/8r66240)
- [What to put in .pam_environment and .profile and how to make sure bash and zsh obey it](https://unix.stackexchange.com/questions/88201/whats-the-best-distro-shell-agnostic-way-to-set-environment-variables/88266#88266)
