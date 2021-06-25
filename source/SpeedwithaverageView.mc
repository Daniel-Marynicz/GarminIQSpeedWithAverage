using Toybox.WatchUi;
using Toybox.Graphics;
using Toybox.System;

class SpeedwithaverageView extends DataFieldWithFiveValuesView {

	var speedCalc; 

    function initialize() {
        DataFieldWithFiveValuesView.initialize();
		
		var distanceUnits = 0;
        var settings = System.getDeviceSettings();
     	if(settings has :distanceUnits && settings.distanceUnits != null) {
     		distanceUnits = settings.distanceUnits;
     	}
     	switch (distanceUnits) {
     		case System.UNIT_STATUTE:
     			labelValue = Rez.Strings.labelMPH;
     			speedCalc = new SpeedCalc(System.UNIT_STATUTE);
 				break;
 			case System.UNIT_METRIC:
     		default:
     			labelValue = Rez.Strings.labelKPH;
     			speedCalc  = new SpeedCalc(System.UNIT_METRIC);
 				break;
     	}
    }


    // The given info object contains all the current workout information.
    // Calculate a value and save it locally in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info) {
    	var speed;
    	var avgSpeed;
    	
        mainValue = "__._";
        bottomRightValue = "__._";
        // See Activity.Info in the documentation for available information.
        if(info has :currentSpeed && info.currentSpeed != null) {
        	speed = speedCalc.computeSpeed(info.currentSpeed);
    		mainValue = speed.format("%.1f");
        }
        if(info has :averageSpeed && info.averageSpeed != null) {
        	avgSpeed = speedCalc.computeSpeed(info.averageSpeed);
        	bottomRightValue = avgSpeed.format("%.1f");
        }
    }
}
