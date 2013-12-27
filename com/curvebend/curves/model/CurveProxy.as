/*
 Proxy:  CurveProxy
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.curves.model 
{
	import com.curvebend.curves.model.params.CurveParameters;
	import com.octadecimal.util.curves.Curve;
	import com.octadecimal.util.Point2D;
	import flash.events.Event;
	import org.puremvc.as3.multicore.interfaces.IProxy;
	import org.puremvc.as3.multicore.patterns.proxy.Proxy;

	/**
	 * CurveProxy Proxy.
	 * ...
	 */
	public class CurveProxy extends Proxy implements IProxy 
	{
		/**
		 * Proxy constructor.
		 */
		public function CurveProxy(name:String, data:Curve, params:CurveParameters) 
		{
			super(name, data);
			_curve = this.data as Curve;
			_params = params;
			
			// Listen for curve changes
			data.addEventListener(Event.CHANGE, onDataChanged);
		}
		
		
		
		// API
		// =========================================================================================
		
		public function addPoint(name:String, position:Point2D):void
		{
			// Add point to data
			_curve.addPointNum(position.x, position.y);
			
			// Save point
			
		}
		
		
		
		// EVENTS
		// =========================================================================================
		
		private function onDataChanged(e:Event):void 
		{
			
		}
		
		
		
		// ACCESSORS
		// =========================================================================================
		
		
		
		// PRIVATE
		// =========================================================================================
		
		private var _curve:Curve;
		private var _params:CurveParameters;
	}
}