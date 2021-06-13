using Toybox.WatchUi;
using Toybox.Graphics;

class SpeedwithaverageView extends DataFieldWithFiveValuesView {

    function initialize() {
        DataFieldWithFiveValuesView.initialize();
        labelValue = Rez.Strings.labelKPH;

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
        	speed = computeSpeedAsKmph(info.currentSpeed);
    		mainValue = speed.format("%.1f");
        }
        if(info has :averageSpeed && info.averageSpeed != null) {
        	avgSpeed = computeSpeedAsKmph(info.averageSpeed);
        	bottomRightValue = avgSpeed.format("%.1f");
        }
    }
    
    function computeSpeedAsKmph(speedAsMps) {
    	return speedAsMps.toFloat() * 18.toFloat() / 5.toFloat();
    }
    
}

