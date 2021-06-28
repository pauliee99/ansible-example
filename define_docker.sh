#/bin/bash
echo $'---\ndeploymentservers:\n  hosts:'
TARGET1="20.56.26.193"
if ssh 'it21871@'$TARGET1 true; then
  ssh -t it21871@$TARGET1 docker pull belpanos/movies-django > other.txt
  ssh -t it21871@$TARGET1 docker pull belpanos/movie-db > other.txt
  ssh -t it21871@$TARGET1 docker pull belpanos/movie-mailing > other.txt
  echo $'    devopsvm:\n      ansible_host: '$TARGET1$'\n      ansible_port: 22\n      ansible_ssh_user: it21871'
fi
TARGET2="13.81.28.109"
if ssh 'azureuser@'$TARGET2 true; then
  ssh -t azureuser@$TARGET2 docker pull belpanos/movies-django > other.txt
  ssh -t azureuser@$TARGET2 docker pull belpanos/movie-db > other.txt
  ssh -t azureuser@$TARGET2 docker pull belpanos/movie-mailing > other.txt
  echo $'    deployment1:\n      ansible_host: '$TARGET2$'\n      ansible_port: 22\n      ansible_ssh_user: azureuser'
fi
echo $'  vars:\n    ansible_python_interpreter: /usr/bin/python3'
