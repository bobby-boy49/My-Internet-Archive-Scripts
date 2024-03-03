#!/bin/bash

# This will install the scripts in the directory this file is in!

git clone https://github.com/bobby-boy49/My-Internet-Archive-Scripts.git

cd My-Internet-Archive-Scripts

rm -f README.md termux-install.sh linux-install.sh archiveus archiveusa

chmod +x *

cd ..

if find | grep -q 'archiveus' || find | grep -q 'archiveusa'
then
 	rm -f archiveus*
  	echo "archiveus and archiveusa scripts no longer work anymore due to javascript. :/ *REMOVED SCRIPTS*"
  else
   echo "archiveus and archiveusa does not exist ignoring..."
fi

mv My-Internet-Archive-Scripts/* $(pwd)/

rm -rf My-Internet-Archive-Scripts

echo '#!/bin/sh' > linux-install.sh && echo 'curl -s https://raw.githubusercontent.com/bobby-boy49/My-Internet-Archive-Scripts/main/linux-install.sh | sh' >> linux-install.sh

cowsay "Done!"
