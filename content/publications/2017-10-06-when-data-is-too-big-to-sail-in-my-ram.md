---
title: When Data is Too Big to Sail (in my RAM)
author: Alfonso R. Reyes
date: '2017-10-06'
slug: when-data-is-too-big-to-sail-in-my-ram
categories:
  - computer science
  - data engineering
tags: []
mathjax: yes
online: https://www.linkedin.com/pulse/data-science-petroleum-engineering-when-too-big-sail-my-reyes/
image: when_data_is_to_big.jpg
---

All of us at some point during our careers had problems with big datasets. So big that our computers could not handle it. Let's approach the problem from a practical side. I have had similar challenges while working on data science projects with Python and R, and with SQL databases, and with plain vanilla CSV huge files.

In one of the cases, the dataset was an Oracle database with well test data from producing oil and gas wells, offshore shallow waters. The Oracle database was too large to be read in memory; my computer had 8 GB RAM and the file was around 800 GB. What I did in this case is split the file by one aspect or dimension: I chose time, in my case, specifically years. Then, I selected one of the years, let's says 2011, and proceeded with exporting it as a .csv. I tried as Excel format first, but the Oracle export agent crashed. Possibly we were too much in the border with the memory. Never mind. You can open .csv or .xls files the same. After you finish exporting that year, you go to the next, and the next, and so on. I was lucky that none of the years I chose generated files bigger to affect my RAM available. If that had been the case, then I had had to split it in half years. In your case, you may want to chose another data dimension, such as field, business unit, location, platform, zone, etc. It will have to be an attribute that helps to split the dataset in smaller files. This method has the downside that you will be missing some data that is coming in real-time. If real-time analysis is not an issue, this splitting method should be fine. Little bit laborious though. It worked for me at least. Then back to the R console, you could continue the work of extracting the parts of the data that are usable to you eliminating variables or columns that do not add value to the analysis. That will help to make the dataset even smaller.

<!-- picture when_data_is_to_big-01.jpg -->

In the second case, the dataset files were remote .csv files, big enough that I could not handle them in R in my laptop. I own a HP ZBook with 8 cores and 32 GB RAM. In my benefit, I really didn't need all the file content; I just needed a specific range of dates. The dataset contained several years of data. If you search in internet you will find that there are several techniques to grab pieces of big datasets. First, you need to get a glimpse of the dataset structure which you could do by only downloading the first lines of the file: the header with the names of the variables or columns. Then, for the rows or observations, you send queries to grab the top, the bottom of the dataset and somewhere in the middle that gives you an idea of range. Once you pinpoint your sweet area, you proceed to send the query for the period that you are interested and extract the rows. You may not need either all the columns of the dataset, so your query should consider this too to make the subset to download even smaller. As I said, there are several strategies to do this in R. As you probably noticed already, R has always several ways of beating challenges, not just one.

In the third case, this was a big SQLite database that was slowing down the R console every time that was being loaded. In very similar manner to the first case, you could break up the dataset in smaller pieces. But this case was different because I wanted the latest data. So, you use a combination of method one above and write a script that grabs the data every hour or every day, or every week but in such a way that patches the main dataset without getting gaps in the resulting dataset. The script can be executed at you local side in R, connect to the server, select the data and save it locally. A second alternative is writing code in the server itself that will send you via ftp or email small chunks of the data at pre-determined times. A more refined version is writing a script in the server that writes directly to your own remote test server where you control the size of the data chunks, time periods, select the variables of interest. You may not need the whole relational database tables for the analysis.

<!-- picture when_data_is_to_big-02.jpg -->

In a fourth case, I was given by a client a humongous database file from a MS SQL server. Not a chance I could read it from the R console. This was a production database of wells offshore in the Gulf of Mexico. Plenty of data. Zone by zone, layer by layer, platform by platform. What I did in that case was to create a Virtual Machine that would act as a database server. Since your purpose is not to serve the database to users but exploring the data to make your discoveries, it is enough to download and install a Express version of SQL server. That would suffice - don't need multi CPU support, or gigantic RAM if it is not in production in real-time. Once you have your SQL server online and your connection tested, you just use a SQL connector from R to the database and proceed to do your SQL queries. At this point, tough, it is up to you how you want to interrogate the database, if with SQL or with standard R logical statements. You probably have to find out which one the dataframe manipulation tools is faster: dplyr or data.table or direct SQL. If you search StackOverflow you will be able to find benchmarking scripts in R that do just that. Sometimes the difference between methods is less than 10 times and in others, 1000 times faster.

<!-- picture when_data_is_to_big-03.jpg -->

Follow me in Twitter f0nzie@oilgains

