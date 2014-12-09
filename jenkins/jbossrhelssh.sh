# Start/Stop JBoss RHEL Docker Container Build Slave
# Redirect SSH Port 
# Default Password
#
if [ $1 = "start" ]; then
   echo "Starting Jenkins build slave "
   sudo docker run -d -p 0.0.0.0:$3:22 -e ROOT_PASS="mypass" --name=$2 $4
fi

if [ $1 = "stop" ]; then
#   echo "Stopping Jenkins build slave "
   if ( sudo docker stop $2 );
    then
       echo "Stopped build slave "
   fi
   if ( sudo docker rm $2 );
    then
       echo "Removed build slave "
   fi
fi

