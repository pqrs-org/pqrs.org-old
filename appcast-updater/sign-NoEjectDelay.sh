#!/bin/bash

basedir=`dirname $0`
cd "$basedir"

priv_pem="secret/noejectdelay_priv.pem"
. scripts/check-priv_pem.sh

targetdir="../webroot/osx/karabiner/files"

latest_dmg=`ruby scripts/get-latest.rb $targetdir/NoEjectDelay-*.dmg`
version=$(echo `basename $latest_dmg .dmg` | sed 's|NoEjectDelay-||')
length=`ruby scripts/get-length.rb $latest_dmg`
dsaSignature=`sh scripts/sign_update.sh $latest_dmg $priv_pem`
pubDate=`ruby scripts/get-time.rb`

if [ "$version" == `ruby scripts/get-version.rb < "$targetdir/noejectdelay-appcast-devel.xml"` ]; then
    echo " `basename $0`: Already up-to-date."
    exit 0
fi

rm -f "$targetdir/noejectdelay-appcast-devel.xml.tmp"

>>"$targetdir/noejectdelay-appcast-devel.xml.tmp" cat <<EOF
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/">
  <channel>
    <title>NoEjectDelay Changelog</title>
    <link>https://pqrs.org/osx/karabiner/files/noejectdelay-appcast-devel.xml</link>
    <description>Most recent changes with links to updates.</description>
    <language>en</language>

    <item>
      <title>Version $version</title>
      <sparkle:minimumSystemVersion>10.11.0</sparkle:minimumSystemVersion>
      <description><![CDATA[
<style>
EOF

>>"$targetdir/noejectdelay-appcast-devel.xml.tmp" cat ../source/css/sparkle.css

>>"$targetdir/noejectdelay-appcast-devel.xml.tmp" cat <<EOF
</style>

<h2>About v$version Update</h2>

<!-- update-description-begin -->

EOF

>>"$targetdir/noejectdelay-appcast-devel.xml.tmp" ruby -e 'print $1.strip if /<!-- update-description-begin -->(.+?)<!-- update-description-end -->/m =~ $stdin.read' < "$targetdir/noejectdelay-appcast-devel.xml"

>>"$targetdir/noejectdelay-appcast-devel.xml.tmp" cat <<EOF


<!-- update-description-end -->
<p>
  <a href="https://pqrs.org/osx/karabiner/noejectdelay.html#history">More</a>
</p>
]]>
      </description>
      <pubDate>$pubDate</pubDate>
      <enclosure url="https://pqrs.org/osx/karabiner/files/NoEjectDelay-$version.dmg"
                 sparkle:version="$version" length="$length" type="application/octet-stream"
                 sparkle:dsaSignature="$dsaSignature"
                 />
    </item>

  </channel>
</rss>
EOF

mv "$targetdir/noejectdelay-appcast-devel.xml.tmp" "$targetdir/noejectdelay-appcast-devel.xml"
chmod 644 "$targetdir/noejectdelay-appcast-devel.xml"
echo \
    '\033[33;40m' \
    "`basename $0`: noejectdelay-appcast-devel.xml is updated." \
    '\033[0m'
