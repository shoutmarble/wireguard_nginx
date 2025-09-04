201~200~    9  sudo apt-get update && curl -fsSL https://get.docker.com | sh
   10  sudo usermod -aG docker $USER
      11  logout
         12  cd 100_INSTALL_DOCKER/
            13  ll
               14  docker --version
                  15  docker run hello-world
                     16  history
