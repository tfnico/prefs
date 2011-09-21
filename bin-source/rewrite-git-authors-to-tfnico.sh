git filter-branch --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "Thomas Ferris Nicolaisen" ];
        then
                GIT_COMMITTER_NAME="Thomas Ferris Nicolaisen";
                GIT_AUTHOR_NAME="Thomas Ferris Nicolaisen";
                GIT_COMMITTER_EMAIL="tfnico@gmail.com";
                GIT_AUTHOR_EMAIL="tfnico@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD
