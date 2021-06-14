#!/bin/bash
yum update -y
yum install httpd
echo "<h1>Hello - $(hostname -f)" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd
