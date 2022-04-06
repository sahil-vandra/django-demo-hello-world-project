yum install -y python3-dev python3-pip python3-virtualenv sqlitebrowser
pip install -r requirements.txt
python3 manage.py migrate
python3 manage.py runserver