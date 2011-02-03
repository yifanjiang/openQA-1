#!/bin/sh

dburl=http://mozmill-crowd.brasstacks.mozilla.com/db/
#time mozmill --report=$dburl -t mozmill-tests/firefox/
#echo "mozmill tests returned $?"
# test upstream nightly:
time mozmill-automation/testrun_general.py --report=$dburl /tmp/firefox/firefox-bin
# test our build:
time mozmill-automation/testrun_general.py /usr/lib*/firefox/firefox > /dev/ttyS0 2>&1
echo "mozmill testrun_general returned $?"
echo "mozmill testrun finished" > /dev/ttyS0