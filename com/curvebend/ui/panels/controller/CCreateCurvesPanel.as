/*
 Command: CCreateCurvesPanel
 Author:  Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.panels.controller 
{
	import com.curvebend.ui.panels.view.components.CurvesPanelView;
	import com.curvebend.ui.panels.view.components.SidebarPanelView;
	import com.curvebend.ui.panels.view.CurvesPanelMediator;
	import com.mocha.core.model.vo.WidgetVO;
	import com.mocha.Mocha;
	import com.mocha.widgets.model.WidgetProxy;
	import com.mocha.widgets.view.PanelMediator;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
	import org.puremvc.as3.multicore.patterns.observer.Notification;
    
	/**
	 * SimpleCommand
	 */
	public class CCreateCurvesPanel extends SimpleCommand 
	{	
		override public function execute(note:INotification):void 
		{
			// Create
			sendNotification(Mocha.CREATE_WIDGET, new WidgetVO(CurvesPanelView.NAME, CurvesPanelView, CurvesPanelMediator));
			
			// Add to sidebar
			sendNotification(Mocha.ADD_TO, CurvesPanelView.NAME, SidebarPanelView.NAME);
			
			Mocha.debug(this, "Created Curves Panel.");
		}
		
	}
}