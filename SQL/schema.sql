-- Create the Crude Oil Historical Production EIA table
CREATE TABLE Crude_Oil_Historical_Production (
	"Date" VARCHAR(8) NOT NULL,
	"U.S. Field Production of Crude Oil (1k Bar.)" FLOAT NOT NULL,
	PRIMARY KEY ("Date")
);

-- Create the Crude Oil Historical Refinery Utilization EIA table
CREATE TABLE Crude_Oil_Historical_Refinery_Utilization_EIA (
	"Date" VARCHAR(8) NOT NULL,
    "Gross Inputs to Refineries (1k Bar./Day)" FLOAT NOT NULL,
    "Operable Crude Oil Distillation Capacity (1k Bar./Calendar Day)" FLOAT NOT NULL,
    "Operating Crude Oil Distillation Capacity (1k Bar./Day)" FLOAT NOT NULL,
    "Idle Crude Oil Distillation Capacity (1k Bar./Day)" FLOAT NOT NULL,
    "Percent Utilization of Refinery Operable Capacity" FLOAT NOT NULL,
	FOREIGN KEY ("Date") REFERENCES Crude_Oil_Historical_Production ("Date")
);

-- Create the NYMEX Crude Oil Historical Futures Prices table
CREATE TABLE NYMEX_Crude_Oil_Historical_Futures_Prices (
	"Date" VARCHAR(8) NOT NULL,
    "Cushing, OK Crude Oil Future Contract 1 ($/Bar.)" FLOAT NOT NULL,
    "Cushing, OK Crude Oil Future Contract 2 ($/Bar.)" FLOAT NOT NULL,
    "Cushing, OK Crude Oil Future Contract 3 ($/Bar.)" FLOAT NOT NULL,
    "Cushing, OK Crude Oil Future Contract 4 ($/Bar.)" FLOAT NOT NULL,
	FOREIGN KEY ("Date") REFERENCES Crude_Oil_Historical_Production ("Date")
);

-- Create the WTI Crude SPOT Prices Historical EIA table
CREATE TABLE WTI_Crude_SPOT_Prices_Historical_EIA (
	"Date" VARCHAR(8) NOT NULL,
  	"Cushing, OK WTI Spot Price FOB ($/Bar.)" FLOAT NOT NULL,
	FOREIGN KEY ("Date") REFERENCES Crude_Oil_Historical_Production ("Date")
);

