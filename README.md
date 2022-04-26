# Who monitor the monitoring ?
The idea is to create a check that uses the entire nagios/centreon/Inciga pipeline to send each minutete a notification to deadman snitch.
https://deadmanssnitch.com/

Then use deadman snitch to be notify in case of heartbeat missing.

# Nagios_deadman
create a dummy check which triggers randomly and use deadman. Work with nagios* like shinken, inciga, centreon.

# How-to
1 - create a nagios check command who call **nagios_state.sh**

2 - create an fake monitored Host with localhost ip adress and assign the check command above through a service or a check command.

3 - Link this "faky deadman host" to a notification command who rise email to deadman snitch at every status changing.


# Debug

use **watch command** to try the script

    watch ./random_nagios_state.sh


you should have randomly each 2sc a new nagios ready state (OK / WARNING / CRITICAL) :


    Every 2.0s: ./random_nagios_state.sh                                                                                                                        Tue Apr 26 10:25:09 2022

    OK

