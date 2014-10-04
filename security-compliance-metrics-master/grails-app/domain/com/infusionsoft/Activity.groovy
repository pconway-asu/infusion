package com.infusionsoft

class Activity {
	int activityId; 
	int iniativeID; //each activity will match with an initative 
	String externalName; //external name 
	String shortName; //internal name
	String bsimDiscription; 
	String internalDiscription; //optional internal info on the activity 
	int bsimLevel; //static BSIM level should not be changed
	String ownerName; 
	String metricsRunTime; //this may be a cron expression or some other form of date so I went with string for now. 
	String metricsURL; //URL used to call data 
	String metricsData; //percentage of the activity completed, will be updated by the URL call and/or manual entry
	boolean manualOverride = false; //becomes true if user manually enters data - must be a check box  

}
