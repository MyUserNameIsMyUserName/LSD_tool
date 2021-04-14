echo "<]|- SERVER/RUNNER TEST ROOT -|[>"
gituser=$(git config user.name)
timenow=$(date '+%Y_%m_%d__%H_%M_%S')
cd ./SERVER/
npm run _start_app_test
cd ..
cd ./RUNNER/
npm run _start_app_test
cd ..
echo "<]|- YEAAA DONE TESTING -|[>"
sleep 5
exit 1
