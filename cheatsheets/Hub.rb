cheatsheet do
  title 'Hub'
  docset_file_name 'Hub'
  keyword 'hub'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Hub'

    entry do
      name 'clone'
      notes "
```
$ hub clone schacon/ticgit
> git clone git://github.com/schacon/ticgit.git

$ hub clone -p schacon/ticgit
> git clone git@github.com:schacon/ticgit.git

$ hub clone resque
> git clone git@github.com/YOUR_USER/resque.git
```
      "
    end

    entry do
      name 'remote add'
      notes "
```
$ hub remote add rtomayko
> git remote add rtomayko git://github.com/rtomayko/CURRENT_REPO.git

$ hub remote add -p rtomayko
> git remote add rtomayko git@github.com:rtomayko/CURRENT_REPO.git

$ hub remote add origin
> git remote add origin git://github.com/YOUR_USER/CURRENT_REPO.git
```
      "
    end

    entry do
      name 'fetch'
      notes "
```
$ hub fetch mislav
> git remote add mislav git://github.com/mislav/REPO.git
> git fetch mislav

$ hub fetch mislav,xoebus
> git remote add mislav ...
> git remote add xoebus ...
> git fetch --multiple mislav xoebus
```
      "
    end

    entry do
      name 'cherry-pick'
      notes "
```
$ hub cherry-pick http://github.com/mislav/REPO/commit/SHA
> git remote add -f mislav git://github.com/mislav/REPO.git
> git cherry-pick SHA

$ hub cherry-pick mislav@SHA
> git remote add -f mislav git://github.com/mislav/CURRENT_REPO.git
> git cherry-pick SHA

$ hub cherry-pick mislav@SHA
> git fetch mislav
> git cherry-pick SHA
```
      "
    end

    entry do
      name 'am, apply'
      notes "
```
$ hub am https://github.com/defunkt/hub/pull/55
[ downloads patch via API ]
> git am /tmp/55.patch

$ hub am --ignore-whitespace https://github.com/davidbalbert/hub/commit/fdb9921
[ downloads patch via API ]
> git am --ignore-whitespace /tmp/fdb9921.patch

$ hub apply https://gist.github.com/8da7fb575debd88c54cf
[ downloads patch via API ]
> git apply /tmp/gist-8da7fb575debd88c54cf.txt
```
      "
    end

    entry do
      name 'fork'
      notes "
```
$ hub fork
[ repo forked on GitHub ]
> git remote add -f YOUR_USER git@github.com:YOUR_USER/CURRENT_REPO.git
```
      "
    end

    entry do
      name 'pull-request'
      notes <<-NOTE
```
# while on a topic branch called "feature":
$ hub pull-request
[ opens text editor to edit title & body for the request ]
[ opened pull request on GitHub for "YOUR_USER:feature" ]

# explicit title, pull base & head:
$ hub pull-request -m "Implemented feature X" -b defunkt:master -h mislav:feature
```
    NOTE
    end

    entry do
      name 'checkout'
      notes "
```
$ hub checkout https://github.com/defunkt/hub/pull/73
> git remote add -f -t feature mislav git://github.com/mislav/hub.git
> git checkout --track -B mislav-feature mislav/feature

$ hub checkout https://github.com/defunkt/hub/pull/73 custom-branch-name
```
      "
    end

    entry do
      name 'merge'
      notes "
```
$ hub merge https://github.com/defunkt/hub/pull/73
> git fetch git://github.com/mislav/hub.git +refs/heads/feature:refs/remotes/mislav/feature
> git merge mislav/feature --no-ff -m 'Merge pull request #73 from mislav/feature...'
```
      "
    end

    entry do
      name 'create'
      notes "
```
$ hub create
[ repo created on GitHub ]
> git remote add origin git@github.com:YOUR_USER/CURRENT_REPO.git

# with description:
$ hub create -d 'It shall be mine, all mine!'

$ hub create recipes
[ repo created on GitHub ]
> git remote add origin git@github.com:YOUR_USER/recipes.git

$ hub create sinatra/recipes
[ repo created in GitHub organization ]
> git remote add origin git@github.com:sinatra/recipes.git
```
      "
    end

    entry do
      name 'init'
      notes "
```
$ hub init -g
> git init
> git remote add origin git@github.com:YOUR_USER/REPO.git
```
      "
    end

    entry do
      name 'push'
      notes "
```
$ hub push origin,staging,qa bert_timeout
> git push origin bert_timeout
> git push staging bert_timeout
> git push qa bert_timeout
```
      "
    end

    entry do
      name 'browse'
      notes "
```
$ hub browse
> open https://github.com/YOUR_USER/CURRENT_REPO

$ hub browse -- commit/SHA
> open https://github.com/YOUR_USER/CURRENT_REPO/commit/SHA

$ hub browse -- issues
> open https://github.com/YOUR_USER/CURRENT_REPO/issues

$ hub browse -- issues/10
> open https://github.com/YOUR_USER/CURRENT_REPO/issues/10

$ hub browse schacon/ticgit
> open https://github.com/schacon/ticgit

$ hub browse schacon/ticgit commit/SHA
> open https://github.com/schacon/ticgit/commit/SHA

$ hub browse resque
> open https://github.com/YOUR_USER/resque

$ hub browse resque network
> open https://github.com/YOUR_USER/resque/network
```
      "
    end

    entry do
      name 'compare'
      notes "
```
$ hub compare refactor
> open https://github.com/CURRENT_REPO/compare/refactor

$ hub compare 1.0..1.1
> open https://github.com/CURRENT_REPO/compare/1.0...1.1

$ hub compare -u fix
> (https://github.com/CURRENT_REPO/compare/fix)

$ hub compare other-user patch
> open https://github.com/other-user/REPO/compare/patch
```
      "
    end

    entry do
      name 'submodule'
      notes "
```
$ hub submodule add wycats/bundler vendor/bundler
> git submodule add git://github.com/wycats/bundler.git vendor/bundler

$ hub submodule add -p wycats/bundler vendor/bundler
> git submodule add git@github.com:wycats/bundler.git vendor/bundler

$ hub submodule add -b ryppl --name pip ryppl/pip vendor/pip
> git submodule add -b ryppl --name pip git://github.com/ryppl/pip.git vendor/pip
```
      "
    end

    entry do
      name 'ci-status'
      notes "
```
$ hub ci-status [commit]
> (prints CI state of commit and exits with appropriate code)
> One of: success (0), error (1), failure (1), pending (2), no status (3)
```
      "
    end

    entry do
      name 'help'
      notes "
```
$ hub help
> (improved git help)
$ hub help hub
> (hub man page)
```
      "
    end
  end
end
