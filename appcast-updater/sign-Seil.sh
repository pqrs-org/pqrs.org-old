#!/bin/bash

basedir=`dirname $0`
cd "$basedir"

priv_pem="secret/Seil_priv.pem"
. scripts/check-priv_pem.sh

targetdir="../webroot/osx/karabiner/files"

latest_dmg=`ruby scripts/get-latest.rb $targetdir/Seil-*.dmg`
version=$(echo `basename $latest_dmg .dmg` | sed 's|Seil-||')
length=`ruby scripts/get-length.rb $latest_dmg`
dsaSignature=`sh scripts/sign_update.sh $latest_dmg $priv_pem`
pubDate=`ruby scripts/get-time.rb`

if [ "$version" == `ruby scripts/get-version.rb < "$targetdir/seil-appcast-devel.xml"` ]; then
    echo " `basename $0`: Already up-to-date."
    exit 0
fi

rm -f "$targetdir/seil-appcast-devel.xml.tmp"

>>"$targetdir/seil-appcast-devel.xml.tmp" cat <<EOF
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/">
  <channel>
    <title>Seil Changelog</title>
    <link>https://pqrs.org/osx/karabiner/files/seil-appcast-devel.xml</link>
    <description>Most recent changes with links to updates.</description>
    <language>en</language>

    <item>
      <title>Version $version</title>
      <sparkle:minimumSystemVersion>10.11.0</sparkle:minimumSystemVersion>
      <description><![CDATA[

<!-- RENAME_INFORMATION -->

<h2>About v$version Update</h2>
<ul>
  <li>XXXXXXXX</li>
EOF

>>"$targetdir/seil-appcast-devel.xml.tmp" ruby scripts/get-ul.rb < "$targetdir/seil-appcast-devel.xml"

>>"$targetdir/seil-appcast-devel.xml.tmp" cat <<EOF
</ul>
<a href="https://pqrs.org/osx/karabiner/seil.html">Seil web site</a>
]]>
      </description>
      <pubDate>$pubDate</pubDate>
      <enclosure url="https://pqrs.org/osx/karabiner/files/Seil-$version.dmg"
                 sparkle:version="$version" length="$length" type="application/octet-stream"
                 sparkle:dsaSignature="$dsaSignature"
                 />
    </item>

  </channel>
</rss>
EOF

mv "$targetdir/seil-appcast-devel.xml.tmp" "$targetdir/seil-appcast-devel.xml"
chmod 644 "$targetdir/seil-appcast-devel.xml"
echo \
    '\033[33;40m' \
    "`basename $0`: seil-appcast-devel.xml is updated." \
    '\033[0m'
