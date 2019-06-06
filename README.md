# Asterisk-AMI-transfer-tool

This is a simple GUI tool for testing Asterisk AMI transfer functionality on Debian, Ubuntu, Linux desktop enviroments. 


How To Install

Install expect

sudo apt-get install expect

download zip and extract files ~ forms.sh, repeat.sh, xfer.expect to Dir ~/xfr

cd ~/xfr

chmod a+x forms.sh

chmod a+x repeat.sh

chmod a+x xfer.expect

touch status.log

Launch forms.sh and complete the AMI parameters required for the transfer.
./forms.sh

You can also pass arguments to repeat.sh directly, the format is:

./repeat.sh hostip hostport user password exten(agent exten) context(this is the transfer context) to-exten(other party number)

example: ./repeat.sh 192.168.0.50 5038 admin easypass 5000 reception 1000

Make a call and click transfer, the call will be transfered to extension 1000 everytime you click transfer.


