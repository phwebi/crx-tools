var hookshot = require('hookshot');

hookshot('refs/heads/master',
  'git fetch origin && git checkout origin/master && bash crxmake.sh ./chrome/ inspector.pem')

.listen(3000);