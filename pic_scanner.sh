#pildi tuvastamine
find . -type f -exec file {} \; | awk -F: '{if ($2 ~/image/) print $1}' |  xargs -I{} cp  {} /tmp/kuhuiganes
