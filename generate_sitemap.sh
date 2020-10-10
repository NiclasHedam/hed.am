#!/usr/bin/env bash

ENTRIES=""

echo '<?xml version="1.0" encoding="UTF-8"?>
<urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
  <url>
    <loc>https://hed.am/</loc>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
  </url>' > ./sitemap.xml

for f in  ./papers/* ./talks/*; do
    echo "  <url>
    <loc>https://hed.am/$f</loc>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>" >> ./sitemap.xml
done

echo "</urlset>" >> ./sitemap.xml
