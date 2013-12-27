/*
Simple Command - PureMVC
 */
package com.curvebend.curves.controller 
{
	import com.curvebend.CurveBend;
	import com.curvebend.curves.model.vo.CurveVO;
	import com.curvebend.curves.view.CurveMediator;
	import com.curvebend.ui.core.model.params.CanvasParameters;
	import com.curvebend.ui.core.model.params.UIParameters;
	import com.curvebend.ui.core.view.UIMediator;
	import com.mocha.core.model.params.Parameters;
	import com.mocha.Mocha;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
    
	/**
	 * SimpleCommand
	 */
	public class CAddCurve extends SimpleCommand 
	{	
		override public function execute(note:INotification):void 
		{
			var vo:CurveVO = note.getBody() as CurveVO;
			
			var name:String, serial:String;
			
			// Generate name
			if (vo)
			{
				// Use vo name if passed...
				if (vo.name) name = vo.name;
				
				// ...Otherwise generate name
				else name = uid();
				
				// If serial passed
				if (vo.serial) serial = vo.serial;
			}
			
			// No VO passed
			else name = uid();
			
			// Validate
			if (facade.retrieveMediator(name)) { Mocha.warn(this, "UNABLE TO ADD CURVE: A curve by that name already exists. (" + name + ")"); return; }
			Mocha.debug(this, "Adding curve: " + name);
			
			
			// Create curve
			sendNotification(CurveBend.CREATE_CURVE, vo ? vo : new CurveVO(name));
			
			// Get selected canvas
			var selectedCanvas:String = UIParameters(Mocha.parameters(UIMediator.NAME)).selectedCanvas;
			var canvas:CanvasParameters = Mocha.parameters(selectedCanvas) as CanvasParameters;
			
			// Add to selected canvas
			Mocha.add(name, selectedCanvas);
			
			// Set as selected object
			canvas.selectedObject = name;
			
			// Notify
			Mocha.info(this, "Curve added: " + name);
			sendNotification(CurveBend.CURVE_ADDED, name);
		}
		
		// UID
		private static function uid():String { return CCreateCurve.uid(); }
		
	}
}