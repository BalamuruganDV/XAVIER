if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BalamuruganDV/ALONE.git /ALONE
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ALONE
fi
cd /ALONE
pip3 install -U -r requirements.txt
echo "Starting Alone🔥...."
python3 bot.py
