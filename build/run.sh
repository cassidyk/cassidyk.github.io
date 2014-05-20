curl -u \
whatisthatyouaredoing:thisismypassword,therearemanylikeitbutthisoneismine \
--silent "https://mail.google.com/mail/feed/atom" > \
/home/user/wheel/book/mail.txt
ruby /home/user/wheel/book/ruby.rb
rm -f /home/user/wheel/book/mail.txt
#timedatectl status | grep Local  | tr -d ' ' > \
#/home/user/wheel/book/time
