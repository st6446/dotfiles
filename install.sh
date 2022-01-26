set -eu

echo "install スクリプト起動"

if [ "$(sudo echo hi)" != hi ]; then
  echo "sudo が使えません。Dockerfile に sudo を足してください。"
  echo "やり方は以下の PR を参考にしてください。"
  echo "https://github.com/quipper/monorepo/pull/38997"
  echo "https://github.com/quipper/monorepo/pull/39167"
else
  if [ -x "$(command -v apt-get)" ]; then
    echo "Debian 向け処理"
    sudo apt-get update
    # 以下のようにパッケージを足してください
    sudo apt-get install -y less
    sudo apt-get install zsh
  fi

  if [ -x "$(command -v apk)" ]; then
    echo "Alpine 向け処理"
    # 以下のようにパッケージを足してください
    sudo apk add less
    sudo apk add zsh
  fi
fi