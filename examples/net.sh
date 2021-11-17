#!/usr/bin/env bash

#Nice! A network tool I've always wanted is one that automates the investigation you have to do manually if you are experienceing "internet issues". I mean, the check list is quite straightforward but still a pretty manual process, stuff like: - Do I have the expected IP? - Is there large packet loss or latency issues hinting at connectivity issues? - Can I ping the local gateway? - Can I ping to outside network? - Is my nearest DNS responding? - Is another, remote DNS responding? - What does Downdetector or similar say about the service I'm trying?
#It would be nice with a one click tool that just went through this in order and gave a diagnosis.

    ip addr | grep $localNetworkPrefix
    ping $localGateway
    ping 1.1.1.1
    ping 8.8.8.8 # added
    ping $DNS01
    ping $DNS02
    open https://downdetector.com/status/%1
# Do `chmod +x ./net.sh` to make executable and run with argument (e.g. net.sh facebook) to check a particular service.