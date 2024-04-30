#!/bin/bash
# Apply before building on FreeDOS
for f in MAPPER/GETMSG.ASM SELECT/SELECT2.ASM SELECT/USA.INF ; do
    sed -i -re 's/\xEF\xBF\xBD|\xC4\xBF|\xC4\xB4/#/g' src/$f
done

find src -iname '*.BAT' -o -iname '*.ASM' -o -iname '*.SKL' -o -iname 'ZERO.DAT' -o -iname 'LOCSCR' | xargs unix2dos -f