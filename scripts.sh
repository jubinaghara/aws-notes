1. Quick setup of webserver on linux 
------------------------------------
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd.service
systemctl enable httpd.service
EC2_AVAIL_ZONE=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
echo "<h1>Hello World from $(hostname -f) in AZ $EC2_AVAIL_ZONE </h1>" > /var/www/html/index.html


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


