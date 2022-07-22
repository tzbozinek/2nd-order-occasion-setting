# 2nd-order-occasion-setting
 Zbozinek, Perez, Wise, Fanselow, & Mobbs. Pavlovian 2nd-order occasion setting experiments conducted in 2020.

Two Pavlovian 2nd-order occasion setting studies from 2020.


Computational Modeling:


Installation time should be < 30 minutes, depending on how much of this software you already have installed.
If you do not already have it, install Anaconda (https://www.anaconda.com/products/individual). This will provide much of the software needed to run our code. After installing Anaconda, open it. Enter the following code into your terminal. To do so, launch a terminal and enter the code below one by one. You may launch a terminal by opening Anaconda, launching CMD.exe Prompt, then entering the code below. Note: to run WAIC successfully, use arviz version 0.6.1.

conda install mkl mkl-service m2w64-toolchain libpython 

conda install Theano 

conda install m2w64-toolchain 

pip install Theano 

pip install arviz==0.6.1 

conda install pymc3

These are the versions of software and packages used by the authors: 

Anaconda Navigator 1.9.12 

conda 4.9.0 

CPython 3.8.5 

IPython 7.18.1 

jupyterlab 2.2.6 

numpy 1.19.1 

pandas 1.1.1 

theano 1.0.4 

pymc3 3.8 

seaborn 0.11.0 

matplotlib 3.3.1

To open our code, open Anaconda, and launch CMD.exe. When the terminal window opens, type "jupyter lab". This will open Jupyter Lab, which is where we run our code. When you are in Jupyter Lab, open our modeling code. There are some comments in the code for items you may decide to activate/deactivate (i.e., changing the alpha parameter from being either randomized or equal to 1). Otherwise, the code is ready to run. Depending on model complexity and your computer's processing power, this code can take a few hours to run (e.g., the Experiment_2_2nd-Order_OS code took us about 9 hours to run with the real data).

We conducted these tests using Windows 10 64 bit.

We have included Jupyter notebooks of each of the models run across both experiments. The data showed that the 2nd-order occasion setting models provided the best model fit across both experiments.

For each model, you can expect the output files to go to the "output" folder. Each file will generate several csv files (e.g., Simulated vs Recovered Data, parameter values, WAIC values, R2 values) and .svg image/vector files (we use Inkscape to view these; Individual and Estimated Responding plots and Simulated vs Recovered plots). Also, there will likely be very slight differences in the results you obtain from our published results due to slight randomness when running variational inference with the models (i.e., differing random seeds). These differences are extremely minor and do not affect the interpretation of the results.


Inferential Statistics:


We conducted our analyses using Stata 15.1. Included is our data in Stata's .dta format, as well as the Do file, which contains the syntax for running our analyses. Additionally, we included .csv files, which can be used or imported with any statistics software. If you run the code in Stata, you can expect output of the statistical values shared in detail in our supplemental materials. This should take seconds to run each analysis.

Figures:

Some stimuli in specific phases had fewer trials than other stimuli (e.g., B-, C-, and BC+ had half as many trials as ABC- during Reminder 1). In order to cleanly visualize the data in Figure 3, we linearly interpolated data points for stimuli that had fewer trials. This was done just for visualization purposes (i.e., to make the line graphs have continuous lines); this interpolation was not used in data analysis. Data analysis only included the real data that was collected. We also included the Excel workbooks for other figures.

