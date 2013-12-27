/*
 View:   CurveVO
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.curves.model.vo 
{
	import com.octadecimal.util.curves.BlendCurve;
	
	/**
	 * CurveVO View.
	 */
	public class CurveVO 
	{
		
		/**
		 * Constructor
		 */
		public function CurveVO(name:String=null, serial:String=null, definition:Class=null) 
		{
			_name = name;
			_serial = serial;
			_definition = definition ? definition : BlendCurve;
		}
		
		
        
		// ACCESSORS
		// =========================================================================================
		
		/**
		 * Name
		 */
		public function set name(a:String):void			{ _name = a; }
		public function get name():String				{ return _name; }
		private var _name:String;
		
		/**
		 * Serial
		 */
		public function set serial(a:String):void		{ _serial = a; }
		public function get serial():String				{ return _serial; }
		private var _serial:String;
		
		/**
		 * Definition
		 */
		public function set definition(a:Class):void	{ _definition = a; }
		public function get definition():Class			{ return _definition; }
		private var _definition:Class;
	}
	
}