# Process Management

A process is a running instance of a software program /pacakge.

Every process has a parent. The top most process is `init`, whose process id is 1


`ps` is the command to check all the processes and their resource utilization (CPU & memory)

`ps` also gives the process id.

`ps aux`


`kill` is the command to stop any process
`kill <pid>`

To force kill a program :

`kill -9 <pid>`

Top Command:

This command gives real time information about the processes adn their utilization

The data get refreshed every 3 seconds. You could change it by pressing 's'

The processes are sorted by CPU utilization by default. IF you want to change that you could press 'f' and select other field.

You can also kill the program by pressing 'k'

load average : 
The number of processes waiting for CPU in the last 1 minute, last 5 minutes, and last 15 minutes

Niceness ranges -20 to 20. Lesser the Niceness higher the priority.










