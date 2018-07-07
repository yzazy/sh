
https://docs.docker.com/install/linux/docker-ce/ubuntu/

sudo nano /lib/systemd/system/docker.service
---
ExecStart=/usr/bin/dockerd --insecure-registry 172.30.0.0/16 -H fd://
---
sudo systemctl daemon-reload

sudo service docker start

sudo chown kynuxyz /var/run/docker.sock

oc cluster up
oc cluster up --public-hostname=uop.kynu.xyz --routing-suffix='apps.kynu.xyz'  --use-existing-config=true
