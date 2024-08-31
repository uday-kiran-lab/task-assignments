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

usermod -g <group_name > <user_name > #syntax for modfication group for user
usermod -g devops ram
usermod -g devops raheem
# above two users are added to devops group
usermod -g testing suresh
usermod -g testing philip
# above two users are added to testing group