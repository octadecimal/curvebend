/*
 Medator:  ApplicationMediator
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.core 
{
	import com.mocha.core.view.ManagedJunctionMediator;
	import com.mocha.core.view.ManagedMediator;
	import com.curvebend.core.view.components.ApplicationView;
	import com.mocha.Mocha;
	import org.puremvc.as3.multicore.interfaces.IMediator;
	import org.puremvc.as3.multicore.interfaces.INotification;
	
	/**
	 * ApplicationMediator Mediator.
	 * ...
	 */
	public class ApplicationMediator extends ManagedMediator implements IMediator 
	{
		// Canonical name of the Mediator
		public static const NAME:String = "ApplicationMediator";
		
		/**
		 * Mediator constructor.
		 */
		public function ApplicationMediator(viewComponent:ApplicationView) 
		{
			// Create junction
			junction = new ManagedJunctionMediator(NAME + "J");
			
			// Map interests
			listener( Mocha.WIDGET_CREATED );
			
			// Map broadcasts
			broadcaster( Mocha.UNDO			 		);
			broadcaster( Mocha.REDO					);
			broadcaster( Mocha.ADD_TO_STAGE	 		);
			broadcaster( Mocha.REMOVE_FROM_STAGE	);
			broadcaster( Mocha.CREATE_WIDGET		);
			broadcaster( Mocha.DELETE_WIDGET		);
			broadcaster( Mocha.ADD_TO				);
			
			// Super
			super(NAME, viewComponent);
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
		override public function listNotificationInterests():Array 
		{
			var interests:Array = super.listNotificationInterests();
			
			// Internal notifications
			//interests.push();
			
			return interests;
		}

		/**
		 * Notification handling.
		 */
		override public function handleNotification(note:INotification):void {
			switch (note.getName()) {           
				
				case Mocha.WIDGET_CREATED:
					//trace("hey widget!");
					break;
				
				default:
					super.handleNotification(note);		
			}
		}
		
		
		
		
		// ACCESSORS
		// =========================================================================================
		
		/**
		 * Utility accessor: name
		 */
		override public function getMediatorName():String 	{ return ApplicationMediator.NAME; }
		
		/**
		 * Utility accessor: view
		 */
		private function get view():ApplicationView 		{ return viewComponent as ApplicationView }

	}
}
