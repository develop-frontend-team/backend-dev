## Backend Development

### skills
- golang 1.22.3
- golang-migrate
- gin
- security
  - jwt
- docker

### golang-migrate Usage
- table作成（user）
```shell
migrate create -ext sql -dir db/migration -seq create_users_table
```
- [参考文献](https://zenn.dev/farstep/books/f74e6b76ea7456/viewer/4cd440)
- tableをdockerで動いているpostgresDBにマイグレーションする
```shell
migrate --path db/migration --database 'postgresql://root:secret@localhost:5432/postgres?sslmode=disable' -verbose up
```
- 下記ログがターミナルで表示されたら成功
```shell
2024/10/30 10:57:30 Start buffering 1/u create_users_table
2024/10/30 10:57:30 Read and execute 1/u create_users_table
2024/10/30 10:57:30 Finished 1/u create_users_table (read 17.114333ms, ran 13.284667ms)
2024/10/30 10:57:30 Finished after 38.998042ms
2024/10/30 10:57:30 Closing source and database
```