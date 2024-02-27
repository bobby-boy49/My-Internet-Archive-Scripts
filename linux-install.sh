#!/bin/sh

# This will install the scripts in the directory this file is in!

git clone https://github.com/bobby-boy49/My-Internet-Archive-Scripts.git

cd My-Internet-Archive-Scripts

rm -f README.md termux-install.sh linux-install.sh

chmod +x *

cd ..

mv My-Internet-Archive-Scripts/* $(pwd)/

rm -rf My-Internet-Archive-Scripts

echo '#!/bin/sh' > linux-install.sh && echo 'curl -s https://raw.githubusercontent.com/bobby-boy49/My-Internet-Archive-Scripts/main/linux-install.sh | sh' >> linux-install.sh

cowsay "Done!"
