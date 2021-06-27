using Toybox.Test;
using Toybox.Activity;

(:test)
class SpeedwithaverageViewMock extends SpeedwithaverageView
{
	function initialize() {
		SpeedwithaverageView.initialize();
	}
	
	function setSpeedCalc(calc)
	{
		speedCalc = calc;
	}
	
		
	function getBottomRightValue()
	{
		return bottomRightValue;
	}
	
	function getMainValue()
	{
		return mainValue;
	}
	
}

(:test)
class SpeedCalcMock 
{
	private var speed;
	
	function setSpeed(spd)
	{
		speed = spd;
	}
	
	function computeSpeed(spd)
	{
		return speed;
	}
	
}

(:test)
class ActivityMock {
	public var currentSpeed;
	
	public var averageSpeed;
	
	function initialize(speed, avgSpeed) {
        currentSpeed = speed;
        averageSpeed = avgSpeed;
    }
}

(:test)
class SpeedwithaverageViewTest
{
	(:test)
	function computeTest(logger)
	{
	
		var view = new SpeedwithaverageViewMock();
		var speedCalc = new SpeedCalcMock();
		
		view.setSpeedCalc(speedCalc);
		

		Test.assertEqual(view.getMainValue(), "");
		Test.assertEqual(view.getBottomRightValue(), "");
		
		view.compute({});
		
		Test.assertEqual(view.getMainValue(), "__._");
		Test.assertEqual(view.getBottomRightValue(), "__._");
		
		speedCalc.setSpeed(12.3);
		view.compute(new ActivityMock(123, 432));
		
		
		Test.assertEqual(view.getMainValue(), "12.3");
		Test.assertEqual(view.getBottomRightValue(), "12.3");
		
		return true;

	}
}