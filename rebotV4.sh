 #!/usr/bin/env bash
ps -ef | grep botV4.py | grep -v grep | awk '{print $1}' | xargs kill -9

nohup python3 -u /jd/config/botV4.py > /jd/log/botrun.log 2>&1 &