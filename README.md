- Clone into this repo
`git clone https://github.com/AliAdnanSohail/docker-practice.git`
- Make sure you have running containers of openedx
- Run `docker-compose up --build` in project directory
- Go into `docker exec -it <container_id> bash`
- Run django shell `python manage.py shell`
- Run following commands to check db connection
```
from django.db import connection
cursor = connection.cursor()
cursor.execute("SHOW TABLES;")
```
