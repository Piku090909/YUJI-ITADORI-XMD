FROM node:lts-buster

RUN git clone https://github.com/Piku090909/YUJI-ITADORI-XMD.git /root/YUJI-ITADORI-XMD

WORKDIR /root/YUJI-ITADORI-XMD

RUN apt-get update && \
    apt-get install -y ffmpeg imagemagick webp && \
    rm -rf /var/lib/apt/lists/*

RUN npm install && npm install -g pm2

EXPOSE 9090

CMD ["npm", "start"]
