#!/bin/bash

# Clean the slate for git
git checkout master
git reset --hard origin/master

# Then, pull new content
cd /var/www/paleo
git pull

# Now, rebuild the files for main site
cd /var/www/paleo/main/
rm -r public
hugo

# Create symlink for public
ln -s /var/www/paleo/playground /var/www/paleo/main/public

# Now, rebuild the files for blog site
cd /var/www/paleo/blog/
rm -r public
hugo

# Create a symlink for blog
ln -s /var/www/paleo/blog /var/www/paleo/blog/public
