/*
 Mediator:  UIMediator
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.core.view 
{
	import com.curvebend.CurveBend;
	import com.curvebend.ui.core.model.params.UIParameters;
	import com.curvebend.ui.core.view.components.UIView;
	import com.mocha.Mocha;
	import com.mocha.widgets.view.components.ContainerView;
	import com.mocha.widgets.view.ContainerMediator;
	import com.mocha.widgets.view.WidgetMediator;
	import org.puremvc.as3.multicore.interfaces.IMediator;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;
	import com.curvebend.ui.panels.view.*;
	
	/**
	 * UIMediator Mediator.
	 * ...
	 */
	public class UIMediator extends ContainerMediator implements IMediator 
	{
		
		// Canonical name of the Mediator
		public static const NAME:String = "UIMediator";
		
		
		// CONSTRUCTOR
		// ==============================================================================================
		
		/**
		 * Mediator constructor.
		 */
		public function UIMediator(name:String, viewComponent:UIView) {
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
		
		private function handleSelectCanvas(name:String):void
		{
			// DEFERRED TO COMMAND, don't know which methid I like better yet....
			//params.selectedCanvas = name;
			//Mocha.debug(this, "Canvas selected: " + name);
		}
		
		
        
		// NOTIFICATIONS
		// ==============================================================================================
		
		/**
		 * Notification interests.
		 */
		override public function listNotificationInterests():Array {
			var interests:Array = super.listNotificationInterests();
			interests.push(CurveBend.SELECT_CANVAS);
			return interests;
		}

		/**
		 * Notification handling.
		 */
		override public function handleNotification(note:INotification):void {
			switch (note.getName()) {    
				
				case CurveBend.SELECT_CANVAS:
					handleSelectCanvas(note.getBody() as String);
					break;
				
				default:
					super.handleNotification(note);		
			}
		}
		
		
		
		
		// ACCESSORS
		// ==============================================================================================
		
		/**
		 * Utility accessor: name
		 */
		override public function getMediatorName():String 	{ return UIMediator.NAME; }
		
		/**
		 * Utility accessor: view
		 */
		private function get view():UIView 					{ return viewComponent as UIView }
		
		/**
		 * Utility accessor: parameters
		 */
		public function get params():UIParameters			{ return view.parameters as UIParameters; }

	}
}
