# 🌸Django Rest Framework + supabase + Docker🌸

## How to start

1. git clone
2. create supabase environment
3. supabase start
4. make up

then you can start dev your app!

## supabase commands

- supabase start 
  - create supabase docker container.
- supabase stop 
  - stop supabase docker container
- supabase status
  - see url to supabase GUI
- 

## docker+djangoのベストプラクティス
もちろんdockerを使ってるので、ホストマシンのpipを使った開発は行わなくてすむようにしています。
なので基本的な方針としてコンテナ内のpip環境を使いましょう。
make build時にはrequirements.txtをpip installしています。
git pullしてきた時はmake down と make upをするようにしましょう。make up 時にコンテナ内でpython manage.py migrateを行い、
テーブル構造が反映されるようになっています。

開発している途中でテーブル構造を変更した場合、migrationファイルを作成する必要があります。
その場合、make makemigrationsコマンドでコンテナ内にmigrationファイルを作成してください

modelとsupabaseのテーブル設計を変更したあと
supabase db diff -f test
これをすると、20240416025413_test.sqlという名前で全ての既存のテーブルを反映したsqlファイルが作成されます。