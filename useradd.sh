uthor: Faith Bundi
#Creation Date: 10-29-2022
#Description: Automate account creation for new employees.
#Modification Date:


echo "##### ENTER YOUR PERSONAL INFORMATION #####"
echo
echo "Enter your first name"
read fname
echo "Enter your last name"
read lname
echo "Enter your email address"
read email
echo "Enter your Profession"
read prof
echo "Create your username"
read uname
echo "Enter your password"
read pss
cat /etc/passwd |grep -i $uname
if
[ $? -eq 0 ]
then
echo "ERROR $uname Already exit"
echo "PLEASE CHOOSE ANOTHER USERNAME"
exit 0
fi
 useradd $uname -c "$fname $lname; $prof; $email"; echo $pss | passwd --stdin $uname
