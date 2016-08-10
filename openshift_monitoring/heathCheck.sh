#!/bin/bash
#Health check for an openshift.com based project.
#The script sent http request to specified URL.
#In case of response status isn't 200
#send an email to an administrator.
URL=http://kharkov-smetus.rhcloud.com/projects/33/rooms
ResponseCode=$(curl -s -o /dev/null -w %{http_code} $URL)
if [ $ResponseCode == "200" ];
 then
    echo $URL  returned response code $ResponseCode
    echo Success
    ssmtp lyashenkogs@gmail.com < failNotification.txt
    else
    echo "Something wrong."
    ssmtp lyashenkogs@gmail.com < failNotification.txt
fi


