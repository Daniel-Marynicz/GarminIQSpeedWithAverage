using Toybox.WatchUi;
using Toybox.Graphics;
using Toybox.System;

class SpeedwithaverageView extends DataFieldWithFiveValuesView {

	var distanceUnits;
	const oneMileAsMSec = 1.toFloat()/0.44704.toFloat();
    function initialize() {
        DataFieldWithFiveValuesView.initialize();
		
		distanceUnits = 0;
        var settings = System.getDeviceSettings();
     	if(settings has :distanceUnits && settings.distanceUnits != null) {
     		distanceUnits = settings.distanceUnits;
     	}
     	switch (distanceUnits) {
     		case System.UNIT_STATUTE:
     			labelValue = Rez.Strings.labelMPH;
 				break;
 			case System.UNIT_METRIC:
     		default:
     			labelValue = Rez.Strings.labelKPH;
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
        	speed = computeSpeed(info.currentSpeed);
    		mainValue = speed.format("%.1f");
        }
        if(info has :averageSpeed && info.averageSpeed != null) {
        	avgSpeed = computeSpeed(info.averageSpeed);
        	bottomRightValue = avgSpeed.format("%.1f");
        }
    }
    
    function computeSpeed(speedAsMps) {
    	switch (distanceUnits) {
    		case System.UNIT_STATUTE:
     			return speedAsMps.toFloat() * oneMileAsMSec.toFloat();
 			case System.UNIT_METRIC:
 				return speedAsMps.toFloat() * 18.toFloat() / 5.toFloat();
 			default:
     			return speedAsMps.toFloat() * 18.toFloat() / 5.toFloat();
     		
     	}
    }
}
