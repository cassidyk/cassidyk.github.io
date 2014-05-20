cd /home/user/wheel/book
git clone https://github.com/cassidyk/whatcomesbeforealpha.git
gitbook build ./whatcomesbeforealpha/ --output=./output
cp -R ./output/* ./cassidyk.github.io/
rm -rf whatcomesbeforealpha/ output/
cd ./cassidyk.github.io
git add .
git commit -m 'auto build'
git push
