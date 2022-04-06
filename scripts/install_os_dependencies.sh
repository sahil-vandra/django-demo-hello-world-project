sudo yum install python3 pip3
sudo pip3 install virtualenv 
virtualenv newenv
source newenv/bin/activate
yum install -y python3-pip sqlitebrowser
# sudo pip3 install -r requirements.txt
sudo pip3 install django
sudo chmod +x /home/ec2-user/manage.py
cd /home/ec2-user/
ls
sudo python3 manage.py runserver
