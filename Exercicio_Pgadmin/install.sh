#! /bin/bash
# based Ubunt SO
# ============================================== #
echo "Installing Git.........................."
sudo apt-get install git

echo "Installing Docker.........................."
curl -fsSL get.docker.com -o get-docker.sh && chmod +x get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker

#Installing kubectl https://kubernetes.io/docs/getting-started-guides/kubectl/
echo "Installing kubectl..........................."
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl

#Installing minikube https://github.com/kubernetes/minikube/releases
echo "Installing minikube.........................."
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.28.0/minikube-linux-amd64 
chmod +x minikube 
sudo mv minikube /usr/local/bin/
