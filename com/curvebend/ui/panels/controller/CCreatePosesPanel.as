/*
 Command: CCreatePosesPanel
 Author:  Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.panels.controller 
{
	import com.curvebend.ui.panels.view.components.PosesPanelView;
	import com.curvebend.ui.panels.view.components.SidebarPanelView;
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
	public class CCreatePosesPanel extends SimpleCommand 
	{	
		override public function execute(note:INotification):void 
		{
			// Create
			sendNotification(Mocha.CREATE_WIDGET, new WidgetVO(PosesPanelView.NAME, PosesPanelView, PanelMediator));
			
			// Add to sidebar
			sendNotification(Mocha.ADD_TO, PosesPanelView.NAME, SidebarPanelView.NAME);
			
			Mocha.debug(this, "Created Poses Panel.");
		}
		
	}
}