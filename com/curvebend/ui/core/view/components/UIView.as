/*
 View:   UIView
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.core.view.components 
{
	import com.curvebend.ui.core.model.params.UIParameters;
	import com.mocha.Mocha;
	import com.mocha.widgets.model.params.ContainerParameters;
	import com.mocha.widgets.model.params.WidgetParameters;
	import com.mocha.widgets.view.components.ContainerView;
	import com.mocha.widgets.view.components.WidgetView;
	import flash.events.Event;
	
	/**
	 * UIView View.
	 */
	public class UIView extends ContainerView
	{
		
		/**
		 * Constructor
		 */
		public function UIView(name:String, params:UIParameters=null) 
		{
			super(name, params ? params : new UIParameters());
			_params = this.parameters as ContainerParameters;
			
			// Initial
			_params.color = 0;
			_params.direction = ContainerView.HORIZONTAL;
			_params.autosize = false;
		}
		
		
        
		// API
		// =========================================================================================
		
		
		
        
		// VIEW MANIPULATION
		// =========================================================================================
		
		override public function update(change:int):void 
		{
			super.update(change);
			
			// Fit to stage
			width = stage.stageWidth;
			height = stage.stageHeight;
		}
		
		
        
		// EVENTS
		// =========================================================================================
		
		override protected function onAddedToStage(e:Event):void 
		{
			super.onAddedToStage(e);
			
			// Fit to stage
			width = stage.stageWidth;
			height = stage.stageHeight;
			
			stage.addEventListener(Event.RESIZE, onStageResized);
		}
		
		private function onStageResized(e:Event):void 
		{
			changed = true;
		}
		
		
        
		// PRIVATE
		// =========================================================================================
		
		private var _params:ContainerParameters;
	}
	
}