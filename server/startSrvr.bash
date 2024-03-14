#!/bin/bash

# Generate settings on each run
bash makeSrvrProps.bash

# Run server 
java -server -Xms$JAVA_MINRAM"G" -Xmx$JAVA_MAXRAM"G" \
    -XX:+UseConcMarkSweepGC \
    -XX:+UseParNewGC \
    -XX:+CMSIncrementalPacing \
    -XX:ParallelGCThreads=$JAVA_GCTHREADS \
    -XX:+AggressiveOpts \
    -jar /server/forge-1.12.2-14.23.5.2860.jar nogui