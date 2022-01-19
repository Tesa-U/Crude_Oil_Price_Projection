# Crude_Oil_Price_Projection

GWU Data Analytics Boot Camp
Group F

## Resources
- Software:
   - Jupyter Notebook 6.4.6
      - Python
   - pgAdmin 4
      - PostgreSQL
   - [Quick DBD](https://www.quickdatabasediagrams.com/) 
   
- Data sources:
   - [U.S. Energy Information Administration (EIA)](https://www.eia.gov/)
      - [Crude Oil Production](https://www.eia.gov/dnav/pet/pet_crd_crpdn_adc_mbbl_m.htm)
      - [Refinery Utilization and Capacity](https://www.eia.gov/dnav/pet/pet_pnp_unc_dcu_nus_m.htm)
      - [NYMEX Futures Prices](https://www.eia.gov/dnav/pet/pet_pri_fut_s1_m.htm)
   - [Investing.com](https://www.investing.com/)
      - [WTI Crude SPOT Prices Historical](https://www.eia.gov/dnav/pet/pet_pri_spt_s1_m.htm)

## Business Case

Many industries, including shipping companies, oil producers, commodities traders, and banks rely heavily upon projections of oil prices to support their decision-making in today’s economy. However, with oil price volatility reaching all-time highs in the past ten years, and with the waning influence of OPEC on the world’s oil production, the task of generating consistent, accurate projections has become increasingly difficult. This has created a considerable opportunity for data scientists and machine learning engineers to apply their skillsets, as well as a demand for complex decision-support systems that firms can employ to navigate the unprecedented dynamics in today’s oil market.

## Project Proposal & Methods

For this project, we intend to develop a robust machine learning model that will deliver a one-year projection for the price of West Texas Intermediate (WTI) Crude Oil, one of the most well-known and widely produced blends of crude in the United States. To do so, we will be examining historical and current data from the Energy Information Agency (EIA), a federal agency that tracks production, sales, and spot & futures prices of WTI Crude. The price projection will be a function of oil production, refinery utilization and capacity, and sales. 
Initial parsing, cleaning and exploratory analysis of the data will be completed using Python’s Pandas library, with further analysis to be completed using Python. The data will be stored in a fully-integrated PostgresSQL database. Once the data is cleaned, stored, and split into training and testing sets, the model itself, developed using SciKit-Learn, will employ polynomial Support Vector Regression to generate a one-year projection of the weekly futures price of WTI Crude Oil. Visualizations of the model’s outputs and projections will be generated using Tableau, and the final presentation of this project will be displayed using Google Slides. 

