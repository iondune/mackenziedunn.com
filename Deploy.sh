echo "Pulling changes from repository..."
echo "----------------------------------"
hg -R ~/Projects/MackenzieBeaschler/ pull -u
echo
echo "Synchronizing changes with webserver..."
echo "---------------------------------------"
jekyll build
rsync -a _site/ /var/www/mackenziebeaschler.com/public_html/
