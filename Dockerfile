# ベースイメージの指定
FROM python:3.11-slim

# 環境変数の設定
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 作業ディレクトリの設定
WORKDIR /code

# 依存関係ファイルをコピーし、pipでインストール
COPY requirements.txt /code/
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# プロジェクトファイルをコピー
COPY . /code/

# ボリュームの設定
VOLUME /code

# コンテナ起動時のコマンド
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
