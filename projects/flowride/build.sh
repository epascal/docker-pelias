cd /mnt/data/pelias/whosonfirst/sqlite
wget https://data.geocode.earth/wof/dist/sqlite/whosonfirst-data-admin-ch-latest.db.bz2
bzip2 -d whosonfirst-data-admin-ch-latest.db.bz2
wget https://data.geocode.earth/wof/dist/sqlite/whosonfirst-data-admin-fr-latest.db.bz2
bzip2 -d whosonfirst-data-admin-fr-latest.db.bz2
cd /mnt/data/pelias/geonames/
wget https://download.geonames.org/export/dump/FR.zip
wget https://download.geonames.org/export/dump/CH.zip
../../pelias elastic pull
../../pelias elastic wait
../../pelias elastic create
../../pelias download all
../../pelias prepare all
../../pelias import all
../../pelias compose up
