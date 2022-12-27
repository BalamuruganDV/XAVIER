if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BalamuruganDV/XAVIER.git /XAVIER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /XAVIER
fi
cd /XAVIER
pip3 install -U -r requirements.txt
echo "Starting Xavier🔥...."
python3 bot.py
