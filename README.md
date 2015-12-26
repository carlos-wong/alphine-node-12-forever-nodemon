# docker-nodemon-forever
node 5.3 image using nodemon &amp; forever for livereload-like experience for node.js development

# How to use
Edit your package.json, add the following to the `scripts.start` property:

`forever -l log.txt -o out.txt -e err.txt --spinSleepTime 10000 --minUptime 5000 -c 'nodemon --exitcrash ' FILENAME_HERE"`

Replace `FILENAME_HERE` with your nodejs app executable.
