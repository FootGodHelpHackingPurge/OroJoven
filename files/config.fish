# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end

function __fish_command_not_found_handler --on-event fish_command_not_found
	/data/data/com.termux/files/usr/libexec/termux/command-not-found $argv[1]
end


function fish
clear
figlet OroJoven | lolcat 
sleep 1
echo ""
echo '	      Created by Alejo' | lolcat
sleep 1
echo '	To be a hacker, you must be good' | lolcat
sleep 1
echo '	    I wish you a nice day!' | lolcat
sleep 1
echo '    to display the help list type ojhelp' | lolcat       
sleep 1
echo ""
end
       
fish

function c
clear;fish
end
function ojroot 
echo "-root access"
sleep 1
proot -0 -w ~ $PREFIX/bin/bash;
end
function u    
echo -e "\033[110m-user\033[0m\033[92m"; whoami 
end
function sd
echo "-sdcard"; cd /sdcard 
end
function ojtools
echo "-tools install DarkFly"
git clone https://github.com/Ranginang67/DarkFly-Tool
cd DarkFly-Tool
python2 install.py
cd $PREFIX/bin
mv DarkFly ~
cd
bash /data/data/com.termux/files/home/DarkFly
sleep 1
end
function Dark-Fly
-DarkFly
bash /data/data/com.termux/files/home/DarkFly
end 
function dateact
echo "-dateact"
sleep 1
apt update -y
end
function gradeact
echo "-gradeact"
sleep 1
apt upgrade
end



function ojhelp
echo "commands in OroJoven"
echo -e "c --> (\033[92mrefresh OroJoven\033[0m)"
echo -e "ojroot --> (\033[92mroot access for termux\033[0m)"
echo -e "u --> (\033[92muser in termux\033[0m)"
echo -e "sd --> (\033[92menter your internal storage\033[0m)"
echo -e "ojtools --> (\033[92minstall tools\033[0m)"
echo -e "Dark-Fly --> (\033[92mRun the DarkFly program (requires tools)\033[0m)"
echo -e "dateact --> (\033[92mupdate data in OroJoven\033[0m)"
echo -e "gradeact --> (\033[92mboosts performance in OroJoven\033[0m)"
end



function fish_prompt
    echo (set_color brcyan )"?"(set_color red)"-"(set_color blue)"> "

   end

