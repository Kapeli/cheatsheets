cheatsheet do
  title 'Oh-My-Zsh Git'
  docset_file_name 'Oh-My-Zsh_Git'
  keyword 'ohmyzsh'
  source_url 'http://cheat.kapeli.com'
  style 'td.command, td.td_command {padding: 13px 8px 0px 8px}'
  
  category do
    id 'Aliases'

    entry do
      name '
```
git
```'
      command "g"
    end

    entry do
      name '
```
git status
```'
      command "gst"
    end

    entry do
      name '
```
git pull
```'
      command "gl"
    end

    entry do
      name '
```
git pull --rebase
```'
      command "gup"
    end

    entry do
      name '
```
git push
```'
      command "gp"
    end

    entry do
      name '
```
git diff
```'
      command "gd"
    end

    entry do
      name '
```
git diff --cached
```'
      command "gdc"
    end

    entry do
      name '
```
git diff ~~w "$`" | view -
```'
      command "gdv"
    end

    entry do
      name '
```
git commit -v --amend
```'
      command "gc!"
    end

    entry do
      name '
```
git commit -v -a
```'
      command "gca"
    end

    entry do
      name '
```
git commit -v -a --amend
```'
      command "gca!"
    end

    entry do
      name '
```
git commit -m
```'
      command "gcmsg"
    end

    entry do
      name '
```
git checkout
```'
      command "gco"
    end

    entry do
      name '
```
git checkout master
```'
      command "gcm"
    end

    entry do
      name '
```
git remote
```'
      command "gr"
    end

    entry do
      name '
```
git remote -v
```'
      command "grv"
    end

    entry do
      name '
```
git remote rename
```'
      command "grmv"
    end

    entry do
      name '
```
git remote remove
```'
      command "grrm"
    end

    entry do
      name '
```
git remote set-url
```'
      command "gsetr"
    end

    entry do
      name '
```
git remote update
```'
      command "grup"
    end

    entry do
      name '
```
git rebase -i
```'
      command "grbi"
    end

    entry do
      name '
```
git rebase --continue
```'
      command "grbc"
    end

    entry do
      name '
```
git rebase --abort
```'
      command "grba"
    end

    entry do
      name '
```
git branch
```'
      command "gb"
    end

    entry do
      name '
```
git branch -a
```'
      command "gba"
    end

    entry do
      name '
```
git shortlog -sn
```'
      command "gcount"
    end

    entry do
      name '
```
git config --list
```'
      command "gcl"
    end

    entry do
      name '
```
git cherry-pick
```'
      command "gcp"
    end

    entry do
      name '
```
git log --stat --max-count=10
```'
      command "glg"
    end

    entry do
      name '
```
git log --graph --max-count=10
```'
      command "glgg"
    end

    entry do
      name '
```
git log --graph --decorate --all
```'
      command "glgga"
    end

    entry do
      name '
```
git log --oneline --decorate --color
```'
      command "glo"
    end

    entry do
      name '
```
git log --oneline --decorate --color --graph
```'
      command "glog"
    end

    entry do
      name '
```
git status -s
```'
      command "gss"
    end

    entry do
      name '
```
git add
```'
      command "ga"
    end

    entry do
      name '
```
git merge
```'
      command "gm"
    end

    entry do
      name '
```
git reset HEAD
```'
      command "grh"
    end

    entry do
      name '
```
git reset HEAD --hard
```'
      command "grhh"
    end

    entry do
      name '
```
git reset --hard && git clean -dfx
```'
      command "gclean"
    end

    entry do
      name '
```
git whatchanged -p --abbrev-commit --pretty=medium
```'
      command "gwc"
    end

    entry do
      name '
```
git stash show --text
```'
      command "gsts"
    end

    entry do
      name '
```
git stash
```'
      command "gsta"
    end

    entry do
      name '
```
git stash pop
```'
      command "gstp"
    end

    entry do
      name '
```
git stash drop
```'
      command "gstd"
    end

    entry do
      name '
```
git pull origin $(current_branch)
```'
      command "ggpull"
    end

    entry do
      name '
```
git pull --rebase origin $(current_branch)
```'
      command "ggpur"
    end

    entry do
      name '
```
git push origin $(current_branch)
```'
      command "ggpush"
    end

    entry do
      name '
```
git pull origin $(current_branch) && git push origin $(current_branch)
```'
      command "ggpnp"
    end

    entry do
      name '
```
_git_log_prettily
```
'
      command "glp"
    end
  end

  notes <<-'END'
  * Based on the oh-my-zsh [Wiki Page](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet#helpful-aliases-for-common-git-tasks)
  * Converted by [Carsten] (https://github.com/BanditsBacon)
  END
end