echo "[ A^O_MyPrecious - WELCOME ]"
echo ""
echo "- Starting Full Installation Process -"
echo ""
echo "-:>  1. SERVER_APP "
echo ""
cd ./SERVER/
npm run _install_req
cd ..
echo "-:>[  1. SERVER_APP - DONE -> InstallRequired ]<:-"
echo ""
echo ""
echo "-:>  2. RUNNER_APP "
echo ""
cd ./RUNNER/
npm run _install_req
cd ..
echo "-:>[  2. RUNNER_APP - DONE -> InstallRequired ]<:-"
echo ""
echo "+------------------------------------+"
echo "+ INSTALL COMPLETED - A^O_MyPrecious +"
echo "+------------------------------------+"
echo ""
echo "CONFIRMING INSTALLATION...>...>... "
echo ""
echo "-> 1. Test Notification send >> "
testnotification=$(notify -t "WELCOME A^O_MyPrecious" -m "[1. Test Notification send - CONTENT OF THIS NOTIFICATION]" -s --open http://github.com)

case $testnotification in

activate)
    echo -n "Notification_Status >> [:activate:]"
    notify -t "LOOK MORTY" -m "Somebody actually click this \\O_O/ " --icon ./assets/morty.png
    ;;

dismissed)
    echo -n "Notification_Status >> [:dismissed:]"
    notify -t "LOOK MORTY" -m "Nice, even better click \"O.O\" " --icon ./assets/morty.png
    ;;

timeout)
    echo -n "Notification_Status >> [:timeout:]"
    notify -t "LOOK MORTY" -m "They are trying to ingore us... " --icon ./assets/morty.png
    ;;

*)
    echo -n "Notification_Status >> [:any(*):]"
    echo -n "- Potential error cuz notification didn't return : timeout : but went to {any} value. -"
    ;;
esac
