FROM etherpad/etherpad:latest

USER root

# Install sqlite3 so it is ready to be used
RUN apt update && apt -y upgrade && apt install -y python3 && apt install -y python3-pip && ln -s /usr/bin/python3 /usr/bin/python
RUN npm i -f fsevents
RUN npm install sqlite3 ep_hash_auth bcrypt decamelize minimatch
RUN chown -R etherpad /opt/etherpad-lite/node_modules

USER etherpad
