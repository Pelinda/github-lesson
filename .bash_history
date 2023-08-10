ip a
hostname
sudo yum -y update
ll
chmod +x Miniconda3-py38_4.10.3-Linux-x86_64.sh 
./Miniconda3-py38_4.10.3-Linux-x86_64.sh 
exit
conda list
python -V
pip -V
history
sudo yum remove docker                   docker-client                   docker-client-latest                   docker-common                   docker-latest                   docker-latest-logrotate                   docker-logrotate                   docker-engine
sudo yum install -y yum-utils
sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
docker-compose --version
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo shutdown now
mkdir mlflow
cd mlflow/
sudo yum -y install vim
vim Dockerfile
curl
curl --help
curl -o docker-compose.yaml https://gist.githubusercontent.com/gandroz/2b65c022bbd7de7fe9c54cf9234ba452/raw/f586f17b027f723f3b68724f9e6ed67c994e22a5/docker-compose.yml
ll
mkdir nginx
curl -o nginx/Dockerfile https://gist.githubusercontent.com/gandroz/aaa7371d584c17d9d3ac5ff7628de7ec/raw/bc7de5a300c9bb58ffce06deae7d3a28b6f7424a/Dockerfile
ll
curl -o nginx/nginx.conf https://gist.githubusercontent.com/gandroz/6d550541ad004f2dc5367003e4624466/raw/6d99f71ac7d38437197576b4020019e30fc76f52/nginx.conf
mkdir mlflow
mv Dockerfile mlflow/
curl -o mlflow/mlflow.conf https://gist.githubusercontent.com/gandroz/2a510641c67cffdf616846fd63a1a0bc/raw/58183a57bbafb1b2a0fe019e71a0bd09aa62570f/mlflow.conf
ll
vim mlflow/Dockerfile 
vim mlflow/requirements.txt
docker-compose up -d --build 
sudo useradd -aG docker train
sudo usermod -aG docker train
sudo reboot now
cd mlflow/
docker-compose up --build -d
vim mlflow/Dockerfile 
tree
sudo yum install tree
tree
cat docker-compose.yaml 
cat mlflow/Dockerfile 
cat mlflow/requirements.txt 
tree
cat mlflow/mlflow.conf 
tree
cat nginx/Dockerfile 
cp mlflow/mlflow.conf nginx/
tree
cat nginx/nginx.conf 
docker-compose up -d
export MYSQL_DATABASE="mlflow"
export MYSQL_USER="mlflow"
export MYSQL_PASSWORD="Ankara06"
export MYSQL_ROOT_PASSWORD="Ankara06"
history -d 68,69
history -d 68:69
history -d 68
history -d 69
history
history -d 67
history
history -d 67
history
docker-compose up -d
vim docker-compose.yaml 
export S3_MLFLOW_BUCKET="vbo-mlflow-bucket"
docker-compose up -d
docker-compose ps
docker-compose down
vim docker-compose.yaml 
docker-compose up -d
docker-compose ps
sudo systemctl status firewalld
sudo systemctl stop firewalld
sudo systemctl disable firewalld
docker-compose ps
curl localhost:5001
docker-compose ps
docker-compose down
tree
cat docker-compose.yaml 
sudo shutdown now
python3 -V
vim ~/.profile
ls -al
sudo shutdown now
ll
python -V
conda create --name fast-api
conda activate fast-api
pip -V
python -V
python3 -V
conda deactivate
conda remove --name fast-api --all
conda list
conda create --name fastapi python=3.8
conda activate fastapi
conda export env > fastapi-env.yaml
conda env export > fastapi-env.yaml
cat fastapi-env.yaml 
python -V
ll
mkdir gitea
cd gitea
cat <<EOF > docker-compose.yaml
version: "3"

networks:
  gitea:
    external: false

services:
  server:
    image: gitea/gitea:1.16.0
    container_name: gitea
    environment:
      - USER_UID=1000
      - USER_GID=1000
+     - GITEA__database__DB_TYPE=postgres
+     - GITEA__database__HOST=db:5432
+     - GITEA__database__NAME=gitea
+     - GITEA__database__USER=gitea
+     - GITEA__database__PASSWD=gitea
    restart: always
    networks:
      - gitea
    volumes:
      - ./gitea:/data
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    ports:
      - "3000:3000"
      - "222:22"
+    depends_on:
+      - db
+
+  db:
+    image: postgres:13
+    restart: always
+    environment:
+      - POSTGRES_USER=gitea
+      - POSTGRES_PASSWORD=gitea
+      - POSTGRES_DB=gitea
+    networks:
+      - gitea
+    volumes:
+      - ./postgres:/var/lib/postgresql/data
EOF

docker-compose up -d
vim docker-compose.yaml +14
docker-compose up -d
vim docker-compose.yaml +29
docker-compose up -d
vim docker-compose.yaml +32
docker-compose up -d
docker-compose status
docker-compose ps
docker-compose down
docker volume prune -all
docker volume prune -a
docker volume prune
docker volume ls
docker ps -a
docker rm f96d1998536f
docker ps -a
docker images
ll
rm -r gitea/ postgres/
sudo rm -rf gitea/ postgres/
ll
cd ..
cd mlflow/
ll
mkdir sql_scripts
cd sql_scripts/
touch mysql_init.sql
cd ..
ll
ll ../gitea/
docker-compose up -d
docker-compose ps
docker logs mlflow_db
docker-compose ps
docker ps
docker inspect mlflow_db
docker logs -f mlflow_db
docker-compose down
docker-compose up --build -d
docker-compose ps
docker logs mlflow_nginx
docker-compose down
docker-compose up --build -d
docker-compose ps
docker logs mlflow_nginx
docker-compose ps
docker exec -it gitea bash
docker-compose ps
docker logs mlflow_nginx
docker-compose down
docker-compose up -d
docker-compose ps
docker logs mlflow_nginx
docker-compose dwn
docker-compose down
ll
vim nginx/mlflow.conf 
vim mlflow/mlflow.conf 
export S3_MLFLOW_BUCKET="vbo-mlflow-bucket"
export AWS_ACCESS_KEY_ID="AKIAWKTGKJSENA3TQ24Q"
export AWS_SECRET_ACCESS_KEY="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"
docker volume rm dbdata
docker volume prune
docker-compose up --build -d
docker-compose ps
docker logs mlflow_db
docker-compose down
docker volume ls
docker volume rm mlflow_dbdata
docker volume ls
docker-compose up --build -d
docker-compose ps
top
sudo yum-y install htop
sudo yum -y install htop
sudo yum -y update
sudo yum -y install htop
top
docker-compose ps
cd ..
ll
rm -rf gitea
ll
docker image ls
docker image rm c8c8ef4f3c81
docker image ls
tree
cd mlflow/
tree
docker-compose down
tree
docker-compose ps
docker-compose up -d
docker-compose ps
sudo yum -y install git
git version
cd ..
git clone http://localhost:3000/mlops/mlops.git
cd mlops/
cd ..
mv mlops/ mlops-project
cd mlops-project/
conda install -r requirements.txt 
pip -V
pip install -r requirements.txt 
uvicorn --help
ll
uvicorn --reload 01_first_endpoint.py 
uvicorn --reload 01_first_endpoint:app 
uvicorn --reload 01_first_endpoint:app --host 0.0.0.0
curl localhost:8000
cd mlops-project/
git pull origin master
cd ..
mkdir jenkins
cd jenkins/
docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --network frontend --network backend jenkins/jenkins:jdk11
docker pull jenkins/jenkins:jdk11
cd ..
ll
cd mlflow/
docker-compose down
docker ps
sudo shutdown now
ll
cd mlflow/
docker-compose up -d
history
docker-compose down
export S3_MLFLOW_BUCKET="vbo-mlflow-bucket"
export AWS_ACCESS_KEY_ID="AKIAWKTGKJSENA3TQ24Q"
export AWS_SECRET_ACCESS_KEY="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"
docker-compose up -d
govker images
docker images
docker create -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --network frontend --network backend jenkins/jenkins:jdk11
docker network ls
docker create -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --network mlflow_backend --network mlflow_frontend jenkins/jenkins:jdk11
cd ..
cd mlflow/
ll
cd ..
ll
cd jenkins/
docker create --name jenkins -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:jdk11
docker network connect mlflow_backend jenkins
docker network connect mlflow_frontend jenkins
docker ps
docker exec -it jenkins bash
docker run jenkins
docker start jenkins
docker network connect mlflow_backend jenkins
docker network connect mlflow_frontend jenkins
docker network connect jenkins mlflow_backend 
docker ps
docker container inspect jenkins
docker exec -it jenkins bash
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
ll
docker ps
ls -l
docker exec -it jenkins bash
docker volume ls
docker exec -it jenkins bash
docker exec -it jenkins find / -name "Jenkinsfile"
sudo docker exec -it jenkins find / -name "Jenkinsfile"
docker exec -it jenkins find / -name "Jenkinsfile"
docker exec -it jenkins bash
df -h /
cd ..
cd mlflow/
tree
tree --help
tree --help -L 1
tree -L 1
tree -L 2
docker-compose down
docker jenkins stop
docker stop jenkins
docker-compose down
sudo shutdown now
cd mlflow/
ll
pwd
docker-compose up -d
docker-compose down
history | grep AWS_ACCESS_KEY_ID
history
export S3_MLFLOW_BUCKET="vbo-mlflow-bucket"
export AWS_ACCESS_KEY_ID="AKIAWKTGKJSENA3TQ24Q"
export AWS_SECRET_ACCESS_KEY="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"
docker-compose up -d
cd ..
ll
cd mlops-project/
ll
cd ..
ll
conda list
conda list --help
conda list -n fastapi
history
conda activate fastapi
ll
cat fastapi-env.yaml 
conda env export > fastapi-env.yaml
cat fastapi-env.yaml 
cd mlops-project/
uvicorn --reload 01_first_endpoint:app --host 0.0.0.0
cd ..
cd mlflow/
docker-compose down now
docker-compose down
sudo shutdown now
history
export S3_MLFLOW_BUCKET="vbo-mlflow-bucket"
 export AWS_ACCESS_KEY_ID="AKIAWKTGKJSENA3TQ24Q"
export AWS_SECRET_ACCESS_KEY="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"
cd mlflow/
docker-compose up -d
conda activate fastapi
cd ..
cd mlops-project/
git status
uvicorn --reload 01_first_endpoint:app --host 0.0.0.0
git pull origin main
git pull origin master
uvicorn --reload 02_handling_requests:app --host 0.0.0.0
ll
git pull origin master
uvicorn --reload 02_handling_requests:app --host 0.0.0.0
git pull origin master
uvicorn --reload 02_handling_requests:app --host 0.0.0.0
cd ..
cd mlflow/
docker-compose up -d
cd ../mlops-project/
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
top
cd ../mlflow/
docker-compose down
sudo shurdown now
sudo shutdown now
cd mlops-project/
git pull origin master
cd ..
ll
cd jenkins/
ll
docker start jenkins
history | grep jenkins
 docker start jenkins
docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --network mlflow_backend --network mlflow_frontend jenkins/jenkins:jdk11
docker network ls
docker ps
cd ..
cd mlflow/
ll
docker-compose down
docker-compose up -d
docker-compose down
docker ps -a
docker rm jenkins
docker-compose up -d
docker-compose down
cd mlops-project/
git pull origin master
history
export S3_MLFLOW_BUCKET="vbo-mlflow-bucket"
 export AWS_ACCESS_KEY_ID="AKIAWKTGKJSENA3TQ24Q"
export AWS_SECRET_ACCESS_KEY="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"
conda activate fastapi
cd mlflow/
docker-compose up -s
docker-compose up -d
docker-compose ps
cd ../mlops-project/
uvicorn --reload 02_handling_requests:app --host 0.0.0.0
cd ../mlflow/
docker-compose down
sudo shutdown now
docker volume prune
docker ps -a
docker images prune -a
docker images prune
docker image prune
docker image prune --all
docker images
df -hs
df -h
ll
sudo shutdown now
ls
ls -a
ls -l
ls
sudo systemctl start gitea
ls
sudo systemctl start gitea
bash installer
sudo yum install net-tools
sudo netstat -tulnap
sudo systemctl start gitea
sudo yum install git go
sudo systemctl start gitea
sudo adduser --system --shell /bin/bash --comment 'Gitea' git
sudo mkdir -p /var/lib/gitea/{custom,data,indexers,public,log}
sudo -R git:git /var/lib/gitea/
sudo chmod -R 750 /var/lib/gitea/
sudo chmod 770 /var/lib/gitea/data
sudo netstat -tulnap
sudo systemctl start gitea
sudo -u git -H bash -c 'wget -O gitea https://dl.gitea.io/gitea/1.15.4/gitea-1.15.4-linux-amd64'
sudo adduser --system --shell /bin/bash --comment 'Gitea' git
sudo mkdir -p /var/lib/gitea/{custom,data,indexers,public,log}
sudo chown -R git:git /var/lib/gitea/
sudo chmod -R 750 /var/lib/gitea/
sudo chmod 770 /var/lib/gitea/data
sudo -u git -H bash -c 'wget -O gitea https://dl.gitea.io/gitea/1.15.4/gitea-1.15.4-linux-amd64'
sudo yum install wgetsudo yum install wget
wget --version
sudo -u git -H bash -c 'wget -O gitea https://dl.gitea.io/gitea/1.15.4/gitea-1.15.4-linux-amd64'
sudo chmod +x gitea
sudo nano /etc/systemd/system/gitea.servicesudo nano /etc/systemd/system/gitea.service
sudo yum install nano
sudo nano /etc/systemd/system/gitea.service
pwd
mkdir prod_level
cd prod_level/
mkdir linux_basics
cd linux_basics/
mkdir notes
cd notes
pwd
ls
cd ~
pwd
ls
ls -l
cleaar
clear
ls h
ls -h
ls -lr
ls -ltr
ls -lt
ls -la
history
history 20
cd prod_level/
ls
cd linux_basics/notes/
cd ..
ls .
clear
�adlk ö
exit
> myfile
touch file
ls simple_script
> new_file.txt
cat new_file
cat new_file.txt
nano new_file.txt
 echo "güzel sağlıklı huzurlu ve muhabbet dolu günler geliyor...:))" >> new_file.txt
cat new_file.txt
cat new_file.txt > output_directed
cat output_directed
> n<ber_f,le
> naber_file
ls -l
ls -l . >list_file
cat list_file
> list_file
cat list_file
mkdir my_folder
ls
touch my_file
ls
cd my_folder/
pwd
cd ..
rm my_file
rm -r my_folder
ls
"/home/train/prod_level/linux_basic/notes

home/train/prod_level/linux_basic/notehome/train/prod_level/linux_basic/note

"/home/train/prod_level/linux_basic/notes/"
cd notes
touch my_file1
"/home/train/prod_level/linux_basic/notes/"
touch my_file
"/home/train/prod_level/linux_basic/notes/"
ls
ll
touch my_file1
cd
pwd
cd notes
cd note
cd prod_level/linux_basic/notes/
touch my_file1
cat <<EOF>> sortfiile.txt
ali,23
pelin,22
musa,25
fatoş,42
ayşe,18
selin,15
EOF

cat sortfile.txt
cat sortfiile.txt
sort sortfiile.txt
sort -r sortfiile.txt
sort -t,k2 sortfiile.txt
sort -t, -k2 sortfiile.txt
nano sortfiile.txt
sort -t, -k2 sortfiile.txt
sort -t, -k2, -n  sortfiile.txt
sort -t, -k2 -n  sortfiile.txt
sudo yum repolist
ls -l etc/yum.repos.d
ls -l etc/yum.repos.d/
ls -l  /etc/yum.repos.d/
cat  /etc/yum.repos.d/docker-ce.repo
sudo install curl
sudo yum install curl
vi list_file
cat list_file
vi list_file
cat list_file
vi list_file
sudo yum install epel-release
sudo yum install htop
htop
sudo systemctl status postgresql -10
sudo systemctl status postgresql-10
sudo yum install epel-release
sudo yum install postgresql10-server postgresql10
sudo /usr/pgsql-10/bin/postgresql-10-setup initdb
sudo yum install epel-release
sudo rpm -Uvh https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-$(rpm -E %{rhel})-x86_64/pgdg-centos10-10-2.noarch.rpm

sudo rpm -Uvh https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-$(rpm -E %{rhel})-x86_64/pgdg-centos10-10-2.noarch.rpm
sudo yum install postgresql13-server postgresql13
sudo yum install epel-release
sudo yum install postgresql13-server postgresql13
No package postgresql13-server available.
No package postgresql13 available.
sudo yum install yum-utils

sudo yum install https://download.postgreql.org/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo yum info postgresql
URL         : http://www.postgresql.org/
sudo yum install  http://www.postgresql.org/
sudo yum install epel-release
sudo yum install postgresql10-server postgresql10
sudo yum install epel-release
sudo yum install postgresql13-server postgresql13
yum search postgresql
postgresql-server.x86_64 
sudo yum install postgresql-server.x86_64 
sudo systemctl status postgresql-10
sudo systemctl status postgresql -10
sudo yum install postgresql10-server postgresql10
sudo yum install postgresql13-server postgresql13
sudo yum install epel-release
sudo yum install postgresql10-server postgresql10
sudo systemstl status postgresql-10
sudo systemctl status postgresql-10
sudo systemctl status postgresql
sudo systemctl start postgresql
sudo journalctl start postgresql
sudo journalctl-xe start postgresql
sudo systemctl start postgresql
sudo systemctl start postgresql.service
sudo systemctl status postgresql.service
sudo systemctl start postgresql.service
journalctl -xe
sudo systemctl start postgresql.service
sudo systemctl start postgresql-10
nano conditionals.sh
./ conditionals.sh
./conditionals.sh
cat conditionals.sh
chmod +x conditionals.sh
./conditionals.sh
nano conditionals.sh
./conditionals.sh
nano conditionals.sh
./conditionals.sh
