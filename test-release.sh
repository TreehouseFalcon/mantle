git add .
git commit -m "Update release workflow"
git push
vers=$(cat ver.txt)
let vers++
echo $vers > ver.txt
git tag -s v0.0.1-rc$vers -m "Update release workflow"
git push --tags