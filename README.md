# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 

* Rails version: 

* Database creation: Postgres


リポジトリを clone
```
git clone https://github.com/toshi-ue/example-rails-slackapi-invite-channel.git
```

リポジトリに移動
```
cd example-rails-slackapi-invite-channel
```

gemをインストール
```
bundle install -j4
```

webpackerをインストール
```
rails webpacker:install
```

データベースを作成
```
rails db:create
rails db:migrate
```


アプリケーションを起動
```
rails s
```
