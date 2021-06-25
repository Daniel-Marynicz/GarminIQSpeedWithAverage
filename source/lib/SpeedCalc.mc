using Toybox.System;


class SpeedCalc {

	const oneMileAsMSec = 1.toFloat()/0.44704.toFloat();
	
	private var distanceUnits;
	
	function initialize(units) {
		distanceUnits = units;
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
