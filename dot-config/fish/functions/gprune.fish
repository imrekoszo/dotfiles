function gprune -d "Deletes branches whose tracked branch is gone"
  ggone | xargs -n 1 git branch -d
end
