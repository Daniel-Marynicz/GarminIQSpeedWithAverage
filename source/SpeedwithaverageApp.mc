using Toybox.Application;
using Toybox.WatchUi;

class SpeedwithaverageApp extends Application.AppBase {

	protected var mianView;
	
    function initialize() {
        AppBase.initialize();
        mianView = new SpeedwithaverageView();
    }

    // onStart() is called on application start up
    function onStart(state) {
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    }

    //! Return the initial view of your application here
    function getInitialView() {
        return [ mianView ];
    }

	function onSettingsChanged()
    {
    	mianView.onSettingsChanged();
    	WatchUi.requestUpdate(); 
    }
}