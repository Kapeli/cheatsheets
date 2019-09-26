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
git add
```'
      command "ga"
    end

    entry do
      name '
```
git add --all
```'
      command "gaa"
    end

    entry do
      name '
```
git add --patch
```'
      command "gapa"
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
git branch --merged | command grep -vE "^(*|\smaster\s$)" | command xargs -n 1 git branch -d
```'
      command "gbda"
    end

    entry do
      name '
```
git blame -b -w
```'
      command "gbl"
    end

    entry do
      name '
```
git branch --no-merged
```'
      command "gbnm"
    end

    entry do
      name '
```
git branch --remote
```'
      command "gbr"
    end

    entry do
      name '
```
git bisect
```'
      command "gbs"
    end

    entry do
      name '
```
git gbsb
```'
      command "git bisect bad"
    end

    entry do
      name '
```
git gbsg
```'
      command "git bisect good"
    end

    entry do
      name '
```
git gbsr
```'
      command "git bisect reset"
    end

    entry do
      name '
```
git bisect start
```'
      command "gbss"
    end

    entry do
      name '
```
git commit -v
```'
      command "gc"
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
git commit -a -m
```'
      command "gcam"
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
git commit -v -a -s --no-edit --amend
```'
      command "gcan!"
    end

    entry do
      name '
```
git checkout -b
```'
      command "gcb"
    end

    entry do
      name '
```
git config --list
```'
      command "gcf"
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
git clean -fd
```'
      command "gclean"
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
git checkout develop
```'
      command "gcd"
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
git shortlog -sn
```'
      command "gcount"
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
git cherry-pick --abort
```'
      command "gcpa"
    end

    entry do
      name '
```
git cherry-pick --continue
```'
      command "gcpc"
    end

    entry do
      name '
```
git commit -S
```'
      command "gcs"
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
      command "gdca"
    end

    entry do
      name '
```
git diff-tree --no-commit-id --name-only -r
```'
      command "gdt"
    end

    entry do
      name '
```
git diff --word-diff
```'
      command "gdw"
    end

    entry do
      name '
```
git fetch
```'
      command "gf"
    end

    entry do
      name '
```
git fetch --all --prune
```'
      command "gfa"
    end

    entry do
      name '
```
git fetch origin
```'
      command "gfo"
    end

    entry do
      name '
```
git gui citool
```'
      command "gg"
    end

    entry do
      name '
```
git gui citool --amend
```'
      command "gga"
    end

    entry do
      name '
```
git help
```'
      command "ghh"
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
git pull origin $(current_branch)
```'
      command "ggl"
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
git pull upstream master
```'
      command "glum"
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
git push origin $(current_branch)
```'
      command "ggp"
    end

    entry do
      name '
```
git branch --set-upstream-to=origin/$(current_branch)
```'
      command "ggsup"
    end

    entry do
      name '
```
git push --set-upstream origin $(current_branch)
```'
      command "gpsup"
    end

    entry do
      name '
```
git update-index --assume-unchanged
```'
      command "gignore"
    end

    entry do
      name '
```
git ls-files -v
```'
      command "gignored"
    end

    entry do
      name '
```
git svn dcommit && git push github master:svntrunk
```'
      command "git-svn-dcommit-push"
    end

    entry do
      name '
```
\gitk --all --branches
```'
      command "gk"
    end

    entry do
      name '
```
\gitk --all $(git log -g --pretty = format:\%h)
```'
      command "gke"
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
git log --stat --color
```'
      command "glg"
    end

    entry do
      name '
```
git log --graph --color
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
git log --graph --max-count = 10
```'
      command "glgm"
    end

    entry do
      name '
```
git log --stat --color -p
```'
      command "glgp"
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
git log --graph --pretty = format:\'\%Cred\%h\%Creset -\%C(yellow)\%d\%Creset \%s \%Cgreen(\%cr) \%C(bold blue)<\%an>\%Creset\' --abbrev-commit
```'
      command "glol"
    end

    entry do
      name '
```
git log --graph --pretty = format:\'\%Cred\%h\%Creset -\%C(yellow)\%d\%Creset \%s \%Cgreen(\%cr) \%C(bold blue)<\%an>\%Creset\' --abbrev-commit --all
```'
      command "glola"
    end

    entry do
      name '
```
_git_log_prettily
```'
      command "glp"
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
git merge origin/master
```'
      command "gmom"
    end

    entry do
      name '
```
git mergetool --no-prompt
```'
      command "gmt"
    end

    entry do
      name '
```
git mergetool --no-prompt --tool = vimdiff
```'
      command "gmtvim"
    end

    entry do
      name '
```
git merge upstream/master
```'
      command "gmum"
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
git push --dry-run
```'
      command "gpd"
    end

    entry do
      name '
```
git push origin --all && git push origin --tags
```'
      command "gpoat"
    end

    entry do
      name '
```
git reset --hard && git clean -dfx
```'
      command "gpristine"
    end

    entry do
      name '
```
git push upstream
```'
      command "gpu"
    end

    entry do
      name '
```
git push -v
```'
      command "gpv"
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
git remote add
```'
      command "gra"
    end

    entry do
      name '
```
git rebase
```'
      command "grb"
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
git rebase --continue
```'
      command "grbc"
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
git rebase master
```'
      command "grbm"
    end

    entry do
      name '
```
git rebase --skip
```'
      command "grbs"
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
      command "grset"
    end

    entry do
      name '
```
cd $(git rev-parse --show-toplevel
```'
      command "grt"
    end

    entry do
      name '
```
git reset --
```'
      command "gru"
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
git remote -v
```'
      command "grv"
    end

    entry do
      name '
```
git status -sb
```'
      command "gsb"
    end

    entry do
      name '
```
git svn dcommit
```'
      command "gsd"
    end

    entry do
      name '
```
git submodule init
```'
      command "gsi"
    end

    entry do
      name '
```
git show --pretty = short --show-signature
```'
      command "gsps"
    end

    entry do
      name '
```
git svn rebase
```'
      command "gsr"
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
git status
```'
      command "gst"
    end

    entry do
      name '
```
git stash save
```'
      command "gsta"
    end

    entry do
      name '
```
git stash apply
```'
      command "gstaa"
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
git stash list
```'
      command "gstl"
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
git stash clear
```'
      command "gstc"
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
git submodule update
```'
      command "gsu"
    end

    entry do
      name '
```
git tag -s
```'
      command "gts"
    end

    entry do
      name '
```
git update-index --no-assume-unchanged
```'
      command "gunignore"
    end

    entry do
      name '
```
git log -n 1 | grep -q -c "--wip--" && git reset HEAD~1
```'
      command "gunwip"
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
git pull --rebase -v
```'
      command "gupv"
    end

    entry do
      name '
```
git verify-tag
```'
      command "gvt"
    end

    entry do
      name '
```
git whatchanged -p --abbrev-commit --pretty = medium
```'
      command "gwch"
    end

    entry do
      name '
```
git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit -m "--wip--"
```'
      command "gwip"
    end
  end

  notes <<-'END'
  * Based on the oh-my-zsh [Wiki Page](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet#helpful-aliases-for-common-git-tasks)
  * Converted by [Carsten](https://github.com/BanditsBacon) and [ftwbzhao](https://github.com/ftwbzhao)
  END
end
