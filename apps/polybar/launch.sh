#!/usr/bin/env sh

killall -q polybar
sleep 2

while pgrep -x polybar >/dev/null; do sleep 1; done

num_monitors=0

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload theo &
    num_monitors=$(($num_monitors + 1))
  done
else
  polybar --reload theo &
fi

sleep 0.2

if (( $num_monitors > 1 ));
then
    if [ $(pgrep -x polybar | wc -l) != "2" ]; then
        kill -9 $(pgrep -x polybar | head -n 1)
        sleep 0.3
    fi
    if [ $(pgrep -x polybar | wc -l) != "2" ]; then
        kill -9 $(pgrep -x polybar | head -n 1)
        sleep 0.3
    fi
else
    while [ $(pgrep -x polybar | wc -l) != "1" ]; do
        kill -9 $(pgrep -x polybar | head -n 1)
        sleep 0.5
    done
fi

echo "Bars launched..."
