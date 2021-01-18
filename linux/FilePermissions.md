# File Permissions

Linux has very fine grained access control.
You can set permissions for the user (owner of the file)
the group and also others



-rw-rw-r--  1 kbaddi kbaddi <bytes> <LMT> <filename>

    r       read    - 4
    w       write   - 2
    x       eXecute - 1
    -       None    - 0

    rwx = 7
    rw- = 6
    r-- = 4
    r-x = 5
    --- = 0

    chmod 750 <Filename>


    755
    chmod 755 <filename>
    chmod 400 pem
    chmod 644 <filename>
    chmod 750 <filename>


    chmod to change permissions of either the user, group or others
    `chmod 666 <filename>`
    chown to change owner of a file
    `sudo chown <newowner> <filename`
    chgrp to change the group of a file
    `sudo chgrp <newgroup> <filename>`

    chmod 640
