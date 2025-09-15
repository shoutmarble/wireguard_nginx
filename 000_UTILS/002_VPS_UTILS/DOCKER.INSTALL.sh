sudo apt-get update && curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER
logout
cd 050_VPS_UTILS
ll
docker --version
docker run hello-world

