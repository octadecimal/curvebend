/*
 View:   CurveParameters
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.curves.model.params 
{
	import com.mocha.util.Collection;
	import com.mocha.widgets.model.params.WidgetParameters;
	
	/**
	 * CurveParameters View.
	 */
	public class CurveParameters extends WidgetParameters
	{
		// Points
		public static const POINTS:String = "points";
		public static const INPUTS:String = "inputs";
		public static const PARENT:String = "parent";
		
		/**
		 * Constructor
		 */
		public function CurveParameters() 
		{
			_points 	= addCollection(	POINTS, new Collection()	);
			_inputs 	= addCollection(	INPUTS, new Collection()	);
			_parent 	= addString(		PARENT						);
		}
		
		/**
		 * points (Collection)
		 */
		public function get points():Collection 				{	return getCollectionAt(_points);	}
		public function set points(a:Collection):void			{	setCollectionAt(_points, a);		}
		private var _points:uint;
		
		/**
		 * inputs (Collection)
		 */
		public function get inputs():Collection 				{	return getCollectionAt(_inputs);	}
		public function set inputs(a:Collection):void			{	setCollectionAt(_inputs, a);		}
		private var _inputs:uint;
		
		/**
		 * parent (String)
		 */
		public function get parent():String 					{	return getStringAt(_parent);		}
		public function set parent(a:String):void				{	setStringAt(_parent, a);			}
		private var _parent:uint;
	}
	
}