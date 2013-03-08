rem @echo off

rem IMPORTANT
rem 1) manually delete all .py and .pyc files in the ui directory
rem 2) create a blank file called __init__.py and then cd to the ui directory before running this script

rem must be done manually for now
echo Building resources

rem IMPORTANT
rem This will be in {Python root directory}\Lib\site-packages\PyQt4
rem Be sure to add it to the PATH
pyrcc4 resources.qrc -o resources_rc.py

echo Building UI files
echo Compiling chatmessage.py...
call pyuic4 chatmessage.ui -o chatmessage.py
echo Compiling main.py...
call pyuic4 main.ui -o main.py
echo Compiling memberoverview.py...
call pyuic4 memberoverview.ui -o memberoverview.py
echo Compiling member_search.py...
call pyuic4 member_search.ui -o member_search.py
echo Compiling message_search.py...
call pyuic4 message_search.ui -o message_search.py
echo Compiling squareeditdialog.py...
call pyuic4 squareeditdialog.ui -o squareeditdialog.py
echo Compiling squareoverview.ui -o squareoverview.py
call pyuic4 squareoverview.ui -o squareoverview.py
echo Compiling square_search.ui
call pyuic4 square_search.ui -o square_search.py

echo All done!
