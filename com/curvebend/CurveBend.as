/*
 Facade: CurveBend
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend 
{
	import com.curvebend.core.controller.CInitialize;
	import com.curvebend.core.controller.CStartup;
	import com.curvebend.core.view.components.ApplicationView;
	import com.curvebend.curves.controller.CAddCurve;
	import com.curvebend.curves.controller.CAddPoint;
	import com.curvebend.curves.controller.CCreateCurve;
	import com.curvebend.ui.core.controller.CSelectCanvas;
	import com.curvebend.ui.panels.controller.CCreatePanels;
	import org.puremvc.as3.multicore.interfaces.IFacade;
	import org.puremvc.as3.multicore.patterns.facade.Facade;
	
	/**
	 * CurveBend ApplicationFacade. Registers commands and provides a
	 * method (startup()) to startup the Application. Expects a reference to
	 * the ApplicationView to be passed in the start() constructor.
	 */
	public class CurveBend extends Facade implements IFacade 
	{
		// Application details
		public static const NAME:String 					= "CurveBend";
		public static const VERSION:String					= "0.0.9";
		
		
		
        
		// FLOW
		// =========================================================================================
		
		/**
		 * Application startup.
		 */
		public static const STARTUP:String					= "Startup";
		
		/**
		 * Application startup.
		 */
		public static const INITIALIZE:String				= "Initialize";
		
		/**
		 * Creates UI Panels.
		 */
		public static const CREATE_PANELS:String			= "CreatePanels";
		
		
        
		
		// UI OPERATIONS
		// =========================================================================================
		
		/**
		 * Selects a canvas.
		 */
		public static const SELECT_CANVAS:String			= "SelectCanvas";
		
		
        
		
		// UI RESPONSES
		// =========================================================================================
		
		/**
		 * A canvas has been selected.
		 */
		public static const CANVAS_SELECTED:String			= "CanvasSelected";
		
        
		
		
		// CURVE OPERATIONS
		// =========================================================================================
		
		/**
		 * Creates a curve.
		 */
		public static const CREATE_CURVE:String				= "CreateCurve";
		
		/**
		 * Deletes a curve.
		 */
		public static const DELETE_CURVE:String				= "DeleteCurve";
		
		/**
		 * Adds a curve.
		 */
		public static const ADD_CURVE:String				= "AddCurve";
		
		/**
		 * Adds a curve.
		 */
		public static const ADD_POINT:String				= "AddPoint";
		
		/**
		 * Removes a point.
		 */
		public static const REMOVE_POINT:String				= "RemovePoint";
		
		
		
        
		// CURVE RESPONSES
		// =========================================================================================
		
		/**
		 * A curve has been created.
		 */
		public static const CURVE_CREATED:String			= "CurveCreated";
		
		/**
		 * A curve has been added.
		 */
		public static const CURVE_ADDED:String				= "CurveAdded";
		
		/**
		 * A point has been added.
		 */
		public static const POINT_ADDED:String				= "PointAdded";
		
		/**
		 * A point has been removed.
		 */
		public static const POINT_REMOVED:String			= "PointRemoved";
		
		
		
        
		// DISPLAY LISTS
		// =========================================================================================
		
		/**
		 * Adds an object to a canvas. If no argument is supplied, the currently selected canvas is used.
		 */
		public static const ADD_TO_CANVAS:String 			= "AddToCanvas";
		
		
		
		
		// FACADE
		// =========================================================================================
		
		/**
		 * Constructor
		 */
		public function CurveBend(key:String) {
			super(key);	
		}

        /**
         * Multiton CurveBend Factory Method
         */
        public static function getInstance( key:String ):CurveBend {
 			if (instanceMap[key] == null) instanceMap[key] = new CurveBend(key);
 			return CurveBend(instanceMap[key]);
        }
        
        /**
         * Startup
         */  
        public static function startup(app:ApplicationView):void  {
        	CurveBend.getInstance(NAME).sendNotification( CurveBend.STARTUP, app );
        }
		
		
		
        
		// COMMANDS
		// =========================================================================================
		
		/**
		 * Commands
		 */
		override protected function initializeController():void 
		{
			super.initializeController();
			
			registerCommand( STARTUP, 		CStartup		);
			registerCommand( INITIALIZE,	CInitialize		);
			registerCommand( CREATE_PANELS,	CCreatePanels	);
			
			//registerCommand( SELECT,		CSelect			);
			registerCommand( SELECT_CANVAS, CSelectCanvas	);
			
			registerCommand( CREATE_CURVE,	CCreateCurve	);
			registerCommand( ADD_CURVE,		CAddCurve		);
			registerCommand( ADD_POINT,		CAddPoint		);
		}
	}
	
}