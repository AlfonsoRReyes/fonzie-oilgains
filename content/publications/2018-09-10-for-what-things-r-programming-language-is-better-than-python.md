---
title: For what things R programming language is better than Python?
author: Alfonso R. Reyes
date: '2018-09-10'
slug: for-what-things-r-programming-language-is-better-than-python
categories:
  - python
  - R
tags:
  - comparison
online: https://www.linkedin.com/pulse/what-things-r-programming-language-better-than-python-reyes/ 
image: for_what_things_r_better_python-cover.png
---

<!-- [![](/img/for_what_things_r_better_python-cover)](/img/for_what_things_r_better_python-cover) -->


I used and wrote Python applications for more than 10 years. Then, I started to use R for my data science projects in Petroleum Engineering. I know Python quite well, being one its major weaknesses multiple versions of Python floating around and packages with no "adult" supervision. Anyway, after 2 years of R experience (far too short if you compare it with that of the R experts), this is my take on what makes R better than Python:

1. Its focus in science, statistics, mathematics and engineering. It is intense to the point that it is required from you to apply scientific rigor on the work you do in R.

2. The support is best in class. Wherever you go: StackOverflow, forums, Twitter, LinkedIn. Everyone is willing to help and make you better at R. Very altruistic spirit in the R community.

3. Reproducibility receives great focus. A good number of packages have evolved around this. The concept, again, comes from the scientific rigor, that in essence, any work you do, has to be able to be reproduced by anyone in your team, or from the outside world. The community go to extremes to make reproducibility the king and master of data science.
    
4. Universal text editing platform. Rmarkdown is the lingua franca in R. Everything that you write can be made in Rmarkdown: reports, slides, thesis, papers, books, literate programming, etc. No rock has been unturned with Rmarkdown. If you compare Rmarkdown with Jupyter notebooks, Rmarkdown will give you a yield of 1000:1. However, you have to invest a pretty good portion of time in learning R.

5. Fast deployment. I don’t know how they do it but the people in RStudio made a product, probably, in couple of years, that takes your breath away. I am talking about Shiny. You can web deploy an app in few minutes to hours, compared to Python, weeks to months, or never. In other words, what you develop in Python, is practically, non-shareable.

6. One of the simplest and best IDE ever invented. Again, RStudio makes the grade for coming out with this simple, and at the same time, ever-expanding platform for development. At first sight, it fools you. Difficult to believe that with four panes you can do so much stuff. Made simple but not simpler.

7. Package quality control. CRAN (the Comprehensive R Archive Network) has a high bar if you want to publish a package. They will not allow a package that doesn’t come with full documentation. And that what makes R what it is. Yes, there are more than 11,000 packages in CRAN but that is not the point. I think it is the quality of the documentation of the functions what makes R so strong and expandable.

8. Extendable. This is a consequence of the point above. Many, many high quality packages have been built over the solid foundation of existing libraries. And the packages offspring give birth to even better packages. And who is to to benefit? The users.

9. Publishing quality graphics. Say what you want about matplotlib but it will never be that close to the base graphics or R; or ggplot2, for that matter. I used matplotlib quite a lot but everything that is non-standard has to be created from scratch. On the side of R, I haven't been able yet to exhaust what seems to be an infinite pool of graphics functions of base-graphics and ggplot2 and its offspring. Takes your breath away. Of course, this comes with a set of basic rules on plotting: cannot use multiple y-axis; avoid pie-charts and bars; don't abuse of 3D, or avoid it at all; start plots at zero unless you have a good reason; and couple more.

10. Function centric. This is one of the things that makes R so different than Python. Classes have been used to an abuse in Python, and sometime with no reason. Probably, because of the way Python's idea was sold. Still, if you want to learn classes and Object Oriented Programming, I would recommend doing it with Python; easiest in the world. Opposing this view, the world in R is different: the function is a first class citizen in the R world. You may not want to believe this but there are at least four class frameworks in R: S3, S4, R6, RC. There are more but these four comes quickly in my mind. The difference with other languages (I have used classes in Java and Python), is that in R the class works underneath the function. S3 and S4 work radically different than Java and Python classes; the closest relative would be R6.


Summarizing, R is an exceptional tool for data science and machine learning projects. Python is as good. But the yield feel much greater when developing with R. You have to consider the investment in time because R takes much, much longer to master. You can do prototyping with any of them but still R gives you that sort of solid and reproducible response that Python can hardly scratch. And, it is fine; Python, being a multi-purpose language, has greatly been extended to serve as the data science tool of choice.
