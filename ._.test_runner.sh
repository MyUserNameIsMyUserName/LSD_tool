echo "<]|- SERVER/RUNNER TEST ROOT -|[>"
gituser=$(git config user.name)
timenow=$(date '+%Y_%m_%d__%H_%M_%S')
bash -c " cd RUNNER ; npm run _start_app >> ../tests_output/sh_custom/runner.test_result.$timenow.txt ; "
bash -c " cd SERVER ; npm run _start_app >> ../tests_output/sh_custom/server.test_result.$timenow.txt ; "
echo "<]|- YEAAA DONE TESTING -|[>"
sleep 5
exit 1
