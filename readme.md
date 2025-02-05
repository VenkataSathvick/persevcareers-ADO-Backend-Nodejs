sudo usermod -aG docker $USER

sudo usermod -aG root $USER

sudo chmod 777 /var/run/docker.sock


kubectl create secret docker-registry acr-creds \
  --docker-server=perseverance01.azurecr.io \
  --docker-username=perseverance01 \
  --docker-password=8 \

