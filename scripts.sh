1. Quick setup of webserver on linux 
------------------------------------
#!/bin/bash
yum update -y
yum install httpd
echo "<h1>Hello - $(hostname -f)" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd



2. Installing Cloud Watch Agent on Amazon Linux 2
https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/QuickStartEC2Instance.html
----------------------------------------------
#!/bin/bash
yum update -y
yum install -y awslogs
sudo service awslogs start
sudo systemctl start awslogsd
sudo chkconfig awslogs on
sudo systemctl enable awslogsd.service

#Check the /var/log/awslogs.log file for errors logged when starting the service.
#Change the region to meet yours - vi /etc/awslogs/awscli/conf


