#!/bin/bash
tmp=$(flatpak list --app --columns=application | xargs echo -n) && echo -e '#!/bin/bash'"\nflatpak install "$tmp >install_flatpaks.sh && sudo chmod +x install_flatpaks.sh
