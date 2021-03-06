---
title: Best Practices for the Construction of Well Models (from the data science perspective)
author: Alfonso R. Reyes
date: '2018-12-02'
slug: best-practices-for-the-construction-of-well-models-from-the-data-science-perspective
categories:
  - well modeling
tags: []
online: http://oilgainsanalytics.com/blog/publications/best-practices-for-the-construction-of-well-models-from-the-data-science-perspective/
image: best_practices_models-cover.png
slideshare: 5r8bfHRXEaLAtN
speakerdeck: 92d53d75535f4d91b0ce281410eca8b8
---

<!-- [![](/img/best_practices_models-cover.png)](/img/best_practices_models-cover.png) -->


Continuing with my transition from network folders to a [Rmarkdown](https://rmarkdown.rstudio.com/) blog system, I found a presentation I gave on few best practices for the construction of well models. After three years of building wells and network models, I came up with this list of recommended practices. It is unique in the sense that it took lessons learned by tackling the continuous well optimization process using [Data Science](https://en.wikipedia.org/wiki/Data_science).

The previous article [Scripts for Well Modeling and Batch Automation](https://www.linkedin.com/pulse/scripts-well-modeling-batch-automation-alfonso-r-reyes/) is part of the execution of **well modeling** which is just a component of the whole process. One of the most important aspects of well modeling is gathering, qualifying and validating the data. This is what this article is about.

I have published a set of slides that goes through some of well subsystems that require data collection before entering them into a model. Here is the slide set:

{{<slideshare 5r8bfHRXEaLAtN>}}

<br>
What I cover in these slides:

* Inventory of the well data
* Pressure tests
* Fluid data
* Well schematics and surveys
* PVT data
* Zones and layers data
* Activation matrix for well status
* Well and string identification
* When you should stop
* Folders and files
* Modeling software

The slides were generated using Latex [Beamer](https://en.wikipedia.org/wiki/Beamer_(LaTeX)) and Rmarkdown from [RStudio](https://www.rstudio.com/).

This is the link to the [Github repository](https://github.com/f0nzie/BestPracticesConstructionWellModels) if you are interested. The link to the slide set points to [SlideShare](https://www.slideshare.net/AlfonsoReyes4/best-practices-fortheconstructionofwellmodels/AlfonsoReyes4/best-practices-fortheconstructionofwellmodels).

Soon, as I progress with the transition of the material that I collected over the years on data science for petroleum engineering, I will be releasing something more dynamic that can be generated directly from [R](https://en.wikipedia.org/wiki/R_(programming_language)).

## Note
The slides are also available in SpeakeeDeck:
{{<speakerdeck 92d53d75535f4d91b0ce281410eca8b8>}}

