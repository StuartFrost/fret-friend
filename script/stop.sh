$PID = ps -ef | grep ruby | cut -d " " -f9 | head -n 1
sudo kill -9 $PID
