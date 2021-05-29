 #!/usr/bin/env bash
ps -ef | grep botql.py | grep -v grep | awk '{print $1}' | xargs kill -9

nohup python3 -u /ql/config/botql.py > /ql/log/botrun.log 2>&1 &
