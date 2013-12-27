/*
 View:   ParametersPanelView
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.panels.view.components 
{
	import com.mocha.widgets.model.params.ContainerParameters;
	import com.mocha.widgets.view.components.PanelView;
	
	/**
	 * ParametersPanelView View.
	 */
	public class ParametersPanelView extends PanelView
	{
		public static const NAME:String = "ParametersPanel";
		
		/**
		 * Constructor
		 */
		public function ParametersPanelView(name:String, params:ContainerParameters=null) 
		{
			super(name, params);
			_params = this.parameters as ContainerParameters;
			
			_params.autosize = true;
		}
		
		
        
		// API
		// =========================================================================================
		
		
		
        
		// VIEW MANIPULATION
		// =========================================================================================
		
		
		
        
		// EVENTS
		// =========================================================================================
		
		
		
        
		// PRIVATE
		// =========================================================================================
		
		private var _params:ContainerParameters;
		
		
	}
	
}