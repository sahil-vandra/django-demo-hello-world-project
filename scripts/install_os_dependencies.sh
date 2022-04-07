# # sudo yum install python3 pip3
# # sudo pip3 install virtualenv 
# # virtualenv newenv
# # source newenv/bin/activate
# # sudo pip3 install django

# sudo yum update

# sudo yum install python3 pip python-devel

# sudo amazon-linux-extras list | grep nginx

# sudo amazon-linux-extras enable nginx1
        
# sudo yum clean metadata
# sudo yum -y install nginx

# sudo -H pip install --upgrade pip
# sudo -H pip install virtualenv

# virtualenv newenv
# source newenv/bin/activate

# sudo yum install python-setuptools
# sudo easy_install gunicorn

# sudo pip install gunicorn 

# sudo chmod 777 /etc/systemd/system/gunicorn.socket

# sudo nano <<EOT >>  /etc/systemd/system/gunicorn.socket
# ---
# [Unit]
# Description=gunicorn socket

# [Socket]
# ListenStream=/run/gunicorn.sock

# [Install]
# WantedBy=sockets.target

# EOT

# # sudo touch /etc/systemd/system/gunicorn.service

# sudo chmod 777 /etc/systemd/system/gunicorn.service

# sudo nano <<EOT >> /etc/systemd/system/gunicorn.service
# ---
# [Unit]
# Description=gunicorn daemon
# Requires=gunicorn.socket
# After=network.target

# [Service]
# User=ec2-user
# Group=www-data
# WorkingDirectory=/home/ec2-user/helloworld
# ExecStart=/home/ec2-user/helloworld/newenv/bin/gunicorn \
#           --access-logfile - \
#           --workers 3 \
#           --bind unix:/run/gunicorn.sock \
#           textutils.wsgi:application

# [Install]
# WantedBy=multi-user.target

# EOT


# sudo systemctl start gunicorn
# sudo systemctl enable gunicorn

# sudo systemctl status gunicorn

# sudo nano <<EOT >> /etc/nginx/sites-available/textutils
# ---
# server {
#     listen 80;
#     server_name 0.0.0.0;

#     location = /favicon.ico { access_log off; log_not_found off; }
#     location /static/ {
#         root /home/harry/projectdir;
#     }

#     location / {
#         include proxy_params;
#         proxy_pass http://unix:/run/gunicorn.sock;
#     }
# }

# EOT


# sudo ln -s /etc/nginx/sites-available/helloworld /etc/nginx/sites-enabled/

# # sudo systemctl restart nginx
