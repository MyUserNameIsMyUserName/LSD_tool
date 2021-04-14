echo "<]|- SERVER/RUNNER TEST ROOT -|[>"
start bash -c " cd RUNNER ; npm run start_runner >> ../tests_output/sh_custom/runner.test_result.txt ; " 
start bash -c " cd SERVER ; npm run start_server >> ../tests_output/sh_custom/server.test_result.txt ; " 
echo "<]|- YEAAA DONE TESTING -|[>"
sleep 5
exit 1