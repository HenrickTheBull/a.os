#!/usr/bin/env bash
set -euo pipefail

LOOK_AND_FEEL_PACKAGE="org.kde.breezetwilight.desktop"

if [[ ! -d "/usr/share/plasma/look-and-feel/${LOOK_AND_FEEL_PACKAGE}" ]]; then
	echo "Warning: ${LOOK_AND_FEEL_PACKAGE} is not installed under /usr/share/plasma/look-and-feel/ yet." >&2
fi


mkdir -p /etc/xdg
cat <<EOF > /etc/xdg/kdesktoprc
[KDE]
LookAndFeelPackage=${LOOK_AND_FEEL_PACKAGE}
EOF

cat <<EOF > /etc/xdg/kdeglobals
[KDE]
LookAndFeelPackage=${LOOK_AND_FEEL_PACKAGE}
EOF