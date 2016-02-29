# HeritageData

Using data from the Digital Public Library of America, I decided to highlight my
German, Scottish, and Syrian ancestry. I refined my data entries by specifying
that besides the keyword inputted by the user, the data title must contain Syria or Scotland or
Germany. (See below)

http://api.dp.la/v2/items?sourceResource.title=(Syria+OR+Scotland+OR+Germany)
+AND+"+title+"&fields=sourceResource.subject,id&page_size=500&api_key="

After loading the JSON data as objects and creating an array I then used the
length of the data array to make a bar graph. I used multiple if statements to determine
which group the length of the array would belong to (0-100 entries, 100-200 entries,
etc.) Each data point is then randomly placed as an ellipse inside the bar it belongs to.
This way, it would be clear which topics had the most data in the DPLA regarding the
countries I am from. Besides each of the bars representing the amount of data for the
specific search, the ellipses are also a visual of the individual data entries.

Additionally, I added text under the search window to give the exact amount of
entries in the DPLA every time a new input was entered. Since the graph had a range of
100 entries, I this component gave an exact size of the data set.
