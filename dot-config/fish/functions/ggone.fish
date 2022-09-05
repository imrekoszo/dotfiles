function ggone -d "Prints the names of local git branches whose tracked branches have been deleted"
    # branch-track is custom in gitconfig
    git branch-track | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'
end
