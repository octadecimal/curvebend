/*
 Command: CCreateSidebar
 Author:  Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.panels.controller 
{
	import com.curvebend.ui.core.view.UIMediator;
	import com.curvebend.ui.panels.view.components.SidebarPanelView;
	import com.curvebend.ui.panels.view.SidebarPanelMediator;
	import com.mocha.core.model.vo.WidgetVO;
	import com.mocha.Mocha;
	import com.mocha.widgets.model.WidgetProxy;
	import com.mocha.widgets.model.WidgetProxy;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
    
	/**
	 * SimpleCommand
	 */
	public class CCreateSidebar extends SimpleCommand 
	{	
		override public function execute(note:INotification):void 
		{
			// Create Sidebar
			sendNotification(Mocha.CREATE_WIDGET, new WidgetVO(SidebarPanelView.NAME, SidebarPanelView, SidebarPanelMediator));
			
			// Add Sidebar to UI
			sendNotification(Mocha.ADD_TO, SidebarPanelView.NAME, UIMediator.NAME);
			
			Mocha.debug(this, "Created Sidebar Panel.");
		}
		
	}
}