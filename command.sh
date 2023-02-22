npx create-react-app collaboration
cd collaboration
gh repo create collaboration --public
git remote add origin git@github.com:ngisah/collaboration.github
git branch -M Main
git push -u origin Main
git checkout -b update_logo
# Replace existing logo and link manually
git add .
git commit -m "Update logo and link"
git push --set-upstream origin update_logo
gh pr create --base master --head update_logo --title "Update logo and link"
gh pr merge --auto --merge --delete-branch

# REPO_URL <https://github.com/ngisah/collaboration>
