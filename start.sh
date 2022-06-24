if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BalamuruganDV/LUNA-FILTER-BOT.git /LUNA-FILTER-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LUNA-FILTER-BOT
fi
cd /LUNA-FILTER-BOT
pip3 install -U -r requirements.txt
echo "Starting Luna Bot...."
python3 bot.py
