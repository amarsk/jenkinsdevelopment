git_repo_name=jenkinsdevelopment
git_repo_username=amarsk
git_repo_password=kuberiter123
curl -u $git_repo_username:$git_repo_password https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
REPO_DIR=/var/lib/jenkins/workspace/dev_build_job/target/
cd ${REPO_DIR}
git init
git config user.name git_repo_password
git config user.email "amarsk2112@gmail.com"
git add --all .
git commit -m "initial commit"
git remote add origin "https://git_repo_username:git_repo_password@github.com/amarsk/$repo_name.git"
git push -u origin master
rm -rf .git/
