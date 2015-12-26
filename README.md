# docker-nodemon-forever
node 5.3 image using nodemon &amp; forever for livereload-like experience for node.js development
For more info please check [http://francolaiuppa.com/2015/11/14/dockerfile-for-nodejs-development-with-nodemon-and-forever/](http://francolaiuppa.com/2015/11/14/dockerfile-for-nodejs-development-with-nodemon-and-forever/).

# How to use
## Step One
Edit your package.json, add the following to the `scripts.start` property:

`forever -l log.txt -o out.txt -e err.txt --spinSleepTime 10000 --minUptime 5000 -c 'nodemon --exitcrash ' FILENAME_HERE"`

Replace `FILENAME_HERE` with your nodejs app executable.

## Step Two
Use the `-v` (volume) flag to mount your app directory to `/usr/src/app`.

