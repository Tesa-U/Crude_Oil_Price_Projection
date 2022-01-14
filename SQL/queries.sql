-- Check the tables
SELECT * FROM Crude_Oil_Historical_Production;
SELECT * FROM Crude_Oil_Historical_Refinery_Utilization_EIA;
SELECT * FROM NYMEX_Crude_Oil_Historical_Futures_Prices;
SELECT * FROM WTI_Crude_SPOT_Prices_Historical_EIA;

-- Create a new table by joining all the tables 
SELECT hp."Date",
	hp."U.S. Field Production of Crude Oil (1k Bar.)",
    ru."Gross Inputs to Refineries (1k Bar./Day)",
	ru."Operable Crude Oil Distillation Capacity (1k Bar./Calendar Day)",
	ru."Operating Crude Oil Distillation Capacity (1k Bar./Day)",
	ru."Idle Crude Oil Distillation Capacity (1k Bar./Day)",
	ru."Percent Utilization of Refinery Operable Capacity",
    fp."Cushing, OK Crude Oil Future Contract 1 ($/Bar.)",
	fp."Cushing, OK Crude Oil Future Contract 2 ($/Bar.)",
	fp."Cushing, OK Crude Oil Future Contract 3 ($/Bar.)",
	fp."Cushing, OK Crude Oil Future Contract 4 ($/Bar.)",
    ph."Cushing, OK WTI Spot Price FOB ($/Bar.)"
INTO Cleaned_Crude_Oil_Dataset
FROM Crude_Oil_Historical_Production AS hp
	LEFT JOIN Crude_Oil_Historical_Refinery_Utilization_EIA AS ru
		ON (hp."Date" = ru."Date")
	LEFT JOIN NYMEX_Crude_Oil_Historical_Futures_Prices AS fp
		ON (hp."Date" = fp."Date")
	LEFT JOIN WTI_Crude_SPOT_Prices_Historical_EIA AS ph
		ON (hp."Date" = ph."Date")		
