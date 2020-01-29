# Where to look for data

## ODESI

[http://library.wlu.ca/research-materials/databases/odesi](http://library.wlu.ca/research-materials/databases/odesi)

1. Best to use this for public opinion surveys
   1. Public Opinion Polls
   2. Inter-university Consortium for Political and Social Research (ICPSR)
   3. Canadian Opinion Research Archive (CORA)
2. Statistics Canada does **not** ask questions about people's political behaviour or attitudes because it is a government agency.
3. Can search through abstract, keywords, survey title, or series
4. Examples of big surveys
   1. Canada Election Studies (CORA)
   2. Environics Focus Canada (CORA)
   3. American National Election Studies (ICPSR)
5. When you get results, refine by selecting the series, or select "Matching Variable" to see the precise wording of the question and some basic descriptive statistics.
6. Select "Explore / Download" to go to the data file itself. This will ultimately get you to a website where you can download a file that is readable into R.

## Canadian Census

[Link](https://www12.statcan.gc.ca/census-recensement/index-eng.cfm)

1. Decennial enumeration of the Canadian population, constitutionally mandated
2. *not* a survey
3. Best to link to "Data Products" , then select "Data Tables" on the next page.
   1. Statistics Canada has compiled a series of cross-tabulations that they think will be of interest to Canadians. 
   2. Search through, download CSV files
   3. Can be extremely difficult to read
4. Example:
   1. [Link](https://www12.statcan.gc.ca/census-recensement/2016/dp-pd/dt-td/Rp-eng.cfm?TABID=4&LANG=E&A=R&APATH=7&DETAIL=0&DIM=0&FL=A&FREE=0&GC=01&GL=-1&GID=1325190&GK=1&GRP=1&O=D&PID=111866&PRID=10&PTYPE=109445&S=0&SHOWALL=0&SUB=0&Temporal=2017&THEME=124&VID=0&VNAMEE=After-tax%20income%20groups%20(17)&VNAMEF=Tranches%20de%20revenu%20apr%C3%A8s%20imp%C3%B4t%20(17)&D1=0&D2=0&D3=0&D4=0&D5=0&D6=0)

## CANSIM

[Link](https://www150.statcan.gc.ca/n1/en/type/data)

1. Compilation of tables drawn from other data products managed by Statistics Canada 
2. Examples: Labour Force Survey, Air Charter Statistics, Air Passenger Origin and Destination, Canada-U.S.A. 
3. Use a combination of keyword searching and browsing. 
   1. Check the frequency tab to narrow results (monthly, annual)
   2. Can manipulate data visually, then download or download the whole data table, and manipulate in R (harder)
4. Example: [Link](https://www150.statcan.gc.ca/t1/tbl1/en/cv.action?pid=1410009001)



## OPEN DATA

1. Open Data Toronto ([Link](https://open.toronto.ca/))

   1. Can search directly in R [Link](https://sharlagelfand.github.io/opendatatoronto/)

2. Open Data Vancouver ([Link](https://opendata.vancouver.ca/pages/home/))

   1. Can search directly in R ([Link](https://github.com/mountainMath/VancouvR))
   2. This requires registering for an API key, super easy. ([Link](https://opendata.vancouver.ca/signup/))

3. Open Data Canada ([Link](https://open.canada.ca/data/en/dataset?portal_type=dataset))

   1. Often just repackages Statistics Canada data

      

## Scraping Data

Shockingly powerful 

1. [rvest()](https://blog.rstudio.com/2014/11/24/rvest-easy-web-scraping-with-r/) package is very good at scraping webpages 
2. Could probably pretty easy scrape NHL scoring data from here: [](https://www.hockey-reference.com/leagues/NHL_2020_skaters.html). 
3. Other examples:
   1. Wikipedia tables
   2. imdb information
4. Specific packages to interact with web platforms
   1. [Rtweet](https://rtweet.info/) this one is pretty user friendly, requires getting an API key; not that difficult. 
   2. [spotifyR](https://github.com/charlie86/spotifyr) I admit I haven't had a chance to play with this one yet; also requires API key and logging into your spotfiy account, but it doesn't sound too difficult. 



