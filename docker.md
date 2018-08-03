# Docker

Budowa aplikacji
```bash
sudo docker-compose build app
```

Tworzenie bazy i uruchomienie migracji
```bash
sudo docker-compose run --rm app rake db:create db:migrate db:seed RAILS_ENV=production
sudo docker-compose run --rm app rake db:seed RAILS_ENV=production
sudo docker-compose run --rm app rake db:migrate RAILS_ENV=production
sudo docker-compose run --rm app rake db:create db:migrate RAILS_ENV=development
```

Tworzenie użytkownika
```bash
sudo docker-compose run --rm app rake create_user RAILS_ENV=production
sudo docker-compose run --rm app rake create_user RAILS_ENV=development
```

Kompilowanie asstesów
```bash
sudo docker-compose run --rm app rake assets:precompile RAILS_ENV=production
```

Uruchomienie aplikacji
```bash
sudo docker-compose up -d app
```

Przejście do konsoli w aplikacji
```bash
sudo docker-compose exec app bash
```

Przejście do konsoli rails
```bash
sudo docker-compose run app rails console -e production
```

Startowanie/Wygaszanie aplikacji
```bash
sudo docker-compose start/stop
```

Czyszczenie obrazów dockera
```bash
sudo docker rmi --force $(sudo docker images | grep "^<none>" | awk "{print $3}")
```
