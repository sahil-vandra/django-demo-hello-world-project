sudo yum install python3 pip3
sudo pip3 install virtualenv 
virtualenv newenv
source newenv/bin/activate
yum install -y python3-pip sqlitebrowser
# sudo pip3 install -r requirements.txt
sudo pip3 install django
sudo python3 manage.py migrate
sudo python3 manage.py runserver