# vim-anywhere

## Requirement
`vim version >= 8.0`

## Install

backup yourself configuration before install

### Linux
#### Generic system
`install ctags`
```shell
bash setup.sh
```

#### CentOS 7
```shell
dnf remove -y vim vim-minimal
dnf install 'dnf-command(copr)'
dnf copr enable -y hnakamur/vim
dnf install -y vim

dnf install -y ctags
bash setup.sh
```

### MacOS
```shell
brew install -y ctags
bash setup.sh
```

## Backup
```shell
bash backup.sh
```
