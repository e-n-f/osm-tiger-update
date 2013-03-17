osm-tiger-update
================
A tool for updating OpenStreetMap with changes that have been made to the US Census TIGER maps since 2006.


The tool will download the files it needs from TIGER and OpenStreetMap,
but you need to have plenty of free space because the North American
OSM extract alone is 5GB.

It uses the `shpcat` and `osmconvert` utilities, which are included
in the distribution.

To compile these two tools, just do

    make

Then you can generate an OSM change file for one or more counties.
They need to be geographically contiguous or it will proably run out
of memory.  To generate Alameda County, California, which has FIPS code
06001, do

    ./find-tiger-changes 06001 > alameda.osc
