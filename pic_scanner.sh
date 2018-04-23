#pildi tuvastamine
find . -type f -exec file {} \; | awk -F: '{if ($2 ~/image/) print $1}' |  xargs -I{} cp  {} /tmp/kuhuiganes
ja (netist leitud näide) xxd -c1 -p image.jpg | tr "\n" " " | sed -n -e 's/.*\( ff d9 \)\(.*\).*/\2/p' | xxd -r -p


Kompineeirituna: (miinus -- tahaks failinime ka )
find . -type f -exec file {} \; | awk -F: '{if ($2 ~/image/) print $1}' |  xargs -I{} xxd -c1 -p {} | tr "\n" " " | sed -n -e 's/.*\( ff d9 \)\(.*\).*/\2/p' | xxd -r -p
