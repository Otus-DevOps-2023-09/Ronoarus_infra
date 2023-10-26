#!/bin/bash
echo "### RUN starup.sh" && \
sudo apt update && \
sudo apt install -y ruby-full ruby-bundler build-essential && \
sudo apt update && \
sudo apt install mongodb -y && \
systemctl status mongodb && \
sudo systemctl start mongodb && \
sudo systemctl enable mongodb && \
sudo apt install git -y && \
cd /home/yc-user  && \
git clone -b monolith https://github.com/express42/reddit.git && \
cd /home/yc-user/reddit && bundle install && \
puma -d && \
echo "### END starup.sh"
