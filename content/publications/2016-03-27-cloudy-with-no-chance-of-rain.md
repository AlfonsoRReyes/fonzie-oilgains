---
title: Cloudy with no chance of rain
author: Alfonso R. Reyes
date: '2016-03-27'
slug: cloudy-with-no-chance-of-rain
categories:
  - computer science
tags: []
image: cloudy.jpg
online: https://www.linkedin.com/pulse/cloudy-chance-rain-alfonso-r-reyes/
---

Without intending -really-, I got immersed this weekend with remote sensor monitoring. 

As you know, these modern ages bring their good size of sensors. Everything generates data in different way: discrete and analog, and from there the challenge is not only monitoring in real time but evaluating the data, interpreting it and make sense of it. No pun intended. 

I wanted to bring the results of oil well models to a web page so it could be shared among other engineers, and I ended up creating a Linux server with `Graphite` and `StatsD` in a couple of hours. It works great by being able to send sensor data to the server that immediately publish the data in the intranet. That is the heavy version. 

The other alternative, lighter, and not so much cloud base, is Python `Bokeh` which exposes the data through its own server. Both options can do the statistical analysis of the data that is being sent for real time plotting but the latter would require more Python, pandas and NumPy wrangling. 

There is so much going on in the digital world that can benefit the petroleum engineer: virtual machines with `Vmware` and `VirtualBox`; `Vagrant` containers which bring virtualization to a new level; cloud based monitoring tools like Graphite, CollectD, StatsD; data science tools like R, Python, Jupyter notebooks, pandas, Bokeh. 

I am releasing today to my colleagues in the company the alpha version of the engineering `Python` scripts and notebooks that are able to talk to optimization programs such as `Prosper` and `GAP`, gather the calculated data from the models to generate statistical models along with well test data from Oracle database servers. In this low oil price environment, production optimization is greatly assisted by the same digital tools that are widely used in other industries.

