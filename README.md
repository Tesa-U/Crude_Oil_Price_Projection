# Crude Oil Price Projection
### GWU Data Analytics Boot Camp

   ![plot](./Images/header_crudeoil.jpg)

### Our Team:

[Siyada Harker](https://github.com/SYDsCorner), 

[Stephan Weir](https://github.com/SteveWeir),

[Tsaschiker Ulziibadrakh](https://github.com/Tesa-U)


### Roles:

- **Data Source Research, Data Cleaning, and Database Storage**
   - **Siyada** (Cleaning & Storage)
   - **Stephan** (Data Source Research)

- **Machine Learning**
   - **Stephan**
      - Prophet
      - LSTM (Keras/TensorFlow)
      - ARIMA
   - **Siyada** 
      - [Random Forest Regressor algorithm](https://github.com/SYDsCorner/Crude_Oil_Price_Projection/blob/Siyada_Harker/Machine%20Learning/Random_Forest.ipynb)

- **Dashboard**
   - **Tesa** (Tableau)
   - **Siyada** (HTML/CSS, GitHub Pages)

- **GitHub Repository & Slides**
   - **Tesa** 
   - **Siyada**
   - **Stephan**


<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p> 


### Software:
- **Data Cleaning** 
   - Jupyter Notebook 6.4.6
      - Python (ETL process)
         - Pandas library
   - [Quick DBD](https://www.quickdatabasediagrams.com/) (Create ERDs)
   - PostgreSQL (Join/Merge datasets)

- **Database Storage**
   - pgAdmin 4
      - PostgreSQL
   - [Google Cloud Platform](https://cloud.google.com/) (GCP): [Link Here](https://storage.googleapis.com/crude_oil_projection/Cleaned_Crude_Oil_Dataset.csv) 

- **Machine Learning**
   - Jupyter Notebook or [Google Colaboratory](https://colab.research.google.com/notebooks/welcome.ipynb) (Google Colab Notebook)
      - Python
         - Scikit-learn library
            - Prophet
            - LSTM (Keras/TensorFlow)
            - ARIMA
            - Random Forest Regressor algorithm

- **Dashboard**
   - Tableau Public 2021.3.3
   - Visual Studio Code 1.63.2
      - HTML/CSS
   - GitHub Pages
   
- **Slides**
   - Google Slides
   
<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p> 

## Project Proposal 

For this project, we intend to develop a robust machine learning model that will deliver a one-year projection for the price of West Texas Intermediate (WTI) Crude Oil, one of the most well-known and widely produced blends of crude in the United States. To do so, we will be examining historical and current data from the Energy Information Agency (EIA), a federal agency that tracks production, sales, and spot & futures prices of WTI Crude. The price projection will be a function of oil production, refinery utilization and capacity, sales, and a variety of other indicators provided by the Energy Information Agency (EIA). We will test four different machine learning methods in order to determine the best fit for this task, shown below:
-Random Forest Regression
-ARIMA
-Prophet
LSTM RNN (Recurrent Neural Network)

## Business Case

Many industries, including shipping companies, oil producers, commodities traders, and banks rely heavily upon projections of oil prices to support their decision-making in today’s economy. However, with oil price volatility reaching all-time highs in the past ten years, and with the waning influence of OPEC on the world’s oil production, the task of generating consistent, accurate projections has become increasingly difficult. This has created a considerable opportunity for data scientists and machine learning engineers to apply their skillsets, as well as a demand for complex decision-support systems that firms can employ to navigate the unprecedented dynamics in today’s oil market.


<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p> 



## Questions the team hopes to answer

- Where will the data be sourced from?

- How will the data be data be transformed and stored?

- Which machine learning models and libraries should be used?

- How will the results be visualized? 

- Which model produces the most accurate projections for WTI?



<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p> 


### Resources:
- Gathering data from [**U.S. Energy Information Administration (EIA)**](https://www.eia.gov/)
   - [**Crude Oil Production**](https://www.eia.gov/dnav/pet/pet_crd_crpdn_adc_mbbl_m.htm) dataset
      > The volume of crude oil produced from oil reservoirs during given periods of time. The amount of such production for a given period is measured as volumes delivered from
        lease storage tanks (i.e., the point of custody transfer) to pipelines, trucks, or other media for transport to refineries or terminals with adjustments for (1) net  
        differences between opening and closing lease inventories, and (2) basic sediment and water (BS&W).
     
   - [**Product Supplied**](https://www.eia.gov/dnav/pet/pet_cons_psup_dc_nus_mbbl_m.htm) dataset
      > Approximately represents consumption of petroleum products because it measures the disappearance of these products from primary sources, i.e., refineries, natural 
        gas-processing plants, blending plants, pipelines, and bulk terminals. In general, Product Supplied of each product in any given period is computed as follows:
        Product supplied = field production + refinery production + imports + unaccounted for crude oil (+ net receipts when calculated on a PAD District basis) - stock change -
        crude oil losses - refinery inputs - exports

   - [**Refinery Utilization and Capacity**](https://www.eia.gov/dnav/pet/pet_pnp_unc_dcu_nus_m.htm) dataset
      > Ratio of the total amount of crude oil, unfinished oils, and natural gas plant liquids run through crude oil distillation units to the operable capacity of these units.

   - [**NYMEX Futures Prices**](https://www.eia.gov/dnav/pet/pet_pri_fut_s1_d.htm) dataset
      > New York Mercantile Exchange, The price quoted for delivering a specified quantity of a commodity at a specified time and place in the future.

   - [**WTI Crude SPOT Prices Historical**](https://www.eia.gov/dnav/pet/pet_pri_spt_s1_d.htm) dataset
      > West Texas Intermediate, The price for a one-time open market transaction for immediate delivery of a specific quantity of product at a specific location where the
        commodity is purchased "on the spot" at current market rates.


<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p> 


## ETL Process (Extract, Transform, Load)
### 1. Extract : 
- There are 5 datasets stored as CSV files
   - **Crude Oil Production**
      - Area: U.S.
      - Period-Unit: Monthly-Thousand Barrels
      - Date: Jan-1920 to Oct-2021
   - **Product Supplied**
      - Area: U.S.
      - Period-Unit: Monthly-Thousand Barrels
      - Date: Jan-1936 to Oct-2021
   - **Refinery Utilization and Capacity**
      - Area: U.S.
      - Period: Monthly
      - Date: Jan-1985 to Oct-2021
   - **NYMEX Futures Prices**
      - Area: U.S.
      - Period: Daily
      - Date: Mar 30, 1983 to Jan 11, 2022
   - **WTI Crude SPOT Prices Historical**
      - Area: U.S.
      - Period: Daily
      - Date: 1/10/2022 to 1/2/1986

### 2. Transform : 
- Create a DataFrame with the columns that we want to keep or Drop unnecessary columns
- Rename the columns by assigning a list of new column names
- Drop the null values using `dropna()` method
- Convert Data types on "Date" column using `to_datetime` method
- Sort ascending order on "Date" column in the _WTI Crude SPOT Prices Historical_ DataFrame using `sort_values` method
- Filter on "Date" column of all DataFrames between _(1986-01-01 & 2021-10-31)_
- Calculate the average for each month and year in the _NYMEX Futures Prices_ and _the WTI Crude SPOT Prices Historical_ DataFrames
- Round to specific decimals places 
- Convert the "Date" column to datetime _(in abbreviated Month-Year or mmm-yyyy format)_ using `strftime("%b-%Y")` method
- Join/Merge datasets using ***PostgreSQL***
    ![plot](./Images/Join_Datasets_SQL.png)


### 3. Load :
- Connect Pandas and SQL: using Pandas `to_sql` method paired with ***sqlAlchemy***
   ![plot](./Images/Connection2SQL.png)


<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p> 


## SQL Database

### Database Schema ERD

![plot](./Images/ERDs_model.png)

### Data Dictionary

![plot](./Images/Data_Dictionary.png)

### Definitions and Explanatory Notes


![plot](./Images/Definitions_Notes.png)


<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p>



## Machine Learning

### Random Forest Regressor
![Rd_fr](https://user-images.githubusercontent.com/85244439/153282064-9e20b3c3-5fe4-4933-a29e-696f9e5e97d6.jpg)![rf_visual](https://user-images.githubusercontent.com/85244439/153282071-5e8119f5-0b3b-476b-ac60-77f6275b44e5.jpg)![rf_rank](https://user-images.githubusercontent.com/85244439/153282115-b6b96b80-b3f3-4c63-8667-f75706762f56.jpg)

![rf_rank](https://user-images.githubusercontent.com/85244439/153282065-1c5dbef5-d80c-4d96-be86-955e1fc27fbc.jpg)

![rf_visual](https://user-images.githubusercontent.com/85244439/153282108-74b66edd-2f71-4a8c-a1b4-9b5b48309d45.jpg)

### ARIMA
   -AutoRegressive Integrated Moving Average
      -(AR) Regresses target variable on its own prior values. 
         -lag parameter = p
      -(I) Uses differences between observations and their prior values to attempt to make data stationary 
         -differencing parameter = d
      -(MA) Accounts for a moving average of lagged observations
         -Moving average window size = q
   -Advantages: 
      -Easy to use when analyzing and creating projections for time-series data
   -Drawbacks:
      -Potentially ineffective in analyzing data with a non-stationary mean (unit root)
      -Extremely sensitive to large shocks

#### ARIMA Model Structure

#### ARIMA Model Output
![ArimaOutput](https://user-images.githubusercontent.com/85244439/153279081-fa6c7a89-3069-4562-987c-bf8d542f1706.PNG)

![metrics](https://user-images.githubusercontent.com/85244439/153279157-d26bbf63-82b2-40d6-8aa2-2752b6924688.PNG)

### Long Short-Term Memory (LSTM)
   - Recurrent Neural Network (RNN)
      - Addresses the issue of ‘vanishing gradients’ in neural networks with its gate structure
         -Multi-layer networks using certain activation functions experience gradient decay in the loss function, making them harder to train
   - Drawbacks: 
      - Longer model runtime
      - Prone to overfitting, especially as depth is added to model 

#### LSTM Cell Structure
   - Forget Gate: Decides which prior inputs are pertinent to the model, and which should be ignored.
   - Input Gate: Determines which relevant information can be added from the current step 
   - Cell State: The path along which information is transported between gates.
   - Output Gate: Determines the value of the next hidden state, based on information from input gate and the hidden state. 
   - Activation Functions: Regulate data in the network, aid in determining if data should be updated or forgotten.
![lstm structure](https://user-images.githubusercontent.com/85244439/153280136-9743aa04-a667-4a64-bf7a-59f7ced57b93.PNG)
#### Multi-Layer LSTM Model
![ModelStructure1](https://user-images.githubusercontent.com/85244439/153280246-e6933827-2e32-4b87-b096-240fca40e2c0.PNG)
![ModelStructure2](https://user-images.githubusercontent.com/85244439/153280294-7410a1fa-eaaa-4aa7-90b0-52ee28831875.PNG)
#### LSTM Output
![Results](https://user-images.githubusercontent.com/85244439/153280322-2f61cc30-b42a-4cc7-b37b-dd88b317af9d.PNG)

### Prophet
   -Developed by Facebook/Meta
      - Additive Regression Model 
         - Includes seasonality component using a Fourier Series: expansion of a periodic function 
            - Allows the model to more easily account for recurring trends in time series datasets
   - Drawbacks: 
      - Relatively ‘simplistic’ architecture, features limited when compared to other multivariate models
![model build](https://user-images.githubusercontent.com/85244439/153281677-13213ef6-2a21-4c99-a6c5-675a38557e7d.PNG)
![Results_logtransformed](https://user-images.githubusercontent.com/85244439/153281693-fac309f1-beaa-4ead-afbb-1c5097b3222f.PNG)
![Results_originalValues](https://user-images.githubusercontent.com/85244439/153281729-94a7195c-fc9d-431b-8287-4e57140f9e5c.PNG)
![accuracy measure](https://user-images.githubusercontent.com/85244439/153281735-662fdf8c-2636-487a-a2e2-51460fd20d20.PNG)

## 


<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p> 




## Dashboard

> Our Tableau Dashboard has four pages where each dispays detailed visualization of WTI Crude Oil Field Production, Product Supplied of Crude Oil, Petrolium Products, and Future Price analysis.

Here is the sneak peak of the Dashboard: 

<img width="1152" alt="home copy" src="https://user-images.githubusercontent.com/89105793/153109409-f72181cd-7010-4c18-8fa9-c8a7254a427c.png">

<img width="1152" alt="price copy" src="https://user-images.githubusercontent.com/89105793/153109415-0b1156ea-5f2c-47a1-a423-dd25293df4c5.png">

Here is the link to complete Dashboard: 
> [Link to Tableau Dashboards](https://public.tableau.com/app/profile/tesa3667/viz/CrudeOilPricePrediction/HomeDashboard)


## GitHub Pages

> [Link to GitHub Pages](https://sydscorner.github.io/Crude_Oil_Price_Projection/Templates/index.html)




## Google Slides

[![Slides](https://user-images.githubusercontent.com/89308251/153271619-7429a271-7ab1-4794-8dee-6e9e459fefa3.png)](https://docs.google.com/presentation/d/1lXZA4CR_A27Tfosn4hWl1wO1cqKca4x_WgnOeGEY38w/edit?usp=sharing)

> [Link to Google Slides](https://docs.google.com/presentation/d/1lXZA4CR_A27Tfosn4hWl1wO1cqKca4x_WgnOeGEY38w/edit?usp=sharing)


<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p> 


## Results

![Results](https://user-images.githubusercontent.com/89308251/153275177-8e88446b-14fe-4496-a163-3e1527d4f227.png)



<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p> 



## Summary

-In conclusion, our results indicate that Prophet yields the highest accuracy score for forecasting WTI Crude Oil futures, based on the MAPE scores. 
- While further improvements can certainly be made to all of these models, Prophet offers an intuitive, user-friendly forecasting platform that boasts impressive accuracy,       given its simplicity. 
- Random Forest Regressors, particularly when tuned to account for only the most important variables, also serve as a powerful forecasting tool when applied to WTI pricing.
- ARIMA struggles to efficiently cope with the volatility of recent Crude pricing data, as seen in the forecast graph. While the ARIMA calculates a relatively acceptable MAPE,   the trend line does not cope well during periods of high price volatility.
- LSTM models have high potential for accurate modeling of financial data, but it appears that the hyperparameters of the model would require extensive tuning in order to be     improved.
   - Might also benefit from a larger dataset



### Recommendation for future analysis

- Use of weekly or daily data
   - Possible increase in model accuracy, at the cost of:
      - Increased runtime
      - Increased potential for model overfitting 
- Inclusion of pricing data for historically-correlated asset classes (USD, Gold, etc)
   - Caution: in recent years, some of these correlations have shifted
- Inclusion of global oil demand figures, not just product from domestic suppliers

### Anything the team would have done differently

#### For data:
- There are several influences on oil prices
   - We could have explored additional data types, such as
      - Weather patterns
      - Natural disasters
      - Political Instability
      - Military Conflicts
      - Correlated financial instruments
      
#### For Machine Learning:
- Further exploration of different model types
   - VARMA (Vector AutoRegressive Moving Average with differencing)
      - Multivariate iteration of ARIMA
   - LSTM encoder-decoder Model (interprets data sequence-by-sequence)
- Extrapolation of projections beyond the constraints of the time series
   - Considerable scarcity of publicly-available examples/recommendations of how this is accomplished, especially in the case of multivariate, multi-step models
- Deeper understanding of hyperparameter tuning for more complex models
   - Would assist in the improvement of model accuracy

#### For Dashboard:

- Explore more datasets from various sources and include more categorical data for calculation and visualization.

<p align="center">
  <img width="551" height="73" src="https://user-images.githubusercontent.com/89308251/151103065-7494f6de-fba9-48c0-869d-b976829a1860.png">
</p> 


