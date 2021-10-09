echo "--------- Add all untracked file-folders------------";
git add .;

echo "------------commit - $1 is message and $2 is branch-----------------";

git commit -m "$1";

echo "-------------- Git Push $2 branch ----------------------";
git push origin $2;

echo "----------git Step Completed ---------------";
