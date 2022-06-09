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



## Fields in the Header


    us: Amount of time the CPU spends executing processes for people in 'user space'
    sy: Amount of time spent running system's kernel space's processes.
    ni: Amount of time spent executing processes with a manually set nice value.
    id: Amount of CPU idle time.
    wa: Amount of time the CPU spends waiting for I/O to complete.
    hi: Amount of time spent servicing hardware interrupts.
    si: Amount of time spent servicing software interrupts.
    st: Amount of time lost due to running virtual machines ('steal time')

## Fields in main output


    PID: Shows task's unique process id.
    USER: User name of owner of task
    PR: Stands for priority of the task.
    NI: Represents a Nice Value of task. A Negative nice value implies higher priority, and positive Nice value means lower priorityUSER: User name of owner of task.
    SHR: Represents the amount of shared memory used by a task.
    VIRT: Total virtual memory used by the task.    
    %CPU: Represents the CPU usage.
    TIME+: CPU Time, the same as TIME, but reflecting more granularity through hundredths of a second.
    %MEM: Shows the Memory usage of task.


### Sorting

By default top sorts the entries by CPU usage. 
Press `M` (upper case) to sort by Memory
To revert to sortby CPU usage press `P` (upper case)



## Priority (PR) & Niceness (NI)

Priority and Niceness are related.  While Priority is

PR is the priority level. The lower the PR, the higher the priority of the process will be.
NI is niceness of the process. The higher the niceness, the process will get lower precedence.

PR value can be computed by the following formula: PR = 20 + NI.
the process with niceness 3 has the priority 23 (20 + 3) and the process with niceness -7 has the priority 13 (20 - 7). You can check the first by running command nice -n 3 top. It will show that top process has NI 3 and PR 23. But for running nice -n -7 top in most Linux systems you need to have root privileges because actually the lower PR value is the higher actual priority is. Thus the process with PR 13 has higher priority than processes with standard priority PR 20. 

Niceness ranges -20 to 20. Lesser the Niceness higher the priority.
nice and renice commands are used to update Priority of the user processes. PR of only user processes can be altered with nice and renice commands

nice: A program can be started with a specific niceness with the below command

```bash
nice -n <nice_value> ./myProgram
```

Example

```bash
nice -n 9 ./myscript.sh
```

renice: Priority of a program can be altered with renice command

```bash
renice -n <nice_value> <PID>
```

Example

```bash
renice -n 9 1344
```


load average : 

Load Average is the measure of the load on the processors. Load Average has three fields each of which is the number of processes waiting for CPU in the last 1 minute, last 5 minutes, and last 15 minutes.

For a Computer with 1 CPU, the load average should always be less than 1 and above 0.9 indicates high utilization of CPU. For a computer with 2 CPUs, the uptime should be under 2 and so on so forth	





## Further Reading

[Understanding ps command](https://medium.com/100-days-of-linux/understanding-the-output-of-ps-commands-e9e270a418f9)
[A guide to Linux TOP command ](https://www.booleanworld.com/guide-linux-top-command/)


