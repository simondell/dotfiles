mkdir backups
mv ~/.zshrc backups/
mv ~/.profile backups/

ln -sfhv dot/zshrc ~/.zshrc
ln -sfhv dot/profile ~/.profile
