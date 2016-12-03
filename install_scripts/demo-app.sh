#!/bin/sh
echo "Generating Linked Data Fragments ${HOME}/linkeddatafragments"
cd
git clone https://github.com/ActiveTriples/linked-data-fragments.git
cd linked-data-fragments
cp config/ldf.yml.sample_blazegraph config/ldf.yml
bundle install --quiet

echo "Generating plm-demo ${HOME}/plm-demo"
cd
git clone https://github.com/scande3/plm-demo.git
cd plm-demo
cp config/database.yml.sample config/database.yml
cp config/blacklight.yml.sample config/blacklight.yml
cp config/secrets.yml.sample config/secrets.yml
cp config/geomash.yml.sample config/geomash.yml
bundle install --quiet
rake db:migrate
rake ldfjetty:install
rake ldfjetty:start
