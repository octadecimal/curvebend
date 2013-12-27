/*
 View:   ToolsPanelView
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.panels.view.components 
{
	import com.mocha.core.model.params.Parameters;
	import com.mocha.Mocha;
	import com.mocha.widgets.model.params.ButtonParameters;
	import com.mocha.widgets.model.params.ContainerParameters;
	import com.mocha.widgets.view.ButtonMediator;
	import com.mocha.widgets.view.components.ButtonView;
	import com.mocha.widgets.view.components.ContainerView;
	import com.mocha.widgets.view.components.PanelView;
	import flash.events.Event;
	
	/**
	 * ToolsPanelView View.
	 */
	public class ToolsPanelView extends PanelView
	{
		public static const NAME:String = "ToolsPanel";
		
		/**
		 * Constructor
		 */
		public function ToolsPanelView(name:String, params:ContainerParameters=null) 
		{
			super(name, params);
			_params = this.parameters as ContainerParameters;
			
			_params.height = 36;
			_params.autosize = false;
			
			_params.direction = HORIZONTAL;
		}
		
		override public function activate():void 
		{
			super.activate();
		}
		
		
        
		// API
		// =========================================================================================
		
		
		
        
		// VIEW MANIPULATION
		// =========================================================================================
		
		override public function update(change:int):void 
		{
			//trace(_params.toTable());
			
			super.update(change);
		}
		
		
        
		// EVENTS
		// =========================================================================================
		
		override protected function onAddedToStage(e:Event):void 
		{
			super.onAddedToStage(e);
			
			
			// Add temp buttons
			for (var i:uint = 0; i < 6; i++)
			{
				var button:ContainerView = Mocha.widget("Button" + i, this.name, ButtonView, ButtonMediator) as ContainerView;
				
				button.parameters.width  = 24;
				button.parameters.height = 24;
				button.parameters.autosize = true;
				//button.parameters.color = Math.random() * uint.MAX_VALUE;
				button.parameters.color = 0x171717;
				
				ButtonParameters(button.parameters).group = "Tools";
			}
		}
		
		
        
		// PRIVATE
		// =========================================================================================
		
		private var _params:ContainerParameters;
		
		
	}
	
}