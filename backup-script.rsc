# add this script to Mikrotik
# setup System Scheduler, and sets your backup schedule (for me, it's every week)

:local hour [:pick [/system clock get time] 0 2];
:local minute [:pick [/system clock get time] 3 5];
:local second [:pick [/system clock get time] 6 8];
:local month [:pick [/system clock get date] 0 3];
:local date [:pick [/system clock get date] 4 6];
:local year [:pick [/system clock get date] 7 11];

/export  file="Backup-$date$month$year_$hour$minute$second"