/*
 Command: CaddPoint
 Author:  Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.curves.controller 
{
	import com.curvebend.CurveBend;
	import com.curvebend.curves.model.params.CurveParameters;
	import com.curvebend.ui.core.model.params.CanvasParameters;
	import com.curvebend.ui.core.model.params.UIParameters;
	import com.curvebend.ui.core.view.UIMediator;
	import com.mocha.Mocha;
	import com.octadecimal.util.Point2D;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
	import org.puremvc.as3.multicore.patterns.observer.Notification;
    
	/**
	 * SimpleCommand
	 */
	public class CAddPoint extends SimpleCommand 
	{	
		override public function execute(note:INotification):void 
		{
			var position:Point2D = note.getBody() as Point2D;
			var target:String = note.getType();
			
			var ui:UIParameters = Mocha.parameters(UIMediator.NAME) as UIParameters;
			var canvas:CanvasParameters = Mocha.parameters(ui.selectedCanvas) as CanvasParameters;
			
			// Add to target curve
			if (target)
			{
				CurveParameters(Mocha.parameters(target)).points.add(position);
			}
			
			// If no target supplied, add to selected curve
			else if(canvas.selectedObject)
			{
				CurveParameters(Mocha.parameters(canvas.selectedObject)).points.add(position);
			}
			
			// If no curve selected, add new curve
			else
			{
				// Create curve (selected upon creation)
				sendNotification(CurveBend.ADD_CURVE);
				
				// And add
				CurveParameters(Mocha.parameters(canvas.selectedObject)).points.add(position);
			}
			
			// Notify
			Mocha.debug(this, "Point added at: " + position);
			sendNotification(CurveBend.POINT_ADDED, position, "NEED_TO_ADD_NAME");
		}
		
	}
}