#/bin/bash
START='user_dir: "/home/'

USER1="it21871"
TARGET1="20.56.26.193"
USER2="azureuser"
TARGET2="13.81.28.109"
if ssh $USER1'@'$TARGET1 true; then
  echo $START$USER1'"'
elif ssh $USER2'@'$TARGET2 true; then
  echo $USER2'"'
else
  echo $START'"'
fi

value=`cat text.txt`
echo "$value"
