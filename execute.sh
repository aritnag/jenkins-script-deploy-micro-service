#check for root
uid=$(id -u)
if [ x$uid != x0 ]
then
    #Beware of how you compose the command
    printf -v cmd_str '%q ' "$0" "$@"
    exec sudo su -c "$cmd_str"
fi

#I am root
kubectl apply -f /home/ubuntu/deploymentfolder/deployment.yml
#and the rest of your commands
