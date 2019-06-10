# Asterisk-AMI-Transfer-Utility

This is a simple GUI tool for testing Asterisk AMI transfer functionality on Debian, Ubuntu, Linux Desktop environments. 

(How To Install.)

open terminal

mkdir ~/xfr

cd ~/xfr

(Install expect)

sudo apt-get install expect

(Download Asterisk-AMI-transfer-tool zip file from here and extract files to Dir ~/xfr.)
wget https://github.com/Rex71/Asterisk-AMI-transfer-tool/archive/master.zip

sudo unzip master.zip -d ~/xfer

sudo mv Asterisk-AMI-transfer-tool-master/* ~/xfer

sudo rm -rf Asterisk-AMI-transfer-tool-master/

sudo rm -rf master.zip

(Make executable)

sudo chmod u+x *.sh *.expect *.desktop

(Create log file)

touch status.log

(Set permissions)

sudo chmod +777 *

(Launch forms.sh and complete the AMI parameters required for the transfer.)

./debug_forms.sh

(You can also pass arguments directly to repeat.sh, the format is:

./debug_repeat.sh hostip hostport user password exten(agent exten) context(this is the transfer context) to-exten(other party number)

example: ./repeat.sh 192.168.0.50 5038 admin easypass 5000 reception 1000

For debug : tail -f status.log 

The agent will receive a call, answer, speak and when ready click transfer, the call will be transfered to extension<1000--reception>)

The Application will send commands to Asterisk AMI to transfer the call.

                          ***********************************************************************

To run without Terminal and with Desktop Icon and Menu Options:

Copy the AMIT.desktop file to your desktop

(Use text editor and edit the Exec=/home/${user} parameters in the file, setting it to your current installed $HOME e.g. /home/peter/xfr.

(Do echo $HOME on your terminal to find your setting)

(Set Permissions and make executable)

sudo chmod +777 ~/Desktop/AMIT.desktop&&sudo chmod u+x ~/Desktop/AMIT.desktop

You can now click on the icon to start AMITU.



                        ****************************___________________*************************
