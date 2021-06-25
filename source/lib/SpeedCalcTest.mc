
using Toybox.System;
using Toybox.Test;

class SpeedCalcTest {

	(:test)
	function computeSpeedTest(logger)
	{
		var speedMetric = new SpeedCalc(System.UNIT_METRIC);
		
		
		Test.assertEqual(speedMetric.computeSpeed(0.277777777777778f), 1f);
		Test.assertEqual(speedMetric.computeSpeed(0.555555555555556f), 2f);
		Test.assertEqual(speedMetric.computeSpeed(0.833333333333333f), 3f);
		Test.assertEqual(speedMetric.computeSpeed(1.11111111111111f), 4f);
		Test.assertEqual(speedMetric.computeSpeed(1.38888888888889f), 5f);
		Test.assertEqual(speedMetric.computeSpeed(1.66666666666667f), 6f);
		Test.assertEqual(speedMetric.computeSpeed(1.94444444444444f), 7f);
		Test.assertEqual(speedMetric.computeSpeed(2.22222222222222f), 8f);
		Test.assertEqual(speedMetric.computeSpeed(2.5f), 9f);
		Test.assertEqual(speedMetric.computeSpeed(2.77777777777778f), 10f);
		Test.assertEqual(speedMetric.computeSpeed(3.05555555555556f), 11f);
		Test.assertEqual(speedMetric.computeSpeed(3.33333333333333f), 12f);
		Test.assertEqual(speedMetric.computeSpeed(3.61111111111111f), 13f);
		Test.assertEqual(speedMetric.computeSpeed(3.88888888888889f), 14f);
		Test.assertEqual(speedMetric.computeSpeed(4.16666666666667f), 15f);
		Test.assertEqual(speedMetric.computeSpeed(4.44444444444444f), 16f);
		Test.assertEqual(speedMetric.computeSpeed(4.72222222222222f), 17f);
		Test.assertEqual(speedMetric.computeSpeed(5f), 18f);
		Test.assertEqual(speedMetric.computeSpeed(5.27777777777778f), 19f);
		Test.assertEqual(speedMetric.computeSpeed(5.55555555555556f), 20f);
		Test.assertEqual(speedMetric.computeSpeed(5.83333333333333f), 21f);
		Test.assertEqual(speedMetric.computeSpeed(6.11111111111111f), 22f);
		Test.assertEqual(speedMetric.computeSpeed(6.38888888888889f), 23f);
		Test.assertEqual(speedMetric.computeSpeed(6.66666666666667f), 24f);
		Test.assertEqual(speedMetric.computeSpeed(6.94444444444445f), 25f);
		Test.assertEqual(speedMetric.computeSpeed(7.22222222222222f), 26f);
		Test.assertEqual(speedMetric.computeSpeed(7.5f), 27f);
		Test.assertEqual(speedMetric.computeSpeed(7.77777777777778f), 28f);
		Test.assertEqual(speedMetric.computeSpeed(8.05555555555556f), 29f);
		Test.assertEqual(speedMetric.computeSpeed(8.33333333333333f), 30f);
		Test.assertEqual(speedMetric.computeSpeed(8.61111111111111f), 31f);
		Test.assertEqual(speedMetric.computeSpeed(8.88888888888889f), 32f);
		Test.assertEqual(speedMetric.computeSpeed(9.16666666666667f), 33f);
		Test.assertEqual(speedMetric.computeSpeed(9.44444444444445f), 34f);
		Test.assertEqual(speedMetric.computeSpeed(9.72222222222222f), 35f);
		Test.assertEqual(speedMetric.computeSpeed(10f), 36f);
		Test.assertEqual(speedMetric.computeSpeed(11f), 39.6f);
		Test.assertEqual(speedMetric.computeSpeed(10f), 36f);
		Test.assertEqual(speedMetric.computeSpeed(11f), 39.6f);
		Test.assertEqual(speedMetric.computeSpeed(12f), 43.2f);
		Test.assertEqual(speedMetric.computeSpeed(13f), 46.8f);
		Test.assertEqual(speedMetric.computeSpeed(14f), 50.4f);
		Test.assertEqual(speedMetric.computeSpeed(15f), 54f);
		Test.assertEqual(speedMetric.computeSpeed(16f), 57.6f);
		Test.assertEqual(speedMetric.computeSpeed(17f), 61.2f);
		Test.assertEqual(speedMetric.computeSpeed(18f), 64.8f);
		Test.assertEqual(speedMetric.computeSpeed(19f), 68.4f);
		Test.assertEqual(speedMetric.computeSpeed(20f), 72f);
		Test.assertEqual(speedMetric.computeSpeed(21f), 75.6f);
		Test.assertEqual(speedMetric.computeSpeed(22f), 79.2f);
		Test.assertEqual(speedMetric.computeSpeed(23f), 82.8f);
		Test.assertEqual(speedMetric.computeSpeed(24f), 86.4f);

		var speedStatue = new SpeedCalc(System.UNIT_STATUTE);
		
		Test.assertEqual(speedStatue.computeSpeed(0.44704f), 1f);
		Test.assertEqual(speedStatue.computeSpeed(0.89408f), 2f);
		Test.assertEqual(speedStatue.computeSpeed(1.34112f), 3f);
		Test.assertEqual(speedStatue.computeSpeed(1.78816f), 4f);
		Test.assertEqual(speedStatue.computeSpeed(2.2352f), 5f);
		Test.assertEqual(speedStatue.computeSpeed(2.68224f), 6f);
		Test.assertEqual(speedStatue.computeSpeed(3.57632f), 8f);
		Test.assertEqual(speedStatue.computeSpeed(4.02336f), 9f);
		Test.assertEqual(speedStatue.computeSpeed(4.4704f), 10f);
		Test.assertEqual(speedStatue.computeSpeed(4.91744f), 11f);
		Test.assertEqual(speedStatue.computeSpeed(5.36448f), 12f);
		Test.assertEqual(speedStatue.computeSpeed(5.81152f), 13f);
		Test.assertEqual(speedStatue.computeSpeed(6.7056f), 15f);
		Test.assertEqual(speedStatue.computeSpeed(7.15264f), 16f);
		Test.assertEqual(speedStatue.computeSpeed(7.59968f), 17f);
		Test.assertEqual(speedStatue.computeSpeed(8.04672f), 18f);
		Test.assertEqual(speedStatue.computeSpeed(8.49376f), 19f);
		Test.assertEqual(speedStatue.computeSpeed(8.9408f), 20f);
		Test.assertEqual(speedStatue.computeSpeed(9.83488f), 22f);
		Test.assertEqual(speedStatue.computeSpeed(10.72896f), 24f);
		Test.assertEqual(speedStatue.computeSpeed(11.176f), 25f);
		Test.assertEqual(speedStatue.computeSpeed(11.62304f), 26f);
		Test.assertEqual(speedStatue.computeSpeed(12.07008f), 27f);
		Test.assertEqual(speedStatue.computeSpeed(12.96416f), 29f);
		Test.assertEqual(speedStatue.computeSpeed(13.4112f), 30f);
		
		Test.assertEqual(speedStatue.computeSpeed(2.01168f), 4.5f);		
		Test.assertEqual(speedStatue.computeSpeed(2.90576f), 6.5f);	
		Test.assertEqual(speedStatue.computeSpeed(14.841728f), 33.2f);	

		return true;
	}

}
