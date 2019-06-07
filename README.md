# Asterisk-AMI-Transfer-Utility

This is a simple GUI tool for testing Asterisk AMI transfer functionality on Debian, Ubuntu, Linux desktop enviroments. 


How To Install

Install expect

sudo apt-get install expect

download zip and extract files ~ forms.sh, repeat.sh, xfer.expect to Dir ~/xfr

mkdir ~/xfr

sudo unzip ~/Downloads/Asterisk-AMI-transfer-tool-master.zip -d "~/xfr"

cd ~/xfr

sudo chmod a+x forms.sh

sudo chmod a+x repeat.sh

sudo chmod a+x xfer.expect

touch status.log

Launch forms.sh and complete the AMI parameters required for the transfer.

./forms.sh

You can also pass arguments directly to repeat.sh, the format is:

./repeat.sh hostip hostport user password exten(agent exten) context(this is the transfer context) to-exten(other party number)

example: ./repeat.sh 192.168.0.50 5038 admin easypass 5000 reception 1000

Make a call and click transfer, the call will be transfered to extension 1000 everytime you click and transfer a new call.

To run without Terminal:
Copy the AMIT.desktop to your desktop
Change the {user} parameter EXEC and Icon to your current user.
sudo chmod +777 ~/Desktop/AMIT.desktop
sudo chmod +x ~/Desktop/AMIT.desktop

You can now click on the icon to start AMITU



