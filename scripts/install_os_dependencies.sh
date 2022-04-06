sudo yum install python3 pip3
sudo pip3 install virtualenv 
virtualenv newenv
source newenv/bin/activate
yum install -y python3-pip sqlitebrowser
pip install -r requirements.txt
pip install django
python3 manage.py migrate
python3 manage.py runserver