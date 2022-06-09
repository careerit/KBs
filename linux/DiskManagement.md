# Disk Management

### Partitioning the disk

1. use fdisk to list the disks

```bash
sudo fdisk -l
```

2. Use the below `fdisk` to create one more of Linux LVM partition
and follow the instructions (chose 8e for Linux LVM Partition)

```bash
sudo fdisk /dev/sdx
```

fdisk is an interactive program. Press m for help and follow on-screen instructions.

```
o - Create a Dos Partition table
g - Create a GPT Partition 
n - new partition
w - save
```


Note: sdx is the name of the drive that you would like to partition.
Now use the option `o` to create a new `DOS Partition table`

once the partition table is created. use the option `n` to create a new paritiion 
and follow the on-screen instructions

Note: The size can be specified at the option `Last Sector` . Ente +{n}G for the partiotion to be of nGB
Example: If you have a disk of 100 GB you can chosoe the size to be 
+100G for a single partition
(If you want to create multiple partitions, you can use +30G or +50G or whaterver size (<100G>) you require.  

Then finally enter `w` to save the above changes

Now when your run `sudo fdisk -l` youd'd see partitions like `/dev/sdx1` 

3. Now run the below command to format the partition

```bash
sudo mkfs -t ext4 /dev/sdx1
```

4. Now the file can be mounted to any directory
- Create a new directory 

```bash
sudo mkdir /mnt/drive
```

- mount the new volume to the directory using the below command

```bash
sudo mount /dev/sdx1 /mnt/drive
```

Note: This is only an one time mount. Will not persist after restart.

5. For persistent mount the entry needs to be added to `/etc/fstab`
- run the below command to find the UUID of the newly created partition

```bash
sudo blkid
```
edit `/etc/fstab` and add the below line. 

```bash
UUID=<UID-of-new-partition-as-per-blkid>  /mnt/drive   ext4 defaults,nofail   1   2
```

6. Reboot the system

```bash
sudo reboot
```

7. Now you should see the drive in `/mnt/drive` directory
    
8. To get the write permissions follow the below steps
- Change Group ownership to adm group

```bash
sudo chgrp adm /mnt/data/
```
- Give write permissions to the group

```bash
sudo chmod -R g+w /mnt/data/
```


