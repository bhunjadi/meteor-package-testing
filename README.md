## About
Reproduction of the error when testing packages which have test files that include other test files.

### Usage
```
git clone https://github.com/bhunjadi/meteor-package-testing.git

# test with 1.8.0.2 - fails with unexpected token import
# 1.8.1-beta.20 also fails
./create_test.sh 1.8.0.2

# test with 1.8.0.1 - works
./create_test.sh 1.8.0.1
```

### Notes
Main test module, *my-package-tests.js*, imports *additional.tests.js* and build fails with:
```
W20190308-00:53:44.921(-8)? (STDERR) /tmp/meteor-test-run188ny86.olcw/.meteor/local/build/programs/server/packages/local-test_my-package.js:34
W20190308-00:53:44.973(-8)? (STDERR) import fs from  'fs';
W20190308-00:53:44.973(-8)? (STDERR) ^^^^^^
W20190308-00:53:44.974(-8)? (STDERR)
W20190308-00:53:44.974(-8)? (STDERR) SyntaxError: Unexpected token import
W20190308-00:53:44.974(-8)? (STDERR)     at createScript (vm.js:80:10)
W20190308-00:53:44.974(-8)? (STDERR)     at Object.runInThisContext (vm.js:139:10)
W20190308-00:53:44.974(-8)? (STDERR)     at /tmp/meteor-test-run188ny86.olcw/.meteor/local/build/programs/server/boot.js:401:30
W20190308-00:53:44.974(-8)? (STDERR)     at Array.forEach (<anonymous>)
W20190308-00:53:44.975(-8)? (STDERR)     at /tmp/meteor-test-run188ny86.olcw/.meteor/local/build/programs/server/boot.js:228:19
W20190308-00:53:44.975(-8)? (STDERR)     at /tmp/meteor-test-run188ny86.olcw/.meteor/local/build/programs/server/boot.js:479:5
W20190308-00:53:44.975(-8)? (STDERR)     at Function.run (/tmp/meteor-test-run188ny86.olcw/.meteor/local/build/programs/server/profile.js:510:12)
W20190308-00:53:44.975(-8)? (STDERR)     at /tmp/meteor-test-run188ny86.olcw/.meteor/local/build/programs/server/boot.js:478:11
```
