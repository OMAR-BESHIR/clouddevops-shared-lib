sudo systemctl status jenkins
sudo cat /var/log/cloud-init-output.log
sudo systemctl status jenkins
sudo cat /var/log/cloud-init-output.log
sudo apt update -y
sudo apt install openjdk-17-jdk -y
java -version
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update -y
sudo apt install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
docker --version
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
sudo apt install wget apt-transport-https gnupg lsb-release -y
trivy --version
sudo trivy --version
sudo apt-get install -y wget gnupg lsb-release
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/trivy.list
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/trivy.list
sudo apt update
sudo apt install trivy -y
trivy --version
sudo rm -f /etc/apt/sources.list.d/trivy.list
sudo rm -f /usr/share/keyrings/trivy.gpg
sudo apt update
wget https://github.com/aquasecurity/trivy/releases/latest/download/trivy_0.50.1_Linux-64bit.tar.gz
tar -xzf trivy_0.50.1_Linux-64bit.tar.gz
pwd
ls
wget https://github.com/aquasecurity/trivy/releases/latest/download/trivy_0.50.1_Linux-64bit.tar.gz
TRIVY_LATEST=$(curl -s https://api.github.com/repos/aquasecurity/trivy/releases/latest \
 | grep "browser_download_url.*Linux-64bit.tar.gz" \
 | cut -d '"' -f 4)
wget "$TRIVY_LATEST"
TRIVY_URL=$(curl -s https://api.github.com/repos/aquasecurity/trivy/releases/latest \
 | grep "Linux-64bit.tar.gz" \
 | grep -v "sigstore" \
 | head -n1 \
 | cut -d '"' -f 4)
echo $TRIVY_URL
wget "$TRIVY_URL"
sudo apt-get install wget apt-transport-https gnupg lsb-release -y
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo "deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt-get update
sudo apt-get install trivy -y
trivy --version
sudo systemctl status jenkins.service 
sudo apt install git -y
