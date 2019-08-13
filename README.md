# gen_laravel_on_docker
対話形式でDockerによるLaravel開発環境が構築できます

## 指定できるもの
- DBの種類(MySQL/PostgreSQL)
- DBのバージョン
- DB名・user・password・DBのポート番号
- webサーバ(Apache/Nginx)
- webサーバのポート番号
- PHPのバージョン

## デモンストレーション
```
% . ./gen_laravel_on_docker.sh
Please select MySQL or PostgreSQL mysql/postgres [ mysql ]
postgres
Please input PostgreSQL version [ 10 ]
10
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1153    0  1153    0     0    752      0 --:--:--  0:00:01 --:--:--   752
Please input DB name you want to set
psql-test
Please input DB user you want to set
postgres
Please input DB password you want to set
password
Please input DB port you want to set
5432
Please select Apache or Nginx apache/nginx [ apache ]
nginx
Please input PHP version [ 7.3 ]

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1032    0  1032    0     0    707      0 --:--:--  0:00:01 --:--:--   707
Please input WebServer port you want to set
8080
```