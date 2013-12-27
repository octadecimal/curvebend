/*
 Mediator:  CanvasMediator
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.core.view 
{
	import com.curvebend.CurveBend;
	import com.curvebend.curves.model.vo.CurveVO;
	import com.curvebend.ui.core.view.components.CanvasView;
	import com.mocha.Mocha;
	import com.mocha.widgets.view.ContainerMediator;
	import com.mocha.widgets.view.WidgetMediator;
	import com.octadecimal.util.Point2D;
	import flash.events.MouseEvent;
	import org.puremvc.as3.multicore.interfaces.IMediator;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;
	import com.curvebend.ui.core.view.*;
	
	/**
	 * CanvasMediator Mediator.
	 * ...
	 */
	public class CanvasMediator extends ContainerMediator implements IMediator 
	{
		
		// CONSTRUCTOR
		// ==============================================================================================
		
		/**
		 * Mediator constructor.
		 */
		public function CanvasMediator(name:String, viewComponent:CanvasView) {
			super(name, viewComponent);
		}
		
		override public function onRegister():void 
		{
			super.onRegister();
			
			view.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
			view.addEventListener(MouseEvent.MOUSE_UP, onMouseUp);
		}
		
		override public function onRemove():void 
		{
			super.onRemove();
		}
		
		
		
		
		// VIEW MANIPULATION
		// ==============================================================================================
		
		
		
		
		// EVENTS
		// ==============================================================================================
		
		protected function onMouseDown(e:MouseEvent):void 
		{
			// Create curve
			//CurveBend.getInstance(CurveBend.NAME).sendNotification(CurveBend.ADD_CURVE, new CurveVO("TestCurve"));
			CurveBend.getInstance(CurveBend.NAME).sendNotification(CurveBend.ADD_POINT, new Point2D(view.mouseX, view.mouseY));
		}
		
		protected function onMouseUp(e:MouseEvent):void 
		{
			// Select canvas (test)
			sendNotification(CurveBend.SELECT_CANVAS, getMediatorName());
		}
		
		
        
		// HANDLERS
		// ==============================================================================================
		
		private function handleAddToCanvas(name:String, target:String=null):void
		{
			// Add if target or selected canvas matches this name
			if (target == getMediatorName() || _ui.params.selectedCanvas == getMediatorName())
				view.add(Mocha.view(name));
		}
		
		
		
        
		// NOTIFICATIONS
		// ==============================================================================================
		
		/**
		 * Notification interests.
		 */
		override public function listNotificationInterests():Array {
			var interests:Array = super.listNotificationInterests();
			interests.push(CurveBend.ADD_TO_CANVAS);
			return interests;
		}

		/**
		 * Notification handling.
		 */
		override public function handleNotification(note:INotification):void {
			switch (note.getName()) {
				
				case CurveBend.ADD_TO_CANVAS:
					handleAddToCanvas(note.getBody() as String, note.getType());
					break;
				
				default:
					super.handleNotification(note);		
			}
		}
		
		
		
		
		// ACCESSORS
		// ==============================================================================================
		
		/**
		 * Utility accessor: view
		 */
		private function get view():CanvasView 		{ return viewComponent as CanvasView }
		
		/**
		 * Cache: ui (UIMediator)
		 */
		private function get ui():UIMediator 		{ if (!_ui) _ui = facade.retrieveMediator(UIMediator.NAME) as UIMediator; return _ui; }
		private var _ui:UIMediator;
	}
}
