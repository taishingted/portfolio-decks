#!/bin/bash
# 在這個資料夾裡執行：建立公開 GitHub 資料庫 portfolio-decks 並啟用 GitHub Pages
cd "$(dirname "$0")"
git init -q -b main
git add -A
git -c user.name="Ted" -c user.email="taishingted@gmail.com" commit -q -m "Web3 portfolio: AssetFi, Chainimals, LuLuPunk (abridged)"
gh repo create taishingted/portfolio-decks --public --source=. --remote=origin --push --description "Ted Wu Web3 portfolio - full slide viewers"
gh api -X POST repos/taishingted/portfolio-decks/pages -f "source[branch]=main" -f "source[path]=/"
echo "完成！約 1～2 分鐘後可開啟： https://taishingted.github.io/portfolio-decks/"
