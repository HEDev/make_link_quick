@ECHO OFF
ECHO The purpose of this is to easily use the make link command. One example usage is to link a repo to a local server for easier repo + testing. Mklink is used which is easy but this is just plain stupid easy as I always forget the command/order. Another usage could be referring to the same file in multiple spots, such as a photo related to numerous folders (say by date, event, etc).

set "link_from=<ENTER_DEFAULT_LINK_FROM>"
ECHO Enter a directory to link from below. Press enter to accept default (%link_from%)
set /p "link_from=Enter LINK FROM Folder: "


set "link_to=<ENTER_DEFAULT_LINK_TO>"
ECHO Enter a directory to link to below (aka the mock location). Press enter to accept default (%link_to%)
set /p "link_to=Enter LINK TO Folder: "

::mklink see usage https://ss64.com/nt/mklink.html
mklink /D %link_to% %link_from%

ECHO If all went well,
ECHO:
ECHO %link_from%
ECHO:
ECHO Points To:
ECHO:
ECHO %link_to%

ECHO:
ECHO Note: if you got insufficient priveledge above, did you run as admin?

::Dont close
PAUSE
