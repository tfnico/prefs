git filter-branch -f --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "Thomas Ferris Nicolaisen" ];
        then
                GIT_COMMITTER_NAME="Thomas Ferris Nicolaisen";
                GIT_AUTHOR_NAME="Thomas Ferris Nicolaisen";
                GIT_COMMITTER_EMAIL="thomas.nicolaisen@viaboxx.de";
                GIT_AUTHOR_EMAIL="thomas.nicolaisen@viaboxx.de";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD
