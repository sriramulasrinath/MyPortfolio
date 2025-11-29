sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://down
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

