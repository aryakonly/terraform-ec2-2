#!/bin/bash
yum install mariadb105* -y
systemctl start mariadb
systemctl enable mariadb