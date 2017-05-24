lead='^<!-- HEADER BEGIN -->$'
tail='^<!-- HEADER END -->$'
sed -e "/$lead/,/$tail/{ /$lead/{p; r Header/header.html
        }; /$tail/p; d }"  index.html > temp
rm index.html
mv temp index.html