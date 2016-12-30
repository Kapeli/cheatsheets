cheatsheet do
    title 'Git Subversion'
    docset_file_name 'Git_Subversion'
    keyword 'git-svn'
    source_url 'http://cheat.kapeli.com'

    introduction 'Cheat sheet for git-svn, using a git client to connect to a subversion repository. See [Git and Subversion](http://git-scm.com/book/en/Git-and-Other-Systems-Git-and-Subversion).'

    category do
        id 'Creating a Repository'

        entry do
            command 'git svn init'
            name 'Initialize a git-svn repo'
            notes "
                Initializes the git-svn repository corresponding to a remote subversion repository with the standard layout.

                ```
                git svn init <svn-repo-url> --stdlayout --prefix=origin/
                ```

                Standard layout consists of `trunk/`, `tags/`, `branches/`.
                If the layout isn't standard, you can instead specify the subfolders : 

                ```
                git svn init <svn-repo-url> --trunk=<folder> --tags=<folder> --branches=<folder> --prefix=origin/
                ```

                Prefix is optional, but the default for git-svn will soon be `origin/`.
            "
        end

        entry do
            command 'git svn fetch'
            name 'Fetch subversion commits'
            notes "
                Once you've initialized the repository, you need to populate it with the commits from subversion. 
                If you prefer, you can use `git svn clone` to do an init and fetch together.
            "
        end

        entry do
            command 'git svn clone'
            name 'Initialize and fetch together'
            notes "
                If you prefer to initialize the repository and fetch all at once, you might prefer:

                ```
                git svn clone <svn-repo-url> --stdlayout --prefix=origin/
                ```

                You have roughly the same options as you would for `git svn init`, but it will be followed up with an implicit fetch.
            "
        end
    end
    
    category do
        id 'Using the Repository'

        entry do
            command 'git svn rebase'
            name 'Update your repository'
            notes "You can't have local changes when you do this, so you'll need to commit or stash first."
        end

        entry do
            command 'git svn dcommit'
            name 'Push your commits'
            notes "Push the commits that you've committed to your git repository to the remote subversion repository."
        end
    end

    category do
        id 'Branches'

        entry do
            command 'git svn branch'
            name 'Create branch in subversion'
            notes "
                Create a new branch in the remote subversion repository:

                ```
                command 'git svn branch <branch name>'
                ```

                If you specify `-t` or `--tag`, it'll be a tag instead of a branch, but `git svn tag` is maybe simpler.
            "
        end

        entry do
            command 'git svn tag'
            name 'Create tag in subversion'
            notes "
                Create a new tag in the remote subversion repository:

                ```
                git svn tag <tag name>
                ```

                This may be easier to remember than `git svn branch --tag <branchname>`.
            "
        end

        entry do
            name 'List remote branches'
            command 'git branch -r'
            notes "
                List all the remote subversion branches that your git repository knows about. 
                This is the same command you'd use in git.
                "
        end

        entry do
            command 'git svn fetch'
            name "Fetch new branches"
            notes "Fetches new branches from subversion that your git repository doesn't know about."
        end

        entry do
            command 'git branch'
            name 'Create a local branch'
            notes "
                If you want to create a local branch matching a remote branch but you don't want to switch to it:
                
                ```
                git branch <local branch name> remotes/<prefix>/<remote branch name>
                ```
            "
        end

        entry do
            command 'git checkout'
            name "Switch to a local branch"
            notes "
                Once you've created your local branch, switching to it is done in the same way as within git:

                ```
                git checkout <local-branch-name>
                ```
            "
        end

        entry do
            command 'git checkout -b'
            name "Create branch and checkout"
            notes "
                If you want to create the branch and switch to it right away, you can combine the two:

                ```
                git checkout -b <local-branch-name> remotes/<prefix>/<remote-branch-name>
                ```
            "
        end

    end

    category do
        id 'Metadata'

        entry do
            command 'git svn find-rev'
            name 'Finding git commit for svn revision'
            notes "
                Finding the git commit corresponding to a revision number in the remote subversion repository:

                ```
                git svn find-rev r<change number>
                ```
            "
        end

        entry do
            command 'git svn info'
            name 'Getting subversion info'
            notes "
                Getting the subversion repository information like `svn info` would.
            "
        end

        entry do
            command 'git svn show-ignore'
            name "Copy subversion ignores"
            notes "
                Extract subversion ignore metadata and put it in your git config directory:

                ```
                git svn show-ignore >> .git/info/exclude
            "
        end
    end

    notes "
        * Created by [Geoffrey Wiseman](http://geoffreywiseman.ca). Contributions welcome.
    "
end