# ベースイメージとしてRubyを使用
FROM ruby:3.2.6

# Node.jsとYarnをインストール（JavaScriptの依存関係用）
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs \
    && npm install --global yarn

# 必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# アプリケーションディレクトリを作成
WORKDIR /myapp

# GemfileとGemfile.lockをコピー
COPY Gemfile Gemfile.lock ./

# Bundlerをインストールし、Gemをインストール
RUN gem install bundler && bundle install

# アプリケーションのソースコードをコピー
COPY . .

# プリコンパイルが必要な場合（Webpackerなど）
# RUN bundle exec rails assets:precompile

# ポートを指定
EXPOSE 3000

# サーバーを起動
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
