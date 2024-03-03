#!/bin/sh

# This will install the scripts in the directory this file is in!

archiveus=$(rm -f archiveus* && echo "archiveus and archiveusa are no longer working because of javascript. :/ *SCRIPTS REMOVED!*")

git clone https://github.com/bobby-boy49/My-Internet-Archive-Scripts.git

cd My-Internet-Archive-Scripts

rm -f README.md termux-install.sh linux-install.sh archiveus archiveusa

chmod +x *

cd ..

if [ -f $(pwd)/archiveus ]
then
	$archiveus
elif [ -f $(pwd)/archiveusa ]
then
	$archiveus
else
	echo "archiveus and archiveusa does not exist ignoring..."
fi

mv My-Internet-Archive-Scripts/* $(pwd)/

rm -rf My-Internet-Archive-Scripts

echo '#!/bin/sh' > linux-install.sh && echo 'curl -s https://raw.githubusercontent.com/bobby-boy49/My-Internet-Archive-Scripts/main/linux-install.sh | sh' >> linux-install.sh

cowsay "Done!"
