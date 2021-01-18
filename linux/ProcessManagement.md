# Process Management

A process is an instance (i.e., running) of  a program. Or simply a program in execution is called as a process.  While a package/application/program is an executable file lying in some directory in the hard drive (storage), a process is started whent he user or another program calls (initializes) the program and this is opened in RAM and CPU allocates time to this.
	

Every process has a parent. The top most process is `init`, whose process id is 1

Stages of a process:
1. User-running
2. Kernel-running
3. Ready to run in memory
4. Asleep in Memory
5. Ready to run, swapped
6. Sleep, Swapped
7. Pre-empted
8. Created
9. Zombie.



## ps 

`ps` is the command to check all the processes and their resource utilization (CPU & memory)

PID - Process ID
TTY - Controlling Terminal
STAT: Process State Code
TIME: Total time of CPU Usage
CMD:  The command that triggered the process
RSS: Both swap memory and physical Memroy
VSZ: Virtual memory usage of the process
%CPU: CPU Time used by the process run time                                    
%MEM: Processes set size to the physical memory on the machine      
START: Process Start time 



Various Process States:

D   Uninterruptible sleep
I   Idle kernel thread
R running or runnable (in the queue)
S interruptible sleep (waiting for event or input)
T stopped by job control signal
t stopped by debugger
X dead (generally, not seen)
Z Zombi

`ps aux`


`kill` is the command to stop any process
`kill <pid>`

To force kill a program :

`kill -9 <pid>`



## Top

This command gives real time information about the processes adn their utilization

The data get refreshed every 3 seconds. You could change it by pressing 's'

The processes are sorted by CPU utilization by default. IF you want to change that you could press 'f' and select other field.

Shift + p -- Sorts the processes by highest CPU utilization
Shift + m -- Sorts the processes by highest Memory utilization



Fields in the Header



    us: Amount of time the CPU spends executing processes for people in 'user space'
    sy: Amount of time spent running system's kernel space's processes.
    ni: Amount of time spent executing processes with a manually set nice value.
    id: Amount of CPU idle time.
    wa: Amount of time the CPU spends waiting for I/O to complete.
    hi: Amount of time spent servicing hardware interrupts.
    si: Amount of time spent servicing software interrupts.
    st: Amount of time lost due to running virtual machines ('steal time')

Fields in main output


    PID: Shows task's unique process id.
    PR: Stands for priority of the task.
    SHR: Represents the amount of shared memory used by a task.
    VIRT: Total virtual memory used by the task.
    USER: User name of owner of task.
    %CPU: Represents the CPU usage.
    TIME+: CPU Time, the same as TIME, but reflecting more granularity through hundredths of a second.
    SHR: Represents the Shared Memory size (kb) used by a task.
    NI: Represents a Nice Value of task. A Negative nice value implies higher priority, and positive Nice value means lower priority.
    %MEM: Shows the Memory usage of task.




You can also kill the program by pressing 'k'

load average : 
The number of processes waiting for CPU in the last 1 minute, last 5 minutes, and last 15 minutes

Niceness ranges -20 to 20. Lesser the Niceness higher the priority.







## Further Reading

[Understanding ps command](https://medium.com/100-days-of-linux/understanding-the-output-of-ps-commands-e9e270a418f9)
[A guide to Linux TOP command ](https://www.booleanworld.com/guide-linux-top-command/)


