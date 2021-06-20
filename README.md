# Ansible Code for Movies Management Project
* [Django Movies Project](https://github.com/panagiotisbellias/movies-management-project.git)

# Links
* [apt module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_module.html)
* [file module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/file_module.html)
* [copy module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html)
* [service module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/service_module.html)
* [debconf module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/debconf_module.html)

# Playbooks Used in DevOps Project

## Classic Ansible Deployment

### Movie-Database
* [mysql-database.yml](https://github.com/pauliee99/ansible-example/blob/jenkins/playbooks/mysql-database.yml) : MySQL Server Installation & Configuration

* [movie-database-install.yml](https://github.com/pauliee99/ansible-example/blob/jenkins/playbooks/movie-database-install.yml) : Movie Database Component Installation & Configuration

### Movie-Mail-System
* [movie-mail-system-install.yml](https://github.com/pauliee99/ansible-example/blob/jenkins/playbooks/movie-mail-system-install.yml) : Movie Mail System Component Installation & Configuration

### Movie-Management-Project
* [nginx.yml](https://github.com/pauliee99/ansible-example/blob/jenkins/playbooks/nginx.yml) : Nginx Instalation & Configuration

* [movies-management-project-install.yml](https://github.com/pauliee99/ansible-example/blob/jenkins/playbooks/movies-management-project-install.yml) : Movies Management Project (Main System) Component Installation & Configuration

### Shell Scripts
* [define_user_dir.sh](https://github.com/pauliee99/ansible-example/blob/jenkins/define_user_dir.sh) : Checks for active VMs and informs the user directory var in [group_vars/deploymentservers.yml](https://github.com/pauliee99/ansible-example/blob/jenkins/group_vars/deploymentservers.yml) properly. Uses also the text.txt to fill more info about the playbooks (e.g. gunicorn port for django components)
* [define.sh](https://github.com/pauliee99/ansible-example/blob/jenkins/define.sh) : Checks for active VMs and informs the [hosts.yml](https://github.com/pauliee99/ansible-example/blob/jenkins/hosts.yml) properly

## Docker Deployment with Ansible

### Movie-Database
* [docker_movies_db.yml](https://github.com/pauliee99/ansible-example/blob/jenkins/playbooks/docker/docker_movies_db.yml)

### Movie-Mail-System
* [docker_movies_mail.yml](https://github.com/pauliee99/ansible-example/blob/jenkins/playbooks/docker/docker_movies_mail.yml)

### Movies-Management-System
* [docker_movies_app.yml](https://github.com/pauliee99/ansible-example/blob/jenkins/playbooks/docker/docker_movies_app.yml)

## More Info

Jenkins CI/CD Tool is used to run the needed playbooks. Making secret texts for environmental variables, we have the sensitive data to pass it from Jenkinsfile to the playbooks and in the Docker Deployment case through the docker containers we run in the remote vm.

## Contact Us
* [Panagiotis Bellias - Email](belliaspanagiotis@gmail.com)
