#!/bin/bash

# Bun を使用して Tailwind CSS を追加
npx bun add tailwindcss postcss autoprefixer
npx bun add daisyui

# Tailwind CSS の設定ファイルを初期化
npx tailwindcss init -p

# index.css をリセットして Tailwind CSS の設定を追加する
echo "" >> ./src/index.css
echo "@import 'tailwindcss/base';" > ./src/index.css
echo "@import 'tailwindcss/components';" >> ./src/index.css
echo "@import 'tailwindcss/utilities';" >> ./src/index.css


# tailwind.config.js をリセットして指定された基本形に合わせて設定を追加する
cat << EOF > tailwind.config.js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [],
  theme: {
    extend: {},
  },
  plugins: [
    require("daisyui")
  ],
}
EOF

echo "Tailwind CSS setup completed in index.css and tailwind.config.js!"
