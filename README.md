# Asterisk-AMI-Transfer-Utility

This is a simple GUI tool for testing Asterisk AMI transfer functionality on Debian, Ubuntu, Linux Desktop environments. 

(How To Install.)

open terminal

mkdir ~/xfr

cd ~/xfr

(Install expect)

sudo apt-get install expect

(Download Asterisk-AMI-transfer-tool zip file from here and extract files ~ forms.sh, repeat.sh, xfer.expect to Dir ~/xfr.)

sudo unzip ~/Downloads/Asterisk-AMI-transfer-tool-master.zip -d ~/xfr

sudo mv Asterisk-AMI-transfer-tool-master/* ~/xfr

sudo rm -rf Asterisk-AMI-transfer-tool-master/*

(Make executable)

sudo chmod u+x forms.sh repeat.sh xfer.expect

(Create log file)

touch status.log

(Set permissions)

sudo chmod +777 forms.sh repeat.sh xfer.expect status.log

(Launch forms.sh and complete the AMI parameters required for the transfer.)

./forms.sh

(You can also pass arguments directly to repeat.sh, the format is:

./repeat.sh hostip hostport user password exten(agent exten) context(this is the transfer context) to-exten(other party number)

example: ./repeat.sh 192.168.0.50 5038 admin easypass 5000 reception 1000

The agent will receive a call, answer, speak and when ready click transfer, the call will be transfered to extension<1000--reception>)

The Application will send commands to Asterisk AMI to transfer the call.

                          ***********************************************************************

To run without Terminal and with Desktop Icon:

Copy the AMIT.desktop file to your desktop

(Use text editor and edit the {$HOME} parameters in the file, setting it to your current installed $HOME e.g. /HOME/USER/xfr.

(Do echo $HOME on your terminal to find your setting)

(Set Permissions and make executable)

sudo chmod +777 ~/Desktop/AMIT.desktop&&sudo chmod u+x ~/Desktop/AMIT.desktop

You can now click on the icon to start AMITU.



                        ****************************___________________*************************
