#!/bin/sh

git clone https://github.com/bobby-boy49/My-Internet-Archive-Scripts.git && cd My-Internet-Archive-Scripts && echo '#!/bin/sh' > mpv && echo 'am start --user 0 -a android.intent.action.VIEW -d "$1" -n is.xyz.mpv/.MPVActivity' >> mpv && chmod +x * && rm -f README.md termux-install.sh linux-install.sh archiveus archiveusa && mv * /data/data/com.termux/files/usr/bin && cd .. && rm -rf My-Internet-Archive-Scripts && rm termux-install.sh && echo '#!/bin/sh' > termux-install.sh && echo 'curl -s https://raw.githubusercontent.com/bobby-boy49/My-Internet-Archive-Scripts/main/termux-install.sh | sh' >> termux-install.sh && chmod +x termux-install.sh

if cd /data/data/com.termux/files/usr/bin && find -type f | grep -q 'archiveus' || cd /data/data/com.termux/files/usr/bin && find -type f | grep -q 'archiveusa'; then
	rm -f archiveus*
	cd
	echo "archiveus and archiveusa scripts no longer work anymore due to javascript. :/ *REMOVED SCRIPTS*"
else
	cd
	echo "archiveus and archiveusa does not exist ignoring..."
fi

cowsay "Done!"
