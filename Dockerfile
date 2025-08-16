FROM node:18

WORKDIR /app

COPY Frontend/package*.json ./

RUN if [ -f package-lock.json ]; then npm ci; else npm install; fi

COPY Frontend/. .

EXPOSE 3000
CMD ["npm","run","dev","--","--host","0.0.0.0","--port","3000"]
