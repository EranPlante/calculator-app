# Node.jsの軽量版（Reactなら）
FROM node:18-alpine

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係をインストール
COPY package.json package-lock.json ./
RUN npm install

# アプリのコードをコピー
COPY . .

# ポートを公開（Reactなら3000）
EXPOSE 3000

# アプリを起動
CMD ["npm", "run", "dev"]
