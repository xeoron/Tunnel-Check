Tunnel Check
=====
Purpose: 

Crontab script that checks to see if a SSH and VPN Tunnel is open to service of your choosing, 
and if it is not then it will exterminate program of your choice.

Example:

    If you have a SSH & VPN Tunnel to your company, but the VPN connection fails, 
    then it can cut turn off your program from running that you are using on the VPN/SSH Tunnel.


Setup
======

Step 0)
    Edit the script and fill in the vpn/ssh service and program name fields 

    SERVICE='vpn/ssh-service-name-here'
    PROGRAM='program-Name-Here'

In the Terminal run the below commands
Step 1) 

    sudo mv ./tunnel_check.sh /opt/local/bin/

Step 2) 

    crontab -e

Step 3) 

    Press 'i'

Step 4) Paste this into the crontab for it to run once per minute

    * * * * * /bin/bash /opt/local/bin/tunnel_check.sh > /dev/null

Step 5) Press ":wq" followed by the enter key

Requirements
=====
Mac OS X.11 or higher


License
=====
Copyleft 2017 under the <a href="http://www.gnu.org/licenses/gpl-3.0.html">GPL v3</a> or higher.

	
