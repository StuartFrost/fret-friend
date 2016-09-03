echo "killing process"
PID=$(ps -ef | grep ruby | cut -d " " -f8 | head -n 1)
sudo kill -9 $PID

cd ../
echo "pulling changes"
git pull
echo "running bundle"
bundle
echo "starting server"
nohup rails s -b 0.0.0.0 > /dev/null 2>&1 &
