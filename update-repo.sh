REPO = "repository.piotrekcrash"
GIO = "piotrekcrash.github.io"
cd "$REPO/"
git pull
cd ..
./generate-zip.sh $REPO/
python3 generator.py
git add -u
git add addons.xml
git add addons.xml.md5
git add zips/$REPO/* -f git
cp zips/$REPO/* $GIO/
git commit -m "$(date)"
git push
cd $GIO
git add *
git commit -m "$(date)"
git push
