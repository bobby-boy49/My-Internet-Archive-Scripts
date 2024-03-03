#!/bin/sh

# This will install the scripts in the directory this file is in!

log="echo '$?' >> archiveupdate.txt"

git clone https://github.com/bobby-boy49/My-Internet-Archive-Scripts.git
$log
cd My-Internet-Archive-Scripts
$log
rm -f README.md termux-install.sh linux-install.sh archiveus archiveusa
$log
chmod +x *
$log
cd ..
$log
if [ -f $(pwd)/archiveus ]; then
$log
rm -f archiveus*
$log
else
	echo "archiveus script is not available ignoring..."
 	$log
fi
mv My-Internet-Archive-Scripts/* $(pwd)/
$log
rm -rf My-Internet-Archive-Scripts
$log
echo '#!/bin/sh' > linux-install.sh && echo 'curl -s https://raw.githubusercontent.com/bobby-boy49/My-Internet-Archive-Scripts/main/linux-install.sh | sh' >> linux-install.sh
$log
cowsay "Done!"
