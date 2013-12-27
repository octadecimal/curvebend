/*
 Mediator:  CurveMediator
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.curves.view 
{
	import com.curvebend.curves.view.components.CurveView;
	import com.mocha.widgets.view.WidgetMediator;
	import org.puremvc.as3.multicore.interfaces.IMediator;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;
	import com.curvebend.curves.view.*;
	
	/**
	 * CurveMediator Mediator.
	 * ...
	 */
	public class CurveMediator extends WidgetMediator implements IMediator 
	{
		
		
		// CONSTRUCTOR
		// ==============================================================================================
		
		/**
		 * Mediator constructor.
		 */
		public function CurveMediator(name:String, viewComponent:CurveView) {
			super(name, viewComponent);
		}
		
		
		
		
		// VIEW MANIPULATION
		// ==============================================================================================
		
		
		
		
		// EVENTS
		// ==============================================================================================
		
		
		
        
		// HANDLERS
		// ==============================================================================================
		
		
		
        
		// NOTIFICATIONS
		// ==============================================================================================
		
		/**
		 * Notification interests.
		 */
		override public function listNotificationInterests():Array {
			return [];
		}

		/**
		 * Notification handling.
		 */
		override public function handleNotification(note:INotification):void {
			switch (note.getName()) {           
				default:
					super.handleNotification(note);		
			}
		}
		
		
		
		
		// ACCESSORS
		// ==============================================================================================
		
		/**
		 * Utility accessor: view
		 */
		private function get view():CurveView 						{ return viewComponent as CurveView	}

	}
}
