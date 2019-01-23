---
title: Installing Python to play nice with R
author: Alfonso R. Reyes
date: '2019-01-17'
slug: installing-python-to-play-nice-with-r
categories:
  - python
  - rstats
  - data science
tags: []
---



## Motivation

## Download portable Python version

### Why a Portable Python? Why not Anaconda?



### Get the Python installation file

The most recent releases of WinPython will be found [here](http://winpython.github.io/#releases). This is screenshot of the part of the page that is of interest to us.

![1547758953951](/img/python_install_nice_r/1547758953951.png)

We will select Python 3.7, 64 bits. You may try another version, and it should work the same way. But for the purposes of this tutorials and the next, we will stick to 3.7 or 3.6.

If you click on the downloads link of the 3.7.0.2-64-bit version, you will brought to this [page](http://winpython.github.io/#releases):

![1547754291253](/img/python_install_nice_r/1547754291253.png)

We will download the file `WinPython64-3.7.1.0Zero.exe`. Notice the size of the file. It is very tiny: 28.4 Megabytes( MB). The `Zero` suffix means that this will install the minimum packages required for a functional Python. Beware, this will run only base Python. So, you will unable to run notebooks, read spreadsheets, or plotting. We will install the packages we need in few minutes.

So, here is the file that you should be getting:

![](/img/python_install_nice_r/1547758906561.png)

## Install the zero portable Python

We will install this portable Python directly under the `%USEPROFILE%` directory. This means in Windows, a folder like this: `C:\Users\alfonso`, or, `C:\Users\ptech`, etc.. You get the idea. 

Execute then the installer, accept the agreement, click next. Modify to the suggested folder. Here, for instance, I used `C:\Users\ipm\WPy-3710zero`. I added the word `zero` at the end to remind myself that this is a bare installation.

![1547757815606](/img/python_install_nice_r/1547757815606.png)

Click *Next* and *Install*. Wait for few seconds, and then you are done!

![1547757970827](/img/python_install_nice_r/1547757970827.png)

If you go to the resulting folder, you will a structure like this:

![1547759098446](/img/python_install_nice_r/1547759098446.png)

At this point, the only executables that will run are:

1. `IDLE (Python GUI)`

2. `WinPython Command Prompt`

3. `WinPython Interpreter`

![1547758485889](/img/python_install_nice_r/1547758485889.png)

Still, you will be able to do plenty of stuff with this base Python such as using lists, for loop, if, else, play with variables, some rudimentary calculations, etc.

Now, try getting the size of this whole installation. The size of this minimum Python installation is 100 MB.

![1547758833305](/img/python_install_nice_r/1547758833305.png)

## Install the packages for data science and engineering
Now, if we want to run data science and other petroleum engineering applications we need some extra libraries. 

These are the minimum libraries required for our purposes. Keep in mind that later we may need to add additional libraries, and what you are learning here will be applicable.

* NumPy, SciPy: linear algebra, matrices, arrays, etc.
* matplotlib, seaborn: plotting
* pandas: tables and dataframes
* PyQt: Qt graphics wrapper
* pywin32: Windows COM interface
* xlrd, xlsxwriter: read and write to Excel workbooks.

### Installing from the Windows terminal

We will install the Python libraries using the application `WinPython Command Prompt.exe`. Double-click on it. A terminal like this will open:

![1547761935787](/img/python_install_nice_r/1547761935787.png)

Copy the following text and paste in the terminal:
```
pip install pyqt5 numpy scipy matplotlib pandas xlrd pywin32 notebook seaborn xlsxwriter pyyaml
```
Press _Enter_ and wait few minutes for everything to install.

After the installation finishes you may close the terminal. We will start testing the libraries we just installed to verified everything works.

## Testing
For testing, we will be using a multiwell dataset of 25 wells. This dataset is originated by batch automation scripts using Prosper well models and OpenServer. We will cover this topic in another article. 

Testing, in this case, means verifying all the libraries were installed correctly before we start adding complexity to our Python environment.

### The multiwell dataset

This multiwell dataset is a table or dataframe, where each well is represented by a row, and a column represents a variable or feature. I have saved the dataset in Excel format but it easily could have been saved instead as a CSV file. This dataset can be found in the [python_playing_nice_with_r]() repository.  Download the file and save it under the folder `multiwell-python`, directly under `.\WPy-3710zero\notebooks`. You will have to create the folder beforehand. This how it should look.

![1547764133989](/img/python_install_nice_r/1547764133989.png)

You may want to examine very quick the dataset. Open it and you will find a table with 25 rows and 64 columns.

![](/img/python_install_nice_r/dataset_sample.png)

### Test Jupyter notebooks

* Execute the application `Jupyter Notebook.exe`.
* A Windows terminal will open and immediately after a browser window pointing to an local web server. Notice two folders: `docs` and `multiwell-python`, the one we just created and where we placed the multiwell dataset. Click on the multiwell folder. This is the screen you will see.

![](/img/python_install_nice_r/jupyter.png)

* Click on new and select `Python 3`, the first option in the _Notebook_ menu.
* Rename the notebook as `test dataset`. Jupyter automatically will add an extension `ipynb`.


### Test pandas, xlrd and xlsxwriter
* Enter the following code in the first chunk or cell of the notebook.

```python
import pandas as pd
import xlrd
import xlsxwriter
```

* Execute the chunk with the **`Run`** button. If the three libraries installed fine there should be no errors.
* Now it is time to read the dataset. We will use `pandas`. Enter the following code in the second chunk:

```
# read dataset

```


### Test numpy and scipy


### Test matplotlib and seaborn

### Test pywin32

### Test pyyaml

![](/img/python_install_nice_r/xyz.png)
