/*
 Command: CCreateCurve
 Author:  Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.curves.controller 
{
	import com.curvebend.CurveBend;
	import com.curvebend.curves.model.CurveProxy;
	import com.curvebend.curves.model.params.CurveParameters;
	import com.curvebend.curves.model.vo.CurveVO;
	import com.curvebend.curves.view.components.CurveView;
	import com.curvebend.curves.view.CurveMediator;
	import com.mocha.Mocha;
	import com.mocha.widgets.model.params.WidgetParameters;
	import com.octadecimal.util.curves.Curve;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
	import org.puremvc.as3.multicore.patterns.observer.Notification;
    
	/**
	 * SimpleCommand
	 */
	public class CCreateCurve extends SimpleCommand 
	{	
		override public function execute(note:INotification):void 
		{
			var vo:CurveVO = note.getBody() as CurveVO;
			
			// Validate
			if (facade.retrieveMediator(vo.name)) { Mocha.warn(this, "UNABLE TO CREATE CURVE: A curve by that name already exists. (" + vo.name + ")"); return; }
			
			// Model
			var data:Curve = new vo.definition(vo.serial);
			var params:CurveParameters = new CurveParameters();
			facade.registerProxy(new CurveProxy(vo.name, data, params));
			
			// View
			Mocha.widget(vo.name, null, CurveView, CurveMediator);
			
			// Override view params. This is hackery, folks.
			Mocha.view(vo.name).parameters = params;
			
			// Notify of curve creation
			Mocha.info(this, "Curve created: " + vo.name);
			sendNotification(CurveBend.CURVE_CREATED, vo.name);
		}
		
		// UID
		public  static function uid():String { return "Curve_" + _uid++; }
		private static var _uid:uint = 0;
	}
}