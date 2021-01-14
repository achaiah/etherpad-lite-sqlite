FROM etherpad/etherpad:latest

USER root

# Install sqlite3 so it is ready to be used
RUN apt update && apt -y upgrade && apt install -y python3 && apt install -y python3-pip && ln -s /usr/bin/python /usr/bin/python3
RUN npm i -f fsevents
RUN npm install sqlite3 ep_hash_auth bcrypt

USER etherpad
