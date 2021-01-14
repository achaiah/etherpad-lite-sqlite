FROM etherpad/etherpad:latest

# Install sqlite3 so it is ready to be used
RUN npm install sqlite3 ep_hash_auth bcrypt
