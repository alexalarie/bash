# Download all linked papers from ADS url

url="http://adsabs.harvard.edu/cgi-bin/nph-ref_query?bibcode=...;refs=CITATIONS&amp;db_key=AST"

links=$(wget --quiet -O - $url | grep -o 'http://[^"]*')

for link in $links
do
    # Look for the ABSTRACT URL
    if echo "$link" | grep -q "link_type=ARTICLE"; then
        url=$(echo $link | sed -e "s/#38;//" | sed -e "s/#38;//")
        # Get the filename
        filename=$(echo $url | sed -e "s/http:\/\/adsabs.harvard.edu\/cgi-bin\/nph-data_query?bibcode=\(.*\)&db_key=AST&link_type=ARTICLE/\1/" | tr . _)
        # Download the file
        wget --tries=3 $url -O $filename'.pdf'
    fi
done
