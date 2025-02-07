#################################
### Basic navigation commands ###
#################################

pwd 
# show current directory
ls 
# list
ls -ltr
cat 
mkdir
vim
cd 
rmdir
rm -rf
touch
cp
mv

#########################################
### file permissions and ownerships #####
#########################################

chmod 777 filename
# to change the permissions
chown user1 file.txt
# to change the ownership of file
chgrp group1 file.txt 
# Changes the group of file.txt to group1
chgrp -R group1 /path/to/directory 
# Changes the group ownership of all files and subdirectories under the specified directory.
umask 
# can set default permission
ln file.txt hardlink.txt 
# Both file.txt and hardlink.txt now refer to the same data.
ln -s /path/to/file.txt symlink.txt 
# Creates symlink.txt as a shortcut to /path/to/file.txt
scp < path/to/loclfile > < username@remoteip:path/to/remote/destination >
# to copy files from local to remote
scp < username@remoteip:path/to/remote/file > < path/to/local/destination >
# to copy files from remote to local
rsync
# rsync is used for copying and synchronizing files/directories efficiently between locations
rsync -e "ssh -i pemfile" -avz path/to/local/folder remoteuser@remoteip:path/in/remote
rsync -avz /local/path user@remote:/remote/path


################################
### file veiwing and editing ###
################################

nano
vim
less 
# The less command is used to view the content of a file or output in a terminal one screen at a time, making it ideal for reading large files. Unlike cat, it doesn't load the whole file into memory.
head 
# veiw first few lines of file
tail 
# veiw last few lines
ps -ef | grep sbin 
# The grep command is used to search for specific patterns (text or regular expressions) in files or command outputs. It’s a powerful tool for filtering and finding text in Linux.
find /path/to/search -name "filename"
find /path/to/search -iname "filename" 
# to find with case sensitive
find /path/to/search -type d -name "dirname" 
#to find directory
find /path/to/search -name "*.txt" 
#to find with extensions

########################
### file compression ###
########################

tar -cvf archive.tar file1 file2 
#to create tar file
tar -xvf archive.tar 
# to extract
tar -czvf archive.tar.gz folder 
# to create gziped tar archive folder
tar -xzvf archive.tar.gz 
#to extract
gunzip file.gz 
#decompress the file
gunzip -c file.gz > file 
#decompress and keep original
zip archive.zip file1 file2 
#to zip files
zip -r archive.zip directory 
#to zip directory
zip archive.zip newfile 
#add files to existing archive
unzip 
#The unzip command is used to extract files from a .zip archive
unzip archive.zip
unzip archive.zip -d /path/to/directory
unzip -l archive.zip 
#list content of archive

##########################
### process management ###
##########################

ps 
# list active processes
top 
# display realtime system processes
htop 
# interactive process veiwer
kill 
# terminate by process id
killall 
# terminate by process name
pkill 
# kill process based on name or other attributes
bg 
# resume job in backgroung
fg 
# resume job in foreground
nice 
# set priority for process
renice 
# change priority for running process
vmstat

####################
#### Disk usage ####
####################

df 
# Report file system disk space usage
du 
# estimates file space usage
fdisk 
# partition table manipulator
mkfs 
# create a file system on partition
mount 
# mount a file system
unmount 
# unmount a file system

############################
### Networking commands ####
############################

ifconfig 
# configure network interfaces
ip addr 
# show ip addresses
ip route 
#shows route tables
ip link 
# shows all network interfaces
ping 
# check connectivity to other network device
netstat 
# display network connections and routing tables
netstat -lntp
ss 
# show active tcp connections
ss -lntp
traceroute 
# trace the route to a network host
traceroute google.com
traceroute -m 15 google.com
tracepath 
# to trace the path of application
mtr google.com
# to ping and see the path at same time
telnet 10.12.24.244 3306
nslookup 
# query name srveres
nslookup google.com
curl 
# tranfer data to and fro server
wget 
# download file from web
scp 
# secure copy files between hosts
ssh 
# secure connect to remote machine
ftp 
# file transfer using FTP
hostname
# to see the hostname
iwconfig
# to see the wireless connections on server
dig < app >
# to see the hosting details of app
whois 
# see complete details of app
arp
# see the mac addrrss of server or domain
watch < command >
# to see output in loop


#######################
### user management ###
#######################

whoami 
# show current user
who 
# who is logged in 
id 
# show user and group ids
echo $SHELL 
# to see in which shell are you
useradd -m < user >
# to create new user or add new user
usermod -aG groupname username
# adding user to any group
userdel < user >
# to delete the user
passwd < user >
# to set the password
su < user >
# to switch the user
groupadd
# to create group
groupdel
# to delete group
gpasswd-a username groupname
# to add users to group
cat /etc/group
# to see the users in group

##########################################
### system monitoring and performance ####
##########################################

uptime 
# show how long the system has been running
dmesg 
# displays kernel messages
free 
# shows memory usage
vmstat 
# report virtual memory statics
iostat 
# repots cpu and io stat
sar 
# collect and report system activity information
mpstat 
# show cpu usage per processor
iotop 
# display io usage by processor

############################
### system information #####
############################
uname 
# prints system name
hostname 
# shows system hostname
lsb_release 
# prints distribution specific information
lscpu 
# display CPU architecture information
lsusb 
# list usb devices
lspci 
# list pci devices
dmidcode 
# shows system hardware information
top 
# display active process and usage
uptime
# to know since how long system is running
date
# to know the date

##############################
### Linux folder structure ###
##############################

/ --> root directory of the OS

/bin(binaries) --> essential commands are here. ls, cat, grep, etc.

/sbin(system binaries) --> admin commands, reboot, iptables, etc.

/boot --> when linux server started, it refers boot directory for system configuration

/dev(devices) --> monitor/terminal, keyboard, printers, etc.

/etc(extra configuration) --> system configuration files, service configurations, etc.

/home(home directory of users) --> all users directory are here, their personal files, user related configs..

/lib(Libraries) --> libraries/dependencies required by OS equal to .dll in windows

/lib64(64 bit libs)

/media(Media devices) --> CD, DVC, USB, etc.

/mnt(mount) --> adding extra disks

/opt(optional) --> if you want third party applications, custom applications you can keep here

/proc(processor) --> /proc/cpuinfo /proc/meminfo

/root (Root user) --> home directory of root user

/run (Running information of server)

/srv(service files) --> When you use your server to serve as file server, you can use this

/swap(Swap space) --> 1GM ram, OS will use this swap space for extension of RAM. Reserver space

/sys --> system kernal info, devices info, etc

/tmp --> temporary directory, not at all important

/usr --> shared files and docs between all users...

/var(variables) --> logs and messages










