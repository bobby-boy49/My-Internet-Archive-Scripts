#!/bin/sh


git clone https://github.com/bobby-boy49/My-Internet-Archive-Scripts.git && cd My-Internet-Archive-Scripts && echo "#!/bin/sh" > mpv && echo "am start --user 0 -a android.intent.action.VIEW -d "$1" -n is.xyz.mpv/.MPVActivity" >> mpv && chmod +x * && rm README.md && mv * /data/data/com.termux/files/usr/bin && cd .. && rm -rf My-Internet-Archive-Scripts
