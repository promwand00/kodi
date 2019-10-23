for f in extrepo/*.zip; do
    # do some stuff here with "$f" remember to quote it or spaces may 
    # misbehave
    unzip -o $f -d $HOME/kodi
done
