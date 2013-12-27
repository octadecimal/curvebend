/*
 View:   CanvasParameters
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.core.model.params 
{
	import com.mocha.widgets.model.params.ContainerParameters;
	
	/**
	 * CanvasParameters View.
	 */
	public class CanvasParameters extends ContainerParameters
	{
		// Selected object
		public static const SELECTED_OBJECT:String = "selectedObject";
		
		/**
		 * Constructor
		 */
		public function CanvasParameters()
		{
			_selectedObject = addString( SELECTED_OBJECT );
		}
		
		
        
		// ACCESSORS
		// =========================================================================================
		
		/**
		 * selectedObject (String)
		 */
		public function get selectedObject():String 			{	return getStringAt(_selectedObject);	}
		public function set selectedObject(a:String):void		{	setStringAt(_selectedObject, a);		}
		private var _selectedObject:uint;
		
		
	}
	
}