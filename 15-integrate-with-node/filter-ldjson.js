#!/usr/bin/env node

// this script can be piped to and will filter a log file of ld-json to only lines that have a level of "error"

const { Transform } = require('stream');

class FilterLogs extends Transform {
  _transform(chunk, encoding, callback) {
    try {
      let jsonChunk = chunk.toString()
        .split('\n')
        .reduce((aggr, line) => {
          if (line) {
            let json = JSON.parse(line);
            if (json.level === 'error') {
              aggr.push(JSON.stringify(json));
            }
          }
          return aggr;
        }, [])
        .join('\n');

      if (jsonChunk) {
        this.push(jsonChunk + `\n`);
      }

      callback();
    } catch (error) {
      callback(error);
    }
  }
}

// handle errors
process.on('uncaughtException', err => {
  process.stderr.write(`Uncaught exception: ${err.message}\n`);
  process.exit(1);
});

// do the actual work
process.stdin
  .pipe(new FilterLogs())
  .pipe(process.stdout);

