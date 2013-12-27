/*
 Command: CSelectCanvas
 Author:  Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.core.controller 
{
	import com.curvebend.CurveBend;
	import com.curvebend.ui.core.model.params.UIParameters;
	import com.curvebend.ui.core.view.UIMediator;
	import com.mocha.Mocha;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
	import org.puremvc.as3.multicore.patterns.observer.Notification;
    
	/**
	 * SimpleCommand
	 */
	public class CSelectCanvas extends SimpleCommand 
	{	
		override public function execute(note:INotification):void 
		{
			var name:String = note.getBody() as String;
			
			// Get UI params
			var ui:UIParameters = Mocha.parameters(UIMediator.NAME) as UIParameters;
			
			// Differs
			if (ui.selectedCanvas != name)
			{
				// Set
				ui.selectedCanvas = name;
				
				// Notify
				Mocha.debug(this, "Selected canvas: " + name);
				sendNotification(CurveBend.CANVAS_SELECTED, name);
			}
		}
		
	}
}