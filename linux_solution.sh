#user group creation

groupadd <group_name > #basic synatx for create group
groupadd devops # devops group created
groupadd testing #testing group created

# user craetion
useradd <user_name > #basic synatx for create user
useradd ram
useradd raheem
useradd suresh
useradd philip
# above users are created 

id <user_name > #know the detail information of user

# assign particualr group to user 

usermod -g <group_name > <user_name > #syntax for modfication group for user
usermod -g devops ram
usermod -g devops raheem
# above two users are added to devops group
usermod -g testing suresh
usermod -g testing philip
# above two users are added to testing group

# key-based authentication

1. go to user login and genrate ssh-key 
ssh-keygen -t tsa -f < file_name > #command for ssh key genration
ssh-keygen -t rsa -f ram # commands for key genration for ram user

2. goto the keyfolder and open publickey file. ( public key file with .pub extension )
3. login with root user and go to user home location and create .ssh directory and create authorized_keys file in that directory
sudo su # change to root user
cd /home/ram/ # command for navigate user home location
cd /home/ram # naviage to ram home location
pwd #verify your present present work directory
mkdir .ssh # creatd .ssh directory 
cd .ssh # navigate to .ssh folder 
vim authorized_keys # creating authorized_keys file 
4. copy user public from step2 and paste in above file and save it.
5. change permisson for ssh directory and authorized_keys
chmod 700 .ssh # permission changed to directory
chmod 600/400 authorized_keys # either 600 and 400 permisions has changed to autorized_keys
5. goto sshd_config file 
cd /etc/ssh/ # navigate ssh directory 
ls -lrt # list the files in ssh directory 
vim sshd_config # open the sshd_config file
6. change the password autentication ( yes to NO )
7. restart the sshd service 
systemctl restart sshd # restart the sshd service
8.  assign ownership to that user for .ssh directory 
chown -R user:group < dirctory_name > # change the user and group ownership for that diretory 
chown -R ram:ram .ssh #.ssh permission to assign to ram only 

# please follow above steps for every users







