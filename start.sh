if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/The-Happy-Hour/EvaMaria-ORG /EvaMaria-ORG
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria-ORG
fi
cd /EvaMaria-ORG
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
