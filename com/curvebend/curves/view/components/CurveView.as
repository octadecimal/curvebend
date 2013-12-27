/*
 View:   CurveView
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.curves.view.components 
{
	import com.curvebend.curves.model.params.CurveParameters;
	import com.mocha.widgets.view.components.WidgetView;
	
	/**
	 * CurveView View.
	 */
	public class CurveView extends WidgetView
	{
		
		/**
		 * Constructor
		 */
		public function CurveView(name:String, params:CurveParameters=null) 
		{
			super(name, params ? params : new CurveParameters());
			_params = this.parameters as CurveParameters;
		}
		
		
        
		// API
		// =========================================================================================
		
		
		
        
		// VIEW MANIPULATION
		// =========================================================================================
		
		
		
        
		// EVENTS
		// =========================================================================================
		
		
		
        
		// PRIVATE
		// =========================================================================================
		
		private var _params:CurveParameters;
	}
	
}