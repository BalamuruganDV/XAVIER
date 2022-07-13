if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BalamuruganDV/DEEPIKA-PADUKONE.git /DEEPIKA-PADUKONE
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DEEPIKA-PADUKONE
fi
cd /DEEPIKA-PADUKONE
pip3 install -U -r requirements.txt
echo "Starting Deepika...."
python3 bot.py
