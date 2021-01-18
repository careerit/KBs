Redirectors

Pipe 			  |
Output Redirector >
Input Redirector  <


   FD			  DefaultDevice
	0	stdin      keyboard             <
	1	stdout     Screen     			>
	2	stderr     Screen                 

File Descriptor --> A number assigned to a file by your OS. 


<command> > <filename> # Will print output onto the file
<command> 2> <filename> # will print stderr onto the file
<command> > <filename> 2>&1 # Will print both stderr & stdout to the file.


find / -type f -size +100M > output.log 2>&1


wc
lines, characters and words








