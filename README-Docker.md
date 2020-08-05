# Docker

##### extrnal database
```bash
sudo docker run -d \
--name=codinggarden-travel-log \
-p 1337:1337 \
-p 3000:3000 \
-e TZ=America/New_York \
-e NODE_ENV=development \
-e DATABASE_URL=mongodb://localhost/travel-log \
-e CORS_ORIGIN=http://localhost:3000 \
-e API_KEY=keyboardcat \
-e REACT_APP_MAPBOX_TOKEN=your-token-here \
--restart unless-stopped \
dockerizegit/codinggarden-travel-log
```

##### enable internal database
```bash
sudo docker run -d \
--name=codinggarden-travel-log \
-p 1337:1337 \
-p 3000:3000 \
-p 27017:27017 \
-v /var/lib/docker/storage/mongodb/template:/data/db \
-e TZ=America/New_York \
-e NODE_ENV=development \
-e DATABASE_URL=mongodb://localhost/travel-log \
-e CORS_ORIGIN=http://localhost:3000 \
-e API_KEY=keyboardcat \
-e REACT_APP_MAPBOX_TOKEN=your-token-here \
-e MONGDB=localhost \
--restart unless-stopped \
dockerizegit/codinggarden-travel-log
```
