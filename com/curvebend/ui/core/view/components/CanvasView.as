/*
 View:   CanvasView
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.core.view.components 
{
	import com.curvebend.ui.core.model.params.CanvasParameters;
	import com.mocha.widgets.model.params.ContainerParameters;
	import com.mocha.widgets.view.components.ContainerView;
	import com.mocha.widgets.view.components.WidgetView;
	
	/**
	 * CanvasView View.
	 */
	public class CanvasView extends ContainerView
	{
		
		/**
		 * Constructor
		 */
		public function CanvasView(name:String, params:CanvasParameters=null) 
		{
			super(name, params ? params : new CanvasParameters);
			
			with (parameters as ContainerParameters)
			{
				autosize = true;
				autofit = false;
				color = 0x101010;
			}
		}
		
		
        
		// API
		// =========================================================================================
		
		
        
		// VIEW MANIPULATION
		// =========================================================================================
		
		
		
        
		// EVENTS
		// =========================================================================================
		
		
		
        
		// PRIVATE
		// =========================================================================================
		
		
	}
	
}