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

Step 0) Intall

    Open a terminal and run ./intall_tunnel-check.sh
    Provide the name of the VPN/SSH Tunnel Host you wish to use
    Say which program you wish to kill when the conneciton is not open

Step 1) Setup Cron to Run Script Once Per Minute

    crontab -e

Step 2) Turn to edit-mode and past

    Press 'i'
    Paste this into the crontab for it to run once per minute:
    
    * * * * * /bin/bash /opt/local/bin/tunnel_check.sh > /dev/null

Step 3) Save and quit crontab

    Press ":wq" followed by the enter key

Requirements
=====
Mac OS X.11 or higher


License
=====
Copyleft 2017 under the <a href="http://www.gnu.org/licenses/gpl-3.0.html">GPL v3</a> or higher.

	
