FROM node:18.14.2-alpine3.17   

RUN apk add --no-cache git && \  
    git clone https://github.com/harshitethic/chatgpt-bot-telegram.git /app && \
    cd /app && \
    npm install                 

WORKDIR /app                  

CMD ["node", "/app/index.js"] 
