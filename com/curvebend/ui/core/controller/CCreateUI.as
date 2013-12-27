/*
 Command: CCreateUI
 Author:  Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.core.controller 
{
	import com.curvebend.CurveBend;
	import com.curvebend.ui.core.view.CanvasMediator;
	import com.curvebend.ui.core.view.components.CanvasView;
	import com.curvebend.ui.core.view.components.UIView;
	import com.curvebend.ui.core.view.UIMediator;
	import com.mocha.core.model.vo.WidgetVO;
	import com.mocha.Mocha;
	import com.mocha.widgets.model.ContainerProxy;
	import com.mocha.widgets.model.WidgetProxy;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
	import org.puremvc.as3.multicore.patterns.observer.Notification;
    
	/**
	 * SimpleCommand
	 */
	public class CCreateUI extends SimpleCommand 
	{	
		override public function execute(note:INotification):void 
		{
			// Create UI
			sendNotification(Mocha.CREATE_WIDGET, new WidgetVO(UIMediator.NAME, UIView, UIMediator));
			
			// Add to stage
			sendNotification(Mocha.ADD_TO_STAGE, Mocha.view(UIMediator.NAME));
			
			// Create panels
			sendNotification(CurveBend.CREATE_PANELS);
			
			// Create default canvas
			Mocha.widget("DefaultCanvas", UIMediator.NAME, CanvasView, CanvasMediator);
			sendNotification(CurveBend.SELECT_CANVAS, "DefaultCanvas");
		}
	}
}