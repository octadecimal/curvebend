/*
 Mediator:  CurvesPanelMediator
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.panels.view 
{
	import com.curvebend.CurveBend;
	import com.curvebend.ui.panels.view.components.CurvesPanelView;
	import com.mocha.widgets.view.PanelMediator;
	import org.puremvc.as3.multicore.interfaces.IMediator;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;
	import com.curvebend.ui.panels.view.*;
	
	/**
	 * CurvesPanelMediator Mediator.
	 * ...
	 */
	public class CurvesPanelMediator extends PanelMediator implements IMediator 
	{
		
		// Canonical name of the Mediator
		public static const NAME:String = "CurvesPanel";
		
		
		// CONSTRUCTOR
		// ==============================================================================================
		
		/**
		 * Mediator constructor.
		 */
		public function CurvesPanelMediator(name:String, viewComponent:Object) {
			super(name, viewComponent);
		}
		
		override public function onRegister():void 
		{
			super.onRegister();
		}
		
		override public function onRemove():void 
		{
			super.onRemove();
		}
		
		
		
		
		// VIEW MANIPULATION
		// ==============================================================================================
		
		
		
		
		// EVENTS
		// ==============================================================================================
		
		
		
        
		// HANDLERS
		// ==============================================================================================
		
		private function handleCurveAdded(name:String):void
		{
			trace("CURVE ADDED: " + name);
		}
		
		
        
		// NOTIFICATIONS
		// ==============================================================================================
		
		/**
		 * Notification interests.
		 */
		override public function listNotificationInterests():Array {
			var interests:Array = super.listNotificationInterests();
			interests.push(CurveBend.CURVE_ADDED);
			return interests;
		}

		/**
		 * Notification handling.
		 */
		override public function handleNotification(note:INotification):void {
			switch (note.getName()) {   
				
				case CurveBend.CURVE_ADDED:
					handleCurveAdded(note.getBody() as String);
				
				default:
					super.handleNotification(note);		
			}
		}
		
		
		
		
		// ACCESSORS
		// ==============================================================================================
		
		/**
		 * Utility accessor: name
		 */
		override public function getMediatorName():String 		{ return CurvesPanelMediator.NAME; }
		
		/**
		 * Utility accessor: view
		 */
		private function get view():CurvesPanelView 			{ return viewComponent as CurvesPanelView }

	}
}
