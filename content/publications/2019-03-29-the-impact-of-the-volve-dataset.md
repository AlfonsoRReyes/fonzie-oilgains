---
title: The impact of the Volve dataset
author: Alfonso R. Reyes
date: '2019-03-29'
slug: the-impact-of-the-volve-dataset
categories:
  - Volve
  - datasets
tags: []
mathjax: yes
image: impact_cover.png
online: https://www.linkedin.com/pulse/impact-volve-dataset-alfonso-r-reyes/
---


This is a part of the response I wrote to a reader in my [blog](http://blog.oilgainsanalytics.com/blog/. The question was about the limited scope of the Volve license, questioning its openness, because it doesn't cover commercialization from the data. This was my response:

> I am not finding any problem whatsoever. For my purposes of research, learning, education and teaching, I think the license is alright. In all articles and papers I always give the corresponding **attribution**. Not a problem because that is even part of the **data science** philosophy. I don't think **Equinor** has a problem with what I am doing either since they have even invited me to a conference recently.
\
Now, if you ask me at **commercial** level, that's a different story, and I understand where the owners are coming from; they want to keep property of the data as well as keeping control of any commercialization from it. If you read the original letter of disclosure you will see that the intention of Volve dataset release is **fomenting research and discovery in DS, ML and AI**. I don't think they were a pursuing commercial interest. At least, that's my interpretation.   
\
From I what I've seen and played with the data, I have learned a lot while teaching. Consider the advantage of having the whole of story of **8 years of field production**.
**Let me give you an example**. I always wanted to learn to read WITSML, which is the format that **drilling engineering** uses for real-time data. With Volve I have had my chance to take a look and discover things -from real-time data-, from plotting the monitoring parameters like rate of turn, inclination versus azimuth, TVD vs Rate of Turn, and TVD vs Rate of Build. You can clearly see a **pattern** that you could build into a **predictive model** with Machine Learning. It is astonishing. There are discoveries to be made. But first, a data transformation is needed to convert the XML **hierarchical** structure to dataframes. That's the number one barrier. Right there you realize Data Science skills are a must. **No data science, no discovery**, and consequently, no machine learning.
\
A second example: the **reservoir model** in Eclipse. They have been organized, selected and stored it with care. It is not just a guy that put everything on a disk and left. **It runs as is**. Then, just by opening the text file with the output of the simulation -a **PRT** file-, I can tell you that I am -and others are- in awe of the quality of the simulation. It **matches production history** with 0.5% of error. Now, **the data science question** would be: what factors accounted for a superior model quality? And you are given all the data that was fed into the reservoir model. I know, digging through it will be a lot of work but it is doable -maybe not by one person but by a university. That will have one the greatest **impact** in the industry, on the side of the **reservoir simulation**, if you find the same variables - I am not saying the same data -, that gave origin to the Volve model are applicable to other reservoirs.
\
And, that's only two of the disciplines and small portion of data that I bumped into. I haven't touched yet logging, seismic, petrophysics, PVT, static model, etc. I am sure there is a **mine of gold in learning from that data**.
\
Forget about ML and AI. The key is starting the petroleum engineers with some *good old data science first* to make the discoveries.


Alfonso R. Reyes. Houston, March 29 2019.
