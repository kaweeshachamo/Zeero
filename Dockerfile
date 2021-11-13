FROM KTBwhitedevil:latest

RUN git clone https://github.com/kaweeshachamo/Zeero /root/Zeero
WORKDIR /root/Zeero/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
