# Notes on getting 

## Geographic files

## Understanding Statistics Canada Geographic Classification

[Hierarchical Structure](https://www23.statcan.gc.ca/imdb/p3VD.pl?Function=getCET_Page&VD=314300&Item=314459)

1. Census Metropolitan Areas are big cities
2. Census Divisions are Municipalities and Regions
3. Census Subdivisions are cities 
4. Census Tracts are parts of cities (e.g. neighbourhoods. )
5. Play with the search tool!



### Places to look

1. Open Data
2. Wilfrid Laurier University 
3. Cancensus Package

#### Open Data

1. [Open Data Toronto](https://open.toronto.ca/)

#### WLU

1. Go to [http://library.wlu.ca](http://library.wlu.ca)

2. Select "Research > Data and Statistics"

3. Select "Geospatial Data sets"

4. Select Scholars GeoPortal

   1.  On the left, search for "boundary files 2016"

   3. Choose either the Carto or Digital boundary file for 2016. For you work, it won’t matter  (the different lies in how the shapefiles interact with bodies of water. E.g. if you were working with Census Tracts, would Hamilton’s CTs hug the harbour, or would the lines be drawn out into the lake to take in the lake’s negative space.)

   4. Click “Add” in the results box for your chosen link above. 
   5. You’ll see a list of 14 options. Choose the level of geography you want. 

   5. Zoom around to what you need and then click on the polygon. E.g, Brantford.

   6. Once it’s highlighted, look for the blue “download” button on the left side of the screen, at the top of the search box:
   7. Choose “download by area of interest
   8. Choose Select a pre-definited area
   9. In the dropdown, choose the level of geography you want. 

   d.    In your output option, choose .SHP.

   e.    Click download

#### Cancensus Package

1. [Tutorial is here](https://github.com/mountainMath/cancensus)
2. Class tutorial is [here](https://raw.githubusercontent.com/sjkiss/DMJN328/master/map_assignment/cancensus_tutorial.R)
3. Requires signing up and getting an API here (https://censusmapper.ca/users/sign_up)