package com.infusionsoft

class ActivityMetrics {
	int activityId;
	int externalSourceValue; //BSIM data
	int manualOverrideValue; //Infusionsoft Data
	Date metricsRunDate; //Date and time that the metrics were ran
	boolean useManual = false; //was data manually entered
	String editor = "name"; //who ran or entered the data
	/* this is just my initial understanding of the variables needed*/

}
