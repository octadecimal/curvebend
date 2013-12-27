/*
 View:   UIParameters
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.core.model.params 
{
	import com.mocha.widgets.model.params.ContainerParameters;
	
	/**
	 * UIParameters View.
	 */
	public class UIParameters extends ContainerParameters
	{
		// Selected canvas
		public static const SELECTED_CANVAS:String = "selectedCanvas";
		
		
		
		/**
		 * Constructor
		 */
		public function UIParameters() 
		{
			_selectedCanvas = addString(SELECTED_CANVAS);
		}
		
		
        
		// ACCESSORS
		// =========================================================================================
		
		/**
		 * selectedCanvas (String)
		 */
		public function get selectedCanvas():String 			{	return getStringAt(_selectedCanvas);	}
		public function set selectedCanvas(a:String):void		{	setStringAt(_selectedCanvas, a);		}
		private var _selectedCanvas:uint;
	}
	
}