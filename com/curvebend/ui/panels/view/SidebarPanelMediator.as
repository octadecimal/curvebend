/*
 Mediator:  SidebarMediator
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.panels.view 
{
	import com.mocha.widgets.view.components.PanelView;
	import com.mocha.widgets.view.PanelMediator;
	import org.puremvc.as3.multicore.interfaces.IMediator;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;
	import com.curvebend.ui.panels.view.*;
	
	/**
	 * SidebarMediator Mediator.
	 * ...
	 */
	public class SidebarPanelMediator extends PanelMediator implements IMediator 
	{
		
		/**
		 * Mediator constructor.
		 */
		public function SidebarPanelMediator(name:String, viewComponent:PanelView) {
			super(name, viewComponent);
		}	
		
		
		
		// EVENTS
		// =========================================================================================
		
		
		
		
		// VIEW MANIPULATION
		// =========================================================================================
		
		
		
        
		// NOTIFICATIONS
		// =========================================================================================
		
		/**
		 * Notification interests.
		 */
		override public function listNotificationInterests():Array {
			var interests:Array = super.listNotificationInterests();
			//interests.push();
			return interests;
		}

		/**
		 * Notification handling.
		 */
		override public function handleNotification(note:INotification):void {
			switch (note.getName()) {           
				default: super.handleNotification(note);		
			}
		}
		
		
		
		
		// ACCESSORS
		// =========================================================================================
		
		/**
		 * Utility accessor: view
		 */
		private function get view():PanelView 					{ return viewComponent as PanelView }

	}
}
