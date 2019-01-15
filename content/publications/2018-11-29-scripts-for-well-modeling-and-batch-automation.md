---
title: Scripts for Well Modeling and Batch Automation
author: Alfonso R. Reyes
date: '2018-11-29'
slug: scripts-for-well-modeling-and-batch-automation
categories:
  - well modeling
  - batch automation
tags: []
online: https://www.linkedin.com/pulse/scripts-well-modeling-batch-automation-alfonso-r-reyes/?published=t
image: scripts_for_well_modeling-cover.png
slideshare: EwtgZFtyV8fhxB
---

<!-- [![](/img/scripts_for_well_modeling-cover.png)](/img/scripts_for_well_modeling-cover.png) -->

# Motivation

I am moving my collection of slides and previous [data science](https://en.wikipedia.org/wiki/Data_science) work in **production engineering** to a static type website using [Hugo](https://gohugo.io/) and [Rmarkdown](https://rmarkdown.rstudio.com/). I came to the realization that is too much work to perform the calculations in one environment (R or Python), and then having to copy-paste code and plots. I think it will be more efficient to have R and Rmarkdown do that for me instead. I think that [reproducibility](https://simplystatistics.org/2014/06/06/the-real-reason-reproducible-research-is-important/) is one of the most important aspects of data science that petroleum engineers have to strive for work in machine learning and artificial intelligence.

While organizing the material that goes back few years I found interesting slides. I think the petroleum engineering community may find some ideas and inspiration to get this further. I will be sharing some code via Github at [this repository](https://github.com/f0nzie) that I use via [Oil Gains Analytics](http://oilgainsanalytics.com).

<iframe src="//www.slideshare.net/slideshow/embed_code/key/EwtgZFtyV8fhxB" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> 

> Note. In case you cannot open the embedded presentation, you may try [this link](https://www.slideshare.net/AlfonsoReyes4/scripts-applied-to-well-and-network-modeling) at slideshare.net

# Batch Automation in Well Modeling

One of the advantages of writing scripts or coding in Python or R is that you are able to perform repetitive actions on objects. If a **well model** is called an object and that **object** contains other sub-objects such as deviation survey, downhole equipment, well tests, PVT tables, IPR or VLP calculations, etc., then by iterating through several of those objects that can be a few, a dozen, a hundred or thousands of models, then we are performing batch automation. So, instead of focusing our attention in one well model, we apply a calculation, a function, or an algorithm on several well models.

This [batch automation](https://automation.isa.org/2015/09/batch-process-automation/) process comprises the following cycle:

* Communicate with the well modeling software
* Open the well model
* Read a specific section of the well model
* Validate the data that has been retrieved
* Perform calculations using the well model data and functions written in the script.
* Write the results to the model.
* Write the results to the summary table or dataframe in the environment of the scripting engine where one well is a row.
* Jump to the next well model.
* Repeat the steps from #2 until all well models have been read.


# Gains of Batch Automation
Let's review the steps of the batch automation process. We have several gains using this method. (1) We are analyzing and resolving not one well at a time but several; (2) we are not using the mouse to navigate and retrieve the data from the well; (3) we are creating a data structure in the shape of tables or dataframes for statistical analysis; (4) we are modifying the well model and saving it; (5) collecting the well data in shape for machine learning.

Batch Automation **is not** machine learning; it is a step towards it. Batch Automation is not exactly either Data Science but a powerful tool to perform the data analysis. What Batch Automation is doing is using the software tools available to iterate through many wells, or many well objects, in order to create data structures that will enable us to make discoveries on the data.

# A Simple Example
The slides present an example for single well batch automation. What the script does in detail is:

* Getting data from a well model using a single well script.
* Geothermal gradient and downhole equipment arrays
* Automatically calculating BHP from WHP
* State of the file before BHP calculations
* State after BHP calculations
* Getting basic well test data from a model
* Building a well test dataframe
* A dataframe for Downhole Equipment
* Basic Statistics for a well test
* Modifying downhole equipment
* Build a dataframe for the deviation survey
* Perform calculations for the deviation survey


# What's Next
While I progress with the construction of a static website with [Rmarkdown](https://rmarkdown.rstudio.com/) and moving old posts, I will probably be finding more treasures that I will publish here. The nice thing about Rmarkdown is that it will allow me to write and execute the code in the website saving me considerable time of copy-pasting. I will let you know when the blog is ready so you can see the difference. My plan is to publish posts on [reproducible](https://towardsdatascience.com/data-sciences-reproducibility-crisis-b87792d88513) data science, machine learning and artificial intelligence applied to petroleum engineering.

Alfonso R. Reyes - Houston, Texas