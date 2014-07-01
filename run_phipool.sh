#!/bin/sh
SERVICE='python ./run_p2pool.py --net phicoin'

if ps ax | grep -v grep | grep "$SERVICE" > /dev/null
then
        echo "$SERVICE is already running!"
else
        screen -m -S screenphi python ./run_p2pool.py --net phicoin --give-author 0 --disable-upnp -f 1 -a PuUwoz2mk1wPQdWidZU3VnCYxoZXfvsA7g

        wait
fi

