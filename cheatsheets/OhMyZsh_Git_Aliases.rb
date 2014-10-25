cheatsheet do
  title 'OhMyZsh Git Aliases'
  docset_file_name 'OhMyZsh_Git_Aliases'
  keyword 'OhMyZshGit'
  source_url 'http://cheat.kapeli.com'

  introduction 'Helpful aliases for common git tasks '

  category do
    id 'Aliases'

    entry do
      name 'git'
      notes "
```
g
```"
    end

    entry do
      name 'git status'
      notes "
```
gst
```"
    end

    entry do
      name 'git pull'
      notes "
```
gl
```"
    end

    entry do
      name 'git pull --rebase'
      notes "
```
gup
```"
    end

    entry do
      name 'git push'
      notes "
```
gp
```"
    end

    entry do
      name 'git diff'
      notes "
```
gd
```"
    end

    entry do
      name 'git diff --cached'
      notes "
```
gdc
```"
    end

    entry do
      name 'git diff ~~w "$`" | view -'
      notes "
```
gdv
```"
    end

    entry do
      name 'git commit -v --amend'
      notes "
```
gc!
```"
    end

    entry do
      name 'git commit -v -a'
      notes "
```
gca
```"
    end

    entry do
      name 'git commit -v -a --amend'
      notes "
```
gca!
```"
    end

    entry do
      name 'git commit -m'
      notes "
```
gcmsg
```"
    end

    entry do
      name 'git checkout'
      notes "
```
gco
```"
    end

    entry do
      name 'git checkout master'
      notes "
```
gcm
```"
    end

    entry do
      name 'git remote'
      notes "
```
gr
```"
    end

    entry do
      name 'git remote -v'
      notes "
```
grv
```"
    end

    entry do
      name 'git remote rename'
      notes "
```
grmv
```"
    end

    entry do
      name 'git remote remove'
      notes "
```
grrm
```"
    end

    entry do
      name 'git remote set-url'
      notes "
```
gsetr
```"
    end

    entry do
      name 'git remote update'
      notes "
```
grup
```"
    end

    entry do
      name 'git rebase -i'
      notes "
```
grbi
```"
    end

    entry do
      name 'git rebase --continue'
      notes "
```
grbc
```"
    end

    entry do
      name 'git rebase --abort'
      notes "
```
grba
```"
    end

    entry do
      name 'git branch'
      notes "
```
gb
```"
    end

    entry do
      name 'git branch -a'
      notes "
```
gba
```"
    end

    entry do
      name 'git shortlog -sn'
      notes "
```
gcount
```"
    end

    entry do
      name 'git config --list'
      notes "
```
gcl
```"
    end

    entry do
      name 'git cherry-pick'
      notes "
```
gcp
```"
    end

    entry do
      name 'git log --stat --max-count=10'
      notes "
```
glg
```"
    end

    entry do
      name 'git log --graph --max-count=10'
      notes "
```
glgg
```"
    end

    entry do
      name 'git log --graph --decorate --all'
      notes "
```
glgga
```"
    end

    entry do
      name 'git log --oneline --decorate --color'
      notes "
```
glo
```"
    end

    entry do
      name 'git log --oneline --decorate --color --graph'
      notes "
```
glog
```"
    end

    entry do
      name 'git status -s'
      notes "
```
gss
```"
    end

    entry do
      name 'git add'
      notes "
```
ga
```"
    end

    entry do
      name 'git merge'
      notes "
```
gm
```"
    end

    entry do
      name 'git reset HEAD'
      notes "
```
grh
```"
    end

    entry do
      name 'git reset HEAD --hard'
      notes "
```
grhh
```"
    end

    entry do
      name 'git reset --hard && git clean -dfx'
      notes "
```
gclean
```"
    end

    entry do
      name 'git whatchanged -p --abbrev-commit --pretty=medium'
      notes "
```
gwc
```"
    end

    entry do
      name 'git stash show --text'
      notes "
```
gsts
```"
    end

    entry do
      name 'git stash'
      notes "
```
gsta
```"
    end

    entry do
      name 'git stash pop'
      notes "
```
gstp
```"
    end

    entry do
      name 'git stash drop'
      notes "
```
gstd
```"
    end

    entry do
      name 'git pull origin $(current&#95;branch)'
      notes "
```
ggpull
```"
    end

    entry do
      name 'git pull --rebase origin $(current&#95;branch)'
      notes "
```
ggpur
```"
    end

    entry do
      name 'git push origin $(current&#95;branch)'
      notes "
```
ggpush
```"
    end

    entry do
      name 'git pull origin $(current&#95;branch) && git push origin $(current&#95;branch)'
      notes "
```
ggpnp
```"
    end

    entry do
      name '&#95;git&#95;log&#95;prettily'
      notes "
```
glp
```"
    end
  end

  notes <<-'END'
  * Based on the oh-my-zsh [Wiki Page](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet#helpful-aliases-for-common-git-tasks)
  * Convert by [Carsten] (https://github.com/BanditsBacon)
  END
end