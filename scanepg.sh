cd /home/plyczko/kodi/
python3 toyagoepg/toyaepg.py epg/
python3 toyagoepg/ncplus.py epg/
git pull -n
git add epg/*
git commit -m "$(date)"
git push
